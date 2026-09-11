Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMeasure?download=true
inline.NumInlined: 4217
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesclERKNS4_11LeafManagerIKSD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !247
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef -1), !inline_history !4
  br i1 %i.g, label %bb.b, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

bb.b:                                             ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  %i.h = tail call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i = icmp eq ptr %i.h, null
  br i1 %.not.i2.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.d, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.c ]
  %i.n = tail call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) ; 0 uses
  br label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i, %bb.b, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !247    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !125 ; 4 uses
  %i.r = fmul double %i.q, %i.q
  %i.s = fdiv double 1.000000e+00, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !150
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !151
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !185  ; 2 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !184
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = insertelement <2 x double> poison, double %i.q, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.r, i64 1
  br label %bb.e

._crit_edge51:                                    ; preds = %._crit_edge, %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph50, %._crit_edge
  %.sroa.525.049 = phi i64 [ %i.y, %.lr.ph50 ], [ %i.ba, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !212, !nonnull !76, !align !213
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !214
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.525.049
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !215
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.aq)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !218 ; 2 uses
  %.not45 = icmp eq i32 %i.ar, 512
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph75.6, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %bb.e
  %i.as = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.io, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread ], [ %i.io, %.lr.ph.i.i.i.i.5 ], [ %i.io, %.lr.ph.i.i.i.i.4 ], [ %i.io, %.lr.ph.i.i.i.i.3 ], [ %i.io, %.lr.ph.i.i.i.i.2 ], [ %i.io, %.lr.ph.i.i.i.i.1 ], [ %i.io, %.lr.ph.i.i.i.i ], [ %i.io, %.lr.ph.i.i.i.i.preheader ], [ %i.io, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.io, %.lr.ph75.6 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.at = load ptr, ptr %0, align 8, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !106
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.525.049 ; 2 uses
  %i.ax = extractelement <2 x double> %i.as, i64 0
  store double %i.ax, ptr %i.aw, align 8, !tbaa !124
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.w
  %i.az = extractelement <2 x double> %i.as, i64 1
  store double %i.az, ptr %i.ay, align 8, !tbaa !124
  %i.ba = add nuw i64 %.sroa.525.049, 1           ; 2 uses
  %i.bb = load i64, ptr %1, align 8, !tbaa !184
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.e, label %._crit_edge51, !llvm.loop !621

.lr.ph:                                           ; preds = %bb.e, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
  %i.bd = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.ar, %bb.e ] ; 3 uses
  %i.be = phi <2 x double> [ %i.io, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ zeroinitializer, %bb.e ] ; 3 uses
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !224
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !225
  %i.bj = fpext float %i.bi to double
  %i.bk = fmul double %i.s, %i.bj                 ; 2 uses
  %i.bl = call noundef double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp ogt double %i.bl, 1.500000e+00
  br i1 %i.bm, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit: ; preds = %.lr.ph
  %i.bn = fmul double %i.bk, f0x4000C152382D7365
  %i.bo = call double @cos(double noundef %i.bn) #21
  %i.bp = fadd double %i.bo, 1.000000e+00
  %i.bq = fmul double %i.bp, f0x3FD5555555555555  ; 2 uses
  %i.br = fcmp ogt double %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.f, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.bs = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  %i.bt = load i32, ptr %i.ac, align 8, !tbaa !218 ; 4 uses
  %i.bu = lshr i32 %i.bt, 6
  %i.bv = lshr i32 %i.bt, 3
  %i.bw = and i32 %i.bv, 7
  %i.bx = and i32 %i.bt, 7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !226
  %i.ca = add nsw i32 %i.bz, %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 84
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !226
  %i.cd = add nsw i32 %i.cc, %i.bw
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !226
  %i.cg = add nsw i32 %i.cf, %i.bx
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.cd to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.ca to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.af, align 8
  store i32 %i.cg, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %i.ch = load ptr, ptr %i.ad, align 8, !tbaa !224
  %i.ci = zext i32 %i.bt to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !225
  %i.cl = load ptr, ptr %i.ag, align 8, !tbaa !79
  store float %i.ck, ptr %i.cl, align 4, !tbaa !225
  call void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.af)
  %i.cm = load ptr, ptr %i.ag, align 8, !tbaa !79 ; 16 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cp = load float, ptr %i.co, align 4, !tbaa !225 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !225 ; 2 uses
  %i.cs = fsub float %i.cp, %i.cr                 ; 2 uses
  %i.ct = load float, ptr %i.ah, align 4, !tbaa !248 ; 4 uses
  %i.cu = fmul float %i.ct, %i.cs                 ; 2 uses
  %i.cv = fpext float %i.cs to double
  %i.cw = load <4 x float>, ptr %i.cn, align 4, !tbaa !225 ; 3 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cz = fsub <2 x float> %i.cx, %i.cy           ; 3 uses
  %i.da = extractelement <2 x float> %i.cz, i64 0
  %i.db = fmul float %i.da, %i.ct                 ; 2 uses
  %i.dc = extractelement <2 x float> %i.cz, i64 1
  %i.dd = fmul float %i.dc, %i.ct                 ; 2 uses
  %i.de = fmul float %i.dd, %i.dd
  %i.df = call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.de)
  %i.dg = call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.df)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.dg)
  %i.dh = fpext float %sqrt.i to double
  %i.di = fpext <2 x float> %i.cz to <2 x double>
  %i.dj = insertelement <4 x double> poison, double %i.bq, i64 0
  %i.dk = insertelement <4 x double> %i.dj, double %i.cv, i64 1
  %i.dl = shufflevector <2 x double> %i.di, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x double> %i.dk, <4 x double> %i.dl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dn = fmul <4 x double> %i.dm, <double 1.000000e+00, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01> ; 7 uses
  %i.do = insertelement <4 x double> %i.dn, double %i.dh, i64 0
  %i.dp = fmul <4 x double> %i.dn, %i.do          ; 7 uses
  %i.dq = extractelement <4 x double> %i.dp, i64 2
  %i.dr = extractelement <4 x double> %i.dp, i64 3
  %i.ds = fadd double %i.dq, %i.dr
  %i.dt = extractelement <4 x double> %i.dp, i64 1 ; 2 uses
  %i.du = fadd double %i.ds, %i.dt                ; 2 uses
  %i.dv = fcmp ugt double %i.du, 1.000000e-15
  br i1 %i.dv, label %bb.g, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit

bb.g:                                             ; preds = %bb.f
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.dx = load <2 x float>, ptr %i.dw, align 4, !tbaa !225 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !225
  %i.ea = load float, ptr %i.cm, align 4, !tbaa !225 ; 2 uses
  %i.eb = call float @llvm.fmuladd.f32(float %i.ea, float -2.000000e+00, float %i.cp)
  %i.ec = fadd float %i.cr, %i.eb
  %i.ed = fpext float %i.ec to double             ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !225
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !225
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !225
  %i.el = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.em = load float, ptr %i.el, align 4, !tbaa !225
  %i.en = fsub float %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !225
  %i.eq = fadd float %i.en, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.cm, i64 52
  %i.es = load float, ptr %i.er, align 4, !tbaa !225
  %i.et = fsub float %i.eq, %i.es
  %i.eu = fpext float %i.et to double
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !225
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cm, i64 60
  %i.ey = load <2 x float>, ptr %i.eg, align 4, !tbaa !225 ; 2 uses
  %i.ez = load <2 x float>, ptr %i.ex, align 4, !tbaa !225 ; 2 uses
  %i.fa = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.ew, i64 1
  %i.fc = shufflevector <2 x float> %i.ey, <2 x float> %i.ez, <2 x i32> <i32 1, i32 3>
  %i.fd = fsub <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x float> %i.ey, <2 x float> %i.ez, <2 x i32> <i32 0, i32 2>
  %i.ff = fadd <2 x float> %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cm, i64 68
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !225
  %i.fi = shufflevector <4 x double> %i.dn, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.fj = shufflevector <4 x double> %i.dn, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fk = fmul <2 x double> %i.fi, %i.fj          ; 2 uses
  %i.fl = fneg double %i.ed
  %sqrt.i22 = call double @llvm.sqrt.f64(double %i.du) ; 2 uses
  %i.fm = load float, ptr %i.ai, align 8, !tbaa !249
  %i.fn = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x float> %i.dx, float %i.dz, i64 1
  %i.fq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> splat (float -2.000000e+00), <2 x float> %i.fp)
  %i.fr = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> %i.dx, <2 x i32> <i32 0, i32 3>
  %i.ft = fadd <2 x float> %i.fs, %i.fq
  %i.fu = fpext <2 x float> %i.ft to <2 x double> ; 6 uses
  %i.fv = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fh, i64 1
  %i.fx = fsub <2 x float> %i.ff, %i.fw
  %i.fy = fpext <2 x float> %i.fx to <2 x double>
  %i.fz = fmul double %i.eu, 2.500000e-01         ; 4 uses
  %i.ga = fmul <2 x double> %i.fy, splat (double 2.500000e-01) ; 7 uses
  %3 = insertelement <2 x double> poison, double %i.ed, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = fadd <2 x double> %4, %i.fu                ; 2 uses
  %6 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fu)
  %i.gb = shufflevector <4 x double> %i.dn, <4 x double> poison, <2 x i32> <i32 3, i32 poison> ; 2 uses
  %i.gc = insertelement <2 x double> %i.gb, double %sqrt.i22, i64 1 ; 2 uses
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x double> %i.dn, <4 x double> %i.gd, <2 x i32> <i32 1, i32 5>
  %i.gf = fmul <2 x double> %i.gc, %i.ge          ; 4 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  %i.gh = insertelement <2 x double> %i.ga, double %i.fz, i64 0 ; 3 uses
  %i.gi = fneg <2 x double> %i.gh
  %i.gj = fmul <2 x double> %i.gh, %i.gi
  %i.gk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %4, <2 x double> %i.gj) ; 2 uses
  %i.gl = shufflevector <4 x double> %i.dp, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %7 = shufflevector <2 x double> %i.gk, <2 x double> %5, <2 x i32> <i32 0, i32 2>
  %i.gm = fmul <2 x double> %i.gl, %7
  %i.gn = shufflevector <4 x double> %i.dp, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %8 = shufflevector <2 x double> %i.gk, <2 x double> %5, <2 x i32> <i32 1, i32 3>
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %8, <2 x double> %i.gm) ; 2 uses
  %i.gp = extractelement <2 x double> %i.ga, i64 0 ; 2 uses
  %i.gq = fneg double %i.gp
  %i.gr = fmul double %i.gp, %i.gq
  %i.gs = extractelement <2 x double> %i.go, i64 0
  %i.gt = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gu = shufflevector <4 x double> %i.gt, <4 x double> %i.dp, <2 x i32> <i32 0, i32 5>
  %i.gv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gw = insertelement <2 x double> %i.gv, double %6, i64 1
  %i.gx = insertelement <2 x double> %i.go, double %i.gr, i64 0
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gw, <2 x double> %i.gx) ; 2 uses
  %i.gz = extractelement <2 x double> %i.gy, i64 0
  %i.ha = call double @llvm.fmuladd.f64(double %i.dt, double %i.gz, double %i.gs)
  %i.hb = fneg <2 x double> %i.fu
  %i.hc = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hd = insertelement <2 x double> %i.hc, double %i.fz, i64 1
  %i.he = fmul <2 x double> %i.hd, %i.hb
  %i.hf = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.gh, <2 x double> %i.he) ; 2 uses
  %shift80 = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop81 = fmul <2 x double> %i.fk, %shift80
  %i.hh = extractelement <2 x double> %foldExtExtBinop81, i64 0
  %i.hi = extractelement <2 x double> %i.hg, i64 0
  %i.hj = call double @llvm.fmuladd.f64(double %i.gg, double %i.hi, double %i.hh)
  %i.hk = shufflevector <2 x double> %i.ga, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hl = shufflevector <4 x double> %i.dn, <4 x double> %i.hk, <2 x i32> <i32 1, i32 4>
  %i.hm = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.fl, i64 1
  %i.ho = fmul <2 x double> %i.hl, %i.hn
  %i.hp = insertelement <2 x double> %i.gb, double %i.fz, i64 1
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.ga, <2 x double> %i.ho)
  %i.hr = shufflevector <2 x double> %i.fi, <2 x double> %i.fk, <2 x i32> <i32 0, i32 3>
  %i.hs = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ht = fmul <2 x double> %i.gf, %i.hs
  %i.hu = insertelement <2 x double> %i.ht, double %i.hj, i64 1
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.hq, <2 x double> %i.hu)
  %i.hw = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hx = insertelement <2 x double> %i.hw, double %i.ha, i64 1
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.hx)
  %i.hz = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %i.fm, i64 1
  %i.ib = fpext <2 x float> %i.ia to <2 x double>
  %i.ic = fmul <2 x double> %i.hy, %i.ib
  %i.id = insertelement <2 x double> %i.gf, double %sqrt.i22, i64 0
  %i.ie = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.if = fmul <2 x double> %i.id, %i.ie
  %i.ig = fdiv <2 x double> %i.ic, %i.if
  %i.ih = fptrunc <2 x double> %i.ig to <2 x float>
  %i.ii = fpext <2 x float> %i.ih to <2 x double>
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit: ; preds = %bb.f, %bb.g
  %i.ij = phi <2 x double> [ %i.ii, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ik = shufflevector <4 x double> %i.dp, <4 x double> poison, <2 x i32> zeroinitializer
  %i.il = fmul <2 x double> %i.ik, %i.ij
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.al, <2 x double> %i.be)
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !218
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.in = phi i32 [ %.pre, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit ], [ %i.bd, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bd, %.lr.ph ]
  %i.io = phi <2 x double> [ %i.im, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit ], [ %i.be, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.be, %.lr.ph ] ; 11 uses
  %i.ip = load ptr, ptr %i.aj, align 8, !tbaa !241 ; 8 uses
  %i.iq = add i32 %i.in, 1                        ; 4 uses
  %i.ir = lshr i32 %i.iq, 6                       ; 3 uses
  %i.is = icmp ugt i32 %i.iq, 511
  br i1 %i.is, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.it = and i32 %i.iq, 63
  %i.iu = zext nneg i32 %i.ir to i64              ; 8 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !229 ; 2 uses
  %i.ix = zext nneg i32 %i.it to i64              ; 2 uses
  %i.iy = shl nuw i64 1, %i.ix
  %i.iz = and i64 %i.iw, %i.iy
  %.not.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ja = shl nsw i64 -1, %i.ix
  %i.jb = and i64 %i.iw, %i.ja                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.jb, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %exitcond.not.i.i.i.i73 = icmp eq i32 %i.ir, 7
  br i1 %exitcond.not.i.i.i.i73, label %._crit_edge, label %.lr.ph75

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph75
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph75.1

.lr.ph75.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.iu, 2 ; 3 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next.i.i.i.i.1
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.jd, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph75.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph75.2

.lr.ph75.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.iu, 3 ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next.i.i.i.i.2
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.jf, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph75.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph75.3

.lr.ph75.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.iu, 4 ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next.i.i.i.i.3
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.jh, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph75.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph75.4

.lr.ph75.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.iu, 5 ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next.i.i.i.i.4
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.jj, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph75.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph75.5

.lr.ph75.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.iu, 6 ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next.i.i.i.i.5
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.jl, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph75.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph75.6

.lr.ph75.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.iu, 7 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next.i.i.i.i.6
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.jn, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph75:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.iu, 1 ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next.i.i.i.i
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph75.6, %.lr.ph75.5, %.lr.ph75.4, %.lr.ph75.3, %.lr.ph75.2, %.lr.ph75.1, %.lr.ph75
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph75 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph75.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph75.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph75.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph75.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph75.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph75.6 ]
  %.lcssa = phi i64 [ %i.jp, %.lr.ph75 ], [ %i.jd, %.lr.ph75.1 ], [ %i.jf, %.lr.ph75.2 ], [ %i.jh, %.lr.ph75.3 ], [ %i.jj, %.lr.ph75.4 ], [ %i.jl, %.lr.ph75.5 ], [ %i.jn, %.lr.ph75.6 ]
  %i.jq = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.i
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ir, %bb.i ], [ %i.jq, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.jb, %bb.i ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.jr = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.js = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = or disjoint i32 %i.jr, %i.jt
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.h, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ju, %.critedge.i.i.i.i ], [ %i.iq, %bb.h ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ac, align 8, !tbaa !218
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !622
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #4 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC5ERKSI_) align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !247    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !247
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123
  tail call void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(148) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6reduceEi(ptr noundef nonnull align 8 dereferenceable(86) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::less.339", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !151  ; 5 uses
  %i.h = mul i64 %i.g, %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE4initERKNS1_5CoordE:bb.a
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %i.cd, ptr %.sroa.232.0..sroa_idx, align 8
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %11)
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !124
  %i.cg = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  store double %i.cf, ptr %i.ch, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ci = load i32, ptr %1, align 4, !tbaa !226
  %i.cj = add nsw i32 %i.ci, -1
  %i.ck = load i32, ptr %i.d, align 4, !tbaa !226
  %i.cl = load i32, ptr %i.f, align 4, !tbaa !226
  %i.cm = add nsw i32 %i.cl, -1
  %.sroa.2.0.insert.ext.i141 = zext i32 %i.ck to i64
  %.sroa.2.0.insert.shift.i142 = shl nuw i64 %.sroa.2.0.insert.ext.i141, 32
  %.sroa.0.0.insert.ext.i143 = zext i32 %i.cj to i64
  %.sroa.0.0.insert.insert.i144 = or disjoint i64 %.sroa.2.0.insert.shift.i142, %.sroa.0.0.insert.ext.i143
  store i64 %.sroa.0.0.insert.insert.i144, ptr %12, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %i.cm, ptr %.sroa.228.0..sroa_idx, align 8
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.co = load double, ptr %i.cn, align 8, !tbaa !124
  %i.cp = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  store double %i.co, ptr %i.cq, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.cr = load i32, ptr %1, align 4, !tbaa !226
  %i.cs = add nsw i32 %i.cr, 1
  %i.ct = load i32, ptr %i.d, align 4, !tbaa !226
  %i.cu = load i32, ptr %i.f, align 4, !tbaa !226
  %i.cv = add nsw i32 %i.cu, -1
  %.sroa.2.0.insert.ext.i147 = zext i32 %i.ct to i64
  %.sroa.2.0.insert.shift.i148 = shl nuw i64 %.sroa.2.0.insert.ext.i147, 32
  %.sroa.0.0.insert.ext.i149 = zext i32 %i.cs to i64
  %.sroa.0.0.insert.insert.i150 = or disjoint i64 %.sroa.2.0.insert.shift.i148, %.sroa.0.0.insert.ext.i149
  store i64 %.sroa.0.0.insert.insert.i150, ptr %13, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.cv, ptr %.sroa.224.0..sroa_idx, align 8
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %13)
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !124
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  store double %i.cx, ptr %i.cz, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.da = load i32, ptr %1, align 4, !tbaa !226
  %i.db = add nsw i32 %i.da, -1
  %i.dc = load i32, ptr %i.d, align 4, !tbaa !226
  %i.dd = load i32, ptr %i.f, align 4, !tbaa !226
  %i.de = add nsw i32 %i.dd, 1
  %.sroa.2.0.insert.ext.i153 = zext i32 %i.dc to i64
  %.sroa.2.0.insert.shift.i154 = shl nuw i64 %.sroa.2.0.insert.ext.i153, 32
  %.sroa.0.0.insert.ext.i155 = zext i32 %i.db to i64
  %.sroa.0.0.insert.insert.i156 = or disjoint i64 %.sroa.2.0.insert.shift.i154, %.sroa.0.0.insert.ext.i155
  store i64 %.sroa.0.0.insert.insert.i156, ptr %14, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.de, ptr %.sroa.220.0..sroa_idx, align 8
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %14)
  %i.dg = load double, ptr %i.df, align 8, !tbaa !124
  %i.dh = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  store double %i.dg, ptr %i.di, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.dj = load i32, ptr %1, align 4, !tbaa !226
  %i.dk = add nsw i32 %i.dj, 1
  %i.dl = load i32, ptr %i.d, align 4, !tbaa !226
  %i.dm = load i32, ptr %i.f, align 4, !tbaa !226
  %i.dn = add nsw i32 %i.dm, 1
  %.sroa.2.0.insert.ext.i159 = zext i32 %i.dl to i64
  %.sroa.2.0.insert.shift.i160 = shl nuw i64 %.sroa.2.0.insert.ext.i159, 32
  %.sroa.0.0.insert.ext.i161 = zext i32 %i.dk to i64
  %.sroa.0.0.insert.insert.i162 = or disjoint i64 %.sroa.2.0.insert.shift.i160, %.sroa.0.0.insert.ext.i161
  store i64 %.sroa.0.0.insert.insert.i162, ptr %15, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.dn, ptr %.sroa.216.0..sroa_idx, align 8
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %15)
  %i.dp = load double, ptr %i.do, align 8, !tbaa !124
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 112
  store double %i.dp, ptr %i.dr, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.ds = load i32, ptr %1, align 4, !tbaa !226
  %i.dt = load i32, ptr %i.d, align 4, !tbaa !226
  %i.du = add nsw i32 %i.dt, -1
  %i.dv = load i32, ptr %i.f, align 4, !tbaa !226
  %i.dw = add nsw i32 %i.dv, -1
  %.sroa.2.0.insert.ext.i165 = zext i32 %i.du to i64
  %.sroa.2.0.insert.shift.i166 = shl nuw i64 %.sroa.2.0.insert.ext.i165, 32
  %.sroa.0.0.insert.ext.i167 = zext i32 %i.ds to i64
  %.sroa.0.0.insert.insert.i168 = or disjoint i64 %.sroa.2.0.insert.shift.i166, %.sroa.0.0.insert.ext.i167
  store i64 %.sroa.0.0.insert.insert.i168, ptr %16, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dw, ptr %.sroa.212.0..sroa_idx, align 8
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %16)
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !124
  %i.dz = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 120
  store double %i.dy, ptr %i.ea, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.eb = load i32, ptr %1, align 4, !tbaa !226
  %i.ec = load i32, ptr %i.d, align 4, !tbaa !226
  %i.ed = add nsw i32 %i.ec, 1
  %i.ee = load i32, ptr %i.f, align 4, !tbaa !226
  %i.ef = add nsw i32 %i.ee, -1
  %.sroa.2.0.insert.ext.i171 = zext i32 %i.ed to i64
  %.sroa.2.0.insert.shift.i172 = shl nuw i64 %.sroa.2.0.insert.ext.i171, 32
  %.sroa.0.0.insert.ext.i173 = zext i32 %i.eb to i64
  %.sroa.0.0.insert.insert.i174 = or disjoint i64 %.sroa.2.0.insert.shift.i172, %.sroa.0.0.insert.ext.i173
  store i64 %.sroa.0.0.insert.insert.i174, ptr %17, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %i.ef, ptr %.sroa.28.0..sroa_idx, align 8
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %17)
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !124
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 128
  store double %i.eh, ptr %i.ej, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.ek = load i32, ptr %1, align 4, !tbaa !226
  %i.el = load i32, ptr %i.d, align 4, !tbaa !226
  %i.em = add nsw i32 %i.el, -1
  %i.en = load i32, ptr %i.f, align 4, !tbaa !226
  %i.eo = add nsw i32 %i.en, 1
  %.sroa.2.0.insert.ext.i177 = zext i32 %i.em to i64
  %.sroa.2.0.insert.shift.i178 = shl nuw i64 %.sroa.2.0.insert.ext.i177, 32
  %.sroa.0.0.insert.ext.i179 = zext i32 %i.ek to i64
  %.sroa.0.0.insert.insert.i180 = or disjoint i64 %.sroa.2.0.insert.shift.i178, %.sroa.0.0.insert.ext.i179
  store i64 %.sroa.0.0.insert.insert.i180, ptr %18, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %i.eo, ptr %.sroa.24.0..sroa_idx, align 8
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %18)
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !124
  %i.er = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 136
  store double %i.eq, ptr %i.es, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.et = load i32, ptr %1, align 4, !tbaa !226
  %i.eu = load i32, ptr %i.d, align 4, !tbaa !226
  %i.ev = add nsw i32 %i.eu, 1
  %i.ew = load i32, ptr %i.f, align 4, !tbaa !226
  %i.ex = add nsw i32 %i.ew, 1
  %.sroa.2.0.insert.ext.i183 = zext i32 %i.ev to i64
  %.sroa.2.0.insert.shift.i184 = shl nuw i64 %.sroa.2.0.insert.ext.i183, 32
  %.sroa.0.0.insert.ext.i185 = zext i32 %i.et to i64
  %.sroa.0.0.insert.insert.i186 = or disjoint i64 %.sroa.2.0.insert.shift.i184, %.sroa.0.0.insert.ext.i185
  store i64 %.sroa.0.0.insert.insert.i186, ptr %19, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %i.ex, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %19)
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !124
  %i.fa = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  store double %i.ez, ptr %i.fb, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #9

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!46, !47}
!llvm.ident = !{!48}
!llvm.errno.tbaa = !{!53}

!0 = distinct !{null, null}
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{ptr @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv, null}
!5 = distinct !{!5, !219}
!6 = distinct !{!6, !219}
!7 = distinct !{!7, !219}
!8 = distinct !{!8, !219}
!9 = distinct !{!9, !219}
!10 = distinct !{ptr @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv, null}
!11 = distinct !{!11, !219}
!12 = distinct !{!12, !219}
!13 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = distinct !{null, null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!17 = distinct !{null, null, null, null}
!18 = distinct !{!18, !219}
!19 = distinct !{!19, !219}
!20 = distinct !{!20, !219}
!21 = distinct !{!21, !219}
!22 = distinct !{null}
!23 = distinct !{!23, !219}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{!27, !219}
!28 = distinct !{ptr @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!29 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!30 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!31 = distinct !{null}
!32 = distinct !{!32, !219}
!33 = distinct !{!33, !219}
!34 = distinct !{null}
!35 = distinct !{!35, !219}
!36 = distinct !{!36, !219}
!37 = distinct !{!37, !219}
!38 = distinct !{null}
!39 = distinct !{!39, !219}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{!44, !219}
!45 = distinct !{null}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 2}
!48 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"omnipotent char", !49, i64 0}
!51 = !{!"int", !50, i64 0}
!52 = !{!"__libc_errno", !51, i64 0}
!53 = !{!52, !51, i64 0}
!54 = !{!"any pointer", !50, i64 0}
!55 = !{!"p1 _ZTSN7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !54, i64 0}
!56 = !{!"p1 _ZTSN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !54, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE", !56, i64 0}
!58 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_EEE", !57, i64 0}
!59 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_EEE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_EE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_ELb1ELb1EE", !60, i64 0}
!62 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_EE", !61, i64 0}
!63 = !{!"p1 double", !54, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPdLb0EE", !63, i64 0}
!65 = !{!"_ZTSSt11_Tuple_implILm0EJPdSt14default_deleteIA_dEEE", !64, i64 0}
!66 = !{!"_ZTSSt5tupleIJPdSt14default_deleteIA_dEEE", !65, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_implIdSt14default_deleteIA_dEE", !66, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_dataIdSt14default_deleteIA_dELb1ELb1EE", !67, i64 0}
!69 = !{!"_ZTSSt10unique_ptrIA_dSt14default_deleteIS0_EE", !68, i64 0}
!70 = !{!"p1 _ZTSN7openvdb5v13_04util15NullInterrupterE", !54, i64 0}
!71 = !{!"double", !50, i64 0}
!72 = !{!"bool", !50, i64 0}
!73 = !{!"_ZTSN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEE", !55, i64 8, !62, i64 16, !69, i64 24, !70, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !51, i64 80, !72, i64 84, !72, i64 85}
!74 = !{!73, !72, i64 84}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!"p1 float", !54, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!78, !77, i64 0}
!80 = !{!78, !77, i64 16}
!81 = !{!73, !71, i64 48}
!82 = !{!"p1 _ZTSN7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEE", !54, i64 0}
!83 = !{!"p1 _ZTSN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEE", !54, i64 0}
!84 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE", !83, i64 0}
!85 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_EEE", !84, i64 0}
!86 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_EEE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_EE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_ELb1ELb1EE", !87, i64 0}
!89 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISE_EE", !88, i64 0}
!90 = !{!"_ZTSN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEE", !82, i64 8, !89, i64 16, !69, i64 24, !70, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !51, i64 80, !72, i64 84, !72, i64 85}
!91 = !{!90, !72, i64 84}
!92 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!93 = !{!92, !63, i64 0}
!94 = !{!92, !63, i64 16}
!95 = !{!90, !71, i64 48}
!96 = !{!73, !71, i64 56}
!97 = !{!90, !71, i64 56}
!98 = !{!73, !72, i64 85}
!99 = !{!73, !71, i64 72}
!100 = !{!90, !72, i64 85}
!101 = !{!90, !71, i64 72}
!102 = !{!"vtable pointer", !49, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!73, !70, i64 32}
!105 = !{!73, !51, i64 80}
!106 = !{!63, !63, i64 0}
!107 = !{!"p1 _ZTSN7openvdb5v13_04math9TransformE", !54, i64 0}
!108 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0}
!109 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !108, i64 0}
!110 = !{!"_ZTSSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !109, i64 8}
!111 = !{!110, !107, i64 0}
!112 = !{!"p1 _ZTSN7openvdb5v13_04math7MapBaseE", !54, i64 0}
!113 = !{!"_ZTSSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EE", !112, i64 0, !109, i64 8}
!114 = !{!113, !112, i64 0}
!115 = !{!"p1 omnipotent char", !54, i64 0}
!116 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !115, i64 0}
!117 = !{!116, !115, i64 0}
!118 = !{!"long", !50, i64 0}
!119 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !116, i64 0, !118, i64 8, !50, i64 16}
!120 = !{!119, !118, i64 8}
!121 = !{!50, !50, i64 0}
!122 = !{!119, !115, i64 0}
!123 = !{!73, !55, i64 8}
!124 = !{!71, !71, i64 0}
!125 = !{!73, !71, i64 40}
!126 = !{!"p1 _ZTSN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEE", !54, i64 0}
!127 = !{!"_ZTSSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EE", !126, i64 0, !109, i64 8}
!128 = !{!127, !126, i64 0}
!129 = !{!"any p2 pointer", !54, i64 0}
!130 = !{!"p2 _ZTSN7openvdb5v13_04tree8LeafNodeIfLj3EEE", !129, i64 0}
!131 = !{!"_ZTSSt10_Head_baseILm0EPPKN7openvdb5v13_04tree8LeafNodeIfLj3EEELb0EE", !130, i64 0}
!132 = !{!"_ZTSSt11_Tuple_implILm0EJPPKN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIA_S6_EEE", !131, i64 0}
!133 = !{!"_ZTSSt5tupleIJPPKN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIA_S6_EEE", !132, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_implIPKN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIA_S6_EE", !133, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_dataIPKN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIA_S6_ELb1ELb1EE", !134, i64 0}
!136 = !{!"_ZTSSt10unique_ptrIA_PKN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS7_EE", !135, i64 0}
!137 = !{!"p1 _ZTSN7openvdb5v13_04tree10LeafBufferIfLj3EEE", !54, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree10LeafBufferIfLj3EEELb0EE", !137, i64 0}
!139 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIA_S4_EEE", !138, i64 0}
!140 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIA_S4_EEE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIA_S4_EE", !140, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIA_S4_ELb1ELb1EE", !141, i64 0}
!143 = !{!"_ZTSSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EE", !142, i64 0}
!144 = !{!"_ZTSSt14_Function_base", !50, i64 0, !54, i64 16}
!145 = !{!"_ZTSSt8functionIFvPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEEE", !144, i64 0, !54, i64 24}
!146 = !{!"_ZTSN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !126, i64 0, !118, i64 8, !118, i64 16, !118, i64 24, !136, i64 32, !130, i64 40, !143, i64 48, !137, i64 56, !145, i64 64}
!147 = !{!146, !126, i64 0}
!148 = !{!144, !54, i64 16}
!149 = !{!130, !130, i64 0}
!150 = !{!56, !56, i64 0}
!151 = !{!146, !118, i64 8}
!152 = !{!73, !71, i64 64}
!153 = !{!"p1 _ZTSN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEE", !54, i64 0}
!154 = !{!153, !153, i64 0}
end_hunk_1
