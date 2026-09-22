Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZNK11OpenImageIO4v3_113TextureSystem10imagecacheEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !97
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !97
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !55
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !55
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl26wrap_periodic_sharedborderERiii(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, i32 noundef %2) #15 align 2 {
_ZN11OpenImageIO4v3_18safe_modIiEET_S2_S2_.exit:
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %2, i32 2) ; 2 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !55
  %i.b = sub nsw i32 %i.a, %1
  %i.c = add nsw i32 %.sroa.speculated, -1
  %i.d = srem i32 %i.b, %i.c                      ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %i.f = select i1 %i.e, i32 %.sroa.speculated, i32 0
  %spec.select = add nsw i32 %i.d, %i.f
  %i.g = add nsw i32 %spec.select, %1
  store i32 %i.g, ptr %0, align 4, !tbaa !55
  ret i1 true
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110wrap_blackERiii(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i32 noundef) #9

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110wrap_clampERiii(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i32 noundef) #9

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_113wrap_periodicERiii(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i32 noundef) #9

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111wrap_mirrorERiii(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i32 noundef) #9

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_118wrap_periodic_pow2ERiii(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i32 noundef) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i64, i64 } @_ZN11OpenImageIO4v3_13pvt15wrap_black_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #16 {
bb.a:
  %.sroa.034.0.copyload57 = load <4 x i32>, ptr %0, align 16, !tbaa !83 ; 2 uses
  %i.a = load <4 x i32>, ptr %1, align 16, !tbaa !83 ; 2 uses
  %i.b = icmp sge <4 x i32> %.sroa.034.0.copyload57, %i.a
  %i.c = load <4 x i32>, ptr %2, align 16, !tbaa !83
  %i.d = add <4 x i32> %i.c, %i.a
  %i.e = icmp sgt <4 x i32> %i.d, %.sroa.034.0.copyload57
  %i.f = and <4 x i1> %i.b, %i.e
  %i.g = sext <4 x i1> %i.f to <4 x i32>
  %i.h = bitcast <4 x i32> %i.g to <2 x i64>      ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.h, i64 0
  %i.i = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.h, i64 1
  %vec2struct60 = insertvalue { i64, i64 } %i.i, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %vec2struct60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_ZN11OpenImageIO4v3_13pvt15wrap_clamp_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
bb.a:
  %.sroa.069.0.copyload108 = load <4 x i32>, ptr %0, align 16, !tbaa !83
  %i.a = load <4 x i32>, ptr %1, align 16, !tbaa !83 ; 2 uses
  %i.b = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.a, <4 x i32> %.sroa.069.0.copyload108) ; 2 uses
  %i.c = load <4 x i32>, ptr %2, align 16, !tbaa !83
  %i.d = add <4 x i32> %i.c, %i.a                 ; 2 uses
  %i.e = add <4 x i32> %i.d, splat (i32 -1)
  %i.f = icmp slt <4 x i32> %i.b, %i.d
  %i.g = select <4 x i1> %i.f, <4 x i32> %i.b, <4 x i32> %i.e
  store <4 x i32> %i.g, ptr %0, align 16, !tbaa !83
  ret { i64, i64 } { i64 -1, i64 -1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_ZN11OpenImageIO4v3_13pvt18wrap_periodic_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4ES4_.exit:
  %.sroa.0.0.copyload = load <4 x i32>, ptr %0, align 16, !tbaa !83
  %i.a = load <4 x i32>, ptr %1, align 16, !tbaa !83 ; 2 uses
  %i.b = sub <4 x i32> %.sroa.0.0.copyload, %i.a
  %i.c = bitcast <4 x i32> %i.b to <2 x i64>      ; 2 uses
  %.sroa.057.0.vec.extract = extractelement <2 x i64> %i.c, i64 0
  %.sroa.057.8.vec.extract = extractelement <2 x i64> %i.c, i64 1
  %i.d = bitcast i64 %.sroa.057.0.vec.extract to <2 x i32>
  %i.e = bitcast i64 %.sroa.057.8.vec.extract to <2 x i32>
  %i.f = load <2 x i32>, ptr %2, align 16, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load <2 x i32>, ptr %i.g, align 8, !tbaa !83
  %i.i = shufflevector <2 x i32> %i.d, <2 x i32> %i.e, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.j = shufflevector <2 x i32> %i.f, <2 x i32> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.0.8.vecblend79 = srem <4 x i32> %i.i, %i.j ; 3 uses
  %i.k = load <4 x i32>, ptr %2, align 16, !tbaa !83
  %i.l = add <4 x i32> %i.k, %.sroa.0.8.vecblend79
  %isneg91 = icmp slt <4 x i32> %.sroa.0.8.vecblend79, zeroinitializer
  %i.m = select <4 x i1> %isneg91, <4 x i32> %i.l, <4 x i32> zeroinitializer
  %.inner89 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.0.8.vecblend79, <4 x i32> zeroinitializer)
  %.inner90 = or <4 x i32> %.inner89, %i.m
  %i.n = bitcast <4 x i32> %.inner90 to <2 x i64> ; 2 uses
  %.sroa.055.0.vec.extract = extractelement <2 x i64> %i.n, i64 0
  %.sroa.055.8.vec.extract = extractelement <2 x i64> %i.n, i64 1
  %i.o = bitcast i64 %.sroa.055.0.vec.extract to <2 x i32>
  %i.p = bitcast i64 %.sroa.055.8.vec.extract to <2 x i32>
  %.sroa.0.8.vecblend82 = shufflevector <2 x i32> %i.o, <2 x i32> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.q = add <4 x i32> %.sroa.0.8.vecblend82, %i.a
  %i.r = bitcast <4 x i32> %i.q to <2 x i64>      ; 2 uses
  %.sroa.051.0.vec.extract = extractelement <2 x i64> %i.r, i64 0
  %.sroa.051.8.vec.extract = extractelement <2 x i64> %i.r, i64 1
  %i.s = bitcast i64 %.sroa.051.0.vec.extract to <2 x i32>
  %i.t = bitcast i64 %.sroa.051.8.vec.extract to <2 x i32>
  %.sroa.0.8.vecblend85 = shufflevector <2 x i32> %i.s, <2 x i32> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %.sroa.0.8.vecblend85, ptr %0, align 16, !tbaa !83
  ret { i64, i64 } { i64 -1, i64 -1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_ZN11OpenImageIO4v3_13pvt23wrap_periodic_pow2_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
bb.a:
  %.sroa.032.0.copyload55 = load <4 x i32>, ptr %0, align 16, !tbaa !83
  %i.a = load <4 x i32>, ptr %1, align 16, !tbaa !83 ; 2 uses
  %i.b = sub <4 x i32> %.sroa.032.0.copyload55, %i.a
  %i.c = load <4 x i32>, ptr %2, align 16, !tbaa !83
  %i.d = add <4 x i32> %i.c, splat (i32 -1)
  %i.e = and <4 x i32> %i.d, %i.b
  %i.f = add <4 x i32> %i.e, %i.a
  store <4 x i32> %i.f, ptr %0, align 16, !tbaa !83
  ret { i64, i64 } { i64 -1, i64 -1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_ZN11OpenImageIO4v3_13pvt16wrap_mirror_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
_ZN11OpenImageIO4v3_14simddvERKNS1_5vint4ES4_.exit:
  %.sroa.0.0.copyload = load <4 x i32>, ptr %0, align 16, !tbaa !83
  %i.a = load <4 x i32>, ptr %1, align 16, !tbaa !83 ; 2 uses
  %i.b = sub <4 x i32> %.sroa.0.0.copyload, %i.a
  %i.c = bitcast <4 x i32> %i.b to <2 x i64>      ; 2 uses
  %.sroa.0119.0.vec.extract = extractelement <2 x i64> %i.c, i64 0
  %.sroa.0119.8.vec.extract = extractelement <2 x i64> %i.c, i64 1
  %i.d = bitcast i64 %.sroa.0119.0.vec.extract to <2 x i32>
  %i.e = bitcast i64 %.sroa.0119.8.vec.extract to <2 x i32>
  %.sroa.0.8.vecblend = shufflevector <2 x i32> %i.d, <2 x i32> %i.e, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %.lobit = ashr <4 x i32> %.sroa.0.8.vecblend, splat (i32 31)
  %i.f = xor <4 x i32> %.sroa.0.8.vecblend, %.lobit
  %i.g = bitcast <4 x i32> %i.f to <2 x i64>      ; 2 uses
  %.sroa.0111.0.vec.extract = extractelement <2 x i64> %i.g, i64 0
  %.sroa.0111.8.vec.extract = extractelement <2 x i64> %i.g, i64 1
  %i.h = bitcast i64 %.sroa.0111.0.vec.extract to <2 x i32> ; 3 uses
  %i.i = bitcast i64 %.sroa.0111.8.vec.extract to <2 x i32> ; 3 uses
  %.sroa.0.8.vecblend167 = shufflevector <2 x i32> %i.h, <2 x i32> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.j = load <4 x i32>, ptr %2, align 16, !tbaa !83 ; 2 uses
  %i.k = shufflevector <2 x i32> %i.h, <2 x i32> %i.i, <2 x i32> <i32 0, i32 2>
  %i.l = shufflevector <4 x i32> %i.j, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.m = sdiv <2 x i32> %i.k, %i.l
  %i.n = zext <2 x i32> %i.m to <2 x i64>         ; 2 uses
  %i.o = shufflevector <2 x i32> %i.h, <2 x i32> %i.i, <2 x i32> <i32 1, i32 3>
  %i.p = shufflevector <4 x i32> %i.j, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.q = sdiv <2 x i32> %i.o, %i.p
  %i.r = zext <2 x i32> %i.q to <2 x i64>
  %i.s = shl nuw <2 x i64> %i.r, splat (i64 32)
  %i.t = or disjoint <2 x i64> %i.s, %i.n         ; 2 uses
  %i.u = load <2 x i64>, ptr %2, align 16, !tbaa !83 ; 2 uses
  %i.v = and <2 x i64> %i.u, splat (i64 4294967295)
  %i.w = mul nuw <2 x i64> %i.v, %i.n
  %i.x = bitcast <2 x i64> %i.t to <4 x i32>
  %i.y = bitcast <2 x i64> %i.u to <4 x i32>      ; 2 uses
  %i.z = and <4 x i32> %i.x, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aa = bitcast <4 x i32> %.inner to <2 x i64>
  %i.ab = and <4 x i32> %i.y, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner179 = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ac = bitcast <4 x i32> %.inner179 to <2 x i64>
  %i.ad = mul nuw <2 x i64> %i.ac, %i.aa
  %i.ae = bitcast <2 x i64> %i.w to <4 x i32>
  %i.af = bitcast <2 x i64> %i.ad to <4 x i32>
  %i.ag = shufflevector <4 x i32> %i.ae, <4 x i32> %i.af, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ah = sub <4 x i32> %.sroa.0.8.vecblend167, %i.ag
  %i.ai = bitcast <4 x i32> %i.ah to <2 x i64>    ; 2 uses
  %.sroa.0126.0.vec.extract = extractelement <2 x i64> %i.ai, i64 0
  %.sroa.0126.8.vec.extract = extractelement <2 x i64> %i.ai, i64 1
  %i.aj = bitcast i64 %.sroa.0126.0.vec.extract to <2 x i32>
  %i.ak = bitcast i64 %.sroa.0126.8.vec.extract to <2 x i32>
  %.sroa.0.8.vecblend173 = shufflevector <2 x i32> %i.aj, <2 x i32> %i.ak, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.al = xor <4 x i32> %.sroa.0.8.vecblend173, splat (i32 -1)
  %i.am = add <4 x i32> %i.al, %i.y
  %i.an = bitcast <2 x i64> %i.t to <4 x i32>
  %i.ao = and <4 x i32> %i.an, splat (i32 1)
  %i.ap = icmp eq <4 x i32> %i.ao, zeroinitializer
  %.inner182 = select <4 x i1> %i.ap, <4 x i32> %.sroa.0.8.vecblend173, <4 x i32> %i.am
  %i.aq = bitcast <4 x i32> %.inner182 to <2 x i64> ; 2 uses
  %.sroa.0109.0.vec.extract = extractelement <2 x i64> %i.aq, i64 0
  %.sroa.0109.8.vec.extract = extractelement <2 x i64> %i.aq, i64 1
  %i.ar = bitcast i64 %.sroa.0109.0.vec.extract to <2 x i32>
  %i.as = bitcast i64 %.sroa.0109.8.vec.extract to <2 x i32>
  %.sroa.0.8.vecblend170 = shufflevector <2 x i32> %i.ar, <2 x i32> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.at = add <4 x i32> %.sroa.0.8.vecblend170, %i.a
  %i.au = bitcast <4 x i32> %i.at to <2 x i64>    ; 2 uses
  %.sroa.0132.0.vec.extract = extractelement <2 x i64> %i.au, i64 0
  %.sroa.0132.8.vec.extract = extractelement <2 x i64> %i.au, i64 1
  %i.av = bitcast i64 %.sroa.0132.0.vec.extract to <2 x i32>
  %i.aw = bitcast i64 %.sroa.0132.8.vec.extract to <2 x i32>
  %.sroa.0.8.vecblend176 = shufflevector <2 x i32> %i.av, <2 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %.sroa.0.8.vecblend176, ptr %0, align 16, !tbaa !83
  ret { i64, i64 } { i64 -1, i64 -1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_ZN11OpenImageIO4v3_13pvt31wrap_periodic_sharedborder_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
bb.a:
  %.sroa.059.0.copyload = load <4 x i32>, ptr %0, align 16, !tbaa !83
  %i.a = load <2 x i64>, ptr %1, align 16, !tbaa !83 ; 2 uses
  %i.b = bitcast <2 x i64> %i.a to <4 x i32>      ; 2 uses
  %i.c = sub <4 x i32> %.sroa.059.0.copyload, %i.b
  %i.d = bitcast <4 x i32> %i.c to <2 x i64>      ; 2 uses
  %.sroa.054.0.vec.extract = extractelement <2 x i64> %i.d, i64 0
  %.sroa.054.8.vec.extract = extractelement <2 x i64> %i.d, i64 1
  %i.e = bitcast i64 %.sroa.054.0.vec.extract to <2 x i32> ; 2 uses
  %i.f = bitcast i64 %.sroa.054.8.vec.extract to <2 x i32> ; 2 uses
  %i.g = load <4 x i32>, ptr %2, align 16, !tbaa !83 ; 2 uses
  %i.h = add <4 x i32> %i.g, splat (i32 -1)       ; 4 uses
  %.sroa.0.0.extract.trunc = extractelement <4 x i32> %i.h, i64 0 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.059.0.vec.extract = extractelement <2 x i32> %i.e, i64 0
  %i.i = srem i32 %.sroa.059.0.vec.extract, %.sroa.0.0.extract.trunc
  %i.j = zext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.077.0.insert.ext = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.4.extract.trunc = extractelement <4 x i32> %i.h, i64 1 ; 2 uses
  %.not.i.1 = icmp eq i32 %.sroa.0.4.extract.trunc, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.059.4.vec.extract = extractelement <2 x i32> %i.e, i64 1
  %i.k = srem i32 %.sroa.059.4.vec.extract, %.sroa.0.4.extract.trunc
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw i64 %i.l, 32
  %i.n = or disjoint i64 %.sroa.077.0.insert.ext, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.077.4.insert.ext = phi i64 [ %i.n, %bb.d ], [ %.sroa.077.0.insert.ext, %bb.c ]
  %.sroa.5.8.extract.trunc = extractelement <4 x i32> %i.h, i64 2 ; 2 uses
  %.not.i.2 = icmp eq i32 %.sroa.5.8.extract.trunc, 0
  br i1 %.not.i.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.059.8.vec.extract = extractelement <2 x i32> %i.f, i64 0
  %i.o = srem i32 %.sroa.059.8.vec.extract, %.sroa.5.8.extract.trunc
  %i.p = zext i32 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.578.8.insert.ext = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sroa.5.12.extract.trunc = extractelement <4 x i32> %i.h, i64 3 ; 2 uses
  %.not.i.3 = icmp eq i32 %.sroa.5.12.extract.trunc, 0
  br i1 %.not.i.3, label %_ZN11OpenImageIO4v3_14simd8safe_modERKNS1_5vint4ES4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.059.12.vec.extract = extractelement <2 x i32> %i.f, i64 1
  %i.q = srem i32 %.sroa.059.12.vec.extract, %.sroa.5.12.extract.trunc
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw i64 %i.r, 32
  %i.t = or disjoint i64 %.sroa.578.8.insert.ext, %i.s
  br label %_ZN11OpenImageIO4v3_14simd8safe_modERKNS1_5vint4ES4_.exit

_ZN11OpenImageIO4v3_14simd8safe_modERKNS1_5vint4ES4_.exit: ; preds = %bb.h, %bb.g
  %.sroa.578.12.insert.ext = phi i64 [ %i.t, %bb.h ], [ %.sroa.578.8.insert.ext, %bb.g ]
  %i.u = bitcast i64 %.sroa.077.4.insert.ext to <2 x i32>
  %i.v = bitcast i64 %.sroa.578.12.insert.ext to <2 x i32>
  %.sroa.059.8.vecblend72 = shufflevector <2 x i32> %i.u, <2 x i32> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.w = add <4 x i32> %i.g, %i.b
  %.lobit = ashr <4 x i32> %.sroa.059.8.vecblend72, splat (i32 31) ; 2 uses
  %i.x = and <4 x i32> %.lobit, %i.w
  %i.y = bitcast <4 x i32> %.lobit to <2 x i64>
  %i.z = xor <2 x i64> %i.y, splat (i64 -1)
  %i.aa = and <2 x i64> %i.a, %i.z
  %i.ab = bitcast <2 x i64> %i.aa to <4 x i32>
  %i.ac = or <4 x i32> %i.x, %i.ab
  %i.ad = add <4 x i32> %i.ac, %.sroa.059.8.vecblend72
  %i.ae = bitcast <4 x i32> %i.ad to <2 x i64>    ; 2 uses
  %.sroa.056.0.vec.extract = extractelement <2 x i64> %i.ae, i64 0
  %.sroa.056.8.vec.extract = extractelement <2 x i64> %i.ae, i64 1
  %i.af = bitcast i64 %.sroa.056.0.vec.extract to <2 x i32>
  %i.ag = bitcast i64 %.sroa.056.8.vec.extract to <2 x i32>
  %.sroa.059.8.vecblend75 = shufflevector <2 x i32> %i.af, <2 x i32> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %.sroa.059.8.vecblend75, ptr %0, align 16, !tbaa !83
  ret { i64, i64 } { i64 -1, i64 -1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_13pvt19texture_format_nameENS1_9TexFormatE(i32 noundef %0) local_unnamed_addr #18 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr @_ZZN11OpenImageIO4v3_13pvt19texture_format_nameENS1_9TexFormatEE20texture_format_names, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_13pvt17texture_type_nameENS1_9TexFormatE(i32 noundef %0) local_unnamed_addr #18 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr @_ZZN11OpenImageIO4v3_13pvt17texture_type_nameENS1_9TexFormatEE18texture_type_names, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_117TextureSystemImplC2ESt10shared_ptrINS0_10ImageCacheEE(ptr noundef nonnull align 8 dereferenceable(188) initializes((0, 163), (164, 172), (176, 188)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = atomicrmw add ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113txsys_next_idE, i64 1 seq_cst, align 8
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !310
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.k, align 4, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.r, align 8, !tbaa !121
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !647
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load <2 x ptr>, ptr %1, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !92   ; 8 uses
  store <2 x ptr> %i.u, ptr %0, align 8, !tbaa !97
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.w, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !95
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #3, !inline_history !4
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #3, !inline_history !4
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEaSEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !330  ; 2 uses
  %i.e = add i64 %i.d, %i.b                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !324
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !322
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !16
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !330 ; 2 uses
  %.pre14.i = load i64, ptr %i.f, align 8, !tbaa !324
  %.pre15.i = add i64 %.pre.i, %i.b               ; 2 uses
  %i.k = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.k, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.l = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.d, %bb.a ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.e, %bb.a ]
  store i64 %.pre-phi19.i, ptr %i.c, align 8, !tbaa !330
  %i.m = load ptr, ptr %0, align 8, !tbaa !323    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l ; 3 uses
  %.not.not = icmp eq ptr %i.m, null
  br i1 %.not.not, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %i.o = icmp ugt i32 %1, 99
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.p, %.lr.ph.i ], [ %2, %bb.b ]
  %.01819.i = phi i32 [ %i.x, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.p = add i32 %.020.i, -2                      ; 3 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = urem i32 %.01819.i, 100
  %i.t = shl nuw nsw i32 %i.s, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.r, align 1
  %i.x = udiv i32 %.01819.i, 100                  ; 2 uses
  %i.y = icmp ugt i32 %.01819.i, 9999
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i32 [ %1, %bb.b ], [ %i.x, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %2, %bb.b ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.z = icmp samesign ugt i32 %.018.lcssa.i, 9
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.aa = add i32 %.0.lcssa.i, -2
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ab
  %i.ad = shl nuw nsw i32 %.018.lcssa.i, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ac, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.ah = trunc nuw nsw i32 %.018.lcssa.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = add i32 %.0.lcssa.i, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !83
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.am = icmp ugt i32 %1, 99
  br i1 %i.am, label %.lr.ph.i16, label %._crit_edge.i12

.lr.ph.i16:                                       ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %.lr.ph.i16
  %.020.i17 = phi i32 [ %i.an, %.lr.ph.i16 ], [ %2, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ]
  %.01819.i18 = phi i32 [ %i.av, %.lr.ph.i16 ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ] ; 3 uses
  %i.an = add i32 %.020.i17, -2                   ; 3 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  %i.aq = urem i32 %.01819.i18, 100
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  store i16 %i.au, ptr %i.ap, align 1
  %i.av = udiv i32 %.01819.i18, 100               ; 2 uses
  %i.aw = icmp ugt i32 %.01819.i18, 9999
  br i1 %i.aw, label %.lr.ph.i16, label %._crit_edge.i12, !llvm.loop !13

._crit_edge.i12:                                  ; preds = %.lr.ph.i16, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.018.lcssa.i13 = phi i32 [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %i.av, %.lr.ph.i16 ] ; 3 uses
  %.0.lcssa.i14 = phi i32 [ %2, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %i.an, %.lr.ph.i16 ] ; 2 uses
  %i.ax = icmp samesign ugt i32 %.018.lcssa.i13, 9
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i12
  %i.ay = add i32 %.0.lcssa.i14, -2
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = shl nuw nsw i32 %.018.lcssa.i13, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ba, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19

bb.f:                                             ; preds = %._crit_edge.i12
  %i.bf = trunc nuw nsw i32 %.018.lcssa.i13 to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = add i32 %.0.lcssa.i14, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !83
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19: ; preds = %bb.e, %bb.f
  %i.bk = sext i32 %2 to i64
  %i.bl = getelementptr inbounds i8, ptr %i.a, i64 %i.bk
  %i.bm = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bl, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.c, %bb.d, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19
  %.sroa.010.1 = phi ptr [ %i.bm, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit19 ], [ %0, %bb.d ], [ %0, %bb.c ]
  ret ptr %.sroa.010.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #39 {
bb.a:
  %.not31.i.i = icmp eq ptr %0, %1
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !330
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.e = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.al, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %0, %.lr.ph34.i.i ], [ %i.am, %._crit_edge.i.i ] ; 9 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !324
  %i.g = sub i64 %i.f, %i.e
  %i.h = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.i = sub i64 %i.c, %i.h                       ; 4 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !322
  %i.l = add i64 %i.i, %i.e
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.l), !inline_history !18
  %i.m = load i64, ptr %i.a, align 8, !tbaa !330  ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !324
  %i.o = sub i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026.i.i = phi i64 [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %.025.i.i = phi i64 [ %i.p, %bb.c ], [ %i.i, %bb.b ] ; 13 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !323    ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %.026.i.i, %i.r
  %i.u = sub i64 %i.h, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !83
  %wide.load8 = load <16 x i8>, ptr %i.x, align 1, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load, ptr %i.y, align 1, !tbaa !83
  store <16 x i8> %wide.load8, ptr %i.z, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %.025.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %index10
  store <4 x i8> %wide.load11, ptr %i.ac, align 1, !tbaa !83
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next12, %n.vec9
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !870

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %.025.i.i, %n.vec9
  br i1 %cmp.n13, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !83
  %i.ah = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !871

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.ai = sub i64 %.030.i.i.ph, %.025.i.i
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.a, align 8, !tbaa !330
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %i.ak = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.d ]
  %i.al = add i64 %i.ak, %.025.i.i                ; 2 uses
  store i64 %i.al, ptr %i.a, align 8, !tbaa !330
  %i.am = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.b, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !83
  %i.aq = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !83
  %i.au = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !83
  %i.ay = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ay
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !83
  %i.bc = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bc, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !872

_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEExTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i64 %1, 0                       ; 2 uses
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 6 uses
  %i.b = or i64 %spec.select, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !83    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !134
  %i.k = icmp ult i64 %spec.select, %i.j
  %.neg.i.i = sext i1 %i.k to i32
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 4 uses
  %.lobit = lshr i64 %1, 63
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %.lobit, %i.m                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330  ; 2 uses
  %i.q = add i64 %i.n, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !324  ; 2 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !322
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q), !inline_history !16
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !330 ; 3 uses
  %.pre14.i = load i64, ptr %i.r, align 8, !tbaa !324 ; 3 uses
  %.pre15.i = add i64 %.pre.i, %i.n               ; 2 uses
  %i.w = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.w, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.x = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.s, %bb.a ]
  %i.y = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.p, %bb.a ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.q, %bb.a ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.o, align 8, !tbaa !330
  %i.z = load ptr, ptr %0, align 8, !tbaa !323    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 45, ptr %i.aa, align 1, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.020 = phi ptr [ %i.ab, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %i.ac = icmp ugt i64 %spec.select, 99
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.020.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.l, %bb.d ]
  %.01819.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %spec.select, %bb.d ] ; 3 uses
  %i.ad = add i32 %.020.i, -2                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ae
  %i.ag = urem i64 %.01819.i, 100
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  store i16 %i.aj, ptr %i.af, align 1
  %i.ak = udiv i64 %.01819.i, 100                 ; 2 uses
  %i.al = icmp ugt i64 %.01819.i, 9999
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.018.lcssa.i = phi i64 [ %spec.select, %bb.d ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.l, %bb.d ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %i.am = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.an = add i32 %.0.lcssa.i, -2
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ao
  %i.aq = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  store i16 %i.as, ptr %i.ap, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.at = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.au = or disjoint i8 %i.at, 48
  %i.av = add i32 %.0.lcssa.i, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.020, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !83
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %i.ay = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.x, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit ]
  %i.az = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %.pre-phi19.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit ] ; 2 uses
  br i1 %i.a, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, %i.ay
  br i1 %i.bb, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !322
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ba), !inline_history !17
  %.pre.i.i = load i64, ptr %i.o, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.g, %bb.h
  %.pre-phi.i.i = phi i64 [ %i.ba, %bb.g ], [ %.pre2.i.i, %bb.h ]
  %i.be = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i, ptr %i.o, align 8, !tbaa !330
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 45, ptr %i.bg, align 1, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %i.bh = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %0, i64 noundef %spec.select, i32 noundef %i.l)
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.e, %bb.f, %bb.i
  %.sroa.018.1 = phi ptr [ %i.bh, %bb.i ], [ %0, %bb.f ], [ %0, %bb.e ]
  ret ptr %.sroa.018.1
}
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_:bb.a
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !330
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !324
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 7 uses
  %i.ac = load i8, ptr %4, align 1, !tbaa !420, !range !102, !noundef !103
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !421 ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr @_ZN3fmt3v126detail18write_escaped_charIcNS0_14basic_appenderIcEEEET0_S5_T_(ptr %.sroa.09.0, i8 noundef signext %i.af)
  br label %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !330 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !324
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !322
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.aj), !inline_history !899
  %.pre.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i.i, %bb.g ]
  %i.ap = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i, %bb.g ]
  %i.aq = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i, ptr %i.ah, align 8, !tbaa !330
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 %i.af, ptr %i.ar, align 1, !tbaa !83
  br label %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit

_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %bb.e, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.sroa.01.0.i = phi ptr [ %i.ag, %bb.e ], [ %.sroa.09.0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.as = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.01.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.as, %bb.h ], [ %.sroa.01.0.i, %_ZZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #39 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !401
  %i.b = lshr i32 %i.a, 15
  %i.c = and i32 %i.b, 7                          ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = icmp eq i32 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.f, align 4, !tbaa !83
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.k = load i64, ptr %i.h, align 8, !tbaa !330  ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !324
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !322
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l), !inline_history !900
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !330
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !83
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !901

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %.not31.i.i = icmp eq i32 %i.c, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i.preheader

.lr.ph34.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.u, align 8, !tbaa !330
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.lr.ph34.i.i.preheader, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.bf, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph34.i.i.preheader ]
  %.018 = phi i64 [ %i.bx, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph34.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.f, %.lr.ph34.i.i ], [ %i.bg, %._crit_edge.i.i ] ; 9 uses
  %i.z = load i64, ptr %i.v, align 8, !tbaa !324
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ac = sub i64 %i.w, %i.ab                     ; 4 uses
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !322
  %i.af = add i64 %i.ac, %i.y
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af), !inline_history !24
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !330 ; 2 uses
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !324
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %.025.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.ac, %bb.f ] ; 13 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !323   ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %.026.i.i, %i.al
  %i.ao = sub i64 %i.ab, %i.an
  %diff.check = icmp ugt i64 %i.ao, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <16 x i8>, ptr %i.aq, align 1, !tbaa !83
  %wide.load32 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load, ptr %i.as, align 1, !tbaa !83
  store <16 x i8> %wide.load32, ptr %i.at, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !902

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.av, align 1, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 %index34
  store <4 x i8> %wide.load35, ptr %i.aw, align 1, !tbaa !83
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !903

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %.025.i.i, %n.vec33
  br i1 %cmp.n37, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i.prol
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !83
  %i.bb = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !904

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.prol ]
  %i.bc = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.u, align 8, !tbaa !330
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.h
  %i.be = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.h ]
  %i.bf = add i64 %i.be, %.025.i.i                ; 3 uses
  store i64 %i.bf, ptr %i.u, align 8, !tbaa !330
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bw, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !83
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !83
  %i.bk = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !83
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !83
  %i.bo = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !83
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !83
  %i.bs = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !83
  %i.bw = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bw, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !905

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.bx = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %1
  br i1 %exitcond.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i, !llvm.loop !906

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.e, %.lr.ph, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_escaped_charIcNS0_14basic_appenderIcEEEET0_S5_T_(ptr %0, i8 noundef signext %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i8 %1, ptr %i.a, align 1, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !330  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !324
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !322
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !17
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !330
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 39, ptr %i.l, align 1, !tbaa !83
  %i.m = sext i8 %1 to i32                        ; 2 uses
  %i.n = icmp ult i8 %1, 32
  br i1 %i.n, label %_ZN3fmt3v126detail12needs_escapeEj.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  switch i8 %1, label %bb.c [
    i8 127, label %_ZN3fmt3v126detail12needs_escapeEj.exit
    i8 92, label %_ZN3fmt3v126detail12needs_escapeEj.exit
    i8 34, label %_ZN3fmt3v126detail12needs_escapeEj.exit
  ]

bb.c:                                             ; preds = %switch.early.test.i
  %i.o = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.m)
  %i.p = xor i1 %i.o, true
  br label %_ZN3fmt3v126detail12needs_escapeEj.exit

_ZN3fmt3v126detail12needs_escapeEj.exit:          ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.c
  %.0.i = phi i1 [ %i.p, %bb.c ], [ true, %switch.early.test.i ], [ true, %switch.early.test.i ], [ true, %switch.early.test.i ], [ true, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ]
  %i.q = icmp ne i8 %1, 34
  %or.cond = and i1 %i.q, %.0.i
  %i.r = icmp eq i8 %1, 39
  %or.cond5 = or i1 %i.r, %or.cond
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  store ptr %i.a, ptr %2, align 8, !tbaa !438
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.t, ptr %i.s, align 8, !tbaa !439
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.m, ptr %i.u, align 8, !tbaa !440
  %i.v = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br label %bb.g

bb.e:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !330  ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !tbaa !324
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !322
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.x), !inline_history !17
  %.pre.i.i15 = load i64, ptr %i.b, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i16 = add i64 %.pre.i.i15, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17

_ZN3fmt3v1214basic_appenderIcEaSEc.exit17:        ; preds = %bb.e, %bb.f
  %.pre-phi.i.i14 = phi i64 [ %i.x, %bb.e ], [ %.pre2.i.i16, %bb.f ]
  %i.ac = phi i64 [ %i.w, %bb.e ], [ %.pre.i.i15, %bb.f ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i14, ptr %i.b, align 8, !tbaa !330
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 %1, ptr %i.ae, align 1, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17, %bb.d
  %.sroa.025.0 = phi ptr [ %i.v, %bb.d ], [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17 ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !330 ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !324
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit22

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !322
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.0, i64 noundef %i.ah), !inline_history !17
  %.pre.i.i20 = load i64, ptr %i.af, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i21 = add i64 %.pre.i.i20, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit22

_ZN3fmt3v1214basic_appenderIcEaSEc.exit22:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i19 = phi i64 [ %i.ah, %bb.g ], [ %.pre2.i.i21, %bb.h ]
  %i.an = phi i64 [ %i.ag, %bb.g ], [ %.pre.i.i20, %bb.h ]
  %i.ao = load ptr, ptr %.sroa.025.0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i19, ptr %i.af, align 8, !tbaa !330
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 39, ptr %i.ap, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret ptr %.sroa.025.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !440  ; 8 uses
  switch i32 %i.b, label %bb.j [
    i32 10, label %bb.b
    i32 13, label %bb.d
    i32 9, label %bb.f
    i32 34, label %bb.h
    i32 39, label %bb.h
    i32 92, label %bb.h
end_hunk_2
begin_hunk_3_@_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE:bb.a
  store ptr @_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm, ptr %i.c, align 8, !tbaa !918
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !442
  store i64 500, ptr %i.b, align 8, !tbaa !443
  store i64 1, ptr %i.d, align 8, !tbaa !444
  store i32 0, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !131  ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.k = phi i64 [ %i.g, %.lr.ph ], [ %i.ac, %bb.i ]
  %i.l = phi ptr [ %i.e, %.lr.ph ], [ %i.ad, %bb.i ] ; 3 uses
  %i.m = phi i64 [ 1, %.lr.ph ], [ %.pre-phi.i28, %bb.i ] ; 4 uses
  %.sroa.039.056 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.039.1, %bb.i ] ; 4 uses
  %.sroa.6.055 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.i ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !82
  %i.o = load i64, ptr %i.j, align 8, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 2 uses
  %i.q = icmp eq ptr %.sroa.039.056, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.p, i64 -1
  %.sink.i.pre = load i8, ptr %i.r, align 1, !tbaa !83
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr %.sroa.039.056, align 1, !tbaa !83 ; 2 uses
  %i.t = add i8 %i.s, -127
  %or.cond.i = icmp ult i8 %i.t, -126
  br i1 %or.cond.i, label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.039.056, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit: ; preds = %bb.c, %bb.e
  %.sink.i = phi i8 [ %.sink.i.pre, %bb.c ], [ %i.s, %bb.e ]
  %.sroa.039.1 = phi ptr [ %.sroa.039.056, %bb.c ], [ %i.u, %bb.e ]
  %i.v = sext i8 %.sink.i to i32
  %i.w = add nsw i32 %.sroa.6.055, %i.v           ; 4 uses
  %.not = icmp ne i32 %i.w, 0
  %.not24 = icmp slt i32 %i.w, %i.a
  %or.cond = and i1 %.not, %.not24
  br i1 %or.cond, label %bb.g, label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit

bb.f:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.g:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit
  %i.y = add i64 %i.m, 1                          ; 3 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !443
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !918
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.y)
          to label %.noexc31 unwind label %bb.f, !inline_history !910

.noexc31:                                         ; preds = %bb.h
  %.pre.i29 = load i64, ptr %i.d, align 8, !tbaa !444 ; 2 uses
  %.pre2.i30 = add i64 %.pre.i29, 1
  %.pre = load ptr, ptr %4, align 8, !tbaa !442
  %.pre63 = load i64, ptr %i.f, align 8, !tbaa !131
  br label %bb.i

bb.i:                                             ; preds = %.noexc31, %bb.g
  %i.ac = phi i64 [ %i.k, %bb.g ], [ %.pre63, %.noexc31 ] ; 2 uses
  %i.ad = phi ptr [ %i.l, %bb.g ], [ %.pre, %.noexc31 ] ; 3 uses
  %.pre-phi.i28 = phi i64 [ %i.y, %bb.g ], [ %.pre2.i30, %.noexc31 ] ; 3 uses
  %i.ae = phi i64 [ %i.m, %bb.g ], [ %.pre.i29, %.noexc31 ]
  store i64 %.pre-phi.i28, ptr %i.d, align 8, !tbaa !444
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 %i.w, ptr %i.af, align 4, !tbaa !55
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, label %bb.b

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit: ; preds = %bb.d, %bb.i, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit
  %i.ah = phi ptr [ %i.l, %bb.d ], [ %i.ad, %bb.i ], [ %i.l, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit ]
  %i.ai = phi i64 [ %i.m, %bb.d ], [ %.pre-phi.i28, %bb.i ], [ %i.m, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit ]
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add i32 %i.aj, -1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread: ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, %bb.a
  %i.al = phi ptr [ %i.ah, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit ], [ %i.e, %bb.a ]
  %i.am = phi i32 [ %i.ak, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit ], [ 0, %bb.a ]
  %i.an = icmp sgt i32 %i.a, 0
  br i1 %i.an, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.as = and i64 %3, 2147483647                  ; 2 uses
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre64 = load ptr, ptr %4, align 8, !tbaa !442
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread
  %i.at = phi ptr [ %.pre64, %._crit_edge.loopexit ], [ %i.al, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.at) #3
  br label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  ret ptr %1

bb.k:                                             ; preds = %.lr.ph60, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %.059 = phi i32 [ %i.am, %.lr.ph60 ], [ %.1, %bb.s ] ; 3 uses
  %i.au = sub nuw nsw i64 %i.as, %indvars.iv
  %i.av = load ptr, ptr %4, align 8, !tbaa !442
  %i.aw = sext i32 %.059 to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !55
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp eq i64 %i.au, %i.az
  br i1 %i.ba, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !82 ; 2 uses
  %i.bc = load i64, ptr %i.f, align 8, !tbaa !131 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc ; 2 uses
  %.not31.i.i = icmp samesign eq i64 %i.bc, 0
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.l
  %i.be = ptrtoint ptr %i.bd to i64
  %.pre.i.i = load i64, ptr %i.ap, align 8, !tbaa !330
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.bf = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.cm, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.bb, %.lr.ph34.i.i ], [ %i.cn, %._crit_edge.i.i ] ; 9 uses
  %i.bg = load i64, ptr %i.aq, align 8, !tbaa !324
  %i.bh = sub i64 %i.bg, %i.bf
  %i.bi = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.bj = sub i64 %i.be, %i.bi                    ; 4 uses
  %i.bk = icmp ult i64 %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %i.ar, align 8, !tbaa !322
  %i.bm = add i64 %i.bj, %i.bf
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bm)
          to label %.noexc34 unwind label %bb.p, !inline_history !911

.noexc34:                                         ; preds = %bb.n
  %i.bn = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.bo = load i64, ptr %i.aq, align 8, !tbaa !324
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bp)
  br label %bb.o

bb.o:                                             ; preds = %.noexc34, %bb.m
  %.026.i.i = phi i64 [ %i.bn, %.noexc34 ], [ %i.bf, %bb.m ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bq, %.noexc34 ], [ %i.bj, %bb.m ] ; 13 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !323   ; 2 uses
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.o
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bu = add i64 %.026.i.i, %i.bs
  %i.bv = sub i64 %i.bi, %i.bu
  %diff.check = icmp ugt i64 %i.bv, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check78 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load = load <16 x i8>, ptr %i.bx, align 1, !tbaa !83
  %wide.load79 = load <16 x i8>, ptr %i.by, align 1, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <16 x i8> %wide.load, ptr %i.bz, align 1, !tbaa !83
  store <16 x i8> %wide.load79, ptr %i.ca, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !912

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec80 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index81
  %wide.load82 = load <4 x i8>, ptr %i.cc, align 1, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index81
  store <4 x i8> %wide.load82, ptr %i.cd, align 1, !tbaa !83
  %index.next83 = add nuw i64 %index81, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next83, %n.vec80
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !913

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %.025.i.i, %n.vec80
  br i1 %cmp.n84, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec80, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ci, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.030.i.i.prol
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !83
  %i.ci = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !914

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.prol ]
  %i.cj = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ap, align 8, !tbaa !330
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.o
  %i.cl = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.o ]
  %i.cm = add i64 %i.cl, %.025.i.i                ; 2 uses
  store i64 %i.cm, ptr %i.ap, align 8, !tbaa !330
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cn, %i.bd
  br i1 %.not.i.i33, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.m, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.dd, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !83
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.030.i.i
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !83
  %i.cr = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cr
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !83
  %i.cv = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cv
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !83
  %i.cz = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !83
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cz
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !83
  %i.dd = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.dd, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !915

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.l
  %i.de = add nsw i32 %.059, -1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, %bb.k
  %.1 = phi i32 [ %i.de, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit ], [ %.059, %bb.k ]
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !83
  %i.di = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.dj = add i64 %i.di, 1                        ; 3 uses
  %i.dk = load i64, ptr %i.aq, align 8, !tbaa !324
  %i.dl = icmp ugt i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dm = load ptr, ptr %i.ar, align 8, !tbaa !322
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dj)
          to label %.noexc36 unwind label %bb.t, !inline_history !916

.noexc36:                                         ; preds = %bb.r
  %.pre.i.i35 = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i35, 1
  br label %bb.s

bb.s:                                             ; preds = %.noexc36, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dj, %bb.q ], [ %.pre2.i.i, %.noexc36 ]
  %i.dn = phi i64 [ %i.di, %bb.q ], [ %.pre.i.i35, %.noexc36 ]
  %i.do = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i, ptr %i.ap, align 8, !tbaa !330
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  store i8 %i.dh, ptr %i.dp, align 1, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !917

bb.t:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.t, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.dq, %bb.t ], [ %i.df, %bb.p ]
  %i.dr = load ptr, ptr %4, align 8, !tbaa !442   ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.dr, %i.e
  br i1 %.not.i.i37, label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dr) #3
  br label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38

_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !443  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !442    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #52 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #3 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !89
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #49
  unreachable

_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !444  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !442
  store i64 %.0, ptr %i.a, align 8, !tbaa !443
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %0, i128 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.226, align 1            ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 15 uses
  %7 = alloca %class.anon.233, align 8            ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !322
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !323
  store i64 500, ptr %i.b, align 8, !tbaa !324
  %i.f = load i32, ptr %3, align 4, !tbaa !401    ; 8 uses
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 7
  switch i8 %i.h, label %bb.b [
    i8 7, label %bb.u
    i8 6, label %bb.q
    i8 4, label %bb.j
    i8 5, label %.preheader
  ]

end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_ocEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_:bb.a
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !330
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !324
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 6 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !925, !nonnull !103, !align !431
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !55
  %i.ae = and i32 %i.ad, 16777215                 ; 2 uses
  %.not6.i = icmp eq i32 %i.ae, 0
  br i1 %.not6.i, label %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.07.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.ar, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ] ; 2 uses
  %i.ai = trunc i32 %.07.i to i8
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !330 ; 2 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !324
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !322
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ak), !inline_history !922
  %.pre.i.i.i = load i64, ptr %i.af, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.aj, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i, ptr %i.af, align 8, !tbaa !330
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ai, ptr %i.aq, align 1, !tbaa !83
  %i.ar = lshr i32 %.07.i, 8                      ; 2 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit, label %bb.e, !llvm.loop !923

_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !926, !nonnull !103, !align !436
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !927, !nonnull !103, !align !436 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !323
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !330
  %i.az = tail call ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr %.sroa.09.0, ptr %i.aw, i64 %i.ay) ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit
  %i.ba = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.az, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.ba, %bb.g ], [ %i.az, %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !422
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !401    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.100, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !83
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !330
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !324
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 7 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !445   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !446 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.ae, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !330
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.ak = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.br, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %i.ac, %.lr.ph34.i.i.i ], [ %i.bs, %._crit_edge.i.i.i ] ; 9 uses
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !324
  %i.am = sub i64 %i.al, %i.ak
  %i.an = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.ao = sub i64 %i.ai, %i.an                    ; 4 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !322
  %i.ar = add i64 %i.ao, %i.ak
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ar), !inline_history !928
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !330 ; 2 uses
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !324
  %i.au = sub i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026.i.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.av, %bb.f ], [ %i.ao, %bb.e ] ; 13 uses
  %i.aw = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323 ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.026.i.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !83
  %wide.load36 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %wide.load, ptr %i.be, align 1, !tbaa !83
  store <16 x i8> %wide.load36, ptr %i.bf, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !929

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bi, align 1, !tbaa !83
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !930

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i.prol
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !83
  %i.bn = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !931

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !330
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.g
  %i.bq = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.g ]
  %i.br = add i64 %i.bq, %.025.i.i.i              ; 2 uses
  store i64 %i.br, ptr %i.ag, align 8, !tbaa !330
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.af
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %bb.e, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !83
  %i.bw = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !83
  %i.ca = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !83
  %i.ce = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !83
  %i.ci = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ci, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !932

_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.cj = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.cj, %bb.h ], [ %.sroa.09.0, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 8 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.243, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast float %1 to i32                  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0                     ; 2 uses
  %.lobit = lshr i32 %i.b, 31                     ; 3 uses
  %i.d = tail call float @llvm.fabs.f32(float %1)
  %i.e = fcmp ueq float %i.d, +inf
  br i1 %i.e, label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.f = fcmp uno float %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.g, align 8
  %i.h = select i1 %i.f, ptr @.str.105, ptr @.str.107
  %.not.not.i = icmp sgt i32 %i.b, -1
  %i.i = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  store i32 %.lobit, ptr %3, align 8, !tbaa !449
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !450
  %i.k = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.i, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  %i.l = tail call i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %1) #3 ; 5 uses
  store i64 %i.l, ptr %4, align 8
  %i.m = trunc i64 %i.l to i32                    ; 9 uses
  %i.n = or i32 %i.m, 1
  %i.o = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !134
  %i.t = and i64 %i.l, 4294967295
  %i.u = add i64 %i.s, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 32                        ; 2 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 6 uses
  %i.x = lshr i64 %i.l, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = add nsw i32 %i.y, %i.w                   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = add i32 %i.z, 3
  %i.ac = icmp ult i32 %i.ab, 11
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  store i32 32768, ptr %5, align 4, !tbaa !401
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.ad, align 4, !tbaa !83
  %scevgep.i.i68 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i68, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ae, align 4, !tbaa !403
  %i.af = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.w, i8 noundef signext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.lobit, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.aa

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp slt i32 %i.z, 1                    ; 2 uses
  %i.ah = sub nsw i32 1, %i.z
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.aa ; 4 uses
  %.not = icmp ne i64 %i.v, 1                     ; 3 uses
  %i.ai = add nsw i32 %.lobit, %i.w
  %i.aj = zext i1 %.not to i32
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.am = select i1 %i.al, i32 5, i32 4
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !324 ; 2 uses
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !322
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar), !inline_history !16
  %.pre.i = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre14.i = load i64, ptr %i.as, align 8, !tbaa !324 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.ao              ; 3 uses
  %i.ax = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.ax, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.ay = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.at, %bb.d ]
  %i.az = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.aq, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.ar, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ap, align 8, !tbaa !330
  %i.ba = load ptr, ptr %0, align 8, !tbaa !323   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az ; 3 uses
  %.not66 = icmp eq ptr %i.ba, null
  br i1 %.not66, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 45, ptr %i.bb, align 1, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.060 = phi ptr [ %i.bc, %bb.f ], [ %i.bb, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bd = add nsw i32 %i.w, 1                     ; 3 uses
  %i.be = icmp ugt i32 %i.m, 99
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_:bb.a
  %i.av = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i27, %bb.k ]
  %i.aw = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i26, ptr %i.an, align 8, !tbaa !330
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.am, ptr %i.ax, align 1, !tbaa !83
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29, %bb.f
  %.013 = phi i32 [ %i.u, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29 ], [ %.0, %bb.f ]
  %i.ay = shl nuw nsw i32 %.013, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !330 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !324
  %i.bh = icmp ugt i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !322
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.be), !inline_history !17
  %.pre.i.i32 = load i64, ptr %i.bc, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i33 = add i64 %.pre.i.i32, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

_ZN3fmt3v1214basic_appenderIcEaSEc.exit34:        ; preds = %bb.l, %bb.m
  %.pre-phi.i.i31 = phi i64 [ %i.be, %bb.l ], [ %.pre2.i.i33, %bb.m ]
  %i.bk = phi i64 [ %i.bd, %bb.l ], [ %.pre.i.i32, %bb.m ]
  %i.bl = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i31, ptr %i.bc, align 8, !tbaa !330
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bb, ptr %i.bm, align 1, !tbaa !83
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !83
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !330 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !324
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

bb.n:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !322
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bq), !inline_history !17
  %.pre.i.i37 = load i64, ptr %i.bc, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i38 = add i64 %.pre.i.i37, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

_ZN3fmt3v1214basic_appenderIcEaSEc.exit39:        ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34, %bb.n
  %.pre-phi.i.i36 = phi i64 [ %i.bq, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre2.i.i38, %bb.n ]
  %i.bv = phi i64 [ %i.bp, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre.i.i37, %bb.n ]
  %i.bw = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i36, ptr %i.bc, align 8, !tbaa !330
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 %i.bo, ptr %i.bx, align 1, !tbaa !83
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !422
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !401    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.100, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !83
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !330
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !324
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 12 uses
  %i.ac = load i32, ptr %4, align 8, !tbaa !449   ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nsw i32 %i.ac, 3
  %i.ae = lshr i32 539700480, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !330 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !324
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !322
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ai), !inline_history !935
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i, ptr %i.ag, align 8, !tbaa !330
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.af, ptr %i.aq, align 1, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !450 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i2.i = load i64, ptr %i.au, align 8, !tbaa !330
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.g
  %i.ax = phi i64 [ %.pre.i.i2.i, %bb.g ], [ %i.cd, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.idx.i = phi i64 [ 0, %bb.g ], [ %.02732.i.i.add.i, %._crit_edge.i.i.i ] ; 4 uses
  %.02732.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.02732.i.i.idx.i ; 7 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !324
  %i.az = sub i64 %i.ay, %i.ax
  %gepdiff.i = sub nsw i64 3, %.02732.i.i.idx.i   ; 4 uses
  %i.ba = icmp ult i64 %i.az, %gepdiff.i
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !322
  %i.bc = add i64 %gepdiff.i, %i.ax
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.bc), !inline_history !936
  %i.bd = load i64, ptr %i.au, align 8, !tbaa !330 ; 2 uses
  %i.be = load i64, ptr %i.av, align 8, !tbaa !324
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %gepdiff.i, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.026.i.i.i = phi i64 [ %i.bd, %bb.i ], [ %i.ax, %bb.h ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %gepdiff.i, %bb.h ] ; 13 uses
  %i.bh = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.026.i.i.i, %i.bi
  %i.bl = add i64 %.02732.i.i.idx.i, %i.at
  %i.bm = sub i64 %i.bl, %i.bk
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !83
  %wide.load36 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !83
  store <16 x i8> %wide.load36, ptr %i.br, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !937

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !83
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bu, align 1, !tbaa !83
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !938

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !83
  %i.bz = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !939

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.prol ]
  %i.ca = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.au, align 8, !tbaa !330
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.j
  %i.cc = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.j ]
  %i.cd = add i64 %i.cc, %.025.i.i.i              ; 2 uses
  store i64 %i.cd, ptr %i.au, align 8, !tbaa !330
  %.02732.i.i.add.i = add nuw nsw i64 %.025.i.i.i, %.02732.i.i.idx.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.02732.i.i.add.i, 3
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit, label %bb.h, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !83
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !83
  %i.ch = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !83
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !83
  %i.cl = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !83
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !83
  %i.cp = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !83
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !83
  %i.ct = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ct, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !940

_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %i.cu = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cu, %bb.k ], [ %.sroa.09.0, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !943, !nonnull !103, !align !431
  %i.b = load i32, ptr %i.a, align 4, !tbaa !451  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !330  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !324
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !322
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !17
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !330
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !944, !nonnull !103, !align !431 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !460
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !945, !nonnull !103, !align !431
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !453  ; 2 uses
  %i.y = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %1, i32 noundef %i.s, i32 noundef %i.v) ; 14 uses
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEjNS1_23fallback_digit_groupingIcEEEET0_S7_T1_iiRKT2_.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !330 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !324
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !322
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.ae), !inline_history !941
  %.pre.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %.pre2.i.i.i.i, %bb.f ]
  %i.ai = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i.i, %bb.f ]
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i.i, ptr %i.aa, align 8, !tbaa !330
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !83
  %i.al = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.al, %i.x
  br i1 %exitcond.not.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEjNS1_23fallback_digit_groupingIcEEEET0_S7_T1_iiRKT2_.exit, label %bb.e, !llvm.loop !31

_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEjNS1_23fallback_digit_groupingIcEEEET0_S7_T1_iiRKT2_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !946, !nonnull !103, !align !431
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !401
  %i.ap = and i32 %i.ao, 8192
  %.not12 = icmp eq i32 %i.ap, 0
  br i1 %.not12, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEjNS1_23fallback_digit_groupingIcEEEET0_S7_T1_iiRKT2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !947, !nonnull !103
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 6 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !330 ; 2 uses
  %i.av = add i64 %i.au, 1                        ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !324
  %i.ay = icmp ugt i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit9

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !322
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.av), !inline_history !17
  %.pre.i.i7 = load i64, ptr %i.at, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i8 = add i64 %.pre.i.i7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit9

_ZN3fmt3v1214basic_appenderIcEaSEc.exit9:         ; preds = %bb.g, %bb.h
  %.pre-phi.i.i6 = phi i64 [ %i.av, %bb.g ], [ %.pre2.i.i8, %bb.h ]
  %i.bb = phi i64 [ %i.au, %bb.g ], [ %.pre.i.i7, %bb.h ]
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !323
  store i64 %.pre-phi.i.i6, ptr %i.at, align 8, !tbaa !330
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 %i.as, ptr %i.bd, align 1, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !948, !nonnull !103, !align !431
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !55 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.i

end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail15format_hexfloatIeTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
  %.032 = phi i32 [ 15, %bb.a ], [ %.sroa.6.8.extract.trunc, %bb.d ], [ %.sroa.6.8.extract.trunc, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 48, i64 32, i1 false)
  %i.ac = and i32 %.sroa.083.0.extract.trunc, 4096
  %.not90 = icmp eq i32 %i.ac, 0                  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.str.98..str.99.i.i = select i1 %.not90, ptr @.str.99, ptr @.str.98
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.f
  %.012.i.i = phi i128 [ %i.aj, %.split.i.i ], [ %.sroa.074.2, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ai, %.split.i.i ], [ %i.ad, %bb.f ]
  %i.ae = trunc i128 %.012.i.i to i64
  %i.af = and i64 %i.ae, 15
  %i.ag = getelementptr inbounds nuw i8, ptr %.str.98..str.99.i.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !83
  %i.ai = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !83
  %i.aj = lshr i128 %.012.i.i, 4                  ; 2 uses
  %.not.i.i = icmp eq i128 %i.aj, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !29

_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not9192 = icmp eq i32 %.032, 0
  br i1 %.not9192, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit
  %.193 = phi i32 [ %i.ao, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit ], [ %.032, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader ] ; 3 uses
  %i.ak = zext nneg i32 %.193 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !83
  %i.an = icmp eq i8 %i.am, 48
  br i1 %i.an, label %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit, label %.critedge

_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %i.ao = add nsw i32 %.193, -1                   ; 2 uses
  %.not91 = icmp eq i32 %i.ao, 0
  br i1 %.not91, label %.critedge, label %.lr.ph, !llvm.loop !993

.critedge:                                        ; preds = %.lr.ph, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader ], [ 0, %_ZN3fmt3v126detail13format_base2eIcoEEPT_iS4_T0_ib.exit ], [ %.193, %.lr.ph ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !324
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.g, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.g:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !322
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ar), !inline_history !34
  %.pre.i = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.g
  %.pre-phi.i = phi i64 [ %i.ar, %.critedge ], [ %.pre2.i, %bb.g ]
  %i.ax = phi i64 [ %i.aq, %.critedge ], [ %.pre.i, %bb.g ]
  %i.ay = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i, ptr %i.ap, align 8, !tbaa !330
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 48, ptr %i.az, align 1, !tbaa !83
  %i.ba = select i1 %.not90, i8 120, i8 88
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !324
  %i.be = icmp ugt i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

bb.h:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !322
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bc), !inline_history !34
  %.pre.i40 = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.h
  %.pre-phi.i39 = phi i64 [ %i.bc, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.h ]
  %i.bh = phi i64 [ %i.bb, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.h ]
  %i.bi = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i39, ptr %i.ap, align 8, !tbaa !330
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 %i.ba, ptr %i.bj, align 1, !tbaa !83
  %i.bk = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.bl = add i64 %i.bk, 1                        ; 3 uses
  %i.bm = load i64, ptr %i.as, align 8, !tbaa !324
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

bb.i:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !322
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bl), !inline_history !34
  %.pre.i44 = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42, %bb.i
  %.pre-phi.i43 = phi i64 [ %i.bl, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.i ]
  %i.bq = phi i64 [ %i.bk, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.i ]
  %i.br = load i8, ptr %i.a, align 16, !tbaa !83
  %i.bs = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i43, ptr %i.ap, align 8, !tbaa !330
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !83
  %i.bu = and i32 %.sroa.083.0.extract.trunc, 8192
  %i.bv = or i32 %.1.lcssa, %i.bu
  %or.cond = icmp ne i32 %i.bv, 0
  %i.bw = icmp slt i32 %.1.lcssa, %.sroa.6.8.extract.trunc ; 2 uses
  %or.cond38 = or i1 %i.bw, %or.cond
  br i1 %or.cond38, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46
  %i.bx = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = load i64, ptr %i.as, align 8, !tbaa !324
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.k, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !322
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.by), !inline_history !34
  %.pre.i48 = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.j, %bb.k
  %.pre-phi.i47 = phi i64 [ %i.by, %bb.j ], [ %.pre2.i49, %bb.k ]
  %i.cd = phi i64 [ %i.bx, %bb.j ], [ %.pre.i48, %bb.k ]
  %i.ce = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i47, ptr %i.ap, align 8, !tbaa !330
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 46, ptr %i.cf, align 1, !tbaa !83
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.ch = zext nneg i32 %.1.lcssa to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch ; 2 uses
  %.not31.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.l
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i51 = load i64, ptr %i.ap, align 8, !tbaa !330
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.cl = phi i64 [ %.pre.i51, %.lr.ph34.i ], [ %i.ds, %._crit_edge.i ] ; 3 uses
  %.02732.i = phi ptr [ %i.cg, %.lr.ph34.i ], [ %i.dt, %._crit_edge.i ] ; 9 uses
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !324
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = ptrtoint ptr %.02732.i to i64           ; 2 uses
  %i.cp = sub i64 %i.cj, %i.co                    ; 4 uses
  %i.cq = icmp ult i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !322
  %i.cs = add i64 %i.cp, %i.cl
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cs), !inline_history !35
  %i.ct = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !324
  %i.cv = sub i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.cv)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i = phi i64 [ %i.ct, %bb.n ], [ %i.cl, %bb.m ] ; 3 uses
  %.025.i = phi i64 [ %i.cw, %bb.n ], [ %i.cp, %bb.m ] ; 13 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !323   ; 2 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.026.i ; 7 uses
  %.not36.i = icmp eq i64 %.025.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.o
  %min.iters.check = icmp ult i64 %.025.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.da = add i64 %.026.i, %i.cy
  %i.db = sub i64 %i.co, %i.da
  %diff.check = icmp ugt i64 %i.db, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check117 = icmp ult i64 %.025.i, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dc = and i64 %.025.i, 28
  %n.vec = and i64 %.025.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load = load <16 x i8>, ptr %i.dd, align 1, !tbaa !83
  %wide.load118 = load <16 x i8>, ptr %i.de, align 1, !tbaa !83
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <16 x i8> %wide.load, ptr %i.df, align 1, !tbaa !83
  store <16 x i8> %wide.load118, ptr %i.dg, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !994

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %.025.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index120
  %wide.load121 = load <4 x i8>, ptr %i.di, align 1, !tbaa !83
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index120
  store <4 x i8> %wide.load121, ptr %i.dj, align 1, !tbaa !83
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !995

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %.025.i, %n.vec119
  br i1 %cmp.n123, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec119, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.030.i.prol = phi i64 [ %i.do, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.030.i.prol
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !83
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.030.i.prol
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !83
  %i.do = add nuw i64 %.030.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !996

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.030.i.unr = phi i64 [ %.030.i.ph, %.lr.ph.i.preheader ], [ %i.do, %.lr.ph.i.prol ]
  %i.dp = sub i64 %.030.i.ph, %.025.i
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i = load i64, ptr %i.ap, align 8, !tbaa !330
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.o
  %i.dr = phi i64 [ %.pre37.i, %._crit_edge.loopexit.i ], [ %.026.i, %bb.o ]
  %i.ds = add i64 %i.dr, %.025.i                  ; 2 uses
  store i64 %i.ds, ptr %i.ap, align 8, !tbaa !330
  %i.dt = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.025.i ; 2 uses
  %.not.i = icmp eq ptr %i.dt, %i.ci
  br i1 %.not.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %bb.m, !llvm.loop !19

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi i64 [ %i.ej, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.030.i
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !83
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.030.i
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !83
  %i.dx = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !83
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dx
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !83
  %i.eb = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.eb
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !83
  %i.ef = add nuw i64 %.030.i, 3                  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !83
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ef
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !83
  %i.ej = add nuw i64 %.030.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ej, %.025.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !997

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.l
  br i1 %i.bw, label %.lr.ph96, label %._crit_edge

.lr.ph96:                                         ; preds = %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph96, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55
  %.295 = phi i32 [ %.1.lcssa, %.lr.ph96 ], [ %i.et, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55 ]
  %i.el = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.em = add i64 %i.el, 1                        ; 3 uses
  %i.en = load i64, ptr %i.as, align 8, !tbaa !324
  %i.eo = icmp ugt i64 %i.em, %i.en
  br i1 %i.eo, label %bb.q, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

bb.q:                                             ; preds = %bb.p
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !322
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.em), !inline_history !34
  %.pre.i53 = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre2.i54 = add i64 %.pre.i53, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55: ; preds = %bb.p, %bb.q
  %.pre-phi.i52 = phi i64 [ %i.em, %bb.p ], [ %.pre2.i54, %bb.q ]
  %i.eq = phi i64 [ %i.el, %bb.p ], [ %.pre.i53, %bb.q ]
  %i.er = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i52, ptr %i.ap, align 8, !tbaa !330
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 48, ptr %i.es, align 1, !tbaa !83
  %i.et = add i32 %.295, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.et, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !998

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.eu = select i1 %.not90, i8 112, i8 80
  %i.ev = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.ew = add i64 %i.ev, 1                        ; 3 uses
  %i.ex = load i64, ptr %i.as, align 8, !tbaa !324
  %i.ey = icmp ugt i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.r:                                             ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !322
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ew), !inline_history !34
  %.pre.i57 = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.r
  %.pre-phi.i56 = phi i64 [ %i.ew, %._crit_edge ], [ %.pre2.i58, %bb.r ]
  %i.fb = phi i64 [ %i.ev, %._crit_edge ], [ %.pre.i57, %bb.r ]
  %i.fc = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i56, ptr %i.ap, align 8, !tbaa !330
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fb
  store i8 %i.eu, ptr %i.fd, align 1, !tbaa !83
  %i.fe = icmp slt i32 %.sroa.9.2, 0
  %i.ff = load i64, ptr %i.ap, align 8, !tbaa !330 ; 3 uses
  %i.fg = add i64 %i.ff, 1                        ; 5 uses
  %i.fh = load i64, ptr %i.as, align 8, !tbaa !324
  %i.fi = icmp ugt i64 %i.fg, %i.fh               ; 2 uses
  br i1 %i.fe, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fi, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.t:                                             ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !322
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fg), !inline_history !34
  %.pre.i61 = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.s, %bb.t
  %.pre-phi.i60 = phi i64 [ %i.fg, %bb.s ], [ %.pre2.i62, %bb.t ]
  %i.fl = phi i64 [ %i.ff, %bb.s ], [ %.pre.i61, %bb.t ]
  %i.fm = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i60, ptr %i.ap, align 8, !tbaa !330
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 45, ptr %i.fn, align 1, !tbaa !83
  %i.fo = sub nsw i32 0, %.sroa.9.2
  br label %bb.w

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fi, label %bb.v, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

bb.v:                                             ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !322
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fg), !inline_history !34
  %.pre.i65 = load i64, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %.pre2.i66 = add i64 %.pre.i65, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67: ; preds = %bb.u, %bb.v
  %.pre-phi.i64 = phi i64 [ %i.fg, %bb.u ], [ %.pre2.i66, %bb.v ]
  %i.fr = phi i64 [ %i.ff, %bb.u ], [ %.pre.i65, %bb.v ]
  %i.fs = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i64, ptr %i.ap, align 8, !tbaa !330
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  store i8 43, ptr %i.ft, align 1, !tbaa !83
  br label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63
  %.0 = phi i32 [ %i.fo, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63 ], [ %.sroa.9.2, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67 ] ; 3 uses
  %i.fu = or i32 %.0, 1
  %i.fv = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fu, i1 true)
  %i.fw = xor i32 %i.fv, 31
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !134
  %i.ga = zext nneg i32 %.0 to i64
  %i.gb = add i64 %i.fz, %i.ga
  %i.gc = lshr i64 %i.gb, 32
  %i.gd = trunc nuw i64 %i.gc to i32
  %i.ge = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.gd) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212report_errorEPKc(ptr noundef %0) local_unnamed_addr #41 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #3 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #3
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
end_hunk_6
begin_hunk_7_@_ZN3fmt3v126detail12format_floatIeEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.bd = and i1 %i.bb, %i.bc
  br label %bb.i

bb.h:                                             ; preds = %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit
  %i.be = add nsw i32 %spec.store.select.i.i, -16446
  %i.bf = icmp eq i128 %i.ad, 0
  %i.bg = icmp samesign ugt i32 %i.aj, 1
  %i.bh = and i1 %i.bf, %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.g ], [ %i.ad, %bb.h ]
  %.sroa.6.0 = phi i32 [ %.0.i, %bb.g ], [ %i.be, %bb.h ]
  %i.bi = phi i1 [ %i.bd, %bb.g ], [ %i.bh, %bb.h ]
  %spec.select40 = select i1 %i.bi, i32 3, i32 2  ; 2 uses
  %i.bj = or disjoint i32 %spec.select40, 4
  %.1 = select i1 %i.d, i32 %i.bj, i32 %spec.select40
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !471
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !55
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp") align 16 %5, i32 noundef %.1, i32 noundef %spec.store.select, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.d, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %2, align 4, !tbaa !401
  %i.bl = and i32 %i.bk, 8192
  %.not46 = icmp eq i32 %i.bl, 0
  br i1 %.not46, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !330 ; 2 uses
  %.not47 = icmp eq i64 %i.bn, 0
  br i1 %.not47, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %.promoted = load i32, ptr %i.a, align 4
  %i.bo = load ptr, ptr %4, align 8, !tbaa !323
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.m
  %.048 = phi i64 [ %i.bn, %.lr.ph ], [ %i.bq, %bb.m ] ; 5 uses
  %i.bp = phi i32 [ %.promoted, %.lr.ph ], [ %i.bu, %bb.m ]
  %i.bq = add i64 %.048, -1                       ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !83
  %i.bt = icmp eq i8 %i.bs, 48
  br i1 %i.bt, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bu = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !55
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %.critedge.thread, label %bb.l, !llvm.loop !999

.critedge.thread:                                 ; preds = %bb.m, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !324
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit43

.critedge:                                        ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !324 ; 2 uses
  %i.bz = icmp ugt i64 %.048, %i.by
  br i1 %i.bz, label %bb.n, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit43

bb.n:                                             ; preds = %.critedge
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !322
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.048), !inline_history !36
  %.pre.i42 = load i64, ptr %i.bx, align 8, !tbaa !324
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit43

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit43: ; preds = %.critedge.thread, %.critedge, %bb.n
  %.0.lcssa60 = phi i64 [ %.048, %.critedge ], [ %.048, %bb.n ], [ 0, %.critedge.thread ]
  %i.cc = phi i64 [ %i.by, %.critedge ], [ %.pre.i42, %bb.n ], [ %i.bw, %.critedge.thread ]
  %i.cd = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa60, i64 %i.cc)
  store i64 %i.cd, ptr %i.bm, align 8, !tbaa !330
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit43, %bb.j, %bb.i
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.036 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.ce, %bb.o ]
  ret i32 %.036
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !422
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !401    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.101, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !83
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !330
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !324
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 7 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !445   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !446 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.ae, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !330
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.ak = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.br, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %i.ac, %.lr.ph34.i.i.i ], [ %i.bs, %._crit_edge.i.i.i ] ; 9 uses
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !324
  %i.am = sub i64 %i.al, %i.ak
  %i.an = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.ao = sub i64 %i.ai, %i.an                    ; 4 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !322
  %i.ar = add i64 %i.ao, %i.ak
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ar), !inline_history !1000
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !330 ; 2 uses
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !324
  %i.au = sub i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026.i.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.av, %bb.f ], [ %i.ao, %bb.e ] ; 13 uses
  %i.aw = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323 ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.026.i.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !83
  %wide.load36 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %wide.load, ptr %i.be, align 1, !tbaa !83
  store <16 x i8> %wide.load36, ptr %i.bf, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1001

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bi, align 1, !tbaa !83
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1002

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i.prol
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !83
  %i.bn = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1003

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !330
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.g
  %i.bq = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.g ]
  %i.br = add i64 %i.bq, %.025.i.i.i              ; 2 uses
  store i64 %i.br, ptr %i.ag, align 8, !tbaa !330
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.af
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %bb.e, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !83
  %i.bw = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !83
  %i.ca = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !83
  %i.ce = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !83
  %i.ci = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ci, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1004

_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.cj = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.cj, %bb.h ], [ %.sroa.09.0, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #23 align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_errorE, i64 16), ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #22

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212format_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #3
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #45
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef byval(%"struct.fmt::v12::detail::basic_fp") align 16 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 44 uses
  %6 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 35 uses
  %7 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 23 uses
  %8 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 28 uses
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.b, align 8, !tbaa !473
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !474
  store i64 32, ptr %i.a, align 8, !tbaa !475
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 10 uses
  store i32 0, ptr %i.e, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 17 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.g, align 8, !tbaa !473
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !474
  store i64 32, ptr %i.f, align 8, !tbaa !475
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 9 uses
  store i32 0, ptr %i.j, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 14 uses
  store i64 0, ptr %i.m, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.l, align 8, !tbaa !473
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !474
  store i64 32, ptr %i.k, align 8, !tbaa !475
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 0, ptr %i.r, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.q, align 8, !tbaa !473
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !474
  store i64 32, ptr %i.p, align 8, !tbaa !475
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 5 uses
  store i32 0, ptr %i.t, align 8, !tbaa !479
  %i.u = and i32 %1, 1                            ; 5 uses
  %.not = icmp eq i32 %i.u, 0                     ; 3 uses
  %i.v = add nuw nsw i32 %i.u, 1                  ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 16, !tbaa !1037 ; 6 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.z = load i128, ptr %0, align 16, !tbaa !1038 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.05.i.i = phi i128 [ %i.z, %bb.b ], [ %i.ad, %bb.c ] ; 2 uses
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.c ] ; 4 uses
  %i.aa = trunc i128 %.05.i.i to i32
  %i.ab = add nuw nsw i64 %.0.i.i, 1              ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !55
  %i.ad = lshr i128 %.05.i.i, 32                  ; 2 uses
  %.not.i.i = icmp eq i128 %i.ad, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c, !llvm.loop !1005

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp samesign ult i64 %.0.i.i, 32
  br i1 %.not8.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call noalias dereferenceable_or_null(192) ptr @malloc(i64 noundef 192) #52 ; 3 uses
  %.not.i.i889 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i889, label %.invoke1568, label %.noexc

.noexc:                                           ; preds = %bb.e
  store ptr %i.ae, ptr %5, align 8, !tbaa !474
  store i64 48, ptr %i.a, align 8, !tbaa !475
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %i.af = phi ptr [ %i.d, %bb.d ], [ %i.ae, %.noexc ] ; 6 uses
  %i.ag = phi i64 [ 32, %bb.d ], [ 48, %.noexc ]  ; 4 uses
  %i.ah = call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ag) ; 8 uses
  store i64 %i.ah, ptr %i.c, align 8, !tbaa !480
  %i.ai = add nuw nsw i32 %i.x, %i.v              ; 2 uses
  %i.aj = lshr i32 %i.ai, 5
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !479
  %i.ak = and i32 %i.ai, 31                       ; 4 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN3fmt3v126detail6bigintlSEi.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.am = sub nuw nsw i32 32, %i.ak               ; 2 uses
  %min.iters.check1728 = icmp samesign ult i64 %.0.i.i, 7
  br i1 %min.iters.check1728, label %scalar.ph1727.preheader, label %vector.ph1729

vector.ph1729:                                    ; preds = %.lr.ph.i
end_hunk_7
begin_hunk_8_@_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE(ptr dead_on_unwind noalias writable sret(%"struct.fmt::v12::detail::thousands_sep_result") align 8 %0, ptr %1) local_unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #3
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #3
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit: ; preds = %bb.b, %bb.c
  %i.a = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #3
  %i.b = load ptr, ptr %2, align 8, !tbaa !411
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !417  ; 5 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.d, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit

bb.d:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit
  invoke void @_ZSt16__throw_bad_castv() #49
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89, !noalias !1070
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1070
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f), !inline_history !26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !131
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit unwind label %bb.h, !inline_history !27

_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit: ; preds = %bb.e, %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  %i.q = phi i8 [ 0, %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit ], [ %i.p, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !133
  %i.s = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.f:                                             ; preds = %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit
  %i.v = load i64, ptr %i.j, align 8, !tbaa !131  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit
  store ptr %i.s, ptr %0, align 8, !tbaa !82
  %i.y = load i64, ptr %i.t, align 8, !tbaa !83
  store i64 %i.y, ptr %i.r, align 8, !tbaa !83
  %.pre = load i64, ptr %i.j, align 8, !tbaa !131
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !131
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.q, ptr %i.ab, align 8, !tbaa !490
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  ret void

bb.g:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.h
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !83
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ], [ %i.ac, %bb.g ]
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEPKcNS1_14digit_groupingIcEEEET0_S9_T1_iiRKT2_(ptr %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !131
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %.not31.i.i.i = icmp eq i32 %2, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !tbaa !330
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.i = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.ap, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %1, %.lr.ph34.i.i.i ], [ %i.aq, %._crit_edge.i.i.i ] ; 9 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !324
  %i.k = sub i64 %i.j, %i.i
  %i.l = ptrtoint ptr %.02732.i.i.i to i64        ; 2 uses
  %i.m = sub i64 %i.g, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !322
  %i.p = add i64 %i.m, %i.i
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p), !inline_history !42
  %i.q = load i64, ptr %i.e, align 8, !tbaa !330  ; 2 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !324
  %i.s = sub i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026.i.i.i = phi i64 [ %i.q, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.t, %bb.d ], [ %i.m, %bb.c ] ; 13 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !323    ; 2 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check85

iter.check85:                                     ; preds = %bb.e
  %min.iters.check72 = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check72, label %.lr.ph.i.i.i.preheader, label %vector.memcheck70

vector.memcheck70:                                ; preds = %iter.check85
  %i.x = add i64 %.026.i.i.i, %i.v
  %i.y = sub i64 %i.l, %i.x
  %diff.check71 = icmp ugt i64 %i.y, -32
  br i1 %diff.check71, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check73

vector.main.loop.iter.check73:                    ; preds = %vector.memcheck70
  %min.iters.check74 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check74, label %vec.epilog.ph89, label %vector.ph75

vector.ph75:                                      ; preds = %vector.main.loop.iter.check73
  %i.z = and i64 %.025.i.i.i, 28
  %n.vec76 = and i64 %.025.i.i.i, -32             ; 4 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.ph75, %vector.body77
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body77 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index78 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load79 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !83
  %wide.load80 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %index78 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <16 x i8> %wide.load79, ptr %i.ac, align 1, !tbaa !83
  store <16 x i8> %wide.load80, ptr %i.ad, align 1, !tbaa !83
  %index.next81 = add nuw i64 %index78, 32        ; 2 uses
  %i.ae = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.ae, label %middle.block82, label %vector.body77, !llvm.loop !1071

middle.block82:                                   ; preds = %vector.body77
  %cmp.n83 = icmp eq i64 %.025.i.i.i, %n.vec76
  br i1 %cmp.n83, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check87

vec.epilog.iter.check87:                          ; preds = %middle.block82
  %min.epilog.iters.check88 = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check88, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph89, !prof !410

vec.epilog.ph89:                                  ; preds = %vector.main.loop.iter.check73, %vec.epilog.iter.check87
  %vec.epilog.resume.val84 = phi i64 [ %n.vec76, %vec.epilog.iter.check87 ], [ 0, %vector.main.loop.iter.check73 ]
  %n.vec90 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body91

vec.epilog.vector.body91:                         ; preds = %vec.epilog.vector.body91, %vec.epilog.ph89
  %index92 = phi i64 [ %vec.epilog.resume.val84, %vec.epilog.ph89 ], [ %index.next94, %vec.epilog.vector.body91 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index92
  %wide.load93 = load <4 x i8>, ptr %i.af, align 1, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %index92
  store <4 x i8> %wide.load93, ptr %i.ag, align 1, !tbaa !83
  %index.next94 = add nuw i64 %index92, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next94, %n.vec90
  br i1 %i.ah, label %vec.epilog.middle.block95, label %vec.epilog.vector.body91, !llvm.loop !1072

vec.epilog.middle.block95:                        ; preds = %vec.epilog.vector.body91
  %cmp.n96 = icmp eq i64 %.025.i.i.i, %n.vec90
  br i1 %cmp.n96, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check85, %vector.memcheck70, %vec.epilog.iter.check87, %vec.epilog.middle.block95
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check85 ], [ 0, %vector.memcheck70 ], [ %n.vec76, %vec.epilog.iter.check87 ], [ %n.vec90, %vec.epilog.middle.block95 ] ; 3 uses
  %xtraiter98 = and i64 %.025.i.i.i, 3            ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %.030.i.i.i.prol
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !83
  %i.al = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1073

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.prol ]
  %i.am = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block95, %middle.block82
  %.pre37.i.i.i = load i64, ptr %i.e, align 8, !tbaa !330
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.e
  %i.ao = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.e ]
  %i.ap = add i64 %i.ao, %.025.i.i.i              ; 2 uses
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !330
  %i.aq = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %bb.c, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 %.030.i.i.i
  store i8 %i.as, ptr %i.at, align 1, !tbaa !83
  %i.au = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !83
  %i.ay = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ay
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !83
  %i.bc = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bc
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !83
  %i.bg = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bg, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1074

_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  %i.bh = icmp sgt i32 %3, 0
  br i1 %i.bh, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bt, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !330 ; 2 uses
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !324
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !322
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bm), !inline_history !32
  %.pre.i.i.i18 = load i64, ptr %i.bi, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i18, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %i.bm, %bb.f ], [ %.pre2.i.i.i, %bb.g ]
  %i.bq = phi i64 [ %i.bl, %bb.f ], [ %.pre.i.i.i18, %bb.g ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i, ptr %i.bi, align 8, !tbaa !330
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 48, ptr %i.bs, align 1, !tbaa !83
  %i.bt = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bt, %3
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.f, !llvm.loop !31

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i64 0, ptr %i.bw, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bv, align 8, !tbaa !322
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.bx, ptr %5, align 8, !tbaa !323
  store i64 500, ptr %i.bu, align 8, !tbaa !324
  %i.by = sext i32 %2 to i64
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by ; 2 uses
  %.not31.i.i.i19 = icmp eq i32 %2, 0
  br i1 %.not31.i.i.i19, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33, label %.lr.ph34.i.i.i20

.lr.ph34.i.i.i20:                                 ; preds = %bb.h
  %i.ca = ptrtoint ptr %i.bz to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i31, %.lr.ph34.i.i.i20
  %i.cb = phi i64 [ 0, %.lr.ph34.i.i.i20 ], [ %i.di, %._crit_edge.i.i.i31 ] ; 3 uses
  %.02732.i.i.i22 = phi ptr [ %1, %.lr.ph34.i.i.i20 ], [ %i.dj, %._crit_edge.i.i.i31 ] ; 9 uses
  %i.cc = load i64, ptr %i.bu, align 8, !tbaa !324
  %i.cd = sub i64 %i.cc, %i.cb
  %i.ce = ptrtoint ptr %.02732.i.i.i22 to i64     ; 2 uses
  %i.cf = sub i64 %i.ca, %i.ce                    ; 4 uses
  %i.cg = icmp ult i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ch = load ptr, ptr %i.bv, align 8, !tbaa !322
  %i.ci = add i64 %i.cf, %i.cb
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ci)
          to label %.noexc unwind label %.loopexit, !inline_history !1075

.noexc:                                           ; preds = %bb.j
  %i.cj = load i64, ptr %i.bw, align 8, !tbaa !330 ; 2 uses
  %i.ck = load i64, ptr %i.bu, align 8, !tbaa !324
  %i.cl = sub i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.cl)
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  %.026.i.i.i23 = phi i64 [ %i.cj, %.noexc ], [ %i.cb, %bb.i ] ; 3 uses
  %.025.i.i.i24 = phi i64 [ %i.cm, %.noexc ], [ %i.cf, %bb.i ] ; 13 uses
  %i.cn = load ptr, ptr %5, align 8, !tbaa !323   ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.026.i.i.i23 ; 7 uses
  %.not36.i.i.i25 = icmp eq i64 %.025.i.i.i24, 0
  br i1 %.not36.i.i.i25, label %._crit_edge.i.i.i31, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.025.i.i.i24, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i26.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cq = add i64 %.026.i.i.i23, %i.co
  %i.cr = sub i64 %i.ce, %i.cq
  %diff.check = icmp ugt i64 %i.cr, -32
  br i1 %diff.check, label %.lr.ph.i.i.i26.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check63 = icmp ult i64 %.025.i.i.i24, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cs = and i64 %.025.i.i.i24, 28
  %n.vec = and i64 %.025.i.i.i24, -32             ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.02732.i.i.i22, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <16 x i8>, ptr %i.ct, align 1, !tbaa !83
  %wide.load64 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <16 x i8> %wide.load, ptr %i.cv, align 1, !tbaa !83
  store <16 x i8> %wide.load64, ptr %i.cw, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !1076

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i24, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i29, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i26.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %.025.i.i.i24, -4            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02732.i.i.i22, i64 %index66
  %wide.load67 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !83
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 %index66
  store <4 x i8> %wide.load67, ptr %i.cz, align 1, !tbaa !83
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.da = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.da, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1077

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %.025.i.i.i24, %n.vec65
  br i1 %cmp.n69, label %._crit_edge.loopexit.i.i.i29, label %.lr.ph.i.i.i26.preheader

.lr.ph.i.i.i26.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i27.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i24, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i26.prol

.lr.ph.i.i.i26.prol:                              ; preds = %.lr.ph.i.i.i26.preheader, %.lr.ph.i.i.i26.prol
  %.030.i.i.i27.prol = phi i64 [ %i.de, %.lr.ph.i.i.i26.prol ], [ %.030.i.i.i27.ph, %.lr.ph.i.i.i26.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i26.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %.02732.i.i.i22, i64 %.030.i.i.i27.prol
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.030.i.i.i27.prol
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !83
  %i.de = add nuw i64 %.030.i.i.i27.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i26.prol, !llvm.loop !1078

.lr.ph.i.i.i26.prol.loopexit:                     ; preds = %.lr.ph.i.i.i26.prol, %.lr.ph.i.i.i26.preheader
  %.030.i.i.i27.unr = phi i64 [ %.030.i.i.i27.ph, %.lr.ph.i.i.i26.preheader ], [ %i.de, %.lr.ph.i.i.i26.prol ]
  %i.df = sub i64 %.030.i.i.i27.ph, %.025.i.i.i24
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge.loopexit.i.i.i29, label %.lr.ph.i.i.i26

._crit_edge.loopexit.i.i.i29:                     ; preds = %.lr.ph.i.i.i26.prol.loopexit, %.lr.ph.i.i.i26, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i30 = load i64, ptr %i.bw, align 8, !tbaa !330
  br label %._crit_edge.i.i.i31

._crit_edge.i.i.i31:                              ; preds = %._crit_edge.loopexit.i.i.i29, %bb.k
  %i.dh = phi i64 [ %.pre37.i.i.i30, %._crit_edge.loopexit.i.i.i29 ], [ %.026.i.i.i23, %bb.k ]
  %i.di = add i64 %i.dh, %.025.i.i.i24            ; 3 uses
  store i64 %i.di, ptr %i.bw, align 8, !tbaa !330
  %i.dj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i22, i64 %.025.i.i.i24 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.dj, %i.bz
  br i1 %.not.i.i.i32, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33, label %bb.i, !llvm.loop !19

.lr.ph.i.i.i26:                                   ; preds = %.lr.ph.i.i.i26.prol.loopexit, %.lr.ph.i.i.i26
  %.030.i.i.i27 = phi i64 [ %i.dz, %.lr.ph.i.i.i26 ], [ %.030.i.i.i27.unr, %.lr.ph.i.i.i26.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i22, i64 %.030.i.i.i27
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !83
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.030.i.i.i27
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !83
  %i.dn = add nuw i64 %.030.i.i.i27, 1            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02732.i.i.i22, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !83
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dn
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !83
  %i.dr = add nuw i64 %.030.i.i.i27, 2            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02732.i.i.i22, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !83
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dr
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !83
  %i.dv = add nuw i64 %.030.i.i.i27, 3            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i22, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !83
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dv
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !83
  %i.dz = add nuw i64 %.030.i.i.i27, 4            ; 2 uses
  %exitcond.not.i.i.i28.3 = icmp eq i64 %i.dz, %.025.i.i.i24
  br i1 %exitcond.not.i.i.i28.3, label %._crit_edge.loopexit.i.i.i29, label %.lr.ph.i.i.i26, !llvm.loop !1079

_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33: ; preds = %._crit_edge.i.i.i31, %bb.h
  %i.ea = phi i64 [ 0, %bb.h ], [ %i.di, %._crit_edge.i.i.i31 ]
  %i.eb = icmp sgt i32 %3, 0
  br i1 %i.eb, label %.lr.ph.i34, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42

.lr.ph.i34:                                       ; preds = %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36
  %.04.i35 = phi i32 [ %i.ek, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36 ], [ 0, %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33 ]
  %i.ec = load i64, ptr %i.bw, align 8, !tbaa !330 ; 2 uses
  %i.ed = add i64 %i.ec, 1                        ; 3 uses
  %i.ee = load i64, ptr %i.bu, align 8, !tbaa !324
  %i.ef = icmp ugt i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.l, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36

bb.l:                                             ; preds = %.lr.ph.i34
  %i.eg = load ptr, ptr %i.bv, align 8, !tbaa !322
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ed)
          to label %.noexc41 unwind label %bb.o, !inline_history !43

.noexc41:                                         ; preds = %bb.l
  %.pre.i.i.i39 = load i64, ptr %i.bw, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i40 = add i64 %.pre.i.i.i39, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36:      ; preds = %.noexc41, %.lr.ph.i34
  %.pre-phi.i.i.i37 = phi i64 [ %i.ed, %.lr.ph.i34 ], [ %.pre2.i.i.i40, %.noexc41 ]
  %i.eh = phi i64 [ %i.ec, %.lr.ph.i34 ], [ %.pre.i.i.i39, %.noexc41 ]
  %i.ei = load ptr, ptr %5, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i37, ptr %i.bw, align 8, !tbaa !330
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  store i8 48, ptr %i.ej, align 1, !tbaa !83
  %i.ek = add nuw nsw i32 %.04.i35, 1             ; 2 uses
  %exitcond.not.i38 = icmp eq i32 %i.ek, %3
  br i1 %exitcond.not.i38, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42.loopexit, label %.lr.ph.i34, !llvm.loop !31

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42.loopexit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i36
  %.pre = load i64, ptr %i.bw, align 8, !tbaa !330
  br label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42.loopexit, %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33
  %i.el = phi i64 [ %.pre, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42.loopexit ], [ %i.ea, %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit33 ]
  %i.em = load ptr, ptr %5, align 8, !tbaa !323
  %i.en = invoke ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr %0, ptr %i.em, i64 %i.el)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42
  %i.eo = load ptr, ptr %5, align 8, !tbaa !323   ; 2 uses
  %.not.i.i = icmp eq ptr %i.eo, %i.bx
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.eo) #3
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit42
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eq = load ptr, ptr %5, align 8, !tbaa !323   ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.eq, %i.bx
  br i1 %.not.i.i43, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit44, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.eq) #3
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit44

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit44: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  resume { ptr, i32 } %.pn

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit
  %.sroa.015.0 = phi ptr [ %i.en, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %0, %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit ], [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  ret ptr %.sroa.015.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESA_SA_SH_mmOSB_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !422
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !401    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.101, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !83
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !330
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !324
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 6 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !1083, !nonnull !103, !align !431
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !451 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
end_hunk_8
begin_hunk_9_@_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcPKcNS1_14digit_groupingIcEEEET_S9_T1_iiT0_RKT2_:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !131
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = tail call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %1, ptr noundef %i.d, ptr %0) ; 7 uses
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !330  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !324
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !322
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.h), !inline_history !41
  %.pre.i.i.i = load i64, ptr %i.f, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.h, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.n = phi i64 [ %i.g, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i, ptr %i.f, align 8, !tbaa !330
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %4, ptr %i.p, align 1, !tbaa !83
  %i.q = sext i32 %2 to i64
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = tail call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %i.d, ptr noundef %i.r, ptr nonnull %i.e)
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.u, align 8, !tbaa !322
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !323
  store i64 500, ptr %i.t, align 8, !tbaa !324
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x ; 2 uses
  %i.z = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %1, ptr noundef %i.y, ptr nonnull %6)
          to label %.noexc unwind label %bb.k     ; 6 uses

.noexc:                                           ; preds = %bb.e
  %.not.i19 = icmp eq i8 %4, 0
  br i1 %.not.i19, label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit27, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !330 ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !324
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !322
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.ac)
          to label %.noexc25 unwind label %bb.k, !inline_history !1090

.noexc25:                                         ; preds = %bb.g
  %.pre.i.i.i23 = load i64, ptr %i.aa, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i24 = add i64 %.pre.i.i.i23, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20:      ; preds = %.noexc25, %bb.f
  %.pre-phi.i.i.i21 = phi i64 [ %i.ac, %bb.f ], [ %.pre2.i.i.i24, %.noexc25 ]
  %i.ai = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i23, %.noexc25 ]
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i21, ptr %i.aa, align 8, !tbaa !330
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 %4, ptr %i.ak, align 1, !tbaa !83
  %i.al = sext i32 %2 to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %i.y, ptr noundef %i.am, ptr nonnull %i.z)
          to label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit27 unwind label %bb.k ; 0 uses

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit27: ; preds = %.noexc, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20
  %i.ao = load ptr, ptr %6, align 8, !tbaa !323
  %i.ap = zext i32 %3 to i64
  %i.aq = invoke ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %0, ptr %i.ao, i64 %i.ap)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit27
  %i.ar = load ptr, ptr %6, align 8, !tbaa !323   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.x
  %i.at = load i64, ptr %i.v, align 8, !tbaa !330
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  %i.av = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %i.as, ptr noundef %i.au, ptr %0)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %6, align 8, !tbaa !323   ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.w
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.aw) #3
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit

bb.k:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i20, %bb.g, %bb.e, %bb.h, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit27
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %6, align 8, !tbaa !323   ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.ay, %i.w
  br i1 %.not.i.i28, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit29, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.ay) #3
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit29

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit29: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  resume { ptr, i32 } %i.ax

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcEET_S5_PKciiT0_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.b, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit
  %.sroa.018.0 = phi ptr [ %i.av, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.s, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %i.e, %bb.b ]
  ret ptr %.sroa.018.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #39 {
bb.a:
  %.not31.i.i = icmp eq ptr %0, %1
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !330
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.e = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.al, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %0, %.lr.ph34.i.i ], [ %i.am, %._crit_edge.i.i ] ; 9 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !324
  %i.g = sub i64 %i.f, %i.e
  %i.h = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.i = sub i64 %i.c, %i.h                       ; 4 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !322
  %i.l = add i64 %i.i, %i.e
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.l), !inline_history !24
  %i.m = load i64, ptr %i.a, align 8, !tbaa !330  ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !324
  %i.o = sub i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026.i.i = phi i64 [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %.025.i.i = phi i64 [ %i.p, %bb.c ], [ %i.i, %bb.b ] ; 13 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !323    ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %.026.i.i, %i.r
  %i.u = sub i64 %i.h, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !83
  %wide.load8 = load <16 x i8>, ptr %i.x, align 1, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load, ptr %i.y, align 1, !tbaa !83
  store <16 x i8> %wide.load8, ptr %i.z, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1091

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %.025.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %index10
  store <4 x i8> %wide.load11, ptr %i.ac, align 1, !tbaa !83
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next12, %n.vec9
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1092

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %.025.i.i, %n.vec9
  br i1 %cmp.n13, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !83
  %i.ah = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1093

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.ai = sub i64 %.030.i.i.ph, %.025.i.i
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.a, align 8, !tbaa !330
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %i.ak = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.d ]
  %i.al = add i64 %i.ak, %.025.i.i                ; 2 uses
  store i64 %i.al, ptr %i.a, align 8, !tbaa !330
  %i.am = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.b, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !83
  %i.aq = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !83
  %i.au = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !83
  %i.ay = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ay
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !83
  %i.bc = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bc, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1094

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1100, !nonnull !103, !align !431
  %i.b = load i32, ptr %i.a, align 4, !tbaa !451  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !330  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !324
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !322
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !17
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !330
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !330  ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !324
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !322
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !17
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !330
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1101, !nonnull !103
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !101, !range !102, !noundef !103
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1102, !nonnull !103
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !83
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !324
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !322
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !17
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !330
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1103, !nonnull !103, !align !431
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !324
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !322
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !32
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !330
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !83
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !31

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1104, !nonnull !103, !align !436
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !467 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1105, !nonnull !103, !align !431
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !55 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 %i.bl ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i.i.i14 = load i64, ptr %i.q, align 8, !tbaa !330
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.bp = phi i64 [ %.pre.i.i.i14, %.lr.ph34.i.i.i ], [ %i.cw, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %i.bh, %.lr.ph34.i.i.i ], [ %i.cx, %._crit_edge.i.i.i ] ; 9 uses
  %i.bq = load i64, ptr %i.t, align 8, !tbaa !324
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.bt = sub i64 %i.bn, %i.bs                    ; 4 uses
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !322
  %i.bw = add i64 %i.bt, %i.bp
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bw), !inline_history !42
  %i.bx = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %i.by = load i64, ptr %i.t, align 8, !tbaa !324
  %i.bz = sub i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bz)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.026.i.i.i = phi i64 [ %i.bx, %bb.k ], [ %i.bp, %bb.j ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.ca, %bb.k ], [ %i.bt, %bb.j ] ; 13 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !323   ; 2 uses
  %i.cc = ptrtoaddr ptr %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.l
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ce = add i64 %.026.i.i.i, %i.cc
  %i.cf = sub i64 %i.bs, %i.ce
  %diff.check = icmp ugt i64 %i.cf, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load = load <16 x i8>, ptr %i.ch, align 1, !tbaa !83
  %wide.load31 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !83
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <16 x i8> %wide.load, ptr %i.cj, align 1, !tbaa !83
  store <16 x i8> %wide.load31, ptr %i.ck, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1095

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index33
  %wide.load34 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !83
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index33
  store <4 x i8> %wide.load34, ptr %i.cn, align 1, !tbaa !83
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.co = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1096

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %.025.i.i.i, %n.vec32
  br i1 %cmp.n36, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !83
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.030.i.i.i.prol
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !83
  %i.cs = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1097

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.prol ]
  %i.ct = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.q, align 8, !tbaa !330
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.l
  %i.cv = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.l ]
  %i.cw = add i64 %i.cv, %.025.i.i.i              ; 2 uses
  store i64 %i.cw, ptr %i.q, align 8, !tbaa !330
  %i.cx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cx, %i.bm
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %bb.j, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.dn, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !83
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.030.i.i.i
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !83
  %i.db = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !83
  %i.df = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !83
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !83
  %i.dj = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !83
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !83
  %i.dn = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.dn, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1098

_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit: ; preds = %._crit_edge.i.i.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !422
  %i.d = zext i32 %i.c to i64
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %3) ; 4 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !401    ; 2 uses
  %i.g = lshr i32 %i.f, 3
  %i.h = and i32 %i.g, 7
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.101, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !83
  %i.l = sext i8 %i.k to i64
  %i.m = and i64 %i.l, 4294967295
  %i.n = lshr i64 %i.e, %i.m                      ; 4 uses
  %i.o = sub nsw i64 %i.e, %i.n
  %i.p = lshr i32 %i.f, 15
  %i.q = and i32 %i.p, 7
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul nuw nsw i64 %i.e, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !330
  %i.v = add i64 %i.u, %2
  %i.w = add i64 %i.v, %i.s                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !324
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !322
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.w), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ac = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ac, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 9 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !330 ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !324
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !322
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.af), !inline_history !1106
  %.pre.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.af, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.al = phi i64 [ %i.ae, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.am = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i, ptr %i.ad, align 8, !tbaa !330
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 48, ptr %i.an, align 1, !tbaa !83
  %i.ao = load i64, ptr %i.ad, align 8, !tbaa !330 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = load i64, ptr %i.ag, align 8, !tbaa !324
  %i.ar = icmp ugt i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !322
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ap), !inline_history !1106
  %.pre.i.i4.i = load i64, ptr %i.ad, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i5.i = add i64 %.pre.i.i4.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i:       ; preds = %bb.f, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.pre-phi.i.i3.i = phi i64 [ %i.ap, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %.pre2.i.i5.i, %bb.f ]
  %i.au = phi i64 [ %i.ao, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %.pre.i.i4.i, %bb.f ]
  %i.av = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i3.i, ptr %i.ad, align 8, !tbaa !330
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 120, ptr %i.aw, align 1, !tbaa !83
  %i.ax = load i64, ptr %4, align 8, !tbaa !405   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !406 ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !330 ; 2 uses
  %i.bc = add i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = load i64, ptr %i.ag, align 8, !tbaa !324
  %i.be = icmp ugt i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !322
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.bc), !inline_history !1107
  %.pre.i.i7.i = load i64, ptr %i.ad, align 8, !tbaa !330 ; 2 uses
  %.pre14.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !324
  %.pre15.i.i.i = add i64 %.pre.i.i7.i, %i.ba     ; 2 uses
  %i.bh = icmp ult i64 %.pre14.i.i.i, %.pre15.i.i.i
  br i1 %i.bh, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i
  %i.bi = phi i64 [ %.pre.i.i7.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i ], [ %i.bb, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i ]
  %.pre-phi19.i.i.i = phi i64 [ %.pre15.i.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i ], [ %i.bc, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit6.i ]
  store i64 %.pre-phi19.i.i.i, ptr %i.ad, align 8, !tbaa !330
  %i.bj = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.not.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  %i.bl = sext i32 %i.az to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.split.i.i.i.i, %bb.g
  %.012.i.i.i.i = phi i64 [ %i.br, %.split.i.i.i.i ], [ %i.ax, %bb.g ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.bq, %.split.i.i.i.i ], [ %i.bm, %bb.g ]
  %i.bn = and i64 %.012.i.i.i.i, 15
  %i.bo = getelementptr inbounds nuw i8, ptr @.str.99, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !83
  %i.bq = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !83
  %i.br = lshr i64 %.012.i.i.i.i, 4               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i, label %_ZZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.split.i.i.i.i, !llvm.loop !28
end_hunk_9
begin_hunk_10_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
  %.sroa.074.1 = phi i64 [ %storemerge.i.i, %bb.a ], [ %storemerge.i.i, %bb.b ], [ %i.w, %bb.c ]
  %.032 = phi i32 [ 13, %bb.a ], [ %.sroa.6.8.extract.trunc, %bb.b ], [ %.sroa.6.8.extract.trunc, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 48, i64 16, i1 false)
  %i.x = and i32 %.sroa.081.0.extract.trunc, 4096
  %.not88 = icmp eq i32 %i.x, 0                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.str.98..str.99.i.i = select i1 %.not88, ptr @.str.99, ptr @.str.98
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.d
  %.012.i.i = phi i64 [ %i.ad, %.split.i.i ], [ %.sroa.074.1, %bb.d ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.ac, %.split.i.i ], [ %i.y, %bb.d ]
  %i.z = and i64 %.012.i.i, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %.str.98..str.99.i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !83
  %i.ac = getelementptr inbounds i8, ptr %.0.i.i38, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !83
  %i.ad = lshr i64 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !28

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not8990 = icmp eq i32 %.032, 0
  br i1 %.not8990, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit
  %.191 = phi i32 [ %i.ai, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.032, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ] ; 3 uses
  %i.ae = zext nneg i32 %.191 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !83
  %i.ah = icmp eq i8 %i.ag, 48
  br i1 %i.ah, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, label %.critedge

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %i.ai = add nsw i32 %.191, -1                   ; 2 uses
  %.not89 = icmp eq i32 %i.ai, 0
  br i1 %.not89, label %.critedge, label %.lr.ph, !llvm.loop !1155

.critedge:                                        ; preds = %.lr.ph, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ], [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.191, %.lr.ph ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !324
  %i.ao = icmp ugt i64 %i.al, %i.an
  br i1 %i.ao, label %bb.e, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !322
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.al), !inline_history !34
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.e
  %.pre-phi.i = phi i64 [ %i.al, %.critedge ], [ %.pre2.i, %bb.e ]
  %i.ar = phi i64 [ %i.ak, %.critedge ], [ %.pre.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i, ptr %i.aj, align 8, !tbaa !330
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 48, ptr %i.at, align 1, !tbaa !83
  %i.au = select i1 %.not88, i8 120, i8 88
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !324
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

bb.f:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !322
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aw), !inline_history !34
  %.pre.i40 = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.f
  %.pre-phi.i39 = phi i64 [ %i.aw, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.f ]
  %i.bb = phi i64 [ %i.av, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.f ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i39, ptr %i.aj, align 8, !tbaa !330
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 %i.au, ptr %i.bd, align 1, !tbaa !83
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !324
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

bb.g:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !322
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bf), !inline_history !34
  %.pre.i44 = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42, %bb.g
  %.pre-phi.i43 = phi i64 [ %i.bf, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.g ]
  %i.bk = phi i64 [ %i.be, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.g ]
  %i.bl = load i8, ptr %i.a, align 16, !tbaa !83
  %i.bm = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i43, ptr %i.aj, align 8, !tbaa !330
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !83
  %i.bo = and i32 %.sroa.081.0.extract.trunc, 8192
  %i.bp = or i32 %.1.lcssa, %i.bo
  %or.cond = icmp ne i32 %i.bp, 0
  %i.bq = icmp slt i32 %.1.lcssa, %.sroa.6.8.extract.trunc ; 2 uses
  %or.cond37 = or i1 %i.bq, %or.cond
  br i1 %or.cond37, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46
  %i.br = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.am, align 8, !tbaa !324
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !322
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bs), !inline_history !34
  %.pre.i48 = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.h, %bb.i
  %.pre-phi.i47 = phi i64 [ %i.bs, %bb.h ], [ %.pre2.i49, %bb.i ]
  %i.bx = phi i64 [ %i.br, %bb.h ], [ %.pre.i48, %bb.i ]
  %i.by = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i47, ptr %i.aj, align 8, !tbaa !330
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 46, ptr %i.bz, align 1, !tbaa !83
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.cb = zext nneg i32 %.1.lcssa to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb ; 2 uses
  %.not31.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.j
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i51 = load i64, ptr %i.aj, align 8, !tbaa !330
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.cf = phi i64 [ %.pre.i51, %.lr.ph34.i ], [ %i.dm, %._crit_edge.i ] ; 3 uses
  %.02732.i = phi ptr [ %i.ca, %.lr.ph34.i ], [ %i.dn, %._crit_edge.i ] ; 9 uses
  %i.cg = load i64, ptr %i.am, align 8, !tbaa !324
  %i.ch = sub i64 %i.cg, %i.cf
  %i.ci = ptrtoint ptr %.02732.i to i64           ; 2 uses
  %i.cj = sub i64 %i.cd, %i.ci                    ; 4 uses
  %i.ck = icmp ult i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !322
  %i.cm = add i64 %i.cj, %i.cf
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cm), !inline_history !35
  %i.cn = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %i.co = load i64, ptr %i.am, align 8, !tbaa !324
  %i.cp = sub i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cp)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.026.i = phi i64 [ %i.cn, %bb.l ], [ %i.cf, %bb.k ] ; 3 uses
  %.025.i = phi i64 [ %i.cq, %bb.l ], [ %i.cj, %bb.k ] ; 13 uses
  %i.cr = load ptr, ptr %3, align 8, !tbaa !323   ; 2 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.026.i ; 7 uses
  %.not36.i = icmp eq i64 %.025.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %.025.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cu = add i64 %.026.i, %i.cs
  %i.cv = sub i64 %i.ci, %i.cu
  %diff.check = icmp ugt i64 %i.cv, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check117 = icmp ult i64 %.025.i, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cw = and i64 %.025.i, 28
  %n.vec = and i64 %.025.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load = load <16 x i8>, ptr %i.cx, align 1, !tbaa !83
  %wide.load118 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !83
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <16 x i8> %wide.load, ptr %i.cz, align 1, !tbaa !83
  store <16 x i8> %wide.load118, ptr %i.da, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !1156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %.025.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index120
  %wide.load121 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %index120
  store <4 x i8> %wide.load121, ptr %i.dd, align 1, !tbaa !83
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.de, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %.025.i, %n.vec119
  br i1 %cmp.n123, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec119, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.030.i.prol = phi i64 [ %i.di, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.030.i.prol
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.030.i.prol
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !83
  %i.di = add nuw i64 %.030.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1158

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.030.i.unr = phi i64 [ %.030.i.ph, %.lr.ph.i.preheader ], [ %i.di, %.lr.ph.i.prol ]
  %i.dj = sub i64 %.030.i.ph, %.025.i
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i = load i64, ptr %i.aj, align 8, !tbaa !330
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %i.dl = phi i64 [ %.pre37.i, %._crit_edge.loopexit.i ], [ %.026.i, %bb.m ]
  %i.dm = add i64 %i.dl, %.025.i                  ; 2 uses
  store i64 %i.dm, ptr %i.aj, align 8, !tbaa !330
  %i.dn = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.025.i ; 2 uses
  %.not.i = icmp eq ptr %i.dn, %i.cc
  br i1 %.not.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %bb.k, !llvm.loop !19

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi i64 [ %i.ed, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.030.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !83
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.030.i
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !83
  %i.dr = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !83
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dr
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !83
  %i.dv = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !83
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dv
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !83
  %i.dz = add nuw i64 %.030.i, 3                  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !83
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dz
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !83
  %i.ed = add nuw i64 %.030.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ed, %.025.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1159

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.j
  br i1 %i.bq, label %.lr.ph94, label %._crit_edge

.lr.ph94:                                         ; preds = %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph94, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55
  %.293 = phi i32 [ %.1.lcssa, %.lr.ph94 ], [ %i.en, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55 ]
  %i.ef = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %i.eg = add i64 %i.ef, 1                        ; 3 uses
  %i.eh = load i64, ptr %i.am, align 8, !tbaa !324
  %i.ei = icmp ugt i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.o, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

bb.o:                                             ; preds = %bb.n
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !322
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eg), !inline_history !34
  %.pre.i53 = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %.pre2.i54 = add i64 %.pre.i53, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55: ; preds = %bb.n, %bb.o
  %.pre-phi.i52 = phi i64 [ %i.eg, %bb.n ], [ %.pre2.i54, %bb.o ]
  %i.ek = phi i64 [ %i.ef, %bb.n ], [ %.pre.i53, %bb.o ]
  %i.el = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i52, ptr %i.aj, align 8, !tbaa !330
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 48, ptr %i.em, align 1, !tbaa !83
  %i.en = add i32 %.293, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !1160

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.eo = select i1 %.not88, i8 112, i8 80
  %i.ep = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %i.eq = add i64 %i.ep, 1                        ; 3 uses
  %i.er = load i64, ptr %i.am, align 8, !tbaa !324
  %i.es = icmp ugt i64 %i.eq, %i.er
  br i1 %i.es, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.p:                                             ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !322
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eq), !inline_history !34
  %.pre.i57 = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.p
  %.pre-phi.i56 = phi i64 [ %i.eq, %._crit_edge ], [ %.pre2.i58, %bb.p ]
  %i.ev = phi i64 [ %i.ep, %._crit_edge ], [ %.pre.i57, %bb.p ]
  %i.ew = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i56, ptr %i.aj, align 8, !tbaa !330
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 %i.eo, ptr %i.ex, align 1, !tbaa !83
  %i.ey = icmp slt i32 %i.j, 0
  %i.ez = load i64, ptr %i.aj, align 8, !tbaa !330 ; 3 uses
  %i.fa = add i64 %i.ez, 1                        ; 5 uses
  %i.fb = load i64, ptr %i.am, align 8, !tbaa !324
  %i.fc = icmp ugt i64 %i.fa, %i.fb               ; 2 uses
  br i1 %i.ey, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.r:                                             ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !322
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !34
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.q, %bb.r
  %.pre-phi.i60 = phi i64 [ %i.fa, %bb.q ], [ %.pre2.i62, %bb.r ]
  %i.ff = phi i64 [ %i.ez, %bb.q ], [ %.pre.i61, %bb.r ]
  %i.fg = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !330
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 45, ptr %i.fh, align 1, !tbaa !83
  %i.fi = sub nsw i32 0, %i.j
  br label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

bb.t:                                             ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !322
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !34
  %.pre.i65 = load i64, ptr %i.aj, align 8, !tbaa !330 ; 2 uses
  %.pre2.i66 = add i64 %.pre.i65, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67: ; preds = %bb.s, %bb.t
  %.pre-phi.i64 = phi i64 [ %i.fa, %bb.s ], [ %.pre2.i66, %bb.t ]
  %i.fl = phi i64 [ %i.ez, %bb.s ], [ %.pre.i65, %bb.t ]
  %i.fm = load ptr, ptr %3, align 8, !tbaa !323
  store i64 %.pre-phi.i64, ptr %i.aj, align 8, !tbaa !330
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 43, ptr %i.fn, align 1, !tbaa !83
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63
  %.0 = phi i32 [ %i.fi, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63 ], [ %i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67 ] ; 3 uses
  %i.fo = or i32 %.0, 1
  %i.fp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = xor i32 %i.fp, 31
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !134
  %i.fu = zext nneg i32 %.0 to i64
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = lshr i64 %i.fv, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.fx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::basic_fp", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !401
  %i.c = and i32 %i.b, 7
  %i.d = icmp eq i32 %i.c, 2                      ; 5 uses
  %i.e = fcmp oeq double %0, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.f, %i.d
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !330  ; 2 uses
end_hunk_10
begin_hunk_11_@_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_:bb.a
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !330
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1206, !nonnull !103
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !101, !range !102, !noundef !103
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1207, !nonnull !103
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !83
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !324
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !322
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !17
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !330
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1208, !nonnull !103, !align !431
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !324
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !322
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !32
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !323
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !330
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !83
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !31

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1209, !nonnull !103, !align !436
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !465
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1210, !nonnull !103, !align !431
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !55
  %i.bl = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %1, i64 noundef %i.bh, i32 noundef %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bl, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #7 {
bb.a:
  %4 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.anon.282, align 8            ; 6 uses
  %6 = alloca %class.anon.283, align 8            ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.f = load i32, ptr %3, align 4, !tbaa !401
  %i.g = and i32 %i.f, 7
  %i.h = icmp eq i32 %i.g, 1                      ; 3 uses
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr %i.a, align 1, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !403  ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !422
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !330
  %i.r = add i64 %i.q, %2                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !324
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !322
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.r), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.c, %bb.d
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.x = tail call ptr @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %0, ptr %1, i64 %2)
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !tbaa !330
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.ab = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bi, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %1, %.lr.ph34.i.i.i ], [ %i.bj, %._crit_edge.i.i.i ] ; 9 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !324
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.af = sub i64 %i.z, %i.ae                     ; 4 uses
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !322
  %i.ai = add i64 %i.af, %i.ab
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai), !inline_history !1211
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !330 ; 2 uses
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !324
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.al)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %i.ab, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.am, %bb.h ], [ %i.af, %bb.g ] ; 13 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !323   ; 2 uses
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = add i64 %.026.i.i.i, %i.ao
  %i.ar = sub i64 %i.ae, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !83
  %wide.load27 = load <16 x i8>, ptr %i.au, align 1, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !83
  store <16 x i8> %wide.load27, ptr %i.aw, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index29
  store <4 x i8> %wide.load30, ptr %i.az, align 1, !tbaa !83
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %.025.i.i.i, %n.vec28
  br i1 %cmp.n32, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.030.i.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !83
  %i.be = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1214

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.prol ]
  %i.bf = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.p, align 8, !tbaa !330
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.bh = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.bi = add i64 %i.bh, %.025.i.i.i              ; 2 uses
  store i64 %i.bi, ptr %i.p, align 8, !tbaa !330
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, %i.y
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %bb.g, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.030.i.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !83
  %i.bn = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !83
  %i.br = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !83
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !83
  %i.bv = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !83
  %i.bz = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bz, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1215

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.ca = zext nneg i32 %i.k to i64
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.cb = phi i64 [ %i.ca, %bb.j ], [ -1, %.thread ]
  store i64 %i.cb, ptr %i.b, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.cc = icmp ne i32 %i.k, 0
  %narrow = and i1 %i.h, %i.cc
  %.sink = zext i1 %narrow to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i64 %.sink, ptr %i.c, align 8, !tbaa !134
  store i64 %.sink, ptr %i.d, align 8, !tbaa !134
  store ptr %i.a, ptr %5, align 8, !tbaa !459
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.cd, align 8, !tbaa !341
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.ce, align 8, !tbaa !341
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.cf, align 8, !tbaa !341
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.cg, align 8, !tbaa !517
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %1, i64 %2, ptr noundef nonnull byval(%class.anon.282) align 8 %5)
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !134 ; 2 uses
  %i.ci = load i64, ptr %i.c, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.cj = load i8, ptr %i.a, align 1, !tbaa !101, !range !102, !noundef !103
  store i8 %i.cj, ptr %6, align 8, !tbaa !519
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ch, ptr %i.ck, align 8, !tbaa !520
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1216
  %i.cm = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.ch, i64 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.e, %bb.k
  %.sroa.019.1 = phi ptr [ %i.cm, %bb.k ], [ %i.x, %bb.e ], [ %0, %bb.f ], [ %0, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret ptr %.sroa.019.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !330  ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !324
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !322
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !17
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !323
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !330
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %i.bw, %bb.g ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %i.bv, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  store ptr %i.l, ptr %3, align 8, !tbaa !438, !alias.scope !1224
  store ptr null, ptr %i.m, align 8, !tbaa !439, !alias.scope !1224
  store i32 0, ptr %i.n, align 8, !tbaa !440, !alias.scope !1224
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.q, ptr nonnull align 8 %3)
  %i.r = load ptr, ptr %3, align 8, !tbaa !438    ; 3 uses
  %.not31.i.i = icmp eq ptr %.0, %i.r
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.s, align 8, !tbaa !330
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0, %.lr.ph34.i.i ], [ %i.be, %._crit_edge.i.i ] ; 9 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !324
  %i.y = sub i64 %i.x, %i.w
  %i.z = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 4 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !322
  %i.ad = add i64 %i.aa, %i.w
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.ad), !inline_history !24
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !330 ; 2 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !324
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.aa, %bb.d ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.022.0, align 8, !tbaa !323 ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %.026.i.i, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <16 x i8>, ptr %i.ao, align 1, !tbaa !83
  %wide.load41 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %wide.load, ptr %i.aq, align 1, !tbaa !83
  store <16 x i8> %wide.load41, ptr %i.ar, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.at, align 1, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.au, align 1, !tbaa !83
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1220

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.025.i.i, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !83
  %i.az = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1221

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %i.ba = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.s, align 8, !tbaa !330
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bc = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.bd = add i64 %i.bc, %.025.i.i                ; 2 uses
  store i64 %i.bd, ptr %i.s, align 8, !tbaa !330
  %i.be = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.d, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !83
  %i.bi = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !83
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bi
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !83
  %i.bm = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !83
  %i.bq = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !83
  %i.bu = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bu, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1222

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !439 ; 3 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %.loopexit

bb.g:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %i.bw = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  %.not12 = icmp eq ptr %i.bv, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !1223

.loopexit:                                        ; preds = %bb.g, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bw, %bb.g ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !330 ; 2 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !324
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

bb.h:                                             ; preds = %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !322
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.bz), !inline_history !17
  %.pre.i.i16 = load i64, ptr %i.bx, align 8, !tbaa !330 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

_ZN3fmt3v1214basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.h
  %.pre-phi.i.i15 = phi i64 [ %i.bz, %.loopexit ], [ %.pre2.i.i17, %bb.h ]
  %i.cf = phi i64 [ %i.by, %.loopexit ], [ %.pre.i.i16, %bb.h ]
  %i.cg = load ptr, ptr %.sroa.022.127, align 8, !tbaa !323
  store i64 %.pre-phi.i.i15, ptr %i.bx, align 8, !tbaa !330
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 34, ptr %i.ch, align 1, !tbaa !83
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %0, i64 %1, ptr noundef byval(%class.anon.282) align 8 %2) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %3 = alloca %class.anon.286, align 8            ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !1231
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.024 = phi ptr [ %0, %bb.b ], [ %i.bq, %bb.d ] ; 8 uses
  %.not30 = icmp ult ptr %.024, %i.f
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %.024, align 1, !tbaa !83
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.133, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !83
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.024, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !55
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !83    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.024, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !83  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.024, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !83  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !55
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !55
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !55
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1
  %i.bn = add nsw i64 %i.p, %i.m
  %i.bo = select i1 %.not.i, i64 %i.bn, i64 1
  %i.bp = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.bm, ptr nonnull %.024, i64 %i.bo)
  %i.bq = select i1 %.not.i, ptr %i.q, ptr %i.v
  br i1 %i.bp, label %bb.c, label %.thread, !llvm.loop !1225

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.024, %bb.c ]   ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 8 uses
  %i.bv = icmp eq ptr %i.br, %.2
  br i1 %i.bv, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bu, 8
  %i.bw = sub i64 %i.bt, %i.c
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond61 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond61, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.bu, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %i.bu, 24
  %n.vec = and i64 %i.bu, -32                     ; 5 uses
  %i.by = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.bz = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep49, align 1, !tbaa !83
  %wide.load50 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !83
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !83
  store <16 x i8> %wide.load50, ptr %i.cb, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !521

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bu, -8                    ; 4 uses
  %i.cd = getelementptr i8, ptr %i.b, i64 %n.vec52
  %i.ce = getelementptr i8, ptr %.2, i64 %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.b, i64 %index53
  %next.gep55 = getelementptr i8, ptr %.2, i64 %index53
  %wide.load56 = load <8 x i8>, ptr %next.gep55, align 1, !tbaa !83
  store <8 x i8> %wide.load56, ptr %next.gep54, align 1, !tbaa !83
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1227

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.bu, %n.vec52
  br i1 %cmp.n58, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 3 uses
  %i.cg = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph63 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.ch = sub i64 %i.cg, %.057.i.ph63
  %xtraiter = and i64 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ci, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.057.i.prol, align 1, !tbaa !83
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cj, ptr %.08.i.prol, align 1, !tbaa !83
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1228

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ci, %.lr.ph.i.prol ]
  %i.cl = sub i64 %.057.i.ph63, %i.cg
  %i.cm = icmp ugt i64 %i.cl, -8
  br i1 %i.cm, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.di, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.co = load i8, ptr %.057.i, align 1, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.co, ptr %.08.i, align 1, !tbaa !83
  %i.cq = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !83
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !83
  %i.ct = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !83
  %i.cw = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !83
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !83
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !83
  %i.dc = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !83
  %i.df = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !83
  %i.di = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !83
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !83
  %.not.i33.7 = icmp eq ptr %i.di, %i.br
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1229

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  %.3 = phi ptr [ %.4, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 2 uses
  %.0 = phi ptr [ %.1, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 7 uses
  %i.dm = load i8, ptr %.0, align 1, !tbaa !83
  %i.dn = zext i8 %i.dm to i32                    ; 2 uses
  %i.do = lshr i32 %i.dn, 3                       ; 2 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @.str.133, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !83
  %i.ds = sext i8 %i.dr to i64                    ; 6 uses
  %i.dt = getelementptr inbounds i8, ptr %.0, i64 %i.ds
  %.not.i.i34 = lshr i32 -2130771968, %i.do
  %i.du = and i32 %.not.i.i34, 1
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !55
  %i.dz = and i32 %i.dy, %i.dn
  %i.ea = shl nuw nsw i32 %i.dz, 18
  %i.eb = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !83  ; 2 uses
  %i.ed = and i8 %i.ec, 63
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 12
  %i.eg = or disjoint i32 %i.ef, %i.ea
  %i.eh = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !83  ; 2 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 6
  %i.em = or disjoint i32 %i.el, %i.eg
  %i.en = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !83  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.em, %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.ds
  %i.et = load i32, ptr %i.es, align 4, !tbaa !55
  %i.eu = lshr i32 %i.er, %i.et                   ; 4 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.ds
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !55
  %i.ex = icmp ult i32 %i.eu, %i.ew
  %i.ey = select i1 %i.ex, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.eu, 2147481600
  %i.ez = icmp eq i32 %.mask.i.i35, 55296
  %i.fa = select i1 %i.ez, i32 128, i32 0
  %i.fb = icmp samesign ugt i32 %i.eu, 1114111
  %i.fc = select i1 %i.fb, i32 256, i32 0
  %i.fd = lshr i8 %i.ec, 2
  %i.fe = and i8 %i.fd, 48
  %i.ff = lshr i8 %i.ei, 4
  %i.fg = and i8 %i.ff, 12
  %i.fh = lshr i8 %i.eo, 6
  %i.fi = or disjoint i8 %i.fg, %i.fe
  %i.fj = or disjoint i8 %i.fi, %i.fh
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = or disjoint i32 %i.ey, %i.fk
  %i.fm = or disjoint i32 %i.fl, %i.fc
  %i.fn = or disjoint i32 %i.fm, %i.fa
  %i.fo = xor i32 %i.fn, 42
  %i.fp = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.ds
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !55
  %i.fr = lshr i32 %i.fo, %i.fq
  %.not.i36 = icmp eq i32 %i.fr, 0                ; 3 uses
  %i.fs = select i1 %.not.i36, i32 %i.eu, i32 -1
  %i.ft = add nsw i64 %i.dv, %i.ds
  %i.fu = select i1 %.not.i36, i64 %i.ft, i64 1
  %i.fv = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.fs, ptr %.3, i64 %i.fu) ; 3 uses
  %i.fw = select i1 %.not.i36, ptr %i.dw, ptr %i.eb ; 2 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %.0 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %.4.idx = select i1 %i.fv, i64 %i.fz, i64 0
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %.4.idx
  %.1 = select i1 %i.fv, ptr %i.fw, ptr %.0       ; 2 uses
  %i.ga = icmp ult ptr %.1, %i.dl
  %or.cond = select i1 %i.fv, i1 %i.ga, i1 false
  br i1 %or.cond, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.e, !llvm.loop !1230

bb.e:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !422
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !401    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.100, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !83
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !330
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !324
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 8 uses
  %i.ac = load i8, ptr %4, align 8, !tbaa !519, !range !102, !noundef !103
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !520
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !132
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !134
  %i.ah = tail call { ptr, i64 } @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_(ptr %.sroa.09.0, i64 %i.af, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !445 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !520 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !330
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bz, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %i.ak, %.lr.ph34.i.i.i ], [ %i.ca, %._crit_edge.i.i.i ] ; 9 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !324
  %i.au = sub i64 %i.at, %i.as
  %i.av = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.aw = sub i64 %i.aq, %i.av                    ; 4 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !322
  %i.az = add i64 %i.aw, %i.as
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.az), !inline_history !1232
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !330 ; 2 uses
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !324
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.aw, %bb.g ] ; 13 uses
  %i.be = load ptr, ptr %.sroa.09.0, align 8, !tbaa !323 ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.026.i.i.i, %i.bf
  %i.bi = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <16 x i8>, ptr %i.bk, align 1, !tbaa !83
  %wide.load36 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <16 x i8> %wide.load, ptr %i.bm, align 1, !tbaa !83
  store <16 x i8> %wide.load36, ptr %i.bn, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bq, align 1, !tbaa !83
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1234

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !83
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i.prol
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !83
  %i.bv = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1235

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bv, %.lr.ph.i.i.i.prol ]
  %i.bw = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !330
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.by = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.bz = add i64 %i.by, %.025.i.i.i              ; 2 uses
  store i64 %i.bz, ptr %i.ao, align 8, !tbaa !330
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.an
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !83
  %i.ce = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !83
  %i.ci = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !83
  %i.cm = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !83
  %i.cq = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cq, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1236

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cr = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.06.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cr, %bb.j ], [ %.sroa.06.0.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02455, align 1, !tbaa !83
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.133, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !83
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02455, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !55
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !83    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !83  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !83  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !55
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !55
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !55
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bq
  store ptr %.02455, ptr %2, align 8, !tbaa !132
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !132
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !55
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !1237

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.cb = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !83
  %wide.load109 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !83
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !83
  store <16 x i8> %wide.load109, ptr %i.cd, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !521

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.bw, -8                   ; 4 uses
  %i.cf = getelementptr i8, ptr %i.b, i64 %n.vec111
  %i.cg = getelementptr i8, ptr %.2, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
  %next.gep113 = getelementptr i8, ptr %i.b, i64 %index112
  %next.gep114 = getelementptr i8, ptr %.2, i64 %index112
  %wide.load115 = load <8 x i8>, ptr %next.gep114, align 1, !tbaa !83
  store <8 x i8> %wide.load115, ptr %next.gep113, align 1, !tbaa !83
  %index.next116 = add nuw i64 %index112, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1239

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.bw, %n.vec111
  br i1 %cmp.n117, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ] ; 3 uses
  %i.ci = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph136 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.cj = sub i64 %i.ci, %.057.i.ph136
  %xtraiter = and i64 %i.cj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cm, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cl = load i8, ptr %.057.i.prol, align 1, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cl, ptr %.08.i.prol, align 1, !tbaa !83
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1240

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %i.cn = sub i64 %.057.i.ph136, %i.ci
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cq = load i8, ptr %.057.i, align 1, !tbaa !83
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cq, ptr %.08.i, align 1, !tbaa !83
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !83
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !83
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !83
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !83
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.df = load i8, ptr %i.db, align 1, !tbaa !83
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.di = load i8, ptr %i.de, align 1, !tbaa !83
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !83
  %i.dk = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !83
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !83
  %.not.i33.7 = icmp eq ptr %i.dk, %i.bt
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1241

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.ga, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 6 uses
  %i.do = load i8, ptr %.0, align 1, !tbaa !83
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %i.dq = lshr i32 %i.dp, 3                       ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @.str.133, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !83
  %i.du = sext i8 %i.dt to i64                    ; 6 uses
  %i.dv = getelementptr inbounds i8, ptr %.0, i64 %i.du
  %.not.i.i34 = lshr i32 -2130771968, %i.dq
  %i.dw = and i32 %.not.i.i34, 1
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx
  %i.dz = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.du
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !55
  %i.eb = and i32 %i.ea, %i.dp
  %i.ec = shl nuw nsw i32 %i.eb, 18
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !83  ; 2 uses
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 12
  %i.ei = or disjoint i32 %i.eh, %i.ec
  %i.ej = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !83  ; 2 uses
  %i.el = and i8 %i.ek, 63
  %i.em = zext nneg i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 6
  %i.eo = or disjoint i32 %i.en, %i.ei
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !83  ; 2 uses
  %i.er = and i8 %i.eq, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = or disjoint i32 %i.eo, %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.du
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !55
  %i.ew = lshr i32 %i.et, %i.ev                   ; 4 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.du
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !55
  %i.ez = icmp ult i32 %i.ew, %i.ey
  %i.fa = select i1 %i.ez, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ew, 2147481600
  %i.fb = icmp eq i32 %.mask.i.i35, 55296
  %i.fc = select i1 %i.fb, i32 128, i32 0
  %i.fd = icmp samesign ugt i32 %i.ew, 1114111
  %i.fe = select i1 %i.fd, i32 256, i32 0
  %i.ff = lshr i8 %i.ee, 2
  %i.fg = and i8 %i.ff, 48
  %i.fh = lshr i8 %i.ek, 4
  %i.fi = and i8 %i.fh, 12
  %i.fj = lshr i8 %i.eq, 6
  %i.fk = or disjoint i8 %i.fi, %i.fg
  %i.fl = or disjoint i8 %i.fk, %i.fj
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fa, %i.fm
  %i.fo = or disjoint i32 %i.fn, %i.fe
  %i.fp = or disjoint i32 %i.fo, %i.fc
  %i.fq = xor i32 %i.fp, 42
  %i.fr = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.du
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !55
  %i.ft = lshr i32 %i.fq, %i.fs
  %.not.i36 = icmp eq i32 %i.ft, 0                ; 3 uses
  %i.fu = select i1 %.not.i36, i32 %i.ew, i32 -1  ; 4 uses
  %i.fv = icmp ult i32 %i.fu, 32
  br i1 %i.fv, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

switch.early.test.i.i.i37:                        ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  switch i32 %i.fu, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41 [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41:    ; preds = %switch.early.test.i.i.i37
  %i.fw = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.fu)
  br i1 %i.fw, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.fx = add nsw i64 %i.dx, %i.du
  %i.fy = select i1 %.not.i36, i64 %i.fx, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fy
  store ptr %.3, ptr %2, align 8, !tbaa !132
  store ptr %i.fz, ptr %.sroa.4.0..sroa_idx.i.i39, align 8, !tbaa !132
end_hunk_11
begin_hunk_12_@_ZNK3fmt3v1223basic_ostream_formatterIcE6formatIN11OpenImageIO4v3_18TypeDescENS0_7contextEEEDTcldtfp0_3outEERKT_RT0_:bb.a
  %i.am = load i64, ptr %i.c, align 8, !tbaa !330 ; 2 uses
  %i.an = load i32, ptr %0, align 8, !tbaa !401
  %i.ao = and i32 %i.an, 960
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !329
  %i.ap = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.al, i64 %i.am, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.aq = load i32, ptr %3, align 4, !tbaa !401
  %i.ar = lshr i32 %i.aq, 6
  %i.as = and i32 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc18 unwind label %bb.k

.noexc18:                                         ; preds = %bb.h
  %i.av = load i32, ptr %3, align 4, !tbaa !401
  %i.aw = lshr i32 %i.av, 8
  %i.ax = and i32 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc19 unwind label %bb.k

.noexc19:                                         ; preds = %.noexc18
  %.sroa.0.0.copyload.i17.i = load ptr, ptr %2, align 8, !tbaa !329
  %i.ba = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i17.i, ptr %i.al, i64 %i.am, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %.noexc20 unwind label %bb.k

.noexc20:                                         ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %.noexc20, %bb.g
  %.sroa.015.0.i = phi ptr [ %i.ba, %.noexc20 ], [ %i.ap, %bb.g ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !89
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  %i.bb = load ptr, ptr %4, align 8, !tbaa !323   ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.bb, %i.d
  br i1 %.not.i.i21, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit
  call void @free(ptr noundef %i.bb) #3
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %_ZNK3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  ret ptr %.sroa.015.0.i

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_8TypeDescE.exit, %bb.f, %bb.e, %bb.d, %bb.c, %_ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %.noexc19, %.noexc18, %bb.h, %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.bc, %bb.j ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  br label %.body

.body:                                            ; preds = %bb.b, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.o, %bb.b ]
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !89
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  %i.be = load ptr, ptr %4, align 8, !tbaa !323   ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.be, %i.d
  br i1 %.not.i.i22, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit23, label %bb.m

bb.m:                                             ; preds = %.body
  call void @free(ptr noundef %i.be) #3
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit23

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit23: ; preds = %.body, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #3
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt15basic_streambufIcSt11char_traitsIcEE5imbueERKSt6locale(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6setbufEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i32 noundef, i32 noundef) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64, i64, i32 noundef) unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE4syncEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef i64 @_ZNSt15basic_streambufIcSt11char_traitsIcEE9showmanycEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5 align 2

declare noundef i64 @_ZNSt15basic_streambufIcSt11char_traitsIcEE6xsgetnEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE9underflowEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE9pbackfailEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE6xsputnEPKcl(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !529, !nonnull !103, !align !436 ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  %.not31.i = icmp eq i64 %2, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !330
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.h = phi i64 [ %.pre.i, %.lr.ph34.i ], [ %i.ao, %._crit_edge.i ] ; 3 uses
  %.02732.i = phi ptr [ %1, %.lr.ph34.i ], [ %i.ap, %._crit_edge.i ] ; 9 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !324
  %i.j = sub i64 %i.i, %i.h
  %i.k = ptrtoint ptr %.02732.i to i64            ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 4 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !322
  %i.o = add i64 %i.l, %i.h
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.o), !inline_history !35
  %i.p = load i64, ptr %i.d, align 8, !tbaa !330  ; 2 uses
  %i.q = load i64, ptr %i.e, align 8, !tbaa !324
  %i.r = sub i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026.i = phi i64 [ %i.p, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %.025.i = phi i64 [ %i.s, %bb.c ], [ %i.l, %bb.b ] ; 13 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !323  ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.026.i ; 7 uses
  %.not36.i = icmp eq i64 %.025.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.025.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.w = add i64 %.026.i, %i.u
  %i.x = sub i64 %i.k, %i.w
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i64 %.025.i, 32
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %.025.i, 28
  %n.vec = and i64 %.025.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !83
  %wide.load6 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <16 x i8> %wide.load, ptr %i.ab, align 1, !tbaa !83
  store <16 x i8> %wide.load6, ptr %i.ac, align 1, !tbaa !83
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %.025.i, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next10, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index8
  %wide.load9 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %index8
  store <4 x i8> %wide.load9, ptr %i.af, align 1, !tbaa !83
  %index.next10 = add nuw i64 %index8, 4          ; 2 uses
  %i.ag = icmp eq i64 %index.next10, %n.vec7
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1273

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n11 = icmp eq i64 %.025.i, %n.vec7
  br i1 %cmp.n11, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec7, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.030.i.prol = phi i64 [ %i.ak, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.030.i.prol
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.030.i.prol
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !83
  %i.ak = add nuw i64 %.030.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1274

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.030.i.unr = phi i64 [ %.030.i.ph, %.lr.ph.i.preheader ], [ %i.ak, %.lr.ph.i.prol ]
  %i.al = sub i64 %.030.i.ph, %.025.i
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i = load i64, ptr %i.d, align 8, !tbaa !330
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %i.an = phi i64 [ %.pre37.i, %._crit_edge.loopexit.i ], [ %.026.i, %bb.d ]
  %i.ao = add i64 %i.an, %.025.i                  ; 2 uses
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !330
  %i.ap = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.025.i ; 2 uses
  %.not.i = icmp eq ptr %i.ap, %i.c
  br i1 %.not.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %bb.b, !llvm.loop !19

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.030.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %.030.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !83
  %i.at = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.at
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !83
  %i.ax = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ax
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !83
  %i.bb = add nuw i64 %.030.i, 3                  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !83
  %i.bf = add nuw i64 %.030.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bf, %.025.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1275

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.a
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE8overflowEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !529, !nonnull !103, !align !436 ; 5 uses
  %i.d = trunc i32 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !330  ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !324
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !322
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.g), !inline_history !34
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !330 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.m = phi i64 [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !323
  store i64 %.pre-phi.i, ptr %i.e, align 8, !tbaa !330
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 %i.d, ptr %i.o, align 1, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.a
  ret i32 %1
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #22

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #22

declare noundef ptr @_ZNK11OpenImageIO4v3_18TypeDesc5c_strEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19optparse1INS0_17TextureSystemImplEEEbRT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.138, i64 noundef 0, i64 noundef 1) #3 ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !133
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !131
  %i.j = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.i) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !134
  %i.k = icmp ugt i64 %spec.select.i.i, 15
  br i1 %i.k, label %.noexc10.i, label %._crit_edge.i.i

.noexc10.i:                                       ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !82
  %i.m = load i64, ptr %i.d, align 8, !tbaa !134
  store i64 %i.m, ptr %i.g, align 8, !tbaa !83
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc10.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc10.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.j, align 1, !tbaa !83
  store i8 %i.o, ptr %i.n, align 1, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.j, i64 %spec.select.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.p = load i64, ptr %i.d, align 8, !tbaa !134  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !131
  %i.r = load ptr, ptr %4, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  %i.t = load i64, ptr %i.q, align 8, !tbaa !131  ; 2 uses
  %.not66 = icmp eq i64 %i.t, 0
  br i1 %.not66, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit
  %i.u = load ptr, ptr %4, align 8, !tbaa !82     ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !83
  %i.w = icmp eq i8 %i.v, 32
  br i1 %i.w, label %.lr.ph96, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %.lr.ph, %.lr.ph.preheader
  %.ph = phi i64 [ %i.t, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  br label %.lr.ph69

.lr.ph:                                           ; preds = %.lr.ph96
  %i.x = load ptr, ptr %4, align 8, !tbaa !82     ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !83
  %i.z = icmp eq i8 %i.y, 32
  br i1 %i.z, label %.lr.ph96, label %.lr.ph69.preheader

end_hunk_12
