Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/sequence_diagram?download=true
inline.NumInlined: 1070
inline.NumDeleted: 502
begin_hunk_0_@_ZN15SequenceDiagram4drawEP10QCPPainter:bb.a
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %23, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit unwind label %bb.cy

_ZN5QListI6QPointElsEOS0_.exit:                   ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i
  %i.iu = load i64, ptr %i.bp, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %23, i64 noundef %i.iu, ptr noundef nonnull align 4 dereferenceable(8) %22)
          to label %.noexc355 unwind label %bb.cy

.noexc355:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit
  %i.iv = load ptr, ptr %23, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i352 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i.i.i352, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i354, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i353

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i353: ; preds = %.noexc355
  %i.iw = load atomic i32, ptr %i.iv monotonic, align 4
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i354, label %_ZN5QListI6QPointElsERKS0_.exit

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i354: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i353, %.noexc355
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %23, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsERKS0_.exit unwind label %bb.cy

_ZN5QListI6QPointElsERKS0_.exit:                  ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i353, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i354
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.iy = load <2 x i32>, ptr %22, align 8
  %i.iz = sitofp <2 x i32> %i.iy to <2 x double>
  %i.ja = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %i.hg, i64 1
  %i.jc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> <double 3.000000e+00, double 1.000000e+00>, <2 x double> %i.iz)
  %i.jd = fptosi <2 x double> %i.jc to <2 x i32>
  store <2 x i32> %i.jd, ptr %25, align 8
  %i.je = load i64, ptr %i.bp, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %23, i64 noundef %i.je, ptr noundef nonnull align 4 dereferenceable(8) %25)
          to label %.noexc360 unwind label %bb.cz

.noexc360:                                        ; preds = %_ZN5QListI6QPointElsERKS0_.exit
  %i.jf = load ptr, ptr %23, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i357 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i.i.i.i357, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i359, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i358

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i358: ; preds = %.noexc360
  %i.jg = load atomic i32, ptr %i.jf monotonic, align 4
  %i.jh = icmp sgt i32 %i.jg, 1
  br i1 %i.jh, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i359, label %_ZN5QListI6QPointElsEOS0_.exit362

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i359: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i358, %.noexc360
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %23, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit362 unwind label %bb.cz

_ZN5QListI6QPointElsEOS0_.exit362:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i358, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.ji = invoke { i64, i64 } @_ZNK4QPen5colorEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8)
          to label %bb.bu unwind label %bb.db     ; 2 uses

bb.bu:                                            ; preds = %_ZN5QListI6QPointElsEOS0_.exit362
  %.fca.0.extract = extractvalue { i64, i64 } %i.ji, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.ji, 1
  store i64 %.fca.0.extract, ptr %27, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %26, ptr noundef nonnull align 4 dereferenceable(14) %27, i32 noundef 1)
          to label %bb.bv unwind label %bb.db

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bw unwind label %bb.dc

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  invoke void @_ZN10QCPPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bx unwind label %bb.de

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.jj = sitofp i32 %i.hn to double
  store double %i.jj, ptr %28, align 8
  store double %i.im, ptr %i.bq, align 8
  %.sroa.4.0.extract.shift.i = lshr i64 %i.ih, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  store double %i.ij, ptr %i.br, align 8
  %i.jk = sitofp i32 %.sroa.4.0.extract.trunc.i to double
  store double %i.jk, ptr %i.bs, align 8
  invoke void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.by unwind label %bb.df

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.jl = load ptr, ptr %i.bt, align 8
  %i.jm = load i64, ptr %i.bp, align 8
  %i.jn = trunc i64 %i.jm to i32
  invoke void @_ZN8QPainter11drawPolygonEPK6QPointiN2Qt8FillRuleE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef %i.jl, i32 noundef %i.jn, i32 noundef 0)
          to label %_ZN8QPainter11drawPolygonERK8QPolygonN2Qt8FillRuleE.exit unwind label %bb.de

_ZN8QPainter11drawPolygonERK8QPolygonN2Qt8FillRuleE.exit: ; preds = %bb.by
  %i.jo = load i32, ptr %i.gb, align 8
  %i.jp = load i32, ptr %i.fz, align 4
  %i.jq = icmp ult i32 %i.jo, %i.jp
  %i.jr = load i32, ptr %22, align 8              ; 2 uses
  %spec.select = select i1 %i.jq, i32 %i.hn, i32 %i.jr
  %i.js = sitofp i32 %spec.select to double
  %i.jt = sub i32 %i.jr, %i.hn
  %i.ju = mul i32 %i.jt, %i.hc                    ; 2 uses
  %i.jv = sitofp i32 %i.ju to double
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.jw = getelementptr i8, ptr %i.ca, i64 72
  %i.jx = load ptr, ptr %i.jw, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %.not.i.i364 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i364, label %_ZN7QStringD2Ev.exit.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN8QPainter11drawPolygonERK8QPolygonN2Qt8FillRuleE.exit
  %i.jy = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.jx) #23
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %.split.i.i, %_ZN8QPainter11drawPolygonERK8QPolygonN2Qt8FillRuleE.exit
  %.sink5.i.i = phi i64 [ %i.jy, %.split.i.i ], [ 0, %_ZN8QPainter11drawPolygonERK8QPolygonN2Qt8FillRuleE.exit ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 %.sink5.i.i, ptr %i.jx)
          to label %bb.bz unwind label %bb.dg

bb.bz:                                            ; preds = %_ZN7QStringD2Ev.exit.i
  %i.jz = load <2 x ptr>, ptr %5, align 16
  store <2 x ptr> %i.jz, ptr %30, align 16
  %i.ka = load i64, ptr %i.bv, align 16
  store i64 %i.ka, ptr %i.bu, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  invoke void @_ZNK12QFontMetrics10elidedTextERK7QStringN2Qt13TextElideModeEii(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %29, ptr noundef nonnull align 8 dereferenceable_or_null(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %30, i32 noundef 1, i32 noundef %i.ju, i32 noundef 0)
          to label %bb.ca unwind label %bb.dh

bb.ca:                                            ; preds = %bb.bz
  %i.kb = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i366 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i366, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.ca
  %i.kc = atomicrmw sub ptr %i.kb, i32 1 acq_rel, align 4
  %.not.i.i367 = icmp eq i32 %i.kc, 1
  br i1 %.not.i.i367, label %bb.cb, label %_ZN7QStringD2Ev.exit

bb.cb:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.kd = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kd, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.ca, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.ke = invoke noundef i32 @_ZNK12QFontMetrics17horizontalAdvanceERK7QStringi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef -1)
          to label %bb.cc unwind label %bb.dj

bb.cc:                                            ; preds = %_ZN7QStringD2Ev.exit
  %i.kf = sitofp i32 %i.ke to double
  %i.kg = fsub nnan double %i.jv, %i.kf
  %i.kh = fmul nnan double %i.kg, 5.000000e-01
  %i.ki = fsub double %i.im, %i.ho
  %i.kj = fadd double %i.kh, %i.js
  %i.kk = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.kl = insertelement <2 x double> %i.kk, double %i.ki, i64 1
  %i.km = fptosi <2 x double> %i.kl to <2 x i32>
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.kn = load ptr, ptr %i.bn, align 8
  %i.ko = getelementptr i8, ptr %i.kn, i64 200
  invoke void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %31, ptr noundef align 8 dereferenceable(12) %i.ko)
          to label %_ZNK7QCPAxis13tickLabelFontEv.exit369 unwind label %bb.dk

_ZNK7QCPAxis13tickLabelFontEv.exit369:            ; preds = %bb.cc
  invoke void @_ZN8QPainter7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %31)
          to label %bb.cd unwind label %bb.dl

bb.cd:                                            ; preds = %_ZNK7QCPAxis13tickLabelFontEv.exit369
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.kp = sitofp <2 x i32> %i.km to <2 x double>
  store <2 x double> %i.kp, ptr %4, align 16
  invoke void @_ZN8QPainter8drawTextERK7QPointFRK7QString(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.ce unwind label %bb.dn

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.kq = getelementptr i8, ptr %i.ca, i64 32     ; 3 uses
  %i.kr = load i16, ptr %i.kq, align 8
  %.not = icmp eq i16 %i.kr, 0
  br i1 %.not, label %bb.dt, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ks = getelementptr i8, ptr %i.ca, i64 64     ; 3 uses
  %i.kt = load i16, ptr %i.ks, align 8
  %.not214 = icmp eq i16 %i.kt, 0
  br i1 %.not214, label %bb.dt, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ku = load i32, ptr %22, align 8              ; 2 uses
  %.sroa.0419.0.extract.trunc. = select i1 %i.hb, i32 %i.hn, i32 %i.ku
  %..sroa.0419.0.extract.trunc = select i1 %i.hb, i32 %i.ku, i32 %i.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  %.val = load i16, ptr %i.kq, align 8
  %i.kv = load i16, ptr %i.ks, align 8
  %34 = select i1 %i.hb, i16 %.val, i16 %i.kv
  %i.kw = zext i16 %34 to i32
  invoke void @_ZN7QString6numberEii(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %32, i32 noundef %i.kw, i32 noundef 10)
          to label %bb.ch unwind label %bb.do

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  %.val504 = load i16, ptr %i.ks, align 8
  %i.kx = load i16, ptr %i.kq, align 8
  %35 = select i1 %i.hb, i16 %.val504, i16 %i.kx
  %i.ky = zext i16 %35 to i32
  invoke void @_ZN7QString6numberEii(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %33, i32 noundef %i.ky, i32 noundef 10)
          to label %bb.ci unwind label %bb.dp

bb.ci:                                            ; preds = %bb.ch
  %i.kz = invoke noundef i32 @_ZNK12QFontMetrics17horizontalAdvanceERK7QStringi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef -1)
          to label %bb.cj unwind label %bb.dq

bb.cj:                                            ; preds = %bb.ci
  %i.la = sitofp i32 %.sroa.0419.0.extract.trunc. to double
  %i.lb = fsub double %i.la, %i.gy
  %i.lc = sitofp i32 %i.kz to double
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ld = fadd double %i.ho, %i.im
  %i.le = fsub double %i.lb, %i.lc
  %i.lf = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lg = insertelement <2 x double> %i.lf, double %i.ld, i64 1
  %i.lh = fptosi <2 x double> %i.lg to <2 x i32>
  %i.li = sitofp <2 x i32> %i.lh to <2 x double>  ; 2 uses
  store <2 x double> %i.li, ptr %3, align 16
  invoke void @_ZN8QPainter8drawTextERK7QPointFRK7QString(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %bb.ck unwind label %bb.dq

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.lj = sitofp i32 %..sroa.0419.0.extract.trunc to double
  %i.lk = fadd double %i.gy, %i.lj
  %i.ll = fptosi double %i.lk to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.lm = sitofp i32 %i.ll to double
  store double %i.lm, ptr %2, align 8
  %i.ln = extractelement <2 x double> %i.li, i64 1
  store double %i.ln, ptr %i.bw, align 8
  invoke void @_ZN8QPainter8drawTextERK7QPointFRK7QString(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %bb.cl unwind label %bb.dq

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.lo = load ptr, ptr %33, align 8              ; 2 uses
  %.not.i.i.i375 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i375, label %_ZN7QStringD2Ev.exit378, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i376

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i376:   ; preds = %bb.cl
  %i.lp = atomicrmw sub ptr %i.lo, i32 1 acq_rel, align 4
  %.not.i.i377 = icmp eq i32 %i.lp, 1
  br i1 %.not.i.i377, label %bb.cm, label %_ZN7QStringD2Ev.exit378

bb.cm:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i376
  %i.lq = load ptr, ptr %33, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.lq, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit378

_ZN7QStringD2Ev.exit378:                          ; preds = %bb.cl, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i376, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.lr = load ptr, ptr %32, align 8              ; 2 uses
  %.not.i.i.i379 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i379, label %_ZN7QStringD2Ev.exit382, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i380

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i380:   ; preds = %_ZN7QStringD2Ev.exit378
  %i.ls = atomicrmw sub ptr %i.lr, i32 1 acq_rel, align 4
  %.not.i.i381 = icmp eq i32 %i.ls, 1
  br i1 %.not.i.i381, label %bb.cn, label %_ZN7QStringD2Ev.exit382

bb.cn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i380
  %i.lt = load ptr, ptr %32, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.lt, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit382

_ZN7QStringD2Ev.exit382:                          ; preds = %_ZN7QStringD2Ev.exit378, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i380, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.dt

bb.co:                                            ; preds = %.critedge7
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.bm
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn202 = phi { ptr, i32 } [ %i.lv, %bb.cp ], [ %i.lu, %bb.co ]
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.ee

bb.cr:                                            ; preds = %bb.bo
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNK7QCPAxis13tickLabelFontEv.exit
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %21) #23
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn204 = phi { ptr, i32 } [ %i.lx, %bb.cs ], [ %i.lw, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.ed

bb.cu:                                            ; preds = %bb.bp
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.cv:                                            ; preds = %bb.bq
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.cw:                                            ; preds = %bb.br
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.cx:                                            ; preds = %bb.bs
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.cy:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i354, %_ZN5QListI6QPointElsEOS0_.exit, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.bt
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i359, %_ZN5QListI6QPointElsERKS0_.exit
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn206 = phi { ptr, i32 } [ %i.md, %bb.cz ], [ %i.mc, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.dz

bb.db:                                            ; preds = %bb.bu, %_ZN5QListI6QPointElsEOS0_.exit362
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.bv
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %26) #23
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn208 = phi { ptr, i32 } [ %i.mf, %bb.dc ], [ %i.me, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.dz

bb.de:                                            ; preds = %bb.by, %bb.bw
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.df:                                            ; preds = %bb.bx
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.dz

bb.dg:                                            ; preds = %_ZN7QStringD2Ev.exit.i
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit386

bb.dh:                                            ; preds = %bb.bz
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.mk = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i383 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i383, label %_ZN7QStringD2Ev.exit386, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i384

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i384:   ; preds = %bb.dh
  %i.ml = atomicrmw sub ptr %i.mk, i32 1 acq_rel, align 4
  %.not.i.i385 = icmp eq i32 %i.ml, 1
  br i1 %.not.i.i385, label %bb.di, label %_ZN7QStringD2Ev.exit386

bb.di:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i384
  %i.mm = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.mm, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit386

_ZN7QStringD2Ev.exit386:                          ; preds = %bb.di, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i384, %bb.dh, %bb.dg
  %.pn210 = phi { ptr, i32 } [ %i.mi, %bb.dg ], [ %i.mj, %bb.dh ], [ %i.mj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i384 ], [ %i.mj, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %_ZN7QStringD2Ev.exit404

bb.dj:                                            ; preds = %_ZN7QStringD2Ev.exit
  %i.mn = landingpad { ptr, i32 }
          cleanup
end_hunk_0
