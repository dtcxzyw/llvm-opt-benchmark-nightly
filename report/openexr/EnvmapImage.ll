Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/EnvmapImage?download=true
inline.NumInlined: 109
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11EnvmapImageC2EN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE:bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aw, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5
  %i.ax = mul nsw i64 %indvars.iv.next.i.4, %i.ae
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ay, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6
  %i.az = mul nsw i64 %indvars.iv.next.i.5, %i.ae
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.az
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ba, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7
  %i.bb = mul nsw i64 %indvars.iv.next.i.6, %i.ae
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bc, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !0

_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i.7, %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.bd = mul nsw i64 %indvars.iv.i.epil, %i.ae
  %i.be = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bd
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.be, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil, !llvm.loop !43

_ZN11EnvmapImage5clearEv.exit:                    ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.i.epil, %.preheader.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 20), (24, 40)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load <2 x i32>, ptr %i.b, align 4, !tbaa !30
  %i.f = load <2 x i32>, ptr %2, align 4, !tbaa !30
  %i.g = add <2 x i32> %i.e, splat (i32 1)
  %i.h = sub <2 x i32> %i.g, %i.f                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #16
  br label %_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit

_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit: ; preds = %bb.a, %bb.b
  %i.l = extractelement <2 x i32> %i.h, i64 0     ; 6 uses
  %i.m = sext i32 %i.l to i64
  %i.n = extractelement <2 x i32> %i.h, i64 1
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.m, %i.o                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, 2305843009213693951
  %i.r = shl nuw i64 %i.p, 3
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #15 ; 6 uses
  store ptr %i.t, ptr %i.i, align 8, !tbaa !16
  %i.u = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.v = sext <2 x i32> %i.u to <2 x i64>
  store <2 x i64> %i.v, ptr %i.a, align 8, !tbaa !47
  store i32 %1, ptr %0, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %2, align 4, !tbaa !31     ; 3 uses
  store i32 %i.x, ptr %i.w, align 4, !tbaa !31
  %i.y = load i32, ptr %i.d, align 4, !tbaa !32   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !31  ; 3 uses
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !31
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !32  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !32
  %.not16.i = icmp slt i32 %i.ac, %i.y
  %.not1314.i = icmp slt i32 %i.ab, %i.x
  %or.cond = select i1 %.not16.i, i1 true, i1 %.not1314.i
  br i1 %or.cond, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit
  %reass.sub = sub i32 %i.ab, %i.x
  %i.ae = add i32 %reass.sub, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3                ; 5 uses
  %i.ah = add i32 %i.ac, 1
  %i.ai = sub i32 %i.ah, %i.y                     ; 2 uses
  %wide.trip.count.i = zext i32 %i.ai to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.aj = add i32 %i.ai, -1
  %i.ak = icmp ult i32 %i.aj, 3
  br i1 %i.ak, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  %i.al = sext i32 %i.l to i64
  %i.am = sext i32 %i.l to i64
  %i.an = sext i32 %i.l to i64
  %i.ao = sext i32 %i.l to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next.i.3, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter.next.3, %.preheader.i ]
  %i.ap = mul nsw i64 %indvars.iv.i, %i.al
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ap
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aq, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ar = mul nsw i64 %indvars.iv.next.i, %i.am
  %i.as = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ar
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.as, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.at = mul nsw i64 %indvars.iv.next.i.1, %i.an
  %i.au = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.au, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.av = mul nsw i64 %indvars.iv.next.i.2, %i.ao
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aw, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !0

_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i.3, %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.ax = sext i32 %i.l to i64
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.ay = mul nsw i64 %indvars.iv.i.epil, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ay
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.az, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil, !llvm.loop !46

_ZN11EnvmapImage5clearEv.exit:                    ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.i.epil, %_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11EnvmapImage4typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11EnvmapImage6pixelsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 4 dead_on_return %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imath_3_2::Vec3", align 8   ; 6 uses
  %5 = alloca %"class.Imath_3_2::Vec3", align 8   ; 7 uses
  %6 = alloca %"class.Imath_3_2::Vec3", align 8   ; 6 uses
  %7 = alloca %"class.Imath_3_2::Vec2.0", align 4 ; 5 uses
  %8 = alloca %"class.Imath_3_2::Vec3", align 8   ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  %i.b = icmp eq i32 %i.a, 0
  %i.c = load float, ptr %1, align 4, !tbaa !35   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !66 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !67 ; 2 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g) ; 2 uses
  %i.k = fcmp olt float %i.j, f0x01000000
  br i1 %i.k, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %1) #17
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef float @sqrtf(float noundef %i.j) #17
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i:           ; preds = %bb.c, %bb.b
  %.0.i.i = phi float [ %i.l, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  %i.n = fcmp une float %.0.i.i, 0.000000e+00
  %.pre = load float, ptr %1, align 4, !tbaa !35  ; 2 uses
  br i1 %i.n, label %bb.d, label %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit, !prof !68

bb.d:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i
  %i.o = load float, ptr %i.d, align 4, !tbaa !66
  %i.p = insertelement <2 x float> poison, float %.pre, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 1
  %i.r = insertelement <2 x float> poison, float %.0.i.i, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x float> %i.q, %i.s              ; 2 uses
  store <2 x float> %i.t, ptr %1, align 4, !tbaa !37
  %i.u = load float, ptr %i.h, align 4, !tbaa !67
  %i.v = fdiv float %i.u, %.0.i.i
  store float %i.v, ptr %i.h, align 4, !tbaa !67
  %i.w = extractelement <2 x float> %i.t, i64 0
  br label %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit

_ZN9Imath_3_24Vec3IfE9normalizeEv.exit:           ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i, %bb.d
  %i.x = phi float [ %.pre, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i ], [ %i.w, %bb.d ] ; 5 uses
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.z = fcmp ogt float %i.y, 7.070000e-01
  br i1 %i.z, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.aa = fmul float %i.x, -0.000000e+00
  %i.ab = load <2 x float>, ptr %i.d, align 4, !tbaa !37, !noalias !69 ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1
  %i.ad = fneg float %i.ac
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.aa, i64 1
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.af) ; 4 uses
  %i.ah = extractelement <2 x float> %i.ab, i64 0
  %i.ai = fmul float %i.ah, 0.000000e+00
  %i.aj = fsub float %i.x, %i.ai                  ; 3 uses
  store <2 x float> %i.ag, ptr %4, align 8, !tbaa !37, !alias.scope !69
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.aj, ptr %i.ak, align 8, !tbaa !67, !alias.scope !69
  %foldExtExtBinop = fmul <2 x float> %i.ag, %i.ag
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.am = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.al)
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.an) ; 2 uses
  %i.ap = fcmp olt float %i.ao, f0x01000000
  br i1 %i.ap, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.aq = call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %4) #17, !noalias !70
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51

bb.g:                                             ; preds = %bb.e
  %i.ar = tail call noundef float @sqrtf(float noundef %i.ao) #17, !noalias !70
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51:         ; preds = %bb.g, %bb.f
  %.0.i.i52 = phi float [ %i.aq, %bb.f ], [ %i.ar, %bb.g ] ; 3 uses
  %i.as = fcmp oeq float %.0.i.i52, 0.000000e+00
  br i1 %i.as, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit, label %bb.h, !prof !36

bb.h:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51
  %i.at = load <2 x float>, ptr %4, align 8, !tbaa !37, !noalias !70
  %i.au = insertelement <2 x float> poison, float %.0.i.i52, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x float> %i.at, %i.av
  %i.ax = load float, ptr %i.ak, align 8, !tbaa !67, !noalias !70
  %i.ay = fdiv float %i.ax, %.0.i.i52
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit:        ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51, %bb.h
  %.sink.i = phi float [ %i.ay, %bb.h ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51 ]
  %i.az = phi <2 x float> [ %i.aw, %bb.h ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.m

bb.i:                                             ; preds = %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.ba = load float, ptr %i.d, align 4, !tbaa !66, !noalias !71 ; 2 uses
  %i.bb = load float, ptr %i.h, align 4, !tbaa !67, !noalias !71 ; 2 uses
  %i.bc = fmul float %i.bb, -0.000000e+00
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ba, float 0.000000e+00, float %i.bc) ; 3 uses
  %i.be = fmul ninf float %i.x, 0.000000e+00
  %i.bf = fsub float %i.bb, %i.be                 ; 3 uses
  %i.bg = fneg float %i.ba
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.x, float 0.000000e+00, float %i.bg) ; 3 uses
  store float %i.bd, ptr %5, align 8, !tbaa !35, !alias.scope !71
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bf, ptr %i.bi, align 4, !tbaa !66, !alias.scope !71
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float %i.bh, ptr %i.bj, align 8, !tbaa !67, !alias.scope !71
  %i.bk = fmul float %i.bf, %i.bf
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bk)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bl) ; 2 uses
  %i.bn = fcmp olt float %i.bm, f0x01000000
  br i1 %i.bn, label %bb.j, label %bb.k, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.bo = call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %5) #17, !noalias !72
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53

bb.k:                                             ; preds = %bb.i
  %i.bp = tail call noundef float @sqrtf(float noundef %i.bm) #17, !noalias !72
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53:         ; preds = %bb.k, %bb.j
  %.0.i.i54 = phi float [ %i.bo, %bb.j ], [ %i.bp, %bb.k ] ; 3 uses
  %i.bq = fcmp oeq float %.0.i.i54, 0.000000e+00
  br i1 %i.bq, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58, label %bb.l, !prof !36

bb.l:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53
  %i.br = load <2 x float>, ptr %5, align 8, !tbaa !37, !noalias !72
  %i.bs = insertelement <2 x float> poison, float %.0.i.i54, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fdiv <2 x float> %i.br, %i.bt
  %i.bv = load float, ptr %i.bj, align 8, !tbaa !67, !noalias !72
  %i.bw = fdiv float %i.bv, %.0.i.i54
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58:      ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53, %bb.l
  %.sink.i57 = phi float [ %i.bw, %bb.l ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53 ]
  %i.bx = phi <2 x float> [ %i.bu, %bb.l ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit
  %.sink.i.pn = phi float [ %.sink.i, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit ], [ %.sink.i57, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58 ]
  %i.by = phi <2 x float> [ %i.az, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit ], [ %i.bx, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58 ]
  %.sroa.10.0 = fmul float %2, %.sink.i.pn        ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %2, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cb = fmul <2 x float> %i.ca, %i.by           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.cc = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.cd = load float, ptr %1, align 4, !tbaa !35, !noalias !73 ; 2 uses
  %i.ce = extractelement <2 x float> %i.cb, i64 0
  %i.cf = fneg float %i.ce
  %i.cg = load <2 x float>, ptr %i.d, align 4, !tbaa !37, !noalias !73 ; 3 uses
  %i.ch = fneg float %i.cc
  %i.ci = extractelement <2 x float> %i.cg, i64 1
  %i.cj = fmul float %i.ci, %i.ch
  %i.ck = fneg float %.sroa.10.0
  %i.cl = fmul float %i.cd, %i.ck
  %i.cm = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cn = insertelement <2 x float> %i.cm, float %.sroa.10.0, i64 0
  %i.co = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.cl, i64 1
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.cn, <2 x float> %i.cp) ; 4 uses
  %i.cr = extractelement <2 x float> %i.cg, i64 0
  %i.cs = fmul float %i.cr, %i.cf
  %i.ct = call float @llvm.fmuladd.f32(float %i.cd, float %i.cc, float %i.cs) ; 3 uses
  store <2 x float> %i.cq, ptr %6, align 8, !tbaa !37, !alias.scope !73
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.ct, ptr %i.cu, align 8, !tbaa !67, !alias.scope !73
  %foldExtExtBinop177 = fmul <2 x float> %i.cq, %i.cq
  %i.cv = extractelement <2 x float> %foldExtExtBinop177, i64 1
  %i.cw = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.cx = call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cv)
  %i.cy = call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cx) ; 2 uses
  %i.cz = fcmp olt float %i.cy, f0x01000000
  br i1 %i.cz, label %bb.n, label %bb.o, !prof !36

bb.n:                                             ; preds = %bb.m
  %i.da = call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %6) #17, !noalias !74
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59

bb.o:                                             ; preds = %bb.m
  %i.db = call noundef float @sqrtf(float noundef %i.cy) #17, !noalias !74
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59:         ; preds = %bb.o, %bb.n
  %.0.i.i60 = phi float [ %i.da, %bb.n ], [ %i.db, %bb.o ] ; 3 uses
  %i.dc = fcmp oeq float %.0.i.i60, 0.000000e+00
  br i1 %i.dc, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64, label %bb.p, !prof !36

bb.p:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59
  %i.dd = load <2 x float>, ptr %6, align 8, !tbaa !37, !noalias !74
  %i.de = insertelement <2 x float> poison, float %.0.i.i60, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fdiv <2 x float> %i.dd, %i.df
  %i.dh = load float, ptr %i.cu, align 8, !tbaa !67, !noalias !74
  %i.di = fdiv float %i.dh, %.0.i.i60
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64:      ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59, %bb.p
  %.sink.i63 = phi float [ %i.di, %bb.p ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59 ]
  %i.dj = phi <2 x float> [ %i.dg, %bb.p ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59 ]
  %i.dk = fmul <2 x float> %i.ca, %i.dj
  %i.dl = fmul float %2, %.sink.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.dm = icmp sgt i32 %3, 0
  br i1 %i.dm, label %.lr.ph136, label %._crit_edge137

.lr.ph136:                                        ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64
  %i.dn = add nuw nsw i32 %3, 1
  %i.do = uitofp nneg i32 %i.dn to float          ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph136
  %.039135.us = phi float [ 0.000000e+00, %.lr.ph136 ], [ %i.ef, %._crit_edge.us ]
  %.043133.us = phi i32 [ 0, %.lr.ph136 ], [ %i.fa, %._crit_edge.us ] ; 2 uses
  %i.dr = phi <4 x float> [ zeroinitializer, %.lr.ph136 ], [ %i.ey, %._crit_edge.us ]
  %i.ds = shl nuw nsw i32 %.043133.us, 1
  %i.dt = add nuw nsw i32 %i.ds, 2
  %i.du = uitofp nneg i32 %i.dt to float
  %i.dv = fdiv float %i.du, %i.do
  %i.dw = fadd float %i.dv, -1.000000e+00         ; 3 uses
  %i.dx = call noundef float @llvm.fabs.f32(float %i.dw)
  %i.dy = fsub float 1.000000e+00, %i.dx
  %i.dz = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.dk, %i.ea
  %i.ec = fmul float %i.dl, %i.dw
  br label %9

9:                                                ; preds = %.lr.ph.us, %bb.q
  %.1125.us = phi float [ %.039135.us, %.lr.ph.us ], [ %i.ef, %bb.q ]
  %.042123.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ez, %bb.q ] ; 2 uses
  %10 = phi <4 x float> [ %i.dr, %.lr.ph.us ], [ %i.ey, %bb.q ]
  %11 = shl nuw nsw i32 %.042123.us, 1
  %12 = add nuw nsw i32 %11, 2
  %13 = uitofp nneg i32 %12 to float
  %14 = fdiv float %13, %i.do
  %15 = fadd float %14, -1.000000e+00             ; 3 uses
  %16 = call noundef float @llvm.fabs.f32(float %15)
  %17 = fsub float 1.000000e+00, %16
  %18 = fmul float %.sroa.10.0, %15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %19 = load float, ptr %i.h, align 4, !tbaa !67, !noalias !75
  %20 = fadd float %18, %19
  %21 = fadd float %i.ec, %20
  %22 = insertelement <2 x float> poison, float %15, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fmul <2 x float> %i.cb, %23
  %25 = load <2 x float>, ptr %1, align 4, !tbaa !37, !noalias !75
  %26 = fadd <2 x float> %24, %25
  %27 = fadd <2 x float> %i.eb, %26
  store <2 x float> %27, ptr %8, align 8, !tbaa !37, !alias.scope !76
  store float %21, ptr %i.dq, align 8, !tbaa !67, !alias.scope !76
  br i1 %i.b, label %call.1.us, label %call.0.us

call.0.us:                                        ; preds = %9
  call fastcc void @_ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, ptr noundef nonnull align 4 dereferenceable(16) %i.dp, ptr noundef nonnull align 4 dereferenceable(12) %8), !callees !77
  br label %bb.q

call.1.us:                                        ; preds = %9
  call fastcc void @_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, ptr noundef nonnull align 4 dereferenceable(16) %i.dp, ptr noundef nonnull align 4 dereferenceable(12) %8), !callees !77
  br label %bb.q

bb.q:                                             ; preds = %call.1.us, %call.0.us
  %i.ed = call i64 @_ZNK11EnvmapImage6sampleERKN9Imath_3_24Vec2IfEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 4 uses
  %.sroa.478.0.extract.shift.us = lshr i64 %i.ed, 16
  %.sroa.5.0.extract.shift.us = lshr i64 %i.ed, 32
  %.sroa.679.0.extract.shift.us = lshr i64 %i.ed, 48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ee = fmul float %i.dy, %17                   ; 2 uses
  %i.ef = fadd float %.1125.us, %i.ee             ; 3 uses
  %i.eg = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !39 ; 4 uses
  %i.eh = and i64 %i.ed, 65535
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !40
  %i.ek = and i64 %.sroa.478.0.extract.shift.us, 65535
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !40
  %i.en = and i64 %.sroa.5.0.extract.shift.us, 65535
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !40
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.sroa.679.0.extract.shift.us
  %i.er = load float, ptr %i.eq, align 4, !tbaa !40
  %i.es = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.et = insertelement <4 x float> %i.es, float %i.em, i64 1
  %i.eu = insertelement <4 x float> %i.et, float %i.ep, i64 2
  %i.ev = insertelement <4 x float> %i.eu, float %i.er, i64 3
  %i.ew = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.ex, <4 x float> %10) ; 3 uses
  %i.ez = add nuw nsw i32 %.042123.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ez, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %9, !llvm.loop !64

._crit_edge.us:                                   ; preds = %bb.q
  %i.fa = add nuw nsw i32 %.043133.us, 1          ; 2 uses
  %exitcond151.not = icmp eq i32 %i.fa, %3
  br i1 %exitcond151.not, label %._crit_edge137, label %.lr.ph.us, !llvm.loop !65

._crit_edge137:                                   ; preds = %._crit_edge.us, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64
  %.039.lcssa = phi float [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64 ], [ %i.ef, %._crit_edge.us ]
  %i.fb = phi <4 x float> [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64 ], [ %i.ey, %._crit_edge.us ] ; 4 uses
  %i.fc = fdiv float 1.000000e+00, %.039.lcssa    ; 4 uses
  %i.fd = extractelement <4 x float> %i.fb, i64 0
  %i.fe = fmul float %i.fd, %i.fc                 ; 2 uses
  %i.ff = bitcast float %i.fe to i32
  %i.fg = call float @llvm.fabs.f32(float %i.fe)
  %i.fh = bitcast float %i.fg to i32              ; 10 uses
  %i.fi = lshr i32 %i.ff, 16                      ; 3 uses
  %i.fj = trunc nuw i32 %i.fi to i16
  %i.fk = and i16 %i.fj, -32768                   ; 3 uses
  %i.fl = icmp samesign ugt i32 %i.fh, 947912703
  br i1 %i.fl, label %bb.r, label %bb.x

bb.r:                                             ; preds = %._crit_edge137
  %i.fm = icmp samesign ugt i32 %i.fh, 2139095039
  br i1 %i.fm, label %bb.s, label %bb.u, !prof !36

bb.s:                                             ; preds = %bb.r
  %i.fn = or disjoint i16 %i.fk, 31744            ; 2 uses
  %i.fo = icmp eq i32 %i.fh, 2139095040
  br i1 %i.fo, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fp = lshr i32 %i.fh, 13
  %i.fq = and i32 %i.fp, 1023                     ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  %i.fs = zext i1 %i.fr to i16
  %i.ft = trunc nuw nsw i32 %i.fq to i16
  %i.fu = or i16 %i.ft, %i.fs
  %i.fv = or disjoint i16 %i.fu, %i.fn
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.u:                                             ; preds = %bb.r
  %i.fw = icmp samesign ugt i32 %i.fh, 1199566847
  br i1 %i.fw, label %bb.v, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.u
  %i.fx = or disjoint i16 %i.fk, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.w:                                             ; preds = %bb.u
  %i.fy = add nuw nsw i32 %i.fh, 134221823
  %i.fz = lshr i32 %i.fh, 13
  %i.ga = and i32 %i.fz, 1
  %i.gb = add nuw nsw i32 %i.fy, %i.ga
  %i.gc = lshr i32 %i.gb, 13
  %i.gd = and i32 %i.fi, 32768
  %i.ge = or i32 %i.gc, %i.gd
  %i.gf = trunc i32 %i.ge to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.x:                                             ; preds = %._crit_edge137
  %i.gg = icmp samesign ult i32 %i.fh, 855638017
  br i1 %i.gg, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gh = lshr i32 %i.fh, 23                      ; 2 uses
  %i.gi = sub nuw nsw i32 126, %i.gh
  %i.gj = and i32 %i.fh, 8388607
  %i.gk = or disjoint i32 %i.gj, 8388608          ; 2 uses
  %i.gl = add nsw i32 %i.gh, -94
  %i.gm = shl i32 %i.gk, %i.gl                    ; 2 uses
  %i.gn = lshr i32 %i.gk, %i.gi                   ; 2 uses
  %i.go = and i32 %i.fi, 32768
  %i.gp = or i32 %i.gn, %i.go
  %i.gq = trunc nuw i32 %i.gp to i16              ; 2 uses
  %i.gr = icmp ugt i32 %i.gm, -2147483648
  br i1 %i.gr, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gs = icmp ne i32 %i.gm, -2147483648
  %i.gt = and i32 %i.gn, 1
  %.not.i.i.i = icmp eq i32 %i.gt, 0
  %or.cond.i.i.i = select i1 %i.gs, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gu = add nuw i16 %i.gq, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.z, %bb.aa
  %.033.i.i.i = phi i16 [ %i.fk, %bb.x ], [ %i.fv, %bb.t ], [ %i.fx, %bb.v ], [ %i.gf, %bb.w ], [ %i.fn, %bb.s ], [ %i.gu, %bb.aa ], [ %i.gq, %bb.z ]
  %i.gv = extractelement <4 x float> %i.fb, i64 1
  %i.gw = fmul float %i.gv, %i.fc                 ; 2 uses
  %i.gx = bitcast float %i.gw to i32
  %i.gy = call float @llvm.fabs.f32(float %i.gw)
  %i.gz = bitcast float %i.gy to i32              ; 10 uses
  %i.ha = lshr i32 %i.gx, 16                      ; 3 uses
  %i.hb = trunc nuw i32 %i.ha to i16
  %i.hc = and i16 %i.hb, -32768                   ; 3 uses
  %i.hd = icmp samesign ugt i32 %i.gz, 947912703
  br i1 %i.hd, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.he = icmp samesign ugt i32 %i.gz, 2139095039
  br i1 %i.he, label %bb.ac, label %bb.ae, !prof !36

bb.ac:                                            ; preds = %bb.ab
  %i.hf = or disjoint i16 %i.hc, 31744            ; 2 uses
  %i.hg = icmp eq i32 %i.gz, 2139095040
  br i1 %i.hg, label %_ZN9Imath_3_24halfaSEf.exit68, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hh = lshr i32 %i.gz, 13
  %i.hi = and i32 %i.hh, 1023                     ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 0
  %i.hk = zext i1 %i.hj to i16
  %i.hl = trunc nuw nsw i32 %i.hi to i16
  %i.hm = or i16 %i.hl, %i.hk
  %i.hn = or disjoint i16 %i.hm, %i.hf
  br label %_ZN9Imath_3_24halfaSEf.exit68

bb.ae:                                            ; preds = %bb.ab
  %i.ho = icmp samesign ugt i32 %i.gz, 1199566847
  br i1 %i.ho, label %bb.af, label %bb.ag, !prof !36

bb.af:                                            ; preds = %bb.ae
  %i.hp = or disjoint i16 %i.hc, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit68

bb.ag:                                            ; preds = %bb.ae
  %i.hq = add nuw nsw i32 %i.gz, 134221823
  %i.hr = lshr i32 %i.gz, 13
  %i.hs = and i32 %i.hr, 1
  %i.ht = add nuw nsw i32 %i.hq, %i.hs
  %i.hu = lshr i32 %i.ht, 13
  %i.hv = and i32 %i.ha, 32768
  %i.hw = or i32 %i.hu, %i.hv
  %i.hx = trunc i32 %i.hw to i16
  br label %_ZN9Imath_3_24halfaSEf.exit68

bb.ah:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.hy = icmp samesign ult i32 %i.gz, 855638017
  br i1 %i.hy, label %_ZN9Imath_3_24halfaSEf.exit68, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hz = lshr i32 %i.gz, 23                      ; 2 uses
  %i.ia = sub nuw nsw i32 126, %i.hz
  %i.ib = and i32 %i.gz, 8388607
  %i.ic = or disjoint i32 %i.ib, 8388608          ; 2 uses
  %i.id = add nsw i32 %i.hz, -94
  %i.ie = shl i32 %i.ic, %i.id                    ; 2 uses
  %i.if = lshr i32 %i.ic, %i.ia                   ; 2 uses
  %i.ig = and i32 %i.ha, 32768
  %i.ih = or i32 %i.if, %i.ig
  %i.ii = trunc nuw i32 %i.ih to i16              ; 2 uses
  %i.ij = icmp ugt i32 %i.ie, -2147483648
  br i1 %i.ij, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ik = icmp ne i32 %i.ie, -2147483648
  %i.il = and i32 %i.if, 1
  %.not.i.i.i65 = icmp eq i32 %i.il, 0
  %or.cond.i.i.i66 = select i1 %i.ik, i1 true, i1 %.not.i.i.i65
  br i1 %or.cond.i.i.i66, label %_ZN9Imath_3_24halfaSEf.exit68, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.im = add nuw i16 %i.ii, 1
  br label %_ZN9Imath_3_24halfaSEf.exit68

_ZN9Imath_3_24halfaSEf.exit68:                    ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ag, %bb.ah, %bb.aj, %bb.ak
  %.033.i.i.i67 = phi i16 [ %i.hc, %bb.ah ], [ %i.hn, %bb.ad ], [ %i.hp, %bb.af ], [ %i.hx, %bb.ag ], [ %i.hf, %bb.ac ], [ %i.im, %bb.ak ], [ %i.ii, %bb.aj ]
  %i.in = extractelement <4 x float> %i.fb, i64 2
  %i.io = fmul float %i.in, %i.fc                 ; 2 uses
  %i.ip = bitcast float %i.io to i32
  %i.iq = call float @llvm.fabs.f32(float %i.io)
  %i.ir = bitcast float %i.iq to i32              ; 10 uses
  %i.is = lshr i32 %i.ip, 16                      ; 3 uses
  %i.it = trunc nuw i32 %i.is to i16
  %i.iu = and i16 %i.it, -32768                   ; 3 uses
  %i.iv = icmp samesign ugt i32 %i.ir, 947912703
  br i1 %i.iv, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit68
  %i.iw = icmp samesign ugt i32 %i.ir, 2139095039
  br i1 %i.iw, label %bb.am, label %bb.ao, !prof !36

bb.am:                                            ; preds = %bb.al
  %i.ix = or disjoint i16 %i.iu, 31744            ; 2 uses
  %i.iy = icmp eq i32 %i.ir, 2139095040
  br i1 %i.iy, label %_ZN9Imath_3_24halfaSEf.exit72, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iz = lshr i32 %i.ir, 13
  %i.ja = and i32 %i.iz, 1023                     ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 0
  %i.jc = zext i1 %i.jb to i16
  %i.jd = trunc nuw nsw i32 %i.ja to i16
  %i.je = or i16 %i.jd, %i.jc
  %i.jf = or disjoint i16 %i.je, %i.ix
  br label %_ZN9Imath_3_24halfaSEf.exit72

bb.ao:                                            ; preds = %bb.al
  %i.jg = icmp samesign ugt i32 %i.ir, 1199566847
  br i1 %i.jg, label %bb.ap, label %bb.aq, !prof !36

bb.ap:                                            ; preds = %bb.ao
  %i.jh = or disjoint i16 %i.iu, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit72

bb.aq:                                            ; preds = %bb.ao
  %i.ji = add nuw nsw i32 %i.ir, 134221823
  %i.jj = lshr i32 %i.ir, 13
  %i.jk = and i32 %i.jj, 1
  %i.jl = add nuw nsw i32 %i.ji, %i.jk
  %i.jm = lshr i32 %i.jl, 13
  %i.jn = and i32 %i.is, 32768
  %i.jo = or i32 %i.jm, %i.jn
  %i.jp = trunc i32 %i.jo to i16
  br label %_ZN9Imath_3_24halfaSEf.exit72

bb.ar:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit68
  %i.jq = icmp samesign ult i32 %i.ir, 855638017
  br i1 %i.jq, label %_ZN9Imath_3_24halfaSEf.exit72, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jr = lshr i32 %i.ir, 23                      ; 2 uses
  %i.js = sub nuw nsw i32 126, %i.jr
  %i.jt = and i32 %i.ir, 8388607
  %i.ju = or disjoint i32 %i.jt, 8388608          ; 2 uses
  %i.jv = add nsw i32 %i.jr, -94
  %i.jw = shl i32 %i.ju, %i.jv                    ; 2 uses
  %i.jx = lshr i32 %i.ju, %i.js                   ; 2 uses
  %i.jy = and i32 %i.is, 32768
  %i.jz = or i32 %i.jx, %i.jy
  %i.ka = trunc nuw i32 %i.jz to i16              ; 2 uses
  %i.kb = icmp ugt i32 %i.jw, -2147483648
  br i1 %i.kb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kc = icmp ne i32 %i.jw, -2147483648
  %i.kd = and i32 %i.jx, 1
  %.not.i.i.i69 = icmp eq i32 %i.kd, 0
  %or.cond.i.i.i70 = select i1 %i.kc, i1 true, i1 %.not.i.i.i69
  br i1 %or.cond.i.i.i70, label %_ZN9Imath_3_24halfaSEf.exit72, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ke = add nuw i16 %i.ka, 1
  br label %_ZN9Imath_3_24halfaSEf.exit72

_ZN9Imath_3_24halfaSEf.exit72:                    ; preds = %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.ar, %bb.at, %bb.au
  %.033.i.i.i71 = phi i16 [ %i.iu, %bb.ar ], [ %i.jf, %bb.an ], [ %i.jh, %bb.ap ], [ %i.jp, %bb.aq ], [ %i.ix, %bb.am ], [ %i.ke, %bb.au ], [ %i.ka, %bb.at ]
  %i.kf = extractelement <4 x float> %i.fb, i64 3
  %i.kg = fmul float %i.kf, %i.fc                 ; 2 uses
  %i.kh = bitcast float %i.kg to i32
  %i.ki = call float @llvm.fabs.f32(float %i.kg)
  %i.kj = bitcast float %i.ki to i32              ; 10 uses
  %i.kk = lshr i32 %i.kh, 16                      ; 3 uses
  %i.kl = trunc nuw i32 %i.kk to i16
  %i.km = and i16 %i.kl, -32768                   ; 3 uses
  %i.kn = icmp samesign ugt i32 %i.kj, 947912703
  br i1 %i.kn, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit72
  %i.ko = icmp samesign ugt i32 %i.kj, 2139095039
  br i1 %i.ko, label %bb.aw, label %bb.ay, !prof !36

bb.aw:                                            ; preds = %bb.av
  %i.kp = or disjoint i16 %i.km, 31744            ; 2 uses
  %i.kq = icmp eq i32 %i.kj, 2139095040
  br i1 %i.kq, label %_ZN9Imath_3_24halfaSEf.exit76, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kr = lshr i32 %i.kj, 13
  %i.ks = and i32 %i.kr, 1023                     ; 2 uses
  %i.kt = icmp eq i32 %i.ks, 0
  %i.ku = zext i1 %i.kt to i16
  %i.kv = trunc nuw nsw i32 %i.ks to i16
  %i.kw = or i16 %i.kv, %i.ku
  %i.kx = or disjoint i16 %i.kw, %i.kp
  br label %_ZN9Imath_3_24halfaSEf.exit76

bb.ay:                                            ; preds = %bb.av
  %i.ky = icmp samesign ugt i32 %i.kj, 1199566847
  br i1 %i.ky, label %bb.az, label %bb.ba, !prof !36

bb.az:                                            ; preds = %bb.ay
  %i.kz = or disjoint i16 %i.km, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit76

bb.ba:                                            ; preds = %bb.ay
  %i.la = add nuw nsw i32 %i.kj, 134221823
  %i.lb = lshr i32 %i.kj, 13
  %i.lc = and i32 %i.lb, 1
  %i.ld = add nuw nsw i32 %i.la, %i.lc
  %i.le = lshr i32 %i.ld, 13
  %i.lf = and i32 %i.kk, 32768
  %i.lg = or i32 %i.le, %i.lf
  %i.lh = trunc i32 %i.lg to i16
  br label %_ZN9Imath_3_24halfaSEf.exit76

bb.bb:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit72
  %i.li = icmp samesign ult i32 %i.kj, 855638017
  br i1 %i.li, label %_ZN9Imath_3_24halfaSEf.exit76, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lj = lshr i32 %i.kj, 23                      ; 2 uses
  %i.lk = sub nuw nsw i32 126, %i.lj
  %i.ll = and i32 %i.kj, 8388607
  %i.lm = or disjoint i32 %i.ll, 8388608          ; 2 uses
  %i.ln = add nsw i32 %i.lj, -94
  %i.lo = shl i32 %i.lm, %i.ln                    ; 2 uses
  %i.lp = lshr i32 %i.lm, %i.lk                   ; 2 uses
  %i.lq = and i32 %i.kk, 32768
  %i.lr = or i32 %i.lp, %i.lq
  %i.ls = trunc nuw i32 %i.lr to i16              ; 2 uses
  %i.lt = icmp ugt i32 %i.lo, -2147483648
  br i1 %i.lt, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lu = icmp ne i32 %i.lo, -2147483648
  %i.lv = and i32 %i.lp, 1
  %.not.i.i.i73 = icmp eq i32 %i.lv, 0
  %or.cond.i.i.i74 = select i1 %i.lu, i1 true, i1 %.not.i.i.i73
  br i1 %or.cond.i.i.i74, label %_ZN9Imath_3_24halfaSEf.exit76, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lw = add nuw i16 %i.ls, 1
  br label %_ZN9Imath_3_24halfaSEf.exit76

_ZN9Imath_3_24halfaSEf.exit76:                    ; preds = %bb.aw, %bb.ax, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.be
  %.033.i.i.i75 = phi i16 [ %i.km, %bb.bb ], [ %i.kx, %bb.ax ], [ %i.kz, %bb.az ], [ %i.lh, %bb.ba ], [ %i.kp, %bb.aw ], [ %i.lw, %bb.be ], [ %i.ls, %bb.bd ]
  %i.lx = insertelement <4 x i16> poison, i16 %.033.i.i.i, i64 0
  %i.ly = insertelement <4 x i16> %i.lx, i16 %.033.i.i.i67, i64 1
  %i.lz = insertelement <4 x i16> %i.ly, i16 %.033.i.i.i71, i64 2
  %i.ma = insertelement <4 x i16> %i.lz, i16 %.033.i.i.i75, i64 3
  %i.mb = bitcast <4 x i16> %i.ma to i64
  ret i64 %i.mb
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  tail call void @_ZN7Imf_3_410LatLongMap13pixelPositionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS1_4Vec3IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 4 uses
  %4 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN7Imf_3_47CubeMap20faceAndPixelPositionERKN9Imath_3_24Vec3IfEERKNS1_3BoxINS1_4Vec2IiEEEERNS_11CubeMapFaceERNS7_IfEE(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = load <2 x float>, ptr %3, align 8, !tbaa !37
  store <2 x float> %i.c, ptr %4, align 8, !tbaa !37
  call void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZNK11EnvmapImage6sampleERKN9Imath_3_24Vec2IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !81   ; 4 uses
  %i.b = fcmp ult float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fptosi float %i.a to i32
  br label %_ZN9Imath_3_25floorIfEEiT_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = fneg float %i.a                          ; 2 uses
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = sitofp i32 %i.e to float
  %i.g = fcmp ogt float %i.d, %i.f
  %.neg.i = sext i1 %i.g to i32
  %.neg5.i = sub nsw i32 %.neg.i, %i.e
  br label %_ZN9Imath_3_25floorIfEEiT_.exit

_ZN9Imath_3_25floorIfEEiT_.exit:                  ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.c, %bb.b ], [ %.neg5.i, %bb.c ] ; 3 uses
  %i.i = add nsw i32 %i.h, 1                      ; 3 uses
  %i.j = sitofp i32 %i.i to float
  %i.k = fsub float %i.j, %i.a                    ; 9 uses
  %i.l = fsub float 1.000000e+00, %i.k            ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = icmp slt i32 %i.h, %i.n
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.p)
  %i.s = sub i32 %i.r, %i.n
  %i.t = select i1 %i.q, i32 0, i32 %i.s
  %i.u = icmp slt i32 %i.i, %i.n
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.p)
  %i.w = sub i32 %i.v, %i.n
  %i.x = select i1 %i.u, i32 0, i32 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !82 ; 4 uses
  %i.aa = fcmp ult float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit
  %i.ab = fptosi float %i.z to i32
  br label %_ZN9Imath_3_25floorIfEEiT_.exit48

bb.e:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit
  %i.ac = fneg float %i.z                         ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fcmp ogt float %i.ac, %i.ae
  %.neg.i46 = sext i1 %i.af to i32
  %.neg5.i47 = sub nsw i32 %.neg.i46, %i.ad
  br label %_ZN9Imath_3_25floorIfEEiT_.exit48

_ZN9Imath_3_25floorIfEEiT_.exit48:                ; preds = %bb.d, %bb.e
  %i.ag = phi i32 [ %i.ab, %bb.d ], [ %.neg5.i47, %bb.e ] ; 3 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fsub float %i.ai, %i.z                  ; 5 uses
  %i.ak = fsub float 1.000000e+00, %i.aj          ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ap = icmp slt i32 %i.ag, %i.am
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ao)
  %i.ar = sub i32 %i.aq, %i.am
  %i.as = select i1 %i.ap, i32 0, i32 %i.ar
  %i.at = icmp slt i32 %i.ah, %i.am
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ao)
  %i.av = sub i32 %i.au, %i.am
  %i.aw = select i1 %i.at, i32 0, i32 %i.av
  %i.ax = sext i32 %i.as to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !15 ; 2 uses
  %i.bc = mul nsw i64 %i.bb, %i.ax
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = sext i32 %i.t to i64                    ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 2, !tbaa !26 ; 4 uses
  %.sroa.470.0.extract.shift = lshr i64 %i.bg, 16
  %.sroa.571.0.extract.shift = lshr i64 %i.bg, 32
  %.sroa.672.0.extract.shift = lshr i64 %i.bg, 48
  %i.bh = sext i32 %i.x to i64                    ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 2, !tbaa !26 ; 4 uses
  %.sroa.466.0.extract.shift = lshr i64 %i.bj, 16
  %.sroa.567.0.extract.shift = lshr i64 %i.bj, 32
  %.sroa.668.0.extract.shift = lshr i64 %i.bj, 48
  %i.bk = sext i32 %i.aw to i64
  %i.bl = mul nsw i64 %i.bb, %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.be
  %i.bo = load i64, ptr %i.bn, align 2, !tbaa !26 ; 4 uses
  %.sroa.462.0.extract.shift = lshr i64 %i.bo, 16
  %.sroa.563.0.extract.shift = lshr i64 %i.bo, 32
  %.sroa.664.0.extract.shift = lshr i64 %i.bo, 48
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bh
  %i.bq = load i64, ptr %i.bp, align 2, !tbaa !26 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.bq, 16
  %.sroa.5.0.extract.shift = lshr i64 %i.bq, 32
  %.sroa.6.0.extract.shift = lshr i64 %i.bq, 48
  %i.br = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !39 ; 16 uses
  %i.bs = and i64 %i.bg, 65535
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !40
  %i.bv = and i64 %i.bj, 65535
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !40
  %i.by = fmul float %i.l, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.k, float %i.by)
  %i.ca = and i64 %i.bo, 65535
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !40
  %i.cd = and i64 %i.bq, 65535
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !40
  %i.cg = fmul float %i.l, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.k, float %i.cg)
  %i.ci = fmul float %i.ak, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aj, float %i.ci) ; 2 uses
  %i.ck = bitcast float %i.cj to i32
  %i.cl = tail call float @llvm.fabs.f32(float %i.cj)
  %i.cm = bitcast float %i.cl to i32              ; 10 uses
  %i.cn = lshr i32 %i.ck, 16                      ; 3 uses
  %i.co = trunc nuw i32 %i.cn to i16
  %i.cp = and i16 %i.co, -32768                   ; 3 uses
  %i.cq = icmp samesign ugt i32 %i.cm, 947912703
  br i1 %i.cq, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit48
  %i.cr = icmp samesign ugt i32 %i.cm, 2139095039
  br i1 %i.cr, label %bb.g, label %bb.i, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.cs = or disjoint i16 %i.cp, 31744            ; 2 uses
  %i.ct = icmp eq i32 %i.cm, 2139095040
  br i1 %i.ct, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = lshr i32 %i.cm, 13
  %i.cv = and i32 %i.cu, 1023                     ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i16
  %i.cy = trunc nuw nsw i32 %i.cv to i16
  %i.cz = or i16 %i.cy, %i.cx
  %i.da = or disjoint i16 %i.cz, %i.cs
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.i:                                             ; preds = %bb.f
  %i.db = icmp samesign ugt i32 %i.cm, 1199566847
  br i1 %i.db, label %bb.j, label %bb.k, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.dc = or disjoint i16 %i.cp, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.k:                                             ; preds = %bb.i
  %i.dd = add nuw nsw i32 %i.cm, 134221823
  %i.de = lshr i32 %i.cm, 13
  %i.df = and i32 %i.de, 1
  %i.dg = add nuw nsw i32 %i.dd, %i.df
  %i.dh = lshr i32 %i.dg, 13
  %i.di = and i32 %i.cn, 32768
  %i.dj = or i32 %i.dh, %i.di
  %i.dk = trunc i32 %i.dj to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.l:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit48
  %i.dl = icmp samesign ult i32 %i.cm, 855638017
  br i1 %i.dl, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = lshr i32 %i.cm, 23                      ; 2 uses
  %i.dn = sub nuw nsw i32 126, %i.dm
  %i.do = and i32 %i.cm, 8388607
  %i.dp = or disjoint i32 %i.do, 8388608          ; 2 uses
  %i.dq = add nsw i32 %i.dm, -94
  %i.dr = shl i32 %i.dp, %i.dq                    ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dn                   ; 2 uses
end_hunk_0
