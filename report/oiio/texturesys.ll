Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZNK11OpenImageIO4v3_117TextureSystemImpl8getstatsB5cxx11Eib:bb.a
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !645, !noalias !644 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ft, null
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !644 ; 2 uses
  %i.fw = icmp ugt ptr %i.ft, %i.fv
  %.08.i.i.i = select i1 %i.fw, ptr %i.ft, ptr %i.fv ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !646, !noalias !644 ; 2 uses
  %i.fz = ptrtoint ptr %.08.i.i.i to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fy, i64 noundef %i.gb)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bb ; 0 uses

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = load ptr, ptr %0, align 8, !tbaa !82, !alias.scope !644 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.fq
  br i1 %i.gf, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bb
  %i.gg = load i64, ptr %i.fq, align 8, !tbaa !83, !alias.scope !644
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #45
  br label %.body

bb.bc:                                            ; preds = %bb.az
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gi)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bb

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bc, %bb.ba
  %i.gj = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gj, ptr %9, align 8, !tbaa !89
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gl = getelementptr i8, ptr %i.gj, i64 -24
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds i8, ptr %9, i64 %i.gm
  store ptr %i.gk, ptr %i.gn, align 8, !tbaa !89
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.go, align 8, !tbaa !89
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !82 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !83
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #45
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.go, align 8, !tbaa !89
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gv) #3
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gw) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  ret void

.body:                                            ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.aa
  %.pn30.pn = phi { ptr, i32 } [ %i.dd, %bb.aa ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.de, %bb.ab ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.gd, %bb.bb ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_113TextureSystem11reset_statsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheImpl11reset_statsEv(ptr noundef nonnull align 64 dereferenceable(25240) %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_117TextureSystemImpl11reset_statsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheImpl11reset_statsEv(ptr noundef nonnull align 64 dereferenceable(25240) %i.b)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZNK11OpenImageIO4v3_113TextureSystem10imagecacheEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.1") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
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
define hidden noundef { i64, i64 } @_ZN11OpenImageIO4v3_13pvt15wrap_clamp_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
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
define hidden noundef { i64, i64 } @_ZN11OpenImageIO4v3_13pvt18wrap_periodic_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4ES4_.exit:
  %.sroa.0.0.copyload = load <4 x i32>, ptr %0, align 16, !tbaa !83
  %i.a = load <4 x i32>, ptr %1, align 16, !tbaa !83 ; 2 uses
  %i.b = sub <4 x i32> %.sroa.0.0.copyload, %i.a
  %i.c = bitcast <4 x i32> %i.b to <2 x i64>      ; 2 uses
  %.sroa.057.0.vec.extract = extractelement <2 x i64> %i.c, i64 0
  %.sroa.057.8.vec.extract = extractelement <2 x i64> %i.c, i64 1
  %i.d = bitcast i64 %.sroa.057.0.vec.extract to <2 x i32>
  %i.e = bitcast i64 %.sroa.057.8.vec.extract to <2 x i32>
  %3 = load <4 x i32>, ptr %2, align 16, !tbaa !83 ; 2 uses
  %i.f = shufflevector <2 x i32> %i.d, <2 x i32> %i.e, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.0.8.vecblend79 = srem <4 x i32> %i.f, %3 ; 3 uses
  %i.g = add <4 x i32> %3, %.sroa.0.8.vecblend79
  %isneg91 = icmp slt <4 x i32> %.sroa.0.8.vecblend79, zeroinitializer
  %i.h = select <4 x i1> %isneg91, <4 x i32> %i.g, <4 x i32> zeroinitializer
  %.inner89 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.0.8.vecblend79, <4 x i32> zeroinitializer)
  %.inner90 = or <4 x i32> %.inner89, %i.h
  %i.i = bitcast <4 x i32> %.inner90 to <2 x i64> ; 2 uses
  %.sroa.055.0.vec.extract = extractelement <2 x i64> %i.i, i64 0
  %.sroa.055.8.vec.extract = extractelement <2 x i64> %i.i, i64 1
  %i.j = bitcast i64 %.sroa.055.0.vec.extract to <2 x i32>
  %i.k = bitcast i64 %.sroa.055.8.vec.extract to <2 x i32>
  %.sroa.0.8.vecblend82 = shufflevector <2 x i32> %i.j, <2 x i32> %i.k, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.l = add <4 x i32> %.sroa.0.8.vecblend82, %i.a
  %i.m = bitcast <4 x i32> %i.l to <2 x i64>      ; 2 uses
  %.sroa.051.0.vec.extract = extractelement <2 x i64> %i.m, i64 0
  %.sroa.051.8.vec.extract = extractelement <2 x i64> %i.m, i64 1
  %i.n = bitcast i64 %.sroa.051.0.vec.extract to <2 x i32>
  %i.o = bitcast i64 %.sroa.051.8.vec.extract to <2 x i32>
  %.sroa.0.8.vecblend85 = shufflevector <2 x i32> %i.n, <2 x i32> %i.o, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %.sroa.0.8.vecblend85, ptr %0, align 16, !tbaa !83
  ret { i64, i64 } { i64 -1, i64 -1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef { i64, i64 } @_ZN11OpenImageIO4v3_13pvt23wrap_periodic_pow2_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
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
define hidden noundef { i64, i64 } @_ZN11OpenImageIO4v3_13pvt16wrap_mirror_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
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
  %.inner183 = select <4 x i1> %i.ap, <4 x i32> %.sroa.0.8.vecblend173, <4 x i32> %i.am
  %i.aq = bitcast <4 x i32> %.inner183 to <2 x i64> ; 2 uses
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
define hidden noundef { i64, i64 } @_ZN11OpenImageIO4v3_13pvt31wrap_periodic_sharedborder_simdERNS0_4simd5vint4ERKS3_S6_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2) #17 {
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
end_hunk_0
