Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/attribute_octahedron_transform?download=true
inline.NumInlined: 210
inline.NumDeleted: 126
begin_hunk_0_@_ZN5draco28AttributeOctahedronTransform25InverseTransformAttributeERKNS_14PointAttributeEPS1_:bb.a

_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit: ; preds = %.lr.ph, %bb.d
  %.sink36.i.i = phi float [ %i.cw, %bb.d ], [ 0.000000e+00, %.lr.ph ]
  %i.da = phi <2 x float> [ %i.cz, %bb.d ], [ zeroinitializer, %.lr.ph ]
  store float %.sink36.i.i, ptr %.01726, align 1
  %.sroa.423.0..017.sroa_idx = getelementptr inbounds nuw i8, ptr %.01726, i64 4
  store <2 x float> %i.da, ptr %.sroa.423.0..017.sroa_idx, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.01726, i64 12
  %i.dc = add nuw i32 %.01627, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.dc, %i.d
  br i1 %exitcond.not, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread, label %.lr.ph, !llvm.loop !90

_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread: ; preds = %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit, %middle.block, %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit, %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit ], [ true, %middle.block ], [ true, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5draco28AttributeOctahedronTransform13SetParametersEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5draco28AttributeOctahedronTransform16EncodeParametersEPNS_13EncoderBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = icmp ne i32 %i.c, -1                     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = trunc i32 %i.c to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !106
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = load ptr, ptr %1, align 8, !tbaa !107    ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5draco28AttributeOctahedronTransform16DecodeParametersERKNS_14PointAttributeEPNS_13DecoderBufferE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp sge i64 %i.b, %i.e                  ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !113
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !112
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !24
  br label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit

_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit:     ; preds = %bb.a, %bb.b
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5draco17OctahedronToolBox38FloatVectorToQuantizedOctahedralCoordsIfEEvPKT_PiS5_(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !114
  %i.b = fpext <2 x float> %i.a to <2 x double>   ; 2 uses
  %i.c = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.b) ; 2 uses
  %shift = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.c, %shift
  %i.d = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !114
  %.fr = freeze float %i.f
  %i.g = fpext float %.fr to double               ; 2 uses
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.i = fadd double %i.d, %i.h                   ; 2 uses
  %i.j = fcmp ogt double %i.i, f0x3EB0C6F7A0B5ED8D
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = fdiv double 1.000000e+00, %i.i           ; 2 uses
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %i.m, %i.b
  %i.o = fmul double %i.k, %i.g
  %i.p = fcmp olt double %i.o, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.8.0 = phi i1 [ %i.p, %bb.b ], [ false, %bb.a ]
  %i.q = phi <2 x double> [ %i.n, %bb.b ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !55   ; 12 uses
  %i.t = sitofp i32 %i.s to double
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.v, <2 x double> splat (double 5.000000e-01))
  %i.x = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.w)
  %i.y = fptosi <2 x double> %i.x to <2 x i32>    ; 3 uses
  %i.z = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.y, i1 true)
  %i.aa = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.z)
  %i.ab = sub i32 %i.s, %i.aa                     ; 4 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = extractelement <2 x i32> %i.y, i64 1    ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sub i32 0, %i.ab
  %storemerge.p = select i1 %i.ae, i32 %i.ab, i32 %i.af
  %.sroa.9.0 = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0) ; 4 uses
  %storemerge = select i1 %i.ac, i32 %storemerge.p, i32 0
  %.sroa.5.021 = add i32 %storemerge, %i.ad       ; 4 uses
  %i.ag = sub nsw i32 0, %.sroa.9.0
  %spec.select = select i1 %.sroa.8.0, i32 %i.ag, i32 %.sroa.9.0 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.y, i64 0
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = add nsw i32 %.sroa.5.021, %i.s
  %i.ak = add nsw i32 %spec.select, %i.s
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.al = icmp slt i32 %.sroa.5.021, 0
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !54
  %i.ao = sub nsw i32 %i.an, %.sroa.9.0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.013.i = phi i32 [ %i.ao, %bb.f ], [ %.sroa.9.0, %bb.e ] ; 2 uses
  %i.ap = icmp slt i32 %spec.select, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call i32 @llvm.abs.i32(i32 %.sroa.5.021, i1 true)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !54
  %i.at = tail call i32 @llvm.abs.i32(i32 %.sroa.5.021, i1 true)
  %i.au = sub nsw i32 %i.as, %i.at
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.d
  %.1.i = phi i32 [ %i.aj, %bb.d ], [ %.013.i, %bb.h ], [ %.013.i, %bb.i ] ; 12 uses
  %.0.i = phi i32 [ %i.ak, %bb.d ], [ %i.aq, %bb.h ], [ %i.au, %bb.i ] ; 11 uses
  %i.av = icmp eq i32 %.1.i, 0                    ; 2 uses
  %i.aw = icmp eq i32 %.0.i, 0                    ; 2 uses
  %i.ax = or i32 %.0.i, %.1.i
  %or.cond.i.i = icmp eq i32 %i.ax, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4 ; 4 uses
  br i1 %or.cond.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp eq i32 %.0.i, %.pre.i.i            ; 2 uses
  %or.cond39.i.i = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %or.cond39.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp eq i32 %.1.i, %.pre.i.i            ; 2 uses
  %or.cond3.i.i = and i1 %i.aw, %i.az
  br i1 %or.cond3.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp sgt i32 %.0.i, %i.s
  %or.cond = select i1 %i.av, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %factor43.i.i = shl i32 %i.s, 1
  %i.bb = sub i32 %factor43.i.i, %.0.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.o:                                             ; preds = %bb.m
  %i.bc = icmp slt i32 %.0.i, %i.s
  %or.cond22 = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %or.cond22, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %factor42.i.i = shl i32 %i.s, 1
  %i.bd = sub i32 %factor42.i.i, %.0.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.be = icmp slt i32 %.1.i, %i.s
  %or.cond23 = select i1 %i.ay, i1 %i.be, i1 false
  br i1 %or.cond23, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %factor41.i.i = shl i32 %i.s, 1
  %i.bf = sub i32 %factor41.i.i, %.1.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.s:                                             ; preds = %bb.q
  br i1 %i.aw, label %bb.t, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.t:                                             ; preds = %bb.s
  %i.bg = icmp sgt i32 %.1.i, %i.s
  br i1 %i.bg, label %bb.u, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.u:                                             ; preds = %bb.t
  %factor.i.i = shl i32 %i.s, 1
  %i.bh = sub i32 %factor.i.i, %.1.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.n, %bb.p, %bb.r, %bb.s, %bb.t, %bb.u
  %.025.i.i = phi i32 [ %.0.i, %bb.s ], [ %i.bb, %bb.n ], [ %i.bd, %bb.p ], [ %.0.i, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ %.1.i, %bb.l ], [ %.0.i, %bb.k ], [ %.pre.i.i, %bb.j ]
  %.0.i.i = phi i32 [ %.1.i, %bb.s ], [ 0, %bb.n ], [ %.1.i, %bb.p ], [ %i.bf, %bb.r ], [ %i.bh, %bb.u ], [ %.1.i, %bb.t ], [ %.1.i, %bb.l ], [ %.0.i, %bb.k ], [ %.pre.i.i, %bb.j ]
  store i32 %.0.i.i, ptr %2, align 4, !tbaa !56
  store i32 %.025.i.i, ptr %3, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco18AttributeTransformD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco28AttributeOctahedronTransformD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco28AttributeOctahedronTransform4TypeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 2
}

declare void @_ZN5draco18AttributeTransform24InitTransformedAttributeERKNS_14PointAttributeEi() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco28AttributeOctahedronTransform22GetTransformedDataTypeERKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco28AttributeOctahedronTransform27GetTransformedNumComponentsERKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN5draco10DataBuffer6ResizeEl(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !125  ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.i, %i.k                       ; 18 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !126

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !60
  store i8 %i.s, ptr %i.g, align 1, !tbaa !60
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !125
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !126

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !60
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !60
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = icmp sgt i64 %i.c, 0
  br i1 %i.ac, label %iter.check166, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check166:                                    ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %min.iters.check149 = icmp ult i64 %i.c, 4
  %i.ad = sub i64 %i.b, %i.k
  %diff.check148 = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check149, %diff.check148
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %iter.check166
  %min.iters.check151 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check151, label %vec.epilog.ph170, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.ae = and i64 %i.c, 28
  %n.vec153 = and i64 %i.c, 9223372036854775776   ; 5 uses
  %i.af = and i64 %i.c, 31
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec153
  %i.ah = getelementptr i8, ptr %2, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.ph152, %vector.body154
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %1, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %2, i64 %index155 ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep157, align 1, !tbaa !60
  %wide.load159 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !60
  %i.aj = getelementptr i8, ptr %next.gep156, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep156, align 1, !tbaa !60
  store <16 x i8> %wide.load159, ptr %i.aj, align 1, !tbaa !60
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.ak = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.ak, label %middle.block161, label %vector.body154, !llvm.loop !115

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.c, %n.vec153
  br i1 %cmp.n162, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block161
  %min.epilog.iters.check169 = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph170, !prof !127

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check168
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec171 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.al = and i64 %i.c, 3
  %i.am = getelementptr i8, ptr %1, i64 %n.vec171
  %i.an = getelementptr i8, ptr %2, i64 %n.vec171
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph170
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph170 ], [ %index.next177, %vec.epilog.vector.body172 ] ; 3 uses
  %next.gep174 = getelementptr i8, ptr %1, i64 %index173
  %next.gep175 = getelementptr i8, ptr %2, i64 %index173
  %wide.load176 = load <4 x i8>, ptr %next.gep175, align 1, !tbaa !60
  store <4 x i8> %wide.load176, ptr %next.gep174, align 1, !tbaa !60
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ao, label %vec.epilog.middle.block178, label %vec.epilog.vector.body172, !llvm.loop !116
end_hunk_0
