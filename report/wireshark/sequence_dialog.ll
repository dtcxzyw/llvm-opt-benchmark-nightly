Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/sequence_dialog?download=true
inline.NumInlined: 1196
inline.NumDeleted: 451
begin_hunk_0_@_ZN14SequenceDialog13exportDiagramEv:bb.a

bb.m:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit105

bb.n:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.az = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i102, label %_ZN7QStringD2Ev.exit105, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103:   ; preds = %bb.n
  %i.ba = atomicrmw add ptr %i.az, i32 -1 acq_rel, align 4
  %.not.i.i104 = icmp eq i32 %i.ba, 1
  br i1 %.not.i.i104, label %bb.o, label %_ZN7QStringD2Ev.exit105

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103
  %i.bb = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bb, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit105

_ZN7QStringD2Ev.exit105:                          ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %i.ay, %bb.n ], [ %i.ay, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i103 ], [ %i.ay, %bb.o ]
  %i.bc = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i106, label %_ZN17QArrayDataPointerIDsED2Ev.exit113, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i107

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i107:   ; preds = %_ZN7QStringD2Ev.exit105
  %i.bd = atomicrmw add ptr %i.bc, i32 -1 acq_rel, align 4
  %.not.i.i108 = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i108, label %bb.p, label %_ZN17QArrayDataPointerIDsED2Ev.exit113

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i107
  %i.be = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.be, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit113

_ZN17QArrayDataPointerIDsED2Ev.exit113:           ; preds = %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i107, %_ZN7QStringD2Ev.exit105
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.cl

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit93, %_ZN7QStringC2ERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.bf = load ptr, ptr @mainApp, align 8
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %18, ptr noundef align 8 dereferenceable_or_null(56) @_ZN14SequenceDialog16staticMetaObjectE, ptr noundef @.str.32, ptr noundef null, i32 noundef -1)
          to label %_ZN14SequenceDialog2trEPKcS1_i.exit114 unwind label %bb.am

_ZN14SequenceDialog2trEPKcS1_i.exit114:           ; preds = %bb.q
  invoke void @_ZN15MainApplication17windowTitleStringE7QString(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %17, ptr noundef align 8 dereferenceable_or_null(168) %i.bf, ptr noundef nonnull align 8 %18)
          to label %bb.r unwind label %bb.an

bb.r:                                             ; preds = %_ZN14SequenceDialog2trEPKcS1_i.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNK4QDir13canonicalPathEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %19, ptr noundef nonnull align 8 dereferenceable_or_null(8) %6)
          to label %bb.s unwind label %bb.ao

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN19WiresharkFileDialog15getSaveFileNameEP7QWidgetRK7QStringS4_S4_PS2_6QFlagsIN11QFileDialog6OptionEE(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %16, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %13, i32 0)
          to label %bb.t unwind label %bb.ap

bb.t:                                             ; preds = %bb.s
  %i.bg = load <2 x ptr>, ptr %16, align 16
  %i.bh = load <2 x ptr>, ptr %5, align 16
  %i.bi = load ptr, ptr %5, align 16              ; 2 uses
  store <2 x ptr> %i.bg, ptr %5, align 16
  store <2 x ptr> %i.bh, ptr %16, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bj, align 16
  %i.bm = load i64, ptr %i.bk, align 16
  store i64 %i.bm, ptr %i.bj, align 16
  store i64 %i.bl, ptr %i.bk, align 16
  %.not.i.i.i115 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i115, label %_ZN7QStringD2Ev.exit118, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i116

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i116:   ; preds = %bb.t
  %i.bn = atomicrmw add ptr %i.bi, i32 -1 acq_rel, align 4
  %.not.i.i117 = icmp eq i32 %i.bn, 1
  br i1 %.not.i.i117, label %bb.u, label %_ZN7QStringD2Ev.exit118

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i116
  %i.bo = load ptr, ptr %16, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bo, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit118

_ZN7QStringD2Ev.exit118:                          ; preds = %bb.t, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i116, %bb.u
  %i.bp = load ptr, ptr %19, align 8              ; 2 uses
  %.not.i.i.i119 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i119, label %_ZN7QStringD2Ev.exit122, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i120

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i120:   ; preds = %_ZN7QStringD2Ev.exit118
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4
  %.not.i.i121 = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i121, label %bb.v, label %_ZN7QStringD2Ev.exit122

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i120
  %i.br = load ptr, ptr %19, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit122

_ZN7QStringD2Ev.exit122:                          ; preds = %_ZN7QStringD2Ev.exit118, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.bs = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i123, label %_ZN7QStringD2Ev.exit126, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i124

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i124:   ; preds = %_ZN7QStringD2Ev.exit122
  %i.bt = atomicrmw add ptr %i.bs, i32 -1 acq_rel, align 4
  %.not.i.i125 = icmp eq i32 %i.bt, 1
  br i1 %.not.i.i125, label %bb.w, label %_ZN7QStringD2Ev.exit126

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i124
  %i.bu = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bu, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit126

_ZN7QStringD2Ev.exit126:                          ; preds = %_ZN7QStringD2Ev.exit122, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i124, %bb.w
  %i.bv = load ptr, ptr %18, align 8              ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i127, label %_ZN7QStringD2Ev.exit130, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i128

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i128:   ; preds = %_ZN7QStringD2Ev.exit126
  %i.bw = atomicrmw add ptr %i.bv, i32 -1 acq_rel, align 4
  %.not.i.i129 = icmp eq i32 %i.bw, 1
  br i1 %.not.i.i129, label %bb.x, label %_ZN7QStringD2Ev.exit130

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i128
  %i.bx = load ptr, ptr %18, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bx, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit130

_ZN7QStringD2Ev.exit130:                          ; preds = %_ZN7QStringD2Ev.exit126, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i128, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.by = load i64, ptr %i.bj, align 16
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %bb.y, label %bb.cc

bb.y:                                             ; preds = %_ZN7QStringD2Ev.exit130
  %i.ca = getelementptr i8, ptr %0, i64 144       ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 176
  %i.cd = load ptr, ptr %i.cc, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.ce = getelementptr i8, ptr %i.cd, i64 48     ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 304
  %i.ch = load <2 x double>, ptr %i.cg, align 8
  store <2 x double> %i.ch, ptr %20, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.ci = getelementptr i8, ptr %i.cd, i64 56     ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 304
  %i.cl = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cm = load <2 x double>, ptr %i.ck, align 8
  store <2 x double> %i.cm, ptr %21, align 16
  %i.cn = invoke noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.cd, i32 noundef 0)
          to label %bb.z unwind label %bb.at      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr i8, ptr %i.cn, i64 108
  %.sroa.0.0.copyload.i136 = load i64, ptr %i.co, align 4
  %.sroa.2.0..sroa_idx.i137 = getelementptr i8, ptr %i.cn, i64 116
  %.sroa.2.0.copyload.i138 = load i64, ptr %.sroa.2.0..sroa_idx.i137, align 4
  %i.cp = invoke noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.cd, i32 noundef 0)
          to label %bb.aa unwind label %bb.at     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %.sroa.5263.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i138 to i32
  %.sroa.0262.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i136 to i32
  %i.cq = getelementptr i8, ptr %i.cp, i64 92
  %i.cr = getelementptr i8, ptr %i.cp, i64 100
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = load i32, ptr %i.cq, align 4
  %i.cu = add i32 %i.cs, %.sroa.0262.0.extract.trunc
  %i.cv = sub i32 %.sroa.5263.8.extract.trunc, %i.cu
  %i.cw = add i32 %i.cv, %i.ct
  %i.cx = invoke noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.cd, i32 noundef 0)
          to label %bb.ab unwind label %bb.at     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr i8, ptr %i.cx, i64 92
  %i.cz = getelementptr i8, ptr %i.cx, i64 100
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = load i32, ptr %i.cy, align 4
  %i.dc = add i32 %i.da, 1
  %i.dd = sub i32 %i.dc, %i.db
  %i.de = sitofp i32 %i.dd to double
  %i.df = load double, ptr %i.cl, align 8
  %i.dg = load double, ptr %21, align 16
  %i.dh = fsub double %i.df, %i.dg
  %i.di = fdiv double %i.de, %i.dh
  %i.dj = invoke noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.cd, i32 noundef 0)
          to label %bb.ac unwind label %bb.at     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr i8, ptr %i.dj, i64 108
  %.sroa.0.0.copyload.i141 = load i64, ptr %i.dk, align 4
  %.sroa.2.0..sroa_idx.i142 = getelementptr i8, ptr %i.dj, i64 116
  %.sroa.2.0.copyload.i143 = load i64, ptr %.sroa.2.0..sroa_idx.i142, align 4
  %i.dl = invoke noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.cd, i32 noundef 0)
          to label %bb.ad unwind label %bb.at     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i143, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i141, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.dm = getelementptr i8, ptr %i.dl, i64 104
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = getelementptr i8, ptr %i.dl, i64 96
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = add i32 %i.dn, %.sroa.0.4.extract.trunc
  %i.dr = sub i32 %.sroa.5.12.extract.trunc, %i.dq
  %i.ds = add i32 %i.dr, %i.dp
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 384), align 8
  %i.du = uitofp i32 %i.dt to double
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.dv = load double, ptr %20, align 16          ; 2 uses
  %i.dw = fadd double %i.dv, %i.du
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %22, double noundef %i.dv, double noundef %i.dw)
          to label %bb.ae unwind label %bb.bl

bb.ae:                                            ; preds = %bb.ad
  %i.dx = getelementptr i8, ptr %0, i64 168
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = sitofp i32 %i.dy to double
  %i.ea = invoke { double, double } @_ZNK8QCPRange7boundedEdd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %22, double noundef -1.000000e+00, double noundef %i.dz)
          to label %bb.af unwind label %bb.bl     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.eb = extractvalue { double, double } %i.ea, 0
  %i.ec = extractvalue { double, double } %i.ea, 1
  store double %i.eb, ptr %22, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store double %i.ec, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ed = load ptr, ptr %i.ce, align 8
  invoke void @_ZN7QCPAxis8setRangeERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(472) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.ag unwind label %bb.bl

bb.ag:                                            ; preds = %bb.af
  %i.ee = load ptr, ptr %i.ci, align 8
  %i.ef = getelementptr i8, ptr %0, i64 160       ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr i8, ptr %i.eh, i64 1032
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = uitofp i32 %i.ej to double
  %i.el = fadd double %i.ek, -5.000000e-01
  invoke void @_ZN7QCPAxis8setRangeEdd(ptr noundef align 8 dereferenceable_or_null(472) %i.ee, double noundef -5.000000e-01, double noundef %i.el)
          to label %bb.ah unwind label %bb.bl

bb.ah:                                            ; preds = %bb.ag
  %i.em = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %i.en = load double, ptr %22, align 8
  %i.eo = fsub double %i.em, %i.en
  %i.ep = getelementptr i8, ptr %0, i64 176
  %i.eq = load double, ptr %i.ep, align 8
  %i.er = fmul double %i.eq, 1.500000e+00
  %i.es = sitofp i32 %i.ds to double
  %i.et = call double @llvm.fmuladd.f64(double %i.eo, double %i.er, double %i.es)
  %i.eu = fptosi double %i.et to i32              ; 4 uses
  %i.ev = load ptr, ptr %i.ef, align 8
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr i8, ptr %i.ew, i64 1032
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = uitofp i32 %i.ey to double
  %i.fa = sitofp i32 %i.cw to double
  %i.fb = call double @llvm.fmuladd.f64(double %i.di, double %i.ez, double %i.fa)
  %i.fc = fptosi double %i.fb to i32              ; 4 uses
  %i.fd = call noundef i32 @_ZNK7QString7compareERKS_N2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 1) #23
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.ai, label %bb.ax

bb.ai:                                            ; preds = %bb.ah
  %i.ff = load ptr, ptr %i.ca, align 8
  %i.fg = getelementptr i8, ptr %i.ff, i64 176
  %i.fh = load ptr, ptr %i.fg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %23, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %24, i8 0, i64 24, i1 false)
  %i.fi = invoke noundef zeroext i1 @_ZN11QCustomPlot7savePdfERK7QStringiiN3QCP9ExportPenES2_S2_(ptr noundef align 8 dereferenceable_or_null(513) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.fc, i32 noundef %i.eu, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.fj = load ptr, ptr %24, align 8              ; 2 uses
  %.not.i.i.i146 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i146, label %_ZN7QStringD2Ev.exit149, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i147

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i147:   ; preds = %bb.aj
  %i.fk = atomicrmw add ptr %i.fj, i32 -1 acq_rel, align 4
  %.not.i.i148 = icmp eq i32 %i.fk, 1
  br i1 %.not.i.i148, label %bb.ak, label %_ZN7QStringD2Ev.exit149

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i147
  %i.fl = load ptr, ptr %24, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fl, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit149

_ZN7QStringD2Ev.exit149:                          ; preds = %bb.aj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i147, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.fm = load ptr, ptr %23, align 8              ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i150, label %_ZN7QStringD2Ev.exit153, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i151

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i151:   ; preds = %_ZN7QStringD2Ev.exit149
  %i.fn = atomicrmw add ptr %i.fm, i32 -1 acq_rel, align 4
  %.not.i.i152 = icmp eq i32 %i.fn, 1
  br i1 %.not.i.i152, label %bb.al, label %_ZN7QStringD2Ev.exit153

bb.al:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i151
  %i.fo = load ptr, ptr %23, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fo, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit153

_ZN7QStringD2Ev.exit153:                          ; preds = %_ZN7QStringD2Ev.exit149, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i151, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.bm

bb.am:                                            ; preds = %bb.q
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit165

bb.an:                                            ; preds = %_ZN14SequenceDialog2trEPKcS1_i.exit114
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit161

bb.ao:                                            ; preds = %bb.r
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit157

bb.ap:                                            ; preds = %bb.s
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ft = load ptr, ptr %19, align 8              ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i154, label %_ZN7QStringD2Ev.exit157, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i155

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i155:   ; preds = %bb.ap
  %i.fu = atomicrmw add ptr %i.ft, i32 -1 acq_rel, align 4
  %.not.i.i156 = icmp eq i32 %i.fu, 1
  br i1 %.not.i.i156, label %bb.aq, label %_ZN7QStringD2Ev.exit157

bb.aq:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i155
  %i.fv = load ptr, ptr %19, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fv, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit157

_ZN7QStringD2Ev.exit157:                          ; preds = %bb.aq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i155, %bb.ap, %bb.ao
  %.pn52 = phi { ptr, i32 } [ %i.fr, %bb.ao ], [ %i.fs, %bb.ap ], [ %i.fs, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i155 ], [ %i.fs, %bb.aq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.fw = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i158, label %_ZN7QStringD2Ev.exit161, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159:   ; preds = %_ZN7QStringD2Ev.exit157
  %i.fx = atomicrmw add ptr %i.fw, i32 -1 acq_rel, align 4
  %.not.i.i160 = icmp eq i32 %i.fx, 1
  br i1 %.not.i.i160, label %bb.ar, label %_ZN7QStringD2Ev.exit161

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159
  %i.fy = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fy, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit161

_ZN7QStringD2Ev.exit161:                          ; preds = %bb.ar, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159, %_ZN7QStringD2Ev.exit157, %bb.an
  %.pn52.pn = phi { ptr, i32 } [ %i.fq, %bb.an ], [ %.pn52, %_ZN7QStringD2Ev.exit157 ], [ %.pn52, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159 ], [ %.pn52, %bb.ar ] ; 3 uses
  %i.fz = load ptr, ptr %18, align 8              ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i162, label %_ZN7QStringD2Ev.exit165, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163:   ; preds = %_ZN7QStringD2Ev.exit161
  %i.ga = atomicrmw add ptr %i.fz, i32 -1 acq_rel, align 4
  %.not.i.i164 = icmp eq i32 %i.ga, 1
  br i1 %.not.i.i164, label %bb.as, label %_ZN7QStringD2Ev.exit165

bb.as:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163
  %i.gb = load ptr, ptr %18, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gb, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit165

_ZN7QStringD2Ev.exit165:                          ; preds = %bb.as, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163, %_ZN7QStringD2Ev.exit161, %bb.am
  %.pn52.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.am ], [ %.pn52.pn, %_ZN7QStringD2Ev.exit161 ], [ %.pn52.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163 ], [ %.pn52.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.cl

bb.at:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.ac, %bb.ab
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.au:                                            ; preds = %bb.ai
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = load ptr, ptr %24, align 8              ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i166, label %_ZN7QStringD2Ev.exit169, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167:   ; preds = %bb.au
  %i.gf = atomicrmw add ptr %i.ge, i32 -1 acq_rel, align 4
  %.not.i.i168 = icmp eq i32 %i.gf, 1
  br i1 %.not.i.i168, label %bb.av, label %_ZN7QStringD2Ev.exit169

bb.av:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167
  %i.gg = load ptr, ptr %24, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gg, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit169

end_hunk_0
