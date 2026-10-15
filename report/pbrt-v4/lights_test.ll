Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights_test?download=true
inline.NumInlined: 975
inline.NumDeleted: 421
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN29ProjectionLight_Sampling_Test8TestBodyEv:bb.a
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !87
  store ptr %i.bh, ptr %i.ac, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.bi = load i64, ptr %i.ah, align 8, !tbaa !74
  store i64 %i.bi, ptr %i.ag, align 8, !tbaa !74
  %i.bj = load <2 x i64>, ptr %i.ak, align 8, !tbaa !80
  store <2 x i64> %i.bj, ptr %i.aj, align 8, !tbaa !80
  %i.bk = load ptr, ptr %i.al, align 8, !tbaa !91
  store ptr %i.bk, ptr %i.ai, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr @_ZN4pbrt13RGBColorSpace4sRGBE, align 8, !tbaa !113
  %i.bm = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #24
  invoke void @_ZN4pbrt15ProjectionLightC1ENS_9TransformENS_15MediumInterfaceENS_5ImageEPKNS_13RGBColorSpaceEffN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(728) %3, ptr noundef nonnull byval(%"class.pbrt::Transform") align 8 %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(16) %5, ptr nofree noundef nonnull align 8 dereferenceable(152) %6, ptr noundef %i.bl, float noundef 1.000000e+01, float noundef 3.000000e+01, ptr %i.bm)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %6) #24
  store i64 %i.an, ptr %7, align 8, !tbaa !111
  invoke fastcc void @_ZL16testPhiVsSampledN4pbrt5LightERNS_18SampledWavelengthsE(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.ap, align 8, !tbaa !100
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = load i64, ptr %i.as, align 8, !tbaa !101
  %i.bp = shl i64 %i.bo, 2
  %i.bq = load ptr, ptr %i.ar, align 8, !tbaa !102 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.bn, i64 noundef %i.bp, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #25
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 0, ptr %i.at, align 8, !tbaa !100
  %i.bw = load ptr, ptr %i.au, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZN4pbrt15ProjectionLightD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i
  %i.bx = load i64, ptr %i.av, align 8, !tbaa !101
  %i.by = shl i64 %i.bx, 2
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull %i.bw, i64 noundef %i.by, i64 noundef 4)
          to label %_ZN4pbrt15ProjectionLightD2Ev.exit unwind label %bb.g, !inline_history !3

bb.g:                                             ; preds = %bb.k, %bb.f
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #25
  unreachable

_ZN4pbrt15ProjectionLightD2Ev.exit:               ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %bb.f
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aw) #24
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.ax) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call fastcc void @_ZL14MakeLightImageN4pbrt6Point2IiEE(ptr dead_on_unwind noalias writable align 8 %1, i64 3865470566700)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store <8 x float> <float 5.950000e+02, float 7.125000e+02, float 8.300000e+02, float 4.775000e+02, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034>, ptr %2, align 4, !tbaa !18, !alias.scope !165
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store float 1.000000e+00, ptr %4, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.f, align 4, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 12, i1 false)
  %i.cf = load i64, ptr %i.n, align 8, !tbaa !74
  store i64 %i.cf, ptr %i.m, align 8, !tbaa !74
  %i.cg = load i64, ptr %i.r, align 8, !tbaa !77
  store i64 %i.cg, ptr %i.q, align 8, !tbaa !77
  %i.ch = load i64, ptr %i.s, align 8, !tbaa !78
  store i64 %i.ch, ptr %i.p, align 8, !tbaa !78
  %i.ci = load ptr, ptr %i.t, align 8, !tbaa !79
  store ptr %i.ci, ptr %i.o, align 8, !tbaa !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.cj = load <2 x i64>, ptr %i.v, align 8, !tbaa !44
  store <2 x i64> %i.cj, ptr %i.u, align 8, !tbaa !44
  %i.ck = load <2 x i64>, ptr %i.y, align 8, !tbaa !80
  store <2 x i64> %i.ck, ptr %i.x, align 8, !tbaa !80
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !83
  store ptr %i.cl, ptr %i.w, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.cm = load i64, ptr %i.ab, align 8, !tbaa !74
  store i64 %i.cm, ptr %i.aa, align 8, !tbaa !74
  %i.cn = load <2 x i64>, ptr %i.ae, align 8, !tbaa !80
  store <2 x i64> %i.cn, ptr %i.ad, align 8, !tbaa !80
  %i.co = load ptr, ptr %i.af, align 8, !tbaa !87
  store ptr %i.co, ptr %i.ac, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.cp = load i64, ptr %i.ah, align 8, !tbaa !74
  store i64 %i.cp, ptr %i.ag, align 8, !tbaa !74
  %i.cq = load <2 x i64>, ptr %i.ak, align 8, !tbaa !80
  store <2 x i64> %i.cq, ptr %i.aj, align 8, !tbaa !80
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !91
  store ptr %i.cr, ptr %i.ai, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.cs = load ptr, ptr @_ZN4pbrt13RGBColorSpace4sRGBE, align 8, !tbaa !113
  %i.ct = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #24
  invoke void @_ZN4pbrt15ProjectionLightC1ENS_9TransformENS_15MediumInterfaceENS_5ImageEPKNS_13RGBColorSpaceEffN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(728) %3, ptr noundef nonnull byval(%"class.pbrt::Transform") align 8 %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(16) %5, ptr nofree noundef nonnull align 8 dereferenceable(152) %6, ptr noundef %i.cs, float noundef 1.000000e+01, float noundef 3.000000e+01, ptr %i.ct)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZN4pbrt15ProjectionLightD2Ev.exit
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %6) #24
  store i64 %i.an, ptr %7, align 8, !tbaa !111
  invoke fastcc void @_ZL16testPhiVsSampledN4pbrt5LightERNS_18SampledWavelengthsE(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.ap, align 8, !tbaa !100
  %i.cu = load ptr, ptr %i.aq, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = load i64, ptr %i.as, align 8, !tbaa !101
  %i.cw = shl i64 %i.cv, 2
  %i.cx = load ptr, ptr %i.ar, align 8, !tbaa !102 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull %i.cu, i64 noundef %i.cw, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i.1 unwind label %bb.e, !inline_history !3

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i.1: ; preds = %bb.j, %bb.i
  store i64 0, ptr %i.at, align 8, !tbaa !100
  %i.db = load ptr, ptr %i.au, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i1.i.i.i.1 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i1.i.i.i.1, label %_ZN4pbrt15ProjectionLightD2Ev.exit.1, label %bb.k

bb.k:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i.1
  %i.dc = load i64, ptr %i.av, align 8, !tbaa !101
  %i.dd = shl i64 %i.dc, 2
  %i.de = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull %i.db, i64 noundef %i.dd, i64 noundef 4)
          to label %_ZN4pbrt15ProjectionLightD2Ev.exit.1 unwind label %bb.g, !inline_history !3

_ZN4pbrt15ProjectionLightD2Ev.exit.1:             ; preds = %bb.k, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i.1
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aw) #24
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.ax) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.l:                                             ; preds = %_ZN4pbrt15ProjectionLightD2Ev.exit, %bb.a
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %6) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.b
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt15ProjectionLightD2Ev(ptr noundef nonnull align 8 dead_on_return(728) dereferenceable(728) %3) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.m ], [ %i.di, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23LightBounds_Basics_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::LightBounds", align 8 ; 15 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store <2 x float> zeroinitializer, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store <2 x float> splat (float 1.000000e-01), ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store <2 x float> <float f0x3C23D70A, float 1.000000e+00>, ptr %.sroa.6205.0..sroa_idx, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  store <2 x float> zeroinitializer, ptr %i.g, align 4
  %.sroa.2.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %1, i64 36
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.2.0..sroa_idx.i77, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float f0xB33BBD2E, ptr %i.h, align 4, !tbaa !168
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 0, ptr %i.i, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.j = call noundef float @_ZNK4pbrt11LightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEE(ptr noundef nonnull align 4 dereferenceable(49) %1, <2 x float> splat (float 1.000000e+00), float 1.000000e+00, <2 x float> zeroinitializer, float 0.000000e+00)
  store float %i.j, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !22
  call void @_ZN7testing8internal11CmpHelperGTIfiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.k = load i8, ptr %2, align 8, !tbaa !30, !range !31, !noundef !32
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ @.str.38, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef 185, ptr noundef %i.p)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.q = load ptr, ptr %3, align 8, !tbaa !36
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.j

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.r, label %bb.h, label %_ZN7testing7MessageD2Ev.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.s = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #24, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #25
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.f, %.noexc.i.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.p

bb.k:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.aa, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.z, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.bg

bb.p:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37
  %.not.i.i.i78 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i78, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i79 unwind label %bb.t

.noexc.i.i79:                                     ; preds = %bb.q
  br i1 %i.ae, label %bb.r, label %_ZN7testing15AssertionResultD2Ev.exit

bb.r:                                             ; preds = %.noexc.i.i79
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !44
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #25
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %.noexc.i.i79, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ao = call noundef float @_ZNK4pbrt11LightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEE(ptr noundef nonnull align 4 dereferenceable(49) %1, <2 x float> splat (float 1.000000e+00), float -1.000000e+00, <2 x float> zeroinitializer, float 0.000000e+00)
  store float %i.ao, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !22
  call void @_ZN7testing8internal11CmpHelperEQIfiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.ap = load i8, ptr %5, align 8, !tbaa !30, !range !31, !noundef !32
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.ai, label %bb.u

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37 ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.as, null
  br i1 %.not.i.i97, label %_ZNK7testing15AssertionResult15failure_messageEv.exit98, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit98

_ZNK7testing15AssertionResult15failure_messageEv.exit98: ; preds = %bb.w, %bb.v
  %i.au = phi ptr [ %i.at, %bb.w ], [ @.str.38, %bb.v ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef 191, ptr noundef %i.au)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit98
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.av = load ptr, ptr %6, align 8, !tbaa !36
  %.not.i.i.i99 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i99, label %_ZN7testing7MessageD2Ev.exit101, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i100 unwind label %bb.ac

end_hunk_0
