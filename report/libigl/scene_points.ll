Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_points?download=true
inline.NumInlined: 410
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0
@.str.10 = private unnamed_addr constant [65 x i8] c"stride of normal buffers have to be identical for each time step\00", align 1
@_ZTIN6embree6PointsE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6embree6PointsE, ptr @_ZTIN6embree8GeometryE }, align 8
@_ZTSN6embree6PointsE = hidden constant [17 x i8] c"N6embree6PointsE\00", align 1
@_ZTIN6embree8GeometryE = external constant ptr
@_ZTVN6embree12rtcore_errorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6embree12rtcore_errorE, ptr @_ZN6embree12rtcore_errorD2Ev, ptr @_ZN6embree12rtcore_errorD0Ev, ptr @_ZNK6embree12rtcore_error4whatEv] }, comdat, align 8
@.str.11 = private unnamed_addr constant [27 x i8] c"buffer range out of bounds\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"invalid buffer data pointer type specified\00", align 1
@_ZTVN6embree4sse29PointsISAE = linkonce_odr hidden constant { [66 x ptr] } { [66 x ptr] [ptr null, ptr @_ZTIN6embree4sse29PointsISAE, ptr @_ZN6embree6PointsD2Ev, ptr @_ZN6embree4sse29PointsISAD0Ev, ptr @_ZN6embree8RefCount6refIncEv, ptr @_ZN6embree8RefCount6refDecEv, ptr @_ZN6embree8Geometry16setNumPrimitivesEj, ptr @_ZN6embree6Points15setNumTimeStepsEj, ptr @_ZN6embree6Points23setVertexAttributeCountEj, ptr @_ZN6embree8Geometry16setTopologyCountEj, ptr @_ZN6embree8Geometry6enableEv, ptr @_ZN6embree6Points6commitEv, ptr @_ZN6embree6Points12updateBufferE13RTCBufferTypej, ptr @_ZN6embree8Geometry7disableEv, ptr @_ZN6embree6Points6verifyEv, ptr @_ZN6embree8Geometry9preCommitEv, ptr @_ZN6embree8Geometry10postCommitEv, ptr @_ZNK6embree6Points18addElementsToCountERNS_14GeometryCountsE, ptr @_ZN6embree8Geometry19setTessellationRateEf, ptr @_ZN6embree6Points17setMaxRadiusScaleEf, ptr @_ZN6embree8Geometry11setUserDataEPv, ptr @_ZN6embree8Geometry11interpolateEPK23RTCInterpolateArguments, ptr @_ZN6embree8Geometry12interpolateNEPK24RTCInterpolateNArguments, ptr @_ZN6embree8Geometry18setSubdivisionModeEj18RTCSubdivisionMode, ptr @_ZN6embree8Geometry26setVertexAttributeTopologyEjj, ptr @_ZN6embree8Geometry23setDisplacementFunctionEPFvPK33RTCDisplacementFunctionNArgumentsE, ptr @_ZN6embree8Geometry16getFirstHalfEdgeEj, ptr @_ZN6embree8Geometry7getFaceEj, ptr @_ZN6embree8Geometry15getNextHalfEdgeEj, ptr @_ZN6embree8Geometry19getPreviousHalfEdgeEj, ptr @_ZN6embree8Geometry19getOppositeHalfEdgeEjj, ptr @_ZNK6embree6Points21getCompactVertexArrayEv, ptr @_ZN6embree6Points7setMaskEj, ptr @_ZN6embree6Points9setBufferE13RTCBufferTypej9RTCFormatRKNS_3RefINS_6BufferEEEmmj, ptr @_ZN6embree6Points13getBufferDataE13RTCBufferTypejNS_21BufferDataPointerTypeE, ptr @_ZN6embree8Geometry30setIntersectionFilterFunctionNEPFvPK27RTCFilterFunctionNArgumentsE, ptr @_ZN6embree8Geometry27setOcclusionFilterFunctionNEPFvPK27RTCFilterFunctionNArgumentsE, ptr @_ZN6embree8Geometry33enableFilterFunctionFromArgumentsEb, ptr @_ZN6embree8Geometry17setInstancedSceneERKNS_3RefINS_5SceneEEE, ptr @_ZN6embree8Geometry18setInstancedScenesEPKP10RTCSceneTym, ptr @_ZN6embree8Geometry12setTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEEj, ptr @_ZN6embree8Geometry26setQuaternionDecompositionERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3fxEEEEEj, ptr @_ZN6embree8Geometry12getTransformEf, ptr @_ZN6embree8Geometry12getTransformEmf, ptr @_ZN6embree8Geometry17setBoundsFunctionEPFvPK26RTCBoundsFunctionArgumentsEPv, ptr @_ZN6embree8Geometry21setIntersectFunctionNEPFvPK30RTCIntersectFunctionNArgumentsE, ptr @_ZN6embree8Geometry20setOccludedFunctionNEPFvPK29RTCOccludedFunctionNArgumentsE, ptr @_ZNK6embree6Points29getGeometryDataDeviceByteSizeEv, ptr @_ZNK6embree6Points29convertToDeviceRepresentationEmPcS1_, ptr @_ZNK6embree4sse29PointsISA18createPrimRefArrayEPNS_7PrimRefERKNS_5rangeImEEmj, ptr @_ZNK6embree8Geometry18createPrimRefArrayERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorIS2_Lm32EEEEERNS1_INS_16SubGridBuildDataENS3_IS7_Lm4EEEEERKNS_5rangeImEEmj, ptr @_ZNK6embree4sse29PointsISA20createPrimRefArrayMBERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorIS3_Lm32EEEEEmRKNS_5rangeImEEmj, ptr @_ZNK6embree4sse29PointsISA20createPrimRefArrayMBEPNS_7PrimRefERKNS_4BBoxIfEERKNS_5rangeImEEmj, ptr @_ZNK6embree4sse29PointsISA20createPrimRefMBArrayERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEERKNS_4BBoxIfEERKNS_5rangeImEEmj, ptr @_ZNK6embree8Geometry20createPrimRefMBArrayERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS2_Lm16EEEEERNS1_INS_16SubGridBuildDataENS3_IS7_Lm4EEEEERKNS_4BBoxIfEERKNS_5rangeImEEmj, ptr @_ZNK6embree8Geometry19computeAlignedSpaceEm, ptr @_ZNK6embree8Geometry21computeAlignedSpaceMBEmNS_4BBoxIfEE, ptr @_ZNK6embree4sse29PointsISA16computeDirectionEj, ptr @_ZNK6embree4sse29PointsISA16computeDirectionEjm, ptr @_ZNK6embree4sse29PointsISA7vboundsEm, ptr @_ZNK6embree4sse29PointsISA7vboundsERKNS_12LinearSpace3INS_6Vec3faEEEm, ptr @_ZNK6embree8Geometry7vboundsERKNS_6Vec3faEffRKNS_12LinearSpace3IS1_EEmm, ptr @_ZNK6embree4sse29PointsISA13vlinearBoundsEmRKNS_4BBoxIfEE, ptr @_ZNK6embree8Geometry13vlinearBoundsEmRKNS_4BBoxIfEEPKNS_16SubGridBuildDataE, ptr @_ZNK6embree4sse29PointsISA13vlinearBoundsERKNS_12LinearSpace3INS_6Vec3faEEEmRKNS_4BBoxIfEE, ptr @_ZNK6embree8Geometry13vlinearBoundsERKNS_6Vec3faEffRKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEE] }, comdat, align 8
@_ZTIN6embree4sse29PointsISAE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6embree4sse29PointsISAE, ptr @_ZTIN6embree6PointsE }, comdat, align 8
@_ZTSN6embree4sse29PointsISAE = linkonce_odr hidden constant [25 x i8] c"N6embree4sse29PointsISAE\00", comdat, align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"operation not supported for this geometry\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"createPrimRefArray not implemented for this geometry\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"createPrimRefMBArray not implemented for this geometry\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"computeAlignedSpace not implemented for this geometry\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"computeDirection not implemented for this geometry\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"vbounds not implemented for this geometry\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"vlinearBounds not implemented for this geometry\00", align 1

@_ZN6embree6PointsC1EPNS_6DeviceENS_8Geometry5GTypeE = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6embree6PointsC2EPNS_6DeviceENS_8Geometry5GTypeE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6PointsC2EPNS_6DeviceENS_8Geometry5GTypeE(ptr noundef nonnull align 16 dereferenceable(300) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  tail call void @_ZN6embree8GeometryC2EPNS_6DeviceENS0_5GTypeEjj(ptr noundef nonnull align 16 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 1)
  store ptr getelementptr inbounds nuw inrange(-16, 512) (i8, ptr @_ZTVN6embree6PointsE, i64 16), ptr %0, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr null, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16             ; 5 uses
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store ptr %i.l, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr %i.l, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 7 uses
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %._crit_edge83, label %bb.a

._crit_edge83:                                    ; preds = %.noexc
  store i64 0, ptr %i.m, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

bb.a:                                             ; preds = %.noexc
  %i.ab = mul nuw nsw i64 %i.z, 56
  %i.ac = load ptr, ptr %i.l, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(1384) %i.l, i64 noundef %i.ab, i64 noundef 8, i32 noundef 3)
          to label %.noexc31 unwind label %bb.k, !inline_history !19

.noexc31:                                         ; preds = %bb.a
  store ptr %i.af, ptr %i.o, align 16
  %i.ag = load i64, ptr %i.m, align 16
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %.preheader78, label %_ZN6embree13RawBufferViewD2Ev.exit52

.preheader78:                                     ; preds = %_ZN6embree13RawBufferViewD2Ev.exit52, %.noexc31
  %.lcssa79 = phi i64 [ 0, %.noexc31 ], [ %i.az, %_ZN6embree13RawBufferViewD2Ev.exit52 ] ; 6 uses
  %i.ah = icmp ult i64 %.lcssa79, %i.z
  br i1 %i.ah, label %.noexc34.preheader, label %._crit_edge

.noexc34.preheader:                               ; preds = %.preheader78
  %i.ai = sub nuw i64 %i.z, %.lcssa79
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc34.prol.loopexit, label %.noexc34.prol

.noexc34.prol:                                    ; preds = %.noexc34.preheader
  %i.aj = load ptr, ptr %i.o, align 16
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.aj, i64 %.lcssa79 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i8 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr null, ptr %i.ao, align 8
  %i.ap = add nuw nsw i64 %.lcssa79, 1
  br label %.noexc34.prol.loopexit

.noexc34.prol.loopexit:                           ; preds = %.noexc34.prol, %.noexc34.preheader
  %.0.i2981.unr = phi i64 [ %.lcssa79, %.noexc34.preheader ], [ %i.ap, %.noexc34.prol ]
  %i.aq = add nsw i64 %i.z, -1
  %i.ar = icmp eq i64 %.lcssa79, %i.aq
  br i1 %i.ar, label %._crit_edge, label %.noexc34

_ZN6embree13RawBufferViewD2Ev.exit52:             ; preds = %.noexc31, %_ZN6embree13RawBufferViewD2Ev.exit52
  %.027.i80 = phi i64 [ %i.ay, %_ZN6embree13RawBufferViewD2Ev.exit52 ], [ 0, %.noexc31 ] ; 3 uses
  %i.as = load ptr, ptr %i.o, align 16
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %.027.i80 ; 2 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr null, i64 %.027.i80 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.au, i64 48, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  store ptr %i.ax, ptr %i.av, align 8
  store ptr null, ptr %i.aw, align 8
  %i.ay = add nuw i64 %.027.i80, 1                ; 2 uses
  %i.az = load i64, ptr %i.m, align 16            ; 2 uses
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %_ZN6embree13RawBufferViewD2Ev.exit52, label %.preheader78, !llvm.loop !0

._crit_edge:                                      ; preds = %.noexc34.prol.loopexit, %.noexc34, %.preheader78
  %i.bb = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(1384) %i.bb, ptr noundef null)
          to label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i unwind label %bb.k, !inline_history !19

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.b, %._crit_edge
  store i64 %i.z, ptr %i.m, align 16
  store i64 %i.z, ptr %i.n, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

.noexc34:                                         ; preds = %.noexc34.prol.loopexit, %.noexc34
  %.0.i2981 = phi i64 [ %i.bs, %.noexc34 ], [ %.0.i2981.unr, %.noexc34.prol.loopexit ] ; 3 uses
  %i.bf = load ptr, ptr %i.o, align 16
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %.0.i2981 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i8 1, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  store i32 0, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr null, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.o, align 16
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.bl, i64 %.0.i2981 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store i8 1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 100
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  store ptr null, ptr %i.br, align 8
  %i.bs = add nuw nsw i64 %.0.i2981, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bs, %i.z
  br i1 %exitcond.not.1, label %._crit_edge, label %.noexc34, !llvm.loop !1

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit: ; preds = %._crit_edge83, %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = and i32 %i.bu, 255
  %i.bw = icmp eq i32 %i.bv, 27
  br i1 %i.bw, label %bb.c, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

bb.c:                                             ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit
  %i.bx = load i32, ptr %i.x, align 4
  %i.by = zext i32 %i.bx to i64                   ; 17 uses
  %i.bz = load i64, ptr %i.r, align 8             ; 5 uses
  %.not.i47 = icmp ult i64 %i.bz, %i.by
  br i1 %.not.i47, label %bb.d, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.d, %.lr.ph.a
  %.0.i4984 = phi i64 [ %3, %.lr.ph.a ], [ %i.bz, %bb.d ]
  %3 = shl nuw nsw i64 %.0.i4984, 1               ; 3 uses
  %4 = icmp samesign ult i64 %3, %i.by
  br i1 %4, label %.lr.ph.a, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !2

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph.a, %bb.c, %bb.d
  %.07.i48 = phi i64 [ %i.by, %bb.d ], [ %i.bz, %bb.c ], [ %3, %.lr.ph.a ] ; 3 uses
  %i.cb = load i64, ptr %i.q, align 16            ; 3 uses
  %i.cc = icmp ugt i64 %i.cb, %i.by
  br i1 %i.cc, label %.lr.ph87, label %bb.g

._crit_edge88:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit55
  %.pre114.pre = load i64, ptr %i.r, align 8
  store i64 %i.by, ptr %i.q, align 16
  br label %bb.g

.lr.ph87:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, %_ZN6embree13RawBufferViewD2Ev.exit55
  %i.cd = phi i64 [ %i.cn, %_ZN6embree13RawBufferViewD2Ev.exit55 ], [ %i.cb, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %.029.i4186 = phi i64 [ %i.co, %_ZN6embree13RawBufferViewD2Ev.exit55 ], [ %i.by, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 2 uses
  %i.ce = load ptr, ptr %i.s, align 16
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %.029.i4186
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i54, label %_ZN6embree13RawBufferViewD2Ev.exit55, label %bb.e

bb.e:                                             ; preds = %.lr.ph87
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %._ZN6embree13RawBufferViewD2Ev.exit55_crit_edge unwind label %bb.f

._ZN6embree13RawBufferViewD2Ev.exit55_crit_edge:  ; preds = %bb.e
  %.pre = load i64, ptr %i.q, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit55

bb.f:                                             ; preds = %bb.e
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit55:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit55_crit_edge, %.lr.ph87
  %i.cn = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit55_crit_edge ], [ %i.cd, %.lr.ph87 ] ; 2 uses
  %i.co = add nuw i64 %.029.i4186, 1              ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  br i1 %i.cp, label %.lr.ph87, label %._crit_edge88, !llvm.loop !3

bb.g:                                             ; preds = %._crit_edge88, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.cq = phi i64 [ %i.by, %._crit_edge88 ], [ %i.cb, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.cr = phi i64 [ %.pre114.pre, %._crit_edge88 ], [ %i.bz, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.cs = icmp eq i64 %.07.i48, %i.cr
  br i1 %i.cs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ct = icmp ult i64 %i.cq, %i.by
  br i1 %i.ct, label %.noexc42.preheader, label %._crit_edge104

.noexc42.preheader:                               ; preds = %bb.h
  %i.cu = sub nuw i64 %i.by, %i.cq
  %xtraiter159 = and i64 %i.cu, 1
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.noexc42.prol.loopexit, label %.noexc42.prol

.noexc42.prol:                                    ; preds = %.noexc42.preheader
  %i.cv = load ptr, ptr %i.s, align 16
  %i.cw = getelementptr inbounds nuw [56 x i8], ptr %i.cv, i64 %i.cq ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cw, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store i8 1, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  store i32 0, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store ptr null, ptr %i.da, align 8
  %i.db = add nuw nsw i64 %i.cq, 1
  br label %.noexc42.prol.loopexit

.noexc42.prol.loopexit:                           ; preds = %.noexc42.prol, %.noexc42.preheader
  %.028.i40103.unr = phi i64 [ %i.cq, %.noexc42.preheader ], [ %i.db, %.noexc42.prol ]
  %i.dc = add nsw i64 %i.by, -1
  %i.dd = icmp eq i64 %i.cq, %i.dc
  br i1 %i.dd, label %._crit_edge104, label %.noexc42

._crit_edge104:                                   ; preds = %.noexc42.prol.loopexit, %.noexc42, %bb.h
  store i64 %i.by, ptr %i.q, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

.noexc42:                                         ; preds = %.noexc42.prol.loopexit, %.noexc42
  %.028.i40103 = phi i64 [ %i.dr, %.noexc42 ], [ %.028.i40103.unr, %.noexc42.prol.loopexit ] ; 3 uses
  %i.de = load ptr, ptr %i.s, align 16
  %i.df = getelementptr inbounds nuw [56 x i8], ptr %i.de, i64 %.028.i40103 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.df, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store i8 1, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 44
  store i32 0, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  store ptr null, ptr %i.dj, align 8
  %i.dk = load ptr, ptr %i.s, align 16
  %i.dl = getelementptr inbounds nuw [56 x i8], ptr %i.dk, i64 %.028.i40103 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dm, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store i8 1, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 100
  store i32 0, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 104
  store ptr null, ptr %i.dq, align 8
  %i.dr = add nuw nsw i64 %.028.i40103, 2         ; 2 uses
  %exitcond113.not.1 = icmp eq i64 %i.dr, %i.by
  br i1 %exitcond113.not.1, label %._crit_edge104, label %.noexc42, !llvm.loop !4

bb.i:                                             ; preds = %bb.g
  %i.ds = load ptr, ptr %i.s, align 16            ; 2 uses
  %i.dt = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.du = mul i64 %.07.i48, 56
  %i.dv = load ptr, ptr %i.dt, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef ptr %i.dx(ptr noundef nonnull align 8 dereferenceable(1384) %i.dt, i64 noundef %i.du, i64 noundef 8, i32 noundef 3)
          to label %.noexc43 unwind label %bb.k, !inline_history !20

.noexc43:                                         ; preds = %bb.i
  store ptr %i.dy, ptr %i.s, align 16
  %i.dz = load i64, ptr %i.q, align 16
  %.not105.a = icmp eq i64 %i.dz, 0
  br i1 %.not105.a, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit57

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit57, %.noexc43
  %.lcssa = phi i64 [ 0, %.noexc43 ], [ %i.es, %_ZN6embree13RawBufferViewD2Ev.exit57 ] ; 6 uses
  %i.ea = icmp ult i64 %.lcssa, %i.by
  br i1 %i.ea, label %.noexc46.preheader, label %._crit_edge92

.noexc46.preheader:                               ; preds = %.preheader
  %i.eb = sub nuw i64 %i.by, %.lcssa
  %xtraiter157 = and i64 %i.eb, 1
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.noexc46.prol.loopexit, label %.noexc46.prol

.noexc46.prol:                                    ; preds = %.noexc46.preheader
  %i.ec = load ptr, ptr %i.s, align 16
  %i.ed = getelementptr inbounds nuw [56 x i8], ptr %i.ec, i64 %.lcssa ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ed, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i8 1, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 44
  store i32 0, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store ptr null, ptr %i.eh, align 8
  %i.ei = add nuw nsw i64 %.lcssa, 1
  br label %.noexc46.prol.loopexit

.noexc46.prol.loopexit:                           ; preds = %.noexc46.prol, %.noexc46.preheader
  %.0.i3891.unr = phi i64 [ %.lcssa, %.noexc46.preheader ], [ %i.ei, %.noexc46.prol ]
  %i.ej = add nsw i64 %i.by, -1
  %i.ek = icmp eq i64 %.lcssa, %i.ej
  br i1 %i.ek, label %._crit_edge92, label %.noexc46

_ZN6embree13RawBufferViewD2Ev.exit57:             ; preds = %.noexc43, %_ZN6embree13RawBufferViewD2Ev.exit57
  %.027.i3789 = phi i64 [ %i.er, %_ZN6embree13RawBufferViewD2Ev.exit57 ], [ 0, %.noexc43 ] ; 3 uses
  %i.el = load ptr, ptr %i.s, align 16
  %i.em = getelementptr inbounds nuw [56 x i8], ptr %i.el, i64 %.027.i3789 ; 2 uses
  %i.en = getelementptr inbounds nuw [56 x i8], ptr %i.ds, i64 %.027.i3789 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.em, ptr noundef nonnull align 8 dereferenceable(56) %i.en, i64 48, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 48 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8
  store ptr %i.eq, ptr %i.eo, align 8
  store ptr null, ptr %i.ep, align 8
  %i.er = add nuw i64 %.027.i3789, 1              ; 2 uses
  %i.es = load i64, ptr %i.q, align 16            ; 2 uses
  %i.et = icmp ult i64 %i.er, %i.es
  br i1 %i.et, label %_ZN6embree13RawBufferViewD2Ev.exit57, label %.preheader, !llvm.loop !5

._crit_edge92:                                    ; preds = %.noexc46.prol.loopexit, %.noexc46, %.preheader
  %i.eu = load ptr, ptr %i.p, align 8             ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i39, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge92
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8
  invoke void %i.ex(ptr noundef nonnull align 8 dereferenceable(1384) %i.eu, ptr noundef %i.ds)
          to label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i unwind label %bb.k, !inline_history !20

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.j, %._crit_edge92
  store i64 %i.by, ptr %i.q, align 16
  store i64 %.07.i48, ptr %i.r, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

.noexc46:                                         ; preds = %.noexc46.prol.loopexit, %.noexc46
  %.0.i3891 = phi i64 [ %i.fl, %.noexc46 ], [ %.0.i3891.unr, %.noexc46.prol.loopexit ] ; 3 uses
  %i.ey = load ptr, ptr %i.s, align 16
  %i.ez = getelementptr inbounds nuw [56 x i8], ptr %i.ey, i64 %.0.i3891 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ez, i8 0, i64 36, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6embree6PointsC2EPNS_6DeviceENS_8Geometry5GTypeE:.noexc
_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEED2Ev.exit: ; preds = %bb.l, %._crit_edge96.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.gi = load i64, ptr %i.q, align 16            ; 2 uses
  %.not107 = icmp eq i64 %i.gi, 0
  br i1 %.not107, label %._crit_edge99.a, label %.lr.ph98.a

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit: ; preds = %._crit_edge104, %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit
  ret void

._crit_edge99.a:                                  ; preds = %_ZN6embree13RawBufferViewD2Ev.exit61, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEED2Ev.exit
  %i.gj = load ptr, ptr %i.p, align 8             ; 3 uses
  %.not.i20 = icmp eq ptr %i.gj, null
  br i1 %.not.i20, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge99.a
  %i.gk = load ptr, ptr %i.s, align 16
  %i.gl = load ptr, ptr %i.gj, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  %i.gn = load ptr, ptr %i.gm, align 8
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(1384) %i.gj, ptr noundef %i.gk)
          to label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit unwind label %bb.s, !inline_history !9

.lr.ph98.a:                                       ; preds = %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEED2Ev.exit, %_ZN6embree13RawBufferViewD2Ev.exit61
  %i.go = phi i64 [ %i.gy, %_ZN6embree13RawBufferViewD2Ev.exit61 ], [ %i.gi, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEED2Ev.exit ]
  %.0.i1897 = phi i64 [ %i.gz, %_ZN6embree13RawBufferViewD2Ev.exit61 ], [ 0, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEED2Ev.exit ] ; 2 uses
  %i.gp = load ptr, ptr %i.s, align 16
  %i.gq = getelementptr inbounds nuw [56 x i8], ptr %i.gp, i64 %.0.i1897
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8            ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i60, label %_ZN6embree13RawBufferViewD2Ev.exit61, label %bb.q

bb.q:                                             ; preds = %.lr.ph98.a
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  invoke void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs)
          to label %._ZN6embree13RawBufferViewD2Ev.exit61_crit_edge unwind label %bb.r

._ZN6embree13RawBufferViewD2Ev.exit61_crit_edge:  ; preds = %bb.q
  %.pre116 = load i64, ptr %i.q, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit61

bb.r:                                             ; preds = %bb.q
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  tail call void @__clang_call_terminate(ptr %i.gx) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit61:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit61_crit_edge, %.lr.ph98.a
  %i.gy = phi i64 [ %.pre116, %._ZN6embree13RawBufferViewD2Ev.exit61_crit_edge ], [ %i.go, %.lr.ph98.a ] ; 2 uses
  %i.gz = add nuw i64 %.0.i1897, 1                ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  br i1 %i.ha, label %.lr.ph98.a, label %._crit_edge99.a, !llvm.loop !10

bb.s:                                             ; preds = %bb.p
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  tail call void @__clang_call_terminate(ptr %i.hc) #23
  unreachable

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit: ; preds = %bb.p, %._crit_edge99.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.hd = load i64, ptr %i.m, align 16            ; 2 uses
  %.not108 = icmp eq i64 %i.hd, 0
  br i1 %.not108, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %_ZN6embree13RawBufferViewD2Ev.exit63, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit
  %i.he = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.he, null
  br i1 %.not.i, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge102
  %i.hf = load ptr, ptr %i.o, align 16
  %i.hg = load ptr, ptr %i.he, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 72
  %i.hi = load ptr, ptr %i.hh, align 8
  invoke void %i.hi(ptr noundef nonnull align 8 dereferenceable(1384) %i.he, ptr noundef %i.hf)
          to label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit unwind label %bb.w, !inline_history !11

.lr.ph101:                                        ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit, %_ZN6embree13RawBufferViewD2Ev.exit63
  %i.hj = phi i64 [ %i.ht, %_ZN6embree13RawBufferViewD2Ev.exit63 ], [ %i.hd, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit ]
  %.0.i100 = phi i64 [ %i.hu, %_ZN6embree13RawBufferViewD2Ev.exit63 ], [ 0, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit ] ; 2 uses
  %i.hk = load ptr, ptr %i.o, align 16
  %i.hl = getelementptr inbounds nuw [56 x i8], ptr %i.hk, i64 %.0.i100
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8            ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i62, label %_ZN6embree13RawBufferViewD2Ev.exit63, label %bb.u

bb.u:                                             ; preds = %.lr.ph101
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  invoke void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hn)
          to label %._ZN6embree13RawBufferViewD2Ev.exit63_crit_edge unwind label %bb.v

._ZN6embree13RawBufferViewD2Ev.exit63_crit_edge:  ; preds = %bb.u
  %.pre117 = load i64, ptr %i.m, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit63

bb.v:                                             ; preds = %bb.u
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  tail call void @__clang_call_terminate(ptr %i.hs) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit63:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit63_crit_edge, %.lr.ph101
  %i.ht = phi i64 [ %.pre117, %._ZN6embree13RawBufferViewD2Ev.exit63_crit_edge ], [ %i.hj, %.lr.ph101 ] ; 2 uses
  %i.hu = add nuw i64 %.0.i100, 1                 ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %i.ht
  br i1 %i.hv, label %.lr.ph101, label %._crit_edge102, !llvm.loop !12

bb.w:                                             ; preds = %bb.t
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  tail call void @__clang_call_terminate(ptr %i.hx) #23
  unreachable

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit: ; preds = %bb.t, %._crit_edge102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.hy = load ptr, ptr %i.i, align 16            ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i64, label %_ZN6embree13RawBufferViewD2Ev.exit65, label %bb.x

bb.x:                                             ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  invoke void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hy)
          to label %_ZN6embree13RawBufferViewD2Ev.exit65 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  tail call void @__clang_call_terminate(ptr %i.id) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit65:             ; preds = %bb.x, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit
  %i.ie = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i.i66 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i66, label %_ZN6embree13RawBufferViewD2Ev.exit67, label %bb.z

bb.z:                                             ; preds = %_ZN6embree13RawBufferViewD2Ev.exit65
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.ie)
          to label %_ZN6embree13RawBufferViewD2Ev.exit67 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  tail call void @__clang_call_terminate(ptr %i.ij) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit67:             ; preds = %bb.z, %_ZN6embree13RawBufferViewD2Ev.exit65
  tail call void @_ZN6embree8GeometryD2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(88) %0) #24
  resume { ptr, i32 } %i.fm
}

declare void @_ZN6embree8GeometryC2EPNS_6DeviceENS0_5GTypeEjj(ptr noundef nonnull align 16 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6embree8GeometryD2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(88)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6Points7setMaskEj(ptr noundef nonnull align 16 dereferenceable(300) initializes((52, 56)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %1, ptr %i.a, align 4
  tail call void @_ZN6embree8Geometry6updateEv(ptr noundef nonnull align 16 dereferenceable(88) %0)
  ret void
}

declare void @_ZN6embree8Geometry6updateEv(ptr noundef nonnull align 16 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6Points15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(300) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %.not.i = icmp ult i64 %i.d, %i.b
  br i1 %.not.i, label %bb.b, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.b, %.lr.ph.a
  %.0.i334 = phi i64 [ %2, %.lr.ph.a ], [ %i.d, %bb.b ]
  %2 = shl nuw nsw i64 %.0.i334, 1                ; 3 uses
  %3 = icmp samesign ult i64 %2, %i.b
  br i1 %3, label %.lr.ph.a, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !21

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph.a, %bb.a, %bb.b
  %.07.i = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.a ], [ %2, %.lr.ph.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.g = load i64, ptr %i.f, align 16             ; 3 uses
  %i.h = icmp ugt i64 %i.g, %i.b
  br i1 %i.h, label %.lr.ph36, label %bb.f

.lr.ph36:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit
  %.pre67.pre = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %i.f, align 16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph36, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.j = phi i64 [ %i.g, %.lr.ph36 ], [ %i.t, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.029.i35 = phi i64 [ %i.b, %.lr.ph36 ], [ %i.u, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 16
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %.029.i35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.n, null
  br i1 %.not.i.i12, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.f, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.t = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.j, %bb.c ] ; 2 uses
  %i.u = add nuw i64 %.029.i35, 1                 ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.c, label %._crit_edge, !llvm.loop !22

bb.f:                                             ; preds = %._crit_edge, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.w = phi i64 [ %i.b, %._crit_edge ], [ %i.g, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.x = phi i64 [ %.pre67.pre, %._crit_edge ], [ %i.d, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.y = icmp eq i64 %.07.i, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %i.w, %i.b
  br i1 %i.z, label %.lr.ph44.a, label %._crit_edge45.a

.lr.ph44.a:                                       ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ab = sub nuw i64 %i.b, %i.w
  %xtraiter100 = and i64 %i.ab, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph44.a
  %i.ac = load ptr, ptr %i.aa, align 16
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.w ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i8 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %i.w, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph44.a
  %.028.i42.unr = phi i64 [ %i.w, %.lr.ph44.a ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %i.aj = add nsw i64 %i.b, -1
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %._crit_edge45.a, label %.lr.ph44.new

._crit_edge45.a:                                  ; preds = %.prol.loopexit, %.lr.ph44.new, %bb.g
  store i64 %i.b, ptr %i.f, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph44.new:                                     ; preds = %.prol.loopexit, %.lr.ph44.new
  %.028.i42 = phi i64 [ %i.ay, %.lr.ph44.new ], [ %.028.i42.unr, %.prol.loopexit ] ; 3 uses
  %i.al = load ptr, ptr %i.aa, align 16
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %.028.i42 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i8 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr null, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.aa, align 16
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %.028.i42 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store i8 1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 100
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  store ptr null, ptr %i.ax, align 8
  %i.ay = add nuw nsw i64 %.028.i42, 2            ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ay, %i.b
  br i1 %exitcond64.not.1, label %._crit_edge45.a, label %.lr.ph44.new, !llvm.loop !23

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.ba = load ptr, ptr %i.az, align 16           ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bc = mul i64 %.07.i, 56
  %i.bd = load ptr, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(1384) %i.bb, i64 noundef %i.bc, i64 noundef 8, i32 noundef 3), !inline_history !24
  store ptr %i.bg, ptr %i.az, align 16
  %i.bh = load i64, ptr %i.f, align 16
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %.preheader30, label %_ZN6embree13RawBufferViewD2Ev.exit14

.preheader30:                                     ; preds = %_ZN6embree13RawBufferViewD2Ev.exit14, %bb.h
  %.lcssa33 = phi i64 [ 0, %bb.h ], [ %i.ca, %_ZN6embree13RawBufferViewD2Ev.exit14 ] ; 6 uses
  %i.bi = icmp ult i64 %.lcssa33, %i.b
  br i1 %i.bi, label %.lr.ph40.preheader, label %._crit_edge41

.lr.ph40.preheader:                               ; preds = %.preheader30
  %i.bj = sub nuw i64 %i.b, %.lcssa33
  %xtraiter = and i64 %i.bj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol

.lr.ph40.prol:                                    ; preds = %.lr.ph40.preheader
  %i.bk = load ptr, ptr %i.az, align 16
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.bk, i64 %.lcssa33 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i8 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  store i32 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store ptr null, ptr %i.bp, align 8
  %i.bq = add nuw nsw i64 %.lcssa33, 1
  br label %.lr.ph40.prol.loopexit

.lr.ph40.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph40.preheader
  %.0.i39.unr = phi i64 [ %.lcssa33, %.lr.ph40.preheader ], [ %i.bq, %.lr.ph40.prol ]
  %i.br = add nsw i64 %i.b, -1
  %i.bs = icmp eq i64 %.lcssa33, %i.br
  br i1 %i.bs, label %._crit_edge41, label %.lr.ph40

_ZN6embree13RawBufferViewD2Ev.exit14:             ; preds = %bb.h, %_ZN6embree13RawBufferViewD2Ev.exit14
  %.027.i37 = phi i64 [ %i.bz, %_ZN6embree13RawBufferViewD2Ev.exit14 ], [ 0, %bb.h ] ; 3 uses
  %i.bt = load ptr, ptr %i.az, align 16
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %.027.i37 ; 2 uses
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.ba, i64 %.027.i37 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 48, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bw, align 8
  store ptr null, ptr %i.bx, align 8
  %i.bz = add nuw i64 %.027.i37, 1                ; 2 uses
  %i.ca = load i64, ptr %i.f, align 16            ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %_ZN6embree13RawBufferViewD2Ev.exit14, label %.preheader30, !llvm.loop !0

._crit_edge41:                                    ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40, %.preheader30
  %i.cc = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge41
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(1384) %i.cc, ptr noundef %i.ba), !inline_history !25
  br label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.i, %._crit_edge41
  store i64 %i.b, ptr %i.f, align 16
  store i64 %.07.i, ptr %i.c, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph40:                                         ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40
  %.0.i39 = phi i64 [ %i.ct, %.lr.ph40 ], [ %.0.i39.unr, %.lr.ph40.prol.loopexit ] ; 3 uses
  %i.cg = load ptr, ptr %i.az, align 16
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %i.cg, i64 %.0.i39 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i8 1, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  store i32 0, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store ptr null, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.az, align 16
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.cm, i64 %.0.i39 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  store i8 1, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 100
  store i32 0, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  store ptr null, ptr %i.cs, align 8
  %i.ct = add nuw nsw i64 %.0.i39, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ct, %i.b
  br i1 %exitcond.not.1, label %._crit_edge41, label %.lr.ph40, !llvm.loop !1

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit: ; preds = %._crit_edge45.a, %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = and i32 %i.cv, 255
  %i.cx = icmp eq i32 %i.cw, 27
  br i1 %i.cx, label %bb.j, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

bb.j:                                             ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8            ; 5 uses
  %.not.i9 = icmp ult i64 %i.da, %i.b
  br i1 %.not.i9, label %bb.k, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.k, %.lr.ph47
  %.0.i1146 = phi i64 [ %.sroa.speculated23, %.lr.ph47 ], [ %i.da, %bb.k ]
  %4 = shl i64 %.0.i1146, 1
  %.sroa.speculated23 = tail call i64 @llvm.umax.i64(i64 %4, i64 1) ; 3 uses
  %5 = icmp ult i64 %.sroa.speculated23, %i.b
  br i1 %5, label %.lr.ph47, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !2

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph47, %bb.j, %bb.k
  %.07.i10 = phi i64 [ %i.b, %bb.k ], [ %i.da, %bb.j ], [ %.sroa.speculated23, %.lr.ph47 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.dd = load i64, ptr %i.dc, align 16           ; 3 uses
  %i.de = icmp ugt i64 %i.dd, %i.b
  br i1 %i.de, label %.lr.ph50, label %bb.o

.lr.ph50:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.l

._crit_edge51:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit17
  %.pre69.pre = load i64, ptr %i.cz, align 8
  store i64 %i.b, ptr %i.dc, align 16
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph50, %_ZN6embree13RawBufferViewD2Ev.exit17
  %i.dg = phi i64 [ %i.dd, %.lr.ph50 ], [ %i.dq, %_ZN6embree13RawBufferViewD2Ev.exit17 ]
  %.029.i849 = phi i64 [ %i.b, %.lr.ph50 ], [ %i.dr, %_ZN6embree13RawBufferViewD2Ev.exit17 ] ; 2 uses
  %i.dh = load ptr, ptr %i.df, align 16
  %i.di = getelementptr inbounds nuw [56 x i8], ptr %i.dh, i64 %.029.i849
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8            ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i16, label %_ZN6embree13RawBufferViewD2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge unwind label %bb.n

._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge:  ; preds = %bb.m
  %.pre68 = load i64, ptr %i.dc, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit17

bb.n:                                             ; preds = %bb.m
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  tail call void @__clang_call_terminate(ptr %i.dp) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit17:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge, %bb.l
  %i.dq = phi i64 [ %.pre68, %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge ], [ %i.dg, %bb.l ] ; 2 uses
  %i.dr = add nuw i64 %.029.i849, 1               ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  br i1 %i.ds, label %bb.l, label %._crit_edge51, !llvm.loop !3

bb.o:                                             ; preds = %._crit_edge51, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.dt = phi i64 [ %i.b, %._crit_edge51 ], [ %i.dd, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.du = phi i64 [ %.pre69.pre, %._crit_edge51 ], [ %i.da, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.dv = icmp eq i64 %.07.i10, %i.du
  br i1 %i.dv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dw = icmp ult i64 %i.dt, %i.b
  br i1 %i.dw, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dy = sub nuw i64 %i.b, %i.dt
  %xtraiter106 = and i64 %i.dy, 1
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.prol.loopexit105, label %.prol.loopexit105.unr-lcssa

.prol.loopexit105.unr-lcssa:                      ; preds = %.lr.ph59
  %i.dz = load ptr, ptr %i.dx, align 16
  %i.ea = getelementptr inbounds nuw [56 x i8], ptr %i.dz, i64 %i.dt ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ea, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store i8 1, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  store i32 0, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr null, ptr %i.ee, align 8
  %i.ef = add nuw nsw i64 %i.dt, 1
  br label %.prol.loopexit105

.prol.loopexit105:                                ; preds = %.prol.loopexit105.unr-lcssa, %.lr.ph59
  %.028.i757.unr = phi i64 [ %i.dt, %.lr.ph59 ], [ %i.ef, %.prol.loopexit105.unr-lcssa ]
  %i.eg = add nsw i64 %i.b, -1
  %i.eh = icmp eq i64 %i.dt, %i.eg
  br i1 %i.eh, label %._crit_edge60, label %.lr.ph59.new

._crit_edge60:                                    ; preds = %.prol.loopexit105, %.lr.ph59.new, %bb.p
  store i64 %i.b, ptr %i.dc, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph59.new:                                     ; preds = %.prol.loopexit105, %.lr.ph59.new
  %.028.i757 = phi i64 [ %i.ev, %.lr.ph59.new ], [ %.028.i757.unr, %.prol.loopexit105 ] ; 3 uses
  %i.ei = load ptr, ptr %i.dx, align 16
  %i.ej = getelementptr inbounds nuw [56 x i8], ptr %i.ei, i64 %.028.i757 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ek, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  store i8 1, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 44
  store i32 0, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store ptr null, ptr %i.en, align 8
  %i.eo = load ptr, ptr %i.dx, align 16
  %i.ep = getelementptr inbounds nuw [56 x i8], ptr %i.eo, i64 %.028.i757 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eq, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  store i8 1, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 100
  store i32 0, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 104
  store ptr null, ptr %i.eu, align 8
  %i.ev = add nuw nsw i64 %.028.i757, 2           ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %i.ev, %i.b
  br i1 %exitcond66.not.1, label %._crit_edge60, label %.lr.ph59.new, !llvm.loop !4

bb.q:                                             ; preds = %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.ex = load ptr, ptr %i.ew, align 16           ; 2 uses
  %i.ey = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.ez = mul i64 %.07.i10, 56
  %i.fa = load ptr, ptr %i.ey, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call noundef ptr %i.fc(ptr noundef nonnull align 8 dereferenceable(1384) %i.ey, i64 noundef %i.ez, i64 noundef 8, i32 noundef 3), !inline_history !26
  store ptr %i.fd, ptr %i.ew, align 16
  %i.fe = load i64, ptr %i.dc, align 16
  %.not61 = icmp eq i64 %i.fe, 0
  br i1 %.not61, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit19

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit19, %bb.q
  %.lcssa = phi i64 [ 0, %bb.q ], [ %i.fx, %_ZN6embree13RawBufferViewD2Ev.exit19 ] ; 6 uses
  %i.ff = icmp ult i64 %.lcssa, %i.b
  br i1 %i.ff, label %.lr.ph55.preheader, label %._crit_edge56

.lr.ph55.preheader:                               ; preds = %.preheader
  %i.fg = sub nuw i64 %i.b, %.lcssa
  %xtraiter102 = and i64 %i.fg, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph55.prol.loopexit, label %.lr.ph55.prol

.lr.ph55.prol:                                    ; preds = %.lr.ph55.preheader
  %i.fh = load ptr, ptr %i.ew, align 16
  %i.fi = getelementptr inbounds nuw [56 x i8], ptr %i.fh, i64 %.lcssa ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fi, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  store i8 1, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 44
  store i32 0, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  store ptr null, ptr %i.fm, align 8
  %i.fn = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph55.prol.loopexit

.lr.ph55.prol.loopexit:                           ; preds = %.lr.ph55.prol, %.lr.ph55.preheader
  %.0.i554.unr = phi i64 [ %.lcssa, %.lr.ph55.preheader ], [ %i.fn, %.lr.ph55.prol ]
  %i.fo = add nsw i64 %i.b, -1
  %i.fp = icmp eq i64 %.lcssa, %i.fo
  br i1 %i.fp, label %._crit_edge56, label %.lr.ph55

_ZN6embree13RawBufferViewD2Ev.exit19:             ; preds = %bb.q, %_ZN6embree13RawBufferViewD2Ev.exit19
  %.027.i452 = phi i64 [ %i.fw, %_ZN6embree13RawBufferViewD2Ev.exit19 ], [ 0, %bb.q ] ; 3 uses
  %i.fq = load ptr, ptr %i.ew, align 16
  %i.fr = getelementptr inbounds nuw [56 x i8], ptr %i.fq, i64 %.027.i452 ; 2 uses
  %i.fs = getelementptr inbounds nuw [56 x i8], ptr %i.ex, i64 %.027.i452 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fr, ptr noundef nonnull align 8 dereferenceable(56) %i.fs, i64 48, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 48 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8
  store ptr %i.fv, ptr %i.ft, align 8
  store ptr null, ptr %i.fu, align 8
  %i.fw = add nuw i64 %.027.i452, 1               ; 2 uses
  %i.fx = load i64, ptr %i.dc, align 16           ; 2 uses
  %i.fy = icmp ult i64 %i.fw, %i.fx
  br i1 %i.fy, label %_ZN6embree13RawBufferViewD2Ev.exit19, label %.preheader, !llvm.loop !5

._crit_edge56:                                    ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55, %.preheader
  %i.fz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i6, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge56
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8
  tail call void %i.gc(ptr noundef nonnull align 8 dereferenceable(1384) %i.fz, ptr noundef %i.ex), !inline_history !27
  br label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.r, %._crit_edge56
  store i64 %i.b, ptr %i.dc, align 16
  store i64 %.07.i10, ptr %i.cz, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph55:                                         ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55
  %.0.i554 = phi i64 [ %i.gq, %.lr.ph55 ], [ %.0.i554.unr, %.lr.ph55.prol.loopexit ] ; 3 uses
  %i.gd = load ptr, ptr %i.ew, align 16
  %i.ge = getelementptr inbounds nuw [56 x i8], ptr %i.gd, i64 %.0.i554 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ge, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.gf, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  store i8 1, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 44
  store i32 0, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  store ptr null, ptr %i.gi, align 8
  %i.gj = load ptr, ptr %i.ew, align 16
  %i.gk = getelementptr inbounds nuw [56 x i8], ptr %i.gj, i64 %.0.i554 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gl, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 96
  store i8 1, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 100
  store i32 0, ptr %i.go, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  store ptr null, ptr %i.gp, align 8
  %i.gq = add nuw nsw i64 %.0.i554, 2             ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %i.gq, %i.b
  br i1 %exitcond65.not.1, label %._crit_edge56, label %.lr.ph55, !llvm.loop !6

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit: ; preds = %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, %._crit_edge60, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit
  tail call void @_ZN6embree8Geometry15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(88) %0, i32 noundef %1)
  ret void
}

declare void @_ZN6embree8Geometry15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(88), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6Points23setVertexAttributeCountEj(ptr noundef nonnull align 16 dereferenceable(300) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %.not.i = icmp ult i64 %i.d, %i.b
  br i1 %.not.i, label %bb.b, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.b, %.lr.ph.a
  %.0.i110 = phi i64 [ %2, %.lr.ph.a ], [ %i.d, %bb.b ]
  %2 = shl nuw nsw i64 %.0.i110, 1                ; 3 uses
  %3 = icmp samesign ult i64 %2, %i.b
  br i1 %3, label %.lr.ph.a, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !28

_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph.a, %bb.a, %bb.b
  %.07.i = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.a ], [ %2, %.lr.ph.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %i.g = load i64, ptr %i.f, align 16             ; 3 uses
  %i.h = icmp ugt i64 %i.g, %i.b
  br i1 %i.h, label %.lr.ph12, label %bb.f

.lr.ph12:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit
  %.pre24.pre = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %i.f, align 16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph12, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.j = phi i64 [ %i.g, %.lr.ph12 ], [ %i.t, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.029.i11 = phi i64 [ %i.b, %.lr.ph12 ], [ %i.u, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 16
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %.029.i11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.n, null
  br i1 %.not.i.i2, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.f, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.t = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.j, %bb.c ] ; 2 uses
  %i.u = add nuw i64 %.029.i11, 1                 ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.c, label %._crit_edge, !llvm.loop !29

bb.f:                                             ; preds = %._crit_edge, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit
  %i.w = phi i64 [ %i.b, %._crit_edge ], [ %i.g, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.x = phi i64 [ %.pre24.pre, %._crit_edge ], [ %i.d, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.y = icmp eq i64 %.07.i, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %i.w, %i.b
  br i1 %i.z, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.ab = sub nuw i64 %i.b, %i.w
  %xtraiter41 = and i64 %i.ab, 1
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph20
  %i.ac = load ptr, ptr %i.aa, align 16
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.w ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i8 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %i.w, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph20
  %.028.i18.unr = phi i64 [ %i.w, %.lr.ph20 ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %i.aj = add nsw i64 %i.b, -1
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %._crit_edge21, label %.lr.ph20.new

._crit_edge21:                                    ; preds = %.prol.loopexit, %.lr.ph20.new, %bb.g
  store i64 %i.b, ptr %i.f, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit

.lr.ph20.new:                                     ; preds = %.prol.loopexit, %.lr.ph20.new
  %.028.i18 = phi i64 [ %i.ay, %.lr.ph20.new ], [ %.028.i18.unr, %.prol.loopexit ] ; 3 uses
  %i.al = load ptr, ptr %i.aa, align 16
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %.028.i18 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i8 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr null, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.aa, align 16
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %.028.i18 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store i8 1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 100
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  store ptr null, ptr %i.ax, align 8
  %i.ay = add nuw nsw i64 %.028.i18, 2            ; 2 uses
  %exitcond23.not.1 = icmp eq i64 %i.ay, %i.b
  br i1 %exitcond23.not.1, label %._crit_edge21, label %.lr.ph20.new, !llvm.loop !30

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.ba = load ptr, ptr %i.az, align 16           ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bc = mul i64 %.07.i, 56
  %i.bd = load ptr, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(1384) %i.bb, i64 noundef %i.bc, i64 noundef 8, i32 noundef 3), !inline_history !31
  store ptr %i.bg, ptr %i.az, align 16
  %i.bh = load i64, ptr %i.f, align 16
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit4

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit4, %bb.h
  %.lcssa = phi i64 [ 0, %bb.h ], [ %i.ca, %_ZN6embree13RawBufferViewD2Ev.exit4 ] ; 6 uses
  %i.bi = icmp ult i64 %.lcssa, %i.b
  br i1 %i.bi, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %.preheader
  %i.bj = sub nuw i64 %i.b, %.lcssa
  %xtraiter = and i64 %i.bj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph16.prol.loopexit, label %.lr.ph16.prol

.lr.ph16.prol:                                    ; preds = %.lr.ph16.preheader
  %i.bk = load ptr, ptr %i.az, align 16
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.bk, i64 %.lcssa ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i8 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  store i32 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store ptr null, ptr %i.bp, align 8
  %i.bq = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph16.prol.loopexit

.lr.ph16.prol.loopexit:                           ; preds = %.lr.ph16.prol, %.lr.ph16.preheader
  %.0.i15.unr = phi i64 [ %.lcssa, %.lr.ph16.preheader ], [ %i.bq, %.lr.ph16.prol ]
  %i.br = add nsw i64 %i.b, -1
  %i.bs = icmp eq i64 %.lcssa, %i.br
  br i1 %i.bs, label %._crit_edge17, label %.lr.ph16

_ZN6embree13RawBufferViewD2Ev.exit4:              ; preds = %bb.h, %_ZN6embree13RawBufferViewD2Ev.exit4
  %.027.i13 = phi i64 [ %i.bz, %_ZN6embree13RawBufferViewD2Ev.exit4 ], [ 0, %bb.h ] ; 3 uses
  %i.bt = load ptr, ptr %i.az, align 16
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %.027.i13 ; 2 uses
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.ba, i64 %.027.i13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 48, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bw, align 8
  store ptr null, ptr %i.bx, align 8
  %i.bz = add nuw i64 %.027.i13, 1                ; 2 uses
  %i.ca = load i64, ptr %i.f, align 16            ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %_ZN6embree13RawBufferViewD2Ev.exit4, label %.preheader, !llvm.loop !32

._crit_edge17:                                    ; preds = %.lr.ph16.prol.loopexit, %.lr.ph16, %.preheader
  %i.cc = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge17
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(1384) %i.cc, ptr noundef %i.ba), !inline_history !33
  br label %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i: ; preds = %bb.i, %._crit_edge17
  store i64 %i.b, ptr %i.f, align 16
  store i64 %.07.i, ptr %i.c, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit

.lr.ph16:                                         ; preds = %.lr.ph16.prol.loopexit, %.lr.ph16
  %.0.i15 = phi i64 [ %i.ct, %.lr.ph16 ], [ %.0.i15.unr, %.lr.ph16.prol.loopexit ] ; 3 uses
end_hunk_1
