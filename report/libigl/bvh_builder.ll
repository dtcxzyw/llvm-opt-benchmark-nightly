Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder?download=true
inline.NumInlined: 1431
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_10AABBNode_tISC_Li4EE7Create2ENSH_4Set3EZNS0_18BVHNBuilderVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b:bb.a
bb.ce:                                            ; preds = %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit
  %.sroa.058.1 = phi i64 [ %i.dx, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit ], [ %i.acs, %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #5
  ret i64 %.sroa.058.1
}

; Function Attrs: nounwind
declare void @llvm.x86.sse2.mfence() #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree12rtcore_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #5 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree12rtcore_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6embree12rtcore_errorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #26, !inline_history !189
  br label %_ZN6embree12rtcore_errorD2Ev.exit

_ZN6embree12rtcore_errorD2Ev.exit:                ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #5, !inline_history !189
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6embree12rtcore_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE4findERKNS0_13PrimInfoRangeEm(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinSplit") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 16 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %4 = alloca %"struct.embree::range", align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"struct.embree::sse2::BinInfoT", align 64 ; 5 uses
  %6 = alloca %class.anon.30, align 8             ; 6 uses
  %7 = alloca %class.anon.31, align 8             ; 4 uses
  %8 = alloca [32 x %"struct.embree::vfloat_impl"], align 16 ; 4 uses
  %9 = alloca [32 x %"struct.embree::vuint_impl"], align 16 ; 4 uses
  %10 = alloca [32 x %"struct.embree::vfloat_impl"], align 16 ; 4 uses
  %11 = alloca [32 x %"struct.embree::vuint_impl"], align 16 ; 4 uses
  %12 = alloca %"struct.embree::sse2::BinInfoT", align 64 ; 9 uses
  %13 = alloca %"struct.embree::sse2::BinMapping", align 16 ; 10 uses
  %14 = alloca %"struct.embree::sse2::BinInfoT", align 64 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = load i64, ptr %i.b, align 16             ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp ult i64 %i.f, 3072
  br i1 %i.g, label %.preheader362.preheader, label %.preheader364.preheader, !prof !27

.preheader362.preheader:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5, !noalias !320
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 3072 ; 13 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11, %.preheader362.preheader
  %.0.i35392 = phi i64 [ 0, %.preheader362.preheader ], [ %i.x, %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %.0.i35392 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store <4 x float> splat (float +inf), ptr %i.j, align 64, !noalias !320
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <4 x float> splat (float -inf), ptr %i.k, align 16, !noalias !320
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store <4 x float> splat (float +inf), ptr %i.l, align 32, !noalias !320
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <4 x float> splat (float -inf), ptr %i.m, align 16, !noalias !320
  store <4 x float> splat (float +inf), ptr %i.i, align 64, !noalias !320
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x float> splat (float -inf), ptr %i.n, align 16, !noalias !320
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.0.i35392
  store <2 x i64> zeroinitializer, ptr %i.o, align 32, !noalias !320
  %i.p = or disjoint i64 %.0.i35392, 1            ; 2 uses
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.p ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store <4 x float> splat (float +inf), ptr %i.r, align 32, !noalias !320
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store <4 x float> splat (float -inf), ptr %i.s, align 16, !noalias !320
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store <4 x float> splat (float +inf), ptr %i.t, align 64, !noalias !320
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store <4 x float> splat (float -inf), ptr %i.u, align 16, !noalias !320
  store <4 x float> splat (float +inf), ptr %i.q, align 32, !noalias !320
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x float> splat (float -inf), ptr %i.v, align 16, !noalias !320
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.p
  store <2 x i64> zeroinitializer, ptr %i.w, align 16, !noalias !320
  %i.x = add nuw nsw i64 %.0.i35392, 2            ; 2 uses
  %exitcond434.not.1 = icmp eq i64 %i.x, 32
  br i1 %exitcond434.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11, !llvm.loop !6

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11
  %i.y = uitofp nneg i64 %i.f to float
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 5.000000e-02, float 4.000000e+00)
  %i.aa = fptoui float %i.z to i64                ; 2 uses
  %i.ab = tail call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 32) ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load <4 x float>, ptr %i.ad, align 16, !noalias !321
  %i.af = load <4 x float>, ptr %i.ac, align 16, !noalias !321 ; 5 uses
  %i.ag = fsub <4 x float> %i.ae, %i.af
  %i.ah = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float 1.000000e-34), <4 x float> %i.ag) ; 2 uses
  %i.ai = fcmp ugt <4 x float> %i.ah, splat (float 1.000000e-34)
  %i.aj = uitofp nneg i64 %i.ab to float
  %i.ak = fmul nnan float %i.aj, 9.900000e-01
  %i.al = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer
  %i.an = fdiv <4 x float> %i.am, %i.ah
  %i.ao = select <4 x i1> %i.ai, <4 x float> %i.an, <4 x float> zeroinitializer ; 7 uses
  %i.ap = load ptr, ptr %1, align 8, !noalias !320
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.e ; 2 uses
  %i.ar = icmp eq i64 %i.d, %i.e
  br i1 %i.ar, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit, label %.preheader361, !prof !29

.preheader361:                                    ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit
  %i.as = add nsw i64 %i.f, -1                    ; 2 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %._crit_edge395, label %.lr.ph394

.lr.ph394:                                        ; preds = %.preheader361
  %i.at = trunc nuw nsw i64 %i.ab to i32
  %i.au = add nsw i32 %i.at, -1
  %i.av = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph394, %bb.b
  %.0.i38393 = phi i64 [ 0, %.lr.ph394 ], [ %i.el, %bb.b ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.0.i38393 ; 4 uses
  %i.ay = load <4 x float>, ptr %i.ax, align 16, !noalias !322 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load <4 x float>, ptr %i.az, align 16, !noalias !323 ; 4 uses
  %i.bb = fadd <4 x float> %i.ay, %i.ba
  %i.bc = fsub <4 x float> %i.bb, %i.af
  %i.bd = fmul <4 x float> %i.ao, %i.bc
  %i.be = fadd <4 x float> %i.bd, splat (float -5.000000e-01)
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.be)
  %i.bg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aw, <4 x i32> %i.bf)
  %i.bh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bg, <4 x i32> zeroinitializer) ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bj = load <4 x float>, ptr %i.bi, align 16, !noalias !324 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bl = load <4 x float>, ptr %i.bk, align 16, !noalias !325 ; 4 uses
  %i.bm = fadd <4 x float> %i.bj, %i.bl
  %i.bn = fsub <4 x float> %i.bm, %i.af
  %i.bo = fmul <4 x float> %i.ao, %i.bn
  %i.bp = fadd <4 x float> %i.bo, splat (float -5.000000e-01)
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bp)
  %i.br = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aw, <4 x i32> %i.bq)
  %i.bs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.br, <4 x i32> zeroinitializer) ; 3 uses
  %i.bt = extractelement <4 x i32> %i.bh, i64 0
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.bu ; 3 uses
  %i.bw = load <4 x float>, ptr %i.bv, align 32, !noalias !326
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bw, <4 x float> %i.ay)
  store <4 x float> %i.bx, ptr %i.bv, align 32, !noalias !320
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bz = load <4 x float>, ptr %i.by, align 16, !noalias !327
  %i.ca = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bz, <4 x float> %i.ba)
  store <4 x float> %i.ca, ptr %i.by, align 16, !noalias !320
  %.sroa.0214.4.vec.extract = extractelement <4 x i32> %i.bh, i64 1
  %i.cb = zext nneg i32 %.sroa.0214.4.vec.extract to i64 ; 2 uses
  %i.cc = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ce = load <4 x float>, ptr %i.cd, align 32, !noalias !328
  %i.cf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ce, <4 x float> %i.ay)
  store <4 x float> %i.cf, ptr %i.cd, align 32, !noalias !320
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !noalias !329
  %i.ci = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ch, <4 x float> %i.ba)
  store <4 x float> %i.ci, ptr %i.cg, align 16, !noalias !320
  %.sroa.0214.8.vec.extract = extractelement <4 x i32> %i.bh, i64 2
  %i.cj = zext nneg i32 %.sroa.0214.8.vec.extract to i64 ; 2 uses
  %i.ck = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64 ; 2 uses
  %i.cm = load <4 x float>, ptr %i.cl, align 32, !noalias !330
  %i.cn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cm, <4 x float> %i.ay)
  store <4 x float> %i.cn, ptr %i.cl, align 32, !noalias !320
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 80 ; 2 uses
  %i.cp = load <4 x float>, ptr %i.co, align 16, !noalias !331
  %i.cq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cp, <4 x float> %i.ba)
  store <4 x float> %i.cq, ptr %i.co, align 16, !noalias !320
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.bu ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 16, !noalias !320
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 16, !noalias !320
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.cb
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !noalias !320
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !noalias !320
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.cj
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !noalias !320
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 8, !noalias !320
  %i.dc = extractelement <4 x i32> %i.bs, i64 0
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.dd ; 3 uses
  %i.df = load <4 x float>, ptr %i.de, align 32, !noalias !332
  %i.dg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.df, <4 x float> %i.bj)
  store <4 x float> %i.dg, ptr %i.de, align 32, !noalias !320
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.di = load <4 x float>, ptr %i.dh, align 16, !noalias !333
  %i.dj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.di, <4 x float> %i.bl)
  store <4 x float> %i.dj, ptr %i.dh, align 16, !noalias !320
  %.sroa.0202.4.vec.extract = extractelement <4 x i32> %i.bs, i64 1
  %i.dk = zext nneg i32 %.sroa.0202.4.vec.extract to i64 ; 2 uses
  %i.dl = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %i.dn = load <4 x float>, ptr %i.dm, align 32, !noalias !334
  %i.do = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dn, <4 x float> %i.bj)
  store <4 x float> %i.do, ptr %i.dm, align 32, !noalias !320
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 2 uses
  %i.dq = load <4 x float>, ptr %i.dp, align 16, !noalias !335
  %i.dr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dq, <4 x float> %i.bl)
  store <4 x float> %i.dr, ptr %i.dp, align 16, !noalias !320
  %.sroa.0202.8.vec.extract = extractelement <4 x i32> %i.bs, i64 2
  %i.ds = zext nneg i32 %.sroa.0202.8.vec.extract to i64 ; 2 uses
  %i.dt = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64 ; 2 uses
  %i.dv = load <4 x float>, ptr %i.du, align 32, !noalias !336
  %i.dw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dv, <4 x float> %i.bj)
  store <4 x float> %i.dw, ptr %i.du, align 32, !noalias !320
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 80 ; 2 uses
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !noalias !337
  %i.dz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dy, <4 x float> %i.bl)
  store <4 x float> %i.dz, ptr %i.dx, align 16, !noalias !320
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.dd ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 16, !noalias !320
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 16, !noalias !320
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.dk
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !noalias !320
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !noalias !320
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ds
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !noalias !320
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 8, !noalias !320
  %i.el = add nuw nsw i64 %.0.i38393, 2           ; 3 uses
  %i.em = icmp samesign ult i64 %i.el, %i.as
  br i1 %i.em, label %bb.b, label %._crit_edge395, !llvm.loop !7

._crit_edge395:                                   ; preds = %bb.b, %.preheader361
  %.0.i38.lcssa = phi i64 [ 0, %.preheader361 ], [ %i.el, %bb.b ] ; 2 uses
  %i.en = icmp samesign ult i64 %.0.i38.lcssa, %i.f
  br i1 %i.en, label %bb.c, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit

bb.c:                                             ; preds = %._crit_edge395
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.0.i38.lcssa ; 2 uses
  %i.ep = load <4 x float>, ptr %i.eo, align 16, !noalias !338 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.er = load <4 x float>, ptr %i.eq, align 16, !noalias !339 ; 4 uses
  %i.es = fadd <4 x float> %i.ep, %i.er
  %i.et = fsub <4 x float> %i.es, %i.af
  %i.eu = fmul <4 x float> %i.ao, %i.et
  %i.ev = fadd <4 x float> %i.eu, splat (float -5.000000e-01)
  %i.ew = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ev)
  %i.ex = trunc nuw nsw i64 %i.ab to i32
  %i.ey = add nsw i32 %i.ex, -1
  %i.ez = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %15 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fa = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %15, <4 x i32> %i.ew)
  %i.fb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fa, <4 x i32> zeroinitializer) ; 3 uses
  %i.fc = extractelement <4 x i32> %i.fb, i64 0
  %i.fd = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 16, !noalias !320
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 16, !noalias !320
  %i.fh = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.fd ; 3 uses
  %i.fi = load <4 x float>, ptr %i.fh, align 32, !noalias !340
  %i.fj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fi, <4 x float> %i.ep)
  store <4 x float> %i.fj, ptr %i.fh, align 32, !noalias !320
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fl = load <4 x float>, ptr %i.fk, align 16, !noalias !341
  %i.fm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fl, <4 x float> %i.er)
  store <4 x float> %i.fm, ptr %i.fk, align 16, !noalias !320
  %.sroa.0191.4.vec.extract = extractelement <4 x i32> %i.fb, i64 1
  %i.fn = zext nneg i32 %.sroa.0191.4.vec.extract to i64 ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !noalias !320
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !noalias !320
  %i.fs = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.fn ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 2 uses
  %i.fu = load <4 x float>, ptr %i.ft, align 32, !noalias !342
  %i.fv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fu, <4 x float> %i.ep)
  store <4 x float> %i.fv, ptr %i.ft, align 32, !noalias !320
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 48 ; 2 uses
  %i.fx = load <4 x float>, ptr %i.fw, align 16, !noalias !343
  %i.fy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fx, <4 x float> %i.er)
  store <4 x float> %i.fy, ptr %i.fw, align 16, !noalias !320
  %.sroa.0191.8.vec.extract = extractelement <4 x i32> %i.fb, i64 2
  %i.fz = zext nneg i32 %.sroa.0191.8.vec.extract to i64 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !noalias !320
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 8, !noalias !320
  %i.ge = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.fz ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64 ; 2 uses
  %i.gg = load <4 x float>, ptr %i.gf, align 32, !noalias !344
  %i.gh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gg, <4 x float> %i.ep)
  store <4 x float> %i.gh, ptr %i.gf, align 32, !noalias !320
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 80 ; 2 uses
  %i.gj = load <4 x float>, ptr %i.gi, align 16, !noalias !345
  %i.gk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gj, <4 x float> %i.er)
  store <4 x float> %i.gk, ptr %i.gi, align 16, !noalias !320
  br label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, %._crit_edge395, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5, !noalias !346
  %.047.i22397 = add nsw i64 %i.ab, -1            ; 2 uses
  %.not.i23398 = icmp eq i64 %.047.i22397, 0
  br i1 %.not.i23398, label %._crit_edge407, label %.lr.ph406

._crit_edge407:                                   ; preds = %.lr.ph406, %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit
  %i.gl = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i24 = shl nsw i32 -1, %i.gl
  %i.gm = xor i32 %notmask.i24, -1
  %i.gn = insertelement <4 x i32> poison, i32 %i.gm, i64 0
  %i.go = shufflevector <4 x i32> %i.gn, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gp = icmp ugt i64 %i.aa, 1
  br i1 %i.gp, label %.lr.ph421, label %.preheader

.lr.ph406:                                        ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit, %.lr.ph406
  %.047.i22405 = phi i64 [ %.047.i22, %.lr.ph406 ], [ %.047.i22397, %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit ] ; 5 uses
  %i.gq = phi <4 x i32> [ %i.gt, %.lr.ph406 ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit ]
  %.sroa.10176.0404 = phi <4 x float> [ %i.ha, %.lr.ph406 ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit ]
  %.sroa.0172.0403 = phi <4 x float> [ %i.gx, %.lr.ph406 ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit ]
  %.sroa.10168.0402 = phi <4 x float> [ %i.hi, %.lr.ph406 ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit ]
  %.sroa.0164.0401 = phi <4 x float> [ %i.hf, %.lr.ph406 ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit ]
  %.sroa.10160.0400 = phi <4 x float> [ %i.hp, %.lr.ph406 ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit ]
  %.sroa.0156.0399 = phi <4 x float> [ %i.hm, %.lr.ph406 ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit ]
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.047.i22405
  %i.gs = load <4 x i32>, ptr %i.gr, align 16, !noalias !347
  %i.gt = add <4 x i32> %i.gs, %i.gq              ; 2 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.047.i22405
  store <4 x i32> %i.gt, ptr %i.gu, align 16, !noalias !346
  %i.gv = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %.047.i22405 ; 6 uses
  %i.gw = load <4 x float>, ptr %i.gv, align 32, !noalias !348
  %i.gx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0172.0403, <4 x float> %i.gw) ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gz = load <4 x float>, ptr %i.gy, align 16, !noalias !349
  %i.ha = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10176.0404, <4 x float> %i.gz) ; 2 uses
  %i.hb = fsub <4 x float> %i.ha, %i.gx           ; 3 uses
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.047.i22405
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.he = load <4 x float>, ptr %i.hd, align 32, !noalias !350
  %i.hf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0164.0401, <4 x float> %i.he) ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.hh = load <4 x float>, ptr %i.hg, align 16, !noalias !351
  %i.hi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10168.0402, <4 x float> %i.hh) ; 2 uses
  %i.hj = fsub <4 x float> %i.hi, %i.hf           ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  %i.hl = load <4 x float>, ptr %i.hk, align 32, !noalias !352
  %i.hm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0156.0399, <4 x float> %i.hl) ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gv, i64 80
  %i.ho = load <4 x float>, ptr %i.hn, align 16, !noalias !353
  %i.hp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10160.0400, <4 x float> %i.ho) ; 2 uses
  %i.hq = fsub <4 x float> %i.hp, %i.hm           ; 5 uses
  %i.hr = shufflevector <4 x float> %i.hb, <4 x float> %i.hj, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.hs = insertelement <4 x float> %i.hr, float -0.000000e+00, i64 3
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hu = shufflevector <4 x float> %i.hb, <4 x float> %i.hj, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.hv = insertelement <4 x float> %i.hu, float -0.000000e+00, i64 3
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.hx = fadd <4 x float> %i.ht, %i.hw
  %i.hy = insertelement <4 x float> %i.hr, float 0.000000e+00, i64 3
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ia = insertelement <4 x float> %i.hu, float 1.000000e+00, i64 3
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ic = fmul <4 x float> %i.hz, %i.ib
  %i.id = shufflevector <4 x float> %i.hb, <4 x float> %i.hj, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ie = insertelement <4 x float> %i.id, float 0.000000e+00, i64 3
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ig = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.if, <4 x float> %i.hx, <4 x float> %i.ic)
  store <4 x float> %i.ig, ptr %i.hc, align 16, !noalias !346
  %.047.i22 = add i64 %.047.i22405, -1            ; 2 uses
  %.not.i23 = icmp eq i64 %.047.i22, 0
  br i1 %.not.i23, label %._crit_edge407, label %.lr.ph406, !llvm.loop !264

.preheader:                                       ; preds = %.lr.ph421, %._crit_edge407
  %.v359411.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge407 ], [ %.v359, %.lr.ph421 ] ; 3 uses
  %.lcssa409 = phi <4 x i32> [ zeroinitializer, %._crit_edge407 ], [ %i.kn, %.lr.ph421 ] ; 3 uses
  %.sroa.4.32.vec.extract = extractelement <4 x float> %i.ao, i64 0
  %i.ih = fcmp oeq float %.sroa.4.32.vec.extract, 0.000000e+00
  br i1 %i.ih, label %bb.g, label %bb.d, !prof !29

.lr.ph421:                                        ; preds = %._crit_edge407, %.lr.ph421
  %.048.i25419 = phi i64 [ %i.ko, %.lr.ph421 ], [ 1, %._crit_edge407 ] ; 4 uses
  %i.ii = phi <4 x i32> [ %i.kn, %.lr.ph421 ], [ zeroinitializer, %._crit_edge407 ]
  %.sroa.0125.0.load151418 = phi <4 x float> [ %.v359, %.lr.ph421 ], [ splat (float +inf), %._crit_edge407 ] ; 2 uses
  %i.ij = phi <4 x i32> [ %i.io, %.lr.ph421 ], [ zeroinitializer, %._crit_edge407 ]
  %.sroa.10176.1417 = phi <4 x float> [ %i.iu, %.lr.ph421 ], [ splat (float -inf), %._crit_edge407 ]
  %.sroa.0172.1416 = phi <4 x float> [ %i.ir, %.lr.ph421 ], [ splat (float +inf), %._crit_edge407 ]
  %.sroa.10168.1415 = phi <4 x float> [ %i.jb, %.lr.ph421 ], [ splat (float -inf), %._crit_edge407 ]
  %.sroa.0164.1414 = phi <4 x float> [ %i.iy, %.lr.ph421 ], [ splat (float +inf), %._crit_edge407 ]
  %.sroa.10160.1413 = phi <4 x float> [ %i.ji, %.lr.ph421 ], [ splat (float -inf), %._crit_edge407 ]
  %.sroa.0156.1412 = phi <4 x float> [ %i.jf, %.lr.ph421 ], [ splat (float +inf), %._crit_edge407 ]
  %i.ik = phi <4 x i32> [ %i.kp, %.lr.ph421 ], [ splat (i32 1), %._crit_edge407 ] ; 2 uses
  %i.il = add nsw i64 %.048.i25419, -1            ; 2 uses
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.il
  %i.in = load <4 x i32>, ptr %i.im, align 16, !noalias !354
  %i.io = add <4 x i32> %i.in, %i.ij              ; 2 uses
  %i.ip = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.il ; 6 uses
  %i.iq = load <4 x float>, ptr %i.ip, align 32, !noalias !355
  %i.ir = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0172.1416, <4 x float> %i.iq) ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.it = load <4 x float>, ptr %i.is, align 16, !noalias !356
  %i.iu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10176.1417, <4 x float> %i.it) ; 2 uses
  %i.iv = fsub <4 x float> %i.iu, %i.ir           ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ix = load <4 x float>, ptr %i.iw, align 32, !noalias !357
  %i.iy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0164.1414, <4 x float> %i.ix) ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  %i.ja = load <4 x float>, ptr %i.iz, align 16, !noalias !358
  %i.jb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10168.1415, <4 x float> %i.ja) ; 2 uses
  %i.jc = fsub <4 x float> %i.jb, %i.iy           ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  %i.je = load <4 x float>, ptr %i.jd, align 32, !noalias !359
  %i.jf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0156.1412, <4 x float> %i.je) ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  %i.jh = load <4 x float>, ptr %i.jg, align 16, !noalias !360
  %i.ji = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10160.1413, <4 x float> %i.jh) ; 2 uses
  %i.jj = fsub <4 x float> %i.ji, %i.jf           ; 3 uses
  %i.jk = shufflevector <4 x float> %i.iv, <4 x float> %i.jj, <4 x i32> <i32 1, i32 poison, i32 6, i32 5>
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> %i.jc, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.jm = shufflevector <4 x float> %i.iv, <4 x float> %i.jj, <4 x i32> <i32 2, i32 poison, i32 5, i32 6>
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> %i.jc, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.jo = fadd <4 x float> %i.jl, %i.jn
  %i.jp = fmul <4 x float> %i.jl, %i.jn
  %i.jq = shufflevector <4 x float> %i.iv, <4 x float> %i.jj, <4 x i32> <i32 0, i32 poison, i32 4, i32 4>
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> %i.jc, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.js = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jr, <4 x float> %i.jo, <4 x float> %i.jp)
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.048.i25419
  %i.ju = load <4 x float>, ptr %i.jt, align 16, !noalias !346
  %i.jv = add <4 x i32> %i.io, %i.go
  %i.jw = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.jv, i32 %i.gl) ; 2 uses
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.048.i25419
  %i.jy = load <4 x i32>, ptr %i.jx, align 16, !noalias !361
  %i.jz = add <4 x i32> %i.jy, %i.go
  %i.ka = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.jz, i32 %i.gl) ; 2 uses
  %isneg462 = icmp slt <4 x i32> %i.jw, zeroinitializer
  %i.kb = and <4 x i32> %i.jw, splat (i32 2147483647)
  %i.kc = uitofp nneg <4 x i32> %i.kb to <4 x float>
  %i.kd = select <4 x i1> %isneg462, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.ke = fadd nnan <4 x float> %i.kd, %i.kc
  %isneg463 = icmp slt <4 x i32> %i.ka, zeroinitializer
  %i.kf = and <4 x i32> %i.ka, splat (i32 2147483647)
  %i.kg = uitofp nneg <4 x i32> %i.kf to <4 x float>
  %i.kh = select <4 x i1> %isneg463, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.ki = fadd nnan <4 x float> %i.kh, %i.kg
  %i.kj = fmul <4 x float> %i.ju, %i.ki
  %i.kk = fmul <4 x float> %i.js, %i.ke
  %i.kl = fadd <4 x float> %i.kk, %i.kj           ; 2 uses
  %i.km = fcmp uge <4 x float> %i.kl, %.sroa.0125.0.load151418 ; 2 uses
  %i.kn = select <4 x i1> %i.km, <4 x i32> %i.ii, <4 x i32> %i.ik ; 2 uses
  %.v359 = select <4 x i1> %i.km, <4 x float> %.sroa.0125.0.load151418, <4 x float> %i.kl ; 2 uses
  %i.ko = add nuw nsw i64 %.048.i25419, 1         ; 2 uses
  %i.kp = add <4 x i32> %i.ik, splat (i32 1)
end_hunk_0
begin_hunk_1_@_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEaSEOS6_:bb.a
  %i.ae = load <2 x i64>, ptr %i.ad, align 16
  store <2 x i64> %i.ae, ptr %i.ac, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 3136
  %i.ah = load <2 x i64>, ptr %i.ag, align 64
  store <2 x i64> %i.ah, ptr %i.af, align 64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3152
  %i.ak = load <2 x i64>, ptr %i.aj, align 16
  store <2 x i64> %i.ak, ptr %i.ai, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 3168
  %i.an = load <2 x i64>, ptr %i.am, align 32
  store <2 x i64> %i.an, ptr %i.al, align 32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.aq = load <2 x i64>, ptr %i.ap, align 16
  store <2 x i64> %i.aq, ptr %i.ao, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 3200
  %i.at = load <2 x i64>, ptr %i.as, align 64
  store <2 x i64> %i.at, ptr %i.ar, align 64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 3216
  %i.aw = load <2 x i64>, ptr %i.av, align 16
  store <2 x i64> %i.aw, ptr %i.au, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %i.az = load <2 x i64>, ptr %i.ay, align 32
  store <2 x i64> %i.az, ptr %i.ax, align 32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 3248
  %i.bc = load <2 x i64>, ptr %i.bb, align 16
  store <2 x i64> %i.bc, ptr %i.ba, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3264
  %i.bf = load <2 x i64>, ptr %i.be, align 64
  store <2 x i64> %i.bf, ptr %i.bd, align 64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 3280
  %i.bi = load <2 x i64>, ptr %i.bh, align 16
  store <2 x i64> %i.bi, ptr %i.bg, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 3296
  %i.bl = load <2 x i64>, ptr %i.bk, align 32
  store <2 x i64> %i.bl, ptr %i.bj, align 32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 3312
  %i.bo = load <2 x i64>, ptr %i.bn, align 16
  store <2 x i64> %i.bo, ptr %i.bm, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3328
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %i.br = load <2 x i64>, ptr %i.bq, align 64
  store <2 x i64> %i.br, ptr %i.bp, align 64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3344
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 3344
  %i.bu = load <2 x i64>, ptr %i.bt, align 16
  store <2 x i64> %i.bu, ptr %i.bs, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %i.bx = load <2 x i64>, ptr %i.bw, align 32
  store <2 x i64> %i.bx, ptr %i.bv, align 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 3376
  %i.ca = load <2 x i64>, ptr %i.bz, align 16
  store <2 x i64> %i.ca, ptr %i.by, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3392
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 3392
  %i.cd = load <2 x i64>, ptr %i.cc, align 64
  store <2 x i64> %i.cd, ptr %i.cb, align 64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 3408
  %i.cg = load <2 x i64>, ptr %i.cf, align 16
  store <2 x i64> %i.cg, ptr %i.ce, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 3424
  %i.cj = load <2 x i64>, ptr %i.ci, align 32
  store <2 x i64> %i.cj, ptr %i.ch, align 32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 3440
  %i.cm = load <2 x i64>, ptr %i.cl, align 16
  store <2 x i64> %i.cm, ptr %i.ck, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 3456
  %i.cp = load <2 x i64>, ptr %i.co, align 64
  store <2 x i64> %i.cp, ptr %i.cn, align 64
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 3472
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 3472
  %i.cs = load <2 x i64>, ptr %i.cr, align 16
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 3488
  %i.cv = load <2 x i64>, ptr %i.cu, align 32
  store <2 x i64> %i.cv, ptr %i.ct, align 32
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 3504
  %i.cy = load <2 x i64>, ptr %i.cx, align 16
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 3520
  %i.db = load <2 x i64>, ptr %i.da, align 64
  store <2 x i64> %i.db, ptr %i.cz, align 64
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 3536
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 3536
  %i.de = load <2 x i64>, ptr %i.dd, align 16
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %i.dh = load <2 x i64>, ptr %i.dg, align 32
  store <2 x i64> %i.dh, ptr %i.df, align 32
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3568
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 3568
  %i.dk = load <2 x i64>, ptr %i.dj, align 16
  store <2 x i64> %i.dk, ptr %i.di, align 16
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree22bin_serial_or_parallelILb1ENS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_ENKUlRKNS_5rangeImEEE_clESL_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT") align 64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #20 comdat align 2 {
.preheader127.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 11 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, %.preheader127.preheader
  %.0.i128 = phi i64 [ 0, %.preheader127.preheader ], [ %i.q, %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 4 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.0.i128 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <4 x float> splat (float -inf), ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x float> splat (float +inf), ptr %i.e, align 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x float> splat (float -inf), ptr %i.f, align 16
  store <4 x float> splat (float +inf), ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0.i128
  store <2 x i64> zeroinitializer, ptr %i.h, align 32
  %i.i = or disjoint i64 %.0.i128, 1              ; 2 uses
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store <4 x float> splat (float +inf), ptr %i.k, align 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store <4 x float> splat (float -inf), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store <4 x float> splat (float +inf), ptr %i.m, align 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store <4 x float> splat (float -inf), ptr %i.n, align 16
  store <4 x float> splat (float +inf), ptr %i.j, align 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x float> splat (float -inf), ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.i
  store <2 x i64> zeroinitializer, ptr %i.p, align 16
  %i.q = add nuw nsw i64 %.0.i128, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.q, 32
  br i1 %exitcond.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !6

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.r = load ptr, ptr %1, align 8, !nonnull !21, !align !22
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i64, ptr %2, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.w, %i.t                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !21, !align !32 ; 6 uses
  %i.aa = icmp eq i64 %i.w, %i.t
  br i1 %i.aa, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit, label %.preheader, !prof !29

.preheader:                                       ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit
  %i.ab = add i64 %i.x, -1                        ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load <4 x float>, ptr %i.ac, align 16, !noalias !471 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.af = load <4 x float>, ptr %i.ae, align 16, !noalias !472 ; 2 uses
  %i.ag = load i64, ptr %i.z, align 16, !noalias !473
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add i32 %i.ah, -1
  %i.aj = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.ak = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %.0.i3129 = phi i64 [ 0, %.lr.ph ], [ %i.dz, %bb.a ] ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.0.i3129 ; 4 uses
  %i.am = load <4 x float>, ptr %i.al, align 16, !noalias !474 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load <4 x float>, ptr %i.an, align 16, !noalias !475 ; 4 uses
  %i.ap = fadd <4 x float> %i.am, %i.ao
  %i.aq = fsub <4 x float> %i.ap, %i.ad
  %i.ar = fmul <4 x float> %i.aq, %i.af
  %i.as = fadd <4 x float> %i.ar, splat (float -5.000000e-01)
  %i.at = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.as)
  %i.au = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ak, <4 x i32> %i.at)
  %i.av = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.au, <4 x i32> zeroinitializer) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !noalias !476 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.az = load <4 x float>, ptr %i.ay, align 16, !noalias !477 ; 4 uses
  %i.ba = fadd <4 x float> %i.ax, %i.az
  %i.bb = fsub <4 x float> %i.ba, %i.ad
  %i.bc = fmul <4 x float> %i.af, %i.bb
  %i.bd = fadd <4 x float> %i.bc, splat (float -5.000000e-01)
  %i.be = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bd)
  %i.bf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ak, <4 x i32> %i.be)
  %i.bg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bf, <4 x i32> zeroinitializer) ; 3 uses
  %i.bh = extractelement <4 x i32> %i.av, i64 0
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bi ; 3 uses
  %i.bk = load <4 x float>, ptr %i.bj, align 32, !noalias !478
  %i.bl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bk, <4 x float> %i.am)
  store <4 x float> %i.bl, ptr %i.bj, align 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bn = load <4 x float>, ptr %i.bm, align 16, !noalias !479
  %i.bo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bn, <4 x float> %i.ao)
  store <4 x float> %i.bo, ptr %i.bm, align 16
  %.sroa.029.4.vec.extract = extractelement <4 x i32> %i.av, i64 1
  %i.bp = zext nneg i32 %.sroa.029.4.vec.extract to i64 ; 2 uses
  %i.bq = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %i.bs = load <4 x float>, ptr %i.br, align 32, !noalias !480
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.am)
  store <4 x float> %i.bt, ptr %i.br, align 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %i.bv = load <4 x float>, ptr %i.bu, align 16, !noalias !481
  %i.bw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bv, <4 x float> %i.ao)
  store <4 x float> %i.bw, ptr %i.bu, align 16
  %.sroa.029.8.vec.extract = extractelement <4 x i32> %i.av, i64 2
  %i.bx = zext nneg i32 %.sroa.029.8.vec.extract to i64 ; 2 uses
  %i.by = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 2 uses
  %i.ca = load <4 x float>, ptr %i.bz, align 32, !noalias !482
  %i.cb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ca, <4 x float> %i.am)
  store <4 x float> %i.cb, ptr %i.bz, align 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 2 uses
  %i.cd = load <4 x float>, ptr %i.cc, align 16, !noalias !483
  %i.ce = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cd, <4 x float> %i.ao)
  store <4 x float> %i.ce, ptr %i.cc, align 16
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bi ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 16
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 16
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bp
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bx
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 8
  %i.cq = extractelement <4 x i32> %i.bg, i64 0
  %i.cr = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.cr ; 3 uses
  %i.ct = load <4 x float>, ptr %i.cs, align 32, !noalias !484
  %i.cu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ct, <4 x float> %i.ax)
  store <4 x float> %i.cu, ptr %i.cs, align 32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cw = load <4 x float>, ptr %i.cv, align 16, !noalias !485
  %i.cx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cw, <4 x float> %i.az)
  store <4 x float> %i.cx, ptr %i.cv, align 16
  %.sroa.017.4.vec.extract = extractelement <4 x i32> %i.bg, i64 1
  %i.cy = zext nneg i32 %.sroa.017.4.vec.extract to i64 ; 2 uses
  %i.cz = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 2 uses
  %i.db = load <4 x float>, ptr %i.da, align 32, !noalias !486
  %i.dc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.db, <4 x float> %i.ax)
  store <4 x float> %i.dc, ptr %i.da, align 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  %i.de = load <4 x float>, ptr %i.dd, align 16, !noalias !487
  %i.df = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.de, <4 x float> %i.az)
  store <4 x float> %i.df, ptr %i.dd, align 16
  %.sroa.017.8.vec.extract = extractelement <4 x i32> %i.bg, i64 2
  %i.dg = zext nneg i32 %.sroa.017.8.vec.extract to i64 ; 2 uses
  %i.dh = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64 ; 2 uses
  %i.dj = load <4 x float>, ptr %i.di, align 32, !noalias !488
  %i.dk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dj, <4 x float> %i.ax)
  store <4 x float> %i.dk, ptr %i.di, align 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  %i.dm = load <4 x float>, ptr %i.dl, align 16, !noalias !489
  %i.dn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dm, <4 x float> %i.az)
  store <4 x float> %i.dn, ptr %i.dl, align 16
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.cr ; 2 uses
  %i.dp = load i32, ptr %i.do, align 16
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 16
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.cy
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.dg
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 8
  %i.dz = add nuw i64 %.0.i3129, 2                ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.ab
  br i1 %i.ea, label %bb.a, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.a, %.preheader
  %.0.i3.lcssa = phi i64 [ 0, %.preheader ], [ %i.dz, %bb.a ] ; 2 uses
  %i.eb = icmp ult i64 %.0.i3.lcssa, %i.x
  br i1 %i.eb, label %bb.b, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit

bb.b:                                             ; preds = %._crit_edge
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.0.i3.lcssa ; 2 uses
  %i.ed = load <4 x float>, ptr %i.ec, align 16, !noalias !490 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = load <4 x float>, ptr %i.ee, align 16, !noalias !491 ; 4 uses
  %i.eg = fadd <4 x float> %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !noalias !492
  %i.ej = fsub <4 x float> %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.el = load <4 x float>, ptr %i.ek, align 16, !noalias !493
  %i.em = fmul <4 x float> %i.ej, %i.el
  %i.en = fadd <4 x float> %i.em, splat (float -5.000000e-01)
  %i.eo = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.en)
  %i.ep = load i64, ptr %i.z, align 16, !noalias !494
  %i.eq = trunc i64 %i.ep to i32
  %i.er = add i32 %i.eq, -1
  %i.es = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %3 = shufflevector <4 x i32> %i.es, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.et = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %3, <4 x i32> %i.eo)
  %i.eu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.et, <4 x i32> zeroinitializer) ; 3 uses
  %i.ev = extractelement <4 x i32> %i.eu, i64 0
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 16
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 16
  %i.fa = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.ew ; 3 uses
  %i.fb = load <4 x float>, ptr %i.fa, align 32, !noalias !495
  %i.fc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fb, <4 x float> %i.ed)
  store <4 x float> %i.fc, ptr %i.fa, align 32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fe = load <4 x float>, ptr %i.fd, align 16, !noalias !496
  %i.ff = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fe, <4 x float> %i.ef)
  store <4 x float> %i.ff, ptr %i.fd, align 16
  %.sroa.06.4.vec.extract = extractelement <4 x i32> %i.eu, i64 1
  %i.fg = zext nneg i32 %.sroa.06.4.vec.extract to i64 ; 2 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4
  %i.fl = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.fg ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  %i.fn = load <4 x float>, ptr %i.fm, align 32, !noalias !497
  %i.fo = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fn, <4 x float> %i.ed)
  store <4 x float> %i.fo, ptr %i.fm, align 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 2 uses
  %i.fq = load <4 x float>, ptr %i.fp, align 16, !noalias !498
  %i.fr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fq, <4 x float> %i.ef)
  store <4 x float> %i.fr, ptr %i.fp, align 16
  %.sroa.06.8.vec.extract = extractelement <4 x i32> %i.eu, i64 2
  %i.fs = zext nneg i32 %.sroa.06.8.vec.extract to i64 ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 8
  %i.fx = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.fs ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 2 uses
  %i.fz = load <4 x float>, ptr %i.fy, align 32, !noalias !499
  %i.ga = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fz, <4 x float> %i.ed)
  store <4 x float> %i.ga, ptr %i.fy, align 32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 80 ; 2 uses
  %i.gc = load <4 x float>, ptr %i.gb, align 16, !noalias !500
  %i.gd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gc, <4 x float> %i.ef)
  store <4 x float> %i.gd, ptr %i.gb, align 16
  br label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE3binEPKS2_mRKNS0_10BinMappingILm32EEE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_SR_RKSB_SI_RSE_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT") align 64 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 64 dereferenceable(3584) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.33, align 8             ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %11 = alloca %"struct.embree::StackArray", align 64 ; 9 uses
  %12 = alloca %class.anon.32, align 8            ; 9 uses
  %13 = alloca %"struct.embree::sse2::BinInfoT", align 64 ; 37 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.c, align 8
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.f = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 512) ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 7176
  store i64 %i.f, ptr %i.g, align 8
  %i.h = icmp ult i64 %i.e, 3
  br i1 %i.h, label %_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = mul nuw nsw i64 %i.f, 3584
  %i.j = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.i, i64 noundef 64)
  br label %_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EEC2Em.exit

_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EEC2Em.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi ptr [ %i.j, %bb.b ], [ %11, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 7168 ; 3 uses
  store ptr %storemerge.i, ptr %i.k, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  store ptr %i.b, ptr %12, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %6, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  store ptr %12, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ESA_NS4_10BinMappingILm32EEES6_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNSB_ILb1ESA_SD_S6_EEvSF_SI_mmmSL_EUlRKSA_SS_E_EESE_T_SU_SU_SU_RKSE_SL_RSH_EUlmE_EEvSU_SW_EUlSP_E_EEvSU_SU_SU_SW_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.g

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d
  %i.p = load ptr, ptr %8, align 8                ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.p, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #25
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %10, align 8
  %.not.i18 = icmp eq ptr %i.t, null
  br i1 %.not.i18, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.k

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.r, %bb.g ], [ %i.s, %bb.h ], [ %i.s, %bb.i ]
  %i.u = load ptr, ptr %8, align 8
  %.not.i.i20 = icmp eq ptr %i.u, null
  br i1 %.not.i.i20, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit21

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit21: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit19, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  %i.v = load ptr, ptr %i.k, align 64             ; 2 uses
  %.not.i10 = icmp eq ptr %i.v, %11
  br i1 %.not.i10, label %_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EED2Ev.exit, label %bb.s

bb.k:                                             ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EEC2Em.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.w = phi i64 [ 0, %bb.k ], [ %i.ap, %bb.l ]   ; 3 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %5, i64 %i.w ; 6 uses
  %i.z = load <4 x float>, ptr %i.y, align 32
  store <4 x float> %i.z, ptr %i.x, align 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load <4 x float>, ptr %i.ab, align 16
  store <4 x float> %i.ac, ptr %i.aa, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = load <4 x float>, ptr %i.ae, align 32
  store <4 x float> %i.af, ptr %i.ad, align 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ai = load <4 x float>, ptr %i.ah, align 16
  store <4 x float> %i.ai, ptr %i.ag, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.al = load <4 x float>, ptr %i.ak, align 32
  store <4 x float> %i.al, ptr %i.aj, align 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ao = load <4 x float>, ptr %i.an, align 16
  store <4 x float> %i.ao, ptr %i.am, align 16
end_hunk_1
