Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMeasure?download=true
inline.NumInlined: 4217
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_:bb.a
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
  %i.dn = fmul <4 x double> %i.dm, <double 1.000000e+00, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01> ; 8 uses
  %i.do = insertelement <4 x double> %i.dn, double %i.dh, i64 0
  %i.dp = fmul <4 x double> %i.dn, %i.do          ; 8 uses
  %i.dq = extractelement <4 x double> %i.dp, i64 2
  %i.dr = extractelement <4 x double> %i.dp, i64 3
  %i.ds = fadd double %i.dq, %i.dr
  %i.dt = extractelement <4 x double> %i.dp, i64 1 ; 3 uses
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
  %i.ed = fpext float %i.ec to double             ; 4 uses
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
  %i.fi = extractelement <4 x double> %i.dn, i64 1 ; 2 uses
  %i.fj = extractelement <4 x double> %i.dn, i64 2 ; 2 uses
  %i.fk = fmul double %i.fj, %i.fi
  %i.fl = extractelement <4 x double> %i.dn, i64 3 ; 2 uses
  %i.fm = fmul double %i.fj, %i.fl
  %i.fn = fneg double %i.ed
  %sqrt.i22 = call double @llvm.sqrt.f64(double %i.du) ; 3 uses
  %i.fo = load float, ptr %i.ai, align 8, !tbaa !249
  %i.fp = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = insertelement <2 x float> %i.dx, float %i.dz, i64 1
  %i.fs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> splat (float -2.000000e+00), <2 x float> %i.fr)
  %i.ft = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> %i.dx, <2 x i32> <i32 0, i32 3>
  %i.fv = fadd <2 x float> %i.fu, %i.fs
  %i.fw = fpext <2 x float> %i.fv to <2 x double> ; 7 uses
  %i.fx = fmul double %i.eu, 2.500000e-01         ; 6 uses
  %i.fy = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fh, i64 1
  %i.ga = fsub <2 x float> %i.ff, %i.fz
  %i.gb = fpext <2 x float> %i.ga to <2 x double>
  %i.gc = fmul <2 x double> %i.gb, splat (double 2.500000e-01) ; 6 uses
  %i.gd = extractelement <2 x double> %i.fw, i64 1
  %i.ge = extractelement <2 x double> %i.fw, i64 0
  %i.gf = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = fadd <2 x double> %i.gg, %i.fw          ; 2 uses
  %i.gi = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fw)
  %i.gj = fmul double %i.fl, %i.fi                ; 2 uses
  %i.gk = extractelement <2 x double> %i.gc, i64 1 ; 3 uses
  %i.gl = fmul double %i.gj, %i.gk
  %i.gm = shufflevector <2 x double> %i.gc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gn = shufflevector <4 x double> %i.dp, <4 x double> %i.gm, <2 x i32> <i32 3, i32 5>
  %i.go = fneg <2 x double> %i.gc
  %i.gp = shufflevector <2 x double> %i.gh, <2 x double> %i.go, <2 x i32> <i32 0, i32 3>
  %i.gq = fmul <2 x double> %i.gn, %i.gp
  %i.gr = shufflevector <2 x double> %i.fw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gs = shufflevector <4 x double> %i.dp, <4 x double> %i.gr, <2 x i32> <i32 2, i32 5>
  %i.gt = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gu = insertelement <2 x double> %i.gt, double %i.ed, i64 1
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gu, <2 x double> %i.gq) ; 2 uses
  %3 = extractelement <2 x double> %i.gv, i64 0
  %4 = call double @llvm.fmuladd.f64(double %i.dt, double %i.gi, double %3)
  %i.gw = fneg double %i.fx
  %i.gx = fmul double %i.fx, %i.gw
  %5 = extractelement <2 x double> %i.gc, i64 0   ; 2 uses
  %i.gy = insertelement <2 x double> %i.fw, double -0.000000e+00, i64 1
  %i.gz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ed, i64 0
  %i.ha = insertelement <2 x double> poison, double %i.gx, i64 0
  %6 = fneg <2 x double> %i.gc
  %7 = shufflevector <2 x double> %i.ha, <2 x double> %6, <2 x i32> <i32 0, i32 2>
  %8 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.gz, <2 x double> %7)
  %9 = shufflevector <4 x double> %i.dp, <4 x double> %i.gm, <2 x i32> <i32 3, i32 4>
  %i.hb = fmul <2 x double> %9, %8
  %i.hc = shufflevector <4 x double> %i.dp, <4 x double> %i.gr, <2 x i32> <i32 2, i32 4>
  %i.hd = shufflevector <2 x double> %i.gv, <2 x double> %i.fw, <2 x i32> <i32 1, i32 3>
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.hd, <2 x double> %i.hb) ; 2 uses
  %10 = extractelement <2 x double> %i.he, i64 0
  %11 = extractelement <2 x double> %i.he, i64 1
  %12 = call double @llvm.fmuladd.f64(double %i.dt, double %11, double %10)
  %13 = fneg double %i.ge
  %14 = fmul double %i.gk, %13
  %15 = call double @llvm.fmuladd.f64(double %5, double %i.fx, double %14)
  %i.hf = fneg double %i.gd
  %i.hg = fmul double %i.fx, %i.hf
  %i.hh = call double @llvm.fmuladd.f64(double %5, double %i.gk, double %i.hg)
  %i.hi = fmul double %i.fk, %i.hh
  %i.hj = call double @llvm.fmuladd.f64(double %i.gj, double %15, double %i.hi)
  %i.hk = shufflevector <4 x double> %i.dn, <4 x double> %i.gm, <2 x i32> <i32 1, i32 4>
  %i.hl = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.fn, i64 1
  %i.hn = fmul <2 x double> %i.hk, %i.hm
  %i.ho = shufflevector <4 x double> %i.dn, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.hp = insertelement <2 x double> %i.ho, double %i.fx, i64 1
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.gc, <2 x double> %i.hn)
  %i.hr = shufflevector <4 x double> %i.dn, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.hs = insertelement <2 x double> %i.hr, double %i.fm, i64 1
  %i.ht = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hj, i64 1
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.hq, <2 x double> %i.hu)
  %16 = insertelement <2 x double> poison, double %4, i64 0
  %17 = insertelement <2 x double> %16, double %12, i64 1
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %17)
  %i.hx = fmul double %sqrt.i22, %sqrt.i22
  %i.hy = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.hz = insertelement <2 x float> %i.hy, float %i.fo, i64 1
  %i.ia = fpext <2 x float> %i.hz to <2 x double>
  %i.ib = fmul <2 x double> %i.hw, %i.ia
  %i.ic = insertelement <2 x double> poison, double %sqrt.i22, i64 0
  %i.id = insertelement <2 x double> %i.ic, double %i.hx, i64 1 ; 2 uses
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.if = fmul <2 x double> %i.id, %i.ie
  %i.ig = fdiv <2 x double> %i.ib, %i.if
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
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaclERKNS4_11LeafManagerIKSD_E9LeafRangeE:bb.a

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.ck
  %i.afp = and i32 %i.aeb, -4096
  %i.afq = load i32, ptr %i.aq, align 8, !tbaa !226
  %i.afr = icmp eq i32 %i.afp, %i.afq
  br i1 %i.afr, label %bb.cl, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i

bb.cl:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.afs = load ptr, ptr %i.as, align 8, !tbaa !325 ; 2 uses
  %i.aft = shl i32 %i.aec, 3
  %i.afu = and i32 %i.aft, 31744
  %i.afv = lshr i32 %i.aeh, 2
  %i.afw = and i32 %i.afv, 992
  %i.afx = or disjoint i32 %i.afw, %i.afu         ; 2 uses
  %i.afy = lshr i32 %i.aeb, 7
  %i.afz = and i32 %i.afy, 31
  %i.aga = or disjoint i32 %i.afx, %i.afz         ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afs, i64 262144
  %i.agc = lshr i32 %i.afx, 6
  %i.agd = zext nneg i32 %i.agc to i64
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %i.agd
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !229
  %i.agg = and i32 %i.aga, 63
  %i.agh = zext nneg i32 %i.agg to i64
  %i.agi = shl nuw i64 1, %i.agh
  %i.agj = and i64 %i.agf, %i.agi
  %.not.i.i.i = icmp eq i64 %i.agj, 0
  %i.agk = zext nneg i32 %i.aga to i64
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %i.agk ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !121
  %i.agn = and i32 %i.aeb, -128
  %.sroa.0.0.insert.insert.i.i.i.i = and i64 %i.adz, -545460846720
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.al, align 4
  store i32 %i.agn, ptr %i.an, align 4, !tbaa !121
  store ptr %i.agm, ptr %i.at, align 8, !tbaa !324
  %i.ago = load ptr, ptr %i.agl, align 8, !tbaa !121
  %i.agp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ago, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.ck, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i
  %i.agq = load ptr, ptr %i.ar, align 8, !tbaa !307 ; 6 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 60
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !226
  %i.agt = sub nsw i32 %i.aeh, %i.ags
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agq, i64 64
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !226
  %i.agw = sub nsw i32 %i.aeb, %i.agv
  %i.agx = and i32 %i.agt, -4096                  ; 4 uses
  %i.agy = and i32 %i.agw, -4096                  ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agq, i64 16
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !234 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agq, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.aha, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agq, i64 56
  %i.ahd = load i32, ptr %i.ahc, align 8, !tbaa !226
  %i.ahe = sub nsw i32 %i.aec, %i.ahd
  %i.ahf = and i32 %i.ahe, -4096                  ; 4 uses
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.aha, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.ahb, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !226 ; 2 uses
  %i.ahi = icmp slt i32 %i.ahh, %i.ahf
  br i1 %i.ahi, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ahj = icmp sgt i32 %i.ahh, %i.ahf
  br i1 %i.ahj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ahk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !226 ; 2 uses
  %i.ahm = icmp slt i32 %i.ahl, %i.agx
  br i1 %i.ahm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ahn = icmp sgt i32 %i.ahl, %i.agx
  br i1 %i.ahn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.cq
  %i.aho = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !226
  %i.ahq = icmp slt i32 %i.ahp, %i.agy
  br i1 %i.ahq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.cp, %bb.cn
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.cq, %bb.co
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.cq ], [ 16, %bb.co ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.cq ], [ %.014.i.i.i.i.i, %bb.co ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.ahr, align 8, !tbaa !235 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.cn, !llvm.loop !11

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.ahs = icmp eq ptr %.19.i.i.i.i.i, %i.ahb
  br i1 %i.ahs, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.aht = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !226 ; 2 uses
  %i.ahv = icmp slt i32 %i.ahf, %i.ahu
  br i1 %i.ahv, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ahw = icmp sgt i32 %i.ahf, %i.ahu
  br i1 %i.ahw, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ahx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !226 ; 2 uses
  %i.ahz = icmp slt i32 %i.agx, %i.ahy
  br i1 %i.ahz, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aia = icmp sgt i32 %i.agx, %i.ahy
  br i1 %i.aia, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.cu
  %i.aib = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !226
  %i.aid = icmp slt i32 %i.agy, %i.aic
  br i1 %i.aid, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.ct, %bb.cr, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agq, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.cu, %bb.cs
  %i.aif = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !328 ; 2 uses
  %.not.i = icmp eq ptr %i.aig, null
  br i1 %.not.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.aih = and i32 %i.aeb, -4096
  %.sroa.0.0.insert.insert.i.i110 = and i64 %i.adz, -17587891081216
  store i64 %.sroa.0.0.insert.insert.i.i110, ptr %i.ao, align 8
  store i32 %i.aih, ptr %i.aq, align 8, !tbaa !121
  store ptr %i.aig, ptr %i.as, align 8, !tbaa !325
  %i.aii = load ptr, ptr %i.aif, align 8, !tbaa !330 ; 2 uses
  %i.aij = shl i32 %i.aec, 3
  %i.aik = and i32 %i.aij, 31744
  %i.ail = lshr i32 %i.aeh, 2
  %i.aim = and i32 %i.ail, 992
  %i.ain = or disjoint i32 %i.aim, %i.aik         ; 2 uses
  %i.aio = lshr i32 %i.aeb, 7
  %i.aip = and i32 %i.aio, 31
  %i.aiq = or disjoint i32 %i.ain, %i.aip         ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aii, i64 262144
  %i.ais = lshr i32 %i.ain, 6
  %i.ait = zext nneg i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %i.ait
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !229
  %i.aiw = and i32 %i.aiq, 63
  %i.aix = zext nneg i32 %i.aiw to i64
  %i.aiy = shl nuw i64 1, %i.aix
  %i.aiz = and i64 %i.aiv, %i.aiy
  %.not.i.i111 = icmp eq i64 %i.aiz, 0
  %i.aja = zext nneg i32 %i.aiq to i64
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.aii, i64 %i.aja ; 3 uses
  br i1 %.not.i.i111, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !121
  %i.ajd = and i32 %i.aeb, -128
  %.sroa.0.0.insert.insert.i.i.i = and i64 %i.adz, -545460846720
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.al, align 4
  store i32 %i.ajd, ptr %i.an, align 4, !tbaa !121
  store ptr %i.ajc, ptr %i.at, align 8, !tbaa !324
  %i.aje = load ptr, ptr %i.ajb, align 8, !tbaa !121
  %i.ajf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.aje, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.af)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

bb.cx:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.ajg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %bb.cx, %bb.cw, %bb.cv, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i, %bb.cl, %bb.cm
  %.1.i.i = phi ptr [ %i.aex, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i ], [ %i.afi, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i ], [ %i.agp, %bb.cm ], [ %i.agl, %bb.cl ], [ %i.aie, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.ajg, %bb.cx ], [ %i.ajf, %bb.cw ], [ %i.ajb, %bb.cv ]
  %i.ajh = load double, ptr %.1.i.i, align 8, !tbaa !124 ; 2 uses
  %i.aji = load ptr, ptr %i.ae, align 8, !tbaa !93 ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 48
  store double %i.ajh, ptr %i.ajj, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aji, i64 40
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !124, !noalias !652
  %i.ajn = fsub double %i.ajh, %i.ajm
  %i.ajo = load double, ptr %i.au, align 8, !tbaa !309, !noalias !652 ; 2 uses
  %i.ajp = fmul double %i.ajo, %i.ajn             ; 3 uses
  %i.ajq = load i32, ptr %i.ad, align 8, !tbaa !226
  %i.ajr = sitofp i32 %i.ajq to double
  %i.ajs = load <2 x i32>, ptr %i.ag, align 4, !tbaa !226
  %i.ajt = sitofp <2 x i32> %i.ajs to <2 x double> ; 2 uses
  %i.aju = load <4 x double>, ptr %i.ajk, align 8, !tbaa !124, !noalias !652 ; 2 uses
  %i.ajv = shufflevector <4 x double> %i.aju, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ajw = shufflevector <4 x double> %i.aju, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ajx = fsub <2 x double> %i.ajv, %i.ajw
  %i.ajy = insertelement <2 x double> poison, double %i.ajo, i64 0
  %i.ajz = shufflevector <2 x double> %i.ajy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aka = fmul <2 x double> %i.ajx, %i.ajz       ; 3 uses
  %i.akb = shufflevector <2 x double> %i.aka, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.akc = shufflevector <2 x double> %i.aka, <2 x double> %i.ajt, <2 x i32> <i32 1, i32 2>
  %i.akd = fmul <2 x double> %i.akb, %i.akc
  %i.ake = shufflevector <2 x double> %i.aka, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akf = insertelement <2 x double> %i.ake, double %i.ajr, i64 1
  %i.akg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ake, <2 x double> %i.akf, <2 x double> %i.akd) ; 2 uses
  %9 = extractelement <2 x double> %i.akg, i64 0
  %10 = call double @llvm.fmuladd.f64(double %i.ajp, double %i.ajp, double %9)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %10)
  %11 = extractelement <2 x double> %i.akg, i64 1
  %i.akh = extractelement <2 x double> %i.ajt, i64 1
  %12 = call double @llvm.fmuladd.f64(double %i.ajp, double %i.akh, double %11)
  %i.aki = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.akj = shufflevector <2 x double> %i.aki, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.akk = insertelement <2 x double> %13, double %12, i64 1
  %i.akl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akj, <2 x double> %i.akk, <2 x double> %i.bo)
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.akm = phi <2 x double> [ %i.akl, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit ], [ %i.bo, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bo, %.lr.ph ] ; 11 uses
  %i.akn = load ptr, ptr %i.av, align 8, !tbaa !241 ; 8 uses
  %i.ako = load i32, ptr %i.ab, align 8, !tbaa !218
  %i.akp = add i32 %i.ako, 1                      ; 4 uses
  %i.akq = lshr i32 %i.akp, 6                     ; 3 uses
  %i.akr = icmp ugt i32 %i.akp, 511
  br i1 %i.akr, label %._crit_edge, label %bb.cy

bb.cy:                                            ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.aks = and i32 %i.akp, 63
  %i.akt = zext nneg i32 %i.akq to i64            ; 8 uses
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %i.akt
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !229 ; 2 uses
  %i.akw = zext nneg i32 %i.aks to i64            ; 2 uses
  %i.akx = shl nuw i64 1, %i.akw
  %i.aky = and i64 %i.akv, %i.akx
  %.not.i.i.i.i = icmp eq i64 %i.aky, 0
  br i1 %.not.i.i.i.i, label %bb.cz, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.cz:                                            ; preds = %bb.cy
  %i.akz = shl nsw i64 -1, %i.akw
  %i.ala = and i64 %i.akv, %i.akz                 ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ala, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.cz
  %exitcond.not.i.i.i.i355 = icmp eq i32 %i.akq, 7
  br i1 %exitcond.not.i.i.i.i355, label %._crit_edge, label %.lr.ph357

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph357
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph357.1

.lr.ph357.1:                                      ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.akt, 2 ; 3 uses
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.next.i.i.i.i.1
  %i.alc = load i64, ptr %i.alb, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.alc, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph357.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph357.2

.lr.ph357.2:                                      ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.akt, 3 ; 3 uses
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.next.i.i.i.i.2
  %i.ale = load i64, ptr %i.ald, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ale, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph357.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph357.3

.lr.ph357.3:                                      ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.akt, 4 ; 3 uses
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.next.i.i.i.i.3
  %i.alg = load i64, ptr %i.alf, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.alg, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph357.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph357.4

.lr.ph357.4:                                      ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.akt, 5 ; 3 uses
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.next.i.i.i.i.4
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ali, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph357.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph357.5

.lr.ph357.5:                                      ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.akt, 6 ; 3 uses
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.next.i.i.i.i.5
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.alk, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph357.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph357.6

.lr.ph357.6:                                      ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.akt, 7 ; 2 uses
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.next.i.i.i.i.6
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.alm, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph357:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.akt, 1 ; 3 uses
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.next.i.i.i.i
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.alo, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph357.6, %.lr.ph357.5, %.lr.ph357.4, %.lr.ph357.3, %.lr.ph357.2, %.lr.ph357.1, %.lr.ph357
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph357 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph357.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph357.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph357.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph357.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph357.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph357.6 ]
  %.lcssa = phi i64 [ %i.alo, %.lr.ph357 ], [ %i.alc, %.lr.ph357.1 ], [ %i.ale, %.lr.ph357.2 ], [ %i.alg, %.lr.ph357.3 ], [ %i.ali, %.lr.ph357.4 ], [ %i.alk, %.lr.ph357.5 ], [ %i.alm, %.lr.ph357.6 ]
  %i.alp = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cz
  %.016.lcssa.i.i.i.i = phi i32 [ %i.akq, %bb.cz ], [ %i.alp, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ala, %bb.cz ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.alq = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.alr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.als = trunc nuw nsw i64 %i.alr to i32
  %i.alt = or disjoint i32 %i.alq, %i.als
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.cy, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.alt, %.critedge.i.i.i.i ], [ %i.akp, %bb.cy ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ab, align 8, !tbaa !218
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !651
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #4 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE11MeasureAreaC5ERKSI_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !303    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !303
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !252  ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !304
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
  %i.o = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  store ptr %i.p, ptr %i.r, align 8, !tbaa !308
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 9223372034707292159, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 2147483647, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111, !noalias !657
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114, !noalias !658 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103, !noalias !658
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !noalias !658
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN7openvdb5v13_04math11GradStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_.exit unwind label %bb.b, !inline_history !3

bb.b:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_11GradStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EEESF_Lb0EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
end_hunk_1
