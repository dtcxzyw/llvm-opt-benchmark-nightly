Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev:bb.a
; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.81", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.84", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %1, ptr %2, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt12MeasuredBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = fmul float %2, %4
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt float %2, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = fneg <2 x float> %1
  %i.e = fneg float %2
  %i.f = fneg <2 x float> %3
  %i.g = fneg float %4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.7.0 = phi float [ %i.g, %bb.c ], [ %4, %bb.b ] ; 2 uses
  %.sroa.0119.0 = phi <2 x float> [ %i.f, %bb.c ], [ %3, %bb.b ]
  %.sroa.0126.0 = phi <2 x float> [ %i.d, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.sroa.8.0 = phi float [ %i.e, %bb.c ], [ %2, %bb.b ] ; 4 uses
  %i.h = fadd float %.sroa.7.0, %.sroa.8.0        ; 3 uses
  %i.i = fadd <2 x float> %.sroa.0119.0, %.sroa.0126.0 ; 3 uses
  %i.j = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fmul float %i.h, %i.h
  %i.m = fadd float %i.l, %i.k                    ; 2 uses
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0126.0, i64 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0126.0, i64 0
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.m) ; 2 uses
  %i.o = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x float> %i.i, %i.p              ; 2 uses
  %i.r = fdiv float %i.h, %sqrt.i.i               ; 3 uses
  %i.s = fcmp olt float %.sroa.8.0, -1.000000e+00
  %i.t = fcmp ogt float %.sroa.8.0, 1.000000e+00
  %..i.i.i = select i1 %i.t, float 1.000000e+00, float %.sroa.8.0
  %.0.i.i.i = select i1 %i.s, float -1.000000e+00, float %..i.i.i
  %i.u = tail call noundef float @acosf(float noundef %.0.i.i.i) #31 ; 6 uses
  %i.v = tail call noundef float @atan2f(float noundef %.sroa.03.4.vec.extract.i, float noundef %.sroa.03.0.vec.extract.i) #31 ; 7 uses
  %i.w = fcmp olt float %i.r, -1.000000e+00
  %i.x = fcmp ogt float %i.r, 1.000000e+00
  %..i.i.i89 = select i1 %i.x, float 1.000000e+00, float %i.r
  %.0.i.i.i90 = select i1 %i.w, float -1.000000e+00, float %..i.i.i89
  %i.y = tail call noundef float @acosf(float noundef %.0.i.i.i90) #31
  %i.z = extractelement <2 x float> %i.q, i64 0
  %i.aa = extractelement <2 x float> %i.q, i64 1
  %i.ab = tail call noundef float @atan2f(float noundef %i.aa, float noundef %i.z) #31 ; 2 uses
  %i.ac = fmul float %i.u, f0x3F22F983
  %i.ad = tail call noundef float @sqrtf(float noundef %i.ac) #31
  %i.ae = fmul float %i.y, f0x3F22F983
  %i.af = tail call noundef float @sqrtf(float noundef %i.ae) #31 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !178   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 680
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !147, !range !56, !noundef !57
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = fsub float %i.ab, %i.v
  %i.al = select i1 %i.aj, float %i.ak, float %i.ab
  %i.am = fmul float %i.al, f0x3E22F983
  %i.an = fadd float %i.am, 5.000000e-01          ; 2 uses
  %.sroa.0109.0.vec.insert = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ao = tail call noundef float @llvm.floor.f32(float %i.an)
  %i.ap = fsub float %i.an, %i.ao                 ; 2 uses
  %.sroa.0109.4.vec.insert116 = insertelement <2 x float> %.sroa.0109.0.vec.insert, float %i.ap, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 360
  %i.ar = tail call { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.aq, <2 x float> %.sroa.0109.4.vec.insert116, float noundef %i.v, float noundef %i.u)
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ar, 0 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %0, align 8, !tbaa !178
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load float, ptr %i.as, align 8, !tbaa !20
  %i.aw = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.au, <2 x float> %.fca.0.extract, float noundef %i.v, float noundef %i.u, float noundef %i.av)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !178
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, <2 x float> %.fca.0.extract, float noundef %i.v, float noundef %i.u, float noundef %i.ba)
  %i.bc = load ptr, ptr %0, align 8, !tbaa !178
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load float, ptr %i.be, align 8, !tbaa !20
  %i.bg = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.bd, <2 x float> %.fca.0.extract, float noundef %i.v, float noundef %i.u, float noundef %i.bf)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !178
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !20
  %i.bl = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.bi, <2 x float> %.fca.0.extract, float noundef %i.v, float noundef %i.u, float noundef %i.bk)
  %i.bm = fmul float %i.v, f0x3E22F983
  %i.bn = fadd float %i.bm, 5.000000e-01
  %i.bo = load ptr, ptr %0, align 8, !tbaa !178   ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 208 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !149 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bq, align 8, !tbaa !20 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 528 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 544 ; 2 uses
  %i.bv = load <2 x i32>, ptr %i.bp, align 8, !tbaa !97
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !157 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bu, align 8, !tbaa !20
  %i.by = insertelement <4 x float> poison, float %i.af, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %i.ap, i64 1
  %i.ca = insertelement <4 x float> %i.bz, float %i.ad, i64 2
  %i.cb = insertelement <4 x float> %i.ca, float %i.bn, i64 3
  %i.cc = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = fmul <4 x float> %i.cb, %i.cc           ; 5 uses
  %i.ce = fptosi <4 x float> %i.cd to <4 x i32>
  %i.cf = load <2 x i32>, ptr %i.bt, align 8, !tbaa !97
  %i.cg = load i32, ptr %i.bt, align 8, !tbaa !157 ; 2 uses
  %i.ch = shufflevector <2 x i32> %i.bv, <2 x i32> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ci = add nsw <4 x i32> %i.ch, splat (i32 -2)
  %i.cj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ci, <4 x i32> %i.ce) ; 5 uses
  %i.ck = sitofp <4 x i32> %i.cj to <4 x float>   ; 4 uses
  %foldExtExtBinop151 = fsub <4 x float> %i.cd, %i.ck
  %7 = extractelement <4 x float> %foldExtExtBinop151, i64 0 ; 3 uses
  %foldExtExtBinop151.a = fsub <4 x float> %i.cd, %i.ck
  %i.cl = extractelement <4 x float> %foldExtExtBinop151.a, i64 1 ; 2 uses
  %8 = fsub float 1.000000e+00, %7                ; 2 uses
  %i.cm = fsub float 1.000000e+00, %i.cl
  %i.cn = extractelement <4 x i32> %i.cj, i64 1
  %i.co = mul nsw i32 %i.cn, %i.bw
  %i.cp = extractelement <4 x i32> %i.cj, i64 0
  %i.cq = add nsw i32 %i.co, %i.cp
  %i.cr = zext i32 %i.cq to i64                   ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cr
  %9 = load float, ptr %i.cs, align 4, !tbaa !20
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cr
  %10 = load float, ptr %i.ct, align 4, !tbaa !20
  %11 = sext i32 %i.bw to i64
  %12 = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %11 ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.cr
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %16 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.cr
  %17 = load float, ptr %16, align 4, !tbaa !20
  %18 = fmul float %7, %10
  %19 = fmul float %7, %17
  %20 = tail call noundef float @llvm.fma.f32(float %8, float %14, float %19)
  %21 = fmul float %i.cl, %20
  %foldExtExtBinop155 = fsub <4 x float> %i.cd, %i.ck
  %22 = extractelement <4 x float> %foldExtExtBinop155, i64 2 ; 3 uses
  %foldExtExtBinop157 = fsub <4 x float> %i.cd, %i.ck
  %23 = extractelement <4 x float> %foldExtExtBinop157, i64 3 ; 2 uses
  %24 = fsub float 1.000000e+00, %22              ; 2 uses
  %25 = fsub float 1.000000e+00, %23
  %26 = extractelement <4 x i32> %i.cj, i64 3
  %27 = mul nsw i32 %26, %i.cg
  %28 = extractelement <4 x i32> %i.cj, i64 2
  %29 = add nsw i32 %27, %28
  %30 = getelementptr inbounds nuw i8, ptr %i.bo, i64 592
  %31 = load ptr, ptr %30, align 8, !tbaa !149    ; 3 uses
  %32 = zext i32 %29 to i64                       ; 4 uses
  %33 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !20
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %36 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %32
  %37 = load float, ptr %36, align 4, !tbaa !20
  %38 = sext i32 %i.cg to i64
  %39 = getelementptr inbounds [4 x i8], ptr %31, i64 %38 ; 2 uses
  %40 = getelementptr inbounds nuw [4 x i8], ptr %39, i64 %32
  %41 = load float, ptr %40, align 4, !tbaa !20
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %43 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 %32
  %44 = load float, ptr %43, align 4, !tbaa !20
  %45 = fmul float %22, %37
  %i.cu = tail call noundef float @llvm.fma.f32(float %24, float %34, float %45)
  %46 = fmul float %22, %44
  %47 = tail call noundef float @llvm.fma.f32(float %24, float %41, float %46)
  %48 = fmul float %23, %47
  %i.cv = tail call noundef float @llvm.fma.f32(float %25, float %i.cu, float %48)
  %.sroa.0.0.copyload.i100 = load <2 x float>, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  %shift159 = shufflevector <2 x float> %.sroa.0.0.copyload.i100, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop160 = fmul <2 x float> %.sroa.0.0.copyload.i100, %shift159
  %i.cw = extractelement <2 x float> %foldExtExtBinop160, i64 0
  %i.cx = fmul float %i.cw, %i.cv
  %i.cy = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.bl, i64 1 ; 2 uses
  %i.da = fcmp ogt <2 x float> %i.cz, zeroinitializer
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cz, <2 x float> zeroinitializer
  %i.dc = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.bb, i64 1 ; 2 uses
  %i.de = fcmp ogt <2 x float> %i.dd, zeroinitializer
  %i.df = select <2 x i1> %i.de, <2 x float> %i.dd, <2 x float> zeroinitializer
  %49 = tail call noundef float @llvm.fma.f32(float %8, float %9, float %18)
  %50 = tail call noundef float @llvm.fma.f32(float %i.cm, float %49, float %21)
  %shift162 = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop163 = fmul <2 x float> %.sroa.0.0.copyload.i, %shift162
  %i.dg = extractelement <2 x float> %foldExtExtBinop163, i64 0
  %i.dh = fmul float %i.dg, %50
  %i.di = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = fmul <2 x float> %i.df, %i.dj
  %i.dl = fmul <2 x float> %i.db, %i.dj
  %i.dm = fmul float %i.cx, 4.000000e+00
  %i.dn = fmul float %.sroa.7.0, %i.dm
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fdiv <2 x float> %i.dk, %i.dp
  %i.dr = fdiv <2 x float> %i.dl, %i.dp
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.sroa.0134.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.dq, %bb.e ], [ zeroinitializer, %bb.d ]
  %.sroa.6.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.dr, %bb.e ], [ zeroinitializer, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0134.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %0, <2 x float> %1, float noundef %2, float noundef %3) local_unnamed_addr #1 comdat align 2 {
_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit
  %i.g = zext i32 %i.e to i64
  %i.h = add nsw i64 %i.g, -2                     ; 2 uses
  %i.i = icmp ugt i32 %i.e, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !149  ; 2 uses
  br i1 %i.i, label %.lr.ph.i91, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

.lr.ph.i91:                                       ; preds = %bb.a, %.lr.ph.i91
  %.017.i = phi i64 [ %.fr.i, %.lr.ph.i91 ], [ 1, %bb.a ] ; 2 uses
  %.01516.i = phi i64 [ %i.u, %.lr.ph.i91 ], [ %i.h, %bb.a ] ; 2 uses
  %i.l = lshr i64 %.01516.i, 1                    ; 3 uses
  %i.m = add i64 %i.l, %.017.i                    ; 2 uses
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !20
  %i.q = fcmp ole float %i.p, %2                  ; 2 uses
  %i.r = add i64 %i.m, 1
  %i.s = select i1 %i.q, i64 %i.r, i64 %.017.i
  %.fr.i = freeze i64 %i.s                        ; 3 uses
  %.neg.i = xor i64 %i.l, -1
  %i.t = add nsw i64 %.01516.i, %.neg.i
  %i.u = select i1 %i.q, i64 %i.t, i64 %i.l       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i91, label %._crit_edge.i, !llvm.loop !546

._crit_edge.i:                                    ; preds = %.lr.ph.i91
  %i.w = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.h)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %spec.select.i = select i1 %.inv.i, i64 %..i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit: ; preds = %bb.a, %._crit_edge.i
  %i.x = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20
  %i.ad = fsub float %2, %i.aa
  %i.ae = fsub float %i.ac, %i.aa
  %i.af = fdiv float %i.ad, %i.ae                 ; 3 uses
  %i.ag = fcmp olt float %i.af, 0.000000e+00
  %i.ah = fcmp ogt float %i.af, 1.000000e+00
  %..i = select i1 %i.ah, float 1.000000e+00, float %i.af
  %.0.i = select i1 %i.ag, float 0.000000e+00, float %..i ; 2 uses
  %i.ai = fsub float 1.000000e+00, %.0.i
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !97
  %i.ak = mul i32 %i.aj, %i.y
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit
  %.sroa.5.0 = phi float [ %.0.i, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 18 uses
  %.sroa.0.0 = phi float [ %i.ai, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 1.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 18 uses
  %.1 = phi i32 [ %i.ak, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !97 ; 3 uses
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = zext i32 %i.am to i64
  %i.ap = add nsw i64 %i.ao, -2                   ; 2 uses
  %i.aq = icmp ugt i32 %i.am, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !149 ; 2 uses
  br i1 %i.aq, label %.lr.ph.i91.1, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

.lr.ph.i91.1:                                     ; preds = %bb.c, %.lr.ph.i91.1
  %.017.i.1 = phi i64 [ %.fr.i.1, %.lr.ph.i91.1 ], [ 1, %bb.c ] ; 2 uses
  %.01516.i.1 = phi i64 [ %i.bc, %.lr.ph.i91.1 ], [ %i.ap, %bb.c ] ; 2 uses
  %i.at = lshr i64 %.01516.i.1, 1                 ; 3 uses
  %i.au = add i64 %i.at, %.017.i.1                ; 2 uses
  %i.av = and i64 %i.au, 4294967295
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !20
  %i.ay = fcmp ole float %i.ax, %3                ; 2 uses
  %i.az = add i64 %i.au, 1
  %i.ba = select i1 %i.ay, i64 %i.az, i64 %.017.i.1
  %.fr.i.1 = freeze i64 %i.ba                     ; 3 uses
  %.neg.i.1 = xor i64 %i.at, -1
  %i.bb = add nsw i64 %.01516.i.1, %.neg.i.1
  %i.bc = select i1 %i.ay, i64 %i.bb, i64 %i.at   ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i91.1, label %._crit_edge.i.1, !llvm.loop !546

._crit_edge.i.1:                                  ; preds = %.lr.ph.i91.1
  %i.be = add nsw i64 %.fr.i.1, -1
  %..i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.ap)
  %.inv.i.1 = icmp sgt i64 %.fr.i.1, 0
  %spec.select.i.1 = select i1 %.inv.i.1, i64 %..i.i.1, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1: ; preds = %bb.c, %._crit_edge.i.1
  %i.bf = phi i64 [ %spec.select.i.1, %._crit_edge.i.1 ], [ 0, %bb.c ] ; 2 uses
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bf ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !20 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !20
  %i.bl = fsub float %3, %i.bi
  %i.bm = fsub float %i.bk, %i.bi
  %i.bn = fdiv float %i.bl, %i.bm                 ; 3 uses
  %i.bo = fcmp olt float %i.bn, 0.000000e+00
  %i.bp = fcmp ogt float %i.bn, 1.000000e+00
  %..i.1 = select i1 %i.bp, float 1.000000e+00, float %i.bn
  %.0.i.1 = select i1 %i.bo, float 0.000000e+00, float %..i.1 ; 2 uses
  %i.bq = fsub float 1.000000e+00, %.0.i.1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !97 ; 2 uses
  %i.bt = mul i32 %i.bs, %i.bg
  %i.bu = add i32 %i.bt, %.1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre163 = load i32, ptr %.phi.trans.insert162, align 4, !tbaa !97
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1
  %i.bv = phi i32 [ %.pre163, %bb.d ], [ %i.bs, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 2 uses
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.d ], [ %.0.i.1, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 9 uses
  %.sroa.9.0 = phi float [ 1.000000e+00, %bb.d ], [ %i.bq, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 9 uses
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.bu, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bw, align 8, !tbaa !20
  %i.by = fmul <2 x float> %1, %i.bx              ; 3 uses
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = load <2 x i32>, ptr %0, align 8, !tbaa !97 ; 3 uses
  %i.cb = add nsw <2 x i32> %i.ca, splat (i32 -2)
  %i.cc = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cb, <2 x i32> %i.bz) ; 3 uses
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.by, %i.cd
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop166 = fsub <2 x float> %i.by, %i.cd
  %i.cf = extractelement <2 x float> %foldExtExtBinop166, i64 1 ; 7 uses
  %i.cg = extractelement <2 x i32> %i.cc, i64 1   ; 3 uses
  %i.ch = extractelement <2 x i32> %i.ca, i64 0
  %i.ci = mul nsw i32 %i.cg, %i.ch
  %i.cj = extractelement <2 x i32> %i.cc, i64 0
  %i.ck = add nsw i32 %i.ci, %i.cj
  %.sroa.023.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i82 = trunc i64 %.sroa.023.0.copyload to i32 ; 4 uses
  %.sroa.2.0.extract.shift.i83 = lshr i64 %.sroa.023.0.copyload, 32
  %.sroa.2.0.extract.trunc.i84 = trunc nuw i64 %.sroa.2.0.extract.shift.i83 to i32
  %i.cl = mul nsw i32 %.sroa.2.0.extract.trunc.i84, %.sroa.0.0.extract.trunc.i82 ; 3 uses
  %i.cm = mul i32 %i.cl, %.1.1                    ; 2 uses
  %i.cn = add i32 %i.ck, %i.cm                    ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !149 ; 6 uses
  %i.cq = mul i32 %i.cl, %i.bv                    ; 3 uses
  %i.cr = add i32 %i.cn, %i.cq                    ; 2 uses
  %i.cs = load i32, ptr %i.d, align 8, !tbaa !97  ; 2 uses
  %i.ct = mul i32 %i.cs, %i.cl                    ; 6 uses
  %i.cu = add i32 %i.ct, %i.cn
  %i.cv = zext i32 %i.cn to i64                   ; 6 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !20
  %i.cy = zext i32 %i.cu to i64                   ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !20
  %i.db = fmul float %.sroa.5.0, %i.da
  %i.dc = tail call noundef float @llvm.fma.f32(float %i.cx, float %.sroa.0.0, float %i.db)
  %i.dd = add i32 %i.ct, %i.cr
  %i.de = zext i32 %i.cr to i64                   ; 6 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !20
  %i.dh = zext i32 %i.dd to i64                   ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_:_ZN4pstd5arrayIfLi3EEC2ESt16initializer_listIfE.exit
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.fp
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !20
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.fs
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !20
  %i.ha = fmul float %.sroa.5.0, %i.gz
  %i.hb = tail call noundef float @llvm.fma.f32(float %i.gx, float %.sroa.0.0, float %i.ha)
  %i.hc = fmul float %.sroa.12.0, %i.hb
  %i.hd = tail call noundef float @llvm.fma.f32(float %i.gv, float %.sroa.9.0, float %i.hc)
  %i.he = fmul float %.sroa.19.0, %i.hd
  %i.hf = tail call noundef float @llvm.fma.f32(float %i.gp, float %.sroa.16.0, float %i.he)
  %sext = shl i64 %.sroa.04.0.copyload, 32
  %i.hg = ashr exact i64 %sext, 30
  %i.hh = getelementptr inbounds i8, ptr %i.eb, i64 %i.hg ; 9 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.el
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !20
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.eo
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !20
  %i.hm = fmul float %.sroa.5.0, %i.hl
  %i.hn = tail call noundef float @llvm.fma.f32(float %i.hj, float %.sroa.0.0, float %i.hm)
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.eu
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !20
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ex
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !20
  %i.hs = fmul float %.sroa.5.0, %i.hr
  %i.ht = tail call noundef float @llvm.fma.f32(float %i.hp, float %.sroa.0.0, float %i.hs)
  %i.hu = fmul float %.sroa.12.0, %i.ht
  %i.hv = tail call noundef float @llvm.fma.f32(float %i.hn, float %.sroa.9.0, float %i.hu)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.fg
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !20
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.fj
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !20
  %i.ia = fmul float %.sroa.5.0, %i.hz
  %i.ib = tail call noundef float @llvm.fma.f32(float %i.hx, float %.sroa.0.0, float %i.ia)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.fp
  %i.id = load float, ptr %i.ic, align 4, !tbaa !20
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.fs
  %i.if = load float, ptr %i.ie, align 4, !tbaa !20
  %i.ig = fmul float %.sroa.5.0, %i.if
  %i.ih = tail call noundef float @llvm.fma.f32(float %i.id, float %.sroa.0.0, float %i.ig)
  %i.ii = fmul float %.sroa.12.0, %i.ih
  %i.ij = tail call noundef float @llvm.fma.f32(float %i.ib, float %.sroa.9.0, float %i.ii)
  %i.ik = fmul float %.sroa.19.0, %i.ij
  %i.il = tail call noundef float @llvm.fma.f32(float %i.hv, float %.sroa.16.0, float %i.ik)
  %i.im = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 8 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.el
  %i.io = load float, ptr %i.in, align 4, !tbaa !20
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.eo
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !20
  %i.ir = fmul float %.sroa.5.0, %i.iq
  %i.is = tail call noundef float @llvm.fma.f32(float %i.io, float %.sroa.0.0, float %i.ir)
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.eu
  %i.iu = load float, ptr %i.it, align 4, !tbaa !20
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.ex
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !20
  %i.ix = fmul float %.sroa.5.0, %i.iw
  %i.iy = tail call noundef float @llvm.fma.f32(float %i.iu, float %.sroa.0.0, float %i.ix)
  %i.iz = fmul float %.sroa.12.0, %i.iy
  %i.ja = tail call noundef float @llvm.fma.f32(float %i.is, float %.sroa.9.0, float %i.iz)
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.fg
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !20
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.fj
  %i.je = load float, ptr %i.jd, align 4, !tbaa !20
  %i.jf = fmul float %.sroa.5.0, %i.je
  %i.jg = tail call noundef float @llvm.fma.f32(float %i.jc, float %.sroa.0.0, float %i.jf)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.fp
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !20
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.fs
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !20
  %i.jl = fmul float %.sroa.5.0, %i.jk
  %i.jm = tail call noundef float @llvm.fma.f32(float %i.ji, float %.sroa.0.0, float %i.jl)
  %i.jn = fmul float %.sroa.12.0, %i.jm
  %i.jo = tail call noundef float @llvm.fma.f32(float %i.jg, float %.sroa.9.0, float %i.jn)
  %i.jp = fmul float %.sroa.19.0, %i.jo
  %i.jq = tail call noundef float @llvm.fma.f32(float %i.ja, float %.sroa.16.0, float %i.jp)
  %i.jr = fmul float %i.dp, %i.hf
  %i.js = tail call noundef float @llvm.fma.f32(float %i.dr, float %i.ga, float %i.jr)
  %i.jt = fmul float %i.dp, %i.jq
  %i.ju = tail call noundef float @llvm.fma.f32(float %i.dr, float %i.il, float %i.jt)
  %i.jv = fmul float %i.dq, %i.ju
  %i.jw = tail call noundef float @llvm.fma.f32(float %i.ds, float %i.js, float %i.jv)
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.dg, align 8, !tbaa !20 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop109 = fmul <2 x float> %.sroa.0.0.copyload, %shift
  %i.jx = extractelement <2 x float> %foldExtExtBinop109, i64 0
  %i.jy = fmul float %i.jx, %i.jw
  ret float %i.jy
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt12MeasuredBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 4 captures(none) initializes((0, 41), (44, 45)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, <2 x float> %2, float %3, float %4, <2 x float> %5, i32 %6, i32 noundef %7) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = and i32 %7, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp ole float %3, 0.000000e+00          ; 4 uses
  %i.c = fneg <2 x float> %2
  %i.d = fneg float %3
  %.sroa.0127.0 = select i1 %i.b, <2 x float> %i.c, <2 x float> %2 ; 2 uses
  %.sroa.9135.0 = select i1 %i.b, float %i.d, float %3 ; 5 uses
  %i.e = fcmp olt float %.sroa.9135.0, -1.000000e+00
  %i.f = fcmp ogt float %.sroa.9135.0, 1.000000e+00
  %..i.i.i = select i1 %i.f, float 1.000000e+00, float %.sroa.9135.0
  %.0.i.i.i = select i1 %i.e, float -1.000000e+00, float %..i.i.i
  %i.g = tail call noundef float @acosf(float noundef %.0.i.i.i) #31 ; 7 uses
  %.sroa.0127.4.vec.extract = extractelement <2 x float> %.sroa.0127.0, i64 1 ; 3 uses
  %.sroa.0127.0.vec.extract = extractelement <2 x float> %.sroa.0127.0, i64 0 ; 3 uses
  %i.h = tail call noundef float @atan2f(float noundef %.sroa.0127.4.vec.extract, float noundef %.sroa.0127.0.vec.extract) #31 ; 8 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !178
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 688
  %i.k = tail call { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.j, <2 x float> %5, float noundef %i.h, float noundef %i.g) ; 2 uses
  %.fca.0.extract64 = extractvalue { <2 x float>, float } %i.k, 0 ; 5 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !178
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.n = tail call { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.m, <2 x float> %.fca.0.extract64, float noundef %i.h, float noundef %i.g) ; 2 uses
  %.fca.0.extract56 = extractvalue { <2 x float>, float } %i.n, 0 ; 5 uses
  %.sroa.052.4.vec.extract = extractelement <2 x float> %.fca.0.extract56, i64 1
  %i.o = fmul float %.sroa.052.4.vec.extract, 2.000000e+00
  %i.p = fadd float %i.o, -1.000000e+00
  %i.q = fmul float %i.p, f0x40490FDB             ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.fca.0.extract56, %.fca.0.extract56
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = fmul float %i.r, f0x3FC90FDB             ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !178    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 680
  %i.v = load i8, ptr %i.u, align 8, !tbaa !147, !range !56, !noundef !57
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = fadd float %i.h, %i.q
  %spec.select = select i1 %i.w, float %i.x, float %i.q ; 2 uses
  %i.y = tail call noundef float @sinf(float noundef %i.s) #31 ; 4 uses
  %i.z = tail call noundef float @cosf(float noundef %i.s) #31 ; 3 uses
  %i.aa = fcmp olt float %i.y, -1.000000e+00
  %i.ab = fcmp ogt float %i.y, 1.000000e+00
  %..i.i = select i1 %i.ab, float 1.000000e+00, float %i.y
  %.0.i.i = select i1 %i.aa, float -1.000000e+00, float %..i.i ; 2 uses
  %i.ac = tail call noundef float @cosf(float noundef %spec.select) #31
  %i.ad = fmul float %i.ac, %.0.i.i               ; 2 uses
  %i.ae = tail call noundef float @sinf(float noundef %spec.select) #31
  %i.af = fmul float %.0.i.i, %i.ae               ; 2 uses
  %i.ag = fcmp olt float %i.z, -1.000000e+00
  %i.ah = fcmp ogt float %i.z, 1.000000e+00
  %..i7.i = select i1 %i.ah, float 1.000000e+00, float %i.z
  %.0.i8.i = select i1 %i.ag, float -1.000000e+00, float %..i7.i ; 2 uses
  %i.ai = fmul float %.sroa.0127.0.vec.extract, %i.ad
  %i.aj = fmul float %.sroa.0127.4.vec.extract, %i.af
  %i.ak = fadd float %i.ai, %i.aj
  %i.al = fmul float %.sroa.9135.0, %.0.i8.i
  %i.am = fadd float %i.al, %i.ak                 ; 2 uses
  %i.an = fmul float %i.am, 2.000000e+00          ; 3 uses
  %i.ao = fmul float %.0.i8.i, %i.an
  %i.ap = fsub float %i.ao, %.sroa.9135.0         ; 4 uses
  %i.aq = fcmp ugt float %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.052.0.vec.extract = extractelement <2 x float> %.fca.0.extract56, i64 0
  %i.ar = fmul float %i.ad, %i.an
  %i.as = fsub float %i.ar, %.sroa.0127.0.vec.extract ; 2 uses
  %.sroa.0.0.vec.insert.i35.i = insertelement <2 x float> poison, float %i.as, i64 0
  %i.at = fmul float %i.af, %i.an
  %i.au = fsub float %i.at, %.sroa.0127.4.vec.extract ; 2 uses
  %.sroa.0.4.vec.insert.i36.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i35.i, float %i.au, i64 1
  %.fca.1.extract57 = extractvalue { <2 x float>, float } %i.n, 1
  %.fca.1.extract65 = extractvalue { <2 x float>, float } %i.k, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ax = load float, ptr %i.av, align 8, !tbaa !20
  %i.ay = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.aw, <2 x float> %.fca.0.extract64, float noundef %i.h, float noundef %i.g, float noundef %i.ax)
  %i.az = load ptr, ptr %1, align 8, !tbaa !178
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !20
  %i.bd = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.ba, <2 x float> %.fca.0.extract64, float noundef %i.h, float noundef %i.g, float noundef %i.bc)
  %i.be = load ptr, ptr %1, align 8, !tbaa !178
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !20
  %i.bi = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.bf, <2 x float> %.fca.0.extract64, float noundef %i.h, float noundef %i.g, float noundef %i.bh)
  %i.bj = load ptr, ptr %1, align 8, !tbaa !178
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !20
  %i.bn = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.bk, <2 x float> %.fca.0.extract64, float noundef %i.h, float noundef %i.g, float noundef %i.bm)
  %i.bo = fmul float %i.g, f0x3F22F983
  %i.bp = tail call noundef float @sqrtf(float noundef %i.bo) #31
  %i.bq = fmul float %i.h, f0x3E22F983
  %i.br = fadd float %i.bq, 5.000000e-01
  %i.bs = load ptr, ptr %1, align 8, !tbaa !178   ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 208 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 272
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !149 ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bu, align 8, !tbaa !20 ; 3 uses
  %shift = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop163 = fmul <2 x float> %.sroa.0.0.copyload.i, %shift
  %i.bx = extractelement <2 x float> %foldExtExtBinop163, i64 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 528 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 544 ; 2 uses
  %i.ca = load <2 x i32>, ptr %i.bt, align 8, !tbaa !97
  %i.cb = load i32, ptr %i.bt, align 8, !tbaa !157 ; 2 uses
  %i.cc = load <2 x float>, ptr %i.bz, align 8, !tbaa !20
  %i.cd = shufflevector <2 x float> %.fca.0.extract56, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = insertelement <4 x float> %i.cd, float %i.bp, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %i.br, i64 3
  %i.cg = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ch = fmul <4 x float> %i.cf, %i.cg           ; 4 uses
  %i.ci = fptosi <4 x float> %i.ch to <4 x i32>
  %i.cj = load <2 x i32>, ptr %i.by, align 8, !tbaa !97
  %i.ck = load i32, ptr %i.by, align 8, !tbaa !157 ; 2 uses
  %i.cl = shufflevector <2 x i32> %i.ca, <2 x i32> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = add nsw <4 x i32> %i.cl, splat (i32 -2)
  %i.cn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cm, <4 x i32> %i.ci) ; 5 uses
  %i.co = sitofp <4 x i32> %i.cn to <4 x float>   ; 3 uses
  %foldExtExtBinop165 = fsub <4 x float> %i.ch, %i.co
  %9 = extractelement <4 x float> %foldExtExtBinop165, i64 0 ; 3 uses
  %10 = fsub float 1.000000e+00, %9               ; 2 uses
  %i.cp = extractelement <4 x i32> %i.cn, i64 1
  %i.cq = mul nsw i32 %i.cp, %i.cb
  %i.cr = extractelement <4 x i32> %i.cn, i64 0
  %i.cs = add nsw i32 %i.cq, %i.cr
  %i.ct = zext i32 %i.cs to i64                   ; 4 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ct
  %12 = load float, ptr %11, align 4, !tbaa !20
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ct
  %13 = load float, ptr %i.cu, align 4, !tbaa !20
  %i.cv = sext i32 %i.cb to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ct
  %14 = load float, ptr %i.cx, align 4, !tbaa !20
  %15 = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %16 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.ct
  %17 = load float, ptr %16, align 4, !tbaa !20
  %18 = fmul float %9, %13
  %19 = tail call noundef float @llvm.fma.f32(float %10, float %12, float %18)
  %20 = fmul float %9, %17
  %21 = tail call noundef float @llvm.fma.f32(float %10, float %14, float %20)
  %foldExtExtBinop167 = fsub <4 x float> %i.ch, %i.co
  %22 = extractelement <4 x float> %foldExtExtBinop167, i64 2 ; 3 uses
  %23 = fsub float 1.000000e+00, %22              ; 2 uses
  %24 = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %25 = shufflevector <4 x float> %i.co, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %26 = fsub <2 x float> %24, %25                 ; 3 uses
  %27 = extractelement <2 x float> %26, i64 0
  %28 = fmul float %27, %21
  %29 = fsub <2 x float> splat (float 1.000000e+00), %26 ; 2 uses
  %30 = extractelement <2 x float> %29, i64 0
  %31 = tail call noundef float @llvm.fma.f32(float %30, float %19, float %28)
  %32 = fmul float %i.bx, %31
  %33 = extractelement <4 x i32> %i.cn, i64 3
  %34 = mul nsw i32 %33, %i.ck
  %35 = extractelement <4 x i32> %i.cn, i64 2
  %36 = add nsw i32 %34, %35
  %37 = getelementptr inbounds nuw i8, ptr %i.bs, i64 592
  %38 = load ptr, ptr %37, align 8, !tbaa !149    ; 3 uses
  %39 = zext i32 %36 to i64                       ; 4 uses
  %40 = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !20
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 4
  %43 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 %39
  %44 = load float, ptr %43, align 4, !tbaa !20
  %45 = sext i32 %i.ck to i64
  %46 = getelementptr inbounds [4 x i8], ptr %38, i64 %45 ; 2 uses
  %47 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %39
  %48 = load float, ptr %47, align 4, !tbaa !20
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %50 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %39
  %51 = load float, ptr %50, align 4, !tbaa !20
  %52 = fmul float %22, %44
  %i.cy = tail call noundef float @llvm.fma.f32(float %23, float %41, float %52)
  %i.cz = fmul float %22, %51
  %53 = tail call noundef float @llvm.fma.f32(float %23, float %48, float %i.cz)
  %i.da = extractelement <2 x float> %26, i64 1
  %i.db = fmul float %i.da, %53
  %i.dc = extractelement <2 x float> %29, i64 1
  %i.dd = tail call noundef float @llvm.fma.f32(float %i.dc, float %i.cy, float %i.db)
  %.sroa.0.0.copyload.i108 = load <2 x float>, ptr %i.bz, align 8, !tbaa !20 ; 2 uses
  %shift165 = shufflevector <2 x float> %.sroa.0.0.copyload.i108, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop166 = fmul <2 x float> %.sroa.0.0.copyload.i108, %shift165
  %i.de = extractelement <2 x float> %foldExtExtBinop166, i64 0
  %i.df = fmul float %i.de, %i.dd
  %i.dg = fmul float %i.df, 4.000000e+00
  %i.dh = tail call noundef float @llvm.fabs.f32(float %i.ap)
  %i.di = fmul float %i.dh, %i.dg
  %i.dj = fdiv float %32, %i.di
  %i.dk = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.bd, i64 1
  %i.dm = insertelement <4 x float> %i.dl, float %i.bi, i64 2
  %i.dn = insertelement <4 x float> %i.dm, float %i.bn, i64 3 ; 2 uses
  %i.do = fcmp ogt <4 x float> %i.dn, zeroinitializer
  %i.dp = select <4 x i1> %i.do, <4 x float> %i.dn, <4 x float> zeroinitializer
  %i.dq = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = fmul <4 x float> %i.dr, %i.dp           ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dv = fmul float %i.am, 4.000000e+00
  %i.dw = fmul float %.sroa.052.0.vec.extract, f0x419DE9E7
  %i.dx = fmul float %i.dw, %i.y                  ; 2 uses
  %i.dy = fcmp olt float %i.dx, f0x358637BD
  %.sroa.speculated = select i1 %i.dy, float f0x358637BD, float %i.dx
  %i.dz = fmul float %.sroa.speculated, %i.dv
  %i.ea = fdiv float %.fca.1.extract57, %i.dz
  %i.eb = fneg float %i.as
  %i.ec = fneg float %i.au
  %i.ed = fneg float %i.ap
  %.sroa.0.0.vec.insert.i112 = insertelement <2 x float> poison, float %i.eb, i64 0
  %.sroa.0.4.vec.insert.i113 = insertelement <2 x float> %.sroa.0.0.vec.insert.i112, float %i.ec, i64 1
  %.sroa.0123.0 = select i1 %i.b, <2 x float> %.sroa.0.4.vec.insert.i113, <2 x float> %.sroa.0.4.vec.insert.i36.i
  %.sroa.8126.0 = select i1 %i.b, float %i.ed, float %i.ap
  %i.ee = fmul float %.fca.1.extract65, %i.ea
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.ef, align 4, !tbaa !55
  store <2 x float> %i.dt, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.du, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0123.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.sroa.8126.0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ee, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 9, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %0, <2 x float> %1, float noundef %2, float noundef %3) local_unnamed_addr #1 comdat align 2 {
_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

.lr.ph.i66:                                       ; preds = %bb.e
  %i.f = mul i32 %i.gy, %i.gq                     ; 2 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.h = mul i32 %i.g, %i.gq                      ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i66
  %.017.i = phi i64 [ 1, %.lr.ph.i66 ], [ %.fr.i, %bb.a ] ; 2 uses
  %.01516.i = phi i64 [ %i.gt, %.lr.ph.i66 ], [ %i.al, %bb.a ] ; 2 uses
  %i.i = lshr i64 %.01516.i, 1                    ; 3 uses
  %i.j = add i64 %i.i, %.017.i                    ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.gr, %i.k                      ; 3 uses
  %i.m = add i32 %i.l, %i.f                       ; 2 uses
  %i.n = add i32 %i.l, %i.h
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !20
  %i.r = zext i32 %i.n to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !20
  %i.u = fmul float %.sroa.6.0, %i.t
  %i.v = tail call noundef float @llvm.fma.f32(float %i.q, float %.sroa.0.0, float %i.u)
  %i.w = add i32 %i.m, %i.h
  %i.x = zext i32 %i.m to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !20
  %i.aa = zext i32 %i.w to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20
  %i.ad = fmul float %.sroa.6.0, %i.ac
  %i.ae = tail call noundef float @llvm.fma.f32(float %i.z, float %.sroa.0.0, float %i.ad)
  %i.af = fmul float %.sroa.15.0, %i.ae
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.v, float %.sroa.11.0, float %i.af)
  %i.ah = fcmp olt float %i.ag, %.0.i65           ; 2 uses
  %i.ai = add i64 %i.j, 1
  %i.aj = select i1 %i.ah, i64 %i.ai, i64 %.017.i
  %.fr.i = freeze i64 %i.aj                       ; 3 uses
  %.neg.i = xor i64 %i.i, -1
  %i.ak = add nsw i64 %.01516.i, %.neg.i
  %i.al = select i1 %i.ah, i64 %i.ak, i64 %i.i    ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %bb.a, label %._crit_edge.i, !llvm.loop !548

._crit_edge.i:                                    ; preds = %bb.a
  %i.an = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.gt)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %i.ao = trunc nuw nsw i64 %..i.i to i32
  %i.ap = select i1 %.inv.i, i32 %i.ao, i32 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE1_EEmmRKT_.exit

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE1_EEmmRKT_.exit: ; preds = %._ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE1_EEmmRKT_.exit_crit_edge, %._crit_edge.i
  %.pre-phi207 = phi i32 [ %.pre206, %._ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE1_EEmmRKT_.exit_crit_edge ], [ %i.h, %._crit_edge.i ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre205, %._ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE1_EEmmRKT_.exit_crit_edge ], [ %i.f, %._crit_edge.i ]
  %i.aq = phi i32 [ %.pre204, %._ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE1_EEmmRKT_.exit_crit_edge ], [ %i.g, %._crit_edge.i ]
  %i.ar = phi i32 [ 0, %._ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE1_EEmmRKT_.exit_crit_edge ], [ %i.ap, %._crit_edge.i ] ; 3 uses
  %i.as = add i32 %i.ar, %i.gr                    ; 3 uses
  %i.at = add i32 %.pre-phi, %i.as                ; 2 uses
  %i.au = add i32 %.pre-phi207, %i.as
  %i.av = zext i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !20
  %i.ay = zext i32 %i.au to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = fmul float %.sroa.6.0, %i.ba
  %i.bc = tail call noundef float @llvm.fma.f32(float %i.ax, float %.sroa.0.0, float %i.bb)
  %i.bd = add i32 %.pre-phi207, %i.at
  %i.be = zext i32 %i.at to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !20
  %i.bh = zext i32 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  %i.bk = fmul float %.sroa.6.0, %i.bj
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.bg, float %.sroa.0.0, float %i.bk)
  %i.bm = fmul float %.sroa.15.0, %i.bl
  %i.bn = tail call noundef float @llvm.fma.f32(float %i.bc, float %.sroa.11.0, float %i.bm)
  %i.bo = fsub float %.0.i65, %i.bn               ; 2 uses
  %.sroa.041.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.041.0.copyload to i32 ; 5 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.041.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.bp = mul nsw i32 %.sroa.2.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i ; 3 uses
  %i.bq = mul i32 %i.ar, %.sroa.0.0.extract.trunc.i
  %i.br = mul i32 %i.bp, %.1.1
  %i.bs = add i32 %i.br, %i.bq                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 18 uses
  %i.bv = add i32 %i.bs, -1                       ; 2 uses
  %i.bw = add i32 %i.bv, %.sroa.0.0.extract.trunc.i ; 3 uses
  %i.bx = mul i32 %i.bp, %i.gy                    ; 4 uses
  %i.by = add i32 %i.bw, %i.bx                    ; 2 uses
  %i.bz = mul i32 %i.bp, %i.aq                    ; 8 uses
  %i.ca = add i32 %i.bw, %i.bz
  %i.cb = zext i32 %i.bw to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !20
  %i.ce = zext i32 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !20
  %i.ch = fmul float %.sroa.6.0, %i.cg
  %i.ci = tail call noundef float @llvm.fma.f32(float %i.cd, float %.sroa.0.0, float %i.ch)
  %i.cj = add i32 %i.by, %i.bz
  %i.ck = zext i32 %i.by to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !20
  %i.cn = zext i32 %i.cj to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !20
  %i.cq = fmul float %.sroa.6.0, %i.cp
  %i.cr = tail call noundef float @llvm.fma.f32(float %i.cm, float %.sroa.0.0, float %i.cq)
  %i.cs = fmul float %.sroa.15.0, %i.cr
  %i.ct = tail call noundef float @llvm.fma.f32(float %i.ci, float %.sroa.11.0, float %i.cs) ; 6 uses
  %i.cu = shl nsw i32 %.sroa.0.0.extract.trunc.i, 1
  %i.cv = add i32 %i.bv, %i.cu                    ; 3 uses
  %i.cw = add i32 %i.bx, %i.cv                    ; 2 uses
  %i.cx = add i32 %i.bz, %i.cv
  %i.cy = zext i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !20
  %i.db = zext i32 %i.cx to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !20
  %i.de = fmul float %.sroa.6.0, %i.dd
  %i.df = tail call noundef float @llvm.fma.f32(float %i.da, float %.sroa.0.0, float %i.de)
  %i.dg = add i32 %i.cw, %i.bz
  %i.dh = zext i32 %i.cw to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !20
  %i.dk = zext i32 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !20
  %i.dn = fmul float %.sroa.6.0, %i.dm
  %i.do = tail call noundef float @llvm.fma.f32(float %i.dj, float %.sroa.0.0, float %i.dn)
  %i.dp = fmul float %.sroa.15.0, %i.do
  %i.dq = tail call noundef float @llvm.fma.f32(float %i.df, float %.sroa.11.0, float %i.dp) ; 3 uses
  %i.dr = fsub float %i.ct, %i.dq                 ; 3 uses
  %i.ds = tail call noundef float @llvm.fabs.f32(float %i.dr)
  %i.dt = fadd float %i.ct, %i.dq                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4pbrt13ConductorBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE:bb.a
  %i.g = select i1 %i.f, float %i.e, float %i.d
  %i.h = fcmp olt float %i.g, 1.000000e-03
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef float @llvm.fabs.f32(float %2)
  %i.j = tail call noundef float @llvm.fabs.f32(float %4)
  %i.k = fcmp oeq float %4, 0.000000e+00
  %i.l = fcmp oeq float %2, 0.000000e+00
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = fadd float %2, %4                        ; 3 uses
  %i.n = fadd <2 x float> %1, %3                  ; 4 uses
  %i.o = fmul <2 x float> %i.n, %i.n              ; 2 uses
  %shift = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.o, %shift
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = fmul float %i.m, %i.m
  %i.r = fadd float %i.q, %i.p                    ; 2 uses
  %i.s = fcmp oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.r) ; 3 uses
  %i.t = extractelement <2 x float> %i.n, i64 0
  %i.u = fdiv float %i.t, %sqrt.i.i               ; 2 uses
  %i.v = extractelement <2 x float> %i.n, i64 1
  %i.w = fdiv float %i.v, %sqrt.i.i               ; 2 uses
  %i.x = fdiv float %i.m, %sqrt.i.i               ; 3 uses
  %i.y = fmul float %.sroa.03.0.vec.extract.i, %i.u
  %i.z = fmul float %.sroa.03.4.vec.extract.i, %i.w
  %i.aa = fadd float %i.y, %i.z
  %i.ab = fmul float %2, %i.x
  %i.ac = fadd float %i.ab, %i.aa
  %i.ad = tail call noundef float @llvm.fabs.f32(float %i.ac) ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.014.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 2 uses
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.215.0.copyload = load <2 x float>, ptr %.sroa.215.0..sroa_idx, align 4, !tbaa !21 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 2 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.213.0.copyload = load <2 x float>, ptr %.sroa.213.0..sroa_idx, align 4, !tbaa !21 ; 2 uses
  %.sroa.0.4.vec.insert.i77 = shufflevector <2 x float> %.sroa.014.0.copyload, <2 x float> %.sroa.012.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ag = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ad, <2 x float> %.sroa.0.4.vec.insert.i77)
  %.sroa.0.4.vec.insert.1.i = shufflevector <2 x float> %.sroa.014.0.copyload, <2 x float> %.sroa.012.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ah = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ad, <2 x float> %.sroa.0.4.vec.insert.1.i)
  %.sroa.0.4.vec.insert.2.i = shufflevector <2 x float> %.sroa.215.0.copyload, <2 x float> %.sroa.213.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ai = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ad, <2 x float> %.sroa.0.4.vec.insert.2.i)
  %.sroa.0.4.vec.insert.3.i = shufflevector <2 x float> %.sroa.215.0.copyload, <2 x float> %.sroa.213.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.aj = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ad, <2 x float> %.sroa.0.4.vec.insert.3.i)
  %i.ak = fmul float %i.x, %i.x                   ; 4 uses
  %i.al = fsub float 1.000000e+00, %i.ak          ; 2 uses
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.am, float %i.al, float 0.000000e+00 ; 2 uses
  %i.an = fdiv float %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.ao = tail call float @llvm.fabs.f32(float %i.an)
  %i.ap = fcmp oeq float %i.ao, +inf
  br i1 %i.ap, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = fmul float %i.ak, %i.ak                 ; 2 uses
  %i.ar = fcmp olt float %i.aq, 1.000000e-16
  br i1 %i.ar, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = tail call noundef float @sqrtf(float noundef %.sroa.speculated.i.i.i) #31 ; 3 uses
  %i.at = fcmp oeq float %i.as, 0.000000e+00
  br i1 %i.at, label %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i, label %bb.h

_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i:    ; preds = %bb.g
  %i.au = load float, ptr %0, align 4, !tbaa !41  ; 2 uses
  %i.av = fdiv float 1.000000e+00, %i.au          ; 2 uses
  %i.aw = fmul float %i.av, %i.av
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ax = fdiv float %i.u, %i.as                  ; 3 uses
  %i.ay = fcmp olt float %i.ax, -1.000000e+00
  %i.az = fcmp ogt float %i.ax, 1.000000e+00
  %..i.i.i = select i1 %i.az, float 1.000000e+00, float %i.ax
  %.0.i.i.i = select i1 %i.ay, float -1.000000e+00, float %..i.i.i
  %i.ba = load float, ptr %0, align 4, !tbaa !41  ; 2 uses
  %i.bb = fdiv float %.0.i.i.i, %i.ba             ; 2 uses
  %i.bc = fmul float %i.bb, %i.bb
  %i.bd = fdiv float %i.w, %i.as                  ; 3 uses
  %i.be = fcmp olt float %i.bd, -1.000000e+00
  %i.bf = fcmp ogt float %i.bd, 1.000000e+00
  %..i.i29.i = select i1 %i.bf, float 1.000000e+00, float %i.bd
  %.0.i.i30.i = select i1 %i.be, float -1.000000e+00, float %..i.i29.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i:           ; preds = %bb.h, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i
  %i.bg = phi float [ %i.bc, %bb.h ], [ %i.aw, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bh = phi float [ %i.ba, %bb.h ], [ %i.au, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bi = phi float [ %.0.i.i30.i, %bb.h ], [ 0.000000e+00, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bj = load float, ptr %i.c, align 4, !tbaa !42 ; 2 uses
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.bk, %i.bk
  %i.bm = fadd float %i.bg, %i.bl
  %i.bn = fmul float %i.an, %i.bm
  %i.bo = fmul float %i.bh, f0x40490FDB
  %i.bp = fmul float %i.bo, %i.bj
  %i.bq = fmul float %i.aq, %i.bp
  %i.br = fadd float %i.bn, 1.000000e+00          ; 2 uses
  %i.bs = fmul float %i.br, %i.br
  %i.bt = fmul float %i.bq, %i.bs
  %i.bu = fdiv float 1.000000e+00, %i.bt
  br label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit

_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit: ; preds = %bb.e, %bb.f, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i
  %.1.i = phi float [ 0.000000e+00, %bb.e ], [ %i.bu, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i ], [ 0.000000e+00, %bb.f ]
  %i.bv = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.ah, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.ai, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.aj, i64 3
  %i.bz = insertelement <4 x float> poison, float %.1.i, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = fmul <4 x float> %i.by, %i.ca
  %i.cc = tail call noundef float @_ZNK4pbrt27TrowbridgeReitzDistribution1GENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(8) %0, <2 x float> %1, float %2, <2 x float> %3, float %4)
  %i.cd = fmul float %i.j, 4.000000e+00
  %i.ce = fmul float %i.i, %i.cd
  %i.cf = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = fmul <4 x float> %i.cg, %i.cb
  %i.ci = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = fdiv <4 x float> %i.ch, %i.cj           ; 2 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit
  %.sroa.0101.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.c ], [ %i.cl, %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit ], [ zeroinitializer, %bb.d ]
  %.sroa.10.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.c ], [ %i.cm, %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit ], [ zeroinitializer, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0101.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.10.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_bxdfs.cpp() #26 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !20
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !20
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !20
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !20
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL26STATS_REGmeasuredBRDFBytesE, ptr noundef nonnull @"_ZN4pbrt3$_58__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f32.p0(<3 x float>, ptr captures(none), <3 x i1>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { cold nofree noreturn }
attributes #22 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !66}
!1 = distinct !{!1, !66}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !66}
!5 = distinct !{null}
!6 = distinct !{null, null, null, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{!8, !66}
!9 = distinct !{!9, !66}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"float", !15, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!15, !15, i64 0}
!22 = !{!"_ZTSN4pbrt27TrowbridgeReitzDistributionE", !19, i64 0, !19, i64 4}
!23 = !{!"_ZTSN4pbrt14DielectricBxDFE", !19, i64 0, !22, i64 4}
!24 = !{!"_ZTSN4pstd5arrayIfLi4EEE", !15, i64 0}
!25 = !{!"_ZTSN4pbrt15SampledSpectrumE", !24, i64 0}
!26 = !{!"_ZTSN4pbrt11DiffuseBxDFE", !25, i64 0}
!27 = !{!"_ZTSN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EEE", !23, i64 0, !26, i64 12, !19, i64 28, !19, i64 32, !25, i64 36, !16, i64 52, !16, i64 56}
!28 = !{!27, !19, i64 28}
!29 = !{!27, !19, i64 32}
!30 = !{i64 0, i64 16, !21}
!31 = !{!27, !16, i64 52}
!32 = !{!27, !16, i64 56}
!33 = !{!"any pointer", !15, i64 0}
!34 = !{!"p1 omnipotent char", !33, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!"long", !15, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !37, i64 8, !15, i64 16}
!39 = !{!38, !37, i64 8}
!40 = !{!38, !34, i64 0}
!41 = !{!22, !19, i64 0}
!42 = !{!22, !19, i64 4}
!43 = !{!"p1 _ZTSN4pbrt14DielectricBxDFE", !33, i64 0}
!44 = !{!"p1 _ZTSN4pbrt11DiffuseBxDFE", !33, i64 0}
!45 = !{!"_ZTSN4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEEE", !43, i64 0, !44, i64 8}
!46 = !{!45, !44, i64 8}
!47 = !{!45, !43, i64 0}
!48 = !{!"p1 _ZTSN4pbrt11PBRTOptionsE", !33, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"bool", !15, i64 0}
!51 = !{!"_ZTSN4pbrt25RenderingCoordinateSystemE", !15, i64 0}
!52 = !{!"_ZTSN4pbrt16BasicPBRTOptionsE", !16, i64 0, !50, i64 4, !50, i64 5, !50, i64 6, !50, i64 7, !50, i64 8, !50, i64 9, !50, i64 10, !50, i64 11, !50, i64 12, !50, i64 13, !51, i64 16}
!53 = !{!52, !16, i64 0}
!54 = !{!"_ZTSN4pstd8optionalIN4pbrt10BSDFSampleEEE", !15, i64 0, !50, i64 44}
!55 = !{!54, !50, i64 44}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!59 = !{!"_ZTSN4pbrt7Vector3IfEE", !58, i64 0}
!60 = !{!"_ZTSN4pbrt9BxDFFlagsE", !15, i64 0}
!61 = !{!"_ZTSN4pbrt10BSDFSampleE", !25, i64 0, !59, i64 16, !19, i64 28, !60, i64 32, !19, i64 36, !50, i64 40}
!62 = !{!61, !19, i64 28}
!63 = !{!58, !19, i64 8}
!64 = !{!"_ZTSN4pbrt15HGPhaseFunctionE", !19, i64 0}
!65 = !{!64, !19, i64 0}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!23, !19, i64 0}
!68 = !{!61, !60, i64 32}
!69 = !{!61, !50, i64 40}
!70 = !{!"branch_weights", i32 1, i32 1048575}
!71 = !{!37, !37, i64 0}
!72 = !{!"_ZTSN4pbrt13ConductorBxDFE", !22, i64 0, !25, i64 8, !25, i64 24}
!73 = !{!"_ZTSN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EEE", !23, i64 0, !72, i64 12, !19, i64 52, !19, i64 56, !25, i64 60, !16, i64 76, !16, i64 80}
!74 = !{!73, !19, i64 52}
!75 = !{!73, !19, i64 56}
!76 = !{!73, !16, i64 76}
!77 = !{!73, !16, i64 80}
!78 = !{!"p1 _ZTSN4pbrt13ConductorBxDFE", !33, i64 0}
!79 = !{!"_ZTSN4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEEE", !43, i64 0, !78, i64 8}
!80 = !{!79, !78, i64 8}
!81 = !{!79, !43, i64 0}
!82 = !{!"_ZTSN4pbrt8HairBxDFE", !19, i64 0, !19, i64 4, !25, i64 8, !19, i64 24, !19, i64 28, !15, i64 32, !19, i64 48, !15, i64 52, !15, i64 64}
!83 = !{!82, !19, i64 0}
!84 = !{!82, !19, i64 4}
!85 = !{!82, !19, i64 48}
!86 = !{!"any p2 pointer", !33, i64 0}
!87 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !86, i64 0}
!88 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !33, i64 0}
!89 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !88, i64 0}
!90 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !19, i64 0, !37, i64 8}
!91 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6Tensor5FieldEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !87, i64 0, !37, i64 8, !89, i64 16, !37, i64 24, !90, i64 32, !88, i64 48}
!92 = !{!91, !87, i64 0}
!93 = !{!91, !37, i64 8}
!94 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt6Tensor5FieldESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE", !91, i64 0}
!95 = !{!"_ZTSN4pbrt6TensorE", !94, i64 0, !38, i64 56, !37, i64 88}
!96 = !{!95, !37, i64 88}
!97 = !{!16, !16, i64 0}
!98 = !{!"_ZTSN4pbrt6Tensor4TypeE", !15, i64 0}
!99 = !{!"p1 long", !33, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!101 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !100, i64 0}
!102 = !{!"_ZTSSt12_Vector_baseImSaImEE", !101, i64 0}
!103 = !{!"_ZTSSt6vectorImSaImEE", !102, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !34, i64 0}
!105 = !{!"_ZTSSt11_Tuple_implILm0EJPhSt14default_deleteIA_hEEE", !104, i64 0}
!106 = !{!"_ZTSSt5tupleIJPhSt14default_deleteIA_hEEE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_implIhSt14default_deleteIA_hEE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataIhSt14default_deleteIA_hELb1ELb1EE", !107, i64 0}
!109 = !{!"_ZTSSt10unique_ptrIA_hSt14default_deleteIS0_EE", !108, i64 0}
!110 = !{!"_ZTSN4pbrt6Tensor5FieldE", !98, i64 0, !37, i64 8, !103, i64 16, !109, i64 40}
!111 = !{!110, !98, i64 0}
!112 = !{!100, !99, i64 16}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = !{!100, !99, i64 0}
!115 = !{!100, !99, i64 8}
!116 = !{!34, !34, i64 0}
!117 = !{!"vtable pointer", !14, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!"_ZTSSt13_Ios_Fmtflags", !15, i64 0}
!120 = !{!"_ZTSSt12_Ios_Iostate", !15, i64 0}
!121 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !33, i64 0}
!122 = !{!"_ZTSNSt8ios_base6_WordsE", !33, i64 0, !37, i64 8}
!123 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !33, i64 0}
!124 = !{!"p1 _ZTSNSt6locale5_ImplE", !33, i64 0}
!125 = !{!"_ZTSSt6locale", !124, i64 0}
!126 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !119, i64 24, !120, i64 28, !120, i64 32, !121, i64 40, !122, i64 48, !15, i64 64, !16, i64 192, !123, i64 200, !125, i64 208}
!127 = !{!89, !88, i64 0}
!128 = !{!91, !37, i64 24}
!129 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !125, i64 56}
!130 = !{!129, !34, i64 40}
!131 = !{!129, !34, i64 32}
!132 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !33, i64 0}
!133 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIfEE", !132, i64 0}
!134 = !{!"p1 float", !33, i64 0}
!135 = !{!"_ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE", !133, i64 0, !134, i64 8, !37, i64 16, !37, i64 24}
!136 = !{!"_ZTSN4pbrt6Tuple2INS_7Vector2EiEE", !16, i64 0, !16, i64 4}
!137 = !{!"_ZTSN4pbrt7Vector2IiEE", !136, i64 0}
!138 = !{!"_ZTSN4pbrt6Tuple2INS_7Vector2EfEE", !19, i64 0, !19, i64 4}
!139 = !{!"_ZTSN4pbrt7Vector2IfEE", !138, i64 0}
!140 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEEE", !132, i64 0}
!141 = !{!"p1 _ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE", !33, i64 0}
!142 = !{!"_ZTSN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEEE", !140, i64 0, !141, i64 8, !37, i64 16, !37, i64 24}
!143 = !{!"_ZTSN4pbrt17PiecewiseLinear2DILm3EEE", !137, i64 0, !139, i64 8, !139, i64 16, !15, i64 24, !15, i64 36, !142, i64 48, !135, i64 80, !135, i64 112, !135, i64 144}
!144 = !{!"_ZTSN4pbrt17PiecewiseLinear2DILm0EEE", !137, i64 0, !139, i64 8, !139, i64 16, !15, i64 24, !15, i64 24, !142, i64 24, !135, i64 56, !135, i64 88, !135, i64 120}
!145 = !{!"_ZTSN4pbrt17PiecewiseLinear2DILm2EEE", !137, i64 0, !139, i64 8, !139, i64 16, !15, i64 24, !15, i64 32, !142, i64 40, !135, i64 72, !135, i64 104, !135, i64 136}
!146 = !{!"_ZTSN4pbrt16MeasuredBxDFDataE", !135, i64 0, !143, i64 32, !144, i64 208, !145, i64 360, !144, i64 528, !50, i64 680, !145, i64 688, !38, i64 856}
!147 = !{!146, !50, i64 680}
!148 = !{!134, !134, i64 0}
!149 = !{!135, !134, i64 8}
!150 = !{!"llvm.loop.isvectorized", i32 1}
!151 = !{!"llvm.loop.unroll.runtime.disable"}
!152 = !{!"branch_weights", i32 4, i32 28}
!153 = !{!"llvm.loop.unroll.disable"}
!154 = !{!135, !37, i64 24}
!155 = !{!135, !37, i64 16}
!156 = !{!142, !141, i64 8}
!157 = !{!136, !16, i64 0}
end_hunk_2
