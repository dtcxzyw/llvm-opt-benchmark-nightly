Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK12QCPFinancial14drawLegendIconEP10QCPPainterRK6QRectF:bb.a
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN5QListI6QPointElsEOS0_.exit

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %21, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit unwind label %bb.aj

_ZN5QListI6QPointElsEOS0_.exit:                   ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #49
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
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #49
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
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %19) #49
  %i.bm = load ptr, ptr %20, align 16             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZN5QListI6QPointED2Ev.exit, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i: ; preds = %bb.i
  %i.bn = atomicrmw sub ptr %i.bm, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bn, 1
  br i1 %.not.i.i, label %bb.j, label %_ZN5QListI6QPointED2Ev.exit

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i
  %i.bo = load ptr, ptr %20, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bo, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit

_ZN5QListI6QPointED2Ev.exit:                      ; preds = %bb.i, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #49
  %i.bp = load ptr, ptr %21, align 16             ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i197, label %_ZN5QListI6QPointED2Ev.exit200, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i198

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i198: ; preds = %_ZN5QListI6QPointED2Ev.exit
  %i.bq = atomicrmw sub ptr %i.bp, i32 1 acq_rel, align 4
  %.not.i.i199 = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i199, label %bb.k, label %_ZN5QListI6QPointED2Ev.exit200

bb.k:                                             ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i198
  %i.br = load ptr, ptr %21, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit200

_ZN5QListI6QPointED2Ev.exit200:                   ; preds = %_ZN5QListI6QPointED2Ev.exit, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i198, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #49
  %i.bs = load double, ptr %i.s, align 8
  %i.bt = fmul double %i.bs, 5.000000e-01
  %i.bu = load double, ptr %i.ag, align 8
  %i.bv = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.bw = load double, ptr %i.q, align 8
  %i.bx = fadd double %i.bt, %i.bw                ; 4 uses
  %i.by = insertelement <2 x double> %i.bv, double %i.bu, i64 1
  %i.bz = shufflevector <2 x double> %i.bv, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ca = fadd <2 x double> %i.by, %i.bz          ; 4 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0
  store double %i.cb, ptr %25, align 8, !alias.scope !1361
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  store double %i.bx, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !1361
  %i.cc = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.cd = extractelement <2 x double> %i.ca, i64 1
  store double %i.cd, ptr %i.cc, align 8, !alias.scope !1361
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 24
  store double %i.bx, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1361
  %i.ce = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5QListI6QPointED2Ev.exit200
  %i.cg = load i32, ptr %i.k, align 4
  %i.ch = and i32 %i.cg, 1
  %.not.i203 = icmp eq i32 %i.ch, 0
  br i1 %.not.i203, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5QListI6QPointED2Ev.exit200
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #49
  %i.ci = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ca)
  %i.cj = call double @llvm.copysign.f64(double 5.000000e-01, double %i.bx)
  %i.ck = fadd double %i.bx, %i.cj
  %i.cl = fptosi double %i.ck to i32
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.cl to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %i.cm = fadd <2 x double> %i.ca, %i.ci
  %i.cn = fptosi <2 x double> %i.cm to <2 x i32>
  %i.co = zext <2 x i32> %i.cn to <2 x i64>
  %i.cp = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i, i64 0
  %i.cq = shufflevector <2 x i64> %i.cp, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cr = or disjoint <2 x i64> %i.cq, %i.co
  store <2 x i64> %i.cr, ptr %17, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %17, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

_ZN10QCPPainter8drawLineERK6QLineF.exit:          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #49
  %i.cs = load double, ptr %i.ag, align 8
  %i.ct = fmul double %i.cs, 2.000000e-01
  %i.cu = load double, ptr %i.s, align 8
  %i.cv = load double, ptr %2, align 8
  %61 = load <1 x double>, ptr %i.q, align 8
  %i.cw = fadd double %i.ct, %i.cv                ; 4 uses
  %i.cx = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cy, <double 3.000000e-01, double 5.000000e-01>
  %i.da = shufflevector <1 x double> %61, <1 x double> poison, <2 x i32> zeroinitializer
  %i.db = fadd <2 x double> %i.cz, %i.da          ; 4 uses
  store double %i.cw, ptr %26, align 8, !alias.scope !1362
  %.sroa.46.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.dc = extractelement <2 x double> %i.db, i64 0
  store double %i.dc, ptr %.sroa.46.0..sroa_idx.i206, align 8, !alias.scope !1362
  %i.dd = getelementptr inbounds nuw i8, ptr %26, i64 16
  store double %i.cw, ptr %i.dd, align 8, !alias.scope !1362
  %.sroa.4.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.de = extractelement <2 x double> %i.db, i64 1
  store double %i.de, ptr %.sroa.4.0..sroa_idx.i207, align 8, !alias.scope !1362
  %i.df = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit
  %i.dh = load i32, ptr %i.k, align 4
  %i.di = and i32 %i.dh, 1
  %.not.i208 = icmp eq i32 %i.di, 0
  br i1 %.not.i208, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN10QCPPainter8drawLineERK6QLineF.exit
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit217

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #49
  %i.dj = call double @llvm.copysign.f64(double 5.000000e-01, double %i.cw)
  %i.dk = fadd double %i.cw, %i.dj
  %i.dl = fptosi double %i.dk to i32
  %i.dm = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.db)
  %.sroa.0.0.insert.ext.i.i.i211 = zext i32 %i.dl to i64
  %i.dn = fadd <2 x double> %i.db, %i.dm
  %i.do = fptosi <2 x double> %i.dn to <2 x i32>
  %i.dp = zext <2 x i32> %i.do to <2 x i64>
  %i.dq = shl nuw <2 x i64> %i.dp, splat (i64 32)
  %i.dr = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i211, i64 0
  %i.ds = shufflevector <2 x i64> %i.dr, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dt = or disjoint <2 x i64> %i.dq, %i.ds
  store <2 x i64> %i.dt, ptr %16, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %16, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit217

_ZN10QCPPainter8drawLineERK6QLineF.exit217:       ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #49
  %i.du = load double, ptr %i.ag, align 8
  %i.dv = fmul double %i.du, 8.000000e-01
  %i.dw = load double, ptr %i.s, align 8
  %i.dx = load double, ptr %2, align 8
  %62 = load <1 x double>, ptr %i.q, align 8
  %i.dy = fadd double %i.dv, %i.dx                ; 4 uses
  %i.dz = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.ea, <double 5.000000e-01, double f0x3FE6666666666666>
  %i.ec = shufflevector <1 x double> %62, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fadd <2 x double> %i.eb, %i.ec          ; 4 uses
  store double %i.dy, ptr %27, align 8, !alias.scope !1363
  %.sroa.46.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ee = extractelement <2 x double> %i.ed, i64 0
  store double %i.ee, ptr %.sroa.46.0..sroa_idx.i220, align 8, !alias.scope !1363
  %i.ef = getelementptr inbounds nuw i8, ptr %27, i64 16
  store double %i.dy, ptr %i.ef, align 8, !alias.scope !1363
  %.sroa.4.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.eg = extractelement <2 x double> %i.ed, i64 1
  store double %i.eg, ptr %.sroa.4.0..sroa_idx.i221, align 8, !alias.scope !1363
  %i.eh = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit217
  %i.ej = load i32, ptr %i.k, align 4
  %i.ek = and i32 %i.ej, 1
  %.not.i222 = icmp eq i32 %i.ek, 0
  br i1 %.not.i222, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN10QCPPainter8drawLineERK6QLineF.exit217
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit231

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  %i.el = call double @llvm.copysign.f64(double 5.000000e-01, double %i.dy)
  %i.em = fadd double %i.dy, %i.el
  %i.en = fptosi double %i.em to i32
  %i.eo = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ed)
  %.sroa.0.0.insert.ext.i.i.i225 = zext i32 %i.en to i64
  %i.ep = fadd <2 x double> %i.ed, %i.eo
  %i.eq = fptosi <2 x double> %i.ep to <2 x i32>
  %i.er = zext <2 x i32> %i.eq to <2 x i64>
  %i.es = shl nuw <2 x i64> %i.er, splat (i64 32)
  %i.et = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i225, i64 0
  %i.eu = shufflevector <2 x i64> %i.et, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ev = or disjoint <2 x i64> %i.es, %i.eu
  store <2 x i64> %i.ev, ptr %15, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit231

_ZN10QCPPainter8drawLineERK6QLineF.exit231:       ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #49
  %i.ew = getelementptr i8, ptr %0, i64 240
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.ew)
  %i.ex = getelementptr i8, ptr %0, i64 256
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.ex)
  %i.ey = load i32, ptr %i.k, align 4
  %i.ez = and i32 %i.ey, 4
  %.not.i232 = icmp eq i32 %i.ez, 0
  br i1 %.not.i232, label %_ZN10QCPPainter6setPenERK4QPen.exit233, label %bb.u

bb.u:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit231
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit233

_ZN10QCPPainter6setPenERK4QPen.exit233:           ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit231, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #49
  %i.fa = load double, ptr %2, align 8            ; 2 uses
  %i.fb = load double, ptr %i.q, align 8
  %i.fc = load double, ptr %i.s, align 8
  %i.fd = fadd double %i.fb, %i.fc                ; 2 uses
  %i.fe = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fa)
  %i.ff = fadd double %i.fa, %i.fe
  %i.fg = fptosi double %i.ff to i32
  %i.fh = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fd)
  %i.fi = fadd double %i.fd, %i.fh
  %i.fj = fptosi double %i.fi to i32
  %.sroa.2.0.insert.ext.i236 = zext i32 %i.fj to i64
  %.sroa.2.0.insert.shift.i237 = shl nuw i64 %.sroa.2.0.insert.ext.i236, 32
  %.sroa.0.0.insert.ext.i238 = zext i32 %i.fg to i64
  %.sroa.0.0.insert.insert.i239 = or disjoint i64 %.sroa.2.0.insert.shift.i237, %.sroa.0.0.insert.ext.i238
  store i64 %.sroa.0.0.insert.insert.i239, ptr %31, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %31)
          to label %.noexc243 unwind label %bb.at

.noexc243:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit233
  %i.fl = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i240 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i.i.i240, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i241

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i241: ; preds = %.noexc243
  %i.fm = load atomic i32, ptr %i.fl monotonic, align 4
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242, label %_ZN5QListI6QPointElsEOS0_.exit245

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i241, %.noexc243
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit245 unwind label %bb.at

_ZN5QListI6QPointElsEOS0_.exit245:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i241, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #49
  %i.fo = load double, ptr %2, align 8
  %i.fp = load double, ptr %i.ag, align 8
  %i.fq = fadd double %i.fo, %i.fp                ; 2 uses
  %i.fr = load double, ptr %i.q, align 8          ; 2 uses
  %i.fs = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fq)
  %i.ft = fadd double %i.fq, %i.fs
  %i.fu = fptosi double %i.ft to i32
  %i.fv = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fr)
  %i.fw = fadd double %i.fr, %i.fv
  %i.fx = fptosi double %i.fw to i32
  %.sroa.2.0.insert.ext.i248 = zext i32 %i.fx to i64
  %.sroa.2.0.insert.shift.i249 = shl nuw i64 %.sroa.2.0.insert.ext.i248, 32
  %.sroa.0.0.insert.ext.i250 = zext i32 %i.fu to i64
  %.sroa.0.0.insert.insert.i251 = or disjoint i64 %.sroa.2.0.insert.shift.i249, %.sroa.0.0.insert.ext.i250
  store i64 %.sroa.0.0.insert.insert.i251, ptr %32, align 8
  %i.fy = load i64, ptr %i.fk, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i64 noundef %i.fy, ptr noundef nonnull align 4 dereferenceable(8) %32)
          to label %.noexc255 unwind label %bb.au

.noexc255:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit245
  %i.fz = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i252 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i252, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i253

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i253: ; preds = %.noexc255
  %i.ga = load atomic i32, ptr %i.fz monotonic, align 4
  %i.gb = icmp sgt i32 %i.ga, 1
  br i1 %i.gb, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254, label %_ZN5QListI6QPointElsEOS0_.exit257

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i253, %.noexc255
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit257 unwind label %bb.au

_ZN5QListI6QPointElsEOS0_.exit257:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i253, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #49
  %i.gc = load <2 x double>, ptr %2, align 8
  %i.gd = load <2 x double>, ptr %i.ag, align 8
  %i.ge = fadd <2 x double> %i.gc, %i.gd          ; 2 uses
  %i.gf = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ge)
  %i.gg = fadd <2 x double> %i.ge, %i.gf
  %i.gh = fptosi <2 x double> %i.gg to <2 x i32>
  store <2 x i32> %i.gh, ptr %33, align 8
  %i.gi = load i64, ptr %i.fk, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i64 noundef %i.gi, ptr noundef nonnull align 4 dereferenceable(8) %33)
          to label %.noexc267 unwind label %bb.av

.noexc267:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit257
  %i.gj = load ptr, ptr %30, align 16             ; 4 uses
  %.not.i.i.i.i.i.i.i264 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i.i.i264, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i265

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i265: ; preds = %.noexc267
  %i.gk = load atomic i32, ptr %i.gj monotonic, align 4
  %i.gl = icmp sgt i32 %i.gk, 1
  br i1 %i.gl, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266, label %_ZN5QListI6QPointElsEOS0_.exit269.thread

_ZN5QListI6QPointElsEOS0_.exit269.thread:         ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i265
  store ptr %i.gj, ptr %29, align 16
  %i.gm = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  store ptr %i.go, ptr %i.gm, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.gq = load i64, ptr %i.fk, align 16
  store i64 %i.gq, ptr %i.gp, align 16
  br label %bb.v

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i265, %.noexc267
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %30, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit269 unwind label %bb.av

_ZN5QListI6QPointElsEOS0_.exit269:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266
  %i.gr = load <2 x ptr>, ptr %30, align 16
  %.pre715 = load ptr, ptr %30, align 16          ; 2 uses
  store <2 x ptr> %i.gr, ptr %29, align 16
  %i.gs = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.gt = load i64, ptr %i.fk, align 16
  store i64 %i.gt, ptr %i.gs, align 16
  %.not.i.i.i.i270 = icmp eq ptr %.pre715, null
  br i1 %.not.i.i.i.i270, label %_ZN8QPolygonC2ERK5QListI6QPointE.exit271, label %bb.v

bb.v:                                             ; preds = %_ZN5QListI6QPointElsEOS0_.exit269.thread, %_ZN5QListI6QPointElsEOS0_.exit269
  %i.gu = phi ptr [ %i.gj, %_ZN5QListI6QPointElsEOS0_.exit269.thread ], [ %.pre715, %_ZN5QListI6QPointElsEOS0_.exit269 ]
  %i.gv = atomicrmw add ptr %i.gu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8QPolygonC2ERK5QListI6QPointE.exit271

_ZN8QPolygonC2ERK5QListI6QPointE.exit271:         ; preds = %_ZN5QListI6QPointElsEOS0_.exit269, %bb.v
  invoke void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef 0)
          to label %bb.w unwind label %bb.aw

bb.w:                                             ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit271
  invoke void @_ZN8QPainter13setClipRegionERK7QRegionN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 1)
          to label %bb.x unwind label %bb.ax

bb.x:                                             ; preds = %bb.w
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %28) #49
  %i.gw = load ptr, ptr %29, align 16             ; 2 uses
  %.not.i.i.i272 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i272, label %_ZN5QListI6QPointED2Ev.exit275, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i273

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i273: ; preds = %bb.x
  %i.gx = atomicrmw sub ptr %i.gw, i32 1 acq_rel, align 4
  %.not.i.i274 = icmp eq i32 %i.gx, 1
  br i1 %.not.i.i274, label %bb.y, label %_ZN5QListI6QPointED2Ev.exit275

bb.y:                                             ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i273
  %i.gy = load ptr, ptr %29, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gy, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit275

_ZN5QListI6QPointED2Ev.exit275:                   ; preds = %bb.x, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i273, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #49
  %i.gz = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i276 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i276, label %_ZN5QListI6QPointED2Ev.exit279, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i277

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i277: ; preds = %_ZN5QListI6QPointED2Ev.exit275
  %i.ha = atomicrmw sub ptr %i.gz, i32 1 acq_rel, align 4
  %.not.i.i278 = icmp eq i32 %i.ha, 1
  br i1 %.not.i.i278, label %bb.z, label %_ZN5QListI6QPointED2Ev.exit279

bb.z:                                             ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i277
  %i.hb = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hb, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit279

_ZN5QListI6QPointED2Ev.exit279:                   ; preds = %_ZN5QListI6QPointED2Ev.exit275, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i277, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #49
  %i.hc = load double, ptr %i.s, align 8
  %i.hd = fmul double %i.hc, 5.000000e-01
  %i.he = load double, ptr %i.ag, align 8
  %i.hf = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.hg = load double, ptr %i.q, align 8
  %i.hh = fadd double %i.hd, %i.hg                ; 4 uses
  %i.hi = insertelement <2 x double> %i.hf, double %i.he, i64 1
  %i.hj = shufflevector <2 x double> %i.hf, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.hk = fadd <2 x double> %i.hi, %i.hj          ; 4 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 0
  store double %i.hl, ptr %34, align 8, !alias.scope !1364
  %.sroa.46.0..sroa_idx.i282 = getelementptr inbounds nuw i8, ptr %34, i64 8
  store double %i.hh, ptr %.sroa.46.0..sroa_idx.i282, align 8, !alias.scope !1364
  %i.hm = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.hn = extractelement <2 x double> %i.hk, i64 1
  store double %i.hn, ptr %i.hm, align 8, !alias.scope !1364
  %.sroa.4.0..sroa_idx.i283 = getelementptr inbounds nuw i8, ptr %34, i64 24
  store double %i.hh, ptr %.sroa.4.0..sroa_idx.i283, align 8, !alias.scope !1364
  %i.ho = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit279
  %i.hq = load i32, ptr %i.k, align 4
  %i.hr = and i32 %i.hq, 1
  %.not.i284 = icmp eq i32 %i.hr, 0
  br i1 %.not.i284, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN5QListI6QPointED2Ev.exit279
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit293

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  %i.hs = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.hk)
  %i.ht = call double @llvm.copysign.f64(double 5.000000e-01, double %i.hh)
  %i.hu = fadd double %i.hh, %i.ht
  %i.hv = fptosi double %i.hu to i32
  %.sroa.2.0.insert.ext.i.i.i285 = zext i32 %i.hv to i64
  %.sroa.2.0.insert.shift.i.i.i286 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i285, 32
  %i.hw = fadd <2 x double> %i.hk, %i.hs
  %i.hx = fptosi <2 x double> %i.hw to <2 x i32>
  %i.hy = zext <2 x i32> %i.hx to <2 x i64>
  %i.hz = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i286, i64 0
  %i.ia = shufflevector <2 x i64> %i.hz, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ib = or disjoint <2 x i64> %i.ia, %i.hy
  store <2 x i64> %i.ib, ptr %14, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %14, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit293

_ZN10QCPPainter8drawLineERK6QLineF.exit293:       ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #49
  %i.ic = load double, ptr %i.ag, align 8
  %i.id = fmul double %i.ic, 2.000000e-01
  %i.ie = load double, ptr %i.s, align 8
  %i.if = load double, ptr %2, align 8
  %63 = load <1 x double>, ptr %i.q, align 8
  %i.ig = fadd double %i.id, %i.if                ; 4 uses
  %i.ih = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x double> %i.ii, <double 3.000000e-01, double 5.000000e-01>
  %i.ik = shufflevector <1 x double> %63, <1 x double> poison, <2 x i32> zeroinitializer
  %i.il = fadd <2 x double> %i.ij, %i.ik          ; 4 uses
  store double %i.ig, ptr %35, align 8, !alias.scope !1365
  %.sroa.46.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.im = extractelement <2 x double> %i.il, i64 0
  store double %i.im, ptr %.sroa.46.0..sroa_idx.i296, align 8, !alias.scope !1365
  %i.in = getelementptr inbounds nuw i8, ptr %35, i64 16
  store double %i.ig, ptr %i.in, align 8, !alias.scope !1365
  %.sroa.4.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.io = extractelement <2 x double> %i.il, i64 1
  store double %i.io, ptr %.sroa.4.0..sroa_idx.i297, align 8, !alias.scope !1365
  %i.ip = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit293
  %i.ir = load i32, ptr %i.k, align 4
  %i.is = and i32 %i.ir, 1
  %.not.i298 = icmp eq i32 %i.is, 0
  br i1 %.not.i298, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN10QCPPainter8drawLineERK6QLineF.exit293
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %35, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit307

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  %i.it = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ig)
  %i.iu = fadd double %i.ig, %i.it
  %i.iv = fptosi double %i.iu to i32
  %i.iw = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.il)
  %.sroa.0.0.insert.ext.i.i.i301 = zext i32 %i.iv to i64
  %i.ix = fadd <2 x double> %i.il, %i.iw
  %i.iy = fptosi <2 x double> %i.ix to <2 x i32>
  %i.iz = zext <2 x i32> %i.iy to <2 x i64>
  %i.ja = shl nuw <2 x i64> %i.iz, splat (i64 32)
  %i.jb = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i301, i64 0
  %i.jc = shufflevector <2 x i64> %i.jb, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.jd = or disjoint <2 x i64> %i.ja, %i.jc
  store <2 x i64> %i.jd, ptr %13, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %13, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit307

_ZN10QCPPainter8drawLineERK6QLineF.exit307:       ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #49
  %i.je = load double, ptr %i.ag, align 8
  %i.jf = fmul double %i.je, 8.000000e-01
  %i.jg = load double, ptr %i.s, align 8
  %i.jh = load double, ptr %2, align 8
  %64 = load <1 x double>, ptr %i.q, align 8
  %i.ji = fadd double %i.jf, %i.jh                ; 4 uses
  %i.jj = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x double> %i.jk, <double 5.000000e-01, double f0x3FE6666666666666>
  %i.jm = shufflevector <1 x double> %64, <1 x double> poison, <2 x i32> zeroinitializer
  %i.jn = fadd <2 x double> %i.jl, %i.jm          ; 4 uses
  store double %i.ji, ptr %36, align 8, !alias.scope !1366
  %.sroa.46.0..sroa_idx.i310 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jo = extractelement <2 x double> %i.jn, i64 0
  store double %i.jo, ptr %.sroa.46.0..sroa_idx.i310, align 8, !alias.scope !1366
  %i.jp = getelementptr inbounds nuw i8, ptr %36, i64 16
  store double %i.ji, ptr %i.jp, align 8, !alias.scope !1366
  %.sroa.4.0..sroa_idx.i311 = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.jq = extractelement <2 x double> %i.jn, i64 1
  store double %i.jq, ptr %.sroa.4.0..sroa_idx.i311, align 8, !alias.scope !1366
  %i.jr = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit307
  %i.jt = load i32, ptr %i.k, align 4
  %i.ju = and i32 %i.jt, 1
  %.not.i312 = icmp eq i32 %i.ju, 0
  br i1 %.not.i312, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN10QCPPainter8drawLineERK6QLineF.exit307
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit321

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  %i.jv = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ji)
  %i.jw = fadd double %i.ji, %i.jv
  %i.jx = fptosi double %i.jw to i32
  %i.jy = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.jn)
  %.sroa.0.0.insert.ext.i.i.i315 = zext i32 %i.jx to i64
  %i.jz = fadd <2 x double> %i.jn, %i.jy
  %i.ka = fptosi <2 x double> %i.jz to <2 x i32>
  %i.kb = zext <2 x i32> %i.ka to <2 x i64>
  %i.kc = shl nuw <2 x i64> %i.kb, splat (i64 32)
  %i.kd = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i315, i64 0
  %i.ke = shufflevector <2 x i64> %i.kd, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.kf = or disjoint <2 x i64> %i.kc, %i.ke
  store <2 x i64> %i.kf, ptr %12, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit321

_ZN10QCPPainter8drawLineERK6QLineF.exit321:       ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #49
  br label %bb.dq

bb.aj:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i, %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i181, %_ZN5QListI6QPointElsEOS0_.exit
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.al:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i193, %_ZN5QListI6QPointElsEOS0_.exit184
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit325

bb.am:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.h
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %19) #49
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn160 = phi { ptr, i32 } [ %i.kk, %bb.an ], [ %i.kj, %bb.am ] ; 3 uses
  %i.kl = load ptr, ptr %20, align 16             ; 2 uses
  %.not.i.i.i322 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i322, label %_ZN5QListI6QPointED2Ev.exit325, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323: ; preds = %bb.ao
  %i.km = atomicrmw sub ptr %i.kl, i32 1 acq_rel, align 4
  %.not.i.i324 = icmp eq i32 %i.km, 1
  br i1 %.not.i.i324, label %bb.ap, label %_ZN5QListI6QPointED2Ev.exit325

bb.ap:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323
  %i.kn = load ptr, ptr %20, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kn, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit325

_ZN5QListI6QPointED2Ev.exit325:                   ; preds = %bb.ap, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323, %bb.ao, %bb.al
  %.pn160.pn = phi { ptr, i32 } [ %i.ki, %bb.al ], [ %.pn160, %bb.ao ], [ %.pn160, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i323 ], [ %.pn160, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #49
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit325, %bb.ak
  %.pn160.pn.pn = phi { ptr, i32 } [ %.pn160.pn, %_ZN5QListI6QPointED2Ev.exit325 ], [ %i.kh, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #49
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.aj
  %.pn160.pn.pn.pn = phi { ptr, i32 } [ %.pn160.pn.pn, %bb.aq ], [ %i.kg, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #49
  %i.ko = load ptr, ptr %21, align 16             ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i326, label %_ZN5QListI6QPointED2Ev.exit329, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i327

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i327: ; preds = %bb.ar
  %i.kp = atomicrmw sub ptr %i.ko, i32 1 acq_rel, align 4
  %.not.i.i328 = icmp eq i32 %i.kp, 1
  br i1 %.not.i.i328, label %bb.as, label %_ZN5QListI6QPointED2Ev.exit329

bb.as:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i327
  %i.kq = load ptr, ptr %21, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kq, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit329

_ZN5QListI6QPointED2Ev.exit329:                   ; preds = %bb.ar, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i327, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #49
  br label %bb.dr

bb.at:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i242, %_ZN10QCPPainter6setPenERK4QPen.exit233
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.au:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i254, %_ZN5QListI6QPointElsEOS0_.exit245
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.av:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i266, %_ZN5QListI6QPointElsEOS0_.exit257
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit333

bb.aw:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit271
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.w
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %28) #49
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn165 = phi { ptr, i32 } [ %i.kv, %bb.ax ], [ %i.ku, %bb.aw ] ; 3 uses
  %i.kw = load ptr, ptr %29, align 16             ; 2 uses
  %.not.i.i.i330 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i330, label %_ZN5QListI6QPointED2Ev.exit333, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331: ; preds = %bb.ay
  %i.kx = atomicrmw sub ptr %i.kw, i32 1 acq_rel, align 4
  %.not.i.i332 = icmp eq i32 %i.kx, 1
  br i1 %.not.i.i332, label %bb.az, label %_ZN5QListI6QPointED2Ev.exit333

bb.az:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331
  %i.ky = load ptr, ptr %29, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ky, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit333

_ZN5QListI6QPointED2Ev.exit333:                   ; preds = %bb.az, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331, %bb.ay, %bb.av
  %.pn165.pn = phi { ptr, i32 } [ %i.kt, %bb.av ], [ %.pn165, %bb.ay ], [ %.pn165, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i331 ], [ %.pn165, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #49
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit333, %bb.au
  %.pn165.pn.pn = phi { ptr, i32 } [ %.pn165.pn, %_ZN5QListI6QPointED2Ev.exit333 ], [ %i.ks, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #49
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.at
  %.pn165.pn.pn.pn = phi { ptr, i32 } [ %.pn165.pn.pn, %bb.ba ], [ %i.kr, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #49
  %i.kz = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i334 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i334, label %_ZN5QListI6QPointED2Ev.exit337, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i335

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i335: ; preds = %bb.bb
  %i.la = atomicrmw sub ptr %i.kz, i32 1 acq_rel, align 4
  %.not.i.i336 = icmp eq i32 %i.la, 1
  br i1 %.not.i.i336, label %bb.bc, label %_ZN5QListI6QPointED2Ev.exit337

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i335
  %i.lb = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.lb, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit337

_ZN5QListI6QPointED2Ev.exit337:                   ; preds = %bb.bb, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i335, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #49
  br label %bb.dr

bb.bd:                                            ; preds = %bb.d
  %i.lc = getelementptr i8, ptr %0, i64 104
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.lc)
  %i.ld = getelementptr i8, ptr %0, i64 96
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.ld)
  %i.le = load i32, ptr %i.k, align 4
  %i.lf = and i32 %i.le, 4
  %.not.i338 = icmp eq i32 %i.lf, 0
  br i1 %.not.i338, label %_ZN10QCPPainter6setPenERK4QPen.exit339, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit339

_ZN10QCPPainter6setPenERK4QPen.exit339:           ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #49
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.lh = load double, ptr %i.lg, align 8
  %i.li = fmul double %i.lh, 5.000000e-01
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.lk = load double, ptr %i.lj, align 8
  %i.ll = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ln = load double, ptr %i.lm, align 8
  %i.lo = fadd double %i.li, %i.ln                ; 4 uses
  %i.lp = insertelement <2 x double> %i.ll, double %i.lk, i64 1
  %i.lq = shufflevector <2 x double> %i.ll, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.lr = fadd <2 x double> %i.lp, %i.lq          ; 4 uses
  %i.ls = extractelement <2 x double> %i.lr, i64 0
  store double %i.ls, ptr %37, align 8, !alias.scope !1367
  %.sroa.46.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store double %i.lo, ptr %.sroa.46.0..sroa_idx.i342, align 8, !alias.scope !1367
  %i.lt = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.lu = extractelement <2 x double> %i.lr, i64 1
  store double %i.lu, ptr %i.lt, align 8, !alias.scope !1367
  %.sroa.4.0..sroa_idx.i343 = getelementptr inbounds nuw i8, ptr %37, i64 24
  store double %i.lo, ptr %.sroa.4.0..sroa_idx.i343, align 8, !alias.scope !1367
  %i.lv = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit339
  %i.lx = load i32, ptr %i.k, align 4
  %i.ly = and i32 %i.lx, 1
  %.not.i344 = icmp eq i32 %i.ly, 0
  br i1 %.not.i344, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN10QCPPainter6setPenERK4QPen.exit339
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %37, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit353

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  %i.lz = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.lr)
  %i.ma = call double @llvm.copysign.f64(double 5.000000e-01, double %i.lo)
  %i.mb = fadd double %i.lo, %i.ma
  %i.mc = fptosi double %i.mb to i32
  %.sroa.2.0.insert.ext.i.i.i345 = zext i32 %i.mc to i64
  %.sroa.2.0.insert.shift.i.i.i346 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i345, 32
  %i.md = fadd <2 x double> %i.lr, %i.lz
  %i.me = fptosi <2 x double> %i.md to <2 x i32>
  %i.mf = zext <2 x i32> %i.me to <2 x i64>
  %i.mg = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i346, i64 0
  %i.mh = shufflevector <2 x i64> %i.mg, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.mi = or disjoint <2 x i64> %i.mh, %i.mf
  store <2 x i64> %i.mi, ptr %11, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit353

_ZN10QCPPainter8drawLineERK6QLineF.exit353:       ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #49
  %i.mj = load double, ptr %i.lj, align 8
  %i.mk = fmul double %i.mj, 2.000000e-01
  %i.ml = load double, ptr %i.lg, align 8
  %i.mm = load double, ptr %2, align 8
  %65 = load <1 x double>, ptr %i.lm, align 8
  %i.mn = fadd double %i.mk, %i.mm                ; 4 uses
  %i.mo = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mq = fmul <2 x double> %i.mp, <double 3.000000e-01, double 5.000000e-01>
  %i.mr = shufflevector <1 x double> %65, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ms = fadd <2 x double> %i.mq, %i.mr          ; 4 uses
  store double %i.mn, ptr %38, align 8, !alias.scope !1368
  %.sroa.46.0..sroa_idx.i356 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.mt = extractelement <2 x double> %i.ms, i64 0
  store double %i.mt, ptr %.sroa.46.0..sroa_idx.i356, align 8, !alias.scope !1368
  %i.mu = getelementptr inbounds nuw i8, ptr %38, i64 16
  store double %i.mn, ptr %i.mu, align 8, !alias.scope !1368
  %.sroa.4.0..sroa_idx.i357 = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.mv = extractelement <2 x double> %i.ms, i64 1
  store double %i.mv, ptr %.sroa.4.0..sroa_idx.i357, align 8, !alias.scope !1368
  %i.mw = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit353
  %i.my = load i32, ptr %i.k, align 4
  %i.mz = and i32 %i.my, 1
  %.not.i358 = icmp eq i32 %i.mz, 0
  br i1 %.not.i358, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN10QCPPainter8drawLineERK6QLineF.exit353
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit367

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.na = call double @llvm.copysign.f64(double 5.000000e-01, double %i.mn)
  %i.nb = fadd double %i.mn, %i.na
  %i.nc = fptosi double %i.nb to i32
  %i.nd = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ms)
  %.sroa.0.0.insert.ext.i.i.i361 = zext i32 %i.nc to i64
  %i.ne = fadd <2 x double> %i.ms, %i.nd
  %i.nf = fptosi <2 x double> %i.ne to <2 x i32>
  %i.ng = zext <2 x i32> %i.nf to <2 x i64>
  %i.nh = shl nuw <2 x i64> %i.ng, splat (i64 32)
  %i.ni = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i361, i64 0
  %i.nj = shufflevector <2 x i64> %i.ni, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.nk = or disjoint <2 x i64> %i.nh, %i.nj
  store <2 x i64> %i.nk, ptr %10, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit367

_ZN10QCPPainter8drawLineERK6QLineF.exit367:       ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #49
  %i.nl = load double, ptr %i.lj, align 8
  %i.nm = fmul double %i.nl, 8.000000e-01
  %i.nn = load double, ptr %i.lg, align 8
  %i.no = load double, ptr %2, align 8
  %66 = load <1 x double>, ptr %i.lm, align 8
  %i.np = fadd double %i.nm, %i.no                ; 4 uses
  %i.nq = insertelement <2 x double> poison, double %i.nn, i64 0
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ns = fmul <2 x double> %i.nr, <double 5.000000e-01, double f0x3FE6666666666666>
  %i.nt = shufflevector <1 x double> %66, <1 x double> poison, <2 x i32> zeroinitializer
  %i.nu = fadd <2 x double> %i.ns, %i.nt          ; 4 uses
  store double %i.np, ptr %39, align 8, !alias.scope !1369
  %.sroa.46.0..sroa_idx.i370 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.nv = extractelement <2 x double> %i.nu, i64 0
  store double %i.nv, ptr %.sroa.46.0..sroa_idx.i370, align 8, !alias.scope !1369
  %i.nw = getelementptr inbounds nuw i8, ptr %39, i64 16
  store double %i.np, ptr %i.nw, align 8, !alias.scope !1369
  %.sroa.4.0..sroa_idx.i371 = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.nx = extractelement <2 x double> %i.nu, i64 1
  store double %i.nx, ptr %.sroa.4.0..sroa_idx.i371, align 8, !alias.scope !1369
  %i.ny = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit367
  %i.oa = load i32, ptr %i.k, align 4
  %i.ob = and i32 %i.oa, 1
  %.not.i372 = icmp eq i32 %i.ob, 0
  br i1 %.not.i372, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZN10QCPPainter8drawLineERK6QLineF.exit367
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %39, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit381

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  %i.oc = call double @llvm.copysign.f64(double 5.000000e-01, double %i.np)
  %i.od = fadd double %i.np, %i.oc
  %i.oe = fptosi double %i.od to i32
  %i.of = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.nu)
  %.sroa.0.0.insert.ext.i.i.i375 = zext i32 %i.oe to i64
  %i.og = fadd <2 x double> %i.nu, %i.of
  %i.oh = fptosi <2 x double> %i.og to <2 x i32>
  %i.oi = zext <2 x i32> %i.oh to <2 x i64>
  %i.oj = shl nuw <2 x i64> %i.oi, splat (i64 32)
  %i.ok = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i375, i64 0
  %i.ol = shufflevector <2 x i64> %i.ok, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.om = or disjoint <2 x i64> %i.oj, %i.ol
  store <2 x i64> %i.om, ptr %9, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit381

_ZN10QCPPainter8drawLineERK6QLineF.exit381:       ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #49
  br label %bb.dq

bb.bo:                                            ; preds = %_ZN10QCPPainter15setAntialiasingEb.exit
  %i.on = getelementptr i8, ptr %0, i64 228
  %i.oo = load i8, ptr %i.on, align 4, !range !175, !noundef !176
  %i.op = trunc nuw i8 %i.oo to i1
  %i.oq = getelementptr i8, ptr %1, i64 8         ; 9 uses
  br i1 %i.op, label %bb.bp, label %bb.di

bb.bp:                                            ; preds = %bb.bo
  %i.or = getelementptr i8, ptr %0, i64 232
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.or)
  %i.os = getelementptr i8, ptr %0, i64 248
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.os)
  %i.ot = load i32, ptr %i.oq, align 4
  %i.ou = and i32 %i.ot, 4
  %.not.i382 = icmp eq i32 %i.ou, 0
  br i1 %.not.i382, label %_ZN10QCPPainter6setPenERK4QPen.exit383, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit383

_ZN10QCPPainter6setPenERK4QPen.exit383:           ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #49
  %i.ov = load double, ptr %2, align 8            ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ox = load double, ptr %i.ow, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.oz = load double, ptr %i.oy, align 8
  %i.pa = fadd double %i.ox, %i.oz                ; 2 uses
  %i.pb = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ov)
  %i.pc = fadd double %i.ov, %i.pb
  %i.pd = fptosi double %i.pc to i32
  %i.pe = call double @llvm.copysign.f64(double 5.000000e-01, double %i.pa)
  %i.pf = fadd double %i.pa, %i.pe
  %i.pg = fptosi double %i.pf to i32
  %.sroa.2.0.insert.ext.i386 = zext i32 %i.pg to i64
  %.sroa.2.0.insert.shift.i387 = shl nuw i64 %.sroa.2.0.insert.ext.i386, 32
  %.sroa.0.0.insert.ext.i388 = zext i32 %i.pd to i64
  %.sroa.0.0.insert.insert.i389 = or disjoint i64 %.sroa.2.0.insert.shift.i387, %.sroa.0.0.insert.ext.i388
  store i64 %.sroa.0.0.insert.insert.i389, ptr %43, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %43)
          to label %.noexc393 unwind label %bb.co

.noexc393:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit383
  %i.pi = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i390 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i.i.i.i.i.i390, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391: ; preds = %.noexc393
  %i.pj = load atomic i32, ptr %i.pi monotonic, align 4
  %i.pk = icmp sgt i32 %i.pj, 1
  br i1 %i.pk, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392, label %_ZN5QListI6QPointElsEOS0_.exit395

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391, %.noexc393
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit395 unwind label %bb.co

_ZN5QListI6QPointElsEOS0_.exit395:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #49
  %i.pl = load double, ptr %2, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.pn = load double, ptr %i.pm, align 8
  %i.po = fadd double %i.pl, %i.pn                ; 2 uses
  %i.pp = load double, ptr %i.ow, align 8         ; 2 uses
  %i.pq = call double @llvm.copysign.f64(double 5.000000e-01, double %i.po)
  %i.pr = fadd double %i.po, %i.pq
  %i.ps = fptosi double %i.pr to i32
  %i.pt = call double @llvm.copysign.f64(double 5.000000e-01, double %i.pp)
  %i.pu = fadd double %i.pp, %i.pt
  %i.pv = fptosi double %i.pu to i32
  %.sroa.2.0.insert.ext.i398 = zext i32 %i.pv to i64
  %.sroa.2.0.insert.shift.i399 = shl nuw i64 %.sroa.2.0.insert.ext.i398, 32
  %.sroa.0.0.insert.ext.i400 = zext i32 %i.ps to i64
  %.sroa.0.0.insert.insert.i401 = or disjoint i64 %.sroa.2.0.insert.shift.i399, %.sroa.0.0.insert.ext.i400
  store i64 %.sroa.0.0.insert.insert.i401, ptr %44, align 8
  %i.pw = load i64, ptr %i.ph, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i64 noundef %i.pw, ptr noundef nonnull align 4 dereferenceable(8) %44)
          to label %.noexc405 unwind label %bb.cp

.noexc405:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit395
  %i.px = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i402 = icmp eq ptr %i.px, null
  br i1 %.not.i.i.i.i.i.i.i402, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403: ; preds = %.noexc405
  %i.py = load atomic i32, ptr %i.px monotonic, align 4
  %i.pz = icmp sgt i32 %i.py, 1
  br i1 %i.pz, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404, label %_ZN5QListI6QPointElsEOS0_.exit407

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403, %.noexc405
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit407 unwind label %bb.cp

_ZN5QListI6QPointElsEOS0_.exit407:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #49
  %i.qa = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.qb = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.qa)
  %i.qc = fadd <2 x double> %i.qa, %i.qb
  %i.qd = fptosi <2 x double> %i.qc to <2 x i32>
  store <2 x i32> %i.qd, ptr %45, align 8
  %i.qe = load i64, ptr %i.ph, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i64 noundef %i.qe, ptr noundef nonnull align 4 dereferenceable(8) %45)
          to label %.noexc417 unwind label %bb.cq

.noexc417:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit407
  %i.qf = load ptr, ptr %42, align 16             ; 4 uses
  %.not.i.i.i.i.i.i.i414 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i.i.i.i.i414, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415: ; preds = %.noexc417
  %i.qg = load atomic i32, ptr %i.qf monotonic, align 4
  %i.qh = icmp sgt i32 %i.qg, 1
  br i1 %i.qh, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416, label %_ZN5QListI6QPointElsEOS0_.exit419.thread

_ZN5QListI6QPointElsEOS0_.exit419.thread:         ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415
  store ptr %i.qf, ptr %41, align 16
  %i.qi = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  store ptr %i.qk, ptr %i.qi, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.qm = load i64, ptr %i.ph, align 16
  store i64 %i.qm, ptr %i.ql, align 16
  br label %bb.br

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415, %.noexc417
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit419 unwind label %bb.cq

_ZN5QListI6QPointElsEOS0_.exit419:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416
  %i.qn = load <2 x ptr>, ptr %42, align 16
  %.pre = load ptr, ptr %42, align 16             ; 2 uses
  store <2 x ptr> %i.qn, ptr %41, align 16
  %i.qo = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.qp = load i64, ptr %i.ph, align 16
  store i64 %i.qp, ptr %i.qo, align 16
  %.not.i.i.i.i420 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i420, label %_ZN8QPolygonC2ERK5QListI6QPointE.exit421, label %bb.br

bb.br:                                            ; preds = %_ZN5QListI6QPointElsEOS0_.exit419.thread, %_ZN5QListI6QPointElsEOS0_.exit419
  %i.qq = phi ptr [ %i.qf, %_ZN5QListI6QPointElsEOS0_.exit419.thread ], [ %.pre, %_ZN5QListI6QPointElsEOS0_.exit419 ]
  %i.qr = atomicrmw add ptr %i.qq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8QPolygonC2ERK5QListI6QPointE.exit421

_ZN8QPolygonC2ERK5QListI6QPointE.exit421:         ; preds = %_ZN5QListI6QPointElsEOS0_.exit419, %bb.br
  invoke void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef 0)
          to label %bb.bs unwind label %bb.cr

bb.bs:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit421
  invoke void @_ZN8QPainter13setClipRegionERK7QRegionN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1)
          to label %bb.bt unwind label %bb.cs

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %40) #49
  %i.qs = load ptr, ptr %41, align 16             ; 2 uses
  %.not.i.i.i422 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i422, label %_ZN5QListI6QPointED2Ev.exit425, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423: ; preds = %bb.bt
  %i.qt = atomicrmw sub ptr %i.qs, i32 1 acq_rel, align 4
  %.not.i.i424 = icmp eq i32 %i.qt, 1
  br i1 %.not.i.i424, label %bb.bu, label %_ZN5QListI6QPointED2Ev.exit425

bb.bu:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423
  %i.qu = load ptr, ptr %41, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qu, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit425

_ZN5QListI6QPointED2Ev.exit425:                   ; preds = %bb.bt, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #49
  %i.qv = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i426 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i426, label %_ZN5QListI6QPointED2Ev.exit429, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427: ; preds = %_ZN5QListI6QPointED2Ev.exit425
  %i.qw = atomicrmw sub ptr %i.qv, i32 1 acq_rel, align 4
  %.not.i.i428 = icmp eq i32 %i.qw, 1
  br i1 %.not.i.i428, label %bb.bv, label %_ZN5QListI6QPointED2Ev.exit429

bb.bv:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427
  %i.qx = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qx, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit429

_ZN5QListI6QPointED2Ev.exit429:                   ; preds = %_ZN5QListI6QPointED2Ev.exit425, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #49
  %i.qy = load <2 x double>, ptr %i.pm, align 8
  %i.qz = fmul <2 x double> %i.qy, <double 2.500000e-01, double 5.000000e-01> ; 2 uses
  %67 = load <1 x double>, ptr %2, align 8
  %i.ra = load double, ptr %i.ow, align 8
  %i.rb = extractelement <2 x double> %i.qz, i64 1
  %i.rc = fadd double %i.rb, %i.ra                ; 4 uses
  %i.rd = shufflevector <1 x double> %67, <1 x double> poison, <2 x i32> zeroinitializer
  %i.re = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.qz, <2 x i32> <i32 0, i32 2>
  %i.rf = fadd <2 x double> %i.rd, %i.re          ; 4 uses
  %i.rg = extractelement <2 x double> %i.rf, i64 0
  store double %i.rg, ptr %46, align 8, !alias.scope !1370
  %.sroa.46.0..sroa_idx.i432 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store double %i.rc, ptr %.sroa.46.0..sroa_idx.i432, align 8, !alias.scope !1370
  %i.rh = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.ri = extractelement <2 x double> %i.rf, i64 1
  store double %i.ri, ptr %i.rh, align 8, !alias.scope !1370
  %.sroa.4.0..sroa_idx.i433 = getelementptr inbounds nuw i8, ptr %46, i64 24
  store double %i.rc, ptr %.sroa.4.0..sroa_idx.i433, align 8, !alias.scope !1370
  %i.rj = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.rk = trunc nuw i8 %i.rj to i1
  br i1 %i.rk, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit429
  %i.rl = load i32, ptr %i.oq, align 4
  %i.rm = and i32 %i.rl, 1
  %.not.i434 = icmp eq i32 %i.rm, 0
  br i1 %.not.i434, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZN5QListI6QPointED2Ev.exit429
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %46, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit443

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.rn = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.rf)
  %i.ro = call double @llvm.copysign.f64(double 5.000000e-01, double %i.rc)
  %i.rp = fadd double %i.rc, %i.ro
  %i.rq = fptosi double %i.rp to i32
  %.sroa.2.0.insert.ext.i.i.i435 = zext i32 %i.rq to i64
  %.sroa.2.0.insert.shift.i.i.i436 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i435, 32
  %i.rr = fadd <2 x double> %i.rf, %i.rn
  %i.rs = fptosi <2 x double> %i.rr to <2 x i32>
  %i.rt = zext <2 x i32> %i.rs to <2 x i64>
  %i.ru = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i436, i64 0
  %i.rv = shufflevector <2 x i64> %i.ru, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.rw = or disjoint <2 x i64> %i.rv, %i.rt
  store <2 x i64> %i.rw, ptr %8, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit443

_ZN10QCPPainter8drawLineERK6QLineF.exit443:       ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #49
  %i.rx = load <2 x double>, ptr %i.pm, align 8   ; 2 uses
  %i.ry = fmul <2 x double> %i.rx, <double 7.500000e-01, double 5.000000e-01>
  %i.rz = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.sa = fadd <2 x double> %i.ry, %i.rz          ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.rx, %i.rz
  %i.sb = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  store <2 x double> %i.sa, ptr %47, align 16, !alias.scope !1371
  %i.sc = getelementptr inbounds nuw i8, ptr %47, i64 16
  store double %i.sb, ptr %i.sc, align 16, !alias.scope !1371
  %.sroa.4.0..sroa_idx.i447 = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.sd = extractelement <2 x double> %i.sa, i64 1 ; 3 uses
  store double %i.sd, ptr %.sroa.4.0..sroa_idx.i447, align 8, !alias.scope !1371
  %i.se = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit443
  %i.sg = load i32, ptr %i.oq, align 4
  %i.sh = and i32 %i.sg, 1
  %.not.i448 = icmp eq i32 %i.sh, 0
  br i1 %.not.i448, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN10QCPPainter8drawLineERK6QLineF.exit443
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %47, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit457

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.si = extractelement <2 x double> %i.sa, i64 0 ; 2 uses
  %i.sj = call double @llvm.copysign.f64(double 5.000000e-01, double %i.si)
  %i.sk = fadd double %i.si, %i.sj
  %i.sl = fptosi double %i.sk to i32
  %i.sm = call double @llvm.copysign.f64(double 5.000000e-01, double %i.sd)
  %i.sn = fadd double %i.sd, %i.sm
  %i.so = fptosi double %i.sn to i32
  %.sroa.2.0.insert.ext.i.i.i449 = zext i32 %i.so to i64
  %.sroa.2.0.insert.shift.i.i.i450 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i449, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i451 = zext i32 %i.sl to i64
  %.sroa.0.0.insert.insert.i.i.i452 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i450, %.sroa.0.0.insert.ext.i.i.i451
  %i.sp = call double @llvm.copysign.f64(double 5.000000e-01, double %i.sb)
  %i.sq = fadd double %i.sb, %i.sp
  %i.sr = fptosi double %i.sq to i32
  %.sroa.0.0.insert.ext.i3.i.i455 = zext i32 %i.sr to i64
  %.sroa.0.0.insert.insert.i4.i.i456 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i450, %.sroa.0.0.insert.ext.i3.i.i455
  store i64 %.sroa.0.0.insert.insert.i.i.i452, ptr %7, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i456, ptr %i.ss, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit457

_ZN10QCPPainter8drawLineERK6QLineF.exit457:       ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #49
  %i.st = load <2 x double>, ptr %i.pm, align 8   ; 2 uses
  %i.su = fmul <2 x double> %i.st, splat (double 2.500000e-01)
  %i.sv = load <2 x double>, ptr %2, align 8
  %i.sw = fadd <2 x double> %i.su, %i.sv
  store <2 x double> %i.sw, ptr %48, align 16, !alias.scope !1372
  %i.sx = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.sy = fmul <2 x double> %i.st, splat (double 5.000000e-01)
  store <2 x double> %i.sy, ptr %i.sx, align 16, !alias.scope !1372
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %48, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #49
  %i.sz = getelementptr i8, ptr %0, i64 240
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.sz)
  %i.ta = getelementptr i8, ptr %0, i64 256
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.ta)
  %i.tb = load i32, ptr %i.oq, align 4
  %i.tc = and i32 %i.tb, 4
  %.not.i460 = icmp eq i32 %i.tc, 0
  br i1 %.not.i460, label %_ZN10QCPPainter6setPenERK4QPen.exit461, label %bb.cc

bb.cc:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit457
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit461

_ZN10QCPPainter6setPenERK4QPen.exit461:           ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit457, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #49
  %i.td = load double, ptr %2, align 8            ; 2 uses
  %i.te = load double, ptr %i.ow, align 8
  %i.tf = load double, ptr %i.oy, align 8
  %i.tg = fadd double %i.te, %i.tf                ; 2 uses
  %i.th = call double @llvm.copysign.f64(double 5.000000e-01, double %i.td)
  %i.ti = fadd double %i.td, %i.th
  %i.tj = fptosi double %i.ti to i32
  %i.tk = call double @llvm.copysign.f64(double 5.000000e-01, double %i.tg)
  %i.tl = fadd double %i.tg, %i.tk
  %i.tm = fptosi double %i.tl to i32
  %.sroa.2.0.insert.ext.i464 = zext i32 %i.tm to i64
  %.sroa.2.0.insert.shift.i465 = shl nuw i64 %.sroa.2.0.insert.ext.i464, 32
  %.sroa.0.0.insert.ext.i466 = zext i32 %i.tj to i64
  %.sroa.0.0.insert.insert.i467 = or disjoint i64 %.sroa.2.0.insert.shift.i465, %.sroa.0.0.insert.ext.i466
  store i64 %.sroa.0.0.insert.insert.i467, ptr %52, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %52)
          to label %.noexc471 unwind label %bb.cy

.noexc471:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit461
  %i.to = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i468 = icmp eq ptr %i.to, null
  br i1 %.not.i.i.i.i.i.i.i468, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469: ; preds = %.noexc471
  %i.tp = load atomic i32, ptr %i.to monotonic, align 4
  %i.tq = icmp sgt i32 %i.tp, 1
  br i1 %i.tq, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470, label %_ZN5QListI6QPointElsEOS0_.exit473

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469, %.noexc471
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit473 unwind label %bb.cy

_ZN5QListI6QPointElsEOS0_.exit473:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #49
  %i.tr = load double, ptr %2, align 8
  %i.ts = load double, ptr %i.pm, align 8
  %i.tt = fadd double %i.tr, %i.ts                ; 2 uses
  %i.tu = load double, ptr %i.ow, align 8         ; 2 uses
  %i.tv = call double @llvm.copysign.f64(double 5.000000e-01, double %i.tt)
  %i.tw = fadd double %i.tt, %i.tv
  %i.tx = fptosi double %i.tw to i32
  %i.ty = call double @llvm.copysign.f64(double 5.000000e-01, double %i.tu)
  %i.tz = fadd double %i.tu, %i.ty
  %i.ua = fptosi double %i.tz to i32
  %.sroa.2.0.insert.ext.i476 = zext i32 %i.ua to i64
  %.sroa.2.0.insert.shift.i477 = shl nuw i64 %.sroa.2.0.insert.ext.i476, 32
  %.sroa.0.0.insert.ext.i478 = zext i32 %i.tx to i64
  %.sroa.0.0.insert.insert.i479 = or disjoint i64 %.sroa.2.0.insert.shift.i477, %.sroa.0.0.insert.ext.i478
  store i64 %.sroa.0.0.insert.insert.i479, ptr %53, align 8
  %i.ub = load i64, ptr %i.tn, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i64 noundef %i.ub, ptr noundef nonnull align 4 dereferenceable(8) %53)
          to label %.noexc483 unwind label %bb.cz

.noexc483:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit473
  %i.uc = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i480 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i.i.i.i.i480, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481: ; preds = %.noexc483
  %i.ud = load atomic i32, ptr %i.uc monotonic, align 4
  %i.ue = icmp sgt i32 %i.ud, 1
  br i1 %i.ue, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482, label %_ZN5QListI6QPointElsEOS0_.exit485

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481, %.noexc483
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit485 unwind label %bb.cz

_ZN5QListI6QPointElsEOS0_.exit485:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #49
  %i.uf = load <2 x double>, ptr %2, align 8
  %i.ug = load <2 x double>, ptr %i.pm, align 8
  %i.uh = fadd <2 x double> %i.uf, %i.ug          ; 2 uses
  %i.ui = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.uh)
  %i.uj = fadd <2 x double> %i.uh, %i.ui
  %i.uk = fptosi <2 x double> %i.uj to <2 x i32>
  store <2 x i32> %i.uk, ptr %54, align 8
  %i.ul = load i64, ptr %i.tn, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i64 noundef %i.ul, ptr noundef nonnull align 4 dereferenceable(8) %54)
          to label %.noexc495 unwind label %bb.da

.noexc495:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit485
  %i.um = load ptr, ptr %51, align 16             ; 4 uses
  %.not.i.i.i.i.i.i.i492 = icmp eq ptr %i.um, null
  br i1 %.not.i.i.i.i.i.i.i492, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493: ; preds = %.noexc495
  %i.un = load atomic i32, ptr %i.um monotonic, align 4
  %i.uo = icmp sgt i32 %i.un, 1
  br i1 %i.uo, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494, label %_ZN5QListI6QPointElsEOS0_.exit497.thread

_ZN5QListI6QPointElsEOS0_.exit497.thread:         ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493
  store ptr %i.um, ptr %50, align 16
  %i.up = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8
  store ptr %i.ur, ptr %i.up, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.ut = load i64, ptr %i.tn, align 16
  store i64 %i.ut, ptr %i.us, align 16
  br label %bb.cd

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493, %.noexc495
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit497 unwind label %bb.da

_ZN5QListI6QPointElsEOS0_.exit497:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494
  %i.uu = load <2 x ptr>, ptr %51, align 16
  %.pre713 = load ptr, ptr %51, align 16          ; 2 uses
  store <2 x ptr> %i.uu, ptr %50, align 16
  %i.uv = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.uw = load i64, ptr %i.tn, align 16
  store i64 %i.uw, ptr %i.uv, align 16
  %.not.i.i.i.i498 = icmp eq ptr %.pre713, null
  br i1 %.not.i.i.i.i498, label %_ZN8QPolygonC2ERK5QListI6QPointE.exit499, label %bb.cd

bb.cd:                                            ; preds = %_ZN5QListI6QPointElsEOS0_.exit497.thread, %_ZN5QListI6QPointElsEOS0_.exit497
  %i.ux = phi ptr [ %i.um, %_ZN5QListI6QPointElsEOS0_.exit497.thread ], [ %.pre713, %_ZN5QListI6QPointElsEOS0_.exit497 ]
  %i.uy = atomicrmw add ptr %i.ux, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8QPolygonC2ERK5QListI6QPointE.exit499

_ZN8QPolygonC2ERK5QListI6QPointE.exit499:         ; preds = %_ZN5QListI6QPointElsEOS0_.exit497, %bb.cd
  invoke void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %49, ptr noundef nonnull align 8 dereferenceable(24) %50, i32 noundef 0)
          to label %bb.ce unwind label %bb.db

bb.ce:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit499
  invoke void @_ZN8QPainter13setClipRegionERK7QRegionN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 1)
          to label %bb.cf unwind label %bb.dc

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %49) #49
  %i.uz = load ptr, ptr %50, align 16             ; 2 uses
  %.not.i.i.i500 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i500, label %_ZN5QListI6QPointED2Ev.exit503, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501: ; preds = %bb.cf
  %i.va = atomicrmw sub ptr %i.uz, i32 1 acq_rel, align 4
  %.not.i.i502 = icmp eq i32 %i.va, 1
  br i1 %.not.i.i502, label %bb.cg, label %_ZN5QListI6QPointED2Ev.exit503

bb.cg:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501
  %i.vb = load ptr, ptr %50, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.vb, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit503

_ZN5QListI6QPointED2Ev.exit503:                   ; preds = %bb.cf, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #49
  %i.vc = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i504 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i.i504, label %_ZN5QListI6QPointED2Ev.exit507, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505: ; preds = %_ZN5QListI6QPointED2Ev.exit503
  %i.vd = atomicrmw sub ptr %i.vc, i32 1 acq_rel, align 4
  %.not.i.i506 = icmp eq i32 %i.vd, 1
  br i1 %.not.i.i506, label %bb.ch, label %_ZN5QListI6QPointED2Ev.exit507

bb.ch:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505
  %i.ve = load ptr, ptr %51, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ve, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit507

_ZN5QListI6QPointED2Ev.exit507:                   ; preds = %_ZN5QListI6QPointED2Ev.exit503, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #49
  %i.vf = load <2 x double>, ptr %i.pm, align 8
  %i.vg = fmul <2 x double> %i.vf, <double 2.500000e-01, double 5.000000e-01> ; 2 uses
  %68 = load <1 x double>, ptr %2, align 8
  %i.vh = load double, ptr %i.ow, align 8
  %i.vi = extractelement <2 x double> %i.vg, i64 1
  %i.vj = fadd double %i.vi, %i.vh                ; 4 uses
  %i.vk = shufflevector <1 x double> %68, <1 x double> poison, <2 x i32> zeroinitializer
  %i.vl = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.vg, <2 x i32> <i32 0, i32 2>
  %i.vm = fadd <2 x double> %i.vk, %i.vl          ; 4 uses
  %i.vn = extractelement <2 x double> %i.vm, i64 0
  store double %i.vn, ptr %55, align 8, !alias.scope !1373
  %.sroa.46.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %55, i64 8
  store double %i.vj, ptr %.sroa.46.0..sroa_idx.i510, align 8, !alias.scope !1373
  %i.vo = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.vp = extractelement <2 x double> %i.vm, i64 1
  store double %i.vp, ptr %i.vo, align 8, !alias.scope !1373
  %.sroa.4.0..sroa_idx.i511 = getelementptr inbounds nuw i8, ptr %55, i64 24
  store double %i.vj, ptr %.sroa.4.0..sroa_idx.i511, align 8, !alias.scope !1373
  %i.vq = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit507
  %i.vs = load i32, ptr %i.oq, align 4
  %i.vt = and i32 %i.vs, 1
  %.not.i512 = icmp eq i32 %i.vt, 0
  br i1 %.not.i512, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZN5QListI6QPointED2Ev.exit507
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit521

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.vu = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.vm)
  %i.vv = call double @llvm.copysign.f64(double 5.000000e-01, double %i.vj)
  %i.vw = fadd double %i.vj, %i.vv
  %i.vx = fptosi double %i.vw to i32
  %.sroa.2.0.insert.ext.i.i.i513 = zext i32 %i.vx to i64
  %.sroa.2.0.insert.shift.i.i.i514 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i513, 32
  %i.vy = fadd <2 x double> %i.vm, %i.vu
  %i.vz = fptosi <2 x double> %i.vy to <2 x i32>
  %i.wa = zext <2 x i32> %i.vz to <2 x i64>
  %i.wb = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i514, i64 0
  %i.wc = shufflevector <2 x i64> %i.wb, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wd = or disjoint <2 x i64> %i.wc, %i.wa
  store <2 x i64> %i.wd, ptr %6, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit521

_ZN10QCPPainter8drawLineERK6QLineF.exit521:       ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #49
  %i.we = load <2 x double>, ptr %i.pm, align 8   ; 2 uses
  %i.wf = fmul <2 x double> %i.we, <double 7.500000e-01, double 5.000000e-01>
  %i.wg = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.wh = fadd <2 x double> %i.wf, %i.wg          ; 3 uses
  %foldExtExtBinop752 = fadd <2 x double> %i.we, %i.wg
  %i.wi = extractelement <2 x double> %foldExtExtBinop752, i64 0 ; 3 uses
  store <2 x double> %i.wh, ptr %56, align 16, !alias.scope !1374
  %i.wj = getelementptr inbounds nuw i8, ptr %56, i64 16
  store double %i.wi, ptr %i.wj, align 16, !alias.scope !1374
  %.sroa.4.0..sroa_idx.i525 = getelementptr inbounds nuw i8, ptr %56, i64 24
  %i.wk = extractelement <2 x double> %i.wh, i64 1 ; 3 uses
  store double %i.wk, ptr %.sroa.4.0..sroa_idx.i525, align 8, !alias.scope !1374
  %i.wl = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.wm = trunc nuw i8 %i.wl to i1
  br i1 %i.wm, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit521
  %i.wn = load i32, ptr %i.oq, align 4
  %i.wo = and i32 %i.wn, 1
  %.not.i526 = icmp eq i32 %i.wo, 0
  br i1 %.not.i526, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZN10QCPPainter8drawLineERK6QLineF.exit521
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %56, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit535

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.wp = extractelement <2 x double> %i.wh, i64 0 ; 2 uses
  %i.wq = call double @llvm.copysign.f64(double 5.000000e-01, double %i.wp)
  %i.wr = fadd double %i.wp, %i.wq
  %i.ws = fptosi double %i.wr to i32
  %i.wt = call double @llvm.copysign.f64(double 5.000000e-01, double %i.wk)
  %i.wu = fadd double %i.wk, %i.wt
  %i.wv = fptosi double %i.wu to i32
  %.sroa.2.0.insert.ext.i.i.i527 = zext i32 %i.wv to i64
  %.sroa.2.0.insert.shift.i.i.i528 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i527, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i529 = zext i32 %i.ws to i64
  %.sroa.0.0.insert.insert.i.i.i530 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i528, %.sroa.0.0.insert.ext.i.i.i529
  %i.ww = call double @llvm.copysign.f64(double 5.000000e-01, double %i.wi)
  %i.wx = fadd double %i.wi, %i.ww
  %i.wy = fptosi double %i.wx to i32
  %.sroa.0.0.insert.ext.i3.i.i533 = zext i32 %i.wy to i64
  %.sroa.0.0.insert.insert.i4.i.i534 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i528, %.sroa.0.0.insert.ext.i3.i.i533
  store i64 %.sroa.0.0.insert.insert.i.i.i530, ptr %5, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i534, ptr %i.wz, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit535

_ZN10QCPPainter8drawLineERK6QLineF.exit535:       ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #49
  %i.xa = load <2 x double>, ptr %i.pm, align 8   ; 2 uses
  %i.xb = fmul <2 x double> %i.xa, splat (double 2.500000e-01)
  %i.xc = load <2 x double>, ptr %2, align 8
  %i.xd = fadd <2 x double> %i.xb, %i.xc
  store <2 x double> %i.xd, ptr %57, align 16, !alias.scope !1375
  %i.xe = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.xf = fmul <2 x double> %i.xa, splat (double 5.000000e-01)
  store <2 x double> %i.xf, ptr %i.xe, align 16, !alias.scope !1375
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %57, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #49
  br label %bb.dq

bb.co:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392, %_ZN10QCPPainter6setPenERK4QPen.exit383
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cp:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404, %_ZN5QListI6QPointElsEOS0_.exit395
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cq:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416, %_ZN5QListI6QPointElsEOS0_.exit407
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit541

bb.cr:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit421
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.bs
  %i.xk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %40) #49
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn = phi { ptr, i32 } [ %i.xk, %bb.cs ], [ %i.xj, %bb.cr ] ; 3 uses
  %i.xl = load ptr, ptr %41, align 16             ; 2 uses
  %.not.i.i.i538 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i.i538, label %_ZN5QListI6QPointED2Ev.exit541, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539: ; preds = %bb.ct
  %i.xm = atomicrmw sub ptr %i.xl, i32 1 acq_rel, align 4
  %.not.i.i540 = icmp eq i32 %i.xm, 1
  br i1 %.not.i.i540, label %bb.cu, label %_ZN5QListI6QPointED2Ev.exit541

bb.cu:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539
  %i.xn = load ptr, ptr %41, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xn, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit541

_ZN5QListI6QPointED2Ev.exit541:                   ; preds = %bb.cu, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539, %bb.ct, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %i.xi, %bb.cq ], [ %.pn, %bb.ct ], [ %.pn, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539 ], [ %.pn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #49
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit541, %bb.cp
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN5QListI6QPointED2Ev.exit541 ], [ %i.xh, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #49
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.co
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.cv ], [ %i.xg, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #49
  %i.xo = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i542 = icmp eq ptr %i.xo, null
  br i1 %.not.i.i.i542, label %_ZN5QListI6QPointED2Ev.exit545, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543: ; preds = %bb.cw
  %i.xp = atomicrmw sub ptr %i.xo, i32 1 acq_rel, align 4
  %.not.i.i544 = icmp eq i32 %i.xp, 1
  br i1 %.not.i.i544, label %bb.cx, label %_ZN5QListI6QPointED2Ev.exit545

bb.cx:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543
  %i.xq = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xq, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit545

_ZN5QListI6QPointED2Ev.exit545:                   ; preds = %bb.cw, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #49
  br label %bb.dr

bb.cy:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470, %_ZN10QCPPainter6setPenERK4QPen.exit461
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.cz:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482, %_ZN5QListI6QPointElsEOS0_.exit473
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.da:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494, %_ZN5QListI6QPointElsEOS0_.exit485
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit549

bb.db:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit499
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.ce
  %i.xv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %49) #49
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn155 = phi { ptr, i32 } [ %i.xv, %bb.dc ], [ %i.xu, %bb.db ] ; 3 uses
  %i.xw = load ptr, ptr %50, align 16             ; 2 uses
  %.not.i.i.i546 = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i546, label %_ZN5QListI6QPointED2Ev.exit549, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547: ; preds = %bb.dd
  %i.xx = atomicrmw sub ptr %i.xw, i32 1 acq_rel, align 4
  %.not.i.i548 = icmp eq i32 %i.xx, 1
  br i1 %.not.i.i548, label %bb.de, label %_ZN5QListI6QPointED2Ev.exit549

bb.de:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547
  %i.xy = load ptr, ptr %50, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xy, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit549

_ZN5QListI6QPointED2Ev.exit549:                   ; preds = %bb.de, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547, %bb.dd, %bb.da
  %.pn155.pn = phi { ptr, i32 } [ %i.xt, %bb.da ], [ %.pn155, %bb.dd ], [ %.pn155, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547 ], [ %.pn155, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #49
  br label %bb.df

bb.df:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit549, %bb.cz
  %.pn155.pn.pn = phi { ptr, i32 } [ %.pn155.pn, %_ZN5QListI6QPointED2Ev.exit549 ], [ %i.xs, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #49
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.cy
  %.pn155.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn, %bb.df ], [ %i.xr, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #49
  %i.xz = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i550 = icmp eq ptr %i.xz, null
  br i1 %.not.i.i.i550, label %_ZN5QListI6QPointED2Ev.exit553, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551: ; preds = %bb.dg
  %i.ya = atomicrmw sub ptr %i.xz, i32 1 acq_rel, align 4
  %.not.i.i552 = icmp eq i32 %i.ya, 1
  br i1 %.not.i.i552, label %bb.dh, label %_ZN5QListI6QPointED2Ev.exit553

bb.dh:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551
  %i.yb = load ptr, ptr %51, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.yb, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit553

_ZN5QListI6QPointED2Ev.exit553:                   ; preds = %bb.dg, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #49
  br label %bb.dr

bb.di:                                            ; preds = %bb.bo
  %i.yc = getelementptr i8, ptr %0, i64 104
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.yc)
  %i.yd = getelementptr i8, ptr %0, i64 96
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.yd)
  %i.ye = load i32, ptr %i.oq, align 4
  %i.yf = and i32 %i.ye, 4
  %.not.i554 = icmp eq i32 %i.yf, 0
  br i1 %.not.i554, label %_ZN10QCPPainter6setPenERK4QPen.exit555, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit555

_ZN10QCPPainter6setPenERK4QPen.exit555:           ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #49
  %i.yg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.yh = load <2 x double>, ptr %i.yg, align 8
  %i.yi = fmul <2 x double> %i.yh, <double 2.500000e-01, double 5.000000e-01> ; 2 uses
  %69 = load <1 x double>, ptr %2, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.yk = load double, ptr %i.yj, align 8
  %i.yl = extractelement <2 x double> %i.yi, i64 1
  %i.ym = fadd double %i.yl, %i.yk                ; 4 uses
  %i.yn = shufflevector <1 x double> %69, <1 x double> poison, <2 x i32> zeroinitializer
  %i.yo = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.yi, <2 x i32> <i32 0, i32 2>
  %i.yp = fadd <2 x double> %i.yn, %i.yo          ; 4 uses
  %i.yq = extractelement <2 x double> %i.yp, i64 0
  store double %i.yq, ptr %58, align 8, !alias.scope !1376
  %.sroa.46.0..sroa_idx.i558 = getelementptr inbounds nuw i8, ptr %58, i64 8
  store double %i.ym, ptr %.sroa.46.0..sroa_idx.i558, align 8, !alias.scope !1376
  %i.yr = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.ys = extractelement <2 x double> %i.yp, i64 1
  store double %i.ys, ptr %i.yr, align 8, !alias.scope !1376
  %.sroa.4.0..sroa_idx.i559 = getelementptr inbounds nuw i8, ptr %58, i64 24
  store double %i.ym, ptr %.sroa.4.0..sroa_idx.i559, align 8, !alias.scope !1376
  %i.yt = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.yu = trunc nuw i8 %i.yt to i1
  br i1 %i.yu, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit555
  %i.yv = load i32, ptr %i.oq, align 4
  %i.yw = and i32 %i.yv, 1
  %.not.i560 = icmp eq i32 %i.yw, 0
  br i1 %.not.i560, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZN10QCPPainter6setPenERK4QPen.exit555
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %58, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit569

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.yx = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.yp)
  %i.yy = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ym)
  %i.yz = fadd double %i.ym, %i.yy
  %i.za = fptosi double %i.yz to i32
  %.sroa.2.0.insert.ext.i.i.i561 = zext i32 %i.za to i64
  %.sroa.2.0.insert.shift.i.i.i562 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i561, 32
  %i.zb = fadd <2 x double> %i.yp, %i.yx
  %i.zc = fptosi <2 x double> %i.zb to <2 x i32>
  %i.zd = zext <2 x i32> %i.zc to <2 x i64>
  %i.ze = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i562, i64 0
  %i.zf = shufflevector <2 x i64> %i.ze, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.zg = or disjoint <2 x i64> %i.zf, %i.zd
  store <2 x i64> %i.zg, ptr %4, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit569

_ZN10QCPPainter8drawLineERK6QLineF.exit569:       ; preds = %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #49
  %i.zh = load <2 x double>, ptr %i.yg, align 8   ; 2 uses
  %i.zi = fmul <2 x double> %i.zh, <double 7.500000e-01, double 5.000000e-01>
  %i.zj = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.zk = fadd <2 x double> %i.zi, %i.zj          ; 3 uses
  %foldExtExtBinop754 = fadd <2 x double> %i.zh, %i.zj
  %i.zl = extractelement <2 x double> %foldExtExtBinop754, i64 0 ; 3 uses
  store <2 x double> %i.zk, ptr %59, align 16, !alias.scope !1377
  %i.zm = getelementptr inbounds nuw i8, ptr %59, i64 16
  store double %i.zl, ptr %i.zm, align 16, !alias.scope !1377
  %.sroa.4.0..sroa_idx.i573 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.zn = extractelement <2 x double> %i.zk, i64 1 ; 3 uses
  store double %i.zn, ptr %.sroa.4.0..sroa_idx.i573, align 8, !alias.scope !1377
  %i.zo = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.zp = trunc nuw i8 %i.zo to i1
  br i1 %i.zp, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit569
  %i.zq = load i32, ptr %i.oq, align 4
  %i.zr = and i32 %i.zq, 1
  %.not.i574 = icmp eq i32 %i.zr, 0
  br i1 %.not.i574, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn, %_ZN10QCPPainter8drawLineERK6QLineF.exit569
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %59, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit583

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.zs = extractelement <2 x double> %i.zk, i64 0 ; 2 uses
  %i.zt = call double @llvm.copysign.f64(double 5.000000e-01, double %i.zs)
  %i.zu = fadd double %i.zs, %i.zt
  %i.zv = fptosi double %i.zu to i32
  %i.zw = call double @llvm.copysign.f64(double 5.000000e-01, double %i.zn)
  %i.zx = fadd double %i.zn, %i.zw
  %i.zy = fptosi double %i.zx to i32
  %.sroa.2.0.insert.ext.i.i.i575 = zext i32 %i.zy to i64
  %.sroa.2.0.insert.shift.i.i.i576 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i575, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i577 = zext i32 %i.zv to i64
  %.sroa.0.0.insert.insert.i.i.i578 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i576, %.sroa.0.0.insert.ext.i.i.i577
  %i.zz = call double @llvm.copysign.f64(double 5.000000e-01, double %i.zl)
  %i.aaa = fadd double %i.zl, %i.zz
  %i.aab = fptosi double %i.aaa to i32
  %.sroa.0.0.insert.ext.i3.i.i581 = zext i32 %i.aab to i64
  %.sroa.0.0.insert.insert.i4.i.i582 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i576, %.sroa.0.0.insert.ext.i3.i.i581
  store i64 %.sroa.0.0.insert.insert.i.i.i578, ptr %3, align 8
  %i.aac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i582, ptr %i.aac, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit583

_ZN10QCPPainter8drawLineERK6QLineF.exit583:       ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #49
  %i.aad = load <2 x double>, ptr %i.yg, align 8  ; 2 uses
  %i.aae = fmul <2 x double> %i.aad, splat (double 2.500000e-01)
  %i.aaf = load <2 x double>, ptr %2, align 8
  %i.aag = fadd <2 x double> %i.aae, %i.aaf
  store <2 x double> %i.aag, ptr %60, align 16, !alias.scope !1378
  %i.aah = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.aai = fmul <2 x double> %i.aad, splat (double 5.000000e-01)
  store <2 x double> %i.aai, ptr %i.aah, align 16, !alias.scope !1378
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %60, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #49
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
  %i.q = load i8, ptr %i.p, align 8, !range !175, !noundef !176
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
begin_hunk_1_@_ZNK13QCPItemTracer10selectTestERK7QPointFbP8QVariant:bb.a
  %i.ce = sitofp i32 %i.cd to double
  call void @_ZN11QCPVector2DC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %22, double noundef %i.j, double noundef %i.ce)
  %i.cf = call noundef double @_ZNK11QCPVector2D21distanceSquaredToLineERKS_S1_(ptr noundef nonnull align 8 dereferenceable_or_null(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %22) ; 2 uses
  %i.cg = fcmp olt double %i.by, %i.cf
  %.sroa.speculated = select i1 %i.cg, double %i.by, double %i.cf
  %i.ch = call noundef double @sqrt(double noundef %.sroa.speculated) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  br label %bb.p

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #49
  %i.ci = insertelement <2 x double> poison, double %i.j, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.k, i64 1 ; 3 uses
  %i.ck = insertelement <2 x double> poison, double %i.n, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = fsub <2 x double> %i.cj, %i.cl          ; 4 uses
  %i.cn = fadd <2 x double> %i.cj, %i.cl
  %i.co = fsub <2 x double> %i.cn, %i.cm
  %i.cp = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.cm)
  %i.cq = fadd <2 x double> %i.cm, %i.cp
  %i.cr = fptosi <2 x double> %i.cq to <2 x i32>  ; 4 uses
  %i.cs = sitofp <2 x i32> %i.cr to <2 x double>
  %i.ct = fsub <2 x double> %i.cm, %i.cs
  %i.cu = fmul <2 x double> %i.ct, splat (double 5.000000e-01)
  %i.cv = fadd <2 x double> %i.co, %i.cu          ; 2 uses
  %i.cw = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.cv)
  %i.cx = fadd <2 x double> %i.cv, %i.cw          ; 2 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 0
  %i.cz = fptosi double %i.cy to i32
  %i.da = extractelement <2 x double> %i.cx, i64 1
  %i.db = fptosi double %i.da to i32
  %i.dc = extractelement <2 x i32> %i.cr, i64 0
  %i.dd = add i32 %i.dc, -1
  %i.de = add i32 %i.dd, %i.cz
  %i.df = extractelement <2 x i32> %i.cr, i64 1
  %i.dg = add i32 %i.df, -1
  %i.dh = add i32 %i.dg, %i.db
  %.sroa.5.8.insert.ext.i62 = zext i32 %i.dh to i64
  %.sroa.5.8.insert.shift.i63 = shl nuw i64 %.sroa.5.8.insert.ext.i62, 32
  %.sroa.3.8.insert.ext.i64 = zext i32 %i.de to i64
  %.sroa.3.8.insert.insert.i65 = or disjoint i64 %.sroa.5.8.insert.shift.i63, %.sroa.3.8.insert.ext.i64
  store <2 x i32> %i.cr, ptr %23, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %.sroa.3.8.insert.insert.i65, ptr %i.di, align 8
  %i.dj = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %23) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #49
  br i1 %i.dj, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #49
  %i.dk = load <2 x double>, ptr %1, align 8
  %i.dl = fsub <2 x double> %i.cj, %i.dk
  store <2 x double> %i.dl, ptr %25, align 16
  call void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25)
  %i.dm = load double, ptr %24, align 8           ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.do = load double, ptr %i.dn, align 8         ; 2 uses
  %i.dp = fmul double %i.do, %i.do
  %i.dq = call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %i.dp)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.dq) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #49
  %i.dr = fsub double %sqrt.i, %i.n               ; 3 uses
  %i.ds = fcmp ult double %i.dr, 0.000000e+00
  %i.dt = fneg double %i.dr
  %i.du = select i1 %i.ds, double %i.dt, double %i.dr ; 4 uses
  %i.dv = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr i8, ptr %i.dw, i64 228
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = sitofp i32 %i.dy to double
  %i.ea = fmul nnan double %i.dz, f0x3FEFAE147AE147AE
  %i.eb = fcmp ogt double %i.du, %i.ea
  br i1 %i.eb, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ec = getelementptr i8, ptr %0, i64 160
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4
  %.not39 = icmp eq i32 %i.ef, 0
  br i1 %.not39, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eg = getelementptr i8, ptr %i.ed, i64 8
  %i.eh = call noundef i32 @_ZNK6QColor5alphaEv(ptr noundef align 4 dereferenceable_or_null(14) %i.eg) #49
  %.not40 = icmp eq i32 %i.eh, 0
  %i.ei = fcmp ugt double %sqrt.i, %i.n
  %or.cond = select i1 %.not40, i1 true, i1 %i.ei
  br i1 %or.cond, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ej = load ptr, ptr %i.dv, align 8
  %i.ek = getelementptr i8, ptr %i.ej, i64 228
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = sitofp i32 %i.el to double
  %i.en = fmul nnan double %i.em, f0x3FEFAE147AE147AE
  br label %bb.p

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #49
  %i.eo = fsub double %i.j, %i.n                  ; 5 uses
  %i.ep = fsub double %i.k, %i.n                  ; 5 uses
  %i.eq = fadd double %i.j, %i.n
  %i.er = fadd double %i.k, %i.n
  %i.es = fsub double %i.eq, %i.eo                ; 2 uses
  %i.et = fsub double %i.er, %i.ep                ; 2 uses
  %i.eu = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.eo)
  %i.ev = fadd double %i.eo, %i.eu
  %i.ew = fptosi double %i.ev to i32              ; 3 uses
  %i.ex = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.ep)
  %i.ey = fadd double %i.ep, %i.ex
  %i.ez = fptosi double %i.ey to i32              ; 3 uses
  %i.fa = sitofp i32 %i.ew to double
  %i.fb = fsub double %i.eo, %i.fa
  %i.fc = fmul double %i.fb, 5.000000e-01
  %i.fd = fadd double %i.es, %i.fc                ; 2 uses
  %i.fe = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.fd)
  %i.ff = fadd double %i.fd, %i.fe
  %i.fg = fptosi double %i.ff to i32
  %i.fh = sitofp i32 %i.ez to double
  %i.fi = fsub double %i.ep, %i.fh
  %i.fj = fmul double %i.fi, 5.000000e-01
  %i.fk = fadd double %i.et, %i.fj                ; 2 uses
  %i.fl = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.fk)
  %i.fm = fadd double %i.fk, %i.fl
  %i.fn = fptosi double %i.fm to i32
  %i.fo = add i32 %i.ew, -1
  %i.fp = add i32 %i.fo, %i.fg
  %i.fq = add i32 %i.ez, -1
  %i.fr = add i32 %i.fq, %i.fn
  %.sroa.2.0.insert.ext.i73 = zext i32 %i.ez to i64
  %.sroa.2.0.insert.shift.i74 = shl nuw i64 %.sroa.2.0.insert.ext.i73, 32
  %.sroa.0.0.insert.ext.i75 = zext i32 %i.ew to i64
  %.sroa.0.0.insert.insert.i76 = or disjoint i64 %.sroa.2.0.insert.shift.i74, %.sroa.0.0.insert.ext.i75
  %.sroa.5.8.insert.ext.i78 = zext i32 %i.fr to i64
  %.sroa.5.8.insert.shift.i79 = shl nuw i64 %.sroa.5.8.insert.ext.i78, 32
  %.sroa.3.8.insert.ext.i80 = zext i32 %i.fp to i64
  %.sroa.3.8.insert.insert.i81 = or disjoint i64 %.sroa.5.8.insert.shift.i79, %.sroa.3.8.insert.ext.i80
  store i64 %.sroa.0.0.insert.insert.i76, ptr %26, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %.sroa.3.8.insert.insert.i81, ptr %i.fs, align 8
  %i.ft = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %26) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #49
  br i1 %i.ft, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #49
  store double %i.eo, ptr %27, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %27, i64 8
  store double %i.ep, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %27, i64 16
  store double %i.es, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %27, i64 24
  store double %i.et, ptr %i.fw, align 8
  %i.fx = getelementptr i8, ptr %0, i64 160
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4
  %.not = icmp eq i32 %i.ga, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gb = getelementptr i8, ptr %i.fy, i64 8
  %i.gc = call noundef i32 @_ZNK6QColor5alphaEv(ptr noundef align 4 dereferenceable_or_null(14) %i.gb) #49
  %i.gd = icmp ne i32 %i.gc, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ge = phi i1 [ false, %bb.m ], [ %i.gd, %bb.n ]
  %i.gf = call noundef double @_ZNK15QCPAbstractItem12rectDistanceERK6QRectFRK7QPointFb(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef align 8 dereferenceable(16) %1, i1 noundef zeroext %i.ge)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #49
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.l, %bb.h, %bb.i, %bb.j, %bb.k, %bb.o, %bb.f, %bb.e
  %.036 = phi double [ %i.du, %bb.i ], [ %i.gf, %bb.o ], [ %i.bt, %bb.e ], [ %i.ch, %bb.f ], [ %i.en, %bb.k ], [ %i.du, %bb.h ], [ %i.du, %bb.j ], [ -1.000000e+00, %bb.l ], [ -1.000000e+00, %bb.g ], [ -1.000000e+00, %bb.d ], [ -1.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.p
  %.1 = phi double [ %.036, %bb.p ], [ -1.000000e+00, %bb.b ]
  ret double %.1
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13QCPItemTracer4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(209) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QRectF, align 8              ; 7 uses
  %3 = alloca %class.QLine, align 16              ; 4 uses
  %4 = alloca %class.QLine, align 16              ; 4 uses
  %5 = alloca %class.QLine, align 8               ; 5 uses
  %6 = alloca %class.QLine, align 8               ; 5 uses
  %7 = alloca %class.QPen, align 8                ; 7 uses
  %8 = alloca %class.QBrush, align 8              ; 7 uses
  %9 = alloca %class.QRect, align 8               ; 10 uses
  %10 = alloca %class.QRect, align 8              ; 5 uses
  %11 = alloca %class.QLineF, align 8             ; 7 uses
  %12 = alloca %class.QLineF, align 8             ; 7 uses
  %13 = alloca %class.QLineF, align 8             ; 7 uses
  %14 = alloca %class.QLineF, align 8             ; 7 uses
  %15 = alloca %class.QRect, align 8              ; 5 uses
  %16 = alloca %class.QRect, align 8              ; 5 uses
  %17 = alloca %class.QRectF, align 8             ; 7 uses
  tail call void @_ZN13QCPItemTracer14updatePositionEv(ptr noundef align 8 dereferenceable_or_null(209) %0)
  %i.a = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.d = getelementptr i8, ptr %0, i64 129        ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !175, !noalias !1516, !noundef !176
  %i.f = trunc nuw i8 %i.e to i1
  %.v.i = select i1 %i.f, i64 152, i64 144
  %i.g = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef align 8 dereferenceable(8) %i.g) #49
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.e

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.c
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.k = load i8, ptr %i.d, align 1, !range !175, !noalias !1517, !noundef !176
  %i.l = trunc nuw i8 %i.k to i1
  %.v.i35 = select i1 %i.l, i64 168, i64 160
  %i.m = getelementptr i8, ptr %0, i64 %.v.i35
  call void @_ZN6QBrushC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef align 8 dereferenceable(8) %i.m)
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  %i.n = getelementptr i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call { double, double } %i.r(ptr noundef align 8 dereferenceable_or_null(160) %i.o) ; 2 uses
  %i.t = extractvalue { double, double } %i.s, 0  ; 13 uses
  %i.u = extractvalue { double, double } %i.s, 1  ; 13 uses
  %i.v = getelementptr i8, ptr %0, i64 176
  %i.w = load double, ptr %i.v, align 8
  %i.x = fmul double %i.w, 5.000000e-01           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call { i64, i64 } %i.aa(ptr noundef align 8 dereferenceable_or_null(130) %0) ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0      ; 4 uses
  store i64 %i.ac, ptr %9, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ab, 1      ; 3 uses
  store i64 %i.ae, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.a, align 8
  %i.ag = trunc i64 %i.ac to i32
  %i.ah = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.ai = trunc i64 %i.ae to i32
  %i.aj = insertelement <2 x i32> %i.ah, i32 %i.ai, i64 1
  switch i32 %i.af, label %bb.ad [
    i32 4, label %bb.ab
    i32 1, label %bb.g
    i32 2, label %bb.o
    i32 3, label %bb.z
  ]

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %bb.af

bb.f:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %bb.af

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.am = fsub double %i.t, %i.x                  ; 5 uses
  %i.an = fsub double %i.u, %i.x                  ; 5 uses
  %i.ao = fadd double %i.t, %i.x                  ; 4 uses
  %i.ap = fadd double %i.u, %i.x                  ; 4 uses
  %i.aq = fsub double %i.ao, %i.am
  %i.ar = fsub double %i.ap, %i.an
  %i.as = call double @llvm.copysign.f64(double 5.000000e-01, double %i.am)
  %i.at = fadd double %i.am, %i.as
  %i.au = fptosi double %i.at to i32              ; 3 uses
  %i.av = call double @llvm.copysign.f64(double 5.000000e-01, double %i.an)
  %i.aw = fadd double %i.an, %i.av
  %i.ax = fptosi double %i.aw to i32              ; 3 uses
  %i.ay = sitofp i32 %i.au to double
  %i.az = fsub double %i.am, %i.ay
  %i.ba = fmul double %i.az, 5.000000e-01
  %i.bb = fadd double %i.aq, %i.ba                ; 2 uses
  %i.bc = call double @llvm.copysign.f64(double 5.000000e-01, double %i.bb)
  %i.bd = fadd double %i.bb, %i.bc
  %i.be = fptosi double %i.bd to i32
  %i.bf = sitofp i32 %i.ax to double
  %i.bg = fsub double %i.an, %i.bf
  %i.bh = fmul double %i.bg, 5.000000e-01
  %i.bi = fadd double %i.ar, %i.bh                ; 2 uses
  %i.bj = call double @llvm.copysign.f64(double 5.000000e-01, double %i.bi)
  %i.bk = fadd double %i.bi, %i.bj
  %i.bl = fptosi double %i.bk to i32
  %i.bm = add i32 %i.au, -1
  %i.bn = add i32 %i.bm, %i.be
  %i.bo = add i32 %i.ax, -1
  %i.bp = add i32 %i.bo, %i.bl
  %.sroa.2.0.insert.ext.i = zext i32 %i.ax to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.au to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.5.8.insert.ext.i = zext i32 %i.bp to i64
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.bn to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %10, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.sroa.3.8.insert.insert.i, ptr %i.bq, align 8
  %i.br = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  br i1 %i.br, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  %i.bs = fadd double %i.u, 0.000000e+00          ; 4 uses
  store double %i.am, ptr %11, align 8
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.bs, ptr %.sroa.4159.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double %i.ao, ptr %i.bt, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  store double %i.bs, ptr %.sroa.4155.0..sroa_idx, align 8
  %i.bu = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 4, !range !175, !noundef !176
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load i32, ptr %i.h, align 4
  %i.by = and i32 %i.bx, 1
  %.not.i44 = icmp eq i32 %i.by, 0
  br i1 %.not.i44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.bz = call double @llvm.copysign.f64(double 5.000000e-01, double %i.bs)
  %i.ca = fadd double %i.bs, %i.bz
  %i.cb = fptosi double %i.ca to i32
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.cb to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i
  %i.cc = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ao)
  %i.cd = fadd double %i.ao, %i.cc
  %i.ce = fptosi double %i.cd to i32
  %.sroa.0.0.insert.ext.i3.i.i = zext i32 %i.ce to i64
  %.sroa.0.0.insert.insert.i4.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i3.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %6, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i, ptr %i.cf, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

_ZN10QCPPainter8drawLineERK6QLineF.exit:          ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  %i.cg = fadd double %i.t, 0.000000e+00          ; 4 uses
  store double %i.cg, ptr %12, align 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store double %i.an, ptr %.sroa.4151.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 16
  store double %i.cg, ptr %i.ch, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store double %i.ap, ptr %.sroa.4147.0..sroa_idx, align 8
  %i.ci = load i8, ptr %i.bu, align 4, !range !175, !noundef !176
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit
  %i.ck = load i32, ptr %i.h, align 4
  %i.cl = and i32 %i.ck, 1
  %.not.i49 = icmp eq i32 %i.cl, 0
  br i1 %.not.i49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN10QCPPainter8drawLineERK6QLineF.exit
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit58

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.cm = call double @llvm.copysign.f64(double 5.000000e-01, double %i.cg)
  %i.cn = fadd double %i.cg, %i.cm
  %i.co = fptosi double %i.cn to i32
  %.sroa.0.0.insert.ext.i.i.i52 = zext i32 %i.co to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i53 = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i.i.i52
  %i.cp = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ap)
  %i.cq = fadd double %i.ap, %i.cp
  %i.cr = fptosi double %i.cq to i32
  %.sroa.2.0.insert.ext.i1.i.i54 = zext i32 %i.cr to i64
  %.sroa.2.0.insert.shift.i2.i.i55 = shl nuw i64 %.sroa.2.0.insert.ext.i1.i.i54, 32
  %.sroa.0.0.insert.insert.i4.i.i57 = or disjoint i64 %.sroa.2.0.insert.shift.i2.i.i55, %.sroa.0.0.insert.ext.i.i.i52
  store i64 %.sroa.0.0.insert.insert.i.i.i53, ptr %5, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i57, ptr %i.cs, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit58

_ZN10QCPPainter8drawLineERK6QLineF.exit58:        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  br label %bb.ad

bb.o:                                             ; preds = %bb.d
  %i.ct = trunc i64 %i.ac to i32
  %i.cu = lshr i64 %i.ae, 32
  %i.cv = trunc nuw i64 %i.cu to i32
  %i.cw = lshr i64 %i.ac, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %i.cy = sitofp i32 %i.cx to double
  %i.cz = fcmp ogt double %i.u, %i.cy
  %i.da = sitofp i32 %i.cv to double
  %i.db = fcmp olt double %i.u, %i.da
  %or.cond = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  %i.dc = sitofp <2 x i32> %i.aj to <2 x double>  ; 4 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  store double %i.dd, ptr %13, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 8
  store double %i.u, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dg = extractelement <2 x double> %i.dc, i64 1
  store double %i.dg, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 24
  store double %i.u, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %1, i64 12
  %i.dj = load i8, ptr %i.di, align 4, !range !175, !noundef !176
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = load i32, ptr %i.h, align 4
  %i.dm = and i32 %i.dl, 1
  %.not.i59 = icmp eq i32 %i.dm, 0
  br i1 %.not.i59, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit68

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.dn = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.dc)
  %i.do = call double @llvm.copysign.f64(double 5.000000e-01, double %i.u)
  %i.dp = fadd double %i.u, %i.do
  %i.dq = fptosi double %i.dp to i32
  %.sroa.2.0.insert.ext.i.i.i60 = zext i32 %i.dq to i64
  %.sroa.2.0.insert.shift.i.i.i61 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i60, 32
  %i.dr = fadd <2 x double> %i.dn, %i.dc
  %i.ds = fptosi <2 x double> %i.dr to <2 x i32>
  %i.dt = zext <2 x i32> %i.ds to <2 x i64>
  %i.du = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i61, i64 0
  %i.dv = shufflevector <2 x i64> %i.du, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dw = or disjoint <2 x i64> %i.dv, %i.dt
  store <2 x i64> %i.dw, ptr %4, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit68

_ZN10QCPPainter8drawLineERK6QLineF.exit68:        ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  %.pre = load i32, ptr %9, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit68, %bb.o
  %i.dx = phi i32 [ %.pre, %_ZN10QCPPainter8drawLineERK6QLineF.exit68 ], [ %i.ct, %bb.o ]
  %i.dy = sitofp i32 %i.dx to double
  %i.dz = fcmp ogt double %i.t, %i.dy
  br i1 %i.dz, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.ea = load i32, ptr %i.ad, align 8
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fcmp olt double %i.t, %i.eb
  br i1 %i.ec, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  %18 = load <2 x i32>, ptr %9, align 8
  %i.ed = shufflevector <2 x i32> %18, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = insertelement <2 x i32> %i.ed, i32 %i.ef, i64 1
  %i.eh = sitofp <2 x i32> %i.eg to <2 x double>  ; 4 uses
  store double %i.t, ptr %14, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ej = extractelement <2 x double> %i.eh, i64 0
  store double %i.ej, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 16
  store double %i.t, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.em = extractelement <2 x double> %i.eh, i64 1
  store double %i.em, ptr %i.el, align 8
  %i.en = getelementptr i8, ptr %1, i64 12
  %i.eo = load i8, ptr %i.en, align 4, !range !175, !noundef !176
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = load i32, ptr %i.h, align 4
  %i.er = and i32 %i.eq, 1
  %.not.i69 = icmp eq i32 %i.er, 0
  br i1 %.not.i69, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit78

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.es = call double @llvm.copysign.f64(double 5.000000e-01, double %i.t)
  %i.et = fadd double %i.t, %i.es
  %i.eu = fptosi double %i.et to i32
  %i.ev = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.eh)
  %.sroa.0.0.insert.ext.i.i.i72 = zext i32 %i.eu to i64
  %i.ew = fadd <2 x double> %i.ev, %i.eh
  %i.ex = fptosi <2 x double> %i.ew to <2 x i32>
  %i.ey = zext <2 x i32> %i.ex to <2 x i64>
  %i.ez = shl nuw <2 x i64> %i.ey, splat (i64 32)
  %i.fa = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.ext.i.i.i72, i64 0
  %i.fb = shufflevector <2 x i64> %i.fa, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fc = or disjoint <2 x i64> %i.ez, %i.fb
  store <2 x i64> %i.fc, ptr %3, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit78

_ZN10QCPPainter8drawLineERK6QLineF.exit78:        ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  br label %bb.ad

bb.z:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  %i.fd = fsub double %i.t, %i.x                  ; 5 uses
  %i.fe = fsub double %i.u, %i.x                  ; 5 uses
  %i.ff = fadd double %i.t, %i.x
  %i.fg = fadd double %i.u, %i.x
  %i.fh = fsub double %i.ff, %i.fd
  %i.fi = fsub double %i.fg, %i.fe
  %i.fj = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fd)
  %i.fk = fadd double %i.fd, %i.fj
  %i.fl = fptosi double %i.fk to i32              ; 3 uses
  %i.fm = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fe)
  %i.fn = fadd double %i.fe, %i.fm
  %i.fo = fptosi double %i.fn to i32              ; 3 uses
  %i.fp = sitofp i32 %i.fl to double
  %i.fq = fsub double %i.fd, %i.fp
  %i.fr = fmul double %i.fq, 5.000000e-01
  %i.fs = fadd double %i.fh, %i.fr                ; 2 uses
  %i.ft = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fs)
  %i.fu = fadd double %i.fs, %i.ft
  %i.fv = fptosi double %i.fu to i32
  %i.fw = sitofp i32 %i.fo to double
  %i.fx = fsub double %i.fe, %i.fw
  %i.fy = fmul double %i.fx, 5.000000e-01
  %i.fz = fadd double %i.fi, %i.fy                ; 2 uses
  %i.ga = call double @llvm.copysign.f64(double 5.000000e-01, double %i.fz)
  %i.gb = fadd double %i.fz, %i.ga
  %i.gc = fptosi double %i.gb to i32
  %i.gd = add i32 %i.fl, -1
  %i.ge = add i32 %i.gd, %i.fv
  %i.gf = add i32 %i.fo, -1
  %i.gg = add i32 %i.gf, %i.gc
  %.sroa.2.0.insert.ext.i83 = zext i32 %i.fo to i64
  %.sroa.2.0.insert.shift.i84 = shl nuw i64 %.sroa.2.0.insert.ext.i83, 32
  %.sroa.0.0.insert.ext.i85 = zext i32 %i.fl to i64
  %.sroa.0.0.insert.insert.i86 = or disjoint i64 %.sroa.2.0.insert.shift.i84, %.sroa.0.0.insert.ext.i85
  %.sroa.5.8.insert.ext.i88 = zext i32 %i.gg to i64
  %.sroa.5.8.insert.shift.i89 = shl nuw i64 %.sroa.5.8.insert.ext.i88, 32
  %.sroa.3.8.insert.ext.i90 = zext i32 %i.ge to i64
  %.sroa.3.8.insert.insert.i91 = or disjoint i64 %.sroa.5.8.insert.shift.i89, %.sroa.3.8.insert.ext.i90
  store i64 %.sroa.0.0.insert.insert.i86, ptr %15, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.3.8.insert.insert.i91, ptr %i.gh, align 8
  %i.gi = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %15) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  br i1 %i.gi, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.gj = fmul double %i.x, 2.000000e+00          ; 2 uses
  store double %i.fd, ptr %2, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.fe, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.gj, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.gj, ptr %i.gm, align 8
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %bb.ad

bb.ab:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #49
  %i.gn = fsub double %i.t, %i.x                  ; 5 uses
  %i.go = fsub double %i.u, %i.x                  ; 5 uses
  %i.gp = fadd double %i.t, %i.x
  %i.gq = fadd double %i.u, %i.x
  %i.gr = fsub double %i.gp, %i.gn                ; 2 uses
  %i.gs = fsub double %i.gq, %i.go                ; 2 uses
  %i.gt = call double @llvm.copysign.f64(double 5.000000e-01, double %i.gn)
  %i.gu = fadd double %i.gn, %i.gt
  %i.gv = fptosi double %i.gu to i32              ; 3 uses
  %i.gw = call double @llvm.copysign.f64(double 5.000000e-01, double %i.go)
  %i.gx = fadd double %i.go, %i.gw
  %i.gy = fptosi double %i.gx to i32              ; 3 uses
  %i.gz = sitofp i32 %i.gv to double
  %i.ha = fsub double %i.gn, %i.gz
  %i.hb = fmul double %i.ha, 5.000000e-01
  %i.hc = fadd double %i.gr, %i.hb                ; 2 uses
  %i.hd = call double @llvm.copysign.f64(double 5.000000e-01, double %i.hc)
  %i.he = fadd double %i.hc, %i.hd
  %i.hf = fptosi double %i.he to i32
  %i.hg = sitofp i32 %i.gy to double
  %i.hh = fsub double %i.go, %i.hg
  %i.hi = fmul double %i.hh, 5.000000e-01
  %i.hj = fadd double %i.gs, %i.hi                ; 2 uses
  %i.hk = call double @llvm.copysign.f64(double 5.000000e-01, double %i.hj)
  %i.hl = fadd double %i.hj, %i.hk
  %i.hm = fptosi double %i.hl to i32
  %i.hn = add i32 %i.gv, -1
  %i.ho = add i32 %i.hn, %i.hf
  %i.hp = add i32 %i.gy, -1
  %i.hq = add i32 %i.hp, %i.hm
  %.sroa.2.0.insert.ext.i97 = zext i32 %i.gy to i64
  %.sroa.2.0.insert.shift.i98 = shl nuw i64 %.sroa.2.0.insert.ext.i97, 32
  %.sroa.0.0.insert.ext.i99 = zext i32 %i.gv to i64
  %.sroa.0.0.insert.insert.i100 = or disjoint i64 %.sroa.2.0.insert.shift.i98, %.sroa.0.0.insert.ext.i99
  %.sroa.5.8.insert.ext.i102 = zext i32 %i.hq to i64
  %.sroa.5.8.insert.shift.i103 = shl nuw i64 %.sroa.5.8.insert.ext.i102, 32
  %.sroa.3.8.insert.ext.i104 = zext i32 %i.ho to i64
  %.sroa.3.8.insert.insert.i105 = or disjoint i64 %.sroa.5.8.insert.shift.i103, %.sroa.3.8.insert.ext.i104
  store i64 %.sroa.0.0.insert.insert.i100, ptr %16, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.sroa.3.8.insert.insert.i105, ptr %i.hr, align 8
  %i.hs = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %16) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  br i1 %i.hs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #49
  store double %i.gn, ptr %17, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %17, i64 8
  store double %i.go, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %17, i64 16
  store double %i.gr, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 24
  store double %i.gs, ptr %i.hv, align 8
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  br label %bb.ad

bb.ad:                                            ; preds = %bb.d, %_ZN10QCPPainter8drawLineERK6QLineF.exit58, %bb.g, %_ZN10QCPPainter8drawLineERK6QLineF.exit78, %bb.u, %bb.t, %bb.aa, %bb.z, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void

bb.af:                                            ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.ak, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPItemTracer7mainPenEv(ptr dead_on_unwind noalias writable sret(%class.QPen) align 8 %0, ptr noundef align 8 dereferenceable_or_null(209) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 129
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 152, i64 144
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.d) #49
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPItemTracer9mainBrushEv(ptr dead_on_unwind noalias writable sret(%class.QBrush) align 8 %0, ptr noundef align 8 dereferenceable_or_null(209) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 129
end_hunk_1
