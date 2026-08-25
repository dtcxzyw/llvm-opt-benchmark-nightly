Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZNK12QCPFinancial14drawLegendIconEP10QCPPainterRK6QRectF:bb.a

bb.d:                                             ; preds = %_ZN10QCPPainter15setAntialiasingEb.exit
  %i.h = getelementptr i8, ptr %0, i64 228
  %i.i = load i8, ptr %i.h, align 4, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr i8, ptr %1, i64 8          ; 12 uses
  br i1 %i.j, label %bb.e, label %bb.bd

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 232
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.l)
  %i.m = getelementptr i8, ptr %0, i64 248
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.m)
  %i.n = load i32, ptr %i.k, align 4
  %i.o = and i32 %i.n, 4
  %.not.i171 = icmp eq i32 %i.o, 0
  br i1 %.not.i171, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #51
  %i.p = load double, ptr %2, align 8             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.t = load double, ptr %i.s, align 8
  %i.u = fadd double %i.r, %i.t                   ; 2 uses
  %i.v = call double @llvm.copysign.f64(double 5.000000e-01, double %i.p)
  %i.w = fadd double %i.p, %i.v
  %i.x = fptosi double %i.w to i32
  %i.y = call double @llvm.copysign.f64(double 5.000000e-01, double %i.u)
  %i.z = fadd double %i.u, %i.y
  %i.aa = fptosi double %i.z to i32
  %.sroa.2.0.insert.ext.i = zext i32 %i.aa to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.x to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %22, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %21, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %22)
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.ac = load ptr, ptr %21, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN5QListI6QPointElsEOS0_.exit

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %21, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit unwind label %bb.aj

_ZN5QListI6QPointElsEOS0_.exit:                   ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #51
  %i.af = load double, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.ah = load double, ptr %i.ag, align 8
  %i.ai = fadd double %i.af, %i.ah                ; 2 uses
  %i.aj = load double, ptr %i.q, align 8          ; 2 uses
  %i.ak = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ai)
  %i.al = fadd double %i.ai, %i.ak
  %i.am = fptosi double %i.al to i32
  %i.an = call double @llvm.copysign.f64(double 5.000000e-01, double %i.aj)
  %i.ao = fadd double %i.aj, %i.an
  %i.ap = fptosi double %i.ao to i32
  %.sroa.2.0.insert.ext.i175 = zext i32 %i.ap to i64
  %.sroa.2.0.insert.shift.i176 = shl nuw i64 %.sroa.2.0.insert.ext.i175, 32
  %.sroa.0.0.insert.ext.i177 = zext i32 %i.am to i64
  %.sroa.0.0.insert.insert.i178 = or disjoint i64 %.sroa.2.0.insert.shift.i176, %.sroa.0.0.insert.ext.i177
  store i64 %.sroa.0.0.insert.insert.i178, ptr %23, align 8
  %i.aq = load i64, ptr %i.ab, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %21, i64 noundef %i.aq, ptr noundef nonnull align 4 dereferenceable(8) %23)
          to label %.noexc182 unwind label %bb.ak

.noexc182:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit
  %i.ar = load ptr, ptr %21, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i179 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i179, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i181, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i180

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i180: ; preds = %.noexc182
  %i.as = load atomic i32, ptr %i.ar monotonic, align 4
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i181, label %_ZN5QListI6QPointElsEOS0_.exit184

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i181: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i180, %.noexc182
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %21, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit184 unwind label %bb.ak

_ZN5QListI6QPointElsEOS0_.exit184:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i180, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i181
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #51
  %i.au = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.av = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.au)
  %i.aw = fadd <2 x double> %i.au, %i.av
  %i.ax = fptosi <2 x double> %i.aw to <2 x i32>
  store <2 x i32> %i.ax, ptr %24, align 8
  %i.ay = load i64, ptr %i.ab, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %21, i64 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(8) %24)
          to label %.noexc194 unwind label %bb.al

.noexc194:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit184
  %i.az = load ptr, ptr %21, align 16             ; 4 uses
  %.not.i.i.i.i.i.i.i191 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i191, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i193, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i192

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i192: ; preds = %.noexc194
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i193, label %_ZN5QListI6QPointElsEOS0_.exit196.thread

_ZN5QListI6QPointElsEOS0_.exit196.thread:         ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i192
  store ptr %i.az, ptr %20, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  store ptr %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bg = load i64, ptr %i.ab, align 16
  store i64 %i.bg, ptr %i.bf, align 16
  br label %bb.g

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i193: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i192, %.noexc194
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %21, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit196 unwind label %bb.al

_ZN5QListI6QPointElsEOS0_.exit196:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i193
  %i.bh = load <2 x ptr>, ptr %21, align 16
  %.pre714 = load ptr, ptr %21, align 16          ; 2 uses
  store <2 x ptr> %i.bh, ptr %20, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bj = load i64, ptr %i.ab, align 16
  store i64 %i.bj, ptr %i.bi, align 16
  %.not.i.i.i.i = icmp eq ptr %.pre714, null
  br i1 %.not.i.i.i.i, label %_ZN8QPolygonC2ERK5QListI6QPointE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5QListI6QPointElsEOS0_.exit196.thread, %_ZN5QListI6QPointElsEOS0_.exit196
  %i.bk = phi ptr [ %i.az, %_ZN5QListI6QPointElsEOS0_.exit196.thread ], [ %.pre714, %_ZN5QListI6QPointElsEOS0_.exit196 ]
  %i.bl = atomicrmw add ptr %i.bk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8QPolygonC2ERK5QListI6QPointE.exit

_ZN8QPolygonC2ERK5QListI6QPointE.exit:            ; preds = %_ZN5QListI6QPointElsEOS0_.exit196, %bb.g
  invoke void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 0)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit
  invoke void @_ZN8QPainter13setClipRegionERK7QRegionN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1)
          to label %bb.i unwind label %bb.an

bb.i:                                             ; preds = %bb.h
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %19) #51
  %i.bm = load ptr, ptr %20, align 16             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZN5QListI6QPointED2Ev.exit, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i: ; preds = %bb.i
  %i.bn = atomicrmw sub ptr %i.bm, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bn, 1
  br i1 %.not.i.i, label %bb.j, label %_ZN5QListI6QPointED2Ev.exit

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i
  %i.bo = load ptr, ptr %20, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bo, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit

_ZN5QListI6QPointED2Ev.exit:                      ; preds = %bb.i, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #51
  %i.bp = load ptr, ptr %21, align 16             ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i197, label %_ZN5QListI6QPointED2Ev.exit200, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i198

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i198: ; preds = %_ZN5QListI6QPointED2Ev.exit
  %i.bq = atomicrmw sub ptr %i.bp, i32 1 acq_rel, align 4
  %.not.i.i199 = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i199, label %bb.k, label %_ZN5QListI6QPointED2Ev.exit200

bb.k:                                             ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i198
  %i.br = load ptr, ptr %21, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit200

_ZN5QListI6QPointED2Ev.exit200:                   ; preds = %_ZN5QListI6QPointED2Ev.exit, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i198, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #51
  %i.bs = load double, ptr %i.s, align 8
  %i.bt = fmul double %i.bs, 5.000000e-01
  %i.bu = load double, ptr %i.ag, align 8
  %61 = load <2 x double>, ptr %2, align 8        ; 2 uses
  %i.bv = load double, ptr %i.q, align 8
  %i.bw = fadd double %i.bt, %i.bv                ; 4 uses
  %i.bx = insertelement <2 x double> %61, double %i.bu, i64 1
  %62 = shufflevector <2 x double> %61, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.by = fadd <2 x double> %i.bx, %62            ; 4 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  store double %i.bz, ptr %25, align 8, !alias.scope !1247
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  store double %i.bw, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !1247
  %i.ca = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.cb = extractelement <2 x double> %i.by, i64 1
  store double %i.cb, ptr %i.ca, align 8, !alias.scope !1247
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 24
  store double %i.bw, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1247
  %i.cc = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5QListI6QPointED2Ev.exit200
  %i.ce = load i32, ptr %i.k, align 4
  %i.cf = and i32 %i.ce, 1
  %.not.i203 = icmp eq i32 %i.cf, 0
  br i1 %.not.i203, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5QListI6QPointED2Ev.exit200
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #51
  %i.cg = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.by)
  %i.ch = call double @llvm.copysign.f64(double 5.000000e-01, double %i.bw)
  %i.ci = fadd double %i.bw, %i.ch
  %i.cj = fptosi double %i.ci to i32
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.cj to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %i.ck = fadd <2 x double> %i.by, %i.cg
  %i.cl = fptosi <2 x double> %i.ck to <2 x i32>
  %i.cm = zext <2 x i32> %i.cl to <2 x i64>
  %i.cn = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i, i64 0
  %i.co = shufflevector <2 x i64> %i.cn, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cp = or disjoint <2 x i64> %i.co, %i.cm
  store <2 x i64> %i.cp, ptr %17, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %17, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

_ZN10QCPPainter8drawLineERK6QLineF.exit:          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #51
  %i.cq = load double, ptr %i.ag, align 8
  %i.cr = fmul double %i.cq, 2.000000e-01
  %i.cs = load double, ptr %i.s, align 8
  %i.ct = load double, ptr %2, align 8
  %63 = load <2 x double>, ptr %i.q, align 8
  %i.cu = fadd double %i.cr, %i.ct                ; 4 uses
  %i.cv = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cw, <double 3.000000e-01, double 5.000000e-01>
  %i.cy = shufflevector <2 x double> %63, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fadd <2 x double> %i.cx, %i.cy          ; 4 uses
  store double %i.cu, ptr %26, align 8, !alias.scope !1250
  %.sroa.46.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.da = extractelement <2 x double> %i.cz, i64 0
  store double %i.da, ptr %.sroa.46.0..sroa_idx.i206, align 8, !alias.scope !1250
  %i.db = getelementptr inbounds nuw i8, ptr %26, i64 16
  store double %i.cu, ptr %i.db, align 8, !alias.scope !1250
  %.sroa.4.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  store double %i.dc, ptr %.sroa.4.0..sroa_idx.i207, align 8, !alias.scope !1250
  %i.dd = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit
  %i.df = load i32, ptr %i.k, align 4
  %i.dg = and i32 %i.df, 1
  %.not.i208 = icmp eq i32 %i.dg, 0
  br i1 %.not.i208, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN10QCPPainter8drawLineERK6QLineF.exit
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit217

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #51
  %i.dh = call double @llvm.copysign.f64(double 5.000000e-01, double %i.cu)
  %i.di = fadd double %i.cu, %i.dh
  %i.dj = fptosi double %i.di to i32
  %i.dk = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.cz)
  %.sroa.0.0.insert.ext.i.i.i211 = zext i32 %i.dj to i64
  %i.dl = fadd <2 x double> %i.cz, %i.dk
  %i.dm = fptosi <2 x double> %i.dl to <2 x i32>
  %i.dn = zext <2 x i32> %i.dm to <2 x i64>
  %i.do = shl nuw <2 x i64> %i.dn, splat (i64 32)
  %i.dp = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i211, i64 0
  %i.dq = shufflevector <2 x i64> %i.dp, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dr = or disjoint <2 x i64> %i.do, %i.dq
  store <2 x i64> %i.dr, ptr %16, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %16, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit217

_ZN10QCPPainter8drawLineERK6QLineF.exit217:       ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #51
  %i.ds = load double, ptr %i.ag, align 8
  %i.dt = fmul double %i.ds, 8.000000e-01
  %i.du = load double, ptr %i.s, align 8
  %i.dv = load double, ptr %2, align 8
  %64 = load <2 x double>, ptr %i.q, align 8
  %i.dw = fadd double %i.dt, %i.dv                ; 4 uses
  %i.dx = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %i.dy, <double 5.000000e-01, double f0x3FE6666666666666>
  %i.ea = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fadd <2 x double> %i.dz, %i.ea          ; 4 uses
  store double %i.dw, ptr %27, align 8, !alias.scope !1253
  %.sroa.46.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  store double %i.ec, ptr %.sroa.46.0..sroa_idx.i220, align 8, !alias.scope !1253
  %i.ed = getelementptr inbounds nuw i8, ptr %27, i64 16
  store double %i.dw, ptr %i.ed, align 8, !alias.scope !1253
  %.sroa.4.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.ee = extractelement <2 x double> %i.eb, i64 1
  store double %i.ee, ptr %.sroa.4.0..sroa_idx.i221, align 8, !alias.scope !1253
  %i.ef = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit217
  %i.eh = load i32, ptr %i.k, align 4
  %i.ei = and i32 %i.eh, 1
  %.not.i222 = icmp eq i32 %i.ei, 0
  br i1 %.not.i222, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN10QCPPainter8drawLineERK6QLineF.exit217
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit231

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %i.ej = call double @llvm.copysign.f64(double 5.000000e-01, double %i.dw)
  %i.ek = fadd double %i.dw, %i.ej
  %i.el = fptosi double %i.ek to i32
  %i.em = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.eb)
  %.sroa.0.0.insert.ext.i.i.i225 = zext i32 %i.el to i64
  %i.en = fadd <2 x double> %i.eb, %i.em
  %i.eo = fptosi <2 x double> %i.en to <2 x i32>
  %i.ep = zext <2 x i32> %i.eo to <2 x i64>
  %i.eq = shl nuw <2 x i64> %i.ep, splat (i64 32)
  %i.er = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i225, i64 0
  %i.es = shufflevector <2 x i64> %i.er, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.et = or disjoint <2 x i64> %i.eq, %i.es
  store <2 x i64> %i.et, ptr %15, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit231

_ZN10QCPPainter8drawLineERK6QLineF.exit231:       ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #51
  %i.eu = getelementptr i8, ptr %0, i64 240
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.eu)
  %i.ev = getelementptr i8, ptr %0, i64 256
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.ev)
  %i.ew = load i32, ptr %i.k, align 4
  %i.ex = and i32 %i.ew, 4
  %.not.i232 = icmp eq i32 %i.ex, 0
  br i1 %.not.i232, label %_ZN10QCPPainter6setPenERK4QPen.exit233, label %bb.u

bb.u:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit231
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit233

_ZN10QCPPainter6setPenERK4QPen.exit233:           ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit231, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #51
  %i.ey = load double, ptr %2, align 8            ; 2 uses
  %i.ez = load double, ptr %i.q, align 8
  %i.fa = load double, ptr %i.s, align 8
  %i.fb = fadd double %i.ez, %i.fa                ; 2 uses
  %i.fc = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ey)
  %i.fd = fadd double %i.ey, %i.fc
  %i.fe = fptosi double %i.fd to i32
  %i.ff = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fb)
  %i.fg = fadd double %i.fb, %i.ff
  %i.fh = fptosi double %i.fg to i32
  %.sroa.2.0.insert.ext.i236 = zext i32 %i.fh to i64
  %.sroa.2.0.insert.shift.i237 = shl nuw i64 %.sroa.2.0.insert.ext.i236, 32
  %.sroa.0.0.insert.ext.i238 = zext i32 %i.fe to i64
  %.sroa.0.0.insert.insert.i239 = or disjoint i64 %.sroa.2.0.insert.shift.i237, %.sroa.0.0.insert.ext.i238
  store i64 %.sroa.0.0.insert.insert.i239, ptr %31, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %31)
          to label %.noexc243 unwind label %bb.at

.noexc243:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit233
  %i.fj = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i240 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i240, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i241

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i241: ; preds = %.noexc243
  %i.fk = load atomic i32, ptr %i.fj monotonic, align 4
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242, label %_ZN5QListI6QPointElsEOS0_.exit245

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i241, %.noexc243
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit245 unwind label %bb.at

_ZN5QListI6QPointElsEOS0_.exit245:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i241, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #51
  %i.fm = load double, ptr %2, align 8
  %i.fn = load double, ptr %i.ag, align 8
  %i.fo = fadd double %i.fm, %i.fn                ; 2 uses
  %i.fp = load double, ptr %i.q, align 8          ; 2 uses
  %i.fq = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fo)
  %i.fr = fadd double %i.fo, %i.fq
  %i.fs = fptosi double %i.fr to i32
  %i.ft = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fp)
  %i.fu = fadd double %i.fp, %i.ft
  %i.fv = fptosi double %i.fu to i32
  %.sroa.2.0.insert.ext.i248 = zext i32 %i.fv to i64
  %.sroa.2.0.insert.shift.i249 = shl nuw i64 %.sroa.2.0.insert.ext.i248, 32
  %.sroa.0.0.insert.ext.i250 = zext i32 %i.fs to i64
  %.sroa.0.0.insert.insert.i251 = or disjoint i64 %.sroa.2.0.insert.shift.i249, %.sroa.0.0.insert.ext.i250
  store i64 %.sroa.0.0.insert.insert.i251, ptr %32, align 8
  %i.fw = load i64, ptr %i.fi, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i64 noundef %i.fw, ptr noundef nonnull align 4 dereferenceable(8) %32)
          to label %.noexc255 unwind label %bb.au

.noexc255:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit245
  %i.fx = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i252 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i.i.i252, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i253

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i253: ; preds = %.noexc255
  %i.fy = load atomic i32, ptr %i.fx monotonic, align 4
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254, label %_ZN5QListI6QPointElsEOS0_.exit257

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i253, %.noexc255
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit257 unwind label %bb.au

_ZN5QListI6QPointElsEOS0_.exit257:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i253, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #51
  %i.ga = load <2 x double>, ptr %2, align 8
  %i.gb = load <2 x double>, ptr %i.ag, align 8
  %i.gc = fadd <2 x double> %i.ga, %i.gb          ; 2 uses
  %i.gd = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.gc)
  %i.ge = fadd <2 x double> %i.gc, %i.gd
  %i.gf = fptosi <2 x double> %i.ge to <2 x i32>
  store <2 x i32> %i.gf, ptr %33, align 8
  %i.gg = load i64, ptr %i.fi, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i64 noundef %i.gg, ptr noundef nonnull align 4 dereferenceable(8) %33)
          to label %.noexc267 unwind label %bb.av

.noexc267:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit257
  %i.gh = load ptr, ptr %30, align 16             ; 4 uses
  %.not.i.i.i.i.i.i.i264 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i264, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i265

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i265: ; preds = %.noexc267
  %i.gi = load atomic i32, ptr %i.gh monotonic, align 4
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266, label %_ZN5QListI6QPointElsEOS0_.exit269.thread

_ZN5QListI6QPointElsEOS0_.exit269.thread:         ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i265
  store ptr %i.gh, ptr %29, align 16
  %i.gk = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  store ptr %i.gm, ptr %i.gk, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.go = load i64, ptr %i.fi, align 16
  store i64 %i.go, ptr %i.gn, align 16
  br label %bb.v

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i265, %.noexc267
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit269 unwind label %bb.av

_ZN5QListI6QPointElsEOS0_.exit269:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266
  %i.gp = load <2 x ptr>, ptr %30, align 16
  %.pre715 = load ptr, ptr %30, align 16          ; 2 uses
  store <2 x ptr> %i.gp, ptr %29, align 16
  %i.gq = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.gr = load i64, ptr %i.fi, align 16
  store i64 %i.gr, ptr %i.gq, align 16
  %.not.i.i.i.i270 = icmp eq ptr %.pre715, null
  br i1 %.not.i.i.i.i270, label %_ZN8QPolygonC2ERK5QListI6QPointE.exit271, label %bb.v

bb.v:                                             ; preds = %_ZN5QListI6QPointElsEOS0_.exit269.thread, %_ZN5QListI6QPointElsEOS0_.exit269
  %i.gs = phi ptr [ %i.gh, %_ZN5QListI6QPointElsEOS0_.exit269.thread ], [ %.pre715, %_ZN5QListI6QPointElsEOS0_.exit269 ]
  %i.gt = atomicrmw add ptr %i.gs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8QPolygonC2ERK5QListI6QPointE.exit271

_ZN8QPolygonC2ERK5QListI6QPointE.exit271:         ; preds = %_ZN5QListI6QPointElsEOS0_.exit269, %bb.v
  invoke void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef 0)
          to label %bb.w unwind label %bb.aw

bb.w:                                             ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit271
  invoke void @_ZN8QPainter13setClipRegionERK7QRegionN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 1)
          to label %bb.x unwind label %bb.ax

bb.x:                                             ; preds = %bb.w
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %28) #51
  %i.gu = load ptr, ptr %29, align 16             ; 2 uses
  %.not.i.i.i272 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i272, label %_ZN5QListI6QPointED2Ev.exit275, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i273

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i273: ; preds = %bb.x
  %i.gv = atomicrmw sub ptr %i.gu, i32 1 acq_rel, align 4
  %.not.i.i274 = icmp eq i32 %i.gv, 1
  br i1 %.not.i.i274, label %bb.y, label %_ZN5QListI6QPointED2Ev.exit275

bb.y:                                             ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i273
  %i.gw = load ptr, ptr %29, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gw, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit275

_ZN5QListI6QPointED2Ev.exit275:                   ; preds = %bb.x, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i273, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #51
  %i.gx = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i276 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i276, label %_ZN5QListI6QPointED2Ev.exit279, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i277

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i277: ; preds = %_ZN5QListI6QPointED2Ev.exit275
  %i.gy = atomicrmw sub ptr %i.gx, i32 1 acq_rel, align 4
  %.not.i.i278 = icmp eq i32 %i.gy, 1
  br i1 %.not.i.i278, label %bb.z, label %_ZN5QListI6QPointED2Ev.exit279

bb.z:                                             ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i277
  %i.gz = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gz, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit279

_ZN5QListI6QPointED2Ev.exit279:                   ; preds = %_ZN5QListI6QPointED2Ev.exit275, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i277, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #51
  %i.ha = load double, ptr %i.s, align 8
  %i.hb = fmul double %i.ha, 5.000000e-01
  %i.hc = load double, ptr %i.ag, align 8
  %65 = load <2 x double>, ptr %2, align 8        ; 2 uses
  %i.hd = load double, ptr %i.q, align 8
  %i.he = fadd double %i.hb, %i.hd                ; 4 uses
  %i.hf = insertelement <2 x double> %65, double %i.hc, i64 1
  %66 = shufflevector <2 x double> %65, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.hg = fadd <2 x double> %i.hf, %66            ; 4 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 0
  store double %i.hh, ptr %34, align 8, !alias.scope !1256
  %.sroa.46.0..sroa_idx.i282 = getelementptr inbounds nuw i8, ptr %34, i64 8
  store double %i.he, ptr %.sroa.46.0..sroa_idx.i282, align 8, !alias.scope !1256
  %i.hi = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.hj = extractelement <2 x double> %i.hg, i64 1
  store double %i.hj, ptr %i.hi, align 8, !alias.scope !1256
  %.sroa.4.0..sroa_idx.i283 = getelementptr inbounds nuw i8, ptr %34, i64 24
  store double %i.he, ptr %.sroa.4.0..sroa_idx.i283, align 8, !alias.scope !1256
  %i.hk = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit279
  %i.hm = load i32, ptr %i.k, align 4
  %i.hn = and i32 %i.hm, 1
  %.not.i284 = icmp eq i32 %i.hn, 0
  br i1 %.not.i284, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN5QListI6QPointED2Ev.exit279
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit293

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #51
  %i.ho = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.hg)
  %i.hp = call double @llvm.copysign.f64(double 5.000000e-01, double %i.he)
  %i.hq = fadd double %i.he, %i.hp
  %i.hr = fptosi double %i.hq to i32
  %.sroa.2.0.insert.ext.i.i.i285 = zext i32 %i.hr to i64
  %.sroa.2.0.insert.shift.i.i.i286 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i285, 32
  %i.hs = fadd <2 x double> %i.hg, %i.ho
  %i.ht = fptosi <2 x double> %i.hs to <2 x i32>
  %i.hu = zext <2 x i32> %i.ht to <2 x i64>
  %i.hv = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i286, i64 0
  %i.hw = shufflevector <2 x i64> %i.hv, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.hx = or disjoint <2 x i64> %i.hw, %i.hu
  store <2 x i64> %i.hx, ptr %14, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %14, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit293

_ZN10QCPPainter8drawLineERK6QLineF.exit293:       ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #51
  %i.hy = load double, ptr %i.ag, align 8
  %i.hz = fmul double %i.hy, 2.000000e-01
  %i.ia = load double, ptr %i.s, align 8
  %i.ib = load double, ptr %2, align 8
  %67 = load <2 x double>, ptr %i.q, align 8
  %i.ic = fadd double %i.hz, %i.ib                ; 4 uses
  %i.id = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x double> %i.ie, <double 3.000000e-01, double 5.000000e-01>
  %i.ig = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fadd <2 x double> %i.if, %i.ig          ; 4 uses
  store double %i.ic, ptr %35, align 8, !alias.scope !1259
  %.sroa.46.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ii = extractelement <2 x double> %i.ih, i64 0
  store double %i.ii, ptr %.sroa.46.0..sroa_idx.i296, align 8, !alias.scope !1259
  %i.ij = getelementptr inbounds nuw i8, ptr %35, i64 16
  store double %i.ic, ptr %i.ij, align 8, !alias.scope !1259
  %.sroa.4.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.ik = extractelement <2 x double> %i.ih, i64 1
  store double %i.ik, ptr %.sroa.4.0..sroa_idx.i297, align 8, !alias.scope !1259
  %i.il = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit293
  %i.in = load i32, ptr %i.k, align 4
  %i.io = and i32 %i.in, 1
  %.not.i298 = icmp eq i32 %i.io, 0
  br i1 %.not.i298, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN10QCPPainter8drawLineERK6QLineF.exit293
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %35, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit307

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  %i.ip = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ic)
  %i.iq = fadd double %i.ic, %i.ip
  %i.ir = fptosi double %i.iq to i32
  %i.is = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ih)
  %.sroa.0.0.insert.ext.i.i.i301 = zext i32 %i.ir to i64
  %i.it = fadd <2 x double> %i.ih, %i.is
  %i.iu = fptosi <2 x double> %i.it to <2 x i32>
  %i.iv = zext <2 x i32> %i.iu to <2 x i64>
  %i.iw = shl nuw <2 x i64> %i.iv, splat (i64 32)
  %i.ix = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i301, i64 0
  %i.iy = shufflevector <2 x i64> %i.ix, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.iz = or disjoint <2 x i64> %i.iw, %i.iy
  store <2 x i64> %i.iz, ptr %13, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %13, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit307

_ZN10QCPPainter8drawLineERK6QLineF.exit307:       ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #51
  %i.ja = load double, ptr %i.ag, align 8
  %i.jb = fmul double %i.ja, 8.000000e-01
  %i.jc = load double, ptr %i.s, align 8
  %i.jd = load double, ptr %2, align 8
  %68 = load <2 x double>, ptr %i.q, align 8
  %i.je = fadd double %i.jb, %i.jd                ; 4 uses
  %i.jf = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x double> %i.jg, <double 5.000000e-01, double f0x3FE6666666666666>
  %i.ji = shufflevector <2 x double> %68, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jj = fadd <2 x double> %i.jh, %i.ji          ; 4 uses
  store double %i.je, ptr %36, align 8, !alias.scope !1262
  %.sroa.46.0..sroa_idx.i310 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jk = extractelement <2 x double> %i.jj, i64 0
  store double %i.jk, ptr %.sroa.46.0..sroa_idx.i310, align 8, !alias.scope !1262
  %i.jl = getelementptr inbounds nuw i8, ptr %36, i64 16
  store double %i.je, ptr %i.jl, align 8, !alias.scope !1262
  %.sroa.4.0..sroa_idx.i311 = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.jm = extractelement <2 x double> %i.jj, i64 1
  store double %i.jm, ptr %.sroa.4.0..sroa_idx.i311, align 8, !alias.scope !1262
  %i.jn = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit307
  %i.jp = load i32, ptr %i.k, align 4
  %i.jq = and i32 %i.jp, 1
  %.not.i312 = icmp eq i32 %i.jq, 0
  br i1 %.not.i312, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN10QCPPainter8drawLineERK6QLineF.exit307
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit321

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %i.jr = call double @llvm.copysign.f64(double 5.000000e-01, double %i.je)
  %i.js = fadd double %i.je, %i.jr
  %i.jt = fptosi double %i.js to i32
  %i.ju = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.jj)
  %.sroa.0.0.insert.ext.i.i.i315 = zext i32 %i.jt to i64
  %i.jv = fadd <2 x double> %i.jj, %i.ju
  %i.jw = fptosi <2 x double> %i.jv to <2 x i32>
  %i.jx = zext <2 x i32> %i.jw to <2 x i64>
  %i.jy = shl nuw <2 x i64> %i.jx, splat (i64 32)
  %i.jz = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i315, i64 0
  %i.ka = shufflevector <2 x i64> %i.jz, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.kb = or disjoint <2 x i64> %i.jy, %i.ka
  store <2 x i64> %i.kb, ptr %12, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit321

_ZN10QCPPainter8drawLineERK6QLineF.exit321:       ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #51
  br label %bb.dq

bb.aj:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i, %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i181, %_ZN5QListI6QPointElsEOS0_.exit
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.al:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i193, %_ZN5QListI6QPointElsEOS0_.exit184
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit325

bb.am:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.h
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %19) #51
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn160 = phi { ptr, i32 } [ %i.kg, %bb.an ], [ %i.kf, %bb.am ] ; 3 uses
  %i.kh = load ptr, ptr %20, align 16             ; 2 uses
  %.not.i.i.i322 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i322, label %_ZN5QListI6QPointED2Ev.exit325, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323: ; preds = %bb.ao
  %i.ki = atomicrmw sub ptr %i.kh, i32 1 acq_rel, align 4
  %.not.i.i324 = icmp eq i32 %i.ki, 1
  br i1 %.not.i.i324, label %bb.ap, label %_ZN5QListI6QPointED2Ev.exit325

bb.ap:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323
  %i.kj = load ptr, ptr %20, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kj, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit325

_ZN5QListI6QPointED2Ev.exit325:                   ; preds = %bb.ap, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323, %bb.ao, %bb.al
  %.pn160.pn = phi { ptr, i32 } [ %i.ke, %bb.al ], [ %.pn160, %bb.ao ], [ %.pn160, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323 ], [ %.pn160, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #51
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit325, %bb.ak
  %.pn160.pn.pn = phi { ptr, i32 } [ %.pn160.pn, %_ZN5QListI6QPointED2Ev.exit325 ], [ %i.kd, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #51
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.aj
  %.pn160.pn.pn.pn = phi { ptr, i32 } [ %.pn160.pn.pn, %bb.aq ], [ %i.kc, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #51
  %i.kk = load ptr, ptr %21, align 16             ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i326, label %_ZN5QListI6QPointED2Ev.exit329, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i327

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i327: ; preds = %bb.ar
  %i.kl = atomicrmw sub ptr %i.kk, i32 1 acq_rel, align 4
  %.not.i.i328 = icmp eq i32 %i.kl, 1
  br i1 %.not.i.i328, label %bb.as, label %_ZN5QListI6QPointED2Ev.exit329

bb.as:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i327
  %i.km = load ptr, ptr %21, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.km, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit329

_ZN5QListI6QPointED2Ev.exit329:                   ; preds = %bb.ar, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i327, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #51
  br label %bb.dr

bb.at:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242, %_ZN10QCPPainter6setPenERK4QPen.exit233
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.au:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254, %_ZN5QListI6QPointElsEOS0_.exit245
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.av:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266, %_ZN5QListI6QPointElsEOS0_.exit257
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit333

bb.aw:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit271
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.w
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %28) #51
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn165 = phi { ptr, i32 } [ %i.kr, %bb.ax ], [ %i.kq, %bb.aw ] ; 3 uses
  %i.ks = load ptr, ptr %29, align 16             ; 2 uses
  %.not.i.i.i330 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i330, label %_ZN5QListI6QPointED2Ev.exit333, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331: ; preds = %bb.ay
  %i.kt = atomicrmw sub ptr %i.ks, i32 1 acq_rel, align 4
  %.not.i.i332 = icmp eq i32 %i.kt, 1
  br i1 %.not.i.i332, label %bb.az, label %_ZN5QListI6QPointED2Ev.exit333

bb.az:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331
  %i.ku = load ptr, ptr %29, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ku, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit333

_ZN5QListI6QPointED2Ev.exit333:                   ; preds = %bb.az, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331, %bb.ay, %bb.av
  %.pn165.pn = phi { ptr, i32 } [ %i.kp, %bb.av ], [ %.pn165, %bb.ay ], [ %.pn165, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331 ], [ %.pn165, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #51
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit333, %bb.au
  %.pn165.pn.pn = phi { ptr, i32 } [ %.pn165.pn, %_ZN5QListI6QPointED2Ev.exit333 ], [ %i.ko, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #51
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.at
  %.pn165.pn.pn.pn = phi { ptr, i32 } [ %.pn165.pn.pn, %bb.ba ], [ %i.kn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #51
  %i.kv = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i334 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i334, label %_ZN5QListI6QPointED2Ev.exit337, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i335

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i335: ; preds = %bb.bb
  %i.kw = atomicrmw sub ptr %i.kv, i32 1 acq_rel, align 4
  %.not.i.i336 = icmp eq i32 %i.kw, 1
  br i1 %.not.i.i336, label %bb.bc, label %_ZN5QListI6QPointED2Ev.exit337

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i335
  %i.kx = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kx, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit337

_ZN5QListI6QPointED2Ev.exit337:                   ; preds = %bb.bb, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i335, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #51
  br label %bb.dr

bb.bd:                                            ; preds = %bb.d
  %i.ky = getelementptr i8, ptr %0, i64 104
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.ky)
  %i.kz = getelementptr i8, ptr %0, i64 96
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.kz)
  %i.la = load i32, ptr %i.k, align 4
  %i.lb = and i32 %i.la, 4
  %.not.i338 = icmp eq i32 %i.lb, 0
  br i1 %.not.i338, label %_ZN10QCPPainter6setPenERK4QPen.exit339, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit339

_ZN10QCPPainter6setPenERK4QPen.exit339:           ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #51
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ld = load double, ptr %i.lc, align 8
  %i.le = fmul double %i.ld, 5.000000e-01
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.lg = load double, ptr %i.lf, align 8
  %69 = load <2 x double>, ptr %2, align 8        ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.li = load double, ptr %i.lh, align 8
  %i.lj = fadd double %i.le, %i.li                ; 4 uses
  %i.lk = insertelement <2 x double> %69, double %i.lg, i64 1
  %70 = shufflevector <2 x double> %69, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ll = fadd <2 x double> %i.lk, %70            ; 4 uses
  %i.lm = extractelement <2 x double> %i.ll, i64 0
  store double %i.lm, ptr %37, align 8, !alias.scope !1265
  %.sroa.46.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store double %i.lj, ptr %.sroa.46.0..sroa_idx.i342, align 8, !alias.scope !1265
  %i.ln = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.lo = extractelement <2 x double> %i.ll, i64 1
  store double %i.lo, ptr %i.ln, align 8, !alias.scope !1265
  %.sroa.4.0..sroa_idx.i343 = getelementptr inbounds nuw i8, ptr %37, i64 24
  store double %i.lj, ptr %.sroa.4.0..sroa_idx.i343, align 8, !alias.scope !1265
  %i.lp = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit339
  %i.lr = load i32, ptr %i.k, align 4
  %i.ls = and i32 %i.lr, 1
  %.not.i344 = icmp eq i32 %i.ls, 0
  br i1 %.not.i344, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN10QCPPainter6setPenERK4QPen.exit339
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %37, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit353

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.lt = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ll)
  %i.lu = call double @llvm.copysign.f64(double 5.000000e-01, double %i.lj)
  %i.lv = fadd double %i.lj, %i.lu
  %i.lw = fptosi double %i.lv to i32
  %.sroa.2.0.insert.ext.i.i.i345 = zext i32 %i.lw to i64
  %.sroa.2.0.insert.shift.i.i.i346 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i345, 32
  %i.lx = fadd <2 x double> %i.ll, %i.lt
  %i.ly = fptosi <2 x double> %i.lx to <2 x i32>
  %i.lz = zext <2 x i32> %i.ly to <2 x i64>
  %i.ma = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i346, i64 0
  %i.mb = shufflevector <2 x i64> %i.ma, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.mc = or disjoint <2 x i64> %i.mb, %i.lz
  store <2 x i64> %i.mc, ptr %11, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit353

_ZN10QCPPainter8drawLineERK6QLineF.exit353:       ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #51
  %i.md = load double, ptr %i.lf, align 8
  %i.me = fmul double %i.md, 2.000000e-01
  %i.mf = load double, ptr %i.lc, align 8
  %i.mg = load double, ptr %2, align 8
  %71 = load <2 x double>, ptr %i.lh, align 8
  %i.mh = fadd double %i.me, %i.mg                ; 4 uses
  %i.mi = insertelement <2 x double> poison, double %i.mf, i64 0
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mk = fmul <2 x double> %i.mj, <double 3.000000e-01, double 5.000000e-01>
  %i.ml = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mm = fadd <2 x double> %i.mk, %i.ml          ; 4 uses
  store double %i.mh, ptr %38, align 8, !alias.scope !1268
  %.sroa.46.0..sroa_idx.i356 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.mn = extractelement <2 x double> %i.mm, i64 0
  store double %i.mn, ptr %.sroa.46.0..sroa_idx.i356, align 8, !alias.scope !1268
  %i.mo = getelementptr inbounds nuw i8, ptr %38, i64 16
  store double %i.mh, ptr %i.mo, align 8, !alias.scope !1268
  %.sroa.4.0..sroa_idx.i357 = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.mp = extractelement <2 x double> %i.mm, i64 1
  store double %i.mp, ptr %.sroa.4.0..sroa_idx.i357, align 8, !alias.scope !1268
  %i.mq = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit353
  %i.ms = load i32, ptr %i.k, align 4
  %i.mt = and i32 %i.ms, 1
  %.not.i358 = icmp eq i32 %i.mt, 0
  br i1 %.not.i358, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN10QCPPainter8drawLineERK6QLineF.exit353
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit367

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.mu = call double @llvm.copysign.f64(double 5.000000e-01, double %i.mh)
  %i.mv = fadd double %i.mh, %i.mu
  %i.mw = fptosi double %i.mv to i32
  %i.mx = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.mm)
  %.sroa.0.0.insert.ext.i.i.i361 = zext i32 %i.mw to i64
  %i.my = fadd <2 x double> %i.mm, %i.mx
  %i.mz = fptosi <2 x double> %i.my to <2 x i32>
  %i.na = zext <2 x i32> %i.mz to <2 x i64>
  %i.nb = shl nuw <2 x i64> %i.na, splat (i64 32)
  %i.nc = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i361, i64 0
  %i.nd = shufflevector <2 x i64> %i.nc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ne = or disjoint <2 x i64> %i.nb, %i.nd
  store <2 x i64> %i.ne, ptr %10, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit367

_ZN10QCPPainter8drawLineERK6QLineF.exit367:       ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #51
  %i.nf = load double, ptr %i.lf, align 8
  %i.ng = fmul double %i.nf, 8.000000e-01
  %i.nh = load double, ptr %i.lc, align 8
  %i.ni = load double, ptr %2, align 8
  %72 = load <2 x double>, ptr %i.lh, align 8
  %i.nj = fadd double %i.ng, %i.ni                ; 4 uses
  %i.nk = insertelement <2 x double> poison, double %i.nh, i64 0
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nm = fmul <2 x double> %i.nl, <double 5.000000e-01, double f0x3FE6666666666666>
  %i.nn = shufflevector <2 x double> %72, <2 x double> poison, <2 x i32> zeroinitializer
  %i.no = fadd <2 x double> %i.nm, %i.nn          ; 4 uses
  store double %i.nj, ptr %39, align 8, !alias.scope !1271
  %.sroa.46.0..sroa_idx.i370 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.np = extractelement <2 x double> %i.no, i64 0
  store double %i.np, ptr %.sroa.46.0..sroa_idx.i370, align 8, !alias.scope !1271
  %i.nq = getelementptr inbounds nuw i8, ptr %39, i64 16
  store double %i.nj, ptr %i.nq, align 8, !alias.scope !1271
  %.sroa.4.0..sroa_idx.i371 = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.nr = extractelement <2 x double> %i.no, i64 1
  store double %i.nr, ptr %.sroa.4.0..sroa_idx.i371, align 8, !alias.scope !1271
  %i.ns = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit367
  %i.nu = load i32, ptr %i.k, align 4
  %i.nv = and i32 %i.nu, 1
  %.not.i372 = icmp eq i32 %i.nv, 0
  br i1 %.not.i372, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZN10QCPPainter8drawLineERK6QLineF.exit367
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %39, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit381

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.nw = call double @llvm.copysign.f64(double 5.000000e-01, double %i.nj)
  %i.nx = fadd double %i.nj, %i.nw
  %i.ny = fptosi double %i.nx to i32
  %i.nz = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.no)
  %.sroa.0.0.insert.ext.i.i.i375 = zext i32 %i.ny to i64
  %i.oa = fadd <2 x double> %i.no, %i.nz
  %i.ob = fptosi <2 x double> %i.oa to <2 x i32>
  %i.oc = zext <2 x i32> %i.ob to <2 x i64>
  %i.od = shl nuw <2 x i64> %i.oc, splat (i64 32)
  %i.oe = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i375, i64 0
  %i.of = shufflevector <2 x i64> %i.oe, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.og = or disjoint <2 x i64> %i.od, %i.of
  store <2 x i64> %i.og, ptr %9, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit381

_ZN10QCPPainter8drawLineERK6QLineF.exit381:       ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #51
  br label %bb.dq

bb.bo:                                            ; preds = %_ZN10QCPPainter15setAntialiasingEb.exit
  %i.oh = getelementptr i8, ptr %0, i64 228
  %i.oi = load i8, ptr %i.oh, align 4, !range !6, !noundef !7
  %i.oj = trunc nuw i8 %i.oi to i1
  %i.ok = getelementptr i8, ptr %1, i64 8         ; 9 uses
  br i1 %i.oj, label %bb.bp, label %bb.di

bb.bp:                                            ; preds = %bb.bo
  %i.ol = getelementptr i8, ptr %0, i64 232
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.ol)
  %i.om = getelementptr i8, ptr %0, i64 248
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.om)
  %i.on = load i32, ptr %i.ok, align 4
  %i.oo = and i32 %i.on, 4
  %.not.i382 = icmp eq i32 %i.oo, 0
  br i1 %.not.i382, label %_ZN10QCPPainter6setPenERK4QPen.exit383, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit383

_ZN10QCPPainter6setPenERK4QPen.exit383:           ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #51
  %i.op = load double, ptr %2, align 8            ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.or = load double, ptr %i.oq, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ot = load double, ptr %i.os, align 8
  %i.ou = fadd double %i.or, %i.ot                ; 2 uses
  %i.ov = call double @llvm.copysign.f64(double 5.000000e-01, double %i.op)
  %i.ow = fadd double %i.op, %i.ov
  %i.ox = fptosi double %i.ow to i32
  %i.oy = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ou)
  %i.oz = fadd double %i.ou, %i.oy
  %i.pa = fptosi double %i.oz to i32
  %.sroa.2.0.insert.ext.i386 = zext i32 %i.pa to i64
  %.sroa.2.0.insert.shift.i387 = shl nuw i64 %.sroa.2.0.insert.ext.i386, 32
  %.sroa.0.0.insert.ext.i388 = zext i32 %i.ox to i64
  %.sroa.0.0.insert.insert.i389 = or disjoint i64 %.sroa.2.0.insert.shift.i387, %.sroa.0.0.insert.ext.i388
  store i64 %.sroa.0.0.insert.insert.i389, ptr %43, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %43)
          to label %.noexc393 unwind label %bb.co

.noexc393:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit383
  %i.pc = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i390 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i.i.i.i.i390, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391: ; preds = %.noexc393
  %i.pd = load atomic i32, ptr %i.pc monotonic, align 4
  %i.pe = icmp sgt i32 %i.pd, 1
  br i1 %i.pe, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392, label %_ZN5QListI6QPointElsEOS0_.exit395

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391, %.noexc393
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit395 unwind label %bb.co

_ZN5QListI6QPointElsEOS0_.exit395:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #51
  %i.pf = load double, ptr %2, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.ph = load double, ptr %i.pg, align 8
  %i.pi = fadd double %i.pf, %i.ph                ; 2 uses
  %i.pj = load double, ptr %i.oq, align 8         ; 2 uses
  %i.pk = call double @llvm.copysign.f64(double 5.000000e-01, double %i.pi)
  %i.pl = fadd double %i.pi, %i.pk
  %i.pm = fptosi double %i.pl to i32
  %i.pn = call double @llvm.copysign.f64(double 5.000000e-01, double %i.pj)
  %i.po = fadd double %i.pj, %i.pn
  %i.pp = fptosi double %i.po to i32
  %.sroa.2.0.insert.ext.i398 = zext i32 %i.pp to i64
  %.sroa.2.0.insert.shift.i399 = shl nuw i64 %.sroa.2.0.insert.ext.i398, 32
  %.sroa.0.0.insert.ext.i400 = zext i32 %i.pm to i64
  %.sroa.0.0.insert.insert.i401 = or disjoint i64 %.sroa.2.0.insert.shift.i399, %.sroa.0.0.insert.ext.i400
  store i64 %.sroa.0.0.insert.insert.i401, ptr %44, align 8
  %i.pq = load i64, ptr %i.pb, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i64 noundef %i.pq, ptr noundef nonnull align 4 dereferenceable(8) %44)
          to label %.noexc405 unwind label %bb.cp

.noexc405:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit395
  %i.pr = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i402 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i.i.i.i.i402, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403: ; preds = %.noexc405
  %i.ps = load atomic i32, ptr %i.pr monotonic, align 4
  %i.pt = icmp sgt i32 %i.ps, 1
  br i1 %i.pt, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404, label %_ZN5QListI6QPointElsEOS0_.exit407

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403, %.noexc405
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit407 unwind label %bb.cp

_ZN5QListI6QPointElsEOS0_.exit407:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #51
  %i.pu = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.pv = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.pu)
  %i.pw = fadd <2 x double> %i.pu, %i.pv
  %i.px = fptosi <2 x double> %i.pw to <2 x i32>
  store <2 x i32> %i.px, ptr %45, align 8
  %i.py = load i64, ptr %i.pb, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i64 noundef %i.py, ptr noundef nonnull align 4 dereferenceable(8) %45)
          to label %.noexc417 unwind label %bb.cq

.noexc417:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit407
  %i.pz = load ptr, ptr %42, align 16             ; 4 uses
  %.not.i.i.i.i.i.i.i414 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i.i.i.i.i.i414, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415: ; preds = %.noexc417
  %i.qa = load atomic i32, ptr %i.pz monotonic, align 4
  %i.qb = icmp sgt i32 %i.qa, 1
  br i1 %i.qb, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416, label %_ZN5QListI6QPointElsEOS0_.exit419.thread

_ZN5QListI6QPointElsEOS0_.exit419.thread:         ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415
  store ptr %i.pz, ptr %41, align 16
  %i.qc = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8
  store ptr %i.qe, ptr %i.qc, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.qg = load i64, ptr %i.pb, align 16
  store i64 %i.qg, ptr %i.qf, align 16
  br label %bb.br

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415, %.noexc417
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit419 unwind label %bb.cq

_ZN5QListI6QPointElsEOS0_.exit419:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416
  %i.qh = load <2 x ptr>, ptr %42, align 16
  %.pre = load ptr, ptr %42, align 16             ; 2 uses
  store <2 x ptr> %i.qh, ptr %41, align 16
  %i.qi = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.qj = load i64, ptr %i.pb, align 16
  store i64 %i.qj, ptr %i.qi, align 16
  %.not.i.i.i.i420 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i420, label %_ZN8QPolygonC2ERK5QListI6QPointE.exit421, label %bb.br

bb.br:                                            ; preds = %_ZN5QListI6QPointElsEOS0_.exit419.thread, %_ZN5QListI6QPointElsEOS0_.exit419
  %i.qk = phi ptr [ %i.pz, %_ZN5QListI6QPointElsEOS0_.exit419.thread ], [ %.pre, %_ZN5QListI6QPointElsEOS0_.exit419 ]
  %i.ql = atomicrmw add ptr %i.qk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8QPolygonC2ERK5QListI6QPointE.exit421

_ZN8QPolygonC2ERK5QListI6QPointE.exit421:         ; preds = %_ZN5QListI6QPointElsEOS0_.exit419, %bb.br
  invoke void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef 0)
          to label %bb.bs unwind label %bb.cr

bb.bs:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit421
  invoke void @_ZN8QPainter13setClipRegionERK7QRegionN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1)
          to label %bb.bt unwind label %bb.cs

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %40) #51
  %i.qm = load ptr, ptr %41, align 16             ; 2 uses
  %.not.i.i.i422 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i422, label %_ZN5QListI6QPointED2Ev.exit425, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423: ; preds = %bb.bt
  %i.qn = atomicrmw sub ptr %i.qm, i32 1 acq_rel, align 4
  %.not.i.i424 = icmp eq i32 %i.qn, 1
  br i1 %.not.i.i424, label %bb.bu, label %_ZN5QListI6QPointED2Ev.exit425

bb.bu:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423
  %i.qo = load ptr, ptr %41, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qo, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit425

_ZN5QListI6QPointED2Ev.exit425:                   ; preds = %bb.bt, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #51
  %i.qp = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i426 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i426, label %_ZN5QListI6QPointED2Ev.exit429, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427: ; preds = %_ZN5QListI6QPointED2Ev.exit425
  %i.qq = atomicrmw sub ptr %i.qp, i32 1 acq_rel, align 4
  %.not.i.i428 = icmp eq i32 %i.qq, 1
  br i1 %.not.i.i428, label %bb.bv, label %_ZN5QListI6QPointED2Ev.exit429

bb.bv:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427
  %i.qr = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qr, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit429

_ZN5QListI6QPointED2Ev.exit429:                   ; preds = %_ZN5QListI6QPointED2Ev.exit425, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #51
  %i.qs = load <2 x double>, ptr %i.pg, align 8
  %i.qt = fmul <2 x double> %i.qs, <double 2.500000e-01, double 5.000000e-01> ; 2 uses
  %73 = load <2 x double>, ptr %2, align 8
  %i.qu = load double, ptr %i.oq, align 8
  %i.qv = extractelement <2 x double> %i.qt, i64 1
  %i.qw = fadd double %i.qv, %i.qu                ; 4 uses
  %i.qx = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qy = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.qt, <2 x i32> <i32 0, i32 2>
  %i.qz = fadd <2 x double> %i.qx, %i.qy          ; 4 uses
  %i.ra = extractelement <2 x double> %i.qz, i64 0
  store double %i.ra, ptr %46, align 8, !alias.scope !1274
  %.sroa.46.0..sroa_idx.i432 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store double %i.qw, ptr %.sroa.46.0..sroa_idx.i432, align 8, !alias.scope !1274
  %i.rb = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.rc = extractelement <2 x double> %i.qz, i64 1
  store double %i.rc, ptr %i.rb, align 8, !alias.scope !1274
  %.sroa.4.0..sroa_idx.i433 = getelementptr inbounds nuw i8, ptr %46, i64 24
  store double %i.qw, ptr %.sroa.4.0..sroa_idx.i433, align 8, !alias.scope !1274
  %i.rd = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit429
  %i.rf = load i32, ptr %i.ok, align 4
  %i.rg = and i32 %i.rf, 1
  %.not.i434 = icmp eq i32 %i.rg, 0
  br i1 %.not.i434, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZN5QListI6QPointED2Ev.exit429
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %46, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit443

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  %i.rh = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.qz)
  %i.ri = call double @llvm.copysign.f64(double 5.000000e-01, double %i.qw)
  %i.rj = fadd double %i.qw, %i.ri
  %i.rk = fptosi double %i.rj to i32
  %.sroa.2.0.insert.ext.i.i.i435 = zext i32 %i.rk to i64
  %.sroa.2.0.insert.shift.i.i.i436 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i435, 32
  %i.rl = fadd <2 x double> %i.qz, %i.rh
  %i.rm = fptosi <2 x double> %i.rl to <2 x i32>
  %i.rn = zext <2 x i32> %i.rm to <2 x i64>
  %i.ro = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i436, i64 0
  %i.rp = shufflevector <2 x i64> %i.ro, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.rq = or disjoint <2 x i64> %i.rp, %i.rn
  store <2 x i64> %i.rq, ptr %8, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit443

_ZN10QCPPainter8drawLineERK6QLineF.exit443:       ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #51
  %i.rr = load <2 x double>, ptr %i.pg, align 8   ; 2 uses
  %i.rs = fmul <2 x double> %i.rr, <double 7.500000e-01, double 5.000000e-01>
  %i.rt = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.ru = fadd <2 x double> %i.rs, %i.rt          ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.rr, %i.rt
  %i.rv = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  store <2 x double> %i.ru, ptr %47, align 16, !alias.scope !1277
  %i.rw = getelementptr inbounds nuw i8, ptr %47, i64 16
  store double %i.rv, ptr %i.rw, align 16, !alias.scope !1277
  %.sroa.4.0..sroa_idx.i447 = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.rx = extractelement <2 x double> %i.ru, i64 1 ; 3 uses
  store double %i.rx, ptr %.sroa.4.0..sroa_idx.i447, align 8, !alias.scope !1277
  %i.ry = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit443
  %i.sa = load i32, ptr %i.ok, align 4
  %i.sb = and i32 %i.sa, 1
  %.not.i448 = icmp eq i32 %i.sb, 0
  br i1 %.not.i448, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN10QCPPainter8drawLineERK6QLineF.exit443
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %47, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit457

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.sc = extractelement <2 x double> %i.ru, i64 0 ; 2 uses
  %i.sd = call double @llvm.copysign.f64(double 5.000000e-01, double %i.sc)
  %i.se = fadd double %i.sc, %i.sd
  %i.sf = fptosi double %i.se to i32
  %i.sg = call double @llvm.copysign.f64(double 5.000000e-01, double %i.rx)
  %i.sh = fadd double %i.rx, %i.sg
  %i.si = fptosi double %i.sh to i32
  %.sroa.2.0.insert.ext.i.i.i449 = zext i32 %i.si to i64
  %.sroa.2.0.insert.shift.i.i.i450 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i449, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i451 = zext i32 %i.sf to i64
  %.sroa.0.0.insert.insert.i.i.i452 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i450, %.sroa.0.0.insert.ext.i.i.i451
  %i.sj = call double @llvm.copysign.f64(double 5.000000e-01, double %i.rv)
  %i.sk = fadd double %i.rv, %i.sj
  %i.sl = fptosi double %i.sk to i32
  %.sroa.0.0.insert.ext.i3.i.i455 = zext i32 %i.sl to i64
  %.sroa.0.0.insert.insert.i4.i.i456 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i450, %.sroa.0.0.insert.ext.i3.i.i455
  store i64 %.sroa.0.0.insert.insert.i.i.i452, ptr %7, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i456, ptr %i.sm, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit457

_ZN10QCPPainter8drawLineERK6QLineF.exit457:       ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #51
  %i.sn = load <2 x double>, ptr %i.pg, align 8   ; 2 uses
  %i.so = fmul <2 x double> %i.sn, splat (double 2.500000e-01)
  %i.sp = load <2 x double>, ptr %2, align 8
  %i.sq = fadd <2 x double> %i.so, %i.sp
  store <2 x double> %i.sq, ptr %48, align 16, !alias.scope !1280
  %i.sr = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.ss = fmul <2 x double> %i.sn, splat (double 5.000000e-01)
  store <2 x double> %i.ss, ptr %i.sr, align 16, !alias.scope !1280
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %48, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #51
  %i.st = getelementptr i8, ptr %0, i64 240
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.st)
  %i.su = getelementptr i8, ptr %0, i64 256
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.su)
  %i.sv = load i32, ptr %i.ok, align 4
  %i.sw = and i32 %i.sv, 4
  %.not.i460 = icmp eq i32 %i.sw, 0
  br i1 %.not.i460, label %_ZN10QCPPainter6setPenERK4QPen.exit461, label %bb.cc

bb.cc:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit457
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit461

_ZN10QCPPainter6setPenERK4QPen.exit461:           ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit457, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #51
  %i.sx = load double, ptr %2, align 8            ; 2 uses
  %i.sy = load double, ptr %i.oq, align 8
  %i.sz = load double, ptr %i.os, align 8
  %i.ta = fadd double %i.sy, %i.sz                ; 2 uses
  %i.tb = call double @llvm.copysign.f64(double 5.000000e-01, double %i.sx)
  %i.tc = fadd double %i.sx, %i.tb
  %i.td = fptosi double %i.tc to i32
  %i.te = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ta)
  %i.tf = fadd double %i.ta, %i.te
  %i.tg = fptosi double %i.tf to i32
  %.sroa.2.0.insert.ext.i464 = zext i32 %i.tg to i64
  %.sroa.2.0.insert.shift.i465 = shl nuw i64 %.sroa.2.0.insert.ext.i464, 32
  %.sroa.0.0.insert.ext.i466 = zext i32 %i.td to i64
  %.sroa.0.0.insert.insert.i467 = or disjoint i64 %.sroa.2.0.insert.shift.i465, %.sroa.0.0.insert.ext.i466
  store i64 %.sroa.0.0.insert.insert.i467, ptr %52, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %52)
          to label %.noexc471 unwind label %bb.cy

.noexc471:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit461
  %i.ti = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i468 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i.i.i.i.i468, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469: ; preds = %.noexc471
  %i.tj = load atomic i32, ptr %i.ti monotonic, align 4
  %i.tk = icmp sgt i32 %i.tj, 1
  br i1 %i.tk, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470, label %_ZN5QListI6QPointElsEOS0_.exit473

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469, %.noexc471
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit473 unwind label %bb.cy

_ZN5QListI6QPointElsEOS0_.exit473:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #51
  %i.tl = load double, ptr %2, align 8
  %i.tm = load double, ptr %i.pg, align 8
  %i.tn = fadd double %i.tl, %i.tm                ; 2 uses
  %i.to = load double, ptr %i.oq, align 8         ; 2 uses
  %i.tp = call double @llvm.copysign.f64(double 5.000000e-01, double %i.tn)
  %i.tq = fadd double %i.tn, %i.tp
  %i.tr = fptosi double %i.tq to i32
  %i.ts = call double @llvm.copysign.f64(double 5.000000e-01, double %i.to)
  %i.tt = fadd double %i.to, %i.ts
  %i.tu = fptosi double %i.tt to i32
  %.sroa.2.0.insert.ext.i476 = zext i32 %i.tu to i64
  %.sroa.2.0.insert.shift.i477 = shl nuw i64 %.sroa.2.0.insert.ext.i476, 32
  %.sroa.0.0.insert.ext.i478 = zext i32 %i.tr to i64
  %.sroa.0.0.insert.insert.i479 = or disjoint i64 %.sroa.2.0.insert.shift.i477, %.sroa.0.0.insert.ext.i478
  store i64 %.sroa.0.0.insert.insert.i479, ptr %53, align 8
  %i.tv = load i64, ptr %i.th, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i64 noundef %i.tv, ptr noundef nonnull align 4 dereferenceable(8) %53)
          to label %.noexc483 unwind label %bb.cz

.noexc483:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit473
  %i.tw = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i480 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i.i.i.i.i480, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481: ; preds = %.noexc483
  %i.tx = load atomic i32, ptr %i.tw monotonic, align 4
  %i.ty = icmp sgt i32 %i.tx, 1
  br i1 %i.ty, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482, label %_ZN5QListI6QPointElsEOS0_.exit485

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481, %.noexc483
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit485 unwind label %bb.cz

_ZN5QListI6QPointElsEOS0_.exit485:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #51
  %i.tz = load <2 x double>, ptr %2, align 8
  %i.ua = load <2 x double>, ptr %i.pg, align 8
  %i.ub = fadd <2 x double> %i.tz, %i.ua          ; 2 uses
  %i.uc = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ub)
  %i.ud = fadd <2 x double> %i.ub, %i.uc
  %i.ue = fptosi <2 x double> %i.ud to <2 x i32>
  store <2 x i32> %i.ue, ptr %54, align 8
  %i.uf = load i64, ptr %i.th, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i64 noundef %i.uf, ptr noundef nonnull align 4 dereferenceable(8) %54)
          to label %.noexc495 unwind label %bb.da

.noexc495:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit485
  %i.ug = load ptr, ptr %51, align 16             ; 4 uses
  %.not.i.i.i.i.i.i.i492 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i.i.i.i.i492, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493: ; preds = %.noexc495
  %i.uh = load atomic i32, ptr %i.ug monotonic, align 4
  %i.ui = icmp sgt i32 %i.uh, 1
  br i1 %i.ui, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494, label %_ZN5QListI6QPointElsEOS0_.exit497.thread

_ZN5QListI6QPointElsEOS0_.exit497.thread:         ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493
  store ptr %i.ug, ptr %50, align 16
  %i.uj = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.uk = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ul = load ptr, ptr %i.uk, align 8
  store ptr %i.ul, ptr %i.uj, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.un = load i64, ptr %i.th, align 16
  store i64 %i.un, ptr %i.um, align 16
  br label %bb.cd

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493, %.noexc495
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit497 unwind label %bb.da

_ZN5QListI6QPointElsEOS0_.exit497:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494
  %i.uo = load <2 x ptr>, ptr %51, align 16
  %.pre713 = load ptr, ptr %51, align 16          ; 2 uses
  store <2 x ptr> %i.uo, ptr %50, align 16
  %i.up = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.uq = load i64, ptr %i.th, align 16
  store i64 %i.uq, ptr %i.up, align 16
  %.not.i.i.i.i498 = icmp eq ptr %.pre713, null
  br i1 %.not.i.i.i.i498, label %_ZN8QPolygonC2ERK5QListI6QPointE.exit499, label %bb.cd

bb.cd:                                            ; preds = %_ZN5QListI6QPointElsEOS0_.exit497.thread, %_ZN5QListI6QPointElsEOS0_.exit497
  %i.ur = phi ptr [ %i.ug, %_ZN5QListI6QPointElsEOS0_.exit497.thread ], [ %.pre713, %_ZN5QListI6QPointElsEOS0_.exit497 ]
  %i.us = atomicrmw add ptr %i.ur, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8QPolygonC2ERK5QListI6QPointE.exit499

_ZN8QPolygonC2ERK5QListI6QPointE.exit499:         ; preds = %_ZN5QListI6QPointElsEOS0_.exit497, %bb.cd
  invoke void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %49, ptr noundef nonnull align 8 dereferenceable(24) %50, i32 noundef 0)
          to label %bb.ce unwind label %bb.db

bb.ce:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit499
  invoke void @_ZN8QPainter13setClipRegionERK7QRegionN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 1)
          to label %bb.cf unwind label %bb.dc

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %49) #51
  %i.ut = load ptr, ptr %50, align 16             ; 2 uses
  %.not.i.i.i500 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i.i500, label %_ZN5QListI6QPointED2Ev.exit503, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501: ; preds = %bb.cf
  %i.uu = atomicrmw sub ptr %i.ut, i32 1 acq_rel, align 4
  %.not.i.i502 = icmp eq i32 %i.uu, 1
  br i1 %.not.i.i502, label %bb.cg, label %_ZN5QListI6QPointED2Ev.exit503

bb.cg:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501
  %i.uv = load ptr, ptr %50, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.uv, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit503

_ZN5QListI6QPointED2Ev.exit503:                   ; preds = %bb.cf, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #51
  %i.uw = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i504 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i.i504, label %_ZN5QListI6QPointED2Ev.exit507, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505: ; preds = %_ZN5QListI6QPointED2Ev.exit503
  %i.ux = atomicrmw sub ptr %i.uw, i32 1 acq_rel, align 4
  %.not.i.i506 = icmp eq i32 %i.ux, 1
  br i1 %.not.i.i506, label %bb.ch, label %_ZN5QListI6QPointED2Ev.exit507

bb.ch:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505
  %i.uy = load ptr, ptr %51, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.uy, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit507

_ZN5QListI6QPointED2Ev.exit507:                   ; preds = %_ZN5QListI6QPointED2Ev.exit503, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #51
  %i.uz = load <2 x double>, ptr %i.pg, align 8
  %i.va = fmul <2 x double> %i.uz, <double 2.500000e-01, double 5.000000e-01> ; 2 uses
  %74 = load <2 x double>, ptr %2, align 8
  %i.vb = load double, ptr %i.oq, align 8
  %i.vc = extractelement <2 x double> %i.va, i64 1
  %i.vd = fadd double %i.vc, %i.vb                ; 4 uses
  %i.ve = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vf = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.va, <2 x i32> <i32 0, i32 2>
  %i.vg = fadd <2 x double> %i.ve, %i.vf          ; 4 uses
  %i.vh = extractelement <2 x double> %i.vg, i64 0
  store double %i.vh, ptr %55, align 8, !alias.scope !1283
  %.sroa.46.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %55, i64 8
  store double %i.vd, ptr %.sroa.46.0..sroa_idx.i510, align 8, !alias.scope !1283
  %i.vi = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.vj = extractelement <2 x double> %i.vg, i64 1
  store double %i.vj, ptr %i.vi, align 8, !alias.scope !1283
  %.sroa.4.0..sroa_idx.i511 = getelementptr inbounds nuw i8, ptr %55, i64 24
  store double %i.vd, ptr %.sroa.4.0..sroa_idx.i511, align 8, !alias.scope !1283
  %i.vk = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit507
  %i.vm = load i32, ptr %i.ok, align 4
  %i.vn = and i32 %i.vm, 1
  %.not.i512 = icmp eq i32 %i.vn, 0
  br i1 %.not.i512, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZN5QListI6QPointED2Ev.exit507
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit521

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.vo = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.vg)
  %i.vp = call double @llvm.copysign.f64(double 5.000000e-01, double %i.vd)
  %i.vq = fadd double %i.vd, %i.vp
  %i.vr = fptosi double %i.vq to i32
  %.sroa.2.0.insert.ext.i.i.i513 = zext i32 %i.vr to i64
  %.sroa.2.0.insert.shift.i.i.i514 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i513, 32
  %i.vs = fadd <2 x double> %i.vg, %i.vo
  %i.vt = fptosi <2 x double> %i.vs to <2 x i32>
  %i.vu = zext <2 x i32> %i.vt to <2 x i64>
  %i.vv = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i514, i64 0
  %i.vw = shufflevector <2 x i64> %i.vv, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.vx = or disjoint <2 x i64> %i.vw, %i.vu
  store <2 x i64> %i.vx, ptr %6, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit521

_ZN10QCPPainter8drawLineERK6QLineF.exit521:       ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #51
  %i.vy = load <2 x double>, ptr %i.pg, align 8   ; 2 uses
  %i.vz = fmul <2 x double> %i.vy, <double 7.500000e-01, double 5.000000e-01>
  %i.wa = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.wb = fadd <2 x double> %i.vz, %i.wa          ; 3 uses
  %foldExtExtBinop752 = fadd <2 x double> %i.vy, %i.wa
  %i.wc = extractelement <2 x double> %foldExtExtBinop752, i64 0 ; 3 uses
  store <2 x double> %i.wb, ptr %56, align 16, !alias.scope !1286
  %i.wd = getelementptr inbounds nuw i8, ptr %56, i64 16
  store double %i.wc, ptr %i.wd, align 16, !alias.scope !1286
  %.sroa.4.0..sroa_idx.i525 = getelementptr inbounds nuw i8, ptr %56, i64 24
  %i.we = extractelement <2 x double> %i.wb, i64 1 ; 3 uses
  store double %i.we, ptr %.sroa.4.0..sroa_idx.i525, align 8, !alias.scope !1286
  %i.wf = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.wg = trunc nuw i8 %i.wf to i1
  br i1 %i.wg, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit521
  %i.wh = load i32, ptr %i.ok, align 4
  %i.wi = and i32 %i.wh, 1
  %.not.i526 = icmp eq i32 %i.wi, 0
  br i1 %.not.i526, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZN10QCPPainter8drawLineERK6QLineF.exit521
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %56, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit535

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.wj = extractelement <2 x double> %i.wb, i64 0 ; 2 uses
  %i.wk = call double @llvm.copysign.f64(double 5.000000e-01, double %i.wj)
  %i.wl = fadd double %i.wj, %i.wk
  %i.wm = fptosi double %i.wl to i32
  %i.wn = call double @llvm.copysign.f64(double 5.000000e-01, double %i.we)
  %i.wo = fadd double %i.we, %i.wn
  %i.wp = fptosi double %i.wo to i32
  %.sroa.2.0.insert.ext.i.i.i527 = zext i32 %i.wp to i64
  %.sroa.2.0.insert.shift.i.i.i528 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i527, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i529 = zext i32 %i.wm to i64
  %.sroa.0.0.insert.insert.i.i.i530 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i528, %.sroa.0.0.insert.ext.i.i.i529
  %i.wq = call double @llvm.copysign.f64(double 5.000000e-01, double %i.wc)
  %i.wr = fadd double %i.wc, %i.wq
  %i.ws = fptosi double %i.wr to i32
  %.sroa.0.0.insert.ext.i3.i.i533 = zext i32 %i.ws to i64
  %.sroa.0.0.insert.insert.i4.i.i534 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i528, %.sroa.0.0.insert.ext.i3.i.i533
  store i64 %.sroa.0.0.insert.insert.i.i.i530, ptr %5, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i534, ptr %i.wt, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit535

_ZN10QCPPainter8drawLineERK6QLineF.exit535:       ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #51
  %i.wu = load <2 x double>, ptr %i.pg, align 8   ; 2 uses
  %i.wv = fmul <2 x double> %i.wu, splat (double 2.500000e-01)
  %i.ww = load <2 x double>, ptr %2, align 8
  %i.wx = fadd <2 x double> %i.wv, %i.ww
  store <2 x double> %i.wx, ptr %57, align 16, !alias.scope !1289
  %i.wy = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.wz = fmul <2 x double> %i.wu, splat (double 5.000000e-01)
  store <2 x double> %i.wz, ptr %i.wy, align 16, !alias.scope !1289
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %57, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #51
  br label %bb.dq

bb.co:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392, %_ZN10QCPPainter6setPenERK4QPen.exit383
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cp:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404, %_ZN5QListI6QPointElsEOS0_.exit395
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cq:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416, %_ZN5QListI6QPointElsEOS0_.exit407
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit541

bb.cr:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit421
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.bs
  %i.xe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %40) #51
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn = phi { ptr, i32 } [ %i.xe, %bb.cs ], [ %i.xd, %bb.cr ] ; 3 uses
  %i.xf = load ptr, ptr %41, align 16             ; 2 uses
  %.not.i.i.i538 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i538, label %_ZN5QListI6QPointED2Ev.exit541, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539: ; preds = %bb.ct
  %i.xg = atomicrmw sub ptr %i.xf, i32 1 acq_rel, align 4
  %.not.i.i540 = icmp eq i32 %i.xg, 1
  br i1 %.not.i.i540, label %bb.cu, label %_ZN5QListI6QPointED2Ev.exit541

bb.cu:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539
  %i.xh = load ptr, ptr %41, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xh, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit541

_ZN5QListI6QPointED2Ev.exit541:                   ; preds = %bb.cu, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539, %bb.ct, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %i.xc, %bb.cq ], [ %.pn, %bb.ct ], [ %.pn, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539 ], [ %.pn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #51
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit541, %bb.cp
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN5QListI6QPointED2Ev.exit541 ], [ %i.xb, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #51
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.co
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.cv ], [ %i.xa, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #51
  %i.xi = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i542 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i.i542, label %_ZN5QListI6QPointED2Ev.exit545, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543: ; preds = %bb.cw
  %i.xj = atomicrmw sub ptr %i.xi, i32 1 acq_rel, align 4
  %.not.i.i544 = icmp eq i32 %i.xj, 1
  br i1 %.not.i.i544, label %bb.cx, label %_ZN5QListI6QPointED2Ev.exit545

bb.cx:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543
  %i.xk = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xk, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit545

_ZN5QListI6QPointED2Ev.exit545:                   ; preds = %bb.cw, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #51
  br label %bb.dr

bb.cy:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470, %_ZN10QCPPainter6setPenERK4QPen.exit461
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.cz:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482, %_ZN5QListI6QPointElsEOS0_.exit473
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.da:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494, %_ZN5QListI6QPointElsEOS0_.exit485
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit549

bb.db:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit499
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.ce
  %i.xp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %49) #51
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn155 = phi { ptr, i32 } [ %i.xp, %bb.dc ], [ %i.xo, %bb.db ] ; 3 uses
  %i.xq = load ptr, ptr %50, align 16             ; 2 uses
  %.not.i.i.i546 = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i546, label %_ZN5QListI6QPointED2Ev.exit549, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547: ; preds = %bb.dd
  %i.xr = atomicrmw sub ptr %i.xq, i32 1 acq_rel, align 4
  %.not.i.i548 = icmp eq i32 %i.xr, 1
  br i1 %.not.i.i548, label %bb.de, label %_ZN5QListI6QPointED2Ev.exit549

bb.de:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547
  %i.xs = load ptr, ptr %50, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xs, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit549

_ZN5QListI6QPointED2Ev.exit549:                   ; preds = %bb.de, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547, %bb.dd, %bb.da
  %.pn155.pn = phi { ptr, i32 } [ %i.xn, %bb.da ], [ %.pn155, %bb.dd ], [ %.pn155, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547 ], [ %.pn155, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #51
  br label %bb.df

bb.df:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit549, %bb.cz
  %.pn155.pn.pn = phi { ptr, i32 } [ %.pn155.pn, %_ZN5QListI6QPointED2Ev.exit549 ], [ %i.xm, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #51
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.cy
  %.pn155.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn, %bb.df ], [ %i.xl, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #51
  %i.xt = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i550 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i.i550, label %_ZN5QListI6QPointED2Ev.exit553, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551: ; preds = %bb.dg
  %i.xu = atomicrmw sub ptr %i.xt, i32 1 acq_rel, align 4
  %.not.i.i552 = icmp eq i32 %i.xu, 1
  br i1 %.not.i.i552, label %bb.dh, label %_ZN5QListI6QPointED2Ev.exit553

bb.dh:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551
  %i.xv = load ptr, ptr %51, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xv, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListI6QPointED2Ev.exit553

_ZN5QListI6QPointED2Ev.exit553:                   ; preds = %bb.dg, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #51
  br label %bb.dr

bb.di:                                            ; preds = %bb.bo
  %i.xw = getelementptr i8, ptr %0, i64 104
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.xw)
  %i.xx = getelementptr i8, ptr %0, i64 96
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.xx)
  %i.xy = load i32, ptr %i.ok, align 4
  %i.xz = and i32 %i.xy, 4
  %.not.i554 = icmp eq i32 %i.xz, 0
  br i1 %.not.i554, label %_ZN10QCPPainter6setPenERK4QPen.exit555, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit555

_ZN10QCPPainter6setPenERK4QPen.exit555:           ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #51
  %i.ya = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.yb = load <2 x double>, ptr %i.ya, align 8
  %i.yc = fmul <2 x double> %i.yb, <double 2.500000e-01, double 5.000000e-01> ; 2 uses
  %75 = load <2 x double>, ptr %2, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ye = load double, ptr %i.yd, align 8
  %i.yf = extractelement <2 x double> %i.yc, i64 1
  %i.yg = fadd double %i.yf, %i.ye                ; 4 uses
  %i.yh = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yi = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.yc, <2 x i32> <i32 0, i32 2>
  %i.yj = fadd <2 x double> %i.yh, %i.yi          ; 4 uses
  %i.yk = extractelement <2 x double> %i.yj, i64 0
  store double %i.yk, ptr %58, align 8, !alias.scope !1292
  %.sroa.46.0..sroa_idx.i558 = getelementptr inbounds nuw i8, ptr %58, i64 8
  store double %i.yg, ptr %.sroa.46.0..sroa_idx.i558, align 8, !alias.scope !1292
  %i.yl = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.ym = extractelement <2 x double> %i.yj, i64 1
  store double %i.ym, ptr %i.yl, align 8, !alias.scope !1292
  %.sroa.4.0..sroa_idx.i559 = getelementptr inbounds nuw i8, ptr %58, i64 24
  store double %i.yg, ptr %.sroa.4.0..sroa_idx.i559, align 8, !alias.scope !1292
  %i.yn = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.yo = trunc nuw i8 %i.yn to i1
  br i1 %i.yo, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit555
  %i.yp = load i32, ptr %i.ok, align 4
  %i.yq = and i32 %i.yp, 1
  %.not.i560 = icmp eq i32 %i.yq, 0
  br i1 %.not.i560, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZN10QCPPainter6setPenERK4QPen.exit555
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %58, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit569

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.yr = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.yj)
  %i.ys = call double @llvm.copysign.f64(double 5.000000e-01, double %i.yg)
  %i.yt = fadd double %i.yg, %i.ys
  %i.yu = fptosi double %i.yt to i32
  %.sroa.2.0.insert.ext.i.i.i561 = zext i32 %i.yu to i64
  %.sroa.2.0.insert.shift.i.i.i562 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i561, 32
  %i.yv = fadd <2 x double> %i.yj, %i.yr
  %i.yw = fptosi <2 x double> %i.yv to <2 x i32>
  %i.yx = zext <2 x i32> %i.yw to <2 x i64>
  %i.yy = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i562, i64 0
  %i.yz = shufflevector <2 x i64> %i.yy, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.za = or disjoint <2 x i64> %i.yz, %i.yx
  store <2 x i64> %i.za, ptr %4, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit569

_ZN10QCPPainter8drawLineERK6QLineF.exit569:       ; preds = %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #51
  %i.zb = load <2 x double>, ptr %i.ya, align 8   ; 2 uses
  %i.zc = fmul <2 x double> %i.zb, <double 7.500000e-01, double 5.000000e-01>
  %i.zd = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.ze = fadd <2 x double> %i.zc, %i.zd          ; 3 uses
  %foldExtExtBinop754 = fadd <2 x double> %i.zb, %i.zd
  %i.zf = extractelement <2 x double> %foldExtExtBinop754, i64 0 ; 3 uses
  store <2 x double> %i.ze, ptr %59, align 16, !alias.scope !1295
  %i.zg = getelementptr inbounds nuw i8, ptr %59, i64 16
  store double %i.zf, ptr %i.zg, align 16, !alias.scope !1295
  %.sroa.4.0..sroa_idx.i573 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.zh = extractelement <2 x double> %i.ze, i64 1 ; 3 uses
  store double %i.zh, ptr %.sroa.4.0..sroa_idx.i573, align 8, !alias.scope !1295
  %i.zi = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.zj = trunc nuw i8 %i.zi to i1
  br i1 %i.zj, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit569
  %i.zk = load i32, ptr %i.ok, align 4
  %i.zl = and i32 %i.zk, 1
  %.not.i574 = icmp eq i32 %i.zl, 0
  br i1 %.not.i574, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn, %_ZN10QCPPainter8drawLineERK6QLineF.exit569
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %59, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit583

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.zm = extractelement <2 x double> %i.ze, i64 0 ; 2 uses
  %i.zn = call double @llvm.copysign.f64(double 5.000000e-01, double %i.zm)
  %i.zo = fadd double %i.zm, %i.zn
  %i.zp = fptosi double %i.zo to i32
  %i.zq = call double @llvm.copysign.f64(double 5.000000e-01, double %i.zh)
  %i.zr = fadd double %i.zh, %i.zq
  %i.zs = fptosi double %i.zr to i32
  %.sroa.2.0.insert.ext.i.i.i575 = zext i32 %i.zs to i64
  %.sroa.2.0.insert.shift.i.i.i576 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i575, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i577 = zext i32 %i.zp to i64
  %.sroa.0.0.insert.insert.i.i.i578 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i576, %.sroa.0.0.insert.ext.i.i.i577
  %i.zt = call double @llvm.copysign.f64(double 5.000000e-01, double %i.zf)
  %i.zu = fadd double %i.zf, %i.zt
  %i.zv = fptosi double %i.zu to i32
  %.sroa.0.0.insert.ext.i3.i.i581 = zext i32 %i.zv to i64
  %.sroa.0.0.insert.insert.i4.i.i582 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i576, %.sroa.0.0.insert.ext.i3.i.i581
  store i64 %.sroa.0.0.insert.insert.i.i.i578, ptr %3, align 8
  %i.zw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i582, ptr %i.zw, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit583

_ZN10QCPPainter8drawLineERK6QLineF.exit583:       ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #51
  %i.zx = load <2 x double>, ptr %i.ya, align 8   ; 2 uses
  %i.zy = fmul <2 x double> %i.zx, splat (double 2.500000e-01)
  %i.zz = load <2 x double>, ptr %2, align 8
  %i.aaa = fadd <2 x double> %i.zy, %i.zz
  store <2 x double> %i.aaa, ptr %60, align 16, !alias.scope !1298
  %i.aab = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.aac = fmul <2 x double> %i.zx, splat (double 5.000000e-01)
  store <2 x double> %i.aac, ptr %i.aab, align 16, !alias.scope !1298
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %60, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #51
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN10QCPPainter15setAntialiasingEb.exit, %_ZN10QCPPainter8drawLineERK6QLineF.exit583, %_ZN10QCPPainter8drawLineERK6QLineF.exit535, %_ZN10QCPPainter8drawLineERK6QLineF.exit321, %_ZN10QCPPainter8drawLineERK6QLineF.exit381
  ret void

bb.dr:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit553, %_ZN5QListI6QPointED2Ev.exit545, %_ZN5QListI6QPointED2Ev.exit337, %_ZN5QListI6QPointED2Ev.exit329
  %.pn165.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn165.pn.pn.pn, %_ZN5QListI6QPointED2Ev.exit337 ], [ %.pn160.pn.pn.pn, %_ZN5QListI6QPointED2Ev.exit329 ], [ %.pn155.pn.pn.pn, %_ZN5QListI6QPointED2Ev.exit553 ], [ %.pn.pn.pn.pn, %_ZN5QListI6QPointED2Ev.exit545 ]
  resume { ptr, i32 } %.pn165.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef double @_ZNK12QCPFinancial13getPixelWidthEdd(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(264) %0, double noundef %1, double noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QDebug, align 8              ; 10 uses
  %8 = alloca %class.QMessageLogger, align 8      ; 7 uses
  %9 = alloca %class.QDebug, align 8              ; 10 uses
  %10 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit

_ZNK8QPointerI7QCPAxisE4dataEv.exit:              ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.k = getelementptr i8, ptr %0, i64 216
  %i.l = load double, ptr %i.k, align 8
  %i.m = fmul double %i.l, 5.000000e-01           ; 2 uses
  %i.n = load atomic i32, ptr %i.f monotonic, align 4
  %i.o = icmp eq i32 %i.n, 0
  %spec.select = select i1 %i.o, ptr null, ptr %i.j ; 2 uses
  %i.p = getelementptr i8, ptr %spec.select, i64 320
  %i.q = load i8, ptr %i.p, align 8, !range !6, !noundef !7
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr i8, ptr %spec.select, i64 76
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp ne i32 %i.t, 2
  %.not.i = xor i1 %i.u, %i.r
  %i.v = fneg double %i.m
  %i.w = select i1 %.not.i, double %i.m, double %i.v
  br label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.y, i64 4       ; 6 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11:           ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %0, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8            ; 6 uses
  %.not7 = icmp eq ptr %i.ae, null
  br i1 %.not7, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit12

_ZNK8QPointerI7QCPAxisE4dataEv.exit12:            ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11
  %i.af = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ag = icmp eq i32 %i.af, 0
end_hunk_0
