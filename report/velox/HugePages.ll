Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/HugePages?download=true
inline.NumInlined: 6024
inline.NumDeleted: 2067
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 28
begin_hunk_0_@"_ZZNK5folly3gen7GenImplINS_5RangeIPKcEENS0_6detail16StringResplitter9GeneratorINS6_3MapINS0_4CastIS5_EEE9GeneratorINS2_IPKhEENS6_10FileReaderEOS5_EEEEE7foreachIZNKSD_IS5_SK_SI_E7foreachIZNS_12_GLOBAL__N_117readHugePageSizesEvE3$_0EEvOT_EUlS5_E_EEvSS_ENKUlS5_E_clES5_":bb.a
          to label %_ZN5boost10filesystem12current_pathEv.exit.i.i unwind label %bb.bc

_ZN5boost10filesystem12current_pathEv.exit.i.i:   ; preds = %_ZN5folly14checkUnixErrorIJRA32_KcEEEvlDpOT_.exit.i.i
  invoke void @_ZN5boost10filesystem6detail9canonicalERKNS0_4pathES4_PNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef null)
          to label %_ZN5boost10filesystem9canonicalERKNS0_4pathES3_.exit.i.i unwind label %bb.bd

_ZN5boost10filesystem9canonicalERKNS0_4pathES3_.exit.i.i: ; preds = %_ZN5boost10filesystem12current_pathEv.exit.i.i
  %i.hc = load ptr, ptr %i.fz, align 8, !tbaa !100 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i.i, i64 24 ; 4 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  %i.hf = load ptr, ptr %11, align 8, !tbaa !100  ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg                ; 2 uses
  br i1 %i.he, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5boost10filesystem9canonicalERKNS0_4pathES3_.exit.i.i
  br i1 %i.hh, label %bb.au, label %.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZN5boost10filesystem9canonicalERKNS0_4pathES3_.exit.i.i
  br i1 %i.hh, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !102 ; 3 uses
  %i.hk = icmp ult i64 %i.hj, 16
  call void @llvm.assume(i1 %i.hk)
  %.not21.i.i.i.i = icmp eq ptr %11, %i.fz
  br i1 %.not21.i.i.i.i, label %_ZN5boost10filesystem4pathaSEOS1_.exit.i.i, label %bb.av, !prof !97

bb.av:                                            ; preds = %bb.au
  switch i64 %i.hj, label %bb.ax [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av
  %i.hl = load i8, ptr %i.hf, align 1, !tbaa !101
  store i8 %i.hl, ptr %i.hc, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hc, ptr align 1 %i.hf, i64 %i.hj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.ax, %bb.aw, %bb.av
  %i.hm = load i64, ptr %i.hi, align 8, !tbaa !102 ; 2 uses
  store i64 %i.hm, ptr %i.ga, align 8, !tbaa !102
  %i.hn = load ptr, ptr %i.fz, align 8, !tbaa !100
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hm
  store i8 0, ptr %i.ho, align 1, !tbaa !101
  %.pre.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !100
  br label %_ZN5boost10filesystem4pathaSEOS1_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  store ptr %i.hf, ptr %i.fz, align 8, !tbaa !100
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !102
  store i64 %i.hq, ptr %i.ga, align 8, !tbaa !102
  %i.hr = load i64, ptr %i.hg, align 8, !tbaa !101
  store i64 %i.hr, ptr %i.hd, align 8, !tbaa !101
  br label %bb.az

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.hs = load i64, ptr %i.hd, align 8, !tbaa !101
  store ptr %i.hf, ptr %i.fz, align 8, !tbaa !100
  %i.ht = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !102
  store i64 %i.hu, ptr %i.ga, align 8, !tbaa !102
  %i.hv = load i64, ptr %i.hg, align 8, !tbaa !101
  store i64 %i.hv, ptr %i.hd, align 8, !tbaa !101
  %.not.i.i46.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i46.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i
  store ptr %i.hc, ptr %11, align 8, !tbaa !100
  store i64 %i.hs, ptr %i.hg, align 8, !tbaa !101
  br label %_ZN5boost10filesystem4pathaSEOS1_.exit.i.i

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i, %.thread.i.i.i.i
  store ptr %i.hg, ptr %11, align 8, !tbaa !100
  br label %_ZN5boost10filesystem4pathaSEOS1_.exit.i.i

_ZN5boost10filesystem4pathaSEOS1_.exit.i.i:       ; preds = %bb.az, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i, %bb.au
  %i.hw = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ], [ %i.hc, %bb.ay ], [ %i.hg, %bb.az ], [ %i.hf, %bb.au ]
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.hx, align 8, !tbaa !102
  store i8 0, ptr %i.hw, align 1, !tbaa !101
  %i.hy = load ptr, ptr %11, align 8, !tbaa !100  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZN5boost10filesystem4pathD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5boost10filesystem4pathaSEOS1_.exit.i.i
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !101
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit.i.i

_ZN5boost10filesystem4pathD2Ev.exit.i.i:          ; preds = %_ZN5boost10filesystem4pathaSEOS1_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.id = load ptr, ptr %12, align 8, !tbaa !100  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZN5boost10filesystem4pathD2Ev.exit49.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.i.i: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit.i.i
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !101
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit49.i.i

_ZN5boost10filesystem4pathD2Ev.exit49.i.i:        ; preds = %_ZN5boost10filesystem4pathD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.ii = load i64, ptr %10, align 8, !tbaa !2795
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i.i, i64 40
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !142
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN5boost10filesystem4pathD2Ev.exit49.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.ik = load ptr, ptr %9, align 8, !tbaa !100   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.gj
  br i1 %i.il, label %_ZN5boost10filesystem4pathD2Ev.exit52.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50.i.i: ; preds = %bb.ba
  %i.im = load i64, ptr %i.gj, align 8, !tbaa !101
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit52.i.i

_ZN5boost10filesystem4pathD2Ev.exit52.i.i:        ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %"_ZZNK5folly3gen6detail3MapINS0_4CastINS_5RangeIPKcEEEEE9GeneratorIS7_NS1_16StringResplitter9GeneratorINSA_INS4_IPKhEENS1_10FileReaderEOS7_EEEESH_E7foreachIZNS_12_GLOBAL__N_117readHugePageSizesEvE3$_0EEvOT_ENKUlS7_E_clES7_.exit"

bb.bb:                                            ; preds = %.thread.i.i
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bc:                                            ; preds = %_ZN5folly14checkUnixErrorIJRA32_KcEEEvlDpOT_.exit.i.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost10filesystem4pathD2Ev.exit55.i.i

bb.bd:                                            ; preds = %_ZN5boost10filesystem12current_pathEv.exit.i.i
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %12, align 8, !tbaa !100  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZN5boost10filesystem4pathD2Ev.exit55.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i.i: ; preds = %bb.bd
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !101
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit55.i.i

_ZN5boost10filesystem4pathD2Ev.exit55.i.i:        ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i.i, %bb.bc
  %.pn.i.i = phi { ptr, i32 } [ %i.ip, %bb.bc ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i.i ], [ %i.iq, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.be

bb.be:                                            ; preds = %_ZN5boost10filesystem4pathD2Ev.exit55.i.i, %bb.bb
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_ZN5boost10filesystem4pathD2Ev.exit55.i.i ], [ %i.io, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.iw = load ptr, ptr %9, align 8, !tbaa !100   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.gj
  br i1 %i.ix, label %_ZN5boost10filesystem4pathD2Ev.exit58.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i.i: ; preds = %bb.be
  %i.iy = load i64, ptr %i.gj, align 8, !tbaa !101
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit58.i.i

_ZN5boost10filesystem4pathD2Ev.exit58.i.i:        ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %common.resume.i.i

"_ZZNK5folly3gen6detail3MapINS0_4CastINS_5RangeIPKcEEEEE9GeneratorIS7_NS1_16StringResplitter9GeneratorINSA_INS4_IPKhEENS1_10FileReaderEOS7_EEEESH_E7foreachIZNS_12_GLOBAL__N_117readHugePageSizesEvE3$_0EEvOT_ENKUlS7_E_clES7_.exit": ; preds = %bb.e, %_ZN5follyneINS_5RangeIPKcEEA10_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit.i.i, %bb.an, %_ZN5boost10filesystem4pathD2Ev.exit52.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.bmi.bzhi.32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #21

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE15simdSplitByCharISt6vectorINS_5RangeIPKcEESaISC_EEEEvcSC_RT_(i8 noundef signext %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit_crit_edge, label %bb.b

._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit_crit_edge: ; preds = %bb.a
  %.pre177 = ptrtoint ptr %2 to i64
  br label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, -32                        ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %4 = ptrtoint ptr %2 to i64                     ; 5 uses
  %i.e = and i64 %4, -32                          ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = and i64 %i.b, 31                         ; 2 uses
  %.not.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre177.a = insertelement <32 x i8> poison, i8 %0, i64 0
  %.pre178 = shufflevector <32 x i8> %.pre177.a, <32 x i8> poison, <32 x i32> zeroinitializer
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.h = load <32 x i8>, ptr %i.d, align 32, !tbaa !101
  %i.i = insertelement <32 x i8> poison, i8 %0, i64 0
  %i.j = shufflevector <32 x i8> %i.i, <32 x i8> poison, <32 x i32> zeroinitializer ; 3 uses
  %i.k = icmp eq <32 x i8> %i.h, %i.j
  %i.l = bitcast <32 x i1> %i.k to i32
  %i.m = shl nuw nsw i64 4294967295, %i.g
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.l, %i.n                       ; 2 uses
  %.not.i13139 = icmp eq i32 %i.o, 0
  br i1 %.not.i13139, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !1770
  %.pre172 = load ptr, ptr %i.q, align 8, !tbaa !273
  br label %bb.d

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader: ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit, %bb.c
  %.5.lcssa = phi ptr [ %1, %bb.c ], [ %i.aa, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 2 uses
  %.1149 = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.not.i12.not150 = icmp eq ptr %.1149, %i.f
  br i1 %.not.i12.not150, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit, label %.lr.ph153

.lr.ph153:                                        ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit
  %i.t = phi ptr [ %.pre172, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 5 uses
  %i.u = phi ptr [ %.pre, %.lr.ph ], [ %i.be, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 4 uses
  %.0.i142 = phi ptr [ %i.d, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ]
  %.013.i141 = phi i32 [ %i.o, %.lr.ph ], [ %i.x, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 2 uses
  %.5140 = phi ptr [ %1, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 5 uses
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i141, i1 true) ; 2 uses
  %i.w = lshr exact i32 %.013.i141, %i.v
  %i.x = lshr i32 %i.w, 1                         ; 2 uses
  %i.y = zext nneg i32 %i.v to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i142, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %.5140 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %.not.i18 = icmp eq ptr %i.u, %i.t
  br i1 %.not.i18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.5140, ptr %i.u, align 8, !tbaa !253
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.5140, i64 %i.ad
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !1770
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %3, align 8, !tbaa !272   ; 5 uses
  %i.ai = ptrtoint ptr %i.t to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775792
  br i1 %i.al, label %bb.g, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #35
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i: ; preds = %bb.f
  %i.am = ashr exact i64 %i.ak, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 576460752303423487)
  %i.aq = select i1 %i.ao, i64 576460752303423487, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #37 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 2 uses
  store ptr %.5140, ptr %i.at, align 8, !tbaa !253
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.5140, i64 %i.ad
  store ptr %i.av, ptr %i.au, align 8, !tbaa !254
  %.not10.i.i.i.i.i = icmp eq ptr %i.ah, %i.t
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.as, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !2811, !alias.scope !2812
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2799

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.as, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !273
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.bb) #39
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i
  store ptr %i.as, ptr %3, align 8, !tbaa !272
  store ptr %i.ay, ptr %i.p, align 8, !tbaa !1770
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !273
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.bd = phi ptr [ %i.t, %bb.e ], [ %i.bc, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.be = phi ptr [ %i.ag, %bb.e ], [ %i.ay, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %.not.i13 = icmp eq i32 %i.x, 0
  br i1 %.not.i13, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader, label %bb.d, !llvm.loop !2800

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit: ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32, %bb.i
  %.7.lcssa = phi ptr [ %.3151, %bb.i ], [ %i.bp, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.1152, i64 32 ; 3 uses
  %.not.i12.not = icmp eq ptr %.1, %i.f
  br i1 %.not.i12.not, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit, label %bb.i, !llvm.loop !2801

bb.i:                                             ; preds = %.lr.ph153, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit
  %.1152 = phi ptr [ %.1149, %.lr.ph153 ], [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit ] ; 3 uses
  %.3151 = phi ptr [ %.5.lcssa, %.lr.ph153 ], [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit ] ; 2 uses
  %i.bf = load <32 x i8>, ptr %.1152, align 1, !tbaa !101
  %i.bg = icmp eq <32 x i8> %i.bf, %i.j
  %i.bh = bitcast <32 x i1> %i.bg to i32          ; 2 uses
  %.not.i.i143 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i143, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit, label %.lr.ph147.preheader

.lr.ph147.preheader:                              ; preds = %bb.i
  %.pre173 = load ptr, ptr %i.r, align 8, !tbaa !1770
  %.pre174 = load ptr, ptr %i.s, align 8, !tbaa !273
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32
  %i.bi = phi ptr [ %i.cs, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %.pre174, %.lr.ph147.preheader ] ; 5 uses
  %i.bj = phi ptr [ %i.ct, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %.pre173, %.lr.ph147.preheader ] ; 4 uses
  %.0.i.i146 = phi ptr [ %i.bp, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %.1152, %.lr.ph147.preheader ]
  %.013.i.i145 = phi i32 [ %i.bm, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %i.bh, %.lr.ph147.preheader ] ; 2 uses
  %.7144 = phi ptr [ %i.bp, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %.3151, %.lr.ph147.preheader ] ; 5 uses
  %i.bk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i.i145, i1 true) ; 2 uses
  %i.bl = lshr exact i32 %.013.i.i145, %i.bk
  %i.bm = lshr i32 %i.bl, 1                       ; 2 uses
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i146, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %.7144 to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph147
  store ptr %.7144, ptr %i.bj, align 8, !tbaa !253
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.7144, i64 %i.bs
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !254
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.r, align 8, !tbaa !1770
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32

bb.k:                                             ; preds = %.lr.ph147
  %i.bw = load ptr, ptr %3, align 8, !tbaa !272   ; 5 uses
  %i.bx = ptrtoint ptr %i.bi to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775792
  br i1 %i.ca, label %bb.l, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #35
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20: ; preds = %bb.k
  %i.cb = ashr exact i64 %i.bz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i21 = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i21, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 576460752303423487)
  %i.cf = select i1 %i.cd, i64 576460752303423487, i64 %i.ce ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i22)
  %i.cg = shl nuw nsw i64 %i.cf, 4
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #37 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz ; 2 uses
  store ptr %.7144, ptr %i.ci, align 8, !tbaa !253
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.7144, i64 %i.bs
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !254
  %.not10.i.i.i.i.i23 = icmp eq ptr %i.bw, %i.bi
  br i1 %.not10.i.i.i.i.i23, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28, label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20, %.lr.ph.i.i.i.i.i24
  %.012.i.i.i.i.i25 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i24 ], [ %i.ch, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20 ] ; 2 uses
  %.0911.i.i.i.i.i26 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i24 ], [ %i.bw, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i26, i64 16, i1 false), !tbaa.struct !2811, !alias.scope !2813
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i26, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i25, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i27, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28, label %.lr.ph.i.i.i.i.i24, !llvm.loop !2799

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28: ; preds = %.lr.ph.i.i.i.i.i24, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20
  %.0.lcssa.i.i.i.i.i29 = phi ptr [ %i.ch, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20 ], [ %i.cm, %.lr.ph.i.i.i.i.i24 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i29, i64 16 ; 2 uses
  %.not.i34.i.i30 = icmp eq ptr %i.bw, null
  br i1 %.not.i34.i.i30, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28
  %i.co = load ptr, ptr %i.s, align 8, !tbaa !273
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cq) #39
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31: ; preds = %bb.m, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28
  store ptr %i.ch, ptr %3, align 8, !tbaa !272
  store ptr %i.cn, ptr %i.r, align 8, !tbaa !1770
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cf ; 2 uses
  store ptr %i.cr, ptr %i.s, align 8, !tbaa !273
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32: ; preds = %bb.j, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31
  %i.cs = phi ptr [ %i.bi, %bb.j ], [ %i.cr, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31 ]
  %i.ct = phi ptr [ %i.bv, %bb.j ], [ %i.cn, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31 ]
  %.not.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit, label %.lr.ph147, !llvm.loop !2800

_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit: ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader
  %.3.lcssa = phi ptr [ %.5.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader ], [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.1149, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader ], [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit ] ; 2 uses
  %i.cu = icmp eq ptr %.1.lcssa, %2
  br i1 %i.cu, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit
  %.pre-phi179 = phi <32 x i8> [ %.pre178, %._crit_edge ], [ %i.j, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ]
  %.0129 = phi ptr [ %1, %._crit_edge ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ] ; 2 uses
  %.0 = phi ptr [ %i.d, %._crit_edge ], [ %.1.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %i.g, %._crit_edge ], [ 0, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %4
  %i.cy = load <32 x i8>, ptr %.0, align 1, !tbaa !101
  %i.cz = icmp eq <32 x i8> %i.cy, %.pre-phi179
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %i.cx to i32 ; 2 uses
  %i.da = bitcast <32 x i1> %i.cz to i32
  %i.db = shl nuw nsw i64 4294967295, %.sroa.02.0.i
  %i.dc = trunc i64 %i.db to i32
  %i.dd = and i32 %i.da, %i.dc
  %i.de = icmp ult i32 %.sroa.2.0.extract.trunc.i.i, 33
  tail call void @llvm.assume(i1 %i.de)
  %i.df = sub nuw nsw i32 32, %.sroa.2.0.extract.trunc.i.i
  %i.dg = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 %i.dd, i32 %i.df) ; 2 uses
  %.not.i16156 = icmp eq i32 %i.dg, 0
  br i1 %.not.i16156, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.pre175 = load ptr, ptr %i.dh, align 8, !tbaa !1770
  %.pre176 = load ptr, ptr %i.di, align 8, !tbaa !273
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph160, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46
  %i.dj = phi ptr [ %.pre176, %.lr.ph160 ], [ %i.et, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 5 uses
  %i.dk = phi ptr [ %.pre175, %.lr.ph160 ], [ %i.eu, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 4 uses
  %.0.i15159 = phi ptr [ %.0, %.lr.ph160 ], [ %i.dq, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ]
  %.013.i14158 = phi i32 [ %i.dg, %.lr.ph160 ], [ %i.dn, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 2 uses
  %.6157 = phi ptr [ %.0129, %.lr.ph160 ], [ %i.dq, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 5 uses
  %i.dl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i14158, i1 true) ; 2 uses
  %i.dm = lshr exact i32 %.013.i14158, %i.dl
  %i.dn = lshr i32 %i.dm, 1                       ; 2 uses
  %i.do = zext nneg i32 %i.dl to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i15159, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 3 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %.6157 to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 2 uses
  %.not.i33 = icmp eq ptr %i.dk, %i.dj
  br i1 %.not.i33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.6157, ptr %i.dk, align 8, !tbaa !253
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.6157, i64 %i.dt
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !254
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  store ptr %i.dw, ptr %i.dh, align 8, !tbaa !1770
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46

bb.q:                                             ; preds = %bb.o
  %i.dx = load ptr, ptr %3, align 8, !tbaa !272   ; 5 uses
  %i.dy = ptrtoint ptr %i.dj to i64
  %i.dz = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775792
  br i1 %i.eb, label %bb.r, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #35
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34: ; preds = %bb.q
  %i.ec = ashr exact i64 %i.ea, 4                 ; 3 uses
  %.sroa.speculated.i.i.i35 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i35, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 576460752303423487)
  %i.eg = select i1 %i.ee, i64 576460752303423487, i64 %i.ef ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.eg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i36)
  %i.eh = shl nuw nsw i64 %i.eg, 4
  %i.ei = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #37 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea ; 2 uses
  store ptr %.6157, ptr %i.ej, align 8, !tbaa !253
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.6157, i64 %i.dt
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !254
  %.not10.i.i.i.i.i37 = icmp eq ptr %i.dx, %i.dj
  br i1 %.not10.i.i.i.i.i37, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42, label %.lr.ph.i.i.i.i.i38

.lr.ph.i.i.i.i.i38:                               ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34, %.lr.ph.i.i.i.i.i38
  %.012.i.i.i.i.i39 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i38 ], [ %i.ei, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34 ] ; 2 uses
  %.0911.i.i.i.i.i40 = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i38 ], [ %i.dx, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i39, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i40, i64 16, i1 false), !tbaa.struct !2811, !alias.scope !2814
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i40, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i39, i64 16 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.em, %i.dj
  br i1 %.not.i.i.i.i.i41, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42, label %.lr.ph.i.i.i.i.i38, !llvm.loop !2799

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42: ; preds = %.lr.ph.i.i.i.i.i38, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34
  %.0.lcssa.i.i.i.i.i43 = phi ptr [ %i.ei, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34 ], [ %i.en, %.lr.ph.i.i.i.i.i38 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i43, i64 16 ; 2 uses
  %.not.i34.i.i44 = icmp eq ptr %i.dx, null
  br i1 %.not.i34.i.i44, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42
  %i.ep = load ptr, ptr %i.di, align 8, !tbaa !273
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.er) #39
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45: ; preds = %bb.s, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42
  store ptr %i.ei, ptr %3, align 8, !tbaa !272
  store ptr %i.eo, ptr %i.dh, align 8, !tbaa !1770
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.eg ; 2 uses
  store ptr %i.es, ptr %i.di, align 8, !tbaa !273
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46: ; preds = %bb.p, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45
  %i.et = phi ptr [ %i.dj, %bb.p ], [ %i.es, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45 ]
  %i.eu = phi ptr [ %i.dw, %bb.p ], [ %i.eo, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45 ]
  %.not.i16 = icmp eq i32 %i.dn, 0
  br i1 %.not.i16, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit, label %bb.o, !llvm.loop !2800

_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit: ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46, %._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit_crit_edge, %bb.n, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit
  %.pre-phi = phi i64 [ %.pre177, %._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit_crit_edge ], [ %4, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ], [ %4, %bb.n ], [ %4, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ]
  %.2 = phi ptr [ %1, %._ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit_crit_edge ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ], [ %.0129, %bb.n ], [ %i.dq, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 5 uses
  %i.ev = ptrtoint ptr %.2 to i64
  %i.ew = sub i64 %.pre-phi, %i.ev                ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1770 ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !273
  %.not.i47 = icmp eq ptr %i.ey, %i.fa
  br i1 %.not.i47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit
  store ptr %.2, ptr %i.ey, align 8, !tbaa !253
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ew
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !254
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store ptr %i.fd, ptr %i.ex, align 8, !tbaa !1770
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit60

bb.u:                                             ; preds = %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit
  %i.fe = load ptr, ptr %3, align 8, !tbaa !272   ; 5 uses
  %i.ff = ptrtoint ptr %i.ey to i64
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg                    ; 3 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775792
  br i1 %i.fi, label %bb.v, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #35
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48: ; preds = %bb.u
  %i.fj = ashr exact i64 %i.fh, 4                 ; 3 uses
  %.sroa.speculated.i.i.i49 = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i49, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 576460752303423487)
  %i.fn = select i1 %i.fl, i64 576460752303423487, i64 %i.fm ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.fn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i50)
  %i.fo = shl nuw nsw i64 %i.fn, 4
  %i.fp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #37 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fh ; 2 uses
  store ptr %.2, ptr %i.fq, align 8, !tbaa !253
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ew
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !254
  %.not10.i.i.i.i.i51 = icmp eq ptr %i.fe, %i.ey
  br i1 %.not10.i.i.i.i.i51, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48, %.lr.ph.i.i.i.i.i52
  %.012.i.i.i.i.i53 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i52 ], [ %i.fp, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48 ] ; 2 uses
  %.0911.i.i.i.i.i54 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i52 ], [ %i.fe, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i54, i64 16, i1 false), !tbaa.struct !2811, !alias.scope !2815
  %i.ft = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i54, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i53, i64 16 ; 2 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.ft, %i.ey
  br i1 %.not.i.i.i.i.i55, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56, label %.lr.ph.i.i.i.i.i52, !llvm.loop !2799

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56: ; preds = %.lr.ph.i.i.i.i.i52, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48
  %.0.lcssa.i.i.i.i.i57 = phi ptr [ %i.fp, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48 ], [ %i.fu, %.lr.ph.i.i.i.i.i52 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i57, i64 16
  %.not.i34.i.i58 = icmp eq ptr %i.fe, null
  br i1 %.not.i34.i.i58, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i59, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56
  %i.fw = load ptr, ptr %i.ez, align 8, !tbaa !273
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.fx, %i.fg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fy) #39
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i59

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i59: ; preds = %bb.w, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56
  store ptr %i.fp, ptr %3, align 8, !tbaa !272
  store ptr %i.fv, ptr %i.ex, align 8, !tbaa !1770
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.fn
  store ptr %i.fz, ptr %i.ez, align 8, !tbaa !273
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit60

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit60: ; preds = %bb.t, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i59
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRA32_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(32) %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #41
  %i.b = load i32, ptr %i.a, align 4, !tbaa !213
  tail call void @_ZN5folly24throwSystemErrorExplicitEiPKc(i32 noundef %i.b, ptr noundef nonnull %0) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitEiPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #31 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #41
  call void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 %0, ptr nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #23 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 32) #36 ; 2 uses
  tail call void @_ZNSt12system_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0) #36
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12system_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %0, align 8, !tbaa !148
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !2816
  ret void
}

declare void @_ZN5boost10filesystem6detail9canonicalERKNS0_4pathES4_PNS_6system10error_codeE(ptr dead_on_unwind writable sret(%"class.boost::filesystem::path") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #14

declare void @_ZN5boost10filesystem6detail12current_pathEPNS_6system10error_codeE(ptr dead_on_unwind writable sret(%"class.boost::filesystem::path") align 8, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 4 dereferenceable(5), ptr noundef nonnull align 4 dereferenceable(5)) unnamed_addr #13

declare void @_ZN5folly4FileC1EPKcij(ptr noundef nonnull align 4 dereferenceable(5), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly3gen6detail10byLineImplENS_4FileEcb(ptr dead_on_unwind noalias writable sret(%"class.folly::gen::detail::StringResplitter::Generator") align 8 %0, ptr noundef align 4 %1, i8 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::gen::detail::Map<folly::gen::Cast<folly::Range<const char *>>>::Generator.11", align 8 ; 6 uses
  %5 = alloca %"class.folly::File", align 4       ; 6 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %7 = alloca %"class.folly::gen::detail::Map<folly::gen::Cast<folly::Range<const char *>>>::Generator.11", align 8 ; 7 uses
  %8 = alloca %"class.folly::gen::detail::FileReader", align 8 ; 8 uses
  %9 = alloca %"class.folly::File", align 4       ; 4 uses
  %10 = alloca %"class.folly::gen::detail::Map", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 4 dereferenceable(5) %9, ptr noundef nonnull align 4 dereferenceable(5) %1) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 4 dereferenceable(5) %5, ptr noundef nonnull align 4 dereferenceable(5) %9) #36, !noalias !2823
  invoke void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, i64 noundef 4096)
          to label %bb.c unwind label %bb.b, !noalias !2823

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %5) #36, !noalias !2823
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(5) %5) #36
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.c = load i64, ptr %6, align 8, !tbaa !248, !noalias !2823 ; 2 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !248, !alias.scope !2823
  store ptr null, ptr %6, align 8, !tbaa !248, !noalias !2823
  %.cast.i = inttoptr i64 %i.c to ptr             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.cast.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !258
  %i.f = getelementptr inbounds nuw i8, ptr %.cast.i, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !249
  store i64 0, ptr %.cast.i, align 8, !tbaa !250
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  invoke void @_ZN5folly3genorINS_5RangeIPKhEENS0_6detail10FileReaderENS6_3MapINS0_4CastINS2_IPKcEEEEEEEEDTcldtcldtfp0_4selfE7composeclsr3stdE4movecldtfp_4selfEEEEONS0_7GenImplIT_T0_EERKNS0_8OperatorIT1_EE(ptr dead_on_unwind nonnull writable sret(%"class.folly::gen::detail::Map<folly::gen::Cast<folly::Range<const char *>>>::Generator.11") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0.extract.trunc = zext i1 %3 to i8
  call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2824
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(17) %7) #36, !noalias !2826
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !248, !noalias !2826
  store i64 %i.i, ptr %i.g, align 8, !tbaa !248, !noalias !2826
end_hunk_0
