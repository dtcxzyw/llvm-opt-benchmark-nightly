Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMeasure?download=true
inline.NumInlined: 4217
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #24
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.ae
}

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
  %i.as = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.if, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread ], [ %i.if, %.lr.ph.i.i.i.i.5 ], [ %i.if, %.lr.ph.i.i.i.i.4 ], [ %i.if, %.lr.ph.i.i.i.i.3 ], [ %i.if, %.lr.ph.i.i.i.i.2 ], [ %i.if, %.lr.ph.i.i.i.i.1 ], [ %i.if, %.lr.ph.i.i.i.i ], [ %i.if, %.lr.ph.i.i.i.i.preheader ], [ %i.if, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.if, %.lr.ph75.6 ] ; 2 uses
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
  %i.be = phi <2 x double> [ %i.if, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ zeroinitializer, %bb.e ] ; 3 uses
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
  %i.dn = fmul <4 x double> %i.dm, <double 1.000000e+00, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01> ; 8 uses
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
  %3 = extractelement <4 x double> %i.dn, i64 1   ; 2 uses
  %4 = extractelement <4 x double> %i.dn, i64 2   ; 2 uses
  %5 = fmul double %4, %3
  %6 = extractelement <4 x double> %i.dn, i64 3   ; 2 uses
  %7 = fmul double %4, %6
  %i.fi = fneg double %i.ed
  %sqrt.i22 = call double @llvm.sqrt.f64(double %i.du) ; 3 uses
  %i.fj = load float, ptr %i.ai, align 8, !tbaa !249
  %i.fk = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = insertelement <2 x float> %i.dx, float %i.dz, i64 1
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> splat (float -2.000000e+00), <2 x float> %i.fm)
  %i.fo = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> %i.dx, <2 x i32> <i32 0, i32 3>
  %i.fq = fadd <2 x float> %i.fp, %i.fn
  %i.fr = fpext <2 x float> %i.fq to <2 x double> ; 6 uses
  %i.fs = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.fh, i64 1
  %i.fu = fsub <2 x float> %i.ff, %i.ft
  %i.fv = fpext <2 x float> %i.fu to <2 x double>
  %i.fw = fmul double %i.eu, 2.500000e-01         ; 4 uses
  %i.fx = fmul <2 x double> %i.fv, splat (double 2.500000e-01) ; 7 uses
  %i.fy = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = fadd <2 x double> %i.fz, %i.fr          ; 2 uses
  %i.gb = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fr)
  %8 = fmul double %sqrt.i22, %sqrt.i22
  %9 = fmul double %6, %3                         ; 2 uses
  %i.gc = insertelement <2 x double> %i.fx, double %i.fw, i64 0 ; 3 uses
  %i.gd = fneg <2 x double> %i.gc
  %i.ge = fmul <2 x double> %i.gc, %i.gd
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fz, <2 x double> %i.ge) ; 2 uses
  %i.gg = shufflevector <4 x double> %i.dp, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.gh = shufflevector <2 x double> %i.gf, <2 x double> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.gi = fmul <2 x double> %i.gg, %i.gh
  %i.gj = shufflevector <4 x double> %i.dp, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.gk = shufflevector <2 x double> %i.gf, <2 x double> %i.ga, <2 x i32> <i32 1, i32 3>
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.gk, <2 x double> %i.gi) ; 2 uses
  %i.gm = extractelement <2 x double> %i.fx, i64 0
  %i.gn = fneg double %i.gm
  %10 = insertelement <2 x double> poison, double %i.gn, i64 0
  %11 = insertelement <2 x double> %10, double %9, i64 1
  %12 = fmul <2 x double> %11, %i.fx              ; 2 uses
  %i.go = extractelement <2 x double> %i.gl, i64 0
  %i.gp = shufflevector <2 x double> %i.fr, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <4 x double> %i.gp, <4 x double> %i.dp, <2 x i32> <i32 0, i32 5>
  %i.gr = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x double> %i.gr, double %i.gb, i64 1
  %13 = shufflevector <2 x double> %12, <2 x double> %i.gl, <2 x i32> <i32 0, i32 3>
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gs, <2 x double> %13) ; 2 uses
  %i.gu = extractelement <2 x double> %i.gt, i64 0
  %i.gv = call double @llvm.fmuladd.f64(double %i.dt, double %i.gu, double %i.go)
  %i.gw = fneg <2 x double> %i.fr
  %i.gx = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x double> %i.gx, double %i.fw, i64 1
  %i.gz = fmul <2 x double> %i.gy, %i.gw
  %i.ha = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gc, <2 x double> %i.gz) ; 2 uses
  %14 = extractelement <2 x double> %i.hb, i64 1
  %15 = fmul double %5, %14
  %i.hc = extractelement <2 x double> %i.hb, i64 0
  %i.hd = call double @llvm.fmuladd.f64(double %9, double %i.hc, double %15)
  %i.he = shufflevector <2 x double> %i.fx, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <4 x double> %i.dn, <4 x double> %i.he, <2 x i32> <i32 1, i32 4>
  %i.hg = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.fi, i64 1
  %i.hi = fmul <2 x double> %i.hf, %i.hh
  %16 = shufflevector <4 x double> %i.dn, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.hj = insertelement <2 x double> %16, double %i.fw, i64 1
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.fx, <2 x double> %i.hi)
  %17 = shufflevector <4 x double> %i.dn, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %18 = insertelement <2 x double> %17, double %7, i64 1
  %19 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hl = insertelement <2 x double> %19, double %i.hd, i64 1
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.hk, <2 x double> %i.hl)
  %i.hn = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ho = insertelement <2 x double> %i.hn, double %i.gv, i64 1
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.ho)
  %i.hq = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %i.fj, i64 1
  %i.hs = fpext <2 x float> %i.hr to <2 x double>
  %i.ht = fmul <2 x double> %i.hp, %i.hs
  %20 = insertelement <2 x double> poison, double %sqrt.i22, i64 0
  %i.hu = insertelement <2 x double> %20, double %8, i64 1 ; 2 uses
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hw = fmul <2 x double> %i.hu, %i.hv
  %i.hx = fdiv <2 x double> %i.ht, %i.hw
  %i.hy = fptrunc <2 x double> %i.hx to <2 x float>
  %i.hz = fpext <2 x float> %i.hy to <2 x double>
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit: ; preds = %bb.f, %bb.g
  %i.ia = phi <2 x double> [ %i.hz, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ib = shufflevector <4 x double> %i.dp, <4 x double> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x double> %i.ib, %i.ia
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.al, <2 x double> %i.be)
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !218
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.ie = phi i32 [ %.pre, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit ], [ %i.bd, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bd, %.lr.ph ]
  %i.if = phi <2 x double> [ %i.id, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit ], [ %i.be, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.be, %.lr.ph ] ; 11 uses
  %i.ig = load ptr, ptr %i.aj, align 8, !tbaa !241 ; 8 uses
  %i.ih = add i32 %i.ie, 1                        ; 4 uses
  %i.ii = lshr i32 %i.ih, 6                       ; 3 uses
  %i.ij = icmp ugt i32 %i.ih, 511
  br i1 %i.ij, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.ik = and i32 %i.ih, 63
  %i.il = zext nneg i32 %i.ii to i64              ; 8 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.il
  %i.in = load i64, ptr %i.im, align 8, !tbaa !229 ; 2 uses
  %i.io = zext nneg i32 %i.ik to i64              ; 2 uses
  %i.ip = shl nuw i64 1, %i.io
  %i.iq = and i64 %i.in, %i.ip
  %.not.i.i.i.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ir = shl nsw i64 -1, %i.io
  %i.is = and i64 %i.in, %i.ir                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %exitcond.not.i.i.i.i73 = icmp eq i32 %i.ii, 7
  br i1 %exitcond.not.i.i.i.i73, label %._crit_edge, label %.lr.ph75

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph75
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph75.1

.lr.ph75.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.il, 2 ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.1
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.iu, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph75.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph75.2

.lr.ph75.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.il, 3 ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.2
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.iw, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph75.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph75.3

.lr.ph75.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.il, 4 ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.3
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.iy, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph75.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph75.4

.lr.ph75.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.il, 5 ; 3 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.4
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ja, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph75.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph75.5

.lr.ph75.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.il, 6 ; 3 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.5
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.jc, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph75.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph75.6

.lr.ph75.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.il, 7 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.6
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.je, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph75:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.il, 1 ; 3 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.jg, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph75.6, %.lr.ph75.5, %.lr.ph75.4, %.lr.ph75.3, %.lr.ph75.2, %.lr.ph75.1, %.lr.ph75
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph75 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph75.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph75.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph75.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph75.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph75.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph75.6 ]
  %.lcssa = phi i64 [ %i.jg, %.lr.ph75 ], [ %i.iu, %.lr.ph75.1 ], [ %i.iw, %.lr.ph75.2 ], [ %i.iy, %.lr.ph75.3 ], [ %i.ja, %.lr.ph75.4 ], [ %i.jc, %.lr.ph75.5 ], [ %i.je, %.lr.ph75.6 ]
  %i.jh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.i
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ii, %bb.i ], [ %i.jh, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.is, %bb.i ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.ji = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.jj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.jk = trunc nuw nsw i64 %i.jj to i32
  %i.jl = or disjoint i32 %i.ji, %i.jk
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.h, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.jl, %.critedge.i.i.i.i ], [ %i.ih, %bb.h ] ; 3 uses
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
  %.idx = shl i64 %i.g, 3                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %.not10 = icmp eq i64 %i.g, 0
  br i1 %.not10, label %_ZN3tbb6detail2d113parallel_sortIPdEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.g, 500
  br i1 %i.k, label %_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i, label %bb.c

_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i:        ; preds = %bb.b
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %i.i, ptr noundef nonnull %i.j, i64 noundef %i.n)
  tail call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %i.i, ptr noundef nonnull %i.j)
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  call void @_ZN3tbb6detail2d119parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_(ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %.lr.ph.preheader

_ZN3tbb6detail2d113parallel_sortIPdEEvT_S4_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.o = add i64 %.idx, -8                        ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC2EPSH_:bb.a
          to label %bb.s unwind label %bb.d

bb.r:                                             ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %_ZN3tbb6detail2d115parallel_invokeIJZN7openvdb5v13_05tools15LevelSetMeasureINS4_4GridINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_4util15NullInterrupterEE17MeasureCurvaturesC1EPSL_EUlvE_ZNSM_C1ESN_EUlvE0_EEEvDpOT_.exit
  ret void

bb.t:                                             ; preds = %bb.r, %bb.o, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.d ], [ %i.cb, %bb.r ], [ %eh.lpad-body, %.body ], [ %i.bt, %bb.o ] ; 2 uses
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesclERKNS4_11LeafManagerIKSD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !335
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !250  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef -1), !inline_history !10
  br i1 %i.g, label %bb.b, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

bb.b:                                             ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  %i.h = tail call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i = icmp eq ptr %i.h, null
  br i1 %.not.i2.i, label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit, label %bb.c

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
  br label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i, %bb.b, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !335    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !253 ; 4 uses
  %i.r = fmul double %i.q, %i.q
  %i.s = fdiv double 1.000000e+00, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !275
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !276
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !313  ; 2 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !312
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = insertelement <2 x double> poison, double %i.q, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.r, i64 1
  br label %bb.e

._crit_edge53:                                    ; preds = %._crit_edge, %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph52, %._crit_edge
  %.sroa.5.051 = phi i64 [ %i.y, %.lr.ph52 ], [ %i.ba, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !317, !nonnull !76, !align !213
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !318
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.5.051
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !319
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.aq)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !218 ; 2 uses
  %.not47 = icmp eq i32 %i.ar, 512
  br i1 %.not47, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph77.6, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %bb.e
  %i.as = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.hz, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread ], [ %i.hz, %.lr.ph.i.i.i.i.5 ], [ %i.hz, %.lr.ph.i.i.i.i.4 ], [ %i.hz, %.lr.ph.i.i.i.i.3 ], [ %i.hz, %.lr.ph.i.i.i.i.2 ], [ %i.hz, %.lr.ph.i.i.i.i.1 ], [ %i.hz, %.lr.ph.i.i.i.i ], [ %i.hz, %.lr.ph.i.i.i.i.preheader ], [ %i.hz, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.hz, %.lr.ph77.6 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.at = load ptr, ptr %0, align 8, !tbaa !335
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !106
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.5.051 ; 2 uses
  %i.ax = extractelement <2 x double> %i.as, i64 0
  store double %i.ax, ptr %i.aw, align 8, !tbaa !124
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.w
  %i.az = extractelement <2 x double> %i.as, i64 1
  store double %i.az, ptr %i.ay, align 8, !tbaa !124
  %i.ba = add nuw i64 %.sroa.5.051, 1             ; 2 uses
  %i.bb = load i64, ptr %1, align 8, !tbaa !312
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.e, label %._crit_edge53, !llvm.loop !672

.lr.ph:                                           ; preds = %bb.e, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.bd = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.ar, %bb.e ] ; 3 uses
  %i.be = phi <2 x double> [ %i.hz, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ zeroinitializer, %bb.e ] ; 3 uses
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !323
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !124
  %i.bj = fmul double %i.s, %i.bi                 ; 2 uses
  %i.bk = call noundef double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp ogt double %i.bk, 1.500000e+00
  br i1 %i.bl, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit: ; preds = %.lr.ph
  %i.bm = fmul double %i.bj, f0x4000C152382D7365
  %i.bn = call double @cos(double noundef %i.bm) #21
  %i.bo = fadd double %i.bn, 1.000000e+00
  %i.bp = fmul double %i.bo, f0x3FD5555555555555  ; 2 uses
  %i.bq = fcmp ogt double %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.f, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.br = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  %i.bs = load i32, ptr %i.ac, align 8, !tbaa !218 ; 4 uses
  %i.bt = lshr i32 %i.bs, 6
  %i.bu = lshr i32 %i.bs, 3
  %i.bv = and i32 %i.bu, 7
  %i.bw = and i32 %i.bs, 7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !226
  %i.bz = add nsw i32 %i.by, %i.bt
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !226
  %i.cc = add nsw i32 %i.cb, %i.bv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !226
  %i.cf = add nsw i32 %i.ce, %i.bw
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.cc to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.bz to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.af, align 8
  store i32 %i.cf, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %i.cg = load ptr, ptr %i.ad, align 8, !tbaa !323
  %i.ch = zext i32 %i.bs to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !124
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !93
  store double %i.cj, ptr %i.ck, align 8, !tbaa !124
  call void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(160) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.af)
  %i.cl = load ptr, ptr %i.ag, align 8, !tbaa !93, !noalias !676 ; 16 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cr = load double, ptr %i.ah, align 8, !tbaa !337, !noalias !676 ; 4 uses
  %i.cs = load double, ptr %i.cp, align 8, !tbaa !124, !noalias !676 ; 2 uses
  %i.ct = load double, ptr %i.cq, align 8, !tbaa !124, !noalias !676 ; 2 uses
  %i.cu = load <4 x double>, ptr %i.cn, align 8, !tbaa !124, !noalias !676 ; 2 uses
  %i.cv = load double, ptr %i.co, align 8, !tbaa !124, !noalias !676
  %i.cw = load double, ptr %i.cm, align 8, !tbaa !124, !noalias !676
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cv, i64 1
  %i.cz = shufflevector <4 x double> %i.cu, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.da = fsub <2 x double> %i.cy, %i.cz          ; 3 uses
  %i.db = fsub double %i.cs, %i.ct                ; 2 uses
  %i.dc = extractelement <2 x double> %i.da, i64 0
  %i.dd = fmul double %i.dc, %i.cr                ; 2 uses
  %i.de = extractelement <2 x double> %i.da, i64 1
  %i.df = fmul double %i.de, %i.cr                ; 2 uses
  %i.dg = fmul double %i.cr, %i.db                ; 2 uses
  %i.dh = fmul double %i.df, %i.df
  %i.di = call double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %i.dh)
  %i.dj = call double @llvm.fmuladd.f64(double %i.dg, double %i.dg, double %i.di)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.dj)
  %i.dk = insertelement <4 x double> poison, double %i.bp, i64 0
  %i.dl = insertelement <4 x double> %i.dk, double %i.db, i64 1
  %i.dm = shufflevector <2 x double> %i.da, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x double> %i.dl, <4 x double> %i.dm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.do = fmul <4 x double> %i.dn, <double 1.000000e+00, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01> ; 8 uses
  %i.dp = insertelement <4 x double> %i.do, double %sqrt.i, i64 0
  %i.dq = fmul <4 x double> %i.do, %i.dp          ; 7 uses
  %i.dr = extractelement <4 x double> %i.dq, i64 2 ; 2 uses
  %i.ds = extractelement <4 x double> %i.dq, i64 3 ; 2 uses
  %i.dt = fadd double %i.dr, %i.ds
  %i.du = extractelement <4 x double> %i.dq, i64 1
  %i.dv = fadd double %i.dt, %i.du                ; 2 uses
  %i.dw = fcmp ugt double %i.dv, 1.000000e-15
  br i1 %i.dw, label %bb.g, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit

bb.g:                                             ; preds = %bb.f
  %i.dx = load double, ptr %i.cl, align 8, !tbaa !124 ; 2 uses
  %i.dy = call double @llvm.fmuladd.f64(double %i.dx, double -2.000000e+00, double %i.cs)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !124
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !124
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !124
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !124
  %i.ei = fsub double %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !124
  %i.el = fadd double %i.ei, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  %i.en = load double, ptr %i.em, align 8, !tbaa !124
  %i.eo = fsub double %i.el, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cl, i64 144
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !124
  %i.er = getelementptr inbounds nuw i8, ptr %i.cl, i64 120
  %i.es = load <2 x double>, ptr %i.eb, align 8, !tbaa !124 ; 2 uses
  %i.et = load <2 x double>, ptr %i.er, align 8, !tbaa !124 ; 2 uses
  %i.eu = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.eq, i64 1
  %i.ew = shufflevector <2 x double> %i.es, <2 x double> %i.et, <2 x i32> <i32 1, i32 3>
  %i.ex = fsub <2 x double> %i.ev, %i.ew
  %i.ey = shufflevector <2 x double> %i.es, <2 x double> %i.et, <2 x i32> <i32 0, i32 2>
  %i.ez = fadd <2 x double> %i.ex, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cl, i64 136
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !124
  %3 = extractelement <4 x double> %i.do, i64 1   ; 2 uses
  %4 = extractelement <4 x double> %i.do, i64 2   ; 2 uses
  %5 = fmul double %4, %3
  %6 = extractelement <4 x double> %i.do, i64 3   ; 2 uses
  %7 = fmul double %4, %6
  %sqrt.i23 = call double @llvm.sqrt.f64(double %i.dv) ; 3 uses
  %i.fc = load double, ptr %i.ai, align 8, !tbaa !338
  %i.fd = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fb, i64 1
  %i.ff = fsub <2 x double> %i.ez, %i.fe
  %i.fg = fmul double %i.eo, 2.500000e-01         ; 6 uses
  %i.fh = fmul <2 x double> %i.ff, splat (double 2.500000e-01) ; 7 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 1 ; 3 uses
  %i.fj = fneg double %i.fi
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = fadd double %i.ct, %i.dy                ; 5 uses
  %i.fm = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = shufflevector <4 x double> %i.cu, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> splat (double -2.000000e+00), <2 x double> %i.fo)
  %i.fq = fadd <2 x double> %i.cz, %i.fp          ; 5 uses
  %i.fr = extractelement <2 x double> %i.fq, i64 0 ; 3 uses
  %i.fs = extractelement <2 x double> %i.fq, i64 1 ; 3 uses
  %i.ft = fadd double %i.fs, %i.fl
  %i.fu = fadd double %i.fr, %i.fl
  %i.fv = fadd double %i.fr, %i.fs
  %8 = fmul double %sqrt.i23, %sqrt.i23
  %9 = fmul double %6, %3                         ; 2 uses
  %i.fw = fmul double %9, %i.fi
  %i.fx = call double @llvm.fmuladd.f64(double %i.fs, double %i.fl, double %i.fk)
  %i.fy = fneg double %i.fg
  %i.fz = fmul double %i.fg, %i.fy
  %i.ga = call double @llvm.fmuladd.f64(double %i.fr, double %i.fl, double %i.fz)
  %i.gb = fmul double %i.ds, %i.ga
  %i.gc = call double @llvm.fmuladd.f64(double %i.dr, double %i.fx, double %i.gb)
  %i.gd = shufflevector <2 x double> %i.fh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ge = shufflevector <4 x double> %i.dq, <4 x double> %i.gd, <2 x i32> <i32 3, i32 4>
  %i.gf = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gg = fneg <2 x double> %i.fh
  %i.gh = shufflevector <2 x double> %i.gf, <2 x double> %i.gg, <2 x i32> <i32 0, i32 2>
  %i.gi = fmul <2 x double> %i.ge, %i.gh
  %i.gj = shufflevector <2 x double> %i.fq, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x double> %i.dq, <4 x double> %i.gj, <2 x i32> <i32 2, i32 4>
  %i.gl = insertelement <2 x double> %i.fq, double %i.ft, i64 0
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gl, <2 x double> %i.gi)
  %i.gn = shufflevector <4 x double> %i.dq, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.go = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gp = insertelement <2 x double> %i.go, double %i.fv, i64 1
  %i.gq = insertelement <2 x double> %i.go, double %i.gc, i64 0
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gp, <2 x double> %i.gq)
  %i.gs = fneg <2 x double> %i.fq
  %i.gt = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gu = insertelement <2 x double> %i.gt, double %i.fg, i64 1
  %i.gv = fmul <2 x double> %i.gu, %i.gs
  %i.gw = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = insertelement <2 x double> %i.fh, double %i.fg, i64 0
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gx, <2 x double> %i.gv) ; 2 uses
  %10 = extractelement <2 x double> %i.gy, i64 1
  %11 = fmul double %5, %10
  %i.gz = extractelement <2 x double> %i.gy, i64 0
  %i.ha = call double @llvm.fmuladd.f64(double %9, double %i.gz, double %11)
  %i.hb = fneg double %i.fl
  %i.hc = shufflevector <4 x double> %i.do, <4 x double> %i.gd, <2 x i32> <i32 1, i32 4>
  %i.hd = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.hb, i64 1
  %i.hf = fmul <2 x double> %i.hc, %i.he
  %12 = shufflevector <4 x double> %i.do, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.hg = insertelement <2 x double> %12, double %i.fg, i64 1
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.fh, <2 x double> %i.hf)
  %13 = shufflevector <4 x double> %i.do, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %14 = insertelement <2 x double> %13, double %7, i64 1
  %i.hi = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.hj = insertelement <2 x double> %i.hi, double %i.ha, i64 1
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %i.hh, <2 x double> %i.hj)
  %i.hl = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.hl)
  %i.hn = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.fc, i64 1
  %i.hp = fmul <2 x double> %i.ho, %i.hm
  %15 = insertelement <2 x double> poison, double %sqrt.i23, i64 0
  %i.hq = insertelement <2 x double> %15, double %8, i64 1 ; 2 uses
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hs = fmul <2 x double> %i.hq, %i.hr
  %i.ht = fdiv <2 x double> %i.hp, %i.hs
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit: ; preds = %bb.f, %bb.g
  %i.hu = phi <2 x double> [ %i.ht, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.hv = shufflevector <4 x double> %i.dq, <4 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x double> %i.hv, %i.hu
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.al, <2 x double> %i.be)
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !218
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.hy = phi i32 [ %.pre, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit ], [ %i.bd, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bd, %.lr.ph ]
  %i.hz = phi <2 x double> [ %i.hx, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit ], [ %i.be, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.be, %.lr.ph ] ; 11 uses
  %i.ia = load ptr, ptr %i.aj, align 8, !tbaa !241 ; 8 uses
  %i.ib = add i32 %i.hy, 1                        ; 4 uses
  %i.ic = lshr i32 %i.ib, 6                       ; 3 uses
  %i.id = icmp ugt i32 %i.ib, 511
  br i1 %i.id, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.ie = and i32 %i.ib, 63
  %i.if = zext nneg i32 %i.ic to i64              ; 8 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.if
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !229 ; 2 uses
  %i.ii = zext nneg i32 %i.ie to i64              ; 2 uses
  %i.ij = shl nuw i64 1, %i.ii
  %i.ik = and i64 %i.ih, %i.ij
  %.not.i.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.i:                                             ; preds = %bb.h
  %i.il = shl nsw i64 -1, %i.ii
  %i.im = and i64 %i.ih, %i.il                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %exitcond.not.i.i.i.i75 = icmp eq i32 %i.ic, 7
  br i1 %exitcond.not.i.i.i.i75, label %._crit_edge, label %.lr.ph77

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph77
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph77.1

.lr.ph77.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.if, 2 ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i.i.i.1
  %i.io = load i64, ptr %i.in, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.io, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph77.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph77.2

.lr.ph77.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.if, 3 ; 3 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i.i.i.2
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.iq, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph77.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph77.3

.lr.ph77.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.if, 4 ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i.i.i.3
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.is, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph77.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph77.4

.lr.ph77.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.if, 5 ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i.i.i.4
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.iu, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph77.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph77.5

.lr.ph77.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.if, 6 ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i.i.i.5
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.iw, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph77.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph77.6

.lr.ph77.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.if, 7 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i.i.i.6
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.iy, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph77:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.if, 1 ; 3 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i.i.i
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ja, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph77.6, %.lr.ph77.5, %.lr.ph77.4, %.lr.ph77.3, %.lr.ph77.2, %.lr.ph77.1, %.lr.ph77
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph77 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph77.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph77.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph77.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph77.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph77.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph77.6 ]
  %.lcssa = phi i64 [ %i.ja, %.lr.ph77 ], [ %i.io, %.lr.ph77.1 ], [ %i.iq, %.lr.ph77.2 ], [ %i.is, %.lr.ph77.3 ], [ %i.iu, %.lr.ph77.4 ], [ %i.iw, %.lr.ph77.5 ], [ %i.iy, %.lr.ph77.6 ]
  %i.jb = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.i
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ic, %bb.i ], [ %i.jb, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.im, %bb.i ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.jc = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.jd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = or disjoint i32 %i.jc, %i.je
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.h, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.jf, %.critedge.i.i.i.i ], [ %i.ib, %bb.h ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ac, align 8, !tbaa !218
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !675
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #4 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC5ERKSI_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !335    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !335
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !252  ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !336
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !256  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !305
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 9223372034707292159, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !121
  %.06.i.i.i.i.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !121
  %.06.i.i.i.i.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i, align 8, !tbaa !121
  store ptr null, ptr %i.i, align 8, !tbaa !306
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.m, ptr %i.k, align 8, !tbaa !307
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.o, i8 0, i64 152, i1 false)
  store ptr %i.p, ptr %i.r, align 8, !tbaa !308
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 9223372034707292159, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 2147483647, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111, !noalias !681
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114, !noalias !682 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103, !noalias !682
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !noalias !682
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_.exit unwind label %bb.b, !inline_history !3

bb.b:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
end_hunk_1
