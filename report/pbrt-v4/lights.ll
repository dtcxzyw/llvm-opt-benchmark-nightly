Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8455
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN4pbrt10PointLight6CreateERKNS_9TransformENS_6MediumERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load ptr, ptr %11, align 8, !tbaa !29    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.k
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.b
  %i.q = load i64, ptr %i.k, align 8, !tbaa !28
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.s = load i64, ptr %8, align 8, !tbaa !67
  store i64 %i.s, ptr %12, align 8, !tbaa !67
  %i.t = call noundef float @_ZN4pbrt21SpectrumToPhotometricENS_8SpectrumE(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.u, ptr %13, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.u, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, i64 5, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 5, ptr %i.v, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 21
  store i8 0, ptr %i.w, align 1, !tbaa !28
  %i.x = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(32) %13, float noundef -1.000000e+00)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.y = load ptr, ptr %13, align 8, !tbaa !29    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.u
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.c
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !28
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ac, ptr %14, align 8, !tbaa !24
  store i32 1836020326, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 4, ptr %i.ad, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i8 0, ptr %i.ae, align 4, !tbaa !28
  %i.af = invoke { <2 x float>, float } @_ZNK4pbrt19ParameterDictionary13GetOnePoint3fERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(32) %14, <2 x float> zeroinitializer, float 0.000000e+00)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.d
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.k
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.e
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !28
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.u
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.f
  %i.at = load i64, ptr %i.u, align 8, !tbaa !28
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.av = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ac
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.g
  %i.ax = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.af, 1
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.af, 0
  %i.az = fcmp ogt float %i.x, 0.000000e+00
  %i.ba = fdiv float %i.n, %i.t                   ; 2 uses
  %i.bb = fdiv nnan float %i.x, f0x41490FDB
  %i.bc = fmul float %i.ba, %i.bb
  %.0 = select i1 %i.az, float %i.bc, float %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @_ZN4pbrt9TranslateENS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %15, <2 x float> %.fca.0.extract, float %.fca.1.extract)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %16, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %15)
  %i.bd = load ptr, ptr %5, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 168, i64 noundef 8), !inline_history !457 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 4 dereferenceable(128) %16, i64 128, i1 false)
  %i.bh = load i64, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.bi = load i64, ptr %8, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 0, ptr %i.bg, align 8, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(128) %7, i64 128, i1 false), !tbaa.struct !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  store i64 %i.bh, ptr %i.bk, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  store i64 %i.bh, ptr %i.bl, align 8, !tbaa !40
  %i.bm = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL9numLightsE) ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !30
  %i.bo = add nsw i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  store i64 %i.bi, ptr %6, align 8, !tbaa !67
  %i.bq = call noundef ptr @_ZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumE(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %6)
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  store float %.0, ptr %i.br, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret ptr %i.bg

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ac
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.h
  %i.bv = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  resume { ptr, i32 } %.pn29.pn.pn.pn
}

declare void @_ZNK4pbrt19ParameterDictionary14GetOneSpectrumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8SpectrumENS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind writable sret(%"class.pbrt::Spectrum") align 8, ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), ptr nofree noundef align 8 dead_on_return dereferenceable(8), i32 noundef, ptr) local_unnamed_addr #1

declare noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #1

declare noundef float @_ZN4pbrt21SpectrumToPhotometricENS_8SpectrumE(ptr nofree noundef align 8 dead_on_return dereferenceable(8)) local_unnamed_addr #1

declare { <2 x float>, float } @_ZNK4pbrt19ParameterDictionary13GetOnePoint3fERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), <2 x float>, float) local_unnamed_addr #1

declare void @_ZN4pbrt9TranslateENS_7Vector3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, <2 x float>, float) local_unnamed_addr #1

declare void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, ptr noundef nonnull align 4 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt12DistantLight3PhiENS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %0, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %2 = load <1 x float>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(32) %1) ; 2 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.d, 0
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load float, ptr %i.g, align 8, !tbaa !105 ; 2 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = shufflevector <1 x float> %2, <1 x float> poison, <4 x i32> zeroinitializer
  %i.k = shufflevector <2 x float> %i.e, <2 x float> %i.f, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.l = fmul <4 x float> %i.j, %i.k
  %i.m = fmul <4 x float> %i.l, splat (float f0x40490FDB)
  %i.n = insertelement <4 x float> poison, float %i.i, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = fmul <4 x float> %i.o, %i.m              ; 2 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.r = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i12 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert.i13 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i12, <2 x float> %i.r, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i13
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt12DistantLight8SampleLeENS_6Point2IfEES2_RNS_18SampledWavelengthsEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.24") align 8 captures(none) initializes((0, 44), (48, 56), (136, 137), (144, 153)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4, float noundef %5) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load <5 x float>, ptr %i.a, align 4, !tbaa !77 ; 3 uses
  %i.d = load <2 x float>, ptr %i.b, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !77
  %i.i = fmul <2 x float> %2, splat (float 2.000000e+00)
  %i.j = fadd <2 x float> %i.i, splat (float -1.000000e+00) ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %i.l = fcmp oeq float %i.k, 0.000000e+00
  %i.m = extractelement <2 x float> %i.j, i64 1   ; 4 uses
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  %or.cond.i = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.j) ; 2 uses
  %shift = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = fcmp ogt <2 x float> %i.o, %shift
  %i.q = extractelement <2 x i1> %i.p, i64 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = fdiv float %i.m, %i.k
  %i.s = fmul float %i.r, f0x3F490FDB
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = fdiv float %i.k, %i.m
  %i.u = fmul float %i.t, f0x3F490FDB
  %i.v = fsub float f0x3FC90FDB, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.024.i = phi float [ %i.s, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %.0.i = phi float [ %i.k, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.w = tail call noundef float @cosf(float noundef %.024.i) #37
  %i.x = tail call noundef float @sinf(float noundef %.024.i) #37
  %i.y = fmul float %.0.i, %i.w
  %i.z = fmul float %.0.i, %i.x
  %.sroa.0.0.vec.insert.i.i29.i = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.0.4.vec.insert.i.i30.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i, float %i.z, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.035.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i, %bb.e ], [ zeroinitializer, %bb.a ] ; 4 uses
  %i.aa = shufflevector <5 x float> %i.c, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ab = fmul <2 x float> %i.aa, zeroinitializer
  %i.ac = shufflevector <2 x float> %i.d, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ad = shufflevector <5 x float> %i.c, <5 x float> %i.ac, <2 x i32> <i32 1, i32 5>
  %i.ae = fmul <2 x float> %i.ad, zeroinitializer
  %i.af = fmul <2 x float> %i.f, zeroinitializer  ; 2 uses
  %shift134 = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.af, %shift134
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ah = fadd float %i.h, %i.ag                  ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !105 ; 3 uses
  %.sroa.049.0.vec.extract = extractelement <2 x float> %.sroa.035.0.i, i64 0
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.an = load float, ptr %i.am, align 4, !tbaa !87
  %i.ao = fadd <2 x float> %i.ab, %i.ae
  %i.ap = shufflevector <5 x float> %i.c, <5 x float> %i.ac, <2 x i32> <i32 2, i32 6>
  %i.aq = fadd <2 x float> %i.ap, %i.ao           ; 3 uses
  %i.ar = fmul <2 x float> %i.aq, %i.aq           ; 2 uses
  %shift136 = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop137 = fadd <2 x float> %i.ar, %shift136
  %i.as = extractelement <2 x float> %foldExtExtBinop137, i64 0
  %i.at = fadd float %i.as, %i.ai
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.at) ; 2 uses
  %i.au = fdiv float %i.ah, %sqrt.i.i             ; 5 uses
  %i.av = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fdiv <2 x float> %i.aq, %i.aw           ; 11 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0
  %shift143 = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop144 = fmul <2 x float> %i.ax, %shift143
  %i.az = extractelement <2 x float> %foldExtExtBinop144, i64 0
  %foldExtExtBinop139 = fmul <2 x float> %i.ax, %i.ax
  %foldExtExtBinop141 = fmul <2 x float> %i.ax, %.sroa.035.0.i
  %i.ba = extractelement <2 x float> %foldExtExtBinop141, i64 1
  %i.bb = fmul float %i.au, 0.000000e+00
  %i.bc = fmul float %i.au, %i.al
  %i.bd = load <2 x float>, ptr %i.aj, align 4, !tbaa !77
  %i.be = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.au) ; 5 uses
  %i.bf = fadd float %i.au, %i.be
  %i.bg = fdiv float -1.000000e+00, %i.bf         ; 2 uses
  %i.bh = fneg float %i.be
  %i.bi = fmul float %i.ay, %i.bh
  %i.bj = fmul float %i.az, %i.bg                 ; 2 uses
  %i.bk = fmul float %i.be, %i.bj
  %i.bl = insertelement <2 x float> %i.ax, float %i.be, i64 0
  %i.bm = shufflevector <2 x float> %foldExtExtBinop139, <2 x float> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bn, %i.bp
  %i.br = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.be, i64 1
  %i.bs = fadd <2 x float> %i.br, %i.bq
  %i.bt = fmul float %i.bi, %.sroa.049.0.vec.extract
  %i.bu = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bj, i64 1
  %i.bw = fmul <2 x float> %i.bv, %.sroa.035.0.i
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = fmul <2 x float> %i.bs, %.sroa.035.0.i
  %i.bz = fadd <2 x float> %i.bx, %i.by
  %i.ca = fsub float %i.bt, %i.ba
  %i.cb = fmul <2 x float> %i.ax, zeroinitializer
  %i.cc = fadd <2 x float> %i.cb, %i.bz
  %i.cd = fadd float %i.bb, %i.ca
  %i.ce = insertelement <2 x float> poison, float %i.al, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = fmul <2 x float> %i.cf, %i.cc
  %i.ch = fmul float %i.al, %i.cd
  %i.ci = fadd <2 x float> %i.bd, %i.cg
  %i.cj = fadd float %i.an, %i.ch
  %i.ck = fmul <2 x float> %i.ax, %i.cf
  %i.cl = fadd <2 x float> %i.ck, %i.ci
  %i.cm = fadd float %i.bc, %i.cj
  %i.cn = fneg <2 x float> %i.ax
  %i.co = fneg float %i.au
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 160
  %6 = load <1 x float>, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !104
  %i.cs = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.ct = extractvalue { <2 x float>, <2 x float> } %i.cs, 0
  %i.cu = extractvalue { <2 x float>, <2 x float> } %i.cs, 1
  %i.cv = shufflevector <1 x float> %6, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fmul <2 x float> %i.cv, %i.ct
  %i.cx = fmul <2 x float> %i.cv, %i.cu
  %i.cy = load float, ptr %i.ak, align 8, !tbaa !105 ; 2 uses
  %i.cz = fmul float %i.cy, %i.cy
  %i.da = fmul float %i.cz, f0x40490FDB
  %i.db = fdiv float 1.000000e+00, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.dc, align 8, !tbaa !100
  store <2 x float> %i.cw, ptr %0, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cx, ptr %.sroa.5109.0..sroa_idx, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.cl, ptr %i.dd, align 8
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cm, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.cn, ptr %.sroa.6.sroa.6.0..sroa_idx, align 4
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.co, ptr %.sroa.6.sroa.7.0..sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %5, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.de, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.df, align 8, !tbaa !102
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float %i.db, ptr %i.dg, align 8
  %.sroa_idx107 = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 1065353216, ptr %.sroa_idx107, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4pbrt12DistantLight6PDF_LeERKNS_3RayEPfS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load float, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.c = fmul float %i.b, f0x40490FDB
  %i.d = fmul float %i.b, %i.c
  %i.e = fdiv float 1.000000e+00, %i.d
  store float %i.e, ptr %2, align 4, !tbaa !77
  store float 0.000000e+00, ptr %3, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt12DistantLight8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(180) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !24, !alias.scope !464
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !27, !alias.scope !464
  store i8 0, ptr %i.c, align 8, !tbaa !28, !alias.scope !464
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_9LightTypeEJRKNS_15MediumInterfaceERKNS_9TransformEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(128) %i.b)
          to label %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !29, !alias.scope !464 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !28, !alias.scope !464
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit:  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !24, !alias.scope !465
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !27, !alias.scope !465
  store i8 0, ptr %i.l, align 8, !tbaa !28, !alias.scope !465
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKPKNS_22DenselySampledSpectrumERKfEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !465 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.l, align 8, !tbaa !28, !alias.scope !465
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #35
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit: ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit
  %i.u = load i64, ptr %i.c, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.w = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.c
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.y = load i64, ptr %i.c, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt12DistantLight6CreateERKNS_9TransformERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr %4) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %6 = alloca %"class.pstd::optional.56", align 4 ; 5 uses
  %7 = alloca %"class.pbrt::SquareMatrix.10", align 4 ; 14 uses
  %8 = alloca %"class.pbrt::Spectrum", align 8    ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.pbrt::Transform", align 4  ; 7 uses
  %15 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %16 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.a, ptr %9, align 8, !tbaa !24
  store i8 76, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = or i64 %i.e, 288230376151711744
  store i64 %i.f, ptr %10, align 8, !tbaa !67
  invoke void @_ZNK4pbrt19ParameterDictionary14GetOneSpectrumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8SpectrumENS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Spectrum") align 8 %8, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10, i32 noundef 0, ptr %4)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %9, align 8, !tbaa !29     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.k, ptr %11, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.k, ptr noundef nonnull align 1 dereferenceable(5) @.str.17, i64 5, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 5, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 21
  store i8 0, ptr %i.m, align 1, !tbaa !28
  %i.n = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, float noundef 1.000000e+00)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load ptr, ptr %11, align 8, !tbaa !29    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.k
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.b
  %i.q = load i64, ptr %i.k, align 8, !tbaa !28
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
end_hunk_0
begin_hunk_1_@_ZN4pbrt8LogFatalIJRA2_KcRA18_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !28, !alias.scope !513
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA2_KcRA18_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !29
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA2_KcRA18_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA2_KcRA18_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !29    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA21_KcS3_S3_RiS3_S4_EEEvNS_8LogLevelEPS1_iS6_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(21) %4, ptr noundef nonnull align 1 dereferenceable(21) %5, ptr noundef nonnull align 1 dereferenceable(21) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(21) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !24, !alias.scope !516
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !27, !alias.scope !516
  store i8 0, ptr %i.a, align 8, !tbaa !28, !alias.scope !516
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA21_KcJS4_S4_RiS4_S5_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(21) %4, ptr noundef nonnull align 1 dereferenceable(21) %5, ptr noundef nonnull align 1 dereferenceable(21) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(21) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA21_KcS3_S3_RiS3_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !29, !alias.scope !516 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !28, !alias.scope !516
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA21_KcS3_S3_RiS3_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !29
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcS3_S3_RiS3_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcS3_S3_RiS3_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !29    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16GoniometricLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.47") align 8 captures(none) initializes((0, 92), (96, 113)) %0, ptr noundef nonnull align 8 dereferenceable(448) %1, ptr nofree noundef readonly byval(%"class.pbrt::LightSampleContext") align 8 captures(none) %2, <2 x float> %3, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8 %4, i1 noundef zeroext %5) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load float, ptr %i.b, align 4, !tbaa !77
  %i.d = fmul float %i.c, 0.000000e+00
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load <2 x float>, ptr %i.e, align 8, !tbaa !77
  %i.g = fmul <2 x float> %i.f, zeroinitializer   ; 2 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = fadd float %i.d, %i.h
  %i.j = extractelement <2 x float> %i.g, i64 1
  %i.k = fadd float %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load float, ptr %i.l, align 8, !tbaa !77
  %i.n = fadd float %i.m, %i.k                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = load float, ptr %i.o, align 4, !tbaa !77
  %i.q = fmul float %i.p, 0.000000e+00
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load <2 x float>, ptr %i.r, align 8, !tbaa !77
  %i.t = fmul <2 x float> %i.s, zeroinitializer   ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fadd float %i.q, %i.u
  %i.w = extractelement <2 x float> %i.t, i64 1
  %i.x = fadd float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load float, ptr %i.y, align 8, !tbaa !77
  %i.aa = fadd float %i.z, %i.x                   ; 3 uses
  %i.ab = fcmp oeq float %i.aa, 1.000000e+00      ; 2 uses
  %i.ac = fdiv float %i.n, %i.aa
  %.sink.i = select i1 %i.ab, float %i.n, float %i.ac ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0.copyload.i = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.sroa.4.0.copyload.i = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.ad = fadd float %.sroa.0.sroa.3.0.copyload.i, %.sroa.0.sroa.4.0.copyload.i
  %i.ae = fmul float %i.ad, 5.000000e-01
  %i.af = fsub float %.sink.i, %i.ae              ; 3 uses
  %i.ag = fmul float %i.af, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = tail call <12 x float> @llvm.masked.load.v12f32.p0(ptr nonnull align 4 %i.a, <12 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, <12 x float> poison), !tbaa !77 ; 4 uses
  %i.ak = shufflevector <12 x float> %i.aj, <12 x float> poison, <2 x i32> <i32 0, i32 8>
  %i.al = fmul <2 x float> %i.ak, zeroinitializer
  %i.am = shufflevector <12 x float> %i.aj, <12 x float> poison, <2 x i32> <i32 1, i32 9>
  %i.an = fmul <2 x float> %i.am, zeroinitializer
  %i.ao = fadd <2 x float> %i.al, %i.an
  %i.ap = shufflevector <12 x float> %i.aj, <12 x float> poison, <2 x i32> <i32 2, i32 10>
  %i.aq = fmul <2 x float> %i.ap, zeroinitializer
  %i.ar = fadd <2 x float> %i.ao, %i.aq
  %i.as = shufflevector <12 x float> %i.aj, <12 x float> poison, <2 x i32> <i32 3, i32 11>
  %i.at = fadd <2 x float> %i.as, %i.ar           ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x float> %i.at, %i.av
  %i.ax = insertelement <2 x i1> poison, i1 %i.ab, i64 0
  %i.ay = shufflevector <2 x i1> %i.ax, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.az = select <2 x i1> %i.ay, <2 x float> %i.at, <2 x float> %i.aw ; 3 uses
  %i.ba = load <6 x float>, ptr %2, align 8       ; 2 uses
  %i.bb = shufflevector <6 x float> %i.ba, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bc = shufflevector <6 x float> %i.ba, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bd = fadd <2 x float> %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fsub <2 x float> %i.az, %i.be           ; 3 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf           ; 2 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0
  %i.bi = fadd float %i.bh, %i.ag
  %i.bj = extractelement <2 x float> %i.bg, i64 1
  %i.bk = fadd float %i.bi, %i.bj                 ; 2 uses
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bk) ; 2 uses
  %i.bl = fdiv float %i.af, %sqrt.i.i             ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x float> %i.bf, %i.bn           ; 5 uses
  %.sroa.0.4.vec.insert.i.i65 = insertelement <2 x float> %i.bo, float %i.bl, i64 1
  %i.bp = fneg float %i.bl                        ; 2 uses
  %i.bq = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.ah, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !77 ; 3 uses
  %i.br = load <2 x float>, ptr %i.ai, align 8, !tbaa !77
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bt = shufflevector <5 x float> %i.bq, <5 x float> %i.bs, <2 x i32> <i32 1, i32 5>
  %i.bu = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bt, %i.bv
  %i.bx = shufflevector <5 x float> %i.bq, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.by = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bx, %i.by
  %i.ca = fsub <2 x float> %i.bw, %i.bz
  %i.cb = shufflevector <5 x float> %i.bq, <5 x float> %i.bs, <2 x i32> <i32 2, i32 6>
  %i.cc = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  %i.ce = fsub <2 x float> %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !77
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !77
  %i.cj = fmul float %i.ci, %i.bp
  %i.ck = extractelement <2 x float> %i.bo, i64 0
  %i.cl = fmul float %i.ck, %i.cg
  %i.cm = fsub float %i.cj, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.co = load float, ptr %i.cn, align 4, !tbaa !77
  %i.cp = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.cq = fmul float %i.cp, %i.co
  %i.cr = fsub float %i.cm, %i.cq
  %i.cs = tail call <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %i.ce, float %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 160
  %6 = load <1 x float>, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !202
  %i.cw = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.cv, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.cx = extractvalue { <2 x float>, <2 x float> } %i.cw, 0
  %i.cy = extractvalue { <2 x float>, <2 x float> } %i.cw, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !78
  %i.dc = sitofp <2 x i32> %i.db to <2 x float>
  %i.dd = fmul <2 x float> %i.cs, %i.dc
  %i.de = fptosi <2 x float> %i.dd to <2 x i32>
  %.sroa.0.0.insert.insert.i.i = bitcast <2 x i32> %i.de to i64
  %i.df = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.cz, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 0, i64 4294967297)
  %i.dg = shufflevector <1 x float> %6, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = fmul <2 x float> %i.dg, %i.cx
  %i.di = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = fmul <2 x float> %i.dj, %i.dh
  %i.dl = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = fdiv <2 x float> %i.dk, %i.dm
  %i.do = fmul <2 x float> %i.dg, %i.cy
  %i.dp = fmul <2 x float> %i.dj, %i.do
  %i.dq = fdiv <2 x float> %i.dp, %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x float> poison, float %.sink.i, i64 0
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.4.vec.insert.i.i100 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.11.32..sroa_idx, i8 0, i64 36, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.dt, align 8, !tbaa !177
  store <2 x float> %i.dn, ptr %0, align 8
  %.sroa.0102.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.dq, ptr %.sroa.0102.sroa.4.0..sroa_idx, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i65, ptr %.sroa.4103.0..sroa_idx, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %.sroa.5104.0..sroa_idx, align 8
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %.sroa.6105.0..sroa_idx, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %i.du, align 8
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.9.32..sroa_idx, align 8
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i100, ptr %.sroa.10.32..sroa_idx, align 8
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.dr, ptr %.sroa.13.32..sroa_idx, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.dv, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZNK4pbrt16GoniometricLight6PDF_LiENS_18LightSampleContextENS_7Vector3IfEEb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readnone byval(%"class.pbrt::LightSampleContext") align 8 captures(none) %1, <2 x float> %2, float %3, i1 noundef zeroext %4) local_unnamed_addr #17 align 2 {
bb.a:
  ret float 0.000000e+00
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt16GoniometricLight3PhiENS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 3 uses
  %.sroa.0.0.copyload.i90 = load i64, ptr %i.c, align 4 ; 3 uses
  %.sroa.37.0.extract.shift91 = lshr i64 %.sroa.0.0.copyload.i90, 32
  %.sroa.37.0.extract.trunc92 = trunc nuw i64 %.sroa.37.0.extract.shift91 to i32
  %i.d = icmp sgt i32 %.sroa.37.0.extract.trunc92, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge95

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = trunc i64 %.sroa.0.0.copyload.i90 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.0.copyload.i101 = phi i64 [ %.sroa.0.0.copyload.i90, %.preheader.lr.ph ], [ %.sroa.0.0.copyload.i, %._crit_edge ] ; 4 uses
  %i.k = phi i32 [ %i.e, %.preheader.lr.ph ], [ %.pre-phi, %._crit_edge ]
  %.094 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.01493 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ] ; 4 uses
  %.sroa.02.0.extract.trunc86 = trunc i64 %.sroa.0.0.copyload.i101 to i32 ; 2 uses
  %i.l = icmp sgt i32 %.sroa.02.0.extract.trunc86, 0
  br i1 %i.l, label %.preheader.preheader.i, label %._crit_edge

._crit_edge95:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %2 = load <1 x float>, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !202
  %i.p = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 4 dereferenceable(32) %1) ; 2 uses
  %i.q = extractvalue { <2 x float>, <2 x float> } %i.p, 0
  %i.r = extractvalue { <2 x float>, <2 x float> } %i.p, 1
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.01.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i43 to i32
  %.sroa.3.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i43, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.s = mul nsw i32 %.sroa.3.0.extract.trunc, %.sroa.01.0.extract.trunc
  %i.t = sitofp i32 %i.s to float
  %i.u = shufflevector <1 x float> %2, <1 x float> poison, <4 x i32> zeroinitializer
  %i.v = shufflevector <2 x float> %i.q, <2 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.w = fmul <4 x float> %i.u, %i.v
  %i.x = fmul <4 x float> %i.w, splat (float 4.000000e+00)
  %i.y = fmul <4 x float> %i.x, splat (float f0x40490FDB)
  %i.z = insertelement <4 x float> poison, float %.0.lcssa, i64 0
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = fmul <4 x float> %i.aa, %i.y
  %i.ac = insertelement <4 x float> poison, float %i.t, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = fdiv <4 x float> %i.ab, %i.ad           ; 2 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ag = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i49 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.af, 0
  %.fca.1.insert.i50 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i49, <2 x float> %i.ag, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i50

._crit_edge.loopexit:                             ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  %.pre = trunc i64 %.sroa.0.0.copyload.i104 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %.sroa.02.0.extract.trunc86, %.preheader ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i104, %._crit_edge.loopexit ], [ %.sroa.0.0.copyload.i101, %.preheader ] ; 2 uses
  %.1.lcssa = phi float [ %i.cl, %._crit_edge.loopexit ], [ %.094, %.preheader ] ; 2 uses
  %i.ah = add nuw nsw i32 %.01493, 1              ; 2 uses
  %.sroa.37.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc = trunc nuw i64 %.sroa.37.0.extract.shift to i32
  %i.ai = icmp slt i32 %i.ah, %.sroa.37.0.extract.trunc
  br i1 %i.ai, label %.preheader, label %._crit_edge95, !llvm.loop !517

.preheader.preheader.i:                           ; preds = %.preheader, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  %.sroa.0.0.copyload.i103 = phi i64 [ %.sroa.0.0.copyload.i104, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ %.sroa.0.0.copyload.i101, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i5199 = phi i64 [ %.sroa.0.0.copyload.i51, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ %.sroa.0.0.copyload.i101, %.preheader ] ; 3 uses
  %i.aj = phi i32 [ %.sroa.02.0.extract.trunc, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ %i.k, %.preheader ] ; 3 uses
  %.188 = phi float [ %i.cl, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ %.094, %.preheader ]
  %.01587 = phi i32 [ %i.cm, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ 0, %.preheader ] ; 4 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i5199, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 2 uses
  %i.ak = icmp slt i32 %.01493, %.sroa.9.0.extract.trunc.i
  %i.al = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %.01493, i32 %i.al)
  %.sroa.14.2 = select i1 %i.ak, i32 %.01493, i32 %..i.1.i ; 3 uses
  %i.am = load i32, ptr %i.b, align 8, !tbaa !188
  switch i32 %i.am, label %bb.j [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.i
  ]

bb.b:                                             ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.an = load i64, ptr %i.f, align 8, !tbaa !173
  %i.ao = trunc i64 %i.an to i32
  %i.ap = mul nsw i32 %i.aj, %.sroa.14.2
  %i.aq = add nsw i32 %i.ap, %.01587
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %i.as = sext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as  ; 3 uses
  %i.av = load i64, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.aw = and i64 %i.av, 144115188075855871
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = lshr i64 %i.av, 57
  %i.az = trunc nuw nsw i64 %i.ay to i32
  switch i32 %i.az, label %bb.d [
    i32 1, label %.lr.ph.i.i.i.i.i.i
    i32 2, label %bb.c
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !28
  %i.bb = uitofp i8 %i.ba to float
  %i.bc = fdiv float %i.bb, 2.550000e+02
  store float %i.bc, ptr %i.a, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ax, ptr %i.au, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.ax, ptr %i.au, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.bd = load float, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.sroa.0.0.copyload.i51.pre = load i64, ptr %i.c, align 4 ; 2 uses
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.e:                                             ; preds = %.preheader.preheader.i
  %i.be = load i64, ptr %i.f, align 8, !tbaa !173
  %i.bf = trunc i64 %i.be to i32
  %i.bg = mul nsw i32 %i.aj, %.sroa.14.2
  %i.bh = add nsw i32 %i.bg, %.01587
  %i.bi = mul nsw i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.bl = getelementptr [2 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !191 ; 2 uses
  %i.bn = zext i16 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 13               ; 4 uses
  %i.bp = and i32 %i.bo, 260046848                ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 260046848
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = or i32 %i.bo, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bs = and i32 %i.bo, 268427264
  %i.bt = add nuw nsw i32 %i.bs, 939524096
  %i.bu = icmp eq i32 %i.bp, 0
  br i1 %i.bu, label %bb.h, label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bv = or i32 %i.bo, 947912704
  %i.bw = bitcast i32 %i.bv to float
  %i.bx = fadd float %i.bw, f0xB8800000
  %i.by = bitcast float %i.bx to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

_ZNK4pbrt4HalfcvfEv.exit.i:                       ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i32 [ %i.br, %bb.f ], [ %i.by, %bb.h ], [ %i.bt, %bb.g ]
  %.signext.i.i = sext i16 %i.bm to i32
  %i.bz = and i32 %.signext.i.i, -2147483648
  %i.ca = or i32 %.sroa.0.0.i.i, %i.bz
  %i.cb = bitcast i32 %i.ca to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.i:                                             ; preds = %.preheader.preheader.i
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !173
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = mul nsw i32 %i.aj, %.sroa.14.2
  %i.cf = add nsw i32 %i.ce, %.01587
  %i.cg = mul nsw i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !77
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.j:                                             ; preds = %.preheader.preheader.i
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.131, i32 noundef 273, ptr noundef nonnull @.str.132) #36
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit: ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i, %_ZNK4pbrt4HalfcvfEv.exit.i, %bb.i
  %.sroa.0.0.copyload.i104 = phi i64 [ %.sroa.0.0.copyload.i51.pre, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %.sroa.0.0.copyload.i103, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %.sroa.0.0.copyload.i103, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload.i51 = phi i64 [ %.sroa.0.0.copyload.i51.pre, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %.sroa.0.0.copyload.i5199, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %.sroa.0.0.copyload.i5199, %bb.i ] ; 2 uses
  %.0.i = phi float [ %i.bd, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %i.cb, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %i.ck, %bb.i ]
  %i.cl = fadd float %.188, %.0.i                 ; 2 uses
  %i.cm = add nuw nsw i32 %.01587, 1              ; 2 uses
  %.sroa.02.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i51 to i32 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %.sroa.02.0.extract.trunc
  br i1 %i.cn, label %.preheader.preheader.i, label %._crit_edge.loopexit, !llvm.loop !518
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16GoniometricLight6BoundsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.21") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 2 uses
  %.sroa.0.0.copyload.i76 = load i64, ptr %i.c, align 4 ; 4 uses
  %.sroa.322.0.extract.shift77 = lshr i64 %.sroa.0.0.copyload.i76, 32
  %.sroa.322.0.extract.trunc78 = trunc nuw i64 %.sroa.322.0.extract.shift77 to i32 ; 2 uses
  %i.d = icmp sgt i32 %.sroa.322.0.extract.trunc78, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge81

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = trunc i64 %.sroa.0.0.copyload.i76 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.0.copyload.i90 = phi i64 [ %.sroa.0.0.copyload.i76, %.preheader.lr.ph ], [ %.sroa.0.0.copyload.i, %._crit_edge ] ; 4 uses
  %i.k = phi i32 [ %i.e, %.preheader.lr.ph ], [ %.pre-phi, %._crit_edge ]
  %.080 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.02979 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dk, %._crit_edge ] ; 4 uses
  %.sroa.017.0.extract.trunc72 = trunc i64 %.sroa.0.0.copyload.i90 to i32 ; 2 uses
  %i.l = icmp sgt i32 %.sroa.017.0.extract.trunc72, 0
  br i1 %i.l, label %.preheader.preheader.i, label %._crit_edge

._crit_edge81:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  %.sroa.0.0.copyload.i.lcssa = phi i64 [ %.sroa.0.0.copyload.i76, %bb.a ], [ %.sroa.0.0.copyload.i, %._crit_edge ]
  %.sroa.322.0.extract.trunc.lcssa = phi i32 [ %.sroa.322.0.extract.trunc78, %bb.a ], [ %.sroa.322.0.extract.trunc, %._crit_edge ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.n = load float, ptr %i.m, align 8, !tbaa !203
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !202  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4pbrt16GoniometricLight6BoundsEv:bb.a
    i32 2, label %bb.c
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.ed = load i8, ptr %i.dx, align 1, !tbaa !28
  %i.ee = uitofp i8 %i.ed to float
  %i.ef = fdiv float %i.ee, 2.550000e+02
  store float %i.ef, ptr %i.a, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr %i.dx, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.ea, ptr %i.dx, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.eg = load float, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.sroa.0.0.copyload.i34.pre = load i64, ptr %i.c, align 4 ; 2 uses
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.e:                                             ; preds = %.preheader.preheader.i
  %i.eh = load i64, ptr %i.f, align 8, !tbaa !173
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = mul nsw i32 %i.dm, %.sroa.14.2
  %i.ek = add nsw i32 %i.ej, %.03073
  %i.el = mul nsw i32 %i.ek, %i.ei
  %i.em = sext i32 %i.el to i64
  %i.en = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.eo = getelementptr [2 x i8], ptr %i.en, i64 %i.em
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !191 ; 2 uses
  %i.eq = zext i16 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 13               ; 4 uses
  %i.es = and i32 %i.er, 260046848                ; 2 uses
  %i.et = icmp eq i32 %i.es, 260046848
  br i1 %i.et, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.eu = or i32 %i.er, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ev = and i32 %i.er, 268427264
  %i.ew = add nuw nsw i32 %i.ev, 939524096
  %i.ex = icmp eq i32 %i.es, 0
  br i1 %i.ex, label %bb.h, label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ey = or i32 %i.er, 947912704
  %i.ez = bitcast i32 %i.ey to float
  %i.fa = fadd float %i.ez, f0xB8800000
  %i.fb = bitcast float %i.fa to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

_ZNK4pbrt4HalfcvfEv.exit.i:                       ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i32 [ %i.eu, %bb.f ], [ %i.fb, %bb.h ], [ %i.ew, %bb.g ]
  %.signext.i.i = sext i16 %i.ep to i32
  %i.fc = and i32 %.signext.i.i, -2147483648
  %i.fd = or i32 %.sroa.0.0.i.i, %i.fc
  %i.fe = bitcast i32 %i.fd to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.i:                                             ; preds = %.preheader.preheader.i
  %i.ff = load i64, ptr %i.f, align 8, !tbaa !173
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = mul nsw i32 %i.dm, %.sroa.14.2
  %i.fi = add nsw i32 %i.fh, %.03073
  %i.fj = mul nsw i32 %i.fi, %i.fg
  %i.fk = sext i32 %i.fj to i64
  %i.fl = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.fm = getelementptr [4 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !77
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.j:                                             ; preds = %.preheader.preheader.i
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.131, i32 noundef 273, ptr noundef nonnull @.str.132) #36
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit: ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i, %_ZNK4pbrt4HalfcvfEv.exit.i, %bb.i
  %.sroa.0.0.copyload.i93 = phi i64 [ %.sroa.0.0.copyload.i34.pre, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %.sroa.0.0.copyload.i92, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %.sroa.0.0.copyload.i92, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload.i34 = phi i64 [ %.sroa.0.0.copyload.i34.pre, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %.sroa.0.0.copyload.i3488, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %.sroa.0.0.copyload.i3488, %bb.i ] ; 2 uses
  %.0.i = phi float [ %i.eg, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %i.fe, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %i.fn, %bb.i ]
  %i.fo = fadd float %.174, %.0.i                 ; 2 uses
  %i.fp = add nuw nsw i32 %.03073, 1              ; 2 uses
  %.sroa.017.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i34 to i32 ; 2 uses
  %i.fq = icmp slt i32 %i.fp, %.sroa.017.0.extract.trunc
  br i1 %i.fq, label %.preheader.preheader.i, label %._crit_edge.loopexit, !llvm.loop !521
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16GoniometricLight8SampleLeENS_6Point2IfEES2_RNS_18SampledWavelengthsEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.24") align 8 captures(none) initializes((0, 44), (48, 56), (136, 137), (144, 153)) %0, ptr noundef nonnull align 8 dereferenceable(448) %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4, float noundef %5) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %7 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.c = call <2 x float> @_ZNK4pbrt19PiecewiseConstant2D6SampleENS_6Point2IfEEPfPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(128) %i.b, <2 x float> %2, ptr noundef nonnull %i.a, ptr noundef null)
  %i.d = call { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float> %i.c) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.d, 0 ; 4 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.d, 1 ; 3 uses
  %i.e = load float, ptr %i.a, align 4, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37, !noalias !524
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37, !noalias !524
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !77, !noalias !524
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> zeroinitializer, ptr %i.i, align 8, !tbaa !77, !noalias !524
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> zeroinitializer, ptr %i.j, align 8, !tbaa !77, !noalias !524
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %6, ptr noundef nonnull align 4 dereferenceable(128) %i.f, ptr noundef nonnull align 4 dereferenceable(24) %7), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37, !noalias !524
  %i.k = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.f, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !77, !noalias !524 ; 3 uses
  %i.n = shufflevector <5 x float> %i.m, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <5 x float> %i.m, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.p = fmul <2 x float> %i.k, %i.o
  %i.q = load <2 x float>, ptr %i.l, align 8, !tbaa !77, !noalias !524 ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.s = shufflevector <4 x float> %i.n, <4 x float> %i.r, <2 x i32> <i32 0, i32 4>
  %i.t = fmul <2 x float> %.fca.0.extract, %i.s
  %i.u = fadd <2 x float> %i.p, %i.t
  %i.v = insertelement <2 x float> poison, float %.fca.1.extract, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x float> %i.q, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.y = shufflevector <5 x float> %i.m, <5 x float> %i.x, <2 x i32> <i32 2, i32 6>
  %i.z = fmul <2 x float> %i.w, %i.y
  %i.aa = fadd <2 x float> %i.u, %i.z             ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ac = load <2 x float>, ptr %i.ab, align 4, !tbaa !77, !noalias !524
  %i.ad = fmul <2 x float> %.fca.0.extract, %i.ac ; 2 uses
  %shift = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ad, %shift
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = load float, ptr %i.af, align 4, !tbaa !77, !noalias !524
  %i.ah = fmul float %.fca.1.extract, %i.ag
  %i.ai = fadd float %i.ae, %i.ah                 ; 5 uses
  %i.aj = fmul <2 x float> %i.aa, %i.aa           ; 2 uses
  %shift55 = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop56 = fadd <2 x float> %i.aj, %shift55
  %i.ak = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.al = fmul float %i.ai, %i.ai
  %i.am = fadd float %i.ak, %i.al                 ; 2 uses
  %i.an = fcmp ogt float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ao = extractelement <2 x float> %i.aa, i64 1
  %i.ap = call noundef float @llvm.fabs.f32(float %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.as = load float, ptr %i.ar, align 4, !tbaa !193, !noalias !524
  %i.at = load float, ptr %i.aq, align 8, !tbaa !194, !noalias !524
  %i.au = fsub float %i.as, %i.at
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = fmul float %i.ap, %i.av
  %i.ax = insertelement <2 x float> %i.aa, float %i.ai, i64 1
  %i.ay = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ax)
  %i.az = load <6 x float>, ptr %6, align 16, !tbaa !77, !noalias !524 ; 2 uses
  %i.ba = shufflevector <6 x float> %i.az, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bb = shufflevector <6 x float> %i.az, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bc = fsub <2 x float> %i.ba, %i.bb
  %i.bd = fmul <2 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fmul <2 x float> %i.ay, %i.bd           ; 2 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %i.bg = fadd float %i.bf, %i.aw
  %i.bh = extractelement <2 x float> %i.be, i64 1
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = fdiv float %i.bi, %i.am                 ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.aa, %i.bl
  %i.bn = fmul float %i.ai, %i.bj
  %i.bo = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %6, <2 x float> %i.bm, float %i.bn), !noalias !524 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bp = fdiv float %i.e, f0x41490FDB
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !524
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !524
  %i.bq = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !524
  %i.br = load <4 x float>, ptr %6, align 16, !noalias !524
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bt = fadd <2 x float> %i.bq, %i.bs
  %i.bu = fmul <2 x float> %i.bt, splat (float 5.000000e-01)
  %i.bv = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.bw = fmul float %i.bv, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37, !noalias !524
  %i.bx = call <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %.fca.0.extract, float %.fca.1.extract)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 160
  %8 = load <1 x float>, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !202
  %i.cb = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.cc = extractvalue { <2 x float>, <2 x float> } %i.cb, 0
  %i.cd = extractvalue { <2 x float>, <2 x float> } %i.cb, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.cg = load <2 x i32>, ptr %i.cf, align 4, !tbaa !78
  %i.ch = sitofp <2 x i32> %i.cg to <2 x float>
  %i.ci = fmul <2 x float> %i.bx, %i.ch           ; 2 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0
  %i.ck = fptosi float %i.cj to i32
  %i.cl = extractelement <2 x float> %i.ci, i64 1
  %i.cm = fptosi float %i.cl to i32
  %.sroa.4.0.insert.ext.i.i = zext i32 %i.cm to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ck to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.cn = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.ce, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 0, i64 4294967297)
  %i.co = shufflevector <1 x float> %8, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = fmul <2 x float> %i.co, %i.cc
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = fmul <2 x float> %i.co, %i.cd
  %i.cu = fmul <2 x float> %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.cv, align 8, !tbaa !100
  store <2 x float> %i.cs, ptr %0, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cu, ptr %.sroa.527.0..sroa_idx, align 8, !tbaa !28
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.bu, ptr %i.cw, align 8
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bw, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.aa, ptr %.sroa.6.sroa.6.0..sroa_idx, align 4
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ai, ptr %.sroa.6.sroa.7.0..sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %5, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.h, ptr %i.cx, align 8, !tbaa !40
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.cy, align 8, !tbaa !102
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1065353216, ptr %i.cz, align 8
  %.sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.bp, ptr %.sroa_idx25, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

declare { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16GoniometricLight6PDF_LeERKNS_3RayEPfS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #10 align 2 {
bb.a:
  store float 0.000000e+00, ptr %2, align 4, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 3 uses
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.216.0.copyload = load float, ptr %.sroa.216.0..sroa_idx, align 4 ; 2 uses
  %i.b = shufflevector <2 x float> %.sroa.015.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !77
  %i.g = fmul <2 x float> %.sroa.015.0.copyload, %i.f ; 2 uses
  %shift = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.g, %shift
  %i.h = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.j = load float, ptr %i.i, align 4, !tbaa !77
  %i.k = fmul float %.sroa.216.0.copyload, %i.j
  %i.l = fadd float %i.h, %i.k                    ; 3 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = load <5 x float>, ptr %i.c, align 4, !tbaa !77 ; 3 uses
  %i.o = shufflevector <5 x float> %i.n, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <5 x float> %i.n, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.q = fmul <2 x float> %i.b, %i.p
  %i.r = load <2 x float>, ptr %i.d, align 8, !tbaa !77 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.t = shufflevector <4 x float> %i.o, <4 x float> %i.s, <2 x i32> <i32 0, i32 4>
  %i.u = fmul <2 x float> %.sroa.015.0.copyload, %i.t
  %i.v = fadd <2 x float> %i.q, %i.u
  %i.w = insertelement <2 x float> poison, float %.sroa.216.0.copyload, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = shufflevector <2 x float> %i.r, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <5 x float> %i.n, <5 x float> %i.y, <2 x i32> <i32 2, i32 6>
  %i.aa = fmul <2 x float> %i.x, %i.z
  %i.ab = fadd <2 x float> %i.v, %i.aa            ; 3 uses
  %i.ac = fmul <2 x float> %i.ab, %i.ab           ; 2 uses
  %shift24 = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop25 = fadd <2 x float> %i.ac, %shift24
  %i.ad = extractelement <2 x float> %foldExtExtBinop25, i64 0
  %i.ae = fadd float %i.ad, %i.m
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ae) ; 2 uses
  %i.af = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fdiv <2 x float> %i.ab, %i.ag
  %i.ai = fdiv float %i.l, %sqrt.i.i
  %i.aj = tail call <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %i.ah, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.ak, align 8 ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 1 ; 2 uses
  %i.al = fsub <2 x float> %i.aj, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.an = load float, ptr %i.am, align 8, !tbaa !179 ; 2 uses
  %i.ao = fcmp ogt float %i.an, %.sroa.0.0.vec.extract.i.i.i
  %i.ap = fsub float %i.an, %.sroa.0.0.vec.extract.i.i.i
  %i.aq = extractelement <2 x float> %i.al, i64 0
  %i.ar = fdiv float %i.aq, %i.ap
  %.sroa.01.0.vec.insert.i.i = insertelement <2 x float> %i.al, float %i.ar, i64 0
  %.sroa.01.0.i.i = select i1 %i.ao, <2 x float> %.sroa.01.0.vec.insert.i.i, <2 x float> %i.al ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.at = load float, ptr %i.as, align 4, !tbaa !180 ; 2 uses
  %i.au = fcmp ogt float %i.at, %.sroa.0.4.vec.extract.i.i.i
  %i.av = fsub float %i.at, %.sroa.0.4.vec.extract.i.i.i
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.i.i, i64 1
  %i.aw = fdiv float %.sroa.01.4.vec.extract.i.i, %i.av
  %.sroa.01.4.vec.insert.i.i = insertelement <2 x float> %.sroa.01.0.i.i, float %i.aw, i64 1
  %.sroa.01.1.i.i = select i1 %i.au, <2 x float> %.sroa.01.4.vec.insert.i.i, <2 x float> %.sroa.01.0.i.i ; 2 uses
  %.sroa.0.0.vec.extract.i4.i = extractelement <2 x float> %.sroa.01.1.i.i, i64 0
  %.sroa.0.4.vec.extract.i5.i = extractelement <2 x float> %.sroa.01.1.i.i, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !166 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !72 ; 2 uses
  %i.bb = uitofp i64 %i.ba to float
  %i.bc = fmul float %.sroa.0.0.vec.extract.i4.i, %i.bb
  %i.bd = fptosi float %i.bc to i32               ; 2 uses
  %i.be = add i64 %i.ba, -1
  %i.bf = icmp slt i32 %i.bd, 0
  %i.bg = sext i32 %i.bd to i64
  %spec.select11.i.i = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !72 ; 2 uses
  %i.bj = uitofp i64 %i.bi to float
  %i.bk = fmul float %.sroa.0.4.vec.extract.i5.i, %i.bj
  %i.bl = fptosi float %i.bk to i32               ; 2 uses
  %i.bm = add i64 %i.bi, -1
  %i.bn = icmp slt i32 %i.bl, 0
  %i.bo = sext i32 %i.bl to i64
  %spec.select11.i6.i = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bo)
  %i.bp = shl i64 %spec.select11.i6.i, 32
  %i.bq = ashr exact i64 %i.bp, 32
  %i.br = select i1 %i.bn, i64 0, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [80 x i8], ptr %i.ay, i64 %i.br
  %i.bt = shl i64 %spec.select11.i.i, 32
  %i.bu = ashr exact i64 %i.bt, 32
  %i.bv = select i1 %i.bf, i64 0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !71
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !77
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !140
  %i.cc = fdiv float %i.bz, %i.cb
  %i.cd = fdiv float %i.cc, f0x41490FDB
  store float %i.cd, ptr %3, align 4, !tbaa !77
  ret void
}

declare <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float>, float) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16GoniometricLight8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(448) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !24, !alias.scope !531
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !27, !alias.scope !531
  store i8 0, ptr %i.c, align 8, !tbaa !28, !alias.scope !531
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_9LightTypeEJRKNS_15MediumInterfaceERKNS_9TransformEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(128) %i.b)
          to label %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !29, !alias.scope !531 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !28, !alias.scope !531
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit:  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !24, !alias.scope !532
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !27, !alias.scope !532
  store i8 0, ptr %i.l, align 8, !tbaa !28, !alias.scope !532
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKPKNS_22DenselySampledSpectrumERKfEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !532 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.l, align 8, !tbaa !28, !alias.scope !532
  %i.r = add i64 %i.q, 1
end_hunk_2
begin_hunk_3_@_ZNK4pbrt16DiffuseAreaLight1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE:bb.a

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i:     ; preds = %bb.m, %bb.l
  %.0.i.i.2.i = phi float [ %i.cs, %bb.m ], [ %i.cq, %bb.l ]
  %i.ct = fmul float %i.ay, %.0.i.i.2.i
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !77 ; 2 uses
  %i.cw = call noundef float @llvm.fma.f32(float %i.cv, float %i.be, float %i.bd)
  %i.cx = call noundef float @llvm.fma.f32(float %i.cv, float %i.cw, float %i.bb) ; 5 uses
  %i.cy = call float @llvm.fabs.f32(float %i.cx)
  %i.cz = fcmp oeq float %i.cy, +inf
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.da = fmul float %i.cx, %i.cx
  %i.db = fadd float %i.da, 1.000000e+00
  %sqrt.i.i.3.i = call float @llvm.sqrt.f32(float %i.db)
  %i.dc = fmul float %sqrt.i.i.3.i, 2.000000e+00
  %i.dd = fdiv float %i.cx, %i.dc
  %i.de = fadd float %i.dd, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

bb.o:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.df = fcmp ogt float %i.cx, 0.000000e+00
  %i.dg = uitofp i1 %i.df to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i:     ; preds = %bb.o, %bb.n
  %.0.i.i.3.i = phi float [ %i.dg, %bb.o ], [ %i.de, %bb.n ]
  %i.dh = fmul float %i.ay, %.0.i.i.3.i
  %i.di = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.hy, ptr noundef nonnull align 4 dereferenceable(32) %8) ; 2 uses
  %i.dj = extractvalue { <2 x float>, <2 x float> } %i.di, 0
  %i.dk = extractvalue { <2 x float>, <2 x float> } %i.di, 1
  %i.dl = insertelement <2 x float> poison, float %i.br, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.cf, i64 1
  %i.dn = fmul <2 x float> %i.dm, %i.dj
  %i.do = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dh, i64 1
  %i.dq = fmul <2 x float> %i.dp, %i.dk
  br label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit

_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i
  %.sroa.06.0.i = phi <2 x float> [ %i.dn, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %.sroa.4.0.i = phi <2 x float> [ %i.dq, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.dr = shufflevector <1 x float> %i.hw, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul <2 x float> %i.dr, %.sroa.06.0.i
  %i.dt = fmul <2 x float> %i.dr, %.sroa.4.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.q

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %bb.f
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 12 uses
  %.sroa.083.4.vec.extract = extractelement <2 x float> %5, i64 1
  %i.dv = fsub float 1.000000e+00, %.sroa.083.4.vec.extract ; 3 uses
  %.sroa.040.0.vec.extract.i = extractelement <2 x float> %5, i64 0
  %i.dw = uitofp nneg i32 %i.as to float
  %i.dx = fmul float %.sroa.040.0.vec.extract.i, %i.dw
  %i.dy = uitofp nneg i32 %i.av to float
  %i.dz = fmul float %i.dv, %i.dy
  %i.ea = fadd float %i.dx, -5.000000e-01         ; 2 uses
  %i.eb = fadd float %i.dz, -5.000000e-01         ; 2 uses
  %i.ec = call noundef float @llvm.floor.f32(float %i.ea)
  %i.ed = fptosi float %i.ec to i32               ; 3 uses
  %i.ee = call noundef float @llvm.floor.f32(float %i.eb)
  %i.ef = fptosi float %i.ee to i32               ; 3 uses
  %.sroa.239.0.insert.ext.i = zext i32 %i.ef to i64
  %.sroa.239.0.insert.shift.i = shl nuw i64 %.sroa.239.0.insert.ext.i, 32 ; 2 uses
  %.sroa.038.0.insert.ext.i = zext i32 %i.ed to i64 ; 2 uses
  %.sroa.038.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.eg = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.038.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %i.eh = add nsw i32 %i.ed, 1
  %.sroa.036.0.insert.ext.i = zext i32 %i.eh to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.ei = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.036.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %i.ej = add nsw i32 %i.ef, 1
  %.sroa.235.0.insert.ext.i = zext i32 %i.ej to i64
  %.sroa.235.0.insert.shift.i = shl nuw i64 %.sroa.235.0.insert.ext.i, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.ek = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.034.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.el = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %i.em = load <2 x i32>, ptr %i.ar, align 4, !tbaa !78
  %i.en = sitofp <2 x i32> %i.em to <2 x float>   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %5, %i.en
  %i.eo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ep = fadd float %i.eo, -5.000000e-01         ; 2 uses
  %i.eq = extractelement <2 x float> %i.en, i64 1
  %i.er = fmul float %i.dv, %i.eq
  %i.es = fadd float %i.er, -5.000000e-01         ; 2 uses
  %i.et = call noundef float @llvm.floor.f32(float %i.ep)
  %i.eu = fptosi float %i.et to i32               ; 3 uses
  %i.ev = call noundef float @llvm.floor.f32(float %i.es)
  %i.ew = fptosi float %i.ev to i32               ; 3 uses
  %.sroa.239.0.insert.ext.i.1 = zext i32 %i.ew to i64
  %.sroa.239.0.insert.shift.i.1 = shl nuw i64 %.sroa.239.0.insert.ext.i.1, 32 ; 2 uses
  %.sroa.038.0.insert.ext.i.1 = zext i32 %i.eu to i64 ; 2 uses
  %.sroa.038.0.insert.insert.i.1 = or disjoint i64 %.sroa.239.0.insert.shift.i.1, %.sroa.038.0.insert.ext.i.1
  %i.ex = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.038.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %i.ey = add nsw i32 %i.eu, 1
  %.sroa.036.0.insert.ext.i.1 = zext i32 %i.ey to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i.1 = or disjoint i64 %.sroa.239.0.insert.shift.i.1, %.sroa.036.0.insert.ext.i.1
  %i.ez = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.036.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %i.fa = add nsw i32 %i.ew, 1
  %.sroa.235.0.insert.ext.i.1 = zext i32 %i.fa to i64
  %.sroa.235.0.insert.shift.i.1 = shl nuw i64 %.sroa.235.0.insert.ext.i.1, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i.1 = or disjoint i64 %.sroa.235.0.insert.shift.i.1, %.sroa.038.0.insert.ext.i.1
  %i.fb = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.034.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.235.0.insert.shift.i.1, %.sroa.036.0.insert.ext.i.1
  %i.fc = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.0.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %i.fd = insertelement <2 x i32> poison, i32 %i.ef, i64 0
  %i.fe = insertelement <2 x i32> %i.fd, i32 %i.ew, i64 1
  %i.ff = sitofp <2 x i32> %i.fe to <2 x float>
  %i.fg = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.es, i64 1
  %i.fi = fsub <2 x float> %i.fh, %i.ff           ; 3 uses
  %i.fj = insertelement <2 x i32> poison, i32 %i.ed, i64 0
  %i.fk = insertelement <2 x i32> %i.fj, i32 %i.eu, i64 1
  %i.fl = sitofp <2 x i32> %i.fk to <2 x float>
  %i.fm = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.ep, i64 1
  %i.fo = fsub <2 x float> %i.fn, %i.fl           ; 3 uses
  %i.fp = fsub <2 x float> splat (float 1.000000e+00), %i.fo ; 2 uses
  %i.fq = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 2 uses
  %i.fr = fmul <2 x float> %i.fp, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.ex, i64 1
  %i.fu = fmul <2 x float> %i.ft, %i.fr
  %i.fv = fmul <2 x float> %i.fo, %i.fq
  %i.fw = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.ez, i64 1
  %i.fy = fmul <2 x float> %i.fx, %i.fv
  %i.fz = fadd <2 x float> %i.fu, %i.fy
  %i.ga = fmul <2 x float> %i.fp, %i.fi
  %i.gb = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.fb, i64 1
  %i.gd = fmul <2 x float> %i.gc, %i.ga
  %i.ge = fadd <2 x float> %i.gd, %i.fz
  %i.gf = fmul <2 x float> %i.fo, %i.fi
  %i.gg = insertelement <2 x float> poison, float %i.el, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.fc, i64 1
  %i.gi = fmul <2 x float> %i.gh, %i.gf
  %i.gj = fadd <2 x float> %i.gi, %i.ge           ; 2 uses
  %i.gk = load <2 x i32>, ptr %i.ar, align 4, !tbaa !78
  %i.gl = sitofp <2 x i32> %i.gk to <2 x float>
  %i.gm = insertelement <2 x float> %5, float %i.dv, i64 1
  %i.gn = fmul <2 x float> %i.gm, %i.gl
  %i.go = fadd <2 x float> %i.gn, splat (float -5.000000e-01) ; 2 uses
  %i.gp = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.go)
  %i.gq = fptosi <2 x float> %i.gp to <2 x i32>   ; 4 uses
  %i.gr = extractelement <2 x i32> %i.gq, i64 1   ; 2 uses
  %.sroa.239.0.insert.ext.i.2 = zext i32 %i.gr to i64
  %.sroa.239.0.insert.shift.i.2 = shl nuw i64 %.sroa.239.0.insert.ext.i.2, 32
  %i.gs = extractelement <2 x i32> %i.gq, i64 0   ; 2 uses
  %.sroa.038.0.insert.ext.i.2 = zext i32 %i.gs to i64
  %.sroa.038.0.insert.insert.i.2 = bitcast <2 x i32> %i.gq to i64
  %i.gt = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.038.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %i.gu = add nsw i32 %i.gs, 1
  %.sroa.036.0.insert.ext.i.2 = zext i32 %i.gu to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i.2 = or disjoint i64 %.sroa.239.0.insert.shift.i.2, %.sroa.036.0.insert.ext.i.2
  %i.gv = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.036.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %i.gw = add nsw i32 %i.gr, 1
  %.sroa.235.0.insert.ext.i.2 = zext i32 %i.gw to i64
  %.sroa.235.0.insert.shift.i.2 = shl nuw i64 %.sroa.235.0.insert.ext.i.2, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i.2 = or disjoint i64 %.sroa.235.0.insert.shift.i.2, %.sroa.038.0.insert.ext.i.2
  %i.gx = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.034.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.235.0.insert.shift.i.2, %.sroa.036.0.insert.ext.i.2
  %i.gy = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.0.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %i.gz = sitofp <2 x i32> %i.gq to <2 x float>
  %i.ha = fsub <2 x float> %i.go, %i.gz           ; 2 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 0 ; 3 uses
  %i.hc = fsub float 1.000000e+00, %i.hb          ; 2 uses
  %i.hd = extractelement <2 x float> %i.ha, i64 1 ; 3 uses
  %i.he = fsub float 1.000000e+00, %i.hd          ; 2 uses
  %i.hf = fmul float %i.hc, %i.he
  %i.hg = fmul float %i.gt, %i.hf
  %i.hh = fmul float %i.hb, %i.he
  %i.hi = fmul float %i.gv, %i.hh
  %i.hj = fadd float %i.hg, %i.hi
  %i.hk = fmul float %i.hc, %i.hd
  %i.hl = fmul float %i.gx, %i.hk
  %i.hm = fadd float %i.hl, %i.hj
  %i.hn = fmul float %i.hb, %i.hd
  %i.ho = fmul float %i.gy, %i.hn
  %i.hp = fadd float %i.ho, %i.hm                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !221
  %i.hs = fcmp ogt <2 x float> %i.gj, zeroinitializer
  %i.ht = select <2 x i1> %i.hs, <2 x float> %i.gj, <2 x float> zeroinitializer
  %i.hu = fcmp ogt float %i.hp, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.hu, float %i.hp, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(152) %i.hr, <2 x float> %i.ht, float %.sroa.speculated.i)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hw = load <1 x float>, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !187 ; 2 uses
  %.not.i40 = icmp eq ptr %i.hy, null
  br i1 %.not.i40, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.g

bb.p:                                             ; preds = %bb.f
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %13 = load <1 x float>, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !219
  %i.ic = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ib, ptr noundef nonnull align 4 dereferenceable(32) %8) ; 2 uses
  %i.id = extractvalue { <2 x float>, <2 x float> } %i.ic, 0
  %i.ie = extractvalue { <2 x float>, <2 x float> } %i.ic, 1
  %i.if = shufflevector <1 x float> %13, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ig = fmul <2 x float> %i.if, %i.id
  %i.ih = fmul <2 x float> %i.if, %i.ie
  br label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99, %bb.b, %bb.p, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit
  %.sroa.086.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.ds, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %i.ig, %bb.p ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99 ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit ]
  %.sroa.792.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.dt, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %i.ih, %bb.p ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99 ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.086.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.792.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK4pbrt16DiffuseAreaLight6PDF_LiENS_18LightSampleContextENS_7Vector3IfEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef readonly byval(%"class.pbrt::LightSampleContext") align 8 captures(none) %1, <2 x float> %2, float %3, i1 noundef zeroext %4) local_unnamed_addr #10 align 2 {
bb.a:
  %5 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %6 = alloca %class.anon.156, align 8            ; 5 uses
  %7 = alloca %"struct.pbrt::ShapeSampleContext", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.a, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.b, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %.sroa.09.0.copyload, ptr %i.c, align 8
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %.sroa.210.0.copyload, ptr %.sroa.27.0..sroa_idx.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 36
  store <2 x float> %.sroa.07.0.copyload, ptr %i.d, align 4
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.e = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.28.0.copyload, i64 0
  store <2 x float> %i.e, ptr %.sroa.23.0..sroa_idx.i, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> %2, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %3, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %7, ptr %6, align 8, !tbaa !223
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.g, align 8, !tbaa !599
  %i.h = load i64, ptr %i.f, align 8, !tbaa !213  ; 2 uses
  %i.i = and i64 %i.h, 144115188075855871
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = lshr i64 %i.h, 57
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = add nsw i32 %i.l, -1
  %i.n = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_5Shape3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEEEUlT_E_fNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS8_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.j, i32 noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret float %i.n
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt16DiffuseAreaLight3PhiENS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 18 uses
  %2 = alloca %"class.pbrt::RGBIlluminantSpectrum", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !161
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %.preheader111, label %bb.au

.preheader111:                                    ; preds = %bb.a
  %.sroa.0.0.copyload.i125 = load i64, ptr %i.c, align 4 ; 3 uses
  %.sroa.322.0.extract.shift126 = lshr i64 %.sroa.0.0.copyload.i125, 32
  %.sroa.322.0.extract.trunc127 = trunc nuw i64 %.sroa.322.0.extract.shift126 to i32 ; 2 uses
  %i.j = icmp sgt i32 %.sroa.322.0.extract.trunc127, 0
  %i.k = trunc i64 %.sroa.0.0.copyload.i125 to i32 ; 2 uses
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge131

.preheader.lr.ph:                                 ; preds = %.preheader111
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.0.copyload.i144 = phi i64 [ %.sroa.0.0.copyload.i125, %.preheader.lr.ph ], [ %.sroa.0.0.copyload.i, %._crit_edge ] ; 3 uses
  %i.y = phi i32 [ %i.k, %.preheader.lr.ph ], [ %.pre-phi, %._crit_edge ]
  %.0130 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aj, %._crit_edge ] ; 10 uses
  %.sroa.14.0129 = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph ], [ %.sroa.14.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.061.0128 = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph ], [ %.sroa.061.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.016.0.extract.trunc120 = trunc i64 %.sroa.0.0.copyload.i144 to i32 ; 2 uses
  %i.z = icmp sgt i32 %.sroa.016.0.extract.trunc120, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge131:                                   ; preds = %._crit_edge, %.preheader111
  %.sroa.02.0.extract.trunc.pre-phi = phi i32 [ %i.k, %.preheader111 ], [ %.pre-phi, %._crit_edge ]
  %.sroa.061.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader111 ], [ %.sroa.061.1.lcssa, %._crit_edge ]
  %.sroa.14.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader111 ], [ %.sroa.14.1.lcssa, %._crit_edge ]
  %.sroa.322.0.extract.trunc.lcssa = phi i32 [ %.sroa.322.0.extract.trunc127, %.preheader111 ], [ %.sroa.322.0.extract.trunc, %._crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !220
  %i.ac = mul nsw i32 %.sroa.322.0.extract.trunc.lcssa, %.sroa.02.0.extract.trunc.pre-phi
  %i.ad = sitofp i32 %i.ac to float
  %i.ae = fdiv float %i.ab, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = fmul <2 x float> %.sroa.061.0.lcssa, %i.ag
  %i.ai = fmul <2 x float> %.sroa.14.0.lcssa, %i.ag
  br label %bb.av

._crit_edge:                                      ; preds = %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, %.preheader
  %.pre-phi = phi i32 [ %.sroa.016.0.extract.trunc120, %.preheader ], [ %.sroa.016.0.extract.trunc, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 2 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i144, %.preheader ], [ %.sroa.0.0.copyload.i32, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 2 uses
  %.sroa.061.1.lcssa = phi <2 x float> [ %.sroa.061.0128, %.preheader ], [ %i.ep, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 2 uses
  %.sroa.14.1.lcssa = phi <2 x float> [ %.sroa.14.0129, %.preheader ], [ %i.eq, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 2 uses
  %i.aj = add nuw nsw i32 %.0130, 1               ; 2 uses
  %.sroa.322.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.322.0.extract.trunc = trunc nuw i64 %.sroa.322.0.extract.shift to i32 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %.sroa.322.0.extract.trunc
  br i1 %i.ak, label %.preheader, label %._crit_edge131, !llvm.loop !600

.lr.ph:                                           ; preds = %.preheader, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit
  %i.al = phi i32 [ %.sroa.016.0.extract.trunc, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %i.y, %.preheader ] ; 3 uses
  %.sroa.04.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i32, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %.sroa.0.0.copyload.i144, %.preheader ] ; 2 uses
  %.028123 = phi i32 [ %i.er, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ 0, %.preheader ] ; 10 uses
  %.sroa.14.1122 = phi <2 x float> [ %i.eq, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %.sroa.14.0129, %.preheader ]
  %.sroa.061.1121 = phi <2 x float> [ %i.ep, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %.sroa.061.0128, %.preheader ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.04.0.copyload.i to i32 ; 2 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 2 uses
  %i.am = icmp slt i32 %.028123, %.sroa.0.0.extract.trunc.i
  %i.an = add nsw i32 %.sroa.0.0.extract.trunc.i, -1
  %..i.i = call i32 @llvm.smin.i32(i32 %.028123, i32 %i.an)
  %.sroa.092.0 = select i1 %i.am, i32 %.028123, i32 %..i.i ; 3 uses
  %i.ao = icmp slt i32 %.0130, %.sroa.9.0.extract.trunc.i
  %i.ap = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %.0130, i32 %i.ap)
  %.sroa.14100.2 = select i1 %i.ao, i32 %.0130, i32 %..i.1.i ; 3 uses
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !188
  switch i32 %i.aq, label %bb.ad [
    i32 0, label %bb.v
    i32 1, label %bb.y
    i32 2, label %bb.ac
  ]

bb.b:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.ar = load float, ptr %2, align 8, !tbaa !183 ; 4 uses
  %i.as = load float, ptr %i.t, align 4, !tbaa !184 ; 4 uses
  %i.at = load float, ptr %i.u, align 8, !tbaa !185 ; 4 uses
  %i.au = load float, ptr %i.s, align 4, !tbaa !186 ; 4 uses
  %i.av = load float, ptr %1, align 8, !tbaa !77  ; 3 uses
  %i.aw = call noundef float @llvm.fma.f32(float %i.av, float %i.au, float %i.at)
  %i.ax = call noundef float @llvm.fma.f32(float %i.av, float %i.aw, float %i.as) ; 5 uses
  %i.ay = call float @llvm.fabs.f32(float %i.ax)
  %i.az = fcmp oeq float %i.ay, +inf
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = fcmp ogt float %i.ax, 0.000000e+00
  %i.bb = uitofp i1 %i.ba to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

bb.d:                                             ; preds = %bb.b
  %i.bc = fmul float %i.ax, %i.ax
  %i.bd = fadd float %i.bc, 1.000000e+00
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.bd)
  %i.be = fmul float %sqrt.i.i.i, 2.000000e+00
  %i.bf = fdiv float %i.ax, %i.be
  %i.bg = fadd float %i.bf, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i:       ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi float [ %i.bb, %bb.c ], [ %i.bg, %bb.d ]
  %i.bh = fmul float %i.ar, %.0.i.i.i
  %i.bi = load float, ptr %i.v, align 4, !tbaa !77 ; 3 uses
  %i.bj = call noundef float @llvm.fma.f32(float %i.bi, float %i.au, float %i.at)
  %i.bk = call noundef float @llvm.fma.f32(float %i.bi, float %i.bj, float %i.as) ; 5 uses
  %i.bl = call float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp oeq float %i.bl, +inf
  br i1 %i.bm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.bn = fmul float %i.bk, %i.bk
  %i.bo = fadd float %i.bn, 1.000000e+00
  %sqrt.i.i.1.i = call float @llvm.sqrt.f32(float %i.bo)
  %i.bp = fmul float %sqrt.i.i.1.i, 2.000000e+00
end_hunk_3
begin_hunk_4_@_ZNK4pbrt16DiffuseAreaLight3PhiENS_18SampledWavelengthsE:bb.a
  br i1 %i.hw, label %bb.ah, label %_ZNK4pbrt4HalfcvfEv.exit.i.1

bb.ah:                                            ; preds = %bb.ag
  %i.hx = or i32 %i.hr, 947912704
  %i.hy = bitcast i32 %i.hx to float
  %i.hz = fadd float %i.hy, f0xB8800000
  %i.ia = bitcast float %i.hz to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.1

bb.ai:                                            ; preds = %bb.af
  %i.ib = or i32 %i.hr, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.1

_ZNK4pbrt4HalfcvfEv.exit.i.1:                     ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0.0.i.i.1 = phi i32 [ %i.ib, %bb.ai ], [ %i.ia, %bb.ah ], [ %i.hv, %bb.ag ]
  %.signext.i.i.1 = sext i16 %i.hp to i32
  %i.ic = and i32 %.signext.i.i.1, -2147483648
  %i.id = or i32 %.sroa.0.0.i.i.1, %i.ic
  %i.ie = bitcast i32 %i.id to float
  br label %_ZN4pbrt3RGBixEi.exit.1

bb.aj:                                            ; preds = %_ZN4pbrt3RGBixEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.if = load i64, ptr %i.l, align 8, !tbaa !173
  %i.ig = trunc i64 %i.if to i32
  %i.ih = mul nsw i32 %.sroa.14100.2.1, %.sroa.0.0.extract.trunc.i.1
  %i.ii = add nsw i32 %i.ih, %.sroa.092.0.1
  %i.ij = mul nsw i32 %i.ii, %i.ig
  %i.ik = sext i32 %i.ij to i64
  %i.il = load ptr, ptr %i.p, align 8, !tbaa !118
  %i.im = getelementptr i8, ptr %i.il, i64 %i.ik
  %i.in = getelementptr i8, ptr %i.im, i64 1      ; 3 uses
  %i.io = load i64, ptr %i.o, align 8, !tbaa !115 ; 2 uses
  %i.ip = and i64 %i.io, 144115188075855871
  %i.iq = inttoptr i64 %i.ip to ptr               ; 2 uses
  %i.ir = lshr i64 %i.io, 57
  %i.is = trunc nuw nsw i64 %i.ir to i32
  switch i32 %i.is, label %bb.al [
    i32 1, label %.lr.ph.i.i.i.i.i.i.1
    i32 2, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.iq, ptr %i.in, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %bb.aj
  %i.it = load i8, ptr %i.in, align 1, !tbaa !28
  %i.iu = uitofp i8 %i.it to float
  %i.iv = fdiv float %i.iu, 2.550000e+02
  store float %i.iv, ptr %i.a, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1

bb.al:                                            ; preds = %bb.aj
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.iq, ptr %i.in, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1: ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i.1, %bb.ak
  %i.iw = load float, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN4pbrt3RGBixEi.exit.1

_ZN4pbrt3RGBixEi.exit.1:                          ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1, %_ZNK4pbrt4HalfcvfEv.exit.i.1, %bb.ae
  %.0.i.1 = phi float [ %i.iw, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1 ], [ %i.ie, %_ZNK4pbrt4HalfcvfEv.exit.i.1 ], [ %i.hf, %bb.ae ]
  %.sroa.057.4.vec.insert = insertelement <2 x float> %.sroa.057.0.vec.insert, float %.0.i.1, i64 1 ; 2 uses
  %.sroa.04.0.copyload.i.2 = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.2 = trunc i64 %.sroa.04.0.copyload.i.2 to i32 ; 5 uses
  %.sroa.9.0.extract.shift.i.2 = lshr i64 %.sroa.04.0.copyload.i.2, 32
  %.sroa.9.0.extract.trunc.i.2 = trunc nuw i64 %.sroa.9.0.extract.shift.i.2 to i32 ; 2 uses
  %i.ix = icmp slt i32 %.028123, %.sroa.0.0.extract.trunc.i.2
  %i.iy = add nsw i32 %.sroa.0.0.extract.trunc.i.2, -1
  %..i.i.2 = call i32 @llvm.smin.i32(i32 %.028123, i32 %i.iy)
  %.sroa.092.0.2 = select i1 %i.ix, i32 %.028123, i32 %..i.i.2 ; 3 uses
  %i.iz = icmp slt i32 %.0130, %.sroa.9.0.extract.trunc.i.2
  %i.ja = add nsw i32 %.sroa.9.0.extract.trunc.i.2, -1
  %..i.1.i.2 = call i32 @llvm.smin.i32(i32 %.0130, i32 %i.ja)
  %.sroa.14100.2.2 = select i1 %i.iz, i32 %.0130, i32 %..i.1.i.2 ; 3 uses
  %i.jb = load i32, ptr %i.b, align 8, !tbaa !188
  switch i32 %i.jb, label %bb.ad [
    i32 0, label %bb.ar
    i32 1, label %bb.an
    i32 2, label %bb.am
  ]

bb.am:                                            ; preds = %_ZN4pbrt3RGBixEi.exit.1
  %i.jc = load i64, ptr %i.l, align 8, !tbaa !173
  %i.jd = trunc i64 %i.jc to i32
  %i.je = mul nsw i32 %.sroa.14100.2.2, %.sroa.0.0.extract.trunc.i.2
  %i.jf = add nsw i32 %i.je, %.sroa.092.0.2
  %i.jg = mul nsw i32 %i.jf, %i.jd
  %i.jh = sext i32 %i.jg to i64
  %i.ji = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.jj = getelementptr [4 x i8], ptr %i.ji, i64 %i.jh
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !77
  br label %_ZN4pbrt3RGBixEi.exit.2

bb.an:                                            ; preds = %_ZN4pbrt3RGBixEi.exit.1
  %i.jm = load i64, ptr %i.l, align 8, !tbaa !173
  %i.jn = trunc i64 %i.jm to i32
  %i.jo = mul nsw i32 %.sroa.14100.2.2, %.sroa.0.0.extract.trunc.i.2
  %i.jp = add nsw i32 %i.jo, %.sroa.092.0.2
  %i.jq = mul nsw i32 %i.jp, %i.jn
  %i.jr = sext i32 %i.jq to i64
  %i.js = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.jt = getelementptr [2 x i8], ptr %i.js, i64 %i.jr
  %i.ju = getelementptr i8, ptr %i.jt, i64 4
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !191 ; 2 uses
  %i.jw = zext i16 %i.jv to i32
  %i.jx = shl nuw nsw i32 %i.jw, 13               ; 4 uses
  %i.jy = and i32 %i.jx, 260046848                ; 2 uses
  %i.jz = icmp eq i32 %i.jy, 260046848
  br i1 %i.jz, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ka = and i32 %i.jx, 268427264
  %i.kb = add nuw nsw i32 %i.ka, 939524096
  %i.kc = icmp eq i32 %i.jy, 0
  br i1 %i.kc, label %bb.ap, label %_ZNK4pbrt4HalfcvfEv.exit.i.2

bb.ap:                                            ; preds = %bb.ao
  %i.kd = or i32 %i.jx, 947912704
  %i.ke = bitcast i32 %i.kd to float
  %i.kf = fadd float %i.ke, f0xB8800000
  %i.kg = bitcast float %i.kf to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.2

bb.aq:                                            ; preds = %bb.an
  %i.kh = or i32 %i.jx, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.2

_ZNK4pbrt4HalfcvfEv.exit.i.2:                     ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.0.0.i.i.2 = phi i32 [ %i.kh, %bb.aq ], [ %i.kg, %bb.ap ], [ %i.kb, %bb.ao ]
  %.signext.i.i.2 = sext i16 %i.jv to i32
  %i.ki = and i32 %.signext.i.i.2, -2147483648
  %i.kj = or i32 %.sroa.0.0.i.i.2, %i.ki
  %i.kk = bitcast i32 %i.kj to float
  br label %_ZN4pbrt3RGBixEi.exit.2

bb.ar:                                            ; preds = %_ZN4pbrt3RGBixEi.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.kl = load i64, ptr %i.l, align 8, !tbaa !173
  %i.km = trunc i64 %i.kl to i32
  %i.kn = mul nsw i32 %.sroa.14100.2.2, %.sroa.0.0.extract.trunc.i.2
  %i.ko = add nsw i32 %i.kn, %.sroa.092.0.2
  %i.kp = mul nsw i32 %i.ko, %i.km
  %i.kq = sext i32 %i.kp to i64
  %i.kr = load ptr, ptr %i.p, align 8, !tbaa !118
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.kq
  %i.kt = getelementptr i8, ptr %i.ks, i64 2      ; 3 uses
  %i.ku = load i64, ptr %i.o, align 8, !tbaa !115 ; 2 uses
  %i.kv = and i64 %i.ku, 144115188075855871
  %i.kw = inttoptr i64 %i.kv to ptr               ; 2 uses
  %i.kx = lshr i64 %i.ku, 57
  %i.ky = trunc nuw nsw i64 %i.kx to i32
  switch i32 %i.ky, label %bb.at [
    i32 1, label %.lr.ph.i.i.i.i.i.i.2
    i32 2, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.kw, ptr %i.kt, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %bb.ar
  %i.kz = load i8, ptr %i.kt, align 1, !tbaa !28
  %i.la = uitofp i8 %i.kz to float
  %i.lb = fdiv float %i.la, 2.550000e+02
  store float %i.lb, ptr %i.a, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2

bb.at:                                            ; preds = %bb.ar
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.kw, ptr %i.kt, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i.2, %bb.as
  %i.lc = load float, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN4pbrt3RGBixEi.exit.2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2, %_ZNK4pbrt4HalfcvfEv.exit.i.2, %bb.am
  %.0.i.2 = phi float [ %i.lc, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2 ], [ %i.kk, %_ZNK4pbrt4HalfcvfEv.exit.i.2 ], [ %i.jl, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.ld = load ptr, ptr %i.q, align 8, !tbaa !221
  %i.le = fcmp ogt <2 x float> %.sroa.057.4.vec.insert, zeroinitializer
  %i.lf = select <2 x i1> %i.le, <2 x float> %.sroa.057.4.vec.insert, <2 x float> zeroinitializer
  %i.lg = fcmp ogt float %.0.i.2, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.lg, float %.0.i.2, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(152) %i.ld, <2 x float> %i.lf, float %.sroa.speculated.i)
  %i.lh = load ptr, ptr %i.r, align 8, !tbaa !187 ; 7 uses
  %.not.i = icmp eq ptr %i.lh, null
  br i1 %.not.i, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.b

bb.au:                                            ; preds = %bb.a
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !219
  %i.lk = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.lj, ptr noundef nonnull align 4 dereferenceable(32) %1) ; 2 uses
  %i.ll = extractvalue { <2 x float>, <2 x float> } %i.lk, 0
  %i.lm = extractvalue { <2 x float>, <2 x float> } %i.lk, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 184
  %3 = load <1 x float>, ptr %i.ln, align 8
  %i.lo = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lp = fmul <2 x float> %i.lo, %i.ll
  %i.lq = fmul <2 x float> %i.lo, %i.lm
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge131
  %.sroa.061.2 = phi <2 x float> [ %i.ah, %._crit_edge131 ], [ %i.lp, %bb.au ]
  %.sroa.14.2 = phi <2 x float> [ %i.ai, %._crit_edge131 ], [ %i.lq, %bb.au ]
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ls = load i8, ptr %i.lr, align 4, !tbaa !218, !range !92, !noundef !93
  %i.lt = trunc nuw i8 %i.ls to i1
  %i.lu = select i1 %i.lt, float f0x40C90FDB, float f0x40490FDB
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.lw = load float, ptr %i.lv, align 8, !tbaa !217
  %i.lx = fmul float %i.lw, %i.lu
  %i.ly = shufflevector <2 x float> %.sroa.061.2, <2 x float> %.sroa.14.2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lz = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mb = fmul <4 x float> %i.ly, %i.ma           ; 2 uses
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.md = shufflevector <4 x float> %i.mb, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.mc, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %i.md, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16DiffuseAreaLight6BoundsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.21") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(352) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %class.anon.169, align 1            ; 3 uses
  %i.a = alloca float, align 4                    ; 18 uses
  %.sroa.0 = alloca %"class.pbrt::Bounds3", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !161
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %.preheader52, label %bb.y

.preheader52:                                     ; preds = %bb.a
  %.sroa.0.0.copyload.i64 = load i64, ptr %i.c, align 4 ; 3 uses
  %.sroa.315.0.extract.shift65 = lshr i64 %.sroa.0.0.copyload.i64, 32
  %.sroa.315.0.extract.trunc66 = trunc nuw i64 %.sroa.315.0.extract.shift65 to i32 ; 2 uses
  %i.j = icmp sgt i32 %.sroa.315.0.extract.trunc66, 0
  %i.k = trunc i64 %.sroa.0.0.copyload.i64 to i32 ; 2 uses
  br i1 %i.j, label %.preheader51.lr.ph, label %._crit_edge69

.preheader51.lr.ph:                               ; preds = %.preheader52
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.lr.ph, %._crit_edge
  %.sroa.0.0.copyload.i85 = phi i64 [ %.sroa.0.0.copyload.i64, %.preheader51.lr.ph ], [ %.sroa.0.0.copyload.i, %._crit_edge ] ; 4 uses
  %i.q = phi i32 [ %i.k, %.preheader51.lr.ph ], [ %.pre-phi108, %._crit_edge ]
  %.068 = phi float [ 0.000000e+00, %.preheader51.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.02367 = phi i32 [ 0, %.preheader51.lr.ph ], [ %i.ac, %._crit_edge ] ; 18 uses
  %.sroa.09.0.extract.trunc61 = trunc i64 %.sroa.0.0.copyload.i85 to i32 ; 2 uses
  %i.r = icmp sgt i32 %.sroa.09.0.extract.trunc61, 0
  br i1 %i.r, label %.preheader, label %._crit_edge

._crit_edge69:                                    ; preds = %._crit_edge, %.preheader52
  %.sroa.05.0.extract.trunc.pre-phi = phi i32 [ %i.k, %.preheader52 ], [ %.pre-phi108, %._crit_edge ]
  %.0.lcssa = phi float [ 0.000000e+00, %.preheader52 ], [ %.1.lcssa, %._crit_edge ]
  %.sroa.315.0.extract.trunc.lcssa = phi i32 [ %.sroa.315.0.extract.trunc66, %.preheader52 ], [ %.sroa.315.0.extract.trunc, %._crit_edge ]
  %i.s = mul nsw i32 %.sroa.05.0.extract.trunc.pre-phi, 3
  %i.t = mul nsw i32 %i.s, %.sroa.315.0.extract.trunc.lcssa
  %i.u = sitofp i32 %i.t to float
  %i.v = fdiv float %.0.lcssa, %i.u
  br label %bb.z

.preheader:                                       ; preds = %.preheader51, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2
  %.sroa.0.0.copyload.i89 = phi i64 [ %.sroa.0.0.copyload.i90, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2 ], [ %.sroa.0.0.copyload.i85, %.preheader51 ] ; 2 uses
  %.sroa.0.0.copyload.i2883 = phi i64 [ %.sroa.0.0.copyload.i28, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2 ], [ %.sroa.0.0.copyload.i85, %.preheader51 ] ; 4 uses
  %i.w = phi i32 [ %.sroa.09.0.extract.trunc.pre-phi, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2 ], [ %i.q, %.preheader51 ] ; 5 uses
  %.163 = phi float [ %i.hh, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2 ], [ %.068, %.preheader51 ] ; 3 uses
  %.02462 = phi i32 [ %i.hi, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2 ], [ 0, %.preheader51 ] ; 18 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i2883 to i32 ; 6 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i2883, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 6 uses
  %i.x = icmp slt i32 %.02462, %.sroa.0.0.extract.trunc.i
  %i.y = add nsw i32 %.sroa.0.0.extract.trunc.i, -1
  %..i.i = call i32 @llvm.smin.i32(i32 %.02462, i32 %i.y) ; 5 uses
  %.sroa.033.0 = select i1 %i.x, i32 %.02462, i32 %..i.i ; 3 uses
  %i.z = icmp slt i32 %.02367, %.sroa.9.0.extract.trunc.i
  %i.aa = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %.02367, i32 %i.aa) ; 5 uses
  %.sroa.14.2 = select i1 %i.z, i32 %.02367, i32 %..i.1.i ; 3 uses
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !188
  switch i32 %i.ab, label %bb.i [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread130
  ]

._crit_edge.loopexit:                             ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.2
  %.pre107 = trunc i64 %.sroa.0.0.copyload.i90 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader51
  %.pre-phi108 = phi i32 [ %.pre107, %._crit_edge.loopexit ], [ %.sroa.09.0.extract.trunc61, %.preheader51 ] ; 2 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i90, %._crit_edge.loopexit ], [ %.sroa.0.0.copyload.i85, %.preheader51 ] ; 2 uses
  %.1.lcssa = phi float [ %i.hh, %._crit_edge.loopexit ], [ %.068, %.preheader51 ] ; 2 uses
  %i.ac = add nuw nsw i32 %.02367, 1              ; 2 uses
  %.sroa.315.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.315.0.extract.trunc = trunc nuw i64 %.sroa.315.0.extract.shift to i32 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %.sroa.315.0.extract.trunc
  br i1 %i.ad, label %.preheader51, label %._crit_edge69, !llvm.loop !602

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !173
  %i.af = trunc i64 %i.ae to i32
  %i.ag = mul nsw i32 %i.w, %.sroa.14.2
  %i.ah = add nsw i32 %i.ag, %.sroa.033.0
  %i.ai = mul nsw i32 %i.ah, %i.af
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !118
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.aj  ; 3 uses
  %i.am = load i64, ptr %i.o, align 8, !tbaa !115 ; 2 uses
  %i.an = and i64 %i.am, 144115188075855871
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = lshr i64 %i.am, 57
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  switch i32 %i.aq, label %bb.d [
    i32 1, label %.lr.ph.i.i.i.i.i.i
    i32 2, label %bb.c
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !28
  %i.as = uitofp i8 %i.ar to float
  %i.at = fdiv float %i.as, 2.550000e+02
  store float %i.at, ptr %i.a, align 4, !tbaa !77
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr %i.al, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.ao, ptr %i.al, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.e:                                             ; preds = %.preheader
  %i.au = load i64, ptr %i.l, align 8, !tbaa !173
  %i.av = trunc i64 %i.au to i32
  %i.aw = mul nsw i32 %i.w, %.sroa.14.2
  %i.ax = add nsw i32 %i.aw, %.sroa.033.0
  %i.ay = mul nsw i32 %i.ax, %i.av
  %i.az = sext i32 %i.ay to i64
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.bb = getelementptr [2 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !191 ; 2 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 13               ; 4 uses
  %i.bf = and i32 %i.be, 260046848                ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 260046848
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = or i32 %i.be, 1879048192
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.bi = and i32 %i.be, 268427264
  %i.bj = add nuw nsw i32 %i.bi, 939524096
  %i.bk = icmp eq i32 %i.bf, 0
  br i1 %i.bk, label %bb.h, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bl = or i32 %i.be, 947912704
  %i.bm = bitcast i32 %i.bl to float
  %i.bn = fadd float %i.bm, f0xB8800000
  %i.bo = bitcast float %i.bn to i32
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i.i = phi i32 [ %i.bh, %bb.f ], [ %i.bo, %bb.h ], [ %i.bj, %bb.g ]
  %.signext.i.i = sext i16 %i.bc to i32
  %i.bp = and i32 %.signext.i.i, -2147483648
  %i.bq = or i32 %.sroa.0.0.i.i, %i.bp
  %i.br = bitcast i32 %i.bq to float
  %i.bs = fadd float %.163, %i.br
  %i.bt = icmp slt i32 %.02462, %.sroa.0.0.extract.trunc.i
  %.sroa.033.0.1120 = select i1 %i.bt, i32 %.02462, i32 %..i.i
  %i.bu = icmp slt i32 %.02367, %.sroa.9.0.extract.trunc.i
  %.sroa.14.2.1121 = select i1 %i.bu, i32 %.02367, i32 %..i.1.i
  br label %bb.j

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.thread130: ; preds = %.preheader
  %i.bv = load i64, ptr %i.l, align 8, !tbaa !173
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = mul nsw i32 %i.w, %.sroa.14.2
  %i.by = add nsw i32 %i.bx, %.sroa.033.0
end_hunk_4
begin_hunk_5_@_ZN4pbrt16DiffuseAreaLight6CreateERKNS_9TransformENS_6MediumERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_5ShapeENS_12FloatTextureE:._crit_edge.i.i
_ZNK4pbrt4HalfcvfEv.exit.i.2:                     ; preds = %bb.bu, %bb.bt, %bb.bs
  %.sroa.0.0.i.i.2 = phi i32 [ %i.op, %bb.bu ], [ %i.oo, %bb.bt ], [ %i.oj, %bb.bs ]
  %.signext.i.i.2 = sext i16 %i.od to i32
  %i.oq = and i32 %.signext.i.i.2, -2147483648
  %i.or = or i32 %.sroa.0.0.i.i.2, %i.oq
  %i.os = bitcast i32 %i.or to float
  br label %_ZN4pbrt3RGBixEi.exit.2

bb.bv:                                            ; preds = %_ZN4pbrt3RGBixEi.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ot = load i64, ptr %i.ic, align 8, !tbaa !173
  %i.ou = trunc i64 %i.ot to i32
  %i.ov = mul nsw i32 %.sroa.14.2.2, %.sroa.0.0.extract.trunc.i.2
  %i.ow = add nsw i32 %i.ov, %.sroa.0244.0.2
  %i.ox = mul nsw i32 %i.ow, %i.ou
  %i.oy = sext i32 %i.ox to i64
  %i.oz = load ptr, ptr %i.bd, align 8, !tbaa !118
  %i.pa = getelementptr i8, ptr %i.oz, i64 %i.oy
  %i.pb = getelementptr i8, ptr %i.pa, i64 2      ; 3 uses
  %i.pc = load i64, ptr %i.id, align 8, !tbaa !115 ; 2 uses
  %i.pd = and i64 %i.pc, 144115188075855871
  %i.pe = inttoptr i64 %i.pd to ptr               ; 2 uses
  %i.pf = lshr i64 %i.pc, 57
  %i.pg = trunc nuw nsw i64 %i.pf to i32
  switch i32 %i.pg, label %bb.bx [
    i32 1, label %.lr.ph.i.i.i.i.i.i.2
    i32 2, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.pe, ptr %i.pb, i64 1, ptr nonnull %i.a, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2 unwind label %.loopexit

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %bb.bv
  %i.ph = load i8, ptr %i.pb, align 1, !tbaa !28
  %i.pi = uitofp i8 %i.ph to float
  %i.pj = fdiv float %i.pi, 2.550000e+02
  store float %i.pj, ptr %i.a, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2

bb.bx:                                            ; preds = %bb.bv
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.pe, ptr %i.pb, i64 1, ptr nonnull %i.a, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2 unwind label %.loopexit

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2: ; preds = %bb.bx, %.lr.ph.i.i.i.i.i.i.2, %bb.bw
  %i.pk = load float, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN4pbrt3RGBixEi.exit.2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2, %_ZNK4pbrt4HalfcvfEv.exit.i.2, %bb.bq
  %.0.i.2 = phi float [ %i.pk, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2 ], [ %i.os, %_ZNK4pbrt4HalfcvfEv.exit.i.2 ], [ %i.nt, %bb.bq ]
  %i.pl = fmul float %.0.i.2, %i.hz
  %i.pm = fadd float %i.ne, %i.pl                 ; 2 uses
  %i.pn = add nuw nsw i32 %.078285, 1             ; 2 uses
  %.sroa.0.0.copyload.i209 = load i64, ptr %i.av, align 4 ; 3 uses
  %.sroa.06.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i209 to i32 ; 3 uses
  %i.po = icmp slt i32 %i.pn, %.sroa.06.0.extract.trunc
  br i1 %i.po, label %.preheader, label %._crit_edge, !llvm.loop !633

.loopexit:                                        ; preds = %bb.bx, %bb.bw, %bb.bp, %bb.bo, %bb.ba, %bb.bb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp:                               ; preds = %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.by:                                            ; preds = %._crit_edge292, %bb.av
  %.377 = phi float [ %i.ii, %._crit_edge292 ], [ 1.000000e+00, %bb.av ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.pp = load i64, ptr %6, align 8, !tbaa !213   ; 2 uses
  %i.pq = and i64 %i.pp, 144115188075855871
  %i.pr = inttoptr i64 %i.pq to ptr
  %i.ps = lshr i64 %i.pp, 57
  %i.pt = trunc nuw nsw i64 %i.ps to i32
  %i.pu = add nsw i32 %i.pt, -1
  %i.pv = invoke noundef float @_ZN4pbrt6detail8DispatchIRZNKS_5Shape4AreaEvEUlT_E_fNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.pr, i32 noundef %i.pu)
          to label %bb.bz unwind label %bb.ay

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.pw = select i1 %i.x, float 2.000000e+00, float 1.000000e+00
  %i.px = fmul float %i.pw, %i.pv
  %i.py = fmul float %i.px, f0x40490FDB
  %i.pz = fmul float %.377, %i.py
  %i.qa = fdiv float %i.hm, %i.pz
  %i.qb = fmul float %i.qa, %i.hi
  store float %i.qb, ptr %i.c, align 4, !tbaa !77
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.qc = load ptr, ptr %5, align 8, !tbaa !42
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8
  %i.qf = invoke noundef ptr %i.qe(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 352, i64 noundef 8)
          to label %.noexc217 unwind label %bb.cb, !inline_history !634 ; 2 uses

.noexc217:                                        ; preds = %bb.ca
  invoke void @_ZN4pstd3pmr21polymorphic_allocatorISt4byteE9constructIN4pbrt16DiffuseAreaLightEJRKNS5_9TransformERNS5_6MediumERNS5_8SpectrumERfRKNS5_5ShapeERNS5_12FloatTextureENS5_5ImageERPKNS5_13RGBColorSpaceERbEEEvPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.qf, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(152) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt16DiffuseAreaLightEJRKNS5_9TransformERNS5_6MediumERNS5_8SpectrumERfRKNS5_5ShapeERNS5_12FloatTextureENS5_5ImageERPKNS5_13RGBColorSpaceERbEEEPT_DpOT0_.exit unwind label %bb.cb

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt16DiffuseAreaLightEJRKNS5_9TransformERNS5_6MediumERNS5_8SpectrumERfRKNS5_5ShapeERNS5_12FloatTextureENS5_5ImageERPKNS5_13RGBColorSpaceERbEEEPT_DpOT0_.exit: ; preds = %.noexc217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.qg = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt16DiffuseAreaLightEJRKNS5_9TransformERNS5_6MediumERNS5_8SpectrumERfRKNS5_5ShapeERNS5_12FloatTextureENS5_5ImageERPKNS5_13RGBColorSpaceERbEEEPT_DpOT0_.exit
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !28
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt16DiffuseAreaLightEJRKNS5_9TransformERNS5_6MediumERNS5_8SpectrumERfRKNS5_5ShapeERNS5_12FloatTextureENS5_5ImageERPKNS5_13RGBColorSpaceERbEEEPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  ret ptr %i.qf

bb.cb:                                            ; preds = %.noexc217, %bb.ca
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %bb.cb, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.n
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %i.cr, %bb.n ], [ %i.io, %bb.ay ], [ %i.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %i.ql, %bb.cb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.qm = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.qo = icmp eq ptr %i.qm, %i.qn
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.cc
  %i.qp = load i64, ptr %i.qn, align 8, !tbaa !28
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %.pn104.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %.pn104.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222 ], [ %.pn104.pn.pn.pn, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %.pn104.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %.pn104.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn.pn, %bb.cd ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %.pn104.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn.pn.pn, %bb.ce ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK4pbrt19ParameterDictionary10GetOneBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt20UniformInfiniteLightC2ERKNS_9TransformENS_8SpectrumEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(180) initializes((0, 132), (136, 176)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %2, float noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Spectrum", align 8    ; 2 uses
  store i32 3, ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL9numLightsE) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  %i.e = add nsw i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load i64, ptr %2, align 8, !tbaa !67
  store i64 %i.g, ptr %4, align 8, !tbaa !67
  %i.h = call noundef ptr @_ZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumE(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4)
  store ptr %i.h, ptr %i.f, align 8, !tbaa !247
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float %3, ptr %i.i, align 8, !tbaa !248
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 164
  store <2 x float> zeroinitializer, ptr %i.j, align 4, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt20UniformInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(32) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %3 = load <1 x float>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.d = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(32) %2) ; 2 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.d, 0
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.d, 1
  %i.g = shufflevector <1 x float> %3, <1 x float> poison, <4 x i32> zeroinitializer
  %i.h = shufflevector <2 x float> %i.e, <2 x float> %i.f, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.i = fmul <4 x float> %i.g, %i.h              ; 2 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.k = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.j, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %i.k, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt20UniformInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.47") align 8 captures(none) initializes((0, 92), (96, 113)) %0, ptr noundef nonnull align 8 dereferenceable(180) %1, ptr nofree noundef readonly byval(%"class.pbrt::LightSampleContext") align 8 captures(none) %2, <2 x float> %3, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8 %4, i1 noundef zeroext %5) local_unnamed_addr #10 align 2 {
bb.a:
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %3, i64 0
  %i.a = fmul float %.sroa.0.0.vec.extract.i, 2.000000e+00
  %i.b = fsub float 1.000000e+00, %i.a            ; 4 uses
  %i.c = fmul float %i.b, %i.b
  %i.d = fsub float 1.000000e+00, %i.c            ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.e, float %i.d, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %3, i64 1
  %i.f = fmul float %.sroa.0.4.vec.extract.i, f0x40C90FDB ; 2 uses
  %i.g = tail call noundef float @cosf(float noundef %i.f) #37
  %i.h = fmul float %sqrt.i.i, %i.g               ; 2 uses
  %i.i = tail call noundef float @sinf(float noundef %i.f) #37
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %6 = load <1 x float>, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !247
  %i.m = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.m, 0
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.m, 1
  %i.p = shufflevector <1 x float> %6, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = fmul <2 x float> %i.p, %i.o
  %.sroa.0.sroa.0.0.copyload.i = load float, ptr %2, align 8
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.sroa.2.0.copyload.i = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = fadd float %.sroa.0.sroa.0.0.copyload.i, %.sroa.0.sroa.2.0.copyload.i
  %i.t = fmul float %i.s, 5.000000e-01
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.v = load float, ptr %i.u, align 8, !tbaa !249
  %i.w = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = insertelement <2 x float> <float poison, float 2.000000e+00>, float %i.i, i64 0
  %i.z = fmul <2 x float> %i.x, %i.y              ; 4 uses
  %i.aa = shufflevector <2 x float> %.sroa.06.0.vec.insert.i, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ab = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.ac = load <4 x float>, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ae = fadd <2 x float> %i.ab, %i.ad
  %i.af = fmul <2 x float> %i.ae, splat (float 5.000000e-01)
  %i.ag = extractelement <2 x float> %i.z, i64 1
  %i.ah = fmul float %i.h, %i.ag
  %i.ai = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.b, i64 1
  %i.ak = fmul <2 x float> %i.z, %i.aj
  %i.al = fadd float %i.t, %i.ah
  %i.am = fadd <2 x float> %i.af, %i.ak           ; 2 uses
  %.sroa.0.0.vec.insert.i32 = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i32, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.4.vec.insert.i.i37 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.12.32..sroa_idx, i8 0, i64 36, i1 false)
  store <2 x float> %i.q, ptr %0, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.r, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.aa, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.b, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float f0x3DA2F983, ptr %.sroa.749.0..sroa_idx, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %i.ao, align 8
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.10.32..sroa_idx, align 8
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i37, ptr %.sroa.11.32..sroa_idx, align 8
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.an, ptr %.sroa.14.32..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.ap, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sink, ptr %i.aq, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZNK4pbrt20UniformInfiniteLight6PDF_LiENS_18LightSampleContextENS_7Vector3IfEEb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(180) %0, ptr nofree noundef readnone byval(%"class.pbrt::LightSampleContext") align 8 captures(none) %1, <2 x float> %2, float %3, i1 noundef zeroext %4) local_unnamed_addr #17 align 2 {
bb.a:
  %spec.select = select i1 %4, float 0.000000e+00, float f0x3DA2F983
  ret float %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt20UniformInfiniteLight3PhiENS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %0, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load float, ptr %i.a, align 8, !tbaa !249 ; 2 uses
  %i.c = fmul float %i.b, %i.b
  %i.d = fmul float %i.c, f0x421DE9E7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load float, ptr %i.e, align 8, !tbaa !248
  %i.g = fmul float %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.j = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 4 dereferenceable(32) %1) ; 2 uses
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.j, 1
  %i.m = insertelement <4 x float> poison, float %i.g, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %i.o = shufflevector <2 x float> %i.k, <2 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.p = fmul <4 x float> %i.n, %i.o              ; 2 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.r = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %i.r, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt20UniformInfiniteLight8SampleLeENS_6Point2IfEES2_RNS_18SampledWavelengthsEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.24") align 8 captures(none) initializes((0, 44), (48, 56), (136, 137), (144, 153)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4, float noundef %5) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %2, i64 1
  %i.a = fmul float %.sroa.0.4.vec.extract.i, f0x40C90FDB ; 2 uses
  %i.b = tail call noundef float @cosf(float noundef %i.a) #37
  %i.c = tail call noundef float @sinf(float noundef %i.a) #37
  %i.d = fmul <2 x float> %3, splat (float 2.000000e+00)
  %i.e = fadd <2 x float> %i.d, splat (float -1.000000e+00) ; 3 uses
  %i.f = extractelement <2 x float> %i.e, i64 0   ; 4 uses
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  %i.h = extractelement <2 x float> %i.e, i64 1   ; 4 uses
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e) ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.k = fcmp ogt <2 x float> %i.j, %shift
  %i.l = extractelement <2 x i1> %i.k, i64 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = fdiv float %i.h, %i.f
  %i.n = fmul float %i.m, f0x3F490FDB
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = fdiv float %i.f, %i.h
  %i.p = fmul float %i.o, f0x3F490FDB
  %i.q = fsub float f0x3FC90FDB, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.024.i = phi float [ %i.n, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %.0.i = phi float [ %i.f, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.r = tail call noundef float @cosf(float noundef %.024.i) #37
  %i.s = tail call noundef float @sinf(float noundef %.024.i) #37
  %i.t = fmul float %.0.i, %i.r
  %i.u = fmul float %.0.i, %i.s
  %.sroa.0.0.vec.insert.i.i29.i = insertelement <2 x float> poison, float %i.t, i64 0
  %.sroa.0.4.vec.insert.i.i30.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i, float %i.u, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.035.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i, %bb.e ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.v = fmul float %.sroa.0.0.vec.extract.i, 2.000000e+00
  %i.w = fsub float 1.000000e+00, %i.v            ; 7 uses
  %i.x = fneg float %i.w
  %i.y = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.x) ; 5 uses
  %i.z = fmul float %i.w, %i.w
  %i.aa = fsub float 1.000000e+00, %i.z           ; 2 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ab, float %i.aa, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.ac = fmul float %sqrt.i.i, %i.c              ; 7 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = fsub float %i.y, %i.w
  %i.af = fdiv float -1.000000e+00, %i.ae         ; 3 uses
  %i.ag = fmul float %i.af, %i.ad
  %i.ah = fadd float %i.y, %i.ag
  %i.ai = fmul float %sqrt.i.i, %i.b              ; 7 uses
  %i.aj = fmul float %i.y, %i.ai
  %i.ak = fmul float %i.ai, %i.ac
  %i.al = fmul float %i.af, %i.ak                 ; 2 uses
  %i.am = fmul float %i.y, %i.al
  %i.an = fmul float %i.ai, %i.ai
  %i.ao = fmul float %i.y, %i.an
  %i.ap = fmul float %i.af, %i.ao
  %i.aq = fadd float %i.ap, 1.000000e+00
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.ai, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.ac, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.at = load float, ptr %i.as, align 8, !tbaa !249 ; 8 uses
  %.sroa.053.0.vec.extract = extractelement <2 x float> %.sroa.035.0.i, i64 0 ; 3 uses
  %.sroa.053.4.vec.extract = extractelement <2 x float> %.sroa.035.0.i, i64 1 ; 3 uses
  %i.au = fmul float %i.aq, %.sroa.053.0.vec.extract
  %i.av = fmul float %i.am, %.sroa.053.0.vec.extract
  %i.aw = fmul float %i.aj, %.sroa.053.0.vec.extract
  %i.ax = fmul float %i.al, %.sroa.053.4.vec.extract
  %i.ay = fmul float %i.ah, %.sroa.053.4.vec.extract
  %i.az = fmul float %i.ac, %.sroa.053.4.vec.extract
  %i.ba = fadd float %i.au, %i.ax
  %i.bb = fadd float %i.av, %i.ay
  %i.bc = fadd float %i.aw, %i.az
  %i.bd = fmul float %i.ai, 0.000000e+00
  %i.be = fmul float %i.ac, 0.000000e+00
  %i.bf = fmul float %i.w, 0.000000e+00
  %i.bg = fsub float %i.ba, %i.bd
  %i.bh = fsub float %i.bb, %i.be
  %i.bi = fsub float %i.bc, %i.bf
  %i.bj = fmul float %i.at, %i.bg
  %i.bk = fmul float %i.at, %i.bh
  %i.bl = fmul float %i.at, %i.bi
  %i.bm = load float, ptr %i.ar, align 4, !tbaa !85
  %i.bn = fadd float %i.bm, %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !86
  %i.bq = fadd float %i.bp, %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.bs = load float, ptr %i.br, align 4, !tbaa !87
  %i.bt = fadd float %i.bs, %i.bl
  %i.bu = fmul float %i.ai, %i.at
  %i.bv = fsub float %i.bn, %i.bu
  %i.bw = fmul float %i.ac, %i.at
  %i.bx = fsub float %i.bq, %i.bw
  %i.by = fmul float %i.w, %i.at
  %i.bz = fsub float %i.bt, %i.by
  %.sroa.0.0.vec.insert.i94 = insertelement <2 x float> poison, float %i.bv, i64 0
  %.sroa.0.4.vec.insert.i95 = insertelement <2 x float> %.sroa.0.0.vec.insert.i94, float %i.bx, i64 1
  %i.ca = fmul float %i.at, %i.at
  %i.cb = fmul float %i.ca, f0x40490FDB
  %i.cc = fdiv float 1.000000e+00, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 160
  %6 = load <1 x float>, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !247
  %i.cg = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.ch = extractvalue { <2 x float>, <2 x float> } %i.cg, 0
  %i.ci = extractvalue { <2 x float>, <2 x float> } %i.cg, 1
  %i.cj = shufflevector <1 x float> %6, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fmul <2 x float> %i.cj, %i.ch
  %i.cl = fmul <2 x float> %i.cj, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.cm, align 8, !tbaa !100
  store <2 x float> %i.ck, ptr %0, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cl, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i95, ptr %i.cn, align 8
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bz, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %.sroa.06.4.vec.insert.i, ptr %.sroa.6.sroa.6.0..sroa_idx, align 4
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.w, ptr %.sroa.6.sroa.7.0..sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %5, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.co, align 8, !tbaa !40
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.cp, align 8, !tbaa !102
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float %i.cc, ptr %i.cq, align 8
  %.sroa_idx106 = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 1034090883, ptr %.sroa_idx106, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4pbrt20UniformInfiniteLight6PDF_LeERKNS_3RayEPfS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #13 align 2 {
bb.a:
  store float f0x3DA2F983, ptr %3, align 4, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load float, ptr %i.a, align 8, !tbaa !249 ; 2 uses
  %i.c = fmul float %i.b, %i.b
  %i.d = fmul float %i.c, f0x40490FDB
  %i.e = fdiv float 1.000000e+00, %i.d
  store float %i.e, ptr %2, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt20UniformInfiniteLight8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(180) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !24, !alias.scope !641
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !27, !alias.scope !641
  store i8 0, ptr %i.c, align 8, !tbaa !28, !alias.scope !641
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_9LightTypeEJRKNS_15MediumInterfaceERKNS_9TransformEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(128) %i.b)
          to label %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !29, !alias.scope !641 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !28, !alias.scope !641
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit:  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !24, !alias.scope !642
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !27, !alias.scope !642
  store i8 0, ptr %i.k, align 8, !tbaa !28, !alias.scope !642
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKPKNS_22DenselySampledSpectrumEEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumEEEES6_PKcDpOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !642 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.k
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.k, align 8, !tbaa !28, !alias.scope !642
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #35
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumEEEES6_PKcDpOT_.exit: ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumEEEES6_PKcDpOT_.exit
  %i.t = load i64, ptr %i.c, align 8, !tbaa !28
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumEEEES6_PKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.x = load i64, ptr %i.c, align 8, !tbaa !28
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt18ImageInfiniteLightC2ENS_9TransformENS_5ImageEPKNS_13RGBColorSpaceEfNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(592) initializes((0, 132), (136, 164), (168, 328), (336, 448), (456, 460), (464, 576), (584, 588)) %0, ptr nofree noundef readonly byval(%"class.pbrt::Transform") align 8 captures(none) %1, ptr nofree noundef align 8 captures(none) dereferenceable(152) %2, ptr noundef %3, float noundef %4, ptr nofree noundef align 8 dereferenceable(32) %5, ptr %6) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %7 = alloca %"class.pbrt::Bounds2", align 8     ; 5 uses
  %8 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 12 uses
  %9 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 28 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.pbrt::Point2.31", align 8  ; 4 uses
  %11 = alloca %"class.pbrt::Point2.31", align 8  ; 4 uses
  %12 = alloca %"class.pbrt::Array2D", align 8    ; 14 uses
  %13 = alloca %"class.pbrt::PiecewiseConstant2D", align 8 ; 16 uses
  %14 = alloca %"class.pbrt::PiecewiseConstant2D", align 8 ; 16 uses
  store i32 3, ptr %0, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL9numLightsE) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = add nsw i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.h, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  store i64 %i.k, ptr %i.i, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load <2 x i64>, ptr %i.n, align 8, !tbaa !30
  store <2 x i64> %i.o, ptr %i.m, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113
  store ptr %i.q, ptr %i.l, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.r, align 8, !tbaa !115
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !28
  store <2 x i64> %i.t, ptr %i.r, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.x = load <2 x i64>, ptr %i.w, align 8, !tbaa !30
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118
  store ptr %i.z, ptr %i.u, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !54
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !tbaa !30
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !122
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !54
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 288
end_hunk_5
begin_hunk_6_@_ZNK4pbrt18ImageInfiniteLight8SampleLeENS_6Point2IfEES2_RNS_18SampledWavelengthsEf:bb.a
  br i1 %or.cond.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.n) ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = fcmp ogt <2 x float> %i.s, %shift
  %i.u = extractelement <2 x i1> %i.t, i64 0
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = fdiv float %i.q, %i.o
  %i.w = fmul float %i.v, f0x3F490FDB
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = fdiv float %i.o, %i.q
  %i.y = fmul float %i.x, f0x3F490FDB
  %i.z = fsub float f0x3FC90FDB, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.024.i = phi float [ %i.w, %bb.c ], [ %i.z, %bb.d ] ; 2 uses
  %.0.i = phi float [ %i.o, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %i.aa = call noundef float @cosf(float noundef %.024.i) #37
  %i.ab = call noundef float @sinf(float noundef %.024.i) #37
  %i.ac = fmul float %.0.i, %i.aa
  %i.ad = fmul float %.0.i, %i.ab
  %.sroa.0.0.vec.insert.i.i29.i = insertelement <2 x float> poison, float %i.ac, i64 0
  %.sroa.0.4.vec.insert.i.i30.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i, float %i.ad, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.sroa.035.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i, %bb.e ], [ zeroinitializer, %bb.a ] ; 4 uses
  %i.ae = shufflevector <5 x float> %i.g, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.fca.0.extract74 = extractvalue { <2 x float>, float } %i.d, 0 ; 3 uses
  %i.af = shufflevector <2 x float> %.fca.0.extract74, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = fmul <2 x float> %.fca.0.extract74, %i.j ; 2 uses
  %shift173 = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ag, %shift173
  %i.ah = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.fca.1.extract75 = extractvalue { <2 x float>, float } %i.d, 1 ; 2 uses
  %i.ai = fmul float %.fca.1.extract75, %i.l
  %i.aj = fadd float %i.ah, %i.ai                 ; 5 uses
  %i.ak = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.aj) ; 5 uses
  %i.al = fadd float %i.aj, %i.ak
  %i.am = fdiv float -1.000000e+00, %i.al         ; 2 uses
  %i.an = fneg float %i.ak
  %i.ao = fneg float %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !253 ; 5 uses
  %.sroa.053.0.vec.extract = extractelement <2 x float> %.sroa.035.0.i, i64 0
  %i.as = fmul float %i.aj, 0.000000e+00
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.au = load float, ptr %i.at, align 4, !tbaa !87
  %i.av = fmul float %i.aj, %i.ar
  %i.aw = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.ae, <4 x float> %i.aw, <2 x i32> <i32 0, i32 4>
  %i.ay = fmul <2 x float> %i.ax, %.fca.0.extract74
  %i.az = shufflevector <5 x float> %i.g, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.ba = fmul <2 x float> %i.af, %i.az
  %i.bb = fadd <2 x float> %i.ba, %i.ay
  %i.bc = insertelement <2 x float> poison, float %.fca.1.extract75, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = shufflevector <2 x float> %i.h, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <5 x float> %i.g, <5 x float> %i.be, <2 x i32> <i32 2, i32 6>
  %i.bg = fmul <2 x float> %i.bd, %i.bf
  %i.bh = fadd <2 x float> %i.bb, %i.bg           ; 11 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = fmul float %i.bi, %i.an
  %shift179 = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fmul <2 x float> %i.bh, %shift179
  %i.bk = extractelement <2 x float> %foldExtExtBinop180, i64 0
  %i.bl = fmul float %i.bk, %i.am                 ; 2 uses
  %i.bm = fmul float %i.ak, %i.bl
  %foldExtExtBinop175 = fmul <2 x float> %i.bh, %i.bh
  %i.bn = shufflevector <2 x float> %foldExtExtBinop175, <2 x float> %i.bh, <2 x i32> <i32 0, i32 3>
  %i.bo = insertelement <2 x float> %i.bh, float %i.ak, i64 0
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.am, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bp, %i.br
  %i.bt = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ak, i64 1
  %i.bu = fadd <2 x float> %i.bt, %i.bs
  %i.bv = fneg <2 x float> %i.bh
  %i.bw = fmul float %i.bj, %.sroa.053.0.vec.extract
  %i.bx = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bl, i64 1
  %i.bz = fmul <2 x float> %i.by, %.sroa.035.0.i
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = fmul <2 x float> %i.bu, %.sroa.035.0.i
  %i.cc = fadd <2 x float> %i.ca, %i.cb
  %foldExtExtBinop177 = fmul <2 x float> %i.bh, %.sroa.035.0.i
  %i.cd = extractelement <2 x float> %foldExtExtBinop177, i64 1
  %i.ce = fsub float %i.bw, %i.cd
  %i.cf = fmul <2 x float> %i.bh, zeroinitializer
  %i.cg = fadd <2 x float> %i.cf, %i.cc
  %i.ch = fadd float %i.as, %i.ce
  %i.ci = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fmul <2 x float> %i.cj, %i.cg
  %i.cl = fmul float %i.ar, %i.ch
  %i.cm = load <2 x float>, ptr %i.ap, align 4, !tbaa !77
  %i.cn = fadd <2 x float> %i.cm, %i.ck
  %i.co = fadd float %i.au, %i.cl
  %i.cp = fmul <2 x float> %i.bh, %i.cj
  %i.cq = fadd <2 x float> %i.cp, %i.cn
  %i.cr = fadd float %i.av, %i.co
  %i.cs = load float, ptr %i.a, align 4, !tbaa !77
  %i.ct = fmul float %i.ar, %i.ar
  %i.cu = fmul float %i.ct, f0x40490FDB
  %i.cv = call { <2 x float>, <2 x float> } @_ZNK4pbrt18ImageInfiniteLight7ImageLeENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(592) %1, <2 x float> %i.c, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.cw = extractvalue { <2 x float>, <2 x float> } %i.cv, 0
  %i.cx = extractvalue { <2 x float>, <2 x float> } %i.cv, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.cy, align 8, !tbaa !100
  store <2 x float> %i.cw, ptr %0, align 8
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cx, ptr %.sroa.5137.0..sroa_idx, align 8, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.cq, ptr %i.cz, align 8
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cr, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.bv, ptr %.sroa.6.sroa.6.0..sroa_idx, align 4
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ao, ptr %.sroa.6.sroa.7.0..sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %5, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.da, align 8, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.db, align 8, !tbaa !102
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dd = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.cs, i64 1
  %i.de = insertelement <2 x float> <float poison, float f0x41490FDB>, float %i.cu, i64 0
  %i.df = fdiv <2 x float> %i.dd, %i.de
  store <2 x float> %i.df, ptr %i.dc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt18ImageInfiniteLight7ImageLeENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(592) %0, <2 x float> %1, ptr noundef nonnull align 4 dereferenceable(32) %2) local_unnamed_addr #10 comdat align 2 {
_ZN4pbrt3RGBixEi.exit.2:
  %3 = alloca %"class.pbrt::RGBIlluminantSpectrum", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !161
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul float %.sroa.03.0.vec.extract.i, %i.e
  %i.g = fptosi float %i.f to i32
  %i.h = load i32, ptr %i.c, align 8, !tbaa !162
  %i.i = sitofp i32 %i.h to float
  %i.j = fmul float %.sroa.03.4.vec.extract.i, %i.i
  %i.k = fptosi float %i.j to i32
  %.sroa.4.0.insert.ext.i = zext i32 %i.k to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.g to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.l = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 12884901891)
  %.sroa.024.0.vec.insert = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = load i32, ptr %i.b, align 4, !tbaa !161
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %.sroa.03.0.vec.extract.i, %i.n
  %i.p = fptosi float %i.o to i32
  %i.q = load i32, ptr %i.c, align 8, !tbaa !162
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %.sroa.03.4.vec.extract.i, %i.r
  %i.t = fptosi float %i.s to i32
  %.sroa.4.0.insert.ext.i.1 = zext i32 %i.t to i64
  %.sroa.4.0.insert.shift.i.1 = shl nuw i64 %.sroa.4.0.insert.ext.i.1, 32
  %.sroa.0.0.insert.ext.i.1 = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.4.0.insert.shift.i.1, %.sroa.0.0.insert.ext.i.1
  %i.u = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.1, i32 noundef 1, i64 12884901891)
  %.sroa.024.4.vec.insert = insertelement <2 x float> %.sroa.024.0.vec.insert, float %i.u, i64 1 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.b, align 4, !tbaa !78
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %i.x = fmul <2 x float> %1, %i.w                ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fptosi float %i.y to i32
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fptosi float %i.aa to i32
  %.sroa.4.0.insert.ext.i.2 = zext i32 %i.ab to i64
  %.sroa.4.0.insert.shift.i.2 = shl nuw i64 %.sroa.4.0.insert.ext.i.2, 32
  %.sroa.0.0.insert.ext.i.2 = zext i32 %i.z to i64
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.4.0.insert.shift.i.2, %.sroa.0.0.insert.ext.i.2
  %i.ac = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.2, i32 noundef 2, i64 12884901891) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !251
  %i.af = fcmp ogt <2 x float> %.sroa.024.4.vec.insert, zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x float> %.sroa.024.4.vec.insert, <2 x float> zeroinitializer
  %i.ah = fcmp ogt float %i.ac, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ah, float %i.ac, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(152) %i.ae, <2 x float> %i.ag, float %.sroa.speculated.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312
  %4 = load <1 x float>, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !187 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.al = load float, ptr %3, align 8, !tbaa !183 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !184 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !185 ; 4 uses
  %i.ar = load float, ptr %i.am, align 4, !tbaa !186 ; 4 uses
  %i.as = load float, ptr %2, align 4, !tbaa !77  ; 2 uses
  %i.at = call noundef float @llvm.fma.f32(float %i.as, float %i.ar, float %i.aq)
  %i.au = call noundef float @llvm.fma.f32(float %i.as, float %i.at, float %i.ao) ; 5 uses
  %i.av = call float @llvm.fabs.f32(float %i.au)
  %i.aw = fcmp oeq float %i.av, +inf
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ax = fcmp ogt float %i.au, 0.000000e+00
  %i.ay = uitofp i1 %i.ax to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

bb.c:                                             ; preds = %bb.a
  %i.az = fmul float %i.au, %i.au
  %i.ba = fadd float %i.az, 1.000000e+00
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.ba)
  %i.bb = fmul float %sqrt.i.i.i, 2.000000e+00
  %i.bc = fdiv float %i.au, %i.bb
  %i.bd = fadd float %i.bc, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i:       ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi float [ %i.ay, %bb.b ], [ %i.bd, %bb.c ]
  %i.be = fmul float %i.al, %.0.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !77 ; 2 uses
  %i.bh = call noundef float @llvm.fma.f32(float %i.bg, float %i.ar, float %i.aq)
  %i.bi = call noundef float @llvm.fma.f32(float %i.bg, float %i.bh, float %i.ao) ; 5 uses
  %i.bj = call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp oeq float %i.bj, +inf
  br i1 %i.bk, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.bl = fmul float %i.bi, %i.bi
  %i.bm = fadd float %i.bl, 1.000000e+00
  %sqrt.i.i.1.i = call float @llvm.sqrt.f32(float %i.bm)
  %i.bn = fmul float %sqrt.i.i.1.i, 2.000000e+00
  %i.bo = fdiv float %i.bi, %i.bn
  %i.bp = fadd float %i.bo, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

bb.e:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.bq = fcmp ogt float %i.bi, 0.000000e+00
  %i.br = uitofp i1 %i.bq to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i:     ; preds = %bb.e, %bb.d
  %.0.i.i.1.i = phi float [ %i.br, %bb.e ], [ %i.bp, %bb.d ]
  %i.bs = fmul float %i.al, %.0.i.i.1.i
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !77 ; 2 uses
  %i.bv = call noundef float @llvm.fma.f32(float %i.bu, float %i.ar, float %i.aq)
  %i.bw = call noundef float @llvm.fma.f32(float %i.bu, float %i.bv, float %i.ao) ; 5 uses
  %i.bx = call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp oeq float %i.bx, +inf
  br i1 %i.by, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.bz = fmul float %i.bw, %i.bw
  %i.ca = fadd float %i.bz, 1.000000e+00
  %sqrt.i.i.2.i = call float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fmul float %sqrt.i.i.2.i, 2.000000e+00
  %i.cc = fdiv float %i.bw, %i.cb
  %i.cd = fadd float %i.cc, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

bb.g:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.ce = fcmp ogt float %i.bw, 0.000000e+00
  %i.cf = uitofp i1 %i.ce to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i:     ; preds = %bb.g, %bb.f
  %.0.i.i.2.i = phi float [ %i.cf, %bb.g ], [ %i.cd, %bb.f ]
  %i.cg = fmul float %i.al, %.0.i.i.2.i
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !77 ; 2 uses
  %i.cj = call noundef float @llvm.fma.f32(float %i.ci, float %i.ar, float %i.aq)
  %i.ck = call noundef float @llvm.fma.f32(float %i.ci, float %i.cj, float %i.ao) ; 5 uses
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fcmp oeq float %i.cl, +inf
  br i1 %i.cm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.cn = fmul float %i.ck, %i.ck
  %i.co = fadd float %i.cn, 1.000000e+00
  %sqrt.i.i.3.i = call float @llvm.sqrt.f32(float %i.co)
  %i.cp = fmul float %sqrt.i.i.3.i, 2.000000e+00
  %i.cq = fdiv float %i.ck, %i.cp
  %i.cr = fadd float %i.cq, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

bb.i:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.cs = fcmp ogt float %i.ck, 0.000000e+00
  %i.ct = uitofp i1 %i.cs to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i:     ; preds = %bb.i, %bb.h
  %.0.i.i.3.i = phi float [ %i.ct, %bb.i ], [ %i.cr, %bb.h ]
  %i.cu = fmul float %i.al, %.0.i.i.3.i
  %i.cv = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 4 dereferenceable(32) %2) ; 2 uses
  %i.cw = extractvalue { <2 x float>, <2 x float> } %i.cv, 0
  %i.cx = extractvalue { <2 x float>, <2 x float> } %i.cv, 1
  %i.cy = insertelement <2 x float> poison, float %i.be, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.bs, i64 1
  %i.da = fmul <2 x float> %i.cz, %i.cw
  %i.db = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.cu, i64 1
  %i.dd = fmul <2 x float> %i.dc, %i.cx
  br label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit

_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i
  %.sroa.06.0.i = phi <2 x float> [ %i.da, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %.sroa.4.0.i = phi <2 x float> [ %i.dd, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.de = shufflevector <1 x float> %4, <1 x float> poison, <4 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %.sroa.06.0.i, <2 x float> %.sroa.4.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dg = fmul <4 x float> %i.de, %i.df           ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dh, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %i.di, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt18ImageInfiniteLight6PDF_LeERKNS_3RayEPfS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(592) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 3 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4 ; 2 uses
  %i.b = shufflevector <2 x float> %.sroa.012.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !77
  %i.g = fmul <2 x float> %.sroa.012.0.copyload, %i.f ; 2 uses
  %shift = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.g, %shift
  %i.h = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.j = load float, ptr %i.i, align 4, !tbaa !77
  %i.k = fmul float %.sroa.213.0.copyload, %i.j
  %i.l = fadd float %i.h, %i.k
  %i.m = load <5 x float>, ptr %i.c, align 4, !tbaa !77 ; 3 uses
  %i.n = shufflevector <5 x float> %i.m, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <5 x float> %i.m, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.p = fmul <2 x float> %i.b, %i.o
  %i.q = load <2 x float>, ptr %i.d, align 8, !tbaa !77 ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.s = shufflevector <4 x float> %i.n, <4 x float> %i.r, <2 x i32> <i32 0, i32 4>
  %i.t = fmul <2 x float> %.sroa.012.0.copyload, %i.s
  %i.u = fadd <2 x float> %i.p, %i.t
  %i.v = insertelement <2 x float> poison, float %.sroa.213.0.copyload, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x float> %i.q, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.y = shufflevector <5 x float> %i.m, <5 x float> %i.x, <2 x i32> <i32 2, i32 6>
  %i.z = fmul <2 x float> %i.w, %i.y
  %i.aa = fadd <2 x float> %i.u, %i.z
  %i.ab = fneg <2 x float> %i.aa
  %i.ac = fneg float %i.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ae = tail call <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %i.ab, float %i.ac)
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.ad, align 8 ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 1 ; 2 uses
  %i.af = fsub <2 x float> %i.ae, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !179 ; 2 uses
  %i.ai = fcmp ogt float %i.ah, %.sroa.0.0.vec.extract.i.i.i
  %i.aj = fsub float %i.ah, %.sroa.0.0.vec.extract.i.i.i
  %i.ak = extractelement <2 x float> %i.af, i64 0
  %i.al = fdiv float %i.ak, %i.aj
  %.sroa.01.0.vec.insert.i.i = insertelement <2 x float> %i.af, float %i.al, i64 0
  %.sroa.01.0.i.i = select i1 %i.ai, <2 x float> %.sroa.01.0.vec.insert.i.i, <2 x float> %i.af ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.an = load float, ptr %i.am, align 4, !tbaa !180 ; 2 uses
  %i.ao = fcmp ogt float %i.an, %.sroa.0.4.vec.extract.i.i.i
  %i.ap = fsub float %i.an, %.sroa.0.4.vec.extract.i.i.i
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.i.i, i64 1
  %i.aq = fdiv float %.sroa.01.4.vec.extract.i.i, %i.ap
  %.sroa.01.4.vec.insert.i.i = insertelement <2 x float> %.sroa.01.0.i.i, float %i.aq, i64 1
  %.sroa.01.1.i.i = select i1 %i.ao, <2 x float> %.sroa.01.4.vec.insert.i.i, <2 x float> %.sroa.01.0.i.i ; 2 uses
  %.sroa.0.0.vec.extract.i4.i = extractelement <2 x float> %.sroa.01.1.i.i, i64 0
  %.sroa.0.4.vec.extract.i5.i = extractelement <2 x float> %.sroa.01.1.i.i, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !166 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %i.av = uitofp i64 %i.au to float
  %i.aw = fmul float %.sroa.0.0.vec.extract.i4.i, %i.av
  %i.ax = fptosi float %i.aw to i32               ; 2 uses
  %i.ay = add i64 %i.au, -1
  %i.az = icmp slt i32 %i.ax, 0
  %i.ba = sext i32 %i.ax to i64
  %spec.select11.i.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %i.bd = uitofp i64 %i.bc to float
  %i.be = fmul float %.sroa.0.4.vec.extract.i5.i, %i.bd
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = add i64 %i.bc, -1
  %i.bh = icmp slt i32 %i.bf, 0
  %i.bi = sext i32 %i.bf to i64
  %spec.select11.i6.i = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bi)
  %i.bj = shl i64 %spec.select11.i6.i, 32
  %i.bk = ashr exact i64 %i.bj, 32
  %i.bl = select i1 %i.bh, i64 0, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.as, i64 %i.bl
  %i.bn = shl i64 %spec.select11.i.i, 32
  %i.bo = ashr exact i64 %i.bn, 32
  %i.bp = select i1 %i.az, i64 0, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !71
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !140
  %i.bw = fdiv float %i.bt, %i.bv
  %i.bx = fdiv float %i.bw, f0x41490FDB
  store float %i.bx, ptr %3, align 4, !tbaa !77
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bz = load float, ptr %i.by, align 8, !tbaa !253 ; 2 uses
  %i.ca = fmul float %i.bz, %i.bz
  %i.cb = fmul float %i.ca, f0x40490FDB
  %i.cc = fdiv float 1.000000e+00, %i.cb
  store float %i.cc, ptr %2, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt18ImageInfiniteLight8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(592) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !24, !alias.scope !663
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !27, !alias.scope !663
  store i8 0, ptr %i.c, align 8, !tbaa !28, !alias.scope !663
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_9LightTypeEJRKNS_15MediumInterfaceERKNS_9TransformEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(128) %i.b)
          to label %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !29, !alias.scope !663 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !28, !alias.scope !663
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit:  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !24, !alias.scope !664
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !27, !alias.scope !664
  store i8 0, ptr %i.k, align 8, !tbaa !28, !alias.scope !664
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKfEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKfEEES6_PKcDpOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !664 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.k
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.k, align 8, !tbaa !28, !alias.scope !664
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #35
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKfEEES6_PKcDpOT_.exit: ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKfEEES6_PKcDpOT_.exit
  %i.t = load i64, ptr %i.c, align 8, !tbaa !28
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKfEEES6_PKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.x = load i64, ptr %i.c, align 8, !tbaa !28
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume
end_hunk_6
begin_hunk_7_@_ZN4pbrt24PortalImageInfiniteLightC2ERKNS_9TransformENS_5ImageEPKNS_13RGBColorSpaceEfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS_6Point3IfEESaISI_EEN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.by = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !28
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !145 ; 3 uses
  %.not424 = icmp eq i64 %i.ce, 0
  br i1 %.not424, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  invoke void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef nonnull @.str.74, ptr noundef nonnull align 8 dereferenceable(32) %5) #36
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

bb.h:                                             ; preds = %._crit_edge.i.i223
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !29 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.h
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !28
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !28
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.1
  %i.ct = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !28
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.2
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.cj

bb.i:                                             ; preds = %_ZNK4pbrt16ImageChannelDesc10IsIdentityEv.exit, %bb.e
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 3, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 %i.ce, ptr %i.c, align 8, !tbaa !30
  %i.cz = icmp eq i64 %i.ce, 3
  br i1 %i.cz, label %.lr.ph.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4pbrt8LogFatalIJRA2_KcRA19_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef 1124, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(2) @.str.30, ptr noundef nonnull align 1 dereferenceable(19) @.str.31, ptr noundef nonnull align 1 dereferenceable(2) @.str.30, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str.31, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #36
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %.body

.lr.ph.i:                                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null           ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.de = select i1 %.not.i.i.i, ptr %i.dd, ptr %i.dc
  %i.df = load i32, ptr %i.de, align 4, !tbaa !78
  %.not.i = icmp eq i32 %i.df, 0
  br i1 %.not.i, label %bb.n, label %_ZNK4pbrt16ImageChannelDesc10IsIdentityEv.exit

bb.n:                                             ; preds = %.lr.ph.i
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %13, i64 20
  %.sroa.gep523 = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %.sroa.sel = select i1 %.not.i.i.i, ptr %.sroa.gep, ptr %.sroa.gep523
  %i.dg = load i32, ptr %.sroa.sel, align 4, !tbaa !78
  %.not.i.1 = icmp eq i32 %i.dg, 1
  br i1 %.not.i.1, label %bb.o, label %_ZNK4pbrt16ImageChannelDesc10IsIdentityEv.exit

bb.o:                                             ; preds = %bb.n
  %.sroa.gep524 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.sroa.gep525 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.sel526 = select i1 %.not.i.i.i, ptr %.sroa.gep524, ptr %.sroa.gep525
  %i.dh = load i32, ptr %.sroa.sel526, align 4, !tbaa !78
  %.not.i.2 = icmp eq i32 %i.dh, 2
  br i1 %.not.i.2, label %bb.p, label %_ZNK4pbrt16ImageChannelDesc10IsIdentityEv.exit

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.di, align 4 ; 4 uses
  %.sroa.0150.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.3.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %.not = icmp eq i32 %.sroa.0150.0.extract.trunc, %.sroa.3.0.extract.trunc
  br i1 %.not, label %bb.u, label %bb.r

_ZNK4pbrt16ImageChannelDesc10IsIdentityEv.exit:   ; preds = %bb.o, %bb.n, %.lr.ph.i
  invoke void @_ZN4pbrt8LogFatalIJRA25_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef 1125, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(25) @.str.33) #36
          to label %bb.q unwind label %bb.i

bb.q:                                             ; preds = %_ZNK4pbrt16ImageChannelDesc10IsIdentityEv.exit
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  store i64 %.sroa.0.0.copyload.i, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  store i64 %.sroa.0.0.copyload.i, ptr %16, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 4
  invoke void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiEEEvPKcDpOT_(ptr noundef nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.dj) #36
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %.body

bb.u:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !266
  %i.dn = load ptr, ptr %6, align 8, !tbaa !267   ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 2 uses
  %.not202 = icmp eq i64 %i.dq, 48
  br i1 %.not202, label %.preheader.preheader, label %bb.v

.preheader.preheader:                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.dn, i64 12, i1 false)
  %i.dr = load ptr, ptr %6, align 8, !tbaa !267
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dt, ptr noundef nonnull align 4 dereferenceable(12) %i.ds, i64 12, i1 false)
  %i.du = load ptr, ptr %6, align 8, !tbaa !267
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dw, ptr noundef nonnull align 4 dereferenceable(12) %i.dv, i64 12, i1 false)
  %i.dx = load ptr, ptr %6, align 8, !tbaa !267
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dz, ptr noundef nonnull align 4 dereferenceable(12) %i.dy, i64 12, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.0137.0.copyload = load <2 x float>, ptr %i.k, align 8 ; 4 uses
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0117.0.copyload = load <2 x float>, ptr %i.ea, align 4 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 184
  %25 = load <1 x float>, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 188
  %.sroa.098.0.copyload = load <2 x float>, ptr %i.ef, align 4 ; 8 uses
  %.sroa.299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 196
  %26 = load <2 x float>, ptr %.sroa.299.0..sroa_idx, align 4
  %i.eg = load <2 x float>, ptr %.sroa.2138.0..sroa_idx, align 8 ; 3 uses
  %i.eh = load float, ptr %i.eb, align 8, !tbaa !86 ; 2 uses
  %i.ei = load float, ptr %i.ec, align 4, !tbaa !87
  %i.ej = shufflevector <2 x float> %.sroa.098.0.copyload, <2 x float> %i.eg, <2 x i32> <i32 0, i32 3>
  %i.ek = shufflevector <2 x float> %.sroa.0137.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fsub <2 x float> %i.ej, %i.ek           ; 2 uses
  %i.em = insertelement <2 x float> %.sroa.098.0.copyload, float %i.eh, i64 1
  %i.en = fsub <2 x float> %i.em, %.sroa.0137.0.copyload
  %i.eo = shufflevector <2 x float> %.sroa.098.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ep = insertelement <2 x float> %i.eo, float %i.eh, i64 1
  %i.eq = shufflevector <2 x float> %.sroa.0137.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.er = fsub <2 x float> %i.ep, %i.eq           ; 2 uses
  %i.es = shufflevector <2 x float> %.sroa.098.0.copyload, <2 x float> %i.eg, <2 x i32> <i32 3, i32 1>
  %i.et = fsub <2 x float> %i.es, %.sroa.0137.0.copyload
  %i.eu = insertelement <2 x float> %26, float %i.ei, i64 1 ; 2 uses
  %i.ev = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fsub <2 x float> %i.eu, %i.ev           ; 3 uses
  %i.ex = fmul <2 x float> %i.el, %i.el
  %i.ey = fmul <2 x float> %i.er, %i.er
  %i.ez = fadd <2 x float> %i.ex, %i.ey
  %i.fa = fmul <2 x float> %i.ew, %i.ew
  %i.fb = fadd <2 x float> %i.fa, %i.ez
  %i.fc = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fb) ; 3 uses
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = fdiv <2 x float> %i.et, %i.fd           ; 10 uses
  %i.ff = fdiv <2 x float> %i.en, %i.fc           ; 12 uses
  %i.fg = shufflevector <2 x float> %i.fe, <2 x float> %i.ff, <2 x i32> <i32 0, i32 3>
  %i.fh = load <2 x float>, ptr %i.ed, align 8, !tbaa !77 ; 4 uses
  %i.fi = shufflevector <2 x float> %.sroa.098.0.copyload, <2 x float> %.sroa.0117.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.fj = fsub <2 x float> %i.fh, %i.fi
  %i.fk = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = shufflevector <2 x float> %.sroa.098.0.copyload, <2 x float> %.sroa.0117.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fm = fsub <2 x float> %i.fk, %i.fl           ; 2 uses
  %i.fn = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = shufflevector <2 x float> %.sroa.098.0.copyload, <2 x float> %.sroa.0117.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fp = fsub <2 x float> %i.fn, %i.fo           ; 2 uses
  %i.fq = shufflevector <2 x float> %.sroa.0117.0.copyload, <2 x float> %.sroa.098.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.fr = fsub <2 x float> %i.fh, %i.fq
  %i.fs = fmul <2 x float> %i.fm, %i.fm
  %i.ft = fmul <2 x float> %i.fp, %i.fp
  %i.fu = fadd <2 x float> %i.fs, %i.ft
  %i.fv = shufflevector <1 x float> %25, <1 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fsub <2 x float> %i.fv, %i.eu           ; 4 uses
  %i.fx = fmul <2 x float> %i.fw, %i.fw
  %i.fy = fadd <2 x float> %i.fx, %i.fu
  %i.fz = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fy) ; 4 uses
  %foldExtExtBinop = fdiv <2 x float> %i.fw, %i.fz ; 2 uses
  %i.ga = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.gb = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gc = fdiv <2 x float> %i.fr, %i.gb           ; 5 uses
  %i.gd = fdiv <2 x float> %i.fj, %i.fz           ; 5 uses
  %foldExtExtBinop484 = fdiv <2 x float> %i.fw, %i.fz
  %i.ge = extractelement <2 x float> %foldExtExtBinop484, i64 1 ; 3 uses
  %i.gf = fdiv <2 x float> %i.ew, %i.fc           ; 9 uses
  %i.gg = shufflevector <2 x float> %i.ff, <2 x float> %i.fe, <2 x i32> <i32 0, i32 3>
  %i.gh = extractelement <2 x float> %i.fe, i64 0 ; 2 uses
  %foldExtExtBinop486 = fmul <2 x float> %i.fe, %i.gd
  %i.gi = extractelement <2 x float> %i.ff, i64 1
  %foldExtExtBinop518 = fmul <2 x float> %i.ff, %i.gc
  %shift520 = shufflevector <2 x float> %foldExtExtBinop518, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop521 = fadd <2 x float> %foldExtExtBinop486, %shift520
  %i.gj = extractelement <2 x float> %foldExtExtBinop521, i64 0
  %i.gk = extractelement <2 x float> %i.gf, i64 1 ; 4 uses
  %i.gl = fmul float %i.gk, %i.ga
  %i.gm = fadd float %i.gl, %i.gj
  %i.gn = fadd float %i.gm, -1.000000e+00
  %i.go = call noundef float @llvm.fabs.f32(float %i.gn)
  %i.gp = fpext float %i.go to double
  %i.gq = fcmp ogt double %i.gp, 1.000000e-03
  br i1 %i.gq, label %bb.z, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.gr = sdiv exact i64 %i.dq, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 %i.gr, ptr %i.d, align 8, !tbaa !30
  invoke void @_ZN4pbrt9ErrorExitIJmEEEvPKcDpOT_(ptr noundef nonnull @.str.75, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #36
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %.body

bb.y:                                             ; preds = %.preheader.preheader
  %foldExtExtBinop488 = fmul <2 x float> %i.gc, %i.ff
  %foldExtExtBinop490 = fmul <2 x float> %i.gd, %i.fe
  %shift = shufflevector <2 x float> %foldExtExtBinop490, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop492 = fadd <2 x float> %foldExtExtBinop488, %shift
  %i.gt = extractelement <2 x float> %foldExtExtBinop492, i64 0
  %i.gu = extractelement <2 x float> %i.gf, i64 0
  %i.gv = fmul float %i.ge, %i.gu
  %i.gw = fadd float %i.gv, %i.gt
  %i.gx = fadd float %i.gw, -1.000000e+00
  %i.gy = call noundef float @llvm.fabs.f32(float %i.gx)
  %i.gz = fpext float %i.gy to double
  %i.ha = fcmp ogt double %i.gz, 1.000000e-03
  br i1 %i.ha, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y, %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.hb, ptr %12, align 8, !tbaa !24, !alias.scope !674
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.hc, align 8, !tbaa !27, !alias.scope !674
  store i8 0, ptr %i.hb, align 8, !tbaa !28, !alias.scope !674
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 %12, ptr noundef nonnull @.str.76)
          to label %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.he = load ptr, ptr %12, align 8, !tbaa !29, !alias.scope !674 ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.hb
  br i1 %i.hf, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aa
  %i.hg = load i64, ptr %i.hb, align 8, !tbaa !28, !alias.scope !674
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #35
  br label %.body

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.z
  %i.hi = load ptr, ptr %12, align 8, !tbaa !29
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.hi)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.hj = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.hb
  br i1 %i.hk, label %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ab
  %i.hl = load i64, ptr %i.hb, align 8, !tbaa !28
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #35
  br label %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit

bb.ac:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.hn = landingpad { ptr, i32 }
          cleanup
  %i.ho = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hb
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.ac
  %i.hq = load i64, ptr %i.hb, align 8, !tbaa !28
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %.body

_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit:                ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit, %bb.y
  %foldExtExtBinop494 = fmul <2 x float> %i.fe, %i.gc
  %foldExtExtBinop496 = fmul <2 x float> %i.ff, %i.gd
  %shift498 = shufflevector <2 x float> %foldExtExtBinop496, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop499 = fadd <2 x float> %foldExtExtBinop494, %shift498
  %i.hs = extractelement <2 x float> %foldExtExtBinop499, i64 0
  %i.ht = fmul float %i.gk, %i.ge
  %i.hu = fadd float %i.ht, %i.hs
  %i.hv = call noundef float @llvm.fabs.f32(float %i.hu)
  %i.hw = fpext float %i.hv to double
  %i.hx = fcmp ogt double %i.hw, 1.000000e-03
  br i1 %i.hx, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hy = fmul <2 x float> %i.gd, %i.gc           ; 2 uses
  %shift501 = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop502 = fadd <2 x float> %i.hy, %shift501
  %i.hz = extractelement <2 x float> %foldExtExtBinop502, i64 0
  %i.ia = fmul float %i.ge, %i.ga
  %i.ib = fadd float %i.ia, %i.hz
  %i.ic = call noundef float @llvm.fabs.f32(float %i.ib)
  %i.id = fpext float %i.ic to double
  %i.ie = fcmp ogt double %i.id, 1.000000e-03
  br i1 %i.ie, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %foldExtExtBinop504 = fmul <2 x float> %i.gd, %i.ff
  %foldExtExtBinop506 = fmul <2 x float> %i.gc, %i.fe
  %shift508 = shufflevector <2 x float> %foldExtExtBinop506, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop509 = fadd <2 x float> %foldExtExtBinop504, %shift508
  %foldExtExtBinop511 = fmul <2 x float> %foldExtExtBinop, %i.gf
  %foldExtExtBinop513 = fadd <2 x float> %foldExtExtBinop511, %foldExtExtBinop509
  %i.if = extractelement <2 x float> %foldExtExtBinop513, i64 0
  %i.ig = call noundef float @llvm.fabs.f32(float %i.if)
  %i.ih = fpext float %i.ig to double
  %i.ii = fcmp ogt double %i.ih, 1.000000e-03
  br i1 %i.ii, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ij = extractelement <2 x float> %i.gf, i64 0
  %i.ik = fmul <2 x float> %i.ff, %i.fe           ; 2 uses
  %shift515 = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop516 = fadd <2 x float> %i.ik, %shift515
  %i.il = extractelement <2 x float> %foldExtExtBinop516, i64 0
  %i.im = fmul float %i.gk, %i.ij
  %i.in = fadd float %i.im, %i.il
  %i.io = call noundef float @llvm.fabs.f32(float %i.in)
  %i.ip = fpext float %i.io to double
  %i.iq = fcmp ogt double %i.ip, 1.000000e-03
  br i1 %i.iq, label %bb.ah, label %._crit_edge.i.i318

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.ir, ptr %11, align 8, !tbaa !24, !alias.scope !675
  %i.is = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.is, align 8, !tbaa !27, !alias.scope !675
  store i8 0, ptr %i.ir, align 8, !tbaa !28, !alias.scope !675
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 %11, ptr noundef nonnull @.str.76)
          to label %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i306 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iu = load ptr, ptr %11, align 8, !tbaa !29, !alias.scope !675 ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.ir
  br i1 %i.iv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i302: ; preds = %bb.ai
  %i.iw = load i64, ptr %i.ir, align 8, !tbaa !28, !alias.scope !675
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #35
  br label %.body

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i306: ; preds = %bb.ah
  %i.iy = load ptr, ptr %11, align 8, !tbaa !29
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.iy)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i306
end_hunk_7
begin_hunk_8_@_ZN4pbrt27WindowedPiecewiseConstant2DC2ENS_7Array2DIfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %.sroa.speculated4.i14.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 2 uses
  %.sroa.speculated.i15.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 0) ; 2 uses
  %.sroa.2.0.insert.ext.i16.i.i.i = zext nneg i32 %.sroa.speculated.i15.i.i.i to i64
  %.sroa.2.0.insert.shift.i17.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i16.i.i.i, 32
  %.sroa.09.0.insert.ext.i18.i.i.i = zext nneg i32 %.sroa.speculated4.i14.i.i.i to i64
  %.sroa.09.0.insert.insert.i19.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i17.i.i.i, %.sroa.09.0.insert.ext.i18.i.i.i
  store i64 %.sroa.09.0.insert.insert.i.i.i.i, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.09.0.insert.insert.i19.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.cast.i.i.i = ptrtoint ptr %2 to i64
  store i64 %.cast.i.i.i, ptr %i.l, align 8, !tbaa !54
  %i.m = sub nsw i32 %.sroa.speculated4.i14.i.i.i, %.sroa.speculated4.i.i.i.i
  %i.n = sub nsw i32 %.sroa.speculated.i15.i.i.i, %.sroa.speculated.i.i.i.i
  %i.o = mul nuw nsw i32 %i.n, %i.m               ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4pbrt7Array2DIfEC2ENS_7Bounds2IiEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.q = zext nneg i32 %i.o to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.r, i64 noundef 4)
          to label %.noexc unwind label %bb.e, !inline_history !8 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.preheader.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.r, i1 false), !tbaa !77
  br label %_ZN4pbrt7Array2DIfEC2ENS_7Bounds2IiEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit.i.i

_ZN4pbrt7Array2DIfEC2ENS_7Bounds2IiEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit.i.i: ; preds = %.noexc, %bb.a
  %.sink.i = phi ptr [ %i.v, %.noexc ], [ null, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink.i, ptr %i.w, align 8, !tbaa !149
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %bb.b, label %bb.c, !prof !276

bb.b:                                             ; preds = %_ZN4pbrt7Array2DIfEC2ENS_7Bounds2IiEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit.i.i
  %.idx.i = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sink.i, ptr align 4 %i.c, i64 %.idx.i, i1 false)
  br label %_ZN4pbrt7Array2DIfEC2ERKS1_N4pstd3pmr21polymorphic_allocatorISt4byteEE.exit

bb.c:                                             ; preds = %_ZN4pbrt7Array2DIfEC2ENS_7Bounds2IiEEN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit.i.i
  %i.y = icmp eq i32 %i.j, 1
  br i1 %i.y, label %bb.d, label %_ZN4pbrt7Array2DIfEC2ERKS1_N4pstd3pmr21polymorphic_allocatorISt4byteEE.exit

bb.d:                                             ; preds = %bb.c
  %i.z = load float, ptr %i.c, align 4, !tbaa !77
  store float %i.z, ptr %.sink.i, align 4, !tbaa !77
  br label %_ZN4pbrt7Array2DIfEC2ERKS1_N4pstd3pmr21polymorphic_allocatorISt4byteEE.exit

_ZN4pbrt7Array2DIfEC2ERKS1_N4pstd3pmr21polymorphic_allocatorISt4byteEE.exit: ; preds = %bb.d, %bb.c, %bb.b
  ret void

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4pbrt15SummedAreaTableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #37
  resume { ptr, i32 } %i.aa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt27WindowedPiecewiseConstant2DD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt7Array2DIfED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !162
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  %i.f = sub nsw i32 %i.e, %.sroa.2.0.extract.trunc.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !161
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.i = sub nsw i32 %i.h, %.sroa.0.0.extract.trunc.i.i.i
  %i.j = mul nsw i32 %i.f, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = shl nsw i64 %i.k, 2
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.b, i64 noundef %i.m, i64 noundef 4)
          to label %_ZN4pbrt7Array2DIfED2Ev.exit unwind label %bb.c, !inline_history !3

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #39
  unreachable

_ZN4pbrt7Array2DIfED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !277  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt15SummedAreaTableD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt7Array2DIfED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.x = sub nsw i32 %i.w, %.sroa.2.0.extract.trunc.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !161
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.aa = sub nsw i32 %i.z, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.ab = mul nsw i32 %i.x, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = shl nsw i64 %i.ac, 3
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.u, i64 noundef %i.ae, i64 noundef 8)
          to label %_ZN4pbrt15SummedAreaTableD2Ev.exit unwind label %bb.e, !inline_history !9

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #39
  unreachable

_ZN4pbrt15SummedAreaTableD2Ev.exit:               ; preds = %_ZN4pbrt7Array2DIfED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt24PortalImageInfiniteLight3PhiENS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(516) %0, ptr nofree noundef readonly byval(%"class.pbrt::SampledWavelengths") align 8 captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 18 uses
  %2 = alloca %"class.pbrt::RGBIlluminantSpectrum", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.c, align 4 ; 3 uses
  %.sroa.331.0.extract.shift136 = lshr i64 %.sroa.0.0.copyload.i135, 32
  %.sroa.331.0.extract.trunc137 = trunc nuw i64 %.sroa.331.0.extract.shift136 to i32 ; 2 uses
  %i.d = icmp sgt i32 %.sroa.331.0.extract.trunc137, 0
  %i.e = trunc i64 %.sroa.0.0.copyload.i135 to i32 ; 2 uses
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge141

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load float, ptr %1, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 8            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load float, ptr %i.u, align 4            ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.0.copyload.i154 = phi i64 [ %.sroa.0.0.copyload.i135, %.preheader.lr.ph ], [ %.sroa.0.0.copyload.i, %._crit_edge ] ; 3 uses
  %i.w = phi i32 [ %i.e, %.preheader.lr.ph ], [ %.pre-phi, %._crit_edge ]
  %.0140 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bl, %._crit_edge ] ; 11 uses
  %.sroa.9.0139 = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph ], [ %.sroa.9.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.089.0138 = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph ], [ %.sroa.089.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.024.0.extract.trunc130 = trunc i64 %.sroa.0.0.copyload.i154 to i32 ; 2 uses
  %i.x = icmp sgt i32 %.sroa.024.0.extract.trunc130, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.y = uitofp nneg i32 %.0140 to float
  %i.z = fadd nnan float %i.y, 5.000000e-01
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 1
  br label %.preheader.preheader.i

._crit_edge141:                                   ; preds = %._crit_edge, %bb.a
  %.sroa.01.0.extract.trunc.pre-phi = phi i32 [ %i.e, %bb.a ], [ %.pre-phi, %._crit_edge ]
  %.sroa.089.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.089.1.lcssa, %._crit_edge ]
  %.sroa.9.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.9.1.lcssa, %._crit_edge ]
  %.sroa.331.0.extract.trunc.lcssa = phi i32 [ %.sroa.331.0.extract.trunc137, %bb.a ], [ %.sroa.331.0.extract.trunc, %._crit_edge ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !263
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.017.0.copyload.i = load <2 x float>, ptr %i.ad, align 8 ; 2 uses
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %3 = load <1 x float>, ptr %.sroa.218.0..sroa_idx.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %i.ae, <7 x i1> <i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 true>, <7 x float> poison), !tbaa !77 ; 3 uses
  %i.ah = shufflevector <7 x float> %i.ag, <7 x float> poison, <2 x i32> <i32 0, i32 6>
  %i.ai = shufflevector <2 x float> %.sroa.017.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = load <2 x float>, ptr %i.af, align 8, !tbaa !77
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <7 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.am = shufflevector <7 x float> %i.ag, <7 x float> %i.al, <2 x i32> <i32 1, i32 7>
  %i.an = shufflevector <2 x float> %.sroa.017.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fsub <2 x float> %i.am, %i.an           ; 2 uses
  %i.ap = shufflevector <7 x float> %i.ag, <7 x float> %i.al, <2 x i32> <i32 2, i32 8>
  %i.aq = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = fmul <2 x float> %i.aj, %i.aj
  %i.at = fmul <2 x float> %i.ao, %i.ao
  %i.au = fadd <2 x float> %i.as, %i.at
  %i.av = fmul <2 x float> %i.ar, %i.ar
  %i.aw = fadd <2 x float> %i.av, %i.au
  %i.ax = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.aw) ; 2 uses
  %shift = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ax, %shift
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.az = fmul float %i.ac, %i.ay
  %i.ba = mul nsw i32 %.sroa.331.0.extract.trunc.lcssa, %.sroa.01.0.extract.trunc.pre-phi
  %i.bb = sitofp i32 %i.ba to float
  %i.bc = shufflevector <2 x float> %.sroa.089.0.lcssa, <2 x float> %.sroa.9.0.lcssa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = fmul <4 x float> %i.bc, %i.be
  %i.bg = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = fdiv <4 x float> %i.bf, %i.bh           ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bk = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.bj, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.bk, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i

._crit_edge:                                      ; preds = %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, %.preheader
  %.pre-phi = phi i32 [ %.sroa.024.0.extract.trunc130, %.preheader ], [ %.sroa.024.0.extract.trunc, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 2 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i154, %.preheader ], [ %.sroa.0.0.copyload.i42, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 2 uses
  %.sroa.089.1.lcssa = phi <2 x float> [ %.sroa.089.0138, %.preheader ], [ %i.fq, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 2 uses
  %.sroa.9.1.lcssa = phi <2 x float> [ %.sroa.9.0139, %.preheader ], [ %i.fs, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 2 uses
  %i.bl = add nuw nsw i32 %.0140, 1               ; 2 uses
  %.sroa.331.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.331.0.extract.trunc = trunc nuw i64 %.sroa.331.0.extract.shift to i32 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %.sroa.331.0.extract.trunc
  br i1 %i.bm, label %.preheader, label %._crit_edge141, !llvm.loop !687

.preheader.preheader.i:                           ; preds = %.lr.ph, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit
  %i.bn = phi i32 [ %i.w, %.lr.ph ], [ %.sroa.024.0.extract.trunc, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 3 uses
  %.sroa.04.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i154, %.lr.ph ], [ %.sroa.0.0.copyload.i42, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 2 uses
  %.038133 = phi i32 [ 0, %.lr.ph ], [ %i.ft, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ] ; 11 uses
  %.sroa.9.1132 = phi <2 x float> [ %.sroa.9.0139, %.lr.ph ], [ %i.fs, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ]
  %.sroa.089.1131 = phi <2 x float> [ %.sroa.089.0138, %.lr.ph ], [ %i.fq, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.04.0.copyload.i to i32 ; 2 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 2 uses
  %i.bo = icmp slt i32 %.038133, %.sroa.0.0.extract.trunc.i
  %i.bp = add nsw i32 %.sroa.0.0.extract.trunc.i, -1
  %..i.i = call i32 @llvm.smin.i32(i32 %.038133, i32 %i.bp)
  %.sroa.0104.0 = select i1 %i.bo, i32 %.038133, i32 %..i.i ; 3 uses
  %i.bq = icmp slt i32 %.0140, %.sroa.9.0.extract.trunc.i
  %i.br = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %.0140, i32 %i.br)
  %.sroa.14.2 = select i1 %i.bq, i32 %.0140, i32 %..i.1.i ; 3 uses
  %i.bs = load i32, ptr %i.b, align 8, !tbaa !188
  switch i32 %i.bs, label %bb.ad [
    i32 0, label %bb.v
    i32 1, label %bb.y
    i32 2, label %bb.ac
  ]

bb.b:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.bt = load float, ptr %2, align 8, !tbaa !183 ; 4 uses
  %i.bu = load float, ptr %i.n, align 4, !tbaa !184 ; 4 uses
  %i.bv = load float, ptr %i.o, align 8, !tbaa !185 ; 4 uses
  %i.bw = load float, ptr %i.m, align 4, !tbaa !186 ; 4 uses
  %i.bx = call noundef float @llvm.fma.f32(float %i.p, float %i.bw, float %i.bv)
  %i.by = call noundef float @llvm.fma.f32(float %i.p, float %i.bx, float %i.bu) ; 5 uses
  %i.bz = call float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp oeq float %i.bz, +inf
  br i1 %i.ca, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cb = fcmp ogt float %i.by, 0.000000e+00
  %i.cc = uitofp i1 %i.cb to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

bb.d:                                             ; preds = %bb.b
  %i.cd = fmul float %i.by, %i.by
  %i.ce = fadd float %i.cd, 1.000000e+00
  %sqrt.i.i.i49 = call float @llvm.sqrt.f32(float %i.ce)
  %i.cf = fmul float %sqrt.i.i.i49, 2.000000e+00
  %i.cg = fdiv float %i.by, %i.cf
  %i.ch = fadd float %i.cg, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i:       ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi float [ %i.cc, %bb.c ], [ %i.ch, %bb.d ]
  %i.ci = fmul float %i.bt, %.0.i.i.i
  %i.cj = call noundef float @llvm.fma.f32(float %i.r, float %i.bw, float %i.bv)
  %i.ck = call noundef float @llvm.fma.f32(float %i.r, float %i.cj, float %i.bu) ; 5 uses
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fcmp oeq float %i.cl, +inf
  br i1 %i.cm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.cn = fmul float %i.ck, %i.ck
  %i.co = fadd float %i.cn, 1.000000e+00
  %sqrt.i.i.1.i = call float @llvm.sqrt.f32(float %i.co)
  %i.cp = fmul float %sqrt.i.i.1.i, 2.000000e+00
  %i.cq = fdiv float %i.ck, %i.cp
  %i.cr = fadd float %i.cq, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

bb.f:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.cs = fcmp ogt float %i.ck, 0.000000e+00
  %i.ct = uitofp i1 %i.cs to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i:     ; preds = %bb.f, %bb.e
  %.0.i.i.1.i = phi float [ %i.ct, %bb.f ], [ %i.cr, %bb.e ]
  %i.cu = fmul float %i.bt, %.0.i.i.1.i
  %i.cv = call noundef float @llvm.fma.f32(float %i.t, float %i.bw, float %i.bv)
  %i.cw = call noundef float @llvm.fma.f32(float %i.t, float %i.cv, float %i.bu) ; 5 uses
  %i.cx = call float @llvm.fabs.f32(float %i.cw)
  %i.cy = fcmp oeq float %i.cx, +inf
  br i1 %i.cy, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.cz = fmul float %i.cw, %i.cw
  %i.da = fadd float %i.cz, 1.000000e+00
  %sqrt.i.i.2.i = call float @llvm.sqrt.f32(float %i.da)
  %i.db = fmul float %sqrt.i.i.2.i, 2.000000e+00
  %i.dc = fdiv float %i.cw, %i.db
  %i.dd = fadd float %i.dc, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

bb.h:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.de = fcmp ogt float %i.cw, 0.000000e+00
  %i.df = uitofp i1 %i.de to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i:     ; preds = %bb.h, %bb.g
  %.0.i.i.2.i = phi float [ %i.df, %bb.h ], [ %i.dd, %bb.g ]
  %i.dg = fmul float %i.bt, %.0.i.i.2.i
  %i.dh = call noundef float @llvm.fma.f32(float %i.v, float %i.bw, float %i.bv)
  %i.di = call noundef float @llvm.fma.f32(float %i.v, float %i.dh, float %i.bu) ; 5 uses
  %i.dj = call float @llvm.fabs.f32(float %i.di)
  %i.dk = fcmp oeq float %i.dj, +inf
  br i1 %i.dk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.dl = fmul float %i.di, %i.di
  %i.dm = fadd float %i.dl, 1.000000e+00
  %sqrt.i.i.3.i = call float @llvm.sqrt.f32(float %i.dm)
  %i.dn = fmul float %sqrt.i.i.3.i, 2.000000e+00
  %i.do = fdiv float %i.di, %i.dn
  %i.dp = fadd float %i.do, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

bb.j:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.dq = fcmp ogt float %i.di, 0.000000e+00
  %i.dr = uitofp i1 %i.dq to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i:     ; preds = %bb.j, %bb.i
  %.0.i.i.3.i = phi float [ %i.dr, %bb.j ], [ %i.dp, %bb.i ]
  %i.ds = fmul float %i.bt, %.0.i.i.3.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.no, i64 32 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 4 uses
  %i.dv = call noundef i64 @lroundf(float noundef %i.p) #37
  %i.dw = load i32, ptr %i.no, align 8, !tbaa !74
  %i.dx = trunc i64 %i.dv to i32
  %i.dy = sub i32 %i.dx, %i.dw                    ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i
  %i.ea = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.eb = load i64, ptr %i.dt, align 8, !tbaa !72
  %.not.i71 = icmp ugt i64 %i.eb, %i.ea
  br i1 %.not.i71, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ec = load ptr, ptr %i.du, align 8, !tbaa !71
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ea
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !77
  %.sroa.0.0.vec.insert.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i74, %bb.l ], [ zeroinitializer, %bb.k ], [ zeroinitializer, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ]
  %i.ef = call noundef i64 @lroundf(float noundef %i.r) #37
  %i.eg = load i32, ptr %i.no, align 8, !tbaa !74
  %i.eh = trunc i64 %i.ef to i32
  %i.ei = sub i32 %i.eh, %i.eg                    ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ek = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.el = load i64, ptr %i.dt, align 8, !tbaa !72
  %.not.1.i = icmp ugt i64 %i.el, %i.ek
  br i1 %.not.1.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.em = load ptr, ptr %i.du, align 8, !tbaa !71
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ek
  %i.eo = load float, ptr %i.en, align 4, !tbaa !77
  br label %bb.p
end_hunk_8
begin_hunk_9_@_ZNK4pbrt24PortalImageInfiniteLight3PhiENS_18SampledWavelengthsE:bb.a
  %i.im = mul nsw i32 %i.il, %i.ij
  %i.in = sext i32 %i.im to i64
  %i.io = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.ip = getelementptr [2 x i8], ptr %i.io, i64 %i.in
  %i.iq = getelementptr i8, ptr %i.ip, i64 2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !191 ; 2 uses
  %i.is = zext i16 %i.ir to i32
  %i.it = shl nuw nsw i32 %i.is, 13               ; 4 uses
  %i.iu = and i32 %i.it, 260046848                ; 2 uses
  %i.iv = icmp eq i32 %i.iu, 260046848
  br i1 %i.iv, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iw = and i32 %i.it, 268427264
  %i.ix = add nuw nsw i32 %i.iw, 939524096
  %i.iy = icmp eq i32 %i.iu, 0
  br i1 %i.iy, label %bb.ah, label %_ZNK4pbrt4HalfcvfEv.exit.i.1

bb.ah:                                            ; preds = %bb.ag
  %i.iz = or i32 %i.it, 947912704
  %i.ja = bitcast i32 %i.iz to float
  %i.jb = fadd float %i.ja, f0xB8800000
  %i.jc = bitcast float %i.jb to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.1

bb.ai:                                            ; preds = %bb.af
  %i.jd = or i32 %i.it, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.1

_ZNK4pbrt4HalfcvfEv.exit.i.1:                     ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0.0.i.i.1 = phi i32 [ %i.jd, %bb.ai ], [ %i.jc, %bb.ah ], [ %i.ix, %bb.ag ]
  %.signext.i.i.1 = sext i16 %i.ir to i32
  %i.je = and i32 %.signext.i.i.1, -2147483648
  %i.jf = or i32 %.sroa.0.0.i.i.1, %i.je
  %i.jg = bitcast i32 %i.jf to float
  br label %_ZN4pbrt3RGBixEi.exit.1

bb.aj:                                            ; preds = %_ZN4pbrt3RGBixEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.jh = load i64, ptr %i.f, align 8, !tbaa !173
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = mul nsw i32 %.sroa.14.2.1, %.sroa.0.0.extract.trunc.i.1
  %i.jk = add nsw i32 %i.jj, %.sroa.0104.0.1
  %i.jl = mul nsw i32 %i.jk, %i.ji
  %i.jm = sext i32 %i.jl to i64
  %i.jn = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.jo = getelementptr i8, ptr %i.jn, i64 %i.jm
  %i.jp = getelementptr i8, ptr %i.jo, i64 1      ; 3 uses
  %i.jq = load i64, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.jr = and i64 %i.jq, 144115188075855871
  %i.js = inttoptr i64 %i.jr to ptr               ; 2 uses
  %i.jt = lshr i64 %i.jq, 57
  %i.ju = trunc nuw nsw i64 %i.jt to i32
  switch i32 %i.ju, label %bb.al [
    i32 1, label %.lr.ph.i.i.i.i.i.i.1
    i32 2, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.js, ptr %i.jp, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %bb.aj
  %i.jv = load i8, ptr %i.jp, align 1, !tbaa !28
  %i.jw = uitofp i8 %i.jv to float
  %i.jx = fdiv float %i.jw, 2.550000e+02
  store float %i.jx, ptr %i.a, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1

bb.al:                                            ; preds = %bb.aj
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.js, ptr %i.jp, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1: ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i.1, %bb.ak
  %i.jy = load float, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN4pbrt3RGBixEi.exit.1

_ZN4pbrt3RGBixEi.exit.1:                          ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1, %_ZNK4pbrt4HalfcvfEv.exit.i.1, %bb.ae
  %.0.i.1 = phi float [ %i.jy, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.1 ], [ %i.jg, %_ZNK4pbrt4HalfcvfEv.exit.i.1 ], [ %i.ih, %bb.ae ]
  %.sroa.085.4.vec.insert176 = insertelement <2 x float> %.sroa.085.0.vec.insert, float %.0.i.1, i64 1 ; 2 uses
  %.sroa.04.0.copyload.i.2 = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.2 = trunc i64 %.sroa.04.0.copyload.i.2 to i32 ; 5 uses
  %.sroa.9.0.extract.shift.i.2 = lshr i64 %.sroa.04.0.copyload.i.2, 32
  %.sroa.9.0.extract.trunc.i.2 = trunc nuw i64 %.sroa.9.0.extract.shift.i.2 to i32 ; 2 uses
  %i.jz = icmp slt i32 %.038133, %.sroa.0.0.extract.trunc.i.2
  %i.ka = add nsw i32 %.sroa.0.0.extract.trunc.i.2, -1
  %..i.i.2 = call i32 @llvm.smin.i32(i32 %.038133, i32 %i.ka)
  %.sroa.0104.0.2 = select i1 %i.jz, i32 %.038133, i32 %..i.i.2 ; 3 uses
  %i.kb = icmp slt i32 %.0140, %.sroa.9.0.extract.trunc.i.2
  %i.kc = add nsw i32 %.sroa.9.0.extract.trunc.i.2, -1
  %..i.1.i.2 = call i32 @llvm.smin.i32(i32 %.0140, i32 %i.kc)
  %.sroa.14.2.2 = select i1 %i.kb, i32 %.0140, i32 %..i.1.i.2 ; 3 uses
  %i.kd = load i32, ptr %i.b, align 8, !tbaa !188
  switch i32 %i.kd, label %bb.ad [
    i32 0, label %bb.ar
    i32 1, label %bb.an
    i32 2, label %bb.am
  ]

bb.am:                                            ; preds = %_ZN4pbrt3RGBixEi.exit.1
  %i.ke = load i64, ptr %i.f, align 8, !tbaa !173
  %i.kf = trunc i64 %i.ke to i32
  %i.kg = mul nsw i32 %.sroa.14.2.2, %.sroa.0.0.extract.trunc.i.2
  %i.kh = add nsw i32 %i.kg, %.sroa.0104.0.2
  %i.ki = mul nsw i32 %i.kh, %i.kf
  %i.kj = sext i32 %i.ki to i64
  %i.kk = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.kl = getelementptr [4 x i8], ptr %i.kk, i64 %i.kj
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  %i.kn = load float, ptr %i.km, align 4, !tbaa !77
  br label %_ZN4pbrt3RGBixEi.exit.2

bb.an:                                            ; preds = %_ZN4pbrt3RGBixEi.exit.1
  %i.ko = load i64, ptr %i.f, align 8, !tbaa !173
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = mul nsw i32 %.sroa.14.2.2, %.sroa.0.0.extract.trunc.i.2
  %i.kr = add nsw i32 %i.kq, %.sroa.0104.0.2
  %i.ks = mul nsw i32 %i.kr, %i.kp
  %i.kt = sext i32 %i.ks to i64
  %i.ku = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.kv = getelementptr [2 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = getelementptr i8, ptr %i.kv, i64 4
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !191 ; 2 uses
  %i.ky = zext i16 %i.kx to i32
  %i.kz = shl nuw nsw i32 %i.ky, 13               ; 4 uses
  %i.la = and i32 %i.kz, 260046848                ; 2 uses
  %i.lb = icmp eq i32 %i.la, 260046848
  br i1 %i.lb, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lc = and i32 %i.kz, 268427264
  %i.ld = add nuw nsw i32 %i.lc, 939524096
  %i.le = icmp eq i32 %i.la, 0
  br i1 %i.le, label %bb.ap, label %_ZNK4pbrt4HalfcvfEv.exit.i.2

bb.ap:                                            ; preds = %bb.ao
  %i.lf = or i32 %i.kz, 947912704
  %i.lg = bitcast i32 %i.lf to float
  %i.lh = fadd float %i.lg, f0xB8800000
  %i.li = bitcast float %i.lh to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.2

bb.aq:                                            ; preds = %bb.an
  %i.lj = or i32 %i.kz, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.2

_ZNK4pbrt4HalfcvfEv.exit.i.2:                     ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.0.0.i.i.2 = phi i32 [ %i.lj, %bb.aq ], [ %i.li, %bb.ap ], [ %i.ld, %bb.ao ]
  %.signext.i.i.2 = sext i16 %i.kx to i32
  %i.lk = and i32 %.signext.i.i.2, -2147483648
  %i.ll = or i32 %.sroa.0.0.i.i.2, %i.lk
  %i.lm = bitcast i32 %i.ll to float
  br label %_ZN4pbrt3RGBixEi.exit.2

bb.ar:                                            ; preds = %_ZN4pbrt3RGBixEi.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ln = load i64, ptr %i.f, align 8, !tbaa !173
  %i.lo = trunc i64 %i.ln to i32
  %i.lp = mul nsw i32 %.sroa.14.2.2, %.sroa.0.0.extract.trunc.i.2
  %i.lq = add nsw i32 %i.lp, %.sroa.0104.0.2
  %i.lr = mul nsw i32 %i.lq, %i.lo
  %i.ls = sext i32 %i.lr to i64
  %i.lt = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.lu = getelementptr i8, ptr %i.lt, i64 %i.ls
  %i.lv = getelementptr i8, ptr %i.lu, i64 2      ; 3 uses
  %i.lw = load i64, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.lx = and i64 %i.lw, 144115188075855871
  %i.ly = inttoptr i64 %i.lx to ptr               ; 2 uses
  %i.lz = lshr i64 %i.lw, 57
  %i.ma = trunc nuw nsw i64 %i.lz to i32
  switch i32 %i.ma, label %bb.at [
    i32 1, label %.lr.ph.i.i.i.i.i.i.2
    i32 2, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ly, ptr %i.lv, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %bb.ar
  %i.mb = load i8, ptr %i.lv, align 1, !tbaa !28
  %i.mc = uitofp i8 %i.mb to float
  %i.md = fdiv float %i.mc, 2.550000e+02
  store float %i.md, ptr %i.a, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2

bb.at:                                            ; preds = %bb.ar
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.ly, ptr %i.lv, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i.2, %bb.as
  %i.me = load float, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN4pbrt3RGBixEi.exit.2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2, %_ZNK4pbrt4HalfcvfEv.exit.i.2, %bb.am
  %.0.i.2 = phi float [ %i.me, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.2 ], [ %i.lm, %_ZNK4pbrt4HalfcvfEv.exit.i.2 ], [ %i.kn, %bb.am ] ; 2 uses
  %i.mf = uitofp nneg i32 %.038133 to float
  %i.mg = fadd nnan float %i.mf, 5.000000e-01
  %4 = load <1 x i64>, ptr %i.c, align 4
  %i.mh = shufflevector <1 x i64> %4, <1 x i64> poison, <2 x i32> zeroinitializer
  %i.mi = lshr <2 x i64> %i.mh, <i64 0, i64 32>
  %i.mj = trunc <2 x i64> %i.mi to <2 x i32>
  %i.mk = sitofp <2 x i32> %i.mj to <2 x float>
  %i.ml = insertelement <2 x float> %i.aa, float %i.mg, i64 0
  %i.mm = fdiv nnan <2 x float> %i.ml, %i.mk
  %i.mn = fmul nnan <2 x float> %i.mm, splat (float f0x40490FDB)
  %i.mo = fadd <2 x float> %i.mn, splat (float f0xBFC90FDB) ; 2 uses
  %i.mp = extractelement <2 x float> %i.mo, i64 0
  %i.mq = call noundef float @tanf(float noundef %i.mp) #37 ; 3 uses
  %i.mr = extractelement <2 x float> %i.mo, i64 1
  %i.ms = call noundef float @tanf(float noundef %i.mr) #37 ; 3 uses
  %i.mt = fmul float %i.mq, %i.mq
  %i.mu = fmul float %i.ms, %i.ms
  %i.mv = fadd float %i.mt, %i.mu
  %i.mw = fadd float %i.mv, 1.000000e+00
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.mw) ; 2 uses
  %i.mx = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.my = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.mz = insertelement <2 x float> %i.my, float %i.ms, i64 1
  %i.na = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nc = fdiv <2 x float> %i.mz, %i.nb           ; 2 uses
  %i.nd = fmul <2 x float> %i.nc, %i.nc
  %i.ne = fsub <2 x float> splat (float 1.000000e+00), %i.nd ; 2 uses
  %i.nf = extractelement <2 x float> %i.ne, i64 0
  %i.ng = fmul float %i.nf, f0x411DE9E7
  %i.nh = extractelement <2 x float> %i.ne, i64 1
  %i.ni = fmul float %i.nh, %i.ng
  %i.nj = fdiv float %i.ni, %i.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.nk = load ptr, ptr %i.k, align 8, !tbaa !262
  %i.nl = fcmp ogt <2 x float> %.sroa.085.4.vec.insert176, zeroinitializer
  %i.nm = select <2 x i1> %i.nl, <2 x float> %.sroa.085.4.vec.insert176, <2 x float> zeroinitializer
  %i.nn = fcmp ogt float %.0.i.2, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.nn, float %.0.i.2, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(152) %i.nk, <2 x float> %i.nm, float %.sroa.speculated.i)
  %i.no = load ptr, ptr %i.l, align 8, !tbaa !187 ; 7 uses
  %.not.i = icmp eq ptr %i.no, null
  br i1 %.not.i, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.b
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt24PortalImageInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(32) %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pstd::optional.98", align 4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 3 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.212.0.copyload = load float, ptr %.sroa.212.0..sroa_idx, align 4 ; 3 uses
  %i.b = fmul <2 x float> %.sroa.011.0.copyload, %.sroa.011.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.b, %shift
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.d = fmul float %.sroa.212.0.copyload, %.sroa.212.0.copyload
  %i.e = fadd float %i.d, %i.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.e) ; 2 uses
  %i.f = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fdiv <2 x float> %.sroa.011.0.copyload, %i.g ; 3 uses
  %i.i = fdiv float %.sroa.212.0.copyload, %sqrt.i.i ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.j, align 8, !noalias !691
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.26.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !noalias !691
  %i.k = fmul <2 x float> %.sroa.05.0.copyload.i.i, %i.h ; 2 uses
  %shift41 = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop42 = fadd <2 x float> %i.k, %shift41
  %i.l = extractelement <2 x float> %foldExtExtBinop42, i64 0
  %i.m = fmul float %.sroa.26.0.copyload.i.i, %i.i
  %i.n = fadd float %i.m, %i.l                    ; 3 uses
  %i.o = fcmp ugt float %i.n, 0.000000e+00        ; 2 uses
  br i1 %i.o, label %bb.b, label %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.sroa.214.0.copyload.i.i = load float, ptr %.sroa.214.0..sroa_idx.i.i, align 4, !noalias !691
  %i.p = fmul float %i.i, %.sroa.214.0.copyload.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212
  %.sroa.013.0.copyload.i.i = load <2 x float>, ptr %i.q, align 4, !noalias !691
  %i.r = fmul <2 x float> %i.h, %.sroa.013.0.copyload.i.i ; 2 uses
  %shift44 = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop45 = fadd <2 x float> %i.r, %shift44
  %i.s = extractelement <2 x float> %foldExtExtBinop45, i64 0
  %i.t = fadd float %i.p, %i.s
  %.sroa.222.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.222.0.copyload.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i, align 8, !noalias !691
  %i.u = fmul float %i.i, %.sroa.222.0.copyload.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.021.0.copyload.i.i = load <2 x float>, ptr %i.v, align 8, !noalias !691
  %i.w = fmul <2 x float> %i.h, %.sroa.021.0.copyload.i.i ; 2 uses
  %shift47 = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop48 = fadd <2 x float> %i.w, %shift47
  %i.x = extractelement <2 x float> %foldExtExtBinop48, i64 0
  %i.y = fadd float %i.u, %i.x
  %i.z = tail call noundef float @atan2f(float noundef %i.y, float noundef %i.n) #37, !noalias !691
  %i.aa = tail call noundef float @atan2f(float noundef %i.t, float noundef %i.n) #37, !noalias !691
  %i.ab = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  %i.ad = fadd <2 x float> %i.ac, splat (float f0x3FC90FDB)
  %i.ae = fdiv <2 x float> %i.ad, splat (float f0x40490FDB) ; 3 uses
  %i.af = fcmp olt <2 x float> %i.ae, zeroinitializer
  %i.ag = fcmp ogt <2 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = select <2 x i1> %i.ag, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ae
  %i.ai = select <2 x i1> %i.af, <2 x float> zeroinitializer, <2 x float> %i.ah
  br label %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit

_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %i.ai, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %.sroa.03.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8
  call void @_ZNK4pbrt24PortalImageInfiniteLight11ImageBoundsENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.98") align 4 %3, ptr noundef nonnull align 8 dereferenceable(516) %0, <2 x float> %.sroa.03.0.copyload, float %.sroa.24.0.copyload)
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i8, ptr %i.aj, align 4, !range !92
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond = select i1 %i.o, i1 %i.al, i1 false
  br i1 %or.cond, label %_ZN4pstd8optionalIN4pbrt7Bounds2IfEEEdeEv.exit, label %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread

_ZN4pstd8optionalIN4pbrt7Bounds2IfEEEdeEv.exit:   ; preds = %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0, i64 0 ; 2 uses
  %i.am = load float, ptr %3, align 4, !tbaa !179
  %i.an = fcmp ult float %.sroa.0.0.vec.extract.i, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp ugt float %.sroa.0.0.vec.extract.i, %i.ap
  %or.cond.i = select i1 %i.an, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4pstd8optionalIN4pbrt7Bounds2IfEEEdeEv.exit
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !180
  %i.at = fcmp oge float %.sroa.0.4.vec.extract.i, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.av = load float, ptr %i.au, align 4
  %i.aw = fcmp ole float %.sroa.0.4.vec.extract.i, %i.av
  %or.cond39 = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %or.cond39, label %_ZN4pstd8optionalIN4pbrt6Point2IfEEEdeEv.exit25, label %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread

_ZN4pstd8optionalIN4pbrt6Point2IfEEEdeEv.exit25:  ; preds = %bb.c
  %i.ax = call { <2 x float>, <2 x float> } @_ZNK4pbrt24PortalImageInfiniteLight11ImageLookupENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(516) %0, <2 x float> %.sroa.0.0, ptr noundef nonnull align 4 dereferenceable(32) %2) ; 2 uses
  %i.ay = extractvalue { <2 x float>, <2 x float> } %i.ax, 0
  %i.az = extractvalue { <2 x float>, <2 x float> } %i.ax, 1
  br label %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread

_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread: ; preds = %_ZN4pstd8optionalIN4pbrt7Bounds2IfEEEdeEv.exit, %bb.c, %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit, %_ZN4pstd8optionalIN4pbrt6Point2IfEEEdeEv.exit25
  %.sroa.4.0 = phi <2 x float> [ %i.az, %_ZN4pstd8optionalIN4pbrt6Point2IfEEEdeEv.exit25 ], [ zeroinitializer, %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %_ZN4pstd8optionalIN4pbrt7Bounds2IfEEEdeEv.exit ]
  %.sroa.032.0 = phi <2 x float> [ %i.ay, %_ZN4pstd8optionalIN4pbrt6Point2IfEEEdeEv.exit25 ], [ zeroinitializer, %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %_ZN4pstd8optionalIN4pbrt7Bounds2IfEEEdeEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.032.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt24PortalImageInfiniteLight11ImageBoundsENS_6Point3IfEE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.98") align 4 %0, ptr noundef nonnull align 8 dereferenceable(516) %1, <2 x float> %2, float %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load float, ptr %i.b, align 8, !tbaa !87
  %i.d = fsub float %i.c, %3                      ; 3 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = load <2 x float>, ptr %i.a, align 8, !tbaa !77
  %i.g = fsub <2 x float> %i.f, %2                ; 3 uses
  %i.h = fmul <2 x float> %i.g, %i.g              ; 2 uses
  %shift = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.h, %shift
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.j = fadd float %i.e, %i.i
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.j) ; 2 uses
  %i.k = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x float> %i.g, %i.l              ; 3 uses
  %i.n = fdiv float %i.d, %sqrt.i.i               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.021.0.copyload.i.i = load <2 x float>, ptr %i.o, align 8, !noalias !696 ; 3 uses
  %.sroa.222.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 212
  %.sroa.013.0.copyload.i.i = load <2 x float>, ptr %i.p, align 4, !noalias !696 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.q, align 8, !noalias !696 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %.sroa.26.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !noalias !696 ; 2 uses
  %i.r = fmul <2 x float> %i.m, %.sroa.05.0.copyload.i.i ; 2 uses
  %shift98 = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop99 = fadd <2 x float> %i.r, %shift98
  %i.s = extractelement <2 x float> %foldExtExtBinop99, i64 0
  %i.t = fmul float %i.n, %.sroa.26.0.copyload.i.i
  %i.u = fadd float %i.t, %i.s                    ; 3 uses
  %i.v = fcmp ugt float %i.u, 0.000000e+00        ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.214.0.copyload.i.i = load float, ptr %.sroa.214.0..sroa_idx.i.i, align 4, !noalias !696
  %i.w = fmul float %i.n, %.sroa.214.0.copyload.i.i
  %i.x = fmul <2 x float> %.sroa.013.0.copyload.i.i, %i.m ; 2 uses
  %shift101 = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = fadd <2 x float> %i.x, %shift101
  %i.y = extractelement <2 x float> %foldExtExtBinop102, i64 0
  %i.z = fadd float %i.y, %i.w
  %.sroa.222.0.copyload.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i, align 8, !noalias !696
  %i.aa = fmul float %i.n, %.sroa.222.0.copyload.i.i
  %i.ab = fmul <2 x float> %.sroa.021.0.copyload.i.i, %i.m ; 2 uses
  %shift104 = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop105 = fadd <2 x float> %i.ab, %shift104
  %i.ac = extractelement <2 x float> %foldExtExtBinop105, i64 0
  %i.ad = fadd float %i.ac, %i.aa
  %i.ae = tail call noundef float @atan2f(float noundef %i.ad, float noundef %i.u) #37, !noalias !696
  %i.af = tail call noundef float @atan2f(float noundef %i.z, float noundef %i.u) #37, !noalias !696
  %i.ag = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.af, i64 1
  %i.ai = fadd <2 x float> %i.ah, splat (float f0x3FC90FDB)
  %i.aj = fdiv <2 x float> %i.ai, splat (float f0x40490FDB) ; 3 uses
  %i.ak = fcmp olt <2 x float> %i.aj, zeroinitializer
  %i.al = fcmp ogt <2 x float> %i.aj, splat (float 1.000000e+00)
  %i.am = select <2 x i1> %i.al, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aj
  %i.an = select <2 x i1> %i.ak, <2 x float> zeroinitializer, <2 x float> %i.am
  %.sroa.26.0.copyload.i.i75.pre = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !noalias !697
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.26.0.copyload.i.i75 = phi float [ %.sroa.26.0.copyload.i.i75.pre, %bb.b ], [ %.sroa.26.0.copyload.i.i, %bb.a ]
  %.sroa.087.0 = phi <2 x float> [ %i.an, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !87
  %i.ar = fsub float %i.aq, %3                    ; 3 uses
  %i.as = fmul float %i.ar, %i.ar
  %i.at = load <2 x float>, ptr %i.ao, align 8, !tbaa !77
  %i.au = fsub <2 x float> %i.at, %2              ; 3 uses
  %i.av = fmul <2 x float> %i.au, %i.au           ; 2 uses
  %shift107 = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop108 = fadd <2 x float> %i.av, %shift107
  %i.aw = extractelement <2 x float> %foldExtExtBinop108, i64 0
  %i.ax = fadd float %i.as, %i.aw
  %sqrt.i.i56 = tail call noundef float @llvm.sqrt.f32(float %i.ax) ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %sqrt.i.i56, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x float> %i.au, %i.az           ; 3 uses
  %i.bb = fdiv float %i.ar, %sqrt.i.i56           ; 2 uses
  %i.bc = fmul <2 x float> %.sroa.05.0.copyload.i.i, %i.ba ; 2 uses
  %shift110 = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop111 = fadd <2 x float> %i.bc, %shift110
  %i.bd = extractelement <2 x float> %foldExtExtBinop111, i64 0
  %i.be = fmul float %.sroa.26.0.copyload.i.i75, %i.bb
  %i.bf = fadd float %i.be, %i.bd                 ; 3 uses
  %i.bg = fcmp ugt float %i.bf, 0.000000e+00
  br i1 %i.bg, label %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit79, label %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit79.thread

_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit79: ; preds = %bb.c
  %i.bh = shufflevector <2 x float> %.sroa.013.0.copyload.i.i, <2 x float> %.sroa.021.0.copyload.i.i, <2 x i32> <i32 3, i32 0>
  %i.bi = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = shufflevector <2 x float> %.sroa.021.0.copyload.i.i, <2 x float> %.sroa.013.0.copyload.i.i, <2 x i32> <i32 0, i32 3>
  %i.bl = fmul <2 x float> %i.bk, %i.ba
  %i.bm = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %.sroa.222.0..sroa_idx.i.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !697
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bo = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bp, %i.bn
  %i.br = fadd <2 x float> %i.bl, %i.bj
  %i.bs = fadd <2 x float> %i.br, %i.bq           ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = tail call noundef float @atan2f(float noundef %i.bt, float noundef %i.bf) #37, !noalias !697
  %i.bv = extractelement <2 x float> %i.bs, i64 1
  %i.bw = tail call noundef float @atan2f(float noundef %i.bv, float noundef %i.bf) #37, !noalias !697
  br i1 %i.v, label %bb.d, label %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit79.thread

_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit79.thread: ; preds = %bb.c, %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit79
  %i.bx = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bw, i64 1
  %i.bz = fadd <2 x float> %i.by, splat (float f0x3FC90FDB)
  %i.ca = fdiv <2 x float> %i.bz, splat (float f0x40490FDB) ; 3 uses
  %i.cb = fcmp olt <2 x float> %i.ca, zeroinitializer
  %i.cc = fcmp ogt <2 x float> %i.ca, splat (float 1.000000e+00)
  %i.cd = select <2 x i1> %i.cc, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ca
  %i.ce = select <2 x i1> %i.cb, <2 x float> zeroinitializer, <2 x float> %i.cd ; 4 uses
  %i.cf = fcmp olt <2 x float> %i.ce, %.sroa.087.0
  %i.cg = select <2 x i1> %i.cf, <2 x float> %i.ce, <2 x float> %.sroa.087.0
  %i.ch = fcmp olt <2 x float> %.sroa.087.0, %i.ce
  %i.ci = select <2 x i1> %i.ch, <2 x float> %i.ce, <2 x float> %.sroa.087.0
  store <2 x float> %i.cg, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.ci, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit79.thread
  %.sink = phi i8 [ 1, %bb.d ], [ 0, %_ZNK4pbrt24PortalImageInfiniteLight15ImageFromRenderENS_7Vector3IfEEPf.exit79.thread ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cj, align 4, !tbaa !279
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt24PortalImageInfiniteLight11ImageLookupENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(516) %0, <2 x float> %1, ptr noundef nonnull align 4 dereferenceable(32) %2) local_unnamed_addr #10 align 2 {
_ZN4pbrt3RGBixEi.exit.2:
  %3 = alloca %"class.pbrt::RGBIlluminantSpectrum", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !161
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul float %.sroa.03.0.vec.extract.i, %i.e
  %i.g = fptosi float %i.f to i32
  %i.h = load i32, ptr %i.c, align 8, !tbaa !162
  %i.i = sitofp i32 %i.h to float
  %i.j = fmul float %.sroa.03.4.vec.extract.i, %i.i
  %i.k = fptosi float %i.j to i32
  %.sroa.4.0.insert.ext.i = zext i32 %i.k to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.g to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.l = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %.sroa.024.0.vec.insert = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = load i32, ptr %i.b, align 4, !tbaa !161
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %.sroa.03.0.vec.extract.i, %i.n
  %i.p = fptosi float %i.o to i32
  %i.q = load i32, ptr %i.c, align 8, !tbaa !162
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %.sroa.03.4.vec.extract.i, %i.r
  %i.t = fptosi float %i.s to i32
  %.sroa.4.0.insert.ext.i.1 = zext i32 %i.t to i64
  %.sroa.4.0.insert.shift.i.1 = shl nuw i64 %.sroa.4.0.insert.ext.i.1, 32
  %.sroa.0.0.insert.ext.i.1 = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.4.0.insert.shift.i.1, %.sroa.0.0.insert.ext.i.1
  %i.u = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %.sroa.024.4.vec.insert = insertelement <2 x float> %.sroa.024.0.vec.insert, float %i.u, i64 1 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.b, align 4, !tbaa !78
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %i.x = fmul <2 x float> %1, %i.w                ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fptosi float %i.y to i32
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fptosi float %i.aa to i32
  %.sroa.4.0.insert.ext.i.2 = zext i32 %i.ab to i64
  %.sroa.4.0.insert.shift.i.2 = shl nuw i64 %.sroa.4.0.insert.ext.i.2, 32
  %.sroa.0.0.insert.ext.i.2 = zext i32 %i.z to i64
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.4.0.insert.shift.i.2, %.sroa.0.0.insert.ext.i.2
  %i.ac = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.2, i32 noundef 2, i64 4294967297) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !262
  %i.af = fcmp ogt <2 x float> %.sroa.024.4.vec.insert, zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x float> %.sroa.024.4.vec.insert, <2 x float> zeroinitializer
  %i.ah = fcmp ogt float %i.ac, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ah, float %i.ac, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(152) %i.ae, <2 x float> %i.ag, float %.sroa.speculated.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 464
  %4 = load <1 x float>, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !187 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.al = load float, ptr %3, align 8, !tbaa !183 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !184 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !185 ; 4 uses
  %i.ar = load float, ptr %i.am, align 4, !tbaa !186 ; 4 uses
  %i.as = load float, ptr %2, align 4, !tbaa !77  ; 2 uses
  %i.at = call noundef float @llvm.fma.f32(float %i.as, float %i.ar, float %i.aq)
  %i.au = call noundef float @llvm.fma.f32(float %i.as, float %i.at, float %i.ao) ; 5 uses
  %i.av = call float @llvm.fabs.f32(float %i.au)
  %i.aw = fcmp oeq float %i.av, +inf
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ax = fcmp ogt float %i.au, 0.000000e+00
  %i.ay = uitofp i1 %i.ax to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

bb.c:                                             ; preds = %bb.a
  %i.az = fmul float %i.au, %i.au
  %i.ba = fadd float %i.az, 1.000000e+00
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.ba)
  %i.bb = fmul float %sqrt.i.i.i, 2.000000e+00
  %i.bc = fdiv float %i.au, %i.bb
  %i.bd = fadd float %i.bc, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i:       ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi float [ %i.ay, %bb.b ], [ %i.bd, %bb.c ]
  %i.be = fmul float %i.al, %.0.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !77 ; 2 uses
  %i.bh = call noundef float @llvm.fma.f32(float %i.bg, float %i.ar, float %i.aq)
  %i.bi = call noundef float @llvm.fma.f32(float %i.bg, float %i.bh, float %i.ao) ; 5 uses
  %i.bj = call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp oeq float %i.bj, +inf
  br i1 %i.bk, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.bl = fmul float %i.bi, %i.bi
  %i.bm = fadd float %i.bl, 1.000000e+00
  %sqrt.i.i.1.i = call float @llvm.sqrt.f32(float %i.bm)
  %i.bn = fmul float %sqrt.i.i.1.i, 2.000000e+00
  %i.bo = fdiv float %i.bi, %i.bn
  %i.bp = fadd float %i.bo, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

bb.e:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.bq = fcmp ogt float %i.bi, 0.000000e+00
  %i.br = uitofp i1 %i.bq to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i:     ; preds = %bb.e, %bb.d
  %.0.i.i.1.i = phi float [ %i.br, %bb.e ], [ %i.bp, %bb.d ]
  %i.bs = fmul float %i.al, %.0.i.i.1.i
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !77 ; 2 uses
  %i.bv = call noundef float @llvm.fma.f32(float %i.bu, float %i.ar, float %i.aq)
  %i.bw = call noundef float @llvm.fma.f32(float %i.bu, float %i.bv, float %i.ao) ; 5 uses
  %i.bx = call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp oeq float %i.bx, +inf
  br i1 %i.by, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.bz = fmul float %i.bw, %i.bw
  %i.ca = fadd float %i.bz, 1.000000e+00
  %sqrt.i.i.2.i = call float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fmul float %sqrt.i.i.2.i, 2.000000e+00
  %i.cc = fdiv float %i.bw, %i.cb
  %i.cd = fadd float %i.cc, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

bb.g:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.ce = fcmp ogt float %i.bw, 0.000000e+00
  %i.cf = uitofp i1 %i.ce to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i:     ; preds = %bb.g, %bb.f
  %.0.i.i.2.i = phi float [ %i.cf, %bb.g ], [ %i.cd, %bb.f ]
  %i.cg = fmul float %i.al, %.0.i.i.2.i
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !77 ; 2 uses
  %i.cj = call noundef float @llvm.fma.f32(float %i.ci, float %i.ar, float %i.aq)
  %i.ck = call noundef float @llvm.fma.f32(float %i.ci, float %i.cj, float %i.ao) ; 5 uses
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fcmp oeq float %i.cl, +inf
  br i1 %i.cm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.cn = fmul float %i.ck, %i.ck
  %i.co = fadd float %i.cn, 1.000000e+00
  %sqrt.i.i.3.i = call float @llvm.sqrt.f32(float %i.co)
  %i.cp = fmul float %sqrt.i.i.3.i, 2.000000e+00
  %i.cq = fdiv float %i.ck, %i.cp
  %i.cr = fadd float %i.cq, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

bb.i:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.cs = fcmp ogt float %i.ck, 0.000000e+00
  %i.ct = uitofp i1 %i.cs to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i:     ; preds = %bb.i, %bb.h
  %.0.i.i.3.i = phi float [ %i.ct, %bb.i ], [ %i.cr, %bb.h ]
  %i.cu = fmul float %i.al, %.0.i.i.3.i
  %i.cv = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 4 dereferenceable(32) %2) ; 2 uses
  %i.cw = extractvalue { <2 x float>, <2 x float> } %i.cv, 0
  %i.cx = extractvalue { <2 x float>, <2 x float> } %i.cv, 1
  %i.cy = insertelement <2 x float> poison, float %i.be, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.bs, i64 1
  %i.da = fmul <2 x float> %i.cz, %i.cw
  %i.db = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.cu, i64 1
  %i.dd = fmul <2 x float> %i.dc, %i.cx
  br label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit

_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i
  %.sroa.06.0.i = phi <2 x float> [ %i.da, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %.sroa.4.0.i = phi <2 x float> [ %i.dd, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.de = shufflevector <1 x float> %4, <1 x float> poison, <4 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %.sroa.06.0.i, <2 x float> %.sroa.4.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dg = fmul <4 x float> %i.de, %i.df           ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dh, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %i.di, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt24PortalImageInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.47") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(516) %1, ptr nofree noundef readonly byval(%"class.pbrt::LightSampleContext") align 8 captures(none) %2, <2 x float> %3, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8 %4, i1 noundef zeroext %5) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.pstd::optional.98", align 8 ; 6 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.pstd::optional.89", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.b = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.c = load <4 x float>, ptr %2, align 8
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.e = fadd <2 x float> %i.b, %i.d
  %i.f = fmul <2 x float> %i.e, splat (float 5.000000e-01) ; 3 uses
  %i.g = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.h = fmul float %i.g, 5.000000e-01            ; 2 uses
  call void @_ZNK4pbrt24PortalImageInfiniteLight11ImageBoundsENS_6Point3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.98") align 4 %6, ptr noundef nonnull align 8 dereferenceable(516) %1, <2 x float> %i.f, float %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !279, !range !92, !noundef !93
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.sroa.035.0.copyload = load <2 x float>, ptr %6, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.236.0.copyload = load <2 x float>, ptr %.sroa.236.0..sroa_idx, align 8
  call void @_ZNK4pbrt27WindowedPiecewiseConstant2D6SampleENS_6Point2IfEENS_7Bounds2IfEEPf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.89") align 4 %7, ptr noundef nonnull align 8 dereferenceable(64) %i.l, <2 x float> %3, <2 x float> %.sroa.035.0.copyload, <2 x float> %.sroa.236.0.copyload, ptr noundef nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !281, !range !92, !noundef !93
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %.sroa.032.0.copyload = load <2 x float>, ptr %7, align 8 ; 2 uses
  %i.p = fmul <2 x float> %.sroa.032.0.copyload, splat (float f0x40490FDB)
  %i.q = fadd <2 x float> %i.p, splat (float f0xBFC90FDB) ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = call noundef float @tanf(float noundef %i.r) #37 ; 3 uses
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = call noundef float @tanf(float noundef %i.t) #37 ; 3 uses
  %i.v = fmul float %i.s, %i.s
  %i.w = fmul float %i.u, %i.u
  %i.x = fadd float %i.v, %i.w
  %i.y = fadd float %i.x, 1.000000e+00
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.z, align 8, !tbaa !77
  %.sroa.238.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.238.0..sroa_idx.i.i, align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 212
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.aa, align 4, !tbaa !77
  %.sroa.228.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.228.0..sroa_idx.i.i, align 4, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.ab, align 8, !tbaa !77
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !tbaa !77
  %i.ac = insertelement <3 x float> <float poison, float poison, float 1.000000e+00>, float %i.s, i64 0
  %i.ad = insertelement <3 x float> %i.ac, float %i.u, i64 1
  %i.ae = insertelement <3 x float> poison, float %sqrt.i.i.i, i64 0
  %i.af = shufflevector <3 x float> %i.ae, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ag = fdiv <3 x float> %i.ad, %i.af           ; 7 uses
  %i.ah = extractelement <3 x float> %i.ag, i64 0
  %i.ai = extractelement <3 x float> %i.ag, i64 1
  %i.aj = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj
  %i.al = fsub <2 x float> splat (float 1.000000e+00), %i.ak ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = fmul float %i.am, f0x411DE9E7
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = fmul float %i.ao, %i.an
  %i.aq = extractelement <3 x float> %i.ag, i64 2 ; 2 uses
  %i.ar = fdiv float %i.ap, %i.aq                 ; 2 uses
  %i.as = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %.sroa.037.0.copyload.i.i, %i.as
  %i.au = fmul float %.sroa.238.0.copyload.i.i, %i.ah
  %i.av = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = fmul <2 x float> %.sroa.027.0.copyload.i.i, %i.av
  %i.ax = fmul float %.sroa.228.0.copyload.i.i, %i.ai
  %i.ay = fadd <2 x float> %i.at, %i.aw
  %i.az = fadd float %i.au, %i.ax
  %i.ba = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bb = fmul <2 x float> %i.ba, %.sroa.011.0.copyload.i.i
  %i.bc = fmul float %i.aq, %.sroa.212.0.copyload.i.i
  %i.bd = fadd <2 x float> %i.ay, %i.bb           ; 3 uses
  %i.be = fadd float %i.az, %i.bc                 ; 2 uses
  %i.bf = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bg = load float, ptr %i.a, align 4, !tbaa !77
  %i.bh = fdiv float %i.bg, %i.ar                 ; 2 uses
  %i.bi = call float @llvm.fabs.f32(float %i.bh)
  %i.bj = fcmp oeq float %i.bi, +inf
  br i1 %i.bj, label %bb.h, label %_ZN4pstd8optionalIN4pbrt6Point2IfEEEdeEv.exit63

bb.h:                                             ; preds = %bb.g
  call void @_ZN4pbrt8LogFatalIJRA12_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef 1244, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(12) @.str.77) #36
  unreachable

_ZN4pstd8optionalIN4pbrt6Point2IfEEEdeEv.exit63:  ; preds = %bb.g
  %i.bk = call { <2 x float>, <2 x float> } @_ZNK4pbrt24PortalImageInfiniteLight11ImageLookupENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(516) %1, <2 x float> %.sroa.032.0.copyload, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.bl = extractvalue { <2 x float>, <2 x float> } %i.bk, 0
  %i.bm = extractvalue { <2 x float>, <2 x float> } %i.bk, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !282
  %i.bp = fmul float %i.bo, 2.000000e+00          ; 3 uses
  %i.bq = extractelement <2 x float> %i.bd, i64 0
  %i.br = fmul float %i.bq, %i.bp
  %i.bs = extractelement <2 x float> %i.bd, i64 1
  %i.bt = fmul float %i.bs, %i.bp
  %i.bu = fmul float %i.be, %i.bp
  %i.bv = extractelement <2 x float> %i.f, i64 0
  %i.bw = fadd float %i.bv, %i.br
  %i.bx = extractelement <2 x float> %i.f, i64 1
  %i.by = fadd float %i.bx, %i.bt
  %i.bz = fadd float %i.h, %i.bu
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = insertelement <2 x float> poison, float %i.by, i64 0
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.0.vec.insert.i.i81 = insertelement <2 x float> poison, float %i.bz, i64 0
  %.sroa.0.4.vec.insert.i.i82 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i81, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.12.32..sroa_idx, i8 0, i64 36, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.cc, align 8, !tbaa !177
  store <2 x float> %i.bl, ptr %0, align 8
  %.sroa.084.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bm, ptr %.sroa.084.sroa.5.0..sroa_idx, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.bd, ptr %.sroa.585.0..sroa_idx, align 8
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.be, ptr %.sroa.686.0..sroa_idx, align 8
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bh, ptr %.sroa.787.0..sroa_idx, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %i.cd, align 8
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.10.32..sroa_idx, align 8
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i82, ptr %.sroa.11.32..sroa_idx, align 8
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ca, ptr %.sroa.14.32..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.ce, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_ZN4pstd8optionalIN4pbrt6Point2IfEEEdeEv.exit63, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt27WindowedPiecewiseConstant2D6SampleENS_6Point2IfEENS_7Bounds2IfEEPf(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.89") align 4 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, ptr noundef %5) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %6 = alloca %"class.pbrt::Bounds2", align 8     ; 5 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %7 = alloca %class.anon.175, align 8            ; 4 uses
  %8 = alloca %"class.pbrt::Bounds2", align 8     ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %9 = alloca %class.anon.176, align 8            ; 4 uses
  store <2 x float> %3, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %4, ptr %i.c, align 8
  %.sroa.5.8.vec.extract.i = extractelement <2 x float> %4, i64 0 ; 5 uses
end_hunk_9
begin_hunk_10_@_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !28
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #35
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.111, %bb.c ], [ @.str.112, %bb.r ], [ @.str.110, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.109, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #36
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !244
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !28
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !28
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.56") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #30 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load <16 x float>, ptr %1, align 4, !tbaa !77 ; 17 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !tbaa !77 ; 3 uses
  %i.i = load float, ptr %i.e, align 4, !tbaa !77
  %i.j = load <2 x float>, ptr %i.f, align 4, !tbaa !77 ; 3 uses
  %i.k = load <2 x float>, ptr %i.a, align 4, !tbaa !77 ; 3 uses
  %i.l = load float, ptr %i.b, align 4, !tbaa !77
  %i.m = load <2 x float>, ptr %i.c, align 4, !tbaa !77 ; 3 uses
  %i.n = fneg <16 x float> %i.g
  %i.o = shufflevector <16 x float> %i.n, <16 x float> poison, <4 x i32> <i32 13, i32 5, i32 12, i32 4> ; 5 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.q = shufflevector <2 x float> %i.h, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x float> %i.j, <2 x float> %i.m, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.s = fmul <2 x float> %i.q, %i.r              ; 2 uses
  %i.t = fneg <2 x float> %i.s
  %i.u = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 8, i32 0>
  %i.v = insertelement <2 x float> poison, float %i.i, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.l, i64 1
  %i.x = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.z = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.y, <2 x float> %i.r, <2 x float> %i.s)
  %i.aa = fadd <2 x float> %i.x, %i.z             ; 4 uses
  %i.ab = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 13, i32 13, i32 5, i32 5, i32 12, i32 12, i32 4, i32 4>
  %i.ac = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 11, i32 10, i32 3, i32 2, i32 11, i32 10, i32 3, i32 2> ; 2 uses
  %i.ad = fmul <8 x float> %i.ab, %i.ac           ; 2 uses
  %i.ae = fneg <8 x float> %i.ad
  %i.af = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 9, i32 9, i32 1, i32 1, i32 8, i32 8, i32 0, i32 0>
  %i.ag = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 15, i32 14, i32 7, i32 6, i32 15, i32 14, i32 7, i32 6>
  %i.ah = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.af, <8 x float> %i.ag, <8 x float> %i.ae)
  %i.ai = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.p, <8 x float> %i.ac, <8 x float> %i.ad)
  %i.aj = fadd <8 x float> %i.ah, %i.ai           ; 19 uses
  %i.ak = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 14, i32 6> ; 2 uses
  %i.al = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 11, i32 3> ; 2 uses
  %i.am = fmul <2 x float> %i.ak, %i.al           ; 2 uses
  %i.an = fneg <2 x float> %i.am
  %i.ao = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 10, i32 2>
  %i.ap = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 15, i32 7>
  %i.aq = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ao, <2 x float> %i.ap, <2 x float> %i.an)
  %i.ar = fneg <2 x float> %i.ak                  ; 4 uses
  %i.as = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ar, <2 x float> %i.al, <2 x float> %i.am)
  %i.at = fadd <2 x float> %i.aq, %i.as           ; 4 uses
  %i.au = extractelement <8 x float> %i.aj, i64 7
  %i.av = fneg float %i.au                        ; 2 uses
  %i.aw = extractelement <8 x float> %i.aj, i64 2
  %i.ax = fneg float %i.aw                        ; 2 uses
  %i.ay = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ba = fmul float %i.az, %i.ay                 ; 4 uses
  %i.bb = fneg float %i.ba
  %i.bc = tail call noundef float @llvm.fma.f32(float %i.az, float %i.ay, float %i.bb)
  %i.bd = extractelement <8 x float> %i.aj, i64 0 ; 2 uses
  %i.be = fmul float %i.bd, %i.av                 ; 4 uses
  %i.bf = fneg float %i.be
  %i.bg = tail call noundef float @llvm.fma.f32(float %i.av, float %i.bd, float %i.bf)
  %i.bh = extractelement <8 x float> %i.aj, i64 1 ; 2 uses
  %i.bi = extractelement <8 x float> %i.aj, i64 6 ; 2 uses
  %i.bj = fmul float %i.bi, %i.bh                 ; 4 uses
  %i.bk = fneg float %i.bj
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.bi, float %i.bh, float %i.bk)
  %i.bm = extractelement <8 x float> %i.aj, i64 3 ; 2 uses
  %i.bn = extractelement <8 x float> %i.aj, i64 4 ; 2 uses
  %i.bo = fmul float %i.bm, %i.bn                 ; 4 uses
  %i.bp = fneg float %i.bo
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bm, float %i.bn, float %i.bp)
  %i.br = extractelement <2 x float> %i.at, i64 1 ; 2 uses
  %i.bs = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.bt = fmul float %i.br, %i.bs                 ; 4 uses
  %i.bu = fneg float %i.bt
  %i.bv = tail call noundef float @llvm.fma.f32(float %i.br, float %i.bs, float %i.bu)
  %i.bw = extractelement <8 x float> %i.aj, i64 5 ; 2 uses
  %i.bx = fmul float %i.bw, %i.ax                 ; 3 uses
  %i.by = fneg float %i.bx
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.ax, float %i.bw, float %i.by)
  %i.ca = fadd float %i.bt, %i.bx                 ; 4 uses
  %i.cb = fsub float %i.ca, %i.bt                 ; 2 uses
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fsub float %i.bt, %i.cc
  %i.ce = fsub float %i.bx, %i.cb
  %i.cf = fadd float %i.ce, %i.cd
  %i.cg = fadd float %i.bz, %i.cf
  %i.ch = fadd float %i.bv, %i.cg
  %i.ci = fadd float %i.ca, %i.bo                 ; 4 uses
  %i.cj = fsub float %i.ci, %i.bo                 ; 2 uses
  %i.ck = fsub float %i.ci, %i.cj
  %i.cl = fsub float %i.bo, %i.ck
  %i.cm = fsub float %i.ca, %i.cj
  %i.cn = fadd float %i.cm, %i.cl
  %i.co = fadd float %i.cn, %i.ch
  %i.cp = fadd float %i.bq, %i.co
  %i.cq = fadd float %i.bj, %i.ci                 ; 4 uses
  %i.cr = fsub float %i.cq, %i.bj                 ; 2 uses
  %i.cs = fsub float %i.cq, %i.cr
  %i.ct = fsub float %i.bj, %i.cs
  %i.cu = fsub float %i.ci, %i.cr
  %i.cv = fadd float %i.cu, %i.ct
  %i.cw = fadd float %i.cv, %i.cp
  %i.cx = fadd float %i.bl, %i.cw
  %i.cy = fadd float %i.be, %i.cq                 ; 4 uses
  %i.cz = fsub float %i.cy, %i.be                 ; 2 uses
  %i.da = fsub float %i.cy, %i.cz
  %i.db = fsub float %i.be, %i.da
  %i.dc = fsub float %i.cq, %i.cz
  %i.dd = fadd float %i.dc, %i.db
  %i.de = fadd float %i.dd, %i.cx
  %i.df = fadd float %i.bg, %i.de
  %i.dg = fadd float %i.ba, %i.cy                 ; 3 uses
  %i.dh = fsub float %i.dg, %i.ba                 ; 2 uses
  %i.di = fsub float %i.dg, %i.dh
  %i.dj = fsub float %i.ba, %i.di
  %i.dk = fsub float %i.cy, %i.dh
  %i.dl = fadd float %i.dk, %i.dj
  %i.dm = fadd float %i.dl, %i.df
  %i.dn = fadd float %i.bc, %i.dm
  %i.do = fadd float %i.dg, %i.dn                 ; 2 uses
  %i.dp = fcmp oeq float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %0, i8 0, i64 68, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.dq = shufflevector <2 x float> %i.at, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1>
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %2 = load <2 x float>, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !77
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dv = load float, ptr %i.du, align 4, !tbaa !77
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !77 ; 2 uses
  %i.dy = fdiv float 1.000000e+00, %i.do
  %i.dz = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 7, i32 2, i32 15, i32 10, i32 3, i32 6, i32 11, i32 14> ; 2 uses
  %i.ea = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 3 uses
  %i.eb = fmul <8 x float> %i.dz, %i.ea           ; 4 uses
  %i.ec = insertelement <2 x float> %2, float %i.dv, i64 1
  %i.ed = fneg <2 x float> %i.ec                  ; 2 uses
  %i.ee = shufflevector <2 x float> %i.m, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.ef = fneg <2 x float> %i.ee
  %i.eg = fneg <16 x float> %i.g
  %i.eh = shufflevector <16 x float> %i.eg, <16 x float> poison, <4 x i32> <i32 2, i32 7, i32 10, i32 15>
  %i.ei = fneg <16 x float> %i.g
  %i.ej = shufflevector <16 x float> %i.ei, <16 x float> poison, <2 x i32> <i32 0, i32 8>
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.ek, align 4, !tbaa !108
  %i.el = shufflevector <2 x float> %i.at, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.em = shufflevector <16 x float> %i.g, <16 x float> %i.el, <8 x i32> <i32 5, i32 16, i32 17, i32 17, i32 16, i32 16, i32 8, i32 17>
  %i.en = shufflevector <16 x float> %i.el, <16 x float> %i.g, <8 x i32> <i32 0, i32 poison, i32 29, i32 poison, i32 16, i32 poison, i32 1, i32 poison>
  %i.eo = shufflevector <2 x float> %i.ef, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ep = shufflevector <8 x float> %i.en, <8 x float> %i.eo, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 poison, i32 6, i32 poison>
  %i.eq = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.er = shufflevector <8 x float> %i.ep, <8 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 6, i32 10> ; 2 uses
  %i.es = fmul <8 x float> %i.em, %i.er           ; 4 uses
  %i.et = fneg <8 x float> %i.es
  %i.eu = shufflevector <8 x float> %i.er, <8 x float> poison, <16 x i32> <i32 poison, i32 1, i32 poison, i32 3, i32 poison, i32 5, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <16 x float> %i.g, <16 x float> %i.eu, <8 x i32> <i32 5, i32 17, i32 13, i32 19, i32 0, i32 21, i32 8, i32 23>
  %i.ew = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ev, <8 x float> %i.dq, <8 x float> %i.et)
  %i.ex = fneg <8 x float> %i.eb
  %i.ey = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.dz, <8 x float> %i.ea, <8 x float> %i.ex)
  %i.ez = shufflevector <2 x float> %i.ar, <2 x float> %i.ed, <8 x i32> <i32 1, i32 2, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.eh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fc = fmul <8 x float> %i.aj, %i.fb           ; 3 uses
  %i.fd = fneg <8 x float> %i.fc
  %i.fe = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.fb, <8 x float> %i.aj, <8 x float> %i.fd)
  %i.ff = fadd <8 x float> %i.fc, %i.eb           ; 4 uses
  %i.fg = fsub <8 x float> %i.ff, %i.eb           ; 2 uses
  %i.fh = fsub <8 x float> %i.ff, %i.fg
  %i.fi = fsub <8 x float> %i.eb, %i.fh
  %i.fj = fsub <8 x float> %i.fc, %i.fg
  %i.fk = fadd <8 x float> %i.fj, %i.fi
  %i.fl = fadd <8 x float> %i.fe, %i.fk
  %i.fm = fadd <8 x float> %i.ey, %i.fl
  %i.fn = fadd <8 x float> %i.es, %i.ff           ; 3 uses
  %i.fo = fsub <8 x float> %i.fn, %i.es           ; 2 uses
  %i.fp = fsub <8 x float> %i.fn, %i.fo
  %i.fq = fsub <8 x float> %i.es, %i.fp
  %i.fr = fsub <8 x float> %i.ff, %i.fo
  %i.fs = fadd <8 x float> %i.fr, %i.fq
  %i.ft = fadd <8 x float> %i.fs, %i.fm
  %i.fu = fadd <8 x float> %i.ew, %i.ft
  %i.fv = fadd <8 x float> %i.fn, %i.fu
  %i.fw = insertelement <8 x float> poison, float %i.dy, i64 0
  %i.fx = shufflevector <8 x float> %i.fw, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fy = fmul <8 x float> %i.fv, %i.fx
  %i.fz = shufflevector <8 x float> %i.fy, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  store <8 x float> %i.fz, ptr %0, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ga = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gb = shufflevector <16 x float> %i.ga, <16 x float> %i.g, <4 x i32> <i32 3, i32 16, i32 2, i32 24> ; 2 uses
  %i.gc = shufflevector <8 x float> %i.aj, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.gd = shufflevector <2 x float> %i.k, <2 x float> %i.h, <8 x i32> <i32 0, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = shufflevector <2 x float> %i.ej, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <8 x float> %i.gd, <8 x float> %i.ge, <8 x i32> <i32 0, i32 8, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.gb, <4 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 7, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gi = shufflevector <8 x float> %i.aj, <8 x float> %i.eq, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 10, i32 3>
  %i.gj = fmul <8 x float> %i.gh, %i.gi           ; 4 uses
  %i.gk = fneg <8 x float> %i.gj
  %i.gl = shufflevector <4 x float> %i.gb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gm = shufflevector <8 x float> %i.gh, <8 x float> %i.gl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gn = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 3, i32 3>
  %i.go = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.gm, <8 x float> %i.gn, <8 x float> %i.gk)
  %i.gp = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gq = shufflevector <8 x float> %i.ea, <8 x float> %i.gp, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 8, i32 9, i32 9>
  %i.gr = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 6, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = shufflevector <8 x float> %i.gr, <8 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.gt = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gu = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gv = shufflevector <4 x float> %i.o, <4 x float> %i.gu, <8 x i32> <i32 1, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 4, i32 poison>
  %i.gw = shufflevector <2 x float> %i.m, <2 x float> %i.j, <8 x i32> <i32 poison, i32 0, i32 poison, i32 2, i32 poison, i32 1, i32 poison, i32 3> ; 2 uses
  %i.gx = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 poison, i32 13, i32 6, i32 15>
  %i.gy = shufflevector <2 x float> %i.k, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gz = shufflevector <8 x float> %i.gx, <8 x float> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.ha = fmul <8 x float> %i.gs, %i.gz           ; 3 uses
  %i.hb = insertelement <8 x float> %i.gw, float %i.dt, i64 0
  %i.hc = insertelement <8 x float> %i.hb, float %i.dx, i64 2
  %i.hd = shufflevector <8 x float> %i.hc, <8 x float> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 poison, i32 7>
  %i.he = shufflevector <2 x float> %i.h, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x float> %i.hd, <8 x float> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 7> ; 3 uses
  %i.hg = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 poison, i32 4, i32 poison, i32 6, i32 5, i32 poison, i32 7, i32 poison>
  %i.hh = shufflevector <8 x float> %i.gp, <8 x float> %i.hg, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 0, i32 14, i32 2> ; 2 uses
  %i.hi = shufflevector <8 x float> %i.hf, <8 x float> %i.gs, <8 x i32> <i32 0, i32 13, i32 14, i32 14, i32 13, i32 poison, i32 6, i32 poison>
  %i.hj = shufflevector <8 x float> %i.hi, <8 x float> %i.eo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 6, i32 9> ; 2 uses
  %i.hk = shufflevector <2 x float> %i.aa, <2 x float> %i.ed, <8 x i32> <i32 0, i32 2, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = insertelement <8 x float> %i.hk, float %i.dx, i64 2
  %i.hm = shufflevector <8 x float> %i.gt, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 15, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hn = shufflevector <8 x float> %i.hl, <8 x float> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ho = fmul <8 x float> %i.hj, %i.hn           ; 3 uses
  %i.hp = fneg <8 x float> %i.hh
  %i.hq = fmul <8 x float> %i.hf, %i.hp
  %i.hr = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hf, <8 x float> %i.hh, <8 x float> %i.hq)
  %i.hs = shufflevector <8 x float> %i.aj, <8 x float> %i.hj, <8 x i32> <i32 4, i32 9, i32 6, i32 10, i32 9, i32 13, i32 10, i32 15> ; 2 uses
  %i.ht = shufflevector <8 x float> %i.eq, <8 x float> %i.hn, <8 x i32> <i32 1, i32 9, i32 0, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hu = shufflevector <8 x float> %i.gt, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 0, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hv = shufflevector <8 x float> %i.ht, <8 x float> %i.hu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hw = fneg <8 x float> %i.hv
  %i.hx = fmul <8 x float> %i.hs, %i.hw
  %i.hy = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hv, <8 x float> %i.hs, <8 x float> %i.hx)
  %i.hz = fadd <8 x float> %i.ho, %i.ha           ; 4 uses
  %i.ia = shufflevector <8 x float> %i.ho, <8 x float> %i.ha, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15> ; 2 uses
  %i.ib = fsub <8 x float> %i.hz, %i.ia           ; 2 uses
  %i.ic = fsub <8 x float> %i.hz, %i.ib
  %i.id = fsub <8 x float> %i.ia, %i.ic
  %i.ie = shufflevector <8 x float> %i.ha, <8 x float> %i.ho, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15>
  %i.if = fsub <8 x float> %i.ie, %i.ib
  %i.ig = fadd <8 x float> %i.if, %i.id
  %i.ih = fadd <8 x float> %i.hy, %i.ig
  %i.ii = fadd <8 x float> %i.hr, %i.ih
  %i.ij = fadd <8 x float> %i.gj, %i.hz           ; 3 uses
  %i.ik = fsub <8 x float> %i.ij, %i.gj           ; 2 uses
  %i.il = fsub <8 x float> %i.ij, %i.ik
  %i.im = fsub <8 x float> %i.gj, %i.il
  %i.in = fsub <8 x float> %i.hz, %i.ik
  %i.io = fadd <8 x float> %i.in, %i.im
  %i.ip = fadd <8 x float> %i.io, %i.ii
  %i.iq = fadd <8 x float> %i.go, %i.ip
  %i.ir = fadd <8 x float> %i.ij, %i.iq
  %i.is = fmul <8 x float> %i.ir, %i.fx
  store <8 x float> %i.is, ptr %.sroa.11.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt4$_158__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #19 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL10imageBytesE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  tail call void @_ZN4pbrt16StatsAccumulator19ReportMemoryCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.121, i64 noundef %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !165
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit.i ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %indvars.iv.i ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !80
  %i.l = shl i64 %i.k, 2
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.h, i64 noundef %i.l, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #39
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.s, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !80
  %i.x = shl i64 %i.w, 2
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.u, i64 noundef %i.x, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit.i unwind label %bb.f, !inline_history !1
end_hunk_10
begin_hunk_11_@_ZNK4pbrt6Sphere6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE:bb.a
  %i.ev = fmul float %i.eu, %i.eu
  %i.ew = fsub float 1.000000e+00, %i.ev
  %i.ex = fcmp olt float %i.eo, 6.852300e-04
  br i1 %i.ex, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ey = fmul float %.sroa.0463.0.vec.extract, %i.eo ; 2 uses
  %i.ez = fsub float 1.000000e+00, %i.ey
  %i.fa = tail call noundef float @sqrtf(float noundef %i.ez) #37
  %i.fb = fmul nnan float %i.eo, 5.000000e-01
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0235 = phi float [ %i.ey, %bb.i ], [ %i.ew, %bb.h ] ; 2 uses
  %.0234 = phi float [ %i.fa, %bb.i ], [ %i.eu, %bb.h ]
  %.0233 = phi float [ %i.fb, %bb.i ], [ %i.er, %bb.h ]
  %i.fc = fdiv float %.0235, %i.en
  %i.fd = fdiv float %.0235, %i.eo
  %i.fe = fsub float 1.000000e+00, %i.fd          ; 2 uses
  %i.ff = fcmp ogt float %i.fe, 0.000000e+00
  %.sroa.speculated.i335 = select i1 %i.ff, float %i.fe, float 0.000000e+00
  %sqrt.i336 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i335)
  %i.fg = fmul float %.0234, %sqrt.i336
  %i.fh = fadd float %i.fc, %i.fg                 ; 5 uses
  %i.fi = fmul float %i.fh, %i.fh
  %i.fj = fsub float 1.000000e+00, %i.fi          ; 2 uses
  %i.fk = fcmp ogt float %i.fj, 0.000000e+00
  %.sroa.speculated.i337 = select i1 %i.fk, float %i.fj, float 0.000000e+00
  %sqrt.i338 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i337) ; 2 uses
  %.sroa.0463.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.fl = fmul float %.sroa.0463.4.vec.extract, 2.000000e+00
  %i.fm = fmul float %i.fl, f0x40490FDB           ; 2 uses
  %i.fn = fcmp ogt float %sqrt.i338, 1.000000e+00
  %..i.i = select i1 %i.fn, float 1.000000e+00, float %sqrt.i338 ; 2 uses
  %i.fo = tail call noundef float @cosf(float noundef %i.fm) #37
  %i.fp = tail call noundef float @sinf(float noundef %i.fm) #37
  %i.fq = fcmp olt float %i.fh, -1.000000e+00
  %i.fr = fcmp ogt float %i.fh, 1.000000e+00
  %.sroa.0.sroa.5.0.copyload.i351 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 4
  %.sroa.0.sroa.6.0.copyload.i353 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 4
  %i.fs = fadd float %.sroa.0.sroa.5.0.copyload.i351, %.sroa.0.sroa.6.0.copyload.i353
  %i.ft = fmul float %i.fs, 5.000000e-01
  %i.fu = extractelement <2 x float> %i.au, i64 0
  %i.fv = fsub float %i.be, %i.ft                 ; 3 uses
  %i.fw = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i, align 4
  %i.fx = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fz = fadd <2 x float> %i.fw, %i.fy
  %i.ga = fmul <2 x float> %i.fz, splat (float 5.000000e-01)
  %i.gb = fsub <2 x float> %i.bc, %i.ga           ; 3 uses
  %i.gc = fmul <2 x float> %i.gb, %i.gb           ; 2 uses
  %shift484 = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop485 = fadd <2 x float> %i.gc, %shift484
  %i.gd = extractelement <2 x float> %foldExtExtBinop485, i64 0
  %i.ge = fmul float %i.fv, %i.fv
  %i.gf = fadd float %i.gd, %i.ge
  %sqrt.i.i366 = tail call noundef float @llvm.sqrt.f32(float %i.gf) ; 2 uses
  %i.gg = insertelement <2 x float> poison, float %sqrt.i.i366, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fdiv <2 x float> %i.gb, %i.gh           ; 4 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 1 ; 5 uses
  %i.gk = extractelement <2 x float> %i.gi, i64 0 ; 3 uses
  %i.gl = fdiv float %i.fv, %sqrt.i.i366          ; 3 uses
  %i.gm = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.gl) ; 5 uses
  %i.gn = fadd float %i.gl, %i.gm
  %i.go = fdiv float -1.000000e+00, %i.gn         ; 3 uses
  %i.gp = fmul float %i.gk, %i.gj
  %i.gq = fmul float %i.gp, %i.go                 ; 2 uses
  %foldExtExtBinop487 = fmul <2 x float> %i.gi, %i.gi
  %i.gr = extractelement <2 x float> %foldExtExtBinop487, i64 0
  %i.gs = fmul float %i.gm, %i.gr
  %i.gt = fmul float %i.gs, %i.go
  %i.gu = fadd float %i.gt, 1.000000e+00
  %i.gv = fmul float %i.gm, %i.gq
  %i.gw = fneg float %i.gm
  %i.gx = fmul float %i.gk, %i.gw
  %i.gy = fmul float %i.gj, %i.gj
  %i.gz = fmul float %i.gy, %i.go
  %i.ha = fadd float %i.gm, %i.gz
  %i.hb = fneg float %i.fo
  %i.hc = fmul float %..i.i, %i.hb                ; 3 uses
  %i.hd = fneg float %i.fp
  %i.he = fmul float %..i.i, %i.hd                ; 3 uses
  %.neg = fneg float %i.fh
  %..i7.i.neg = select i1 %i.fr, float -1.000000e+00, float %.neg
  %i.hf = select i1 %i.fq, float 1.000000e+00, float %..i7.i.neg ; 3 uses
  %i.hg = fmul float %i.hc, %i.gu
  %i.hh = fmul float %i.hc, %i.gv
  %i.hi = fmul float %i.hc, %i.gx
  %i.hj = fmul float %i.he, %i.gq
  %i.hk = fmul float %i.he, %i.ha
  %i.hl = fadd float %i.hj, %i.hg
  %i.hm = fadd float %i.hh, %i.hk
  %i.hn = fmul float %i.he, %i.gj
  %i.ho = fsub float %i.hi, %i.hn
  %i.hp = fmul float %i.hf, %i.gk
  %i.hq = fmul float %i.hf, %i.gj
  %i.hr = fmul float %i.hf, %i.gl
  %i.hs = fadd float %i.hp, %i.hl                 ; 3 uses
  %i.ht = fadd float %i.hq, %i.hm                 ; 3 uses
  %i.hu = fadd float %i.hr, %i.ho                 ; 3 uses
  %.sroa.0425.0.vec.insert = insertelement <2 x float> poison, float %i.hs, i64 0
  %.sroa.0425.4.vec.insert = insertelement <2 x float> %.sroa.0425.0.vec.insert, float %i.ht, i64 1
  %i.hv = fmul float %i.bn, %i.hs
  %i.hw = fmul float %i.bn, %i.ht
  %i.hx = fmul float %i.bn, %i.hu
  %i.hy = fadd float %i.fu, %i.hv                 ; 8 uses
  %i.hz = fadd float %.sink.i, %i.hw              ; 8 uses
  %i.ia = fadd float %i.be, %i.hx                 ; 8 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ic = load i8, ptr %i.ib, align 8, !tbaa !359, !range !92, !noundef !93
  %i.id = trunc nuw i8 %i.ic to i1                ; 2 uses
  %i.ie = fneg float %i.hs
  %.sroa.0425.0.vec.insert431 = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.if = fneg float %i.ht
  %.sroa.0425.4.vec.insert436 = insertelement <2 x float> %.sroa.0425.0.vec.insert431, float %i.if, i64 1
  %i.ig = fneg float %i.hu
  %.sroa.11437.0 = select i1 %i.id, float %i.ig, float %i.hu
  %.sroa.0425.0 = select i1 %i.id, <2 x float> %.sroa.0425.4.vec.insert436, <2 x float> %.sroa.0425.4.vec.insert
  %i.ih = tail call noundef float @llvm.fabs.f32(float %i.hy)
  %i.ii = tail call noundef float @llvm.fabs.f32(float %i.hz)
  %i.ij = tail call noundef float @llvm.fabs.f32(float %i.ia)
  %i.ik = fmul float %i.ih, f0x34A00003           ; 3 uses
  %i.il = fmul float %i.ii, f0x34A00003           ; 3 uses
  %i.im = fmul float %i.ij, f0x34A00003           ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !360 ; 16 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !77
  %i.iq = fmul float %i.ip, %i.hy
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !77
  %i.it = fmul float %i.is, %i.hz
  %i.iu = fadd float %i.iq, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !77
  %i.ix = fmul float %i.iw, %i.ia
  %i.iy = fadd float %i.ix, %i.iu
  %i.iz = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !77
  %i.jb = fadd float %i.ja, %i.iy                 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !77
  %i.je = fmul float %i.jd, %i.hy
  %i.jf = getelementptr inbounds nuw i8, ptr %i.io, i64 20
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !77
  %i.jh = fmul float %i.jg, %i.hz
  %i.ji = fadd float %i.je, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !77
  %i.jl = fmul float %i.jk, %i.ia
  %i.jm = fadd float %i.jl, %i.ji
  %i.jn = getelementptr inbounds nuw i8, ptr %i.io, i64 28
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !77
  %i.jp = fadd float %i.jo, %i.jm                 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !77
  %i.js = fmul float %i.jr, %i.hy
  %i.jt = getelementptr inbounds nuw i8, ptr %i.io, i64 36
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !77
  %i.jv = fmul float %i.ju, %i.hz
  %i.jw = fadd float %i.js, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !77
  %i.jz = fmul float %i.jy, %i.ia
  %i.ka = fadd float %i.jz, %i.jw
  %i.kb = getelementptr inbounds nuw i8, ptr %i.io, i64 44
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !77
  %i.kd = fadd float %i.kc, %i.ka                 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !77
  %i.kg = fmul float %i.kf, %i.hy
  %i.kh = getelementptr inbounds nuw i8, ptr %i.io, i64 52
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !77
  %i.kj = fmul float %i.ki, %i.hz
  %i.kk = fadd float %i.kg, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  %i.km = load float, ptr %i.kl, align 4, !tbaa !77
  %i.kn = fmul float %i.ia, %i.km
  %i.ko = fadd float %i.kn, %i.kk
  %i.kp = getelementptr inbounds nuw i8, ptr %i.io, i64 60
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !77
  %i.kr = fadd float %i.kq, %i.ko                 ; 4 uses
  %i.ks = fcmp oeq float %i.kr, 1.000000e+00      ; 3 uses
  %i.kt = fdiv float %i.jb, %i.kr
  %i.ku = fdiv float %i.jp, %i.kr
  %i.kv = fdiv float %i.kd, %i.kr
  %.sink96.i405 = select i1 %i.ks, float %i.jb, float %i.kt
  %.sink.i406 = select i1 %i.ks, float %i.jp, float %i.ku
  %.sroa.495.0.i407 = select i1 %i.ks, float %i.kd, float %i.kv
  %i.kw = fdiv float %.sroa.495.0.i407, %i.bn     ; 3 uses
  %i.kx = fcmp olt float %i.kw, -1.000000e+00
  %i.ky = fcmp ogt float %i.kw, 1.000000e+00
  %..i.i412 = select i1 %i.ky, float 1.000000e+00, float %i.kw
  %.0.i.i = select i1 %i.kx, float -1.000000e+00, float %..i.i412
  %i.kz = tail call noundef float @acosf(float noundef %.0.i.i) #37
  %i.la = tail call noundef float @atan2f(float noundef %.sink.i406, float noundef %.sink96.i405) #37 ; 3 uses
  %i.lb = fcmp olt float %i.la, 0.000000e+00
  %i.lc = fadd float %i.la, f0x40C90FDB
  %spec.select = select i1 %i.lb, float %i.lc, float %i.la
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 20
  %5 = load <2 x float>, ptr %i.ld, align 4
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.lf = load float, ptr %i.le, align 4, !tbaa !361 ; 2 uses
  %i.lg = fsub float %i.kz, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.li = load float, ptr %i.lh, align 8, !tbaa !1300
  %i.lj = fsub float %i.li, %i.lf
  %i.lk = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.ll = insertelement <2 x float> %i.lk, float %i.lg, i64 1
  %i.lm = insertelement <2 x float> %5, float %i.lj, i64 1
  %i.ln = fdiv <2 x float> %i.ll, %i.lm
  %i.lo = fcmp oeq float %i.ik, 0.000000e+00
  br i1 %i.lo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.vec.insert.i385 = insertelement <2 x float> poison, float %i.hy, i64 0
  %.sroa.0.0.vec.insert.i.i413 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i385, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

bb.l:                                             ; preds = %bb.j
  %i.lp = fsub float %i.hy, %i.ik                 ; 3 uses
  %or.cond.i.i.i.i.i = fcmp oeq float %i.lp, -inf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.lq = fcmp oeq float %i.lp, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.lq, float -0.000000e+00, float %i.lp ; 2 uses
  %i.lr = bitcast float %spec.store.select.i.i.i.i.i to i32
  %i.ls = fcmp ogt float %spec.store.select.i.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i.i = select i1 %i.ls, i32 -1, i32 1
  %.0.i.i.i.i.i = add i32 %.0.v.i.i.i.i.i, %i.lr
  %i.lt = bitcast i32 %.0.i.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i

_ZN4pbrt12SubRoundDownEff.exit.i.i:               ; preds = %bb.m, %bb.l
  %.09.i.i.i.i.i = phi float [ %i.lt, %bb.m ], [ -inf, %bb.l ]
  %.sroa.0.0.vec.insert8.i.i = insertelement <2 x float> poison, float %.09.i.i.i.i.i, i64 0
  %i.lu = fadd float %i.hy, %i.ik                 ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.lu, +inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %i.lv = fcmp oeq float %i.lu, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.lv, float 0.000000e+00, float %i.lu ; 2 uses
  %i.lw = bitcast float %spec.store.select.i.i.i.i to i32
  %i.lx = fcmp ult float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.lx, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.lw
  %i.ly = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i

_ZN4pbrt10AddRoundUpEff.exit.i.i:                 ; preds = %bb.n, %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %.010.i.i.i.i = phi float [ %i.ly, %bb.n ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i ]
  %.sroa.0.4.vec.insert10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i, float %.010.i.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i:   ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i.i, %bb.k
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i413, %bb.k ], [ %.sroa.0.4.vec.insert10.i.i, %_ZN4pbrt10AddRoundUpEff.exit.i.i ]
  %i.lz = fcmp oeq float %i.il, 0.000000e+00
  br i1 %i.lz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.ma = insertelement <2 x float> poison, float %i.hz, i64 0
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

bb.p:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.mb = fsub float %i.hz, %i.il                 ; 3 uses
  %or.cond.i.i.i.i9.i = fcmp oeq float %i.mb, -inf
  br i1 %or.cond.i.i.i.i9.i, label %_ZN4pbrt12SubRoundDownEff.exit.i13.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mc = fcmp oeq float %i.mb, 0.000000e+00
  %spec.store.select.i.i.i.i10.i = select i1 %i.mc, float -0.000000e+00, float %i.mb ; 2 uses
  %i.md = bitcast float %spec.store.select.i.i.i.i10.i to i32
  %i.me = fcmp ogt float %spec.store.select.i.i.i.i10.i, 0.000000e+00
  %.0.v.i.i.i.i11.i = select i1 %i.me, i32 -1, i32 1
  %.0.i.i.i.i12.i = add i32 %.0.v.i.i.i.i11.i, %i.md
  %i.mf = bitcast i32 %.0.i.i.i.i12.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13.i

_ZN4pbrt12SubRoundDownEff.exit.i13.i:             ; preds = %bb.q, %bb.p
  %.09.i.i.i.i14.i = phi float [ %i.mf, %bb.q ], [ -inf, %bb.p ]
  %.sroa.0.0.vec.insert8.i15.i = insertelement <2 x float> poison, float %.09.i.i.i.i14.i, i64 0
  %i.mg = fadd float %i.hz, %i.il                 ; 3 uses
  %or.cond.i.i.i16.i = fcmp oeq float %i.mg, +inf
  br i1 %or.cond.i.i.i16.i, label %_ZN4pbrt10AddRoundUpEff.exit.i20.i, label %bb.r

bb.r:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %i.mh = fcmp oeq float %i.mg, 0.000000e+00
  %spec.store.select.i.i.i17.i = select i1 %i.mh, float 0.000000e+00, float %i.mg ; 2 uses
  %i.mi = bitcast float %spec.store.select.i.i.i17.i to i32
  %i.mj = fcmp ult float %spec.store.select.i.i.i17.i, 0.000000e+00
  %.0.v.i.i.i18.i = select i1 %i.mj, i32 -1, i32 1
  %.0.i.i.i19.i = add i32 %.0.v.i.i.i18.i, %i.mi
  %i.mk = bitcast i32 %.0.i.i.i19.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20.i

_ZN4pbrt10AddRoundUpEff.exit.i20.i:               ; preds = %bb.r, %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %.010.i.i.i21.i = phi float [ %i.mk, %bb.r ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13.i ]
  %.sroa.0.4.vec.insert10.i22.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15.i, float %.010.i.i.i21.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i, %bb.o
  %.sroa.0.0.i23.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i, %bb.o ], [ %.sroa.0.4.vec.insert10.i22.i, %_ZN4pbrt10AddRoundUpEff.exit.i20.i ]
  %i.ml = fcmp oeq float %i.im, 0.000000e+00
  br i1 %i.ml, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.mm = insertelement <2 x float> poison, float %i.ia, i64 0
  %.sroa.0.0.vec.insert.i41.i = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

bb.t:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.mn = fsub float %i.ia, %i.im                 ; 3 uses
  %or.cond.i.i.i.i26.i = fcmp oeq float %i.mn, -inf
  br i1 %or.cond.i.i.i.i26.i, label %_ZN4pbrt12SubRoundDownEff.exit.i30.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mo = fcmp oeq float %i.mn, 0.000000e+00
  %spec.store.select.i.i.i.i27.i = select i1 %i.mo, float -0.000000e+00, float %i.mn ; 2 uses
  %i.mp = bitcast float %spec.store.select.i.i.i.i27.i to i32
  %i.mq = fcmp ogt float %spec.store.select.i.i.i.i27.i, 0.000000e+00
  %.0.v.i.i.i.i28.i = select i1 %i.mq, i32 -1, i32 1
  %.0.i.i.i.i29.i = add i32 %.0.v.i.i.i.i28.i, %i.mp
  %i.mr = bitcast i32 %.0.i.i.i.i29.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30.i

_ZN4pbrt12SubRoundDownEff.exit.i30.i:             ; preds = %bb.u, %bb.t
  %.09.i.i.i.i31.i = phi float [ %i.mr, %bb.u ], [ -inf, %bb.t ]
  %.sroa.0.0.vec.insert8.i32.i = insertelement <2 x float> poison, float %.09.i.i.i.i31.i, i64 0
  %i.ms = fadd float %i.ia, %i.im                 ; 3 uses
  %or.cond.i.i.i33.i = fcmp oeq float %i.ms, +inf
  br i1 %or.cond.i.i.i33.i, label %_ZN4pbrt10AddRoundUpEff.exit.i37.i, label %bb.v

bb.v:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %i.mt = fcmp oeq float %i.ms, 0.000000e+00
  %spec.store.select.i.i.i34.i = select i1 %i.mt, float 0.000000e+00, float %i.ms ; 2 uses
  %i.mu = bitcast float %spec.store.select.i.i.i34.i to i32
  %i.mv = fcmp ult float %spec.store.select.i.i.i34.i, 0.000000e+00
  %.0.v.i.i.i35.i = select i1 %i.mv, i32 -1, i32 1
  %.0.i.i.i36.i = add i32 %.0.v.i.i.i35.i, %i.mu
  %i.mw = bitcast i32 %.0.i.i.i36.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37.i

_ZN4pbrt10AddRoundUpEff.exit.i37.i:               ; preds = %bb.v, %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %.010.i.i.i38.i = phi float [ %i.mw, %bb.v ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30.i ]
  %.sroa.0.4.vec.insert10.i39.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32.i, float %.010.i.i.i38.i, i64 1
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit: ; preds = %bb.s, %_ZN4pbrt10AddRoundUpEff.exit.i37.i
  %.sroa.0.0.i40.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i41.i, %bb.s ], [ %.sroa.0.4.vec.insert10.i39.i, %_ZN4pbrt10AddRoundUpEff.exit.i37.i ]
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.my = load float, ptr %i.mx, align 4, !tbaa !358
  %i.mz = fmul float %.0233, f0x40C90FDB
  %i.na = fdiv float 1.000000e+00, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.nb, align 8, !tbaa !227
  store <2 x float> %.sroa.0.0.i.i, ptr %0, align 8
  %.sroa.4415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.0.0.i23.i, ptr %.sroa.4415.0..sroa_idx, align 8
  %.sroa.5416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.0.i40.i, ptr %.sroa.5416.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.my, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> zeroinitializer, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.0425.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %.sroa.11437.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.ln, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.sroa.3.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.sroa.3.0..sroa.13.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store float %i.na, ptr %i.nc, align 8, !tbaa !236
  br label %bb.w

bb.w:                                             ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit, %bb.g
  ret void
}

declare void @_ZNK4pbrt6Sphere6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8, ptr noundef nonnull align 8 dereferenceable(42), <2 x float>) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt18ShapeSampleContext15OffsetRayOriginENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(52) %0, <2 x float> %1, float %2) local_unnamed_addr #30 comdat align 2 {
_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !77 ; 3 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 4, !tbaa !77 ; 4 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.055.0.copyload, i64 0 ; 2 uses
  %i.b = tail call noundef float @llvm.fabs.f32(float %.sroa.03.0.vec.extract.i)
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.055.0.copyload, i64 1 ; 2 uses
  %i.c = tail call noundef float @llvm.fabs.f32(float %.sroa.03.4.vec.extract.i)
  %i.d = tail call noundef float @llvm.fabs.f32(float %.sroa.256.0.copyload) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load float, ptr %i.i, align 4, !tbaa !193 ; 2 uses
  %i.k = load float, ptr %i.h, align 4, !tbaa !194 ; 2 uses
  %i.l = fsub float %i.j, %i.k
  %i.m = fmul float %i.l, 5.000000e-01            ; 2 uses
  %i.n = fmul float %i.d, %i.m                    ; 2 uses
  %i.o = fneg float %i.n
end_hunk_11
