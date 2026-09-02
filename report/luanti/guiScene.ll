Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiScene?download=true
inline.NumInlined: 525
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9StyleSpec28getStyleFromStatePropagationERKSt5arrayIS_Lm8EENS_5StateE:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.ptr7.i, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !71
  %i.p = load ptr, ptr %.ptr7.i, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.r = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, 25
  br i1 %i.s, label %_ZN9StyleSpecC2ERKS_.exit, label %bb.b

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = icmp eq i64 %i.c, 0
  br i1 %i.u, label %common.resume, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.idx.i = phi i64 [ %.add.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.add4.i, %bb.f ] ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.add.i = add nsw i64 %.idx.i, -32              ; 3 uses
  %.ptr5.i = getelementptr inbounds i8, ptr %0, i64 %.add.i
  %i.v = load ptr, ptr %.ptr5.i, align 8, !tbaa !82 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.ptr.i, i64 -16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.preheader.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !72
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.preheader.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aa = icmp eq i64 %.add.i, 32
  br i1 %i.aa, label %common.resume, label %.preheader.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.f, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.t, %bb.f ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN9StyleSpecC2ERKS_.exit:                        ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  store i8 %2, ptr %i.ab, align 8, !tbaa !104
  %i.ac = zext i8 %2 to i32                       ; 2 uses
  %.not15 = icmp eq i8 %2, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9StyleSpecC2ERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 832
  %i.ag = add nuw nsw i32 %i.ac, 1
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = and i32 %i.ah, %i.ac
  %.not12 = icmp eq i32 %i.ai, 0
  br i1 %.not12, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.aj = getelementptr inbounds nuw [840 x i8], ptr %1, i64 %indvars.iv
  invoke void @_ZNK9StyleSpecorERKS_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %3, ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %i.aj)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %3, i64 25, i1 false), !tbaa.struct !98
  %i.ak = call noundef nonnull align 8 dereferenceable(800) ptr @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(800) %i.ad, ptr noundef nonnull align 8 dereferenceable(800) %i.ae) #27 ; 0 uses
  %i.al = load i8, ptr %i.af, align 8, !tbaa !104
  store i8 %i.al, ptr %i.ab, align 8, !tbaa !104
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ae) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ad) #27
  br label %common.resume

bb.k:                                             ; preds = %bb.g, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !163

._crit_edge:                                      ; preds = %bb.k, %_ZN9StyleSpecC2ERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene12setFrameLoopEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(436) %0, float noundef %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = tail call nsz noundef float @_ZNK5scene21AnimatedMeshSceneNode13getStartFrameEv(ptr noundef nonnull align 8 dereferenceable(432) %i.b)
  %i.d = fcmp nsz une float %i.c, %1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.f = tail call nsz noundef float @_ZNK5scene21AnimatedMeshSceneNode11getEndFrameEv(ptr noundef nonnull align 8 dereferenceable(432) %i.e)
  %i.g = fcmp nsz une float %i.f, %2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.i = tail call noundef zeroext i1 @_ZN5scene21AnimatedMeshSceneNode12setFrameLoopEff(ptr noundef nonnull align 8 dereferenceable(432) %i.h, float noundef %1, float noundef %2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare noundef float @_ZNK5scene21AnimatedMeshSceneNode13getStartFrameEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #9

declare noundef float @_ZNK5scene21AnimatedMeshSceneNode11getEndFrameEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN5scene21AnimatedMeshSceneNode12setFrameLoopEff(ptr noundef nonnull align 8 dereferenceable(432), float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene17setAnimationSpeedEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(436) %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  tail call void @_ZN5scene21AnimatedMeshSceneNode17setAnimationSpeedEf(ptr noundef nonnull align 8 dereferenceable(432) %i.b, float noundef %1)
  ret void
}

declare void @_ZN5scene21AnimatedMeshSceneNode17setAnimationSpeedEf(ptr noundef nonnull align 8 dereferenceable(432), float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene15updateTargetPosEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(436) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !90
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(218) %i.d)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call { <2 x float>, float } %i.k(ptr noundef nonnull align 8 dereferenceable(218) %i.h) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.l, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.l, 1
  store <2 x float> %.fca.0.extract, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 388
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene17setCameraRotationEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(436) initializes((368, 380)) %0, <2 x float> %1, float %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.08.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 5 uses
  %i.a = fcmp nsz olt float %.sroa.08.0.vec.extract, 9.000000e+01
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp nsz ogt float %.sroa.08.0.vec.extract, 6.000000e+01
  br i1 %i.b, label %.sink.split.i, label %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp nsz olt float %.sroa.08.0.vec.extract, 3.000000e+02
  br i1 %i.c, label %.sink.split.i, label %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi float [ 6.000000e+01, %bb.b ], [ 3.000000e+02, %bb.c ] ; 2 uses
  %.sroa.08.0.vec.insert = insertelement <2 x float> %1, float %.sink.i, i64 0
  br label %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit

_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit: ; preds = %bb.b, %bb.c, %.sink.split.i
  %.sroa.08.0.vec.extract11.pre-phi = phi float [ %.sroa.08.0.vec.extract, %bb.b ], [ %.sroa.08.0.vec.extract, %bb.c ], [ %.sink.i, %.sink.split.i ]
  %.sroa.08.0 = phi nsz <2 x float> [ %1, %bb.b ], [ %1, %bb.c ], [ %.sroa.08.0.vec.insert, %.sink.split.i ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load float, ptr %i.d, align 8, !tbaa !54 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.h = fmul nsz float %.sroa.08.0.vec.extract11.pre-phi, f0x3C8EFA35
  %i.i = insertelement <2 x float> %.sroa.08.0, float %2, i64 0
  %i.j = fmul nsz <2 x float> %i.i, splat (float f0x3C8EFA35)
  %i.k = fpext nsz float %i.h to double
  %i.l = fpext <2 x float> %i.j to <2 x double>
  %sincos.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.k) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1 ; 3 uses
  %i.m = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.l) ; 2 uses
  %i.n = extractvalue { <2 x double>, <2 x double> } %i.m, 0 ; 5 uses
  %i.o = extractelement <2 x double> %i.n, i64 1  ; 3 uses
  %i.p = extractvalue { <2 x double>, <2 x double> } %i.m, 1 ; 6 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> %i.n, <2 x i32> <i32 1, i32 2>
  %i.r = fmul nsz <2 x double> %i.q, %i.p
  %i.s = fptrunc <2 x double> %i.r to <2 x float>
  %i.t = fptrunc nsz double %i.o to float
  %i.u = fneg nsz float %i.t
  %3 = fmul nsz double %sin.i.i, %i.o
  %4 = fmul nsz double %cos.i.i, %i.o
  %i.v = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fneg nsz <2 x double> %i.n
  %i.y = shufflevector <2 x double> %i.x, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.z = fmul nsz <2 x double> %i.w, %i.y
  %5 = insertelement <2 x double> poison, double %3, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <2 x double> %i.p, <2 x double> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ab = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.aa, <2 x double> %i.z)
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float>
  %i.ad = extractelement <2 x double> %i.p, i64 1 ; 2 uses
  %i.ae = fmul nsz double %sin.i.i, %i.ad
  %i.af = fptrunc nsz double %i.ae to float
  %i.ag = insertelement <2 x double> poison, double %sin.i.i, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fneg nsz <2 x double> %i.p
  %i.aj = shufflevector <2 x double> %i.n, <2 x double> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.ak = fmul nsz <2 x double> %i.ah, %i.aj
  %7 = insertelement <2 x double> poison, double %4, i64 0
  %i.al = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.aa, <2 x double> %i.ak)
  %i.an = fptrunc <2 x double> %i.am to <2 x float>
  %i.ao = fmul nsz double %cos.i.i, %i.ad
  %i.ap = fptrunc nsz double %i.ao to float
  %i.aq = fmul nsz <2 x float> %i.ac, zeroinitializer
  %i.ar = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> zeroinitializer, <2 x float> %i.aq)
  %i.as = insertelement <2 x float> poison, float %i.e, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.an, <2 x float> %i.ar)
  %i.av = fmul nsz float %i.af, 0.000000e+00
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %i.u, float 0.000000e+00, float %i.av)
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %i.e, float %i.ap, float %i.aw)
  %i.ay = load <2 x float>, ptr %i.g, align 4, !tbaa !59
  %i.az = fadd nsz <2 x float> %i.ay, %i.au
  store <2 x float> %i.az, ptr %i.f, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !60
  %i.bc = fadd nsz float %i.bb, %i.ax
  store float %i.bc, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !61 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(218) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %i.f)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 0, ptr %i.bi, align 1, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !92   ; 3 uses
  %i.b = fcmp nsz olt float %i.a, 9.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp nsz ogt float %i.a, 6.000000e+01
  br i1 %i.c, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp nsz olt float %i.a, 3.000000e+02
  br i1 %i.d, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi float [ 6.000000e+01, %bb.b ], [ 3.000000e+02, %bb.c ]
  store float %.sink, ptr %1, align 4, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD1Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD0Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #27, !inline_history !105
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 328) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement22updateAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.04.07 = load ptr, ptr %i.a, align 8, !tbaa !63 ; 2 uses
  %.not8 = icmp eq ptr %.sroa.04.07, %i.a
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.09 = phi ptr [ %.sroa.04.0, %.lr.ph ], [ %.sroa.04.07, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(308) %i.c)
  %.sroa.04.0 = load ptr, ptr %.sroa.04.09, align 8, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63, !noalias !167 ; 2 uses
  %.not1516 = icmp eq ptr %i.e, %i.f
  br i1 %.not1516, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.012.017 = phi ptr [ %i.o, %bb.c ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(308) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %.not15 = icmp eq ptr %i.o, %i.f
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !166

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.s, label %bb.d, label %.thread

bb.d:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr %0, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  %spec.select = select i1 %i.w, ptr %0, ptr null
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d, %.loopexit
  %.19 = phi ptr [ %spec.select, %bb.d ], [ null, %.loopexit ], [ %i.n, %.lr.ph ]
  ret ptr %.19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = load i32, ptr %1, align 4, !tbaa !168    ; 2 uses
  %.not.i = icmp sgt i32 %i.b, %i.c
  br i1 %.not.i, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !169  ; 2 uses
  %.not6.i = icmp sgt i32 %i.e, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8
  %.not7.i = icmp slt i32 %i.i, %i.c
  %or.cond.i = select i1 %.not6.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !108
  %i.l = icmp sge i32 %i.k, %i.g
  br label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit

_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i1 [ %i.l, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN3gui11IGUIElement13addChildToEndEPS0_.exit, label %bb.b

_ZN3gui11IGUIElement13addChildToEndEPS0_.exit:    ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(308) %1), !inline_history !0
end_hunk_0
