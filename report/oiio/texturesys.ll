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
