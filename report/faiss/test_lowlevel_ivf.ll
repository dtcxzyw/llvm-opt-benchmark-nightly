Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_lowlevel_ivf?download=true
inline.NumInlined: 1639
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN30TestLowLevelIVF_IVFBinary_Test8TestBodyEv
define dso_local void @_ZN30TestLowLevelIVF_IVFBinary_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::uniform_int_distribution", align 4 ; 7 uses
  %6 = alloca %"class.std::uniform_int_distribution", align 4 ; 7 uses
  %7 = alloca %"class.std::uniform_int_distribution", align 4 ; 7 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = tail call noundef ptr @_ZN5faiss20index_binary_factoryEiPKcb(i32 noundef 256, ptr noundef nonnull @.str.84, i1 noundef zeroext true), !noalias !10 ; 12 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(160000) ptr @_Znwm(i64 noundef 160000) #21
          to label %.noexc.i.i unwind label %bb.d, !noalias !10 ; 6 uses

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(160000) %i.d, i8 0, i64 160000, i1 false), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !13
  store i32 0, ptr %7, align 4, !tbaa !16, !noalias !13
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 2147483647, ptr %i.e, align 4, !tbaa !18, !noalias !13
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i.i, %.noexc.i.i
  %.012.i.i.i = phi i64 [ 0, %.noexc.i.i ], [ %i.i, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i.i ] ; 2 uses
  %i.f = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(5000) @_ZN12_GLOBAL__N_13rngE, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i, !noalias !13

_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i.i: ; preds = %bb.b
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.012.i.i.i
  store i8 %i.g, ptr %i.h, align 1, !tbaa !19, !noalias !13
  %i.i = add nuw nsw i64 %.012.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.i, 160000
  br i1 %exitcond.not.i.i.i, label %bb.c, label %bb.b, !llvm.loop !20

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i:              ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !13
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 160000) #20, !noalias !13
  br label %.body.i.i

bb.c:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !13
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !22, !noalias !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !10
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 5000, ptr noundef nonnull %i.d)
          to label %_ZN12_GLOBAL__N_125make_trained_index_binaryEPKc.exit.i unwind label %.body.thread.i.i, !noalias !10

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.thread.i.i:                                 ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 160000) #20, !noalias !10
  br label %common.resume.sink.split.i

.body.i.i:                                        ; preds = %bb.d, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.j, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %common.resume.i, label %common.resume.sink.split.i

common.resume.sink.split.i:                       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit273.i, %bb.y, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, %.body.i.i, %.body.thread.i.i
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.aa, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIhSaIhEED2Ev.exit273.i ], [ %i.df, %bb.y ], [ %i.o, %.body.thread.i.i ], [ %.pn.i.i, %.body.i.i ]
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19, !inline_history !24
  br label %common.resume.i

common.resume.i:                                  ; preds = %common.resume.sink.split.i, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZN12_GLOBAL__N_125make_trained_index_binaryEPKc.exit.i: ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 160000) #20, !noalias !10
  %i.s = call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN5faiss11IndexBinaryE, ptr nonnull @_ZTIN5faiss14IndexBinaryIVFE, i64 0) #19 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store i64 4, ptr %i.t, align 8, !tbaa !25
  %i.u = invoke noalias noundef nonnull dereferenceable(32000) ptr @_Znwm(i64 noundef 32000) #21
          to label %.noexc.i unwind label %bb.y   ; 8 uses

.noexc.i:                                         ; preds = %_ZN12_GLOBAL__N_125make_trained_index_binaryEPKc.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32000) %i.u, i8 0, i64 32000, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !54
  store i32 0, ptr %6, align 4, !tbaa !16, !noalias !54
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 2147483647, ptr %i.v, align 4, !tbaa !18, !noalias !54
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i, %.noexc.i
  %.012.i.i = phi i64 [ 0, %.noexc.i ], [ %i.z, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i ] ; 2 uses
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(5000) @_ZN12_GLOBAL__N_13rngE, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, !noalias !54

_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i: ; preds = %bb.e
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.012.i.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !19, !noalias !54
  %i.z = add nuw nsw i64 %.012.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, 32000
  br i1 %exitcond.not.i.i, label %bb.f, label %bb.e, !llvm.loop !20

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !54
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32000) #20, !noalias !54
  br label %common.resume.sink.split.i

bb.f:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !54
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 1000, ptr noundef nonnull %i.u)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noalias noundef nonnull dereferenceable(8000) ptr @_Znwm(i64 noundef 8000) #21
          to label %bb.h unwind label %bb.aa      ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8000) %i.ae, i8 0, i64 8000, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57
  invoke void @_ZNK5faiss11IndexBinary6assignElPKhPll(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef 1000, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %bb.i unwind label %bb.ab

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 15 uses
  %i.aj = invoke noalias noundef nonnull dereferenceable(6400) ptr @_Znwm(i64 noundef 6400) #21
          to label %.noexc136.i unwind label %bb.ac ; 8 uses

.noexc136.i:                                      ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6400) %i.aj, i8 0, i64 6400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !59
  store i32 0, ptr %5, align 4, !tbaa !16, !noalias !59
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 2147483647, ptr %i.ak, align 4, !tbaa !18, !noalias !59
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i, %.noexc136.i
  %.012.i132.i = phi i64 [ 0, %.noexc136.i ], [ %i.ao, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i ] ; 2 uses
  %i.al = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(5000) @_ZN12_GLOBAL__N_13rngE, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i133.i, !noalias !59

_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i: ; preds = %bb.j
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.012.i132.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !19, !noalias !59
  %i.ao = add nuw nsw i64 %.012.i132.i, 1         ; 2 uses
  %exitcond.not.i135.i = icmp eq i64 %i.ao, 6400
  br i1 %exitcond.not.i135.i, label %bb.k, label %bb.j, !llvm.loop !20

_ZNSt6vectorIhSaIhEED2Ev.exit.i133.i:             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !59
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 6400) #20, !noalias !59
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit271.i

bb.k:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !59
  %i.aq = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul nsw i64 %i.ar, 200                  ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1152921504606846975
  br i1 %i.at, label %bb.l, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc140.i unwind label %bb.ad

.noexc140.i:                                      ; preds = %bb.l
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.au = mul nsw i64 %i.ar, 1600                 ; 2 uses
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #21
          to label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit142.i unwind label %bb.ad ; 6 uses

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit142.i:          ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.as
  store i64 0, ptr %i.av, align 8, !tbaa !63
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.au, -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %.pre.i = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 2 uses
  %i.az = sext i32 %.pre.i to i64                 ; 2 uses
  %i.ba = mul nsw i64 %i.az, 200                  ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 2305843009213693951
  br i1 %i.bb, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit142.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc146.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i

.noexc146.i:                                      ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit142.i
  %.not.i.i.i.i143.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i.i143.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bc = mul nsw i64 %i.az, 800                  ; 2 uses
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #21
          to label %.noexc147.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i ; 4 uses

.noexc147.i:                                      ; preds = %bb.o
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ba
  store i32 0, ptr %i.bd, align 4, !tbaa !62
  %i.bf = getelementptr i8, ptr %i.bd, i64 4
  %.idx.i.i.i.i.i.i.i144.i = add nsw i64 %i.bc, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bf, i8 0, i64 %.idx.i.i.i.i.i.i.i144.i, i1 false), !tbaa !62
  %i.bg = ptrtoint ptr %i.be to i64
  %.pre603.i = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62
  %i.bh = sext i32 %.pre603.i to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %.noexc147.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.063.0677685.i = phi ptr [ %i.av, %.noexc147.i ], [ %i.av, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  %.sroa.1168.0680684.i = phi i64 [ %i.ay, %.noexc147.i ], [ %i.ay, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.bi = phi i64 [ %i.bh, %.noexc147.i ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.053.0.i = phi ptr [ %i.bd, %.noexc147.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 10 uses
  %.sroa.1360.0.i = phi i64 [ %i.bg, %.noexc147.i ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 200, ptr noundef nonnull %i.aj, i64 noundef %i.bi, ptr noundef %.sroa.053.0.i, ptr noundef %.sroa.063.0677685.i, ptr noundef null)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.bm = load i64, ptr %i.t, align 8, !tbaa !25  ; 3 uses
  %i.bn = trunc i64 %i.bm to i32
  %sext.i = shl i64 %i.bm, 32                     ; 2 uses
  %i.bo = ashr exact i64 %sext.i, 32              ; 5 uses
  %i.bp = mul nsw i64 %i.bo, 200                  ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 1152921504606846975
  br i1 %i.bq, label %bb.q, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc153.i unwind label %bb.af

.noexc153.i:                                      ; preds = %bb.q
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i: ; preds = %bb.p
  %.not.i.i.i.i149.i = icmp eq i64 %sext.i, 0
  br i1 %.not.i.i.i.i149.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i
  %i.br = mul nsw i64 %i.bo, 1600                 ; 2 uses
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #21
          to label %bb.s unwind label %bb.af      ; 5 uses

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bp ; 2 uses
  store i64 0, ptr %i.bs, align 8, !tbaa !63
  %i.bu = getelementptr i8, ptr %i.bs, i64 8
  %.idx.i.i.i.i.i.i.i150.i = add nsw i64 %i.br, -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i8 0, i64 %.idx.i.i.i.i.i.i.i150.i, i1 false), !tbaa !63
  %i.bv = mul nsw i64 %i.bo, 800                  ; 2 uses
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #21
          to label %.noexc162.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit261.thread.i ; 4 uses

.noexc162.i:                                      ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bp
  store i32 0, ptr %i.bw, align 4, !tbaa !62
  %i.by = getelementptr i8, ptr %i.bw, i64 4
  %.idx.i.i.i.i.i.i.i158.i = add nsw i64 %i.bv, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.by, i8 0, i64 %.idx.i.i.i.i.i.i.i158.i, i1 false), !tbaa !62
  %i.bz = ptrtoint ptr %i.bx to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i:          ; preds = %.noexc162.i, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i
  %.sroa.1150.0102.i = phi ptr [ %i.bt, %.noexc162.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i ] ; 2 uses
  %.sroa.045.099.i = phi ptr [ %i.bs, %.noexc162.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i ] ; 7 uses
  %.sroa.038.0.i = phi ptr [ %i.bw, %.noexc162.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i ] ; 8 uses
  %.sroa.11.0.i = phi i64 [ %i.bz, %.noexc162.i ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i ] ; 2 uses
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !57 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 noundef 200, ptr noundef nonnull %i.aj, i64 noundef %i.bo, ptr noundef %.sroa.038.0.i, ptr noundef %.sroa.045.099.i, ptr noundef null)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 160
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(248) %i.s, i1 noundef zeroext false)
          to label %.preheader117.i unwind label %bb.ah ; 13 uses

.preheader117.i:                                  ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.cj = icmp sgt i32 %i.bn, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %wide.trip.count.i = and i64 %i.bm, 2147483647
  br label %bb.ai

_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit206.i
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #19, !inline_history !64
  %.not.i.i.i.i = icmp eq ptr %.sroa.038.0.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit.i
  %i.cw = ptrtoint ptr %.sroa.038.0.i to i64
  %i.cx = sub i64 %.sroa.11.0.i, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.0.i, i64 noundef %i.cx) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.u, %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit.i
  %.not.i.i.i164.i = icmp eq ptr %.sroa.045.099.i, null
  br i1 %.not.i.i.i164.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.cy = ptrtoint ptr %.sroa.1150.0102.i to i64
  %i.cz = ptrtoint ptr %.sroa.045.099.i to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.099.i, i64 noundef %i.da) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.v, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %.not.i.i.i165.i = icmp eq ptr %.sroa.053.0.i, null
  br i1 %.not.i.i.i165.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit166.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.db = ptrtoint ptr %.sroa.053.0.i to i64
  %i.dc = sub i64 %.sroa.1360.0.i, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.i, i64 noundef %i.dc) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166.i

_ZNSt6vectorIiSaIiEED2Ev.exit166.i:               ; preds = %bb.w, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %.not.i.i.i167.i = icmp eq ptr %.sroa.063.0677685.i, null
  br i1 %.not.i.i.i167.i, label %_ZN12_GLOBAL__N_127test_lowlevel_access_binaryEPKc.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit166.i
  %i.dd = ptrtoint ptr %.sroa.063.0677685.i to i64
  %i.de = sub i64 %.sroa.1168.0680684.i, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0677685.i, i64 noundef %i.de) #20
  br label %_ZN12_GLOBAL__N_127test_lowlevel_access_binaryEPKc.exit

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_125make_trained_index_binaryEPKc.exit.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

bb.z:                                             ; preds = %bb.f
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit273.i

bb.aa:                                            ; preds = %bb.g
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit273.i

bb.ab:                                            ; preds = %bb.h
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit271.i

bb.ac:                                            ; preds = %bb.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit271.i

bb.ad:                                            ; preds = %bb.m, %bb.l
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit269.i

_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i:        ; preds = %bb.o, %bb.n
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit263.i

bb.af:                                            ; preds = %bb.r, %bb.q
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit263.i

_ZNSt6vectorIiSaIiEED2Ev.exit261.thread.i:        ; preds = %bb.s
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit259.i

bb.ah:                                            ; preds = %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit259.i

bb.ai:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit206.i, %.preheader117.i
  %.055360.i = phi i64 [ 0, %.preheader117.i ], [ %i.mh, %_ZNSt6vectorIlSaIlEED2Ev.exit206.i ] ; 6 uses
  %i.dr = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 3 uses
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = icmp slt i32 %i.dr, 0
  br i1 %i.dt, label %bb.aj, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i175.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc178.i unwind label %.loopexit.split-lp.i

.noexc178.i:                                      ; preds = %bb.aj
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i175.i: ; preds = %bb.ai
  %.not.i.i.i.i176.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i176.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i175.i
  %i.du = shl nuw nsw i64 %i.ds, 3                ; 2 uses
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #21
          to label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit.i unwind label %.loopexit.i ; 6 uses

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit.i:          ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dv, i8 -1, i64 %i.du, i1 false), !tbaa !63
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds
  %.pre604.i = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 3 uses
  %i.dx = ptrtoint ptr %i.dw to i64               ; 4 uses
  %i.dy = zext nneg i32 %.pre604.i to i64         ; 2 uses
  %i.dz = icmp slt i32 %.pre604.i, 0
  br i1 %i.dz, label %bb.al, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i180.i

bb.al:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc187.i unwind label %.loopexit.split-lp119.i

.noexc187.i:                                      ; preds = %bb.al
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i180.i: ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit.i
  %.not.i.i.i.i181.i = icmp eq i32 %.pre604.i, 0
  br i1 %.not.i.i.i.i181.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i180.i
  %i.ea = shl nuw nsw i64 %i.dy, 2                ; 3 uses
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #21
          to label %.noexc188.i unwind label %.loopexit118.i ; 6 uses

.noexc188.i:                                      ; preds = %bb.am
end_hunk_0
begin_hunk_1_@_ZN30TestLowLevelIVF_IVFBinary_Test8TestBodyEv:bb.a
  %i.ku = load ptr, ptr %4, align 8, !tbaa !87, !noalias !84 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.cl
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.bl
  %i.kw = load i64, ptr %i.cl, align 8, !tbaa !19, !noalias !84
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i, %bb.bk
  %.pn.i277.i = phi { ptr, i32 } [ %i.ks, %bb.bk ], [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i ], [ %i.kt, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !84
  %i.ky = load ptr, ptr %3, align 8, !tbaa !87, !noalias !84 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.cm
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i
  %i.la = load i64, ptr %i.cm, align 8, !tbaa !19, !noalias !84
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !84
  br label %.body279.i

.noexc196.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !84
  br label %_ZN7testing8internal8EqHelper7CompareIfiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i

_ZN7testing8internal8EqHelper7CompareIfiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %.noexc196.i, %bb.bh
  %i.lc = load i8, ptr %8, align 8, !tbaa !91, !range !100, !noundef !101
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.bx, label %bb.bo

bb.bm:                                            ; preds = %bb.bf
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bn:                                            ; preds = %bb.bi, %bb.bh
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body279.i

bb.bo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIfiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.lg = load ptr, ptr %i.cn, align 8, !tbaa !102 ; 2 uses
  %.not.i.i197.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i197.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.bq, %bb.bp
  %i.li = phi ptr [ %i.lh, %bb.bq ], [ @.str.29, %bb.bp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 528, ptr noundef %i.li)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.lj = load ptr, ptr %9, align 8, !tbaa !103   ; 3 uses
  %.not.i.i198.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i198.i, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.bs
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(128) %i.lj) #19, !inline_history !105
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bo
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit201.i

bb.bu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.br
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn110.i = phi { ptr, i32 } [ %i.lp, %bb.bv ], [ %i.lo, %bb.bu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.lq = load ptr, ptr %9, align 8, !tbaa !103   ; 3 uses
  %.not.i.i199.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i199.i, label %_ZN7testing7MessageD2Ev.exit201.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i: ; preds = %bb.bw
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !22
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(128) %i.lq) #19, !inline_history !105
  br label %_ZN7testing7MessageD2Ev.exit201.i

_ZN7testing7MessageD2Ev.exit201.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i, %bb.bw, %bb.bt
  %.pn110.pn.i = phi { ptr, i32 } [ %i.ln, %bb.bt ], [ %.pn110.i, %bb.bw ], [ %.pn110.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #19
  br label %.body279.i

bb.bx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit.i, %_ZN7testing8internal8EqHelper7CompareIfiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  %i.lu = load ptr, ptr %i.cn, align 8, !tbaa !102 ; 4 uses
  %.not.i.i202.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i202.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !87 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.by
  %i.ly = load i64, ptr %i.lw, align 8, !tbaa !19
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lz) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef 32) #20
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ma = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv.next.i, %i.mb
  br i1 %i.mc, label %.lr.ph.i, label %.critedge.i, !llvm.loop !106

.body279.i:                                       ; preds = %_ZN7testing7MessageD2Ev.exit201.i, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i
  %.pn110.pn.pn.i = phi { ptr, i32 } [ %.pn110.pn.i, %_ZN7testing7MessageD2Ev.exit201.i ], [ %i.lf, %bb.bn ], [ %.pn.i277.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ca

bb.ca:                                            ; preds = %.body279.i, %bb.bm
  %.pn110.pn.pn.pn.i = phi { ptr, i32 } [ %.pn110.pn.pn.i, %.body279.i ], [ %i.le, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit194.i

.critedge.i:                                      ; preds = %bb.bz, %.lr.ph.i, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i, %bb.as
  %indvars.iv.next592.i = add nuw nsw i64 %indvars.iv591.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next592.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.as, !llvm.loop !107

._crit_edge359.i:                                 ; preds = %bb.ed, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i
  %.not.i.i.i203.i = icmp eq ptr %.sroa.013.0.i, null
  br i1 %.not.i.i.i203.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit204.i, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge359.i
  %i.md = ptrtoint ptr %.sroa.013.0.i to i64
  %i.me = sub i64 %.sroa.15.0.i, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.0.i, i64 noundef %i.me) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit204.i

_ZNSt6vectorIiSaIiEED2Ev.exit204.i:               ; preds = %bb.cb, %._crit_edge359.i
  %.not.i.i.i205.i = icmp eq ptr %.sroa.024.0688708.i, null
  br i1 %.not.i.i.i205.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit206.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit204.i
  %i.mf = ptrtoint ptr %.sroa.024.0688708.i to i64
  %i.mg = sub i64 %.sroa.13.0703707.i, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.0688708.i, i64 noundef %i.mg) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit206.i

_ZNSt6vectorIlSaIlEED2Ev.exit206.i:               ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEED2Ev.exit204.i
  %i.mh = add nuw nsw i64 %.055360.i, 1           ; 2 uses
  %exitcond602.not.i = icmp eq i64 %i.mh, 200
  br i1 %exitcond602.not.i, label %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit.i, label %bb.ai, !llvm.loop !108

bb.cd:                                            ; preds = %bb.ed, %.lr.ph358.i
  %indvars.iv599.i = phi i64 [ 0, %.lr.ph358.i ], [ %indvars.iv.next600.i, %bb.ed ] ; 3 uses
  %i.mi = phi i32 [ %i.ev, %.lr.ph358.i ], [ %i.rb, %bb.ed ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.013.0.i, i64 %indvars.iv599.i ; 5 uses
  %i.mk = sext i32 %i.mi to i64
  %i.ml = mul nsw i64 %i.ho, %i.mk
  %i.mm = getelementptr [4 x i8], ptr %.sroa.053.0.i, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mm, i64 -4     ; 2 uses
  %i.mo = load i32, ptr %i.mj, align 4, !tbaa !62, !noalias !109
  %i.mp = load i32, ptr %i.mn, align 4, !tbaa !62, !noalias !109
  %.not.i207.i = icmp sgt i32 %i.mo, %i.mp
  br i1 %.not.i207.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.mj, ptr noundef nonnull align 4 dereferenceable(4) %i.mn, ptr noundef nonnull @.str.89)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.cg

_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i: ; preds = %bb.cf, %bb.ce
  %i.mq = load i8, ptr %11, align 8, !tbaa !91, !range !100, !noundef !101
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.cq, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit194.thread.i

bb.ch:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ci unwind label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.mt = load ptr, ptr %i.co, align 8, !tbaa !102 ; 2 uses
  %.not.i.i210.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i210.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit211.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit211.i

_ZNK7testing15AssertionResult15failure_messageEv.exit211.i: ; preds = %bb.cj, %bb.ci
  %i.mv = phi ptr [ %i.mu, %bb.cj ], [ @.str.29, %bb.ci ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 541, ptr noundef %i.mv)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit211.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.mw = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i212.i = icmp eq ptr %i.mw, null
  br i1 %.not.i.i212.i, label %_ZN7testing7MessageD2Ev.exit214.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213.i: ; preds = %bb.cl
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !22
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8
  call void %i.mz(ptr noundef nonnull align 8 dereferenceable(128) %i.mw) #19, !inline_history !105
  br label %_ZN7testing7MessageD2Ev.exit214.i

_ZN7testing7MessageD2Ev.exit214.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ch
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit217.i

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit211.i
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn.i = phi { ptr, i32 } [ %i.nc, %bb.co ], [ %i.nb, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.nd = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i215.i = icmp eq ptr %i.nd, null
  br i1 %.not.i.i215.i, label %_ZN7testing7MessageD2Ev.exit217.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216.i: ; preds = %bb.cp
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !22
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(128) %i.nd) #19, !inline_history !105
  br label %_ZN7testing7MessageD2Ev.exit217.i

_ZN7testing7MessageD2Ev.exit217.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216.i, %bb.cp, %bb.cm
  %.pn.pn.i = phi { ptr, i32 } [ %i.na, %bb.cm ], [ %.pn.i, %bb.cp ], [ %.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #19
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit194.thread.i

bb.cq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit214.i, %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i
  %i.nh = load ptr, ptr %i.co, align 8, !tbaa !102 ; 4 uses
  %.not.i.i218.i = icmp eq ptr %i.nh, null
  br i1 %.not.i.i218.i, label %_ZN7testing15AssertionResultD2Ev.exit222.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !87 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i: ; preds = %bb.cr
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !19
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220.i: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit222.i

_ZN7testing15AssertionResultD2Ev.exit222.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220.i, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.nn = load i32, ptr %i.mj, align 4, !tbaa !62
  %i.no = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 5 uses
  %i.np = sext i32 %i.no to i64                   ; 3 uses
  %i.nq = mul nsw i64 %i.ho, %i.np
  %i.nr = getelementptr [4 x i8], ptr %.sroa.053.0.i, i64 %i.nq
  %i.ns = getelementptr i8, ptr %i.nr, i64 -4
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !62
  %i.nu = icmp slt i32 %i.nn, %i.nt
  br i1 %i.nu, label %bb.cs, label %bb.ed

bb.cs:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit222.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.nv = icmp sgt i32 %i.no, 0
  br i1 %i.nv, label %.lr.ph355.i, label %._crit_edge356.i

.lr.ph355.i:                                      ; preds = %bb.cs
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0688708.i, i64 %indvars.iv599.i
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !63
  %i.ny = mul nuw nsw i64 %.055360.i, %i.np
  %i.nz = getelementptr [8 x i8], ptr %.sroa.063.0677685.i, i64 %i.ny
  %wide.trip.count597.i = zext nneg i32 %i.no to i64
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cu, %.lr.ph355.i
  %indvars.iv594.i = phi i64 [ 0, %.lr.ph355.i ], [ %indvars.iv.next595.i, %bb.cu ] ; 3 uses
  %i.oa = getelementptr [8 x i8], ptr %i.nz, i64 %indvars.iv594.i
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !63
  %i.oc = icmp eq i64 %i.nx, %i.ob
  br i1 %i.oc, label %bb.cv, label %bb.cu

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit194.thread.i: ; preds = %_ZN7testing7MessageD2Ev.exit217.i, %bb.cg
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZN7testing7MessageD2Ev.exit217.i ], [ %i.ms, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ee

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next595.i = add nuw nsw i64 %indvars.iv594.i, 1 ; 2 uses
  %exitcond598.not.i = icmp eq i64 %indvars.iv.next595.i, %wide.trip.count597.i
  br i1 %exitcond598.not.i, label %._crit_edge356.i, label %bb.ct, !llvm.loop !112

bb.cv:                                            ; preds = %bb.ct
  %i.od = trunc nuw nsw i64 %indvars.iv594.i to i32
  store i32 %i.od, ptr %i.b, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
          to label %_ZN7testing8internal11CmpHelperLTIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.cw

._crit_edge356.i:                                 ; preds = %bb.cu, %bb.cs
  %storemerge.lcssa.i = phi i32 [ 0, %bb.cs ], [ %i.no, %bb.cu ]
  store i32 %storemerge.lcssa.i, ptr %i.b, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12_GLOBAL__N_11kE, ptr noundef nonnull @.str.18)
          to label %_ZN7testing8internal11CmpHelperLTIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.cw

_ZN7testing8internal11CmpHelperLTIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i: ; preds = %._crit_edge356.i, %bb.cv
  %i.oe = load i8, ptr %14, align 8, !tbaa !91, !range !100, !noundef !101
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %bb.dg, label %bb.cx

bb.cw:                                            ; preds = %._crit_edge356.i, %bb.cv
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cx:                                            ; preds = %_ZN7testing8internal11CmpHelperLTIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.cy unwind label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.oh = load ptr, ptr %i.cp, align 8, !tbaa !102 ; 2 uses
  %.not.i.i225.i = icmp eq ptr %i.oh, null
  br i1 %.not.i.i225.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit226.i, label %bb.cz
end_hunk_1
begin_hunk_2_@_ZN30TestLowLevelIVF_IVFBinary_Test8TestBodyEv:bb.a

bb.eh:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit263.i
  %i.rp = ptrtoint ptr %.sroa.053.0.i to i64
  %i.rq = sub i64 %.sroa.1360.0.i, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.i, i64 noundef %i.rq) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit265.i

_ZNSt6vectorIiSaIiEED2Ev.exit265.i:               ; preds = %bb.eh, %_ZNSt6vectorIlSaIlEED2Ev.exit263.i
  %.not.i.i.i266.i = icmp eq ptr %.sroa.063.0677685.i, null
  br i1 %.not.i.i.i266.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit269.i, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit265.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn722.i = phi { ptr, i32 } [ %i.dl, %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i ]
  %.sroa.063.0675721.i = phi ptr [ %i.av, %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i ], [ %.sroa.063.0677685.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i ] ; 2 uses
  %.sroa.1168.0678720.i = phi i64 [ %i.ay, %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i ], [ %.sroa.1168.0680684.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i ]
  %i.rr = ptrtoint ptr %.sroa.063.0675721.i to i64
  %i.rs = sub i64 %.sroa.1168.0678720.i, %i.rr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0675721.i, i64 noundef %i.rs) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit269.i

_ZNSt6vectorIhSaIhEED2Ev.exit269.i:               ; preds = %bb.ei, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i, %bb.ad
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dk, %bb.ad ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn722.i, %bb.ei ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 6400) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit271.i

_ZNSt6vectorIlSaIlEED2Ev.exit271.i:               ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit269.i, %bb.ac, %bb.ab, %_ZNSt6vectorIhSaIhEED2Ev.exit.i133.i
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.di, %bb.ab ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIhSaIhEED2Ev.exit269.i ], [ %i.dj, %bb.ac ], [ %i.ap, %_ZNSt6vectorIhSaIhEED2Ev.exit.i133.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 8000) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit273.i

_ZNSt6vectorIhSaIhEED2Ev.exit273.i:               ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit271.i, %bb.aa, %bb.z
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dg, %bb.z ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIlSaIlEED2Ev.exit271.i ], [ %i.dh, %bb.aa ]
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32000) #20
  br label %common.resume.sink.split.i

_ZN12_GLOBAL__N_127test_lowlevel_access_binaryEPKc.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit166.i, %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 6400) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 8000) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32000) #20
  %i.rt = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19, !inline_history !122
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN35TestLowLevelIVF_ThreadedSearch_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35TestLowLevelIVF_ThreadedSearch_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::unique_ptr.140", align 8 ; 16 uses
  %4 = alloca %"class.std::unique_ptr.3", align 8 ; 7 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %7 = alloca %"struct.std::pair", align 8        ; 10 uses
  %8 = alloca %"class.std::vector.27", align 8    ; 15 uses
  %9 = alloca %"class.std::vector", align 8       ; 16 uses
  %10 = alloca %"class.std::vector.27", align 8   ; 15 uses
  %11 = alloca %"class.std::vector", align 8      ; 16 uses
  %12 = alloca %"class.std::vector.134", align 8  ; 10 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call fastcc void @_ZN12_GLOBAL__N_118make_trained_indexEPKcN5faiss10MetricTypeE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull @.str.11, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke fastcc void @_ZN12_GLOBAL__N_19make_dataEm(ptr dead_on_unwind noalias writable align 8 %5, i64 noundef 1000)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !123    ; 6 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !124    ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(36) %i.a, i64 noundef 1000, ptr noundef %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit162.i

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit160.i

bb.e:                                             ; preds = %bb.b
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss17IndexPreTransformE, i64 0) #19 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !127
  %.not.i = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !127
  %i.o = invoke noundef ptr @_ZNK5faiss17IndexPreTransform11apply_chainElPKf(ptr noundef nonnull align 8 dereferenceable(73) %i.h, i64 noundef 1000, ptr noundef %i.b)
          to label %bb.g unwind label %.thread46.i ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not73.i = icmp eq ptr %i.o, %i.b
  %spec.select.i = select i1 %.not73.i, ptr null, ptr %i.o
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i

.thread46.i:                                      ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit160.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i: ; preds = %bb.g, %bb.e
  %.sroa.038.0.i = phi ptr [ null, %bb.e ], [ %spec.select.i, %bb.g ] ; 4 uses
  %.049.i = phi i32 [ %i.j, %bb.e ], [ %i.n, %bb.g ] ; 3 uses
  %i.q = invoke noundef ptr @_ZN5faiss6ivflib17extract_index_ivfEPNS_5IndexE(ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.m       ; 5 uses

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke fastcc void @_ZN12_GLOBAL__N_19make_dataEm(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef 200)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.r = load ptr, ptr %6, align 8, !tbaa !124    ; 5 uses
  invoke fastcc void @_ZN12_GLOBAL__N_112search_indexEPN5faiss5IndexEPKf(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull %i.a, ptr noundef %i.r)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = invoke noundef ptr @_ZNK5faiss17IndexPreTransform11apply_chainElPKf(ptr noundef nonnull align 8 dereferenceable(73) %i.h, i64 noundef 200, ptr noundef %i.r)
          to label %bb.l unwind label %.thread.i  ; 3 uses

bb.l:                                             ; preds = %bb.k
  %.not74.i = icmp eq ptr %i.s, %i.r
  %spec.select51.i = select i1 %.not74.i, ptr null, ptr %i.s
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i

bb.m:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.n:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit157.i

bb.o:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.thread.i:                                        ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit155.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i: ; preds = %bb.l, %bb.j
  %.sroa.035.0.i = phi ptr [ null, %bb.j ], [ %spec.select51.i, %bb.l ] ; 4 uses
  %.048.i = phi ptr [ %i.r, %bb.j ], [ %i.s, %bb.l ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.y = load i64, ptr %i.x, align 8, !tbaa !136  ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %sext.i = shl i64 %i.y, 32                      ; 2 uses
  %i.aa = ashr exact i64 %sext.i, 32              ; 4 uses
  %i.ab = mul nsw i64 %i.aa, 200                  ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, 1152921504606846975
  br i1 %i.ac, label %bb.p, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.p:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc.i unwind label %bb.aa

.noexc.i:                                         ; preds = %bb.p
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %sext.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ad = mul nsw i64 %i.aa, 1600                 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
          to label %bb.r unwind label %bb.aa      ; 5 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.ae, ptr %8, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !140
  store i64 0, ptr %i.ae, align 8, !tbaa !63
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.ad, -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ak = mul nsw i64 %i.aa, 800                  ; 3 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
          to label %.noexc100.i unwind label %bb.ab ; 6 uses

.noexc100.i:                                      ; preds = %bb.r
  store ptr %i.al, ptr %9, align 8, !tbaa !124
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ab
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !142
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !78
  %i.ao = getelementptr i8, ptr %i.al, i64 4
  %.idx.i.i.i.i.i.i.i97.i = add nsw i64 %i.ak, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i97.i, i1 false), !tbaa !78
  %i.ap = getelementptr i8, ptr %i.al, i64 %i.ak
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !139
  br label %bb.s

bb.s:                                             ; preds = %.noexc100.i, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i
  %i.aq = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i ], [ %.pre.i, %.noexc100.i ]
  %i.ar = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i ], [ %i.al, %.noexc100.i ]
  %.0.i.i.i.i.i98.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i ], [ %i.ap, %.noexc100.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0.i.i.i.i.i98.i, ptr %i.as, align 8, !tbaa !143
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !144 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.au, i64 noundef 200, ptr noundef %.048.i, i64 noundef %i.aa, ptr noundef %i.ar, ptr noundef %i.aq, ptr noundef null)
          to label %.preheader57.i unwind label %bb.ac

.preheader57.i:                                   ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.ad

bb.t:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit136.i
  %i.bh = load ptr, ptr %9, align 8, !tbaa !124   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !142
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.bn = load ptr, ptr %8, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i101.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i101.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !140
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.v, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.not.i.i = icmp eq ptr %.sroa.035.0.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.035.0.i) #20
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i102.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i102.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !142
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.w, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i
  %i.ca = load ptr, ptr %7, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !140
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #20
  br label %_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i

_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i: ; preds = %bb.x, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.cg = load ptr, ptr %6, align 8, !tbaa !124   ; 3 uses
  %.not.i.i.i103.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i103.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit104.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !142
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit104.i

_ZNSt6vectorIfSaIfEED2Ev.exit104.i:               ; preds = %bb.y, %_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not.i105.i = icmp eq ptr %.sroa.038.0.i, null
  br i1 %.not.i105.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i106.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i106.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit104.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.038.0.i) #20
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i106.i, %_ZNSt6vectorIfSaIfEED2Ev.exit104.i
  %i.cm = load ptr, ptr %5, align 8, !tbaa !124   ; 3 uses
  %.not.i.i.i108.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i108.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit109.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !142
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit109.i

_ZNSt6vectorIfSaIfEED2Ev.exit109.i:               ; preds = %bb.z, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cs = load ptr, ptr %4, align 8, !tbaa !123   ; 3 uses
  %.not.i110.i = icmp eq ptr %i.cs, null
  br i1 %.not.i110.i, label %_ZN12_GLOBAL__N_120test_threaded_searchEPKcN5faiss10MetricTypeE.exit, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit109.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(36) %i.cs) #19, !inline_history !145
  br label %_ZN12_GLOBAL__N_120test_threaded_searchEPKcN5faiss10MetricTypeE.exit

bb.aa:                                            ; preds = %bb.q, %bb.p
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ab:                                            ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit150.i

bb.ac:                                            ; preds = %bb.s
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit136.i, %.preheader57.i
  %.04775.i = phi i64 [ 0, %.preheader57.i ], [ %i.my, %_ZNSt6vectorIlSaIlEED2Ev.exit136.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.cz = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 3 uses
  %i.da = mul nsw i32 %i.cz, 3
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = icmp slt i32 %i.cz, 0
  br i1 %i.dc, label %bb.ae, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i111.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc114.i unwind label %.loopexit.split-lp59.i

.noexc114.i:                                      ; preds = %bb.ae
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i111.i: ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i112.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i112.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i116.thread.i, label %bb.af

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i116.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i111.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i121.i

end_hunk_2
begin_hunk_3_@_ZN35TestLowLevelIVF_ThreadedSearch_Test8TestBodyEv:bb.a
_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i:        ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.kb
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !63
  %i.km = fcmp oeq float %i.ke, %i.kg
  %i.kn = icmp sgt i64 %i.kl, %i.ki
  %i.ko = and i1 %i.km, %i.kn
  br i1 %i.ko, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i, label %bb.bb

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i, %bb.ba, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i
  %i.kp = phi float [ %.pre.i.i.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i ], [ %i.ke, %bb.ba ], [ %i.ke, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i ] ; 3 uses
  %i.kq = fcmp ogt float %i.jw, %i.kp
  br i1 %i.kq, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i:      ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.kb
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !63 ; 2 uses
  %i.kt = fcmp oeq float %i.jw, %i.kp
  %i.ku = icmp sgt i64 %i.jy, %i.ks
  %i.kv = and i1 %i.kt, %i.ku
  br i1 %i.kv, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %bb.bc

bb.bb:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i
  %i.kw = fcmp ogt float %i.jw, %i.kg
  br i1 %i.kw, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i:      ; preds = %bb.bb
  %i.kx = fcmp oeq float %i.jw, %i.kg
  %i.ky = icmp sgt i64 %i.jy, %i.ki
  %i.kz = and i1 %i.kx, %i.ky
  br i1 %i.kz, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i
  %.sink79.i.i.i.i = phi float [ %i.kp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.kg, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.ks, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.ki, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ]
  %.1.i.i.i.i = phi i64 [ %i.kb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.ka, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %.062.i.i.i.i
  store float %.sink79.i.i.i.i, ptr %i.la, align 4, !tbaa !78
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.062.i.i.i.i
  store i64 %.sink.i.i.i.i, ptr %i.lb, align 8, !tbaa !63
  %i.lc = shl i64 %.1.i.i.i.i, 1                  ; 3 uses
  %i.ld = or disjoint i64 %i.lc, 1
  %i.le = icmp ugt i64 %i.lc, %i.ju
  br i1 %i.le, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !182

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i: ; preds = %bb.bc, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i, %bb.bb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i
  %.0.lcssa.ph.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.bc ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i ], [ %.062.i.i.i.i, %bb.bb ]
  %.pre68.i.i.i.i = load float, ptr %i.jv, align 4, !tbaa !78
  %.pre69.i.i.i.i = load i64, ptr %i.jx, align 8, !tbaa !63
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, %bb.az
  %i.lf = phi i64 [ %i.jy, %bb.az ], [ %.pre69.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ]
  %i.lg = phi float [ %i.jw, %bb.az ], [ %.pre68.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ 1, %bb.az ], [ %.0.lcssa.ph.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %.0.lcssa.i.i.i.i
  store float %i.lg, ptr %i.lh, align 4, !tbaa !78
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.0.lcssa.i.i.i.i
  store i64 %i.lf, ptr %i.li, align 8, !tbaa !63
  %i.lj = xor i64 %.041.i.i.i, -1
  %i.lk = add i64 %i.lj, %i.jn                    ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.lk
  store float %i.js, ptr %i.ll, align 4, !tbaa !78
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.lk
  store i64 %i.jt, ptr %i.lm, align 8, !tbaa !63
  %.not.i.i131.i = icmp ne i64 %i.jt, -1
  %i.ln = zext i1 %.not.i.i131.i to i64
  %spec.select.i.i.i = add i64 %.041.i.i.i, %i.ln ; 2 uses
  %i.lo = add nuw i64 %.03740.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.lo, %i.jn
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.az, !llvm.loop !183

._crit_edge.i.i.i:                                ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, %bb.ay
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.ay ], [ %spec.select.i.i.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 8 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jn
  %i.lq = sub i64 0, %.0.lcssa.i.i.i              ; 2 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = shl i64 %.0.lcssa.i.i.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jo, ptr align 4 %i.lr, i64 %i.ls, i1 false)
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jn
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.lq
  %i.lv = shl i64 %.0.lcssa.i.i.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jp, ptr align 8 %i.lu, i64 %i.lv, i1 false)
  %i.lw = icmp ult i64 %.0.lcssa.i.i.i, %i.jn
  br i1 %i.lw, label %.lr.ph44.i.i.i.preheader, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i

.lr.ph44.i.i.i.preheader:                         ; preds = %._crit_edge.i.i.i
  %i.lx = sub nuw i64 %i.jn, %.0.lcssa.i.i.i      ; 3 uses
  %min.iters.check = icmp ult i64 %i.lx, 4
  br i1 %min.iters.check, label %.lr.ph44.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.i.i.preheader
  %n.vec = and i64 %i.lx, -4                      ; 3 uses
  %i.ly = add i64 %.0.lcssa.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lz = add nuw i64 %.0.lcssa.i.i.i, %index     ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ma, align 4, !tbaa !78
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.mb, align 4, !tbaa !78
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.lz ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.mc, align 8, !tbaa !63
  store <2 x i64> splat (i64 -1), ptr %i.md, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.me = icmp eq i64 %index.next, %n.vec
  br i1 %i.me, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lx, %n.vec
  br i1 %cmp.n, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, label %.lr.ph44.i.i.i.preheader121

.lr.ph44.i.i.i.preheader121:                      ; preds = %.lr.ph44.i.i.i.preheader, %middle.block
  %.242.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %.lr.ph44.i.i.i.preheader ], [ %i.ly, %middle.block ]
  br label %.lr.ph44.i.i.i

.lr.ph44.i.i.i:                                   ; preds = %.lr.ph44.i.i.i.preheader121, %.lr.ph44.i.i.i
  %.242.i.i.i = phi i64 [ %i.mh, %.lr.ph44.i.i.i ], [ %.242.i.i.i.ph, %.lr.ph44.i.i.i.preheader121 ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.242.i.i.i
  store float f0x7F7FFFFF, ptr %i.mf, align 4, !tbaa !78
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.242.i.i.i
  store i64 -1, ptr %i.mg, align 8, !tbaa !63
  %i.mh = add nuw i64 %.242.i.i.i, 1              ; 2 uses
  %exitcond47.not.i.i.i = icmp eq i64 %i.mh, %i.jn
  br i1 %exitcond47.not.i.i.i, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, label %.lr.ph44.i.i.i, !llvm.loop !185

_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i:     ; preds = %.lr.ph44.i.i.i, %middle.block, %._crit_edge.i.i.i
  %i.mi = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %.lr.ph.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1:      ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  %.05.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %.05.i.i.i.i.ptr.1, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2, label %bb.bd

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2:      ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2 = load i64, ptr %.05.i.i.i.i.ptr.2, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2, 0
  br i1 %.not.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i, label %bb.bd

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i:        ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2, %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1, %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  call void @_ZSt9terminatev() #23
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2
  %i.mk = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.ff to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.mn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.mo = load ptr, ptr %11, align 8, !tbaa !124  ; 3 uses
  %.not.i.i.i133.i = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i133.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.mp = load ptr, ptr %i.ba, align 8, !tbaa !142
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = ptrtoint ptr %i.mo to i64
  %i.ms = sub i64 %i.mq, %i.mr
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.ms) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i

_ZNSt6vectorIfSaIfEED2Ev.exit134.i:               ; preds = %bb.be, %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.mt = load ptr, ptr %10, align 8, !tbaa !139  ; 3 uses
  %.not.i.i.i135.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i135.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit136.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit134.i
  %i.mu = load ptr, ptr %i.ay, align 8, !tbaa !140
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.mt to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.mx) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit136.i

_ZNSt6vectorIlSaIlEED2Ev.exit136.i:               ; preds = %bb.bf, %_ZNSt6vectorIfSaIfEED2Ev.exit134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.my = add nuw nsw i64 %.04775.i, 1            ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.my, 200
  br i1 %exitcond87.not.i, label %bb.t, label %bb.ad, !llvm.loop !186

.lr.ph.i:                                         ; preds = %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, %_ZN7testing15AssertionResultD2Ev.exit.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %_ZN7testing15AssertionResultD2Ev.exit.i ], [ 0, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i ] ; 3 uses
  %i.mz = phi i32 [ %i.oz, %_ZN7testing15AssertionResultD2Ev.exit.i ], [ %i.mi, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.na = load ptr, ptr %10, align 8, !tbaa !139
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv84.i ; 2 uses
  %i.nc = sext i32 %i.mz to i64
  %i.nd = mul nsw i64 %.04775.i, %i.nc
  %i.ne = load ptr, ptr %7, align 8, !tbaa !139
  %i.nf = getelementptr [8 x i8], ptr %i.ne, i64 %i.nd
  %i.ng = getelementptr [8 x i8], ptr %i.nf, i64 %indvars.iv84.i ; 2 uses
  %i.nh = load i64, ptr %i.nb, align 8, !tbaa !63, !noalias !187
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !63, !noalias !187
  %i.nj = icmp eq i64 %i.nh, %i.ni
  br i1 %i.nj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.bl

bb.bh:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19, !noalias !192
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.nb)
          to label %.noexc168.i unwind label %bb.bl

.noexc168.i:                                      ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !192
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ng)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i unwind label %bb.bj, !noalias !192

_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i: ; preds = %.noexc168.i
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.nk = load ptr, ptr %2, align 8, !tbaa !87, !noalias !192 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.be
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bi
  %i.nm = load i64, ptr %i.be, align 8, !tbaa !19, !noalias !192
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.nn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !192
  %i.no = load ptr, ptr %1, align 8, !tbaa !87, !noalias !192 ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.bf
  br i1 %i.np, label %.noexc138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.nq = load i64, ptr %i.bf, align 8, !tbaa !19, !noalias !192
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #20
  br label %.noexc138.i

bb.bj:                                            ; preds = %.noexc168.i
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

bb.bk:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = load ptr, ptr %2, align 8, !tbaa !87, !noalias !192 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.be
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.bk
  %i.nw = load i64, ptr %i.be, align 8, !tbaa !19, !noalias !192
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i, %bb.bj
  %.pn.i.i = phi { ptr, i32 } [ %i.ns, %bb.bj ], [ %i.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i ], [ %i.nt, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !192
  %i.ny = load ptr, ptr %1, align 8, !tbaa !87, !noalias !192 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.bf
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i
  %i.oa = load i64, ptr %i.bf, align 8, !tbaa !19, !noalias !192
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !192
  br label %.body169.i

.noexc138.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !192
  br label %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i

_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %.noexc138.i, %bb.bg
  %i.oc = load i8, ptr %13, align 8, !tbaa !91, !range !100, !noundef !101
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.bv, label %bb.bm

bb.bl:                                            ; preds = %bb.bh, %bb.bg
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i

bb.bm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.of = load ptr, ptr %i.bg, align 8, !tbaa !102 ; 2 uses
  %.not.i.i139.i = icmp eq ptr %i.of, null
  br i1 %.not.i.i139.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.bo, %bb.bn
  %i.oh = phi ptr [ %i.og, %bb.bo ], [ @.str.29, %bb.bn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 711, ptr noundef %i.oh)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.oi = load ptr, ptr %14, align 8, !tbaa !103  ; 3 uses
  %.not.i.i140.i = icmp eq ptr %i.oi, null
  br i1 %.not.i.i140.i, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.bq
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !22
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(128) %i.oi) #19, !inline_history !195
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.bv

bb.br:                                            ; preds = %bb.bm
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit143.i

bb.bs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bp
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn.i = phi { ptr, i32 } [ %i.oo, %bb.bt ], [ %i.on, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.op = load ptr, ptr %14, align 8, !tbaa !103  ; 3 uses
  %.not.i.i141.i = icmp eq ptr %i.op, null
  br i1 %.not.i.i141.i, label %_ZN7testing7MessageD2Ev.exit143.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i: ; preds = %bb.bu
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !22
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(128) %i.op) #19, !inline_history !195
  br label %_ZN7testing7MessageD2Ev.exit143.i

_ZN7testing7MessageD2Ev.exit143.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i, %bb.bu, %bb.br
  %.pn.pn.i = phi { ptr, i32 } [ %i.om, %bb.br ], [ %.pn.i, %bb.bu ], [ %.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #19
  br label %.body169.i

bb.bv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit.i, %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  %i.ot = load ptr, ptr %i.bg, align 8, !tbaa !102 ; 4 uses
  %.not.i.i144.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i144.i, label %_ZN7testing15AssertionResultD2Ev.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !87 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 16 ; 2 uses
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bw
  %i.ox = load i64, ptr %i.ov, align 8, !tbaa !19
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.oy) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ot, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit.i

_ZN7testing15AssertionResultD2Ev.exit.i:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZSt28__throw_bad_array_new_lengthv
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI30TestLowLevelIVF_IVFFlatL2_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI30TestLowLevelIVF_IVFFlatL2_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV30TestLowLevelIVF_IVFFlatL2_Test, i64 16), ptr %i.a, align 8, !tbaa !22
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120test_lowlevel_accessEPKcN5faiss10MetricTypeE(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_ptr.3", align 8 ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::vector", align 8      ; 8 uses
  %13 = alloca %"struct.std::pair", align 8       ; 13 uses
  %14 = alloca %"class.std::vector.32", align 8   ; 8 uses
  %15 = alloca %"class.std::unique_ptr.58", align 8 ; 4 uses
  %16 = alloca %"class.std::vector", align 8      ; 8 uses
  %17 = alloca %"class.std::vector.27", align 8   ; 5 uses
  %18 = alloca %"class.std::vector", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call fastcc void @_ZN12_GLOBAL__N_118make_trained_indexEPKcN5faiss10MetricTypeE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %0, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke fastcc void @_ZN12_GLOBAL__N_19make_dataEm(ptr dead_on_unwind noalias writable align 8 %5, i64 noundef 1000)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !123    ; 8 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !124    ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i64 noundef 1000, ptr noundef %i.f)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit222

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit220

bb.e:                                             ; preds = %bb.b
  %i.l = tail call ptr @__dynamic_cast(ptr nonnull %i.e, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss17IndexPreTransformE, i64 0) #19 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !127
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !127
  %i.s = invoke noundef ptr @_ZNK5faiss17IndexPreTransform11apply_chainElPKf(ptr noundef nonnull align 8 dereferenceable(73) %i.l, i64 noundef 1000, ptr noundef %i.f)
          to label %bb.g unwind label %.thread287 ; 3 uses

bb.g:                                             ; preds = %bb.f
  %.not79 = icmp eq ptr %i.s, %i.f
  %spec.select = select i1 %.not79, ptr null, ptr %i.s
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit

.thread287:                                       ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit220

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.g, %bb.e
  %.sroa.0282.0 = phi ptr [ null, %bb.e ], [ %spec.select, %bb.g ] ; 4 uses
  %.045 = phi i32 [ %i.n, %bb.e ], [ %i.r, %bb.g ] ; 2 uses
  %.044 = phi ptr [ %i.f, %bb.e ], [ %i.s, %bb.g ] ; 3 uses
  %i.u = invoke noundef ptr @_ZN5faiss6ivflib17extract_index_ivfEPNS_5IndexE(ptr noundef nonnull %i.e)
          to label %bb.h unwind label %bb.aa      ; 13 uses

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %i.v = invoke noalias noundef nonnull dereferenceable(8000) ptr @_Znwm(i64 noundef 8000) #21
          to label %bb.i unwind label %bb.ab      ; 8 uses

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8000) %i.v, i8 0, i64 8000, i1 false)
  %i.x = load i64, ptr %i.w, align 8, !tbaa !206
  %i.y = mul i64 %i.x, 1000                       ; 5 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #21
          to label %.noexc111 unwind label %bb.ac ; 4 uses

.noexc111:                                        ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = add nsw i64 %i.y, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i8 0, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %.noexc111, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0260.0 = phi ptr [ %i.aa, %.noexc111 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 14 uses
  %.sroa.20.0 = phi ptr [ %i.ab, %.noexc111 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !144 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(36) %i.af, i64 noundef 1000, ptr noundef %.044, ptr noundef nonnull %i.v, i64 noundef 1)
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(273) %i.u, i64 noundef 1000, ptr noundef %.044, ptr noundef nonnull %i.v, ptr noundef %.sroa.0260.0, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.am = sext i32 %.045 to i64                   ; 3 uses
  %i.an = mul nsw i64 %i.am, 1000                 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 2305843009213693951
  br i1 %i.ao, label %bb.n, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc114 unwind label %bb.ae

.noexc114:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i112 = icmp eq i32 %.045, 0         ; 2 uses
  br i1 %.not.i.i.i.i112, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = mul nsw i64 %i.am, 4000                 ; 2 uses
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21
          to label %.noexc115 unwind label %bb.ae ; 4 uses

.noexc115:                                        ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !78
  %i.as = getelementptr i8, ptr %i.aq, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ap, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !78
  %i.at = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %.noexc115, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0252.0 = phi ptr [ %i.aq, %.noexc115 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11257.0 = phi i64 [ %i.at, %.noexc115 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.au = ptrtoint ptr %.sroa.20.0 to i64
  %i.av = ptrtoint ptr %.sroa.0260.0 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 13 uses
  %.not.i.i.i.i116 = icmp eq ptr %.sroa.20.0, %.sroa.0260.0 ; 2 uses
  br i1 %.not.i.i.i.i116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !208

.noexc.i.i:                                       ; preds = %bb.p
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc117 unwind label %bb.af

.noexc117:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.p
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #21
          to label %.noexc118 unwind label %bb.af ; 5 uses

.noexc118:                                        ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw ; 2 uses
  %i.ba = icmp samesign ugt i64 %i.aw, 1
  br i1 %i.ba, label %bb.q, label %bb.s, !prof !209

bb.q:                                             ; preds = %.noexc118
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %.sroa.0260.0, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i119

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr null, i64 %i.aw
  br label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i119

bb.s:                                             ; preds = %.noexc118
  %i.bc = load i8, ptr %.sroa.0260.0, align 1, !tbaa !19
  store i8 %i.bc, ptr %i.ay, align 1, !tbaa !19
  br label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i119

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i119: ; preds = %bb.r, %bb.q, %bb.s
  %i.bd = phi i1 [ true, %bb.q ], [ false, %bb.r ], [ false, %bb.s ] ; 2 uses
  %i.be = phi ptr [ %i.az, %bb.q ], [ %i.bb, %bb.r ], [ %i.az, %bb.s ] ; 2 uses
  %i.bf = phi ptr [ %i.ay, %bb.q ], [ null, %bb.r ], [ %i.ay, %bb.s ] ; 8 uses
  br i1 %.not.i.i.i.i112, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i119
  %i.bg = mul nsw i64 %i.am, 4000                 ; 2 uses
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21
          to label %.noexc125 unwind label %bb.ag ; 4 uses

.noexc125:                                        ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.an
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !78
  %i.bj = getelementptr i8, ptr %i.bh, i64 4
  %.idx.i.i.i.i.i.i.i121 = add nsw i64 %i.bg, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bj, i8 0, i64 %.idx.i.i.i.i.i.i.i121, i1 false), !tbaa !78
  %i.bk = ptrtoint ptr %i.bi to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126:            ; preds = %.noexc125, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i119
  %.sroa.0239.0 = phi ptr [ %i.bh, %.noexc125 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i119 ] ; 8 uses
  %.sroa.11.0 = phi i64 [ %i.bk, %.noexc125 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i119 ] ; 2 uses
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 256
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(273) %i.u, i64 noundef 1000, ptr noundef %.sroa.0260.0, ptr noundef nonnull %i.v, ptr noundef %.sroa.0252.0)
          to label %bb.u unwind label %bb.ah

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 248
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(273) %i.u, i64 noundef 1000, ptr noundef %.044, ptr noundef nonnull %i.v, ptr noundef %i.bf, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.br = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 256
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(273) %i.u, i64 noundef 1000, ptr noundef %i.bf, ptr noundef nonnull %i.v, ptr noundef %.sroa.0239.0)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bu = invoke noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef %.sroa.0252.0, ptr noundef %.sroa.0239.0, i64 noundef %i.an)
          to label %bb.x unwind label %bb.ai      ; 2 uses

bb.x:                                             ; preds = %bb.w
  store float %i.bu, ptr %i.a, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store double 1.000000e-05, ptr %i.b, align 8, !tbaa !210
  %i.bv = fpext float %i.bu to double
  %i.bw = fcmp olt double %i.bv, 1.000000e-05
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.aj

bb.z:                                             ; preds = %bb.x
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.18)
          to label %_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.aj

_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bx = load i8, ptr %6, align 8, !tbaa !91, !range !100, !noundef !101
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.au, label %bb.al

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.ab:                                            ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.ac:                                            ; preds = %bb.k, %bb.j
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit217

bb.ad:                                            ; preds = %bb.l, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit213

bb.ae:                                            ; preds = %bb.o, %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit213

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit211

bb.ag:                                            ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit209

bb.ah:                                            ; preds = %bb.v, %bb.u, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit153

bb.ai:                                            ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.z, %bb.y
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.aj ], [ %i.ch, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.aw

bb.al:                                            ; preds = %_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !102 ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i129, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.an, %bb.am
  %i.cm = phi ptr [ %i.cl, %bb.an ], [ @.str.29, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 145, ptr noundef %i.cm)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.cn = load ptr, ptr %7, align 8, !tbaa !103   ; 3 uses
  %.not.i.i130 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i130, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ap
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(128) %i.cn) #19, !inline_history !211
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit133

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn81 = phi { ptr, i32 } [ %i.ct, %bb.as ], [ %i.cs, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.cu = load ptr, ptr %7, align 8, !tbaa !103   ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i131, label %_ZN7testing7MessageD2Ev.exit133, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.at
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !22
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #19, !inline_history !211
  br label %_ZN7testing7MessageD2Ev.exit133

_ZN7testing7MessageD2Ev.exit133:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, %bb.at, %bb.aq
  %.pn81.pn = phi { ptr, i32 } [ %i.cr, %bb.aq ], [ %.pn81, %bb.at ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #19
  br label %bb.aw

bb.au:                                            ; preds = %_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_19make_dataEm:_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %vector.recur.init30 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph27
  %index29 = phi i64 [ 0, %vector.ph27 ], [ %index.next34, %vector.body28 ] ; 3 uses
  %vector.recur31 = phi <2 x i64> [ %vector.recur.init30, %vector.ph27 ], [ %wide.load32, %vector.body28 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_13rngE, i64 %index29 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_13rngE, i64 %index29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %wide.load32 = load <2 x i64>, ptr %i.u, align 8, !tbaa !63 ; 5 uses
  %i.v = shufflevector <2 x i64> %vector.recur31, <2 x i64> %wide.load32, <2 x i32> <i32 1, i32 2>
  %i.w = and <2 x i64> %i.v, splat (i64 -2147483648)
  %i.x = and <2 x i64> %wide.load32, splat (i64 2147483646)
  %i.y = or disjoint <2 x i64> %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 3176
  %wide.load33 = load <2 x i64>, ptr %i.z, align 8, !tbaa !63
  %i.aa = lshr exact <2 x i64> %i.y, splat (i64 1)
  %i.ab = xor <2 x i64> %i.aa, %wide.load33
  %i.ac = and <2 x i64> %wide.load32, splat (i64 1)
  %i.ad = icmp eq <2 x i64> %i.ac, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.af = xor <2 x i64> %i.ab, %i.ae
  store <2 x i64> %i.af, ptr %i.s, align 8, !tbaa !63
  %index.next34 = add nuw i64 %index29, 2         ; 2 uses
  %i.ag = icmp eq i64 %index.next34, 226
  br i1 %i.ag, label %vector.ph, label %vector.body28, !llvm.loop !245

vector.ph:                                        ; preds = %vector.body28
  %vector.recur.extract = extractelement <2 x i64> %wide.load32, i64 1
  %i.ah = and i64 %vector.recur.extract, -2147483648
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13rngE, i64 1816), align 8, !tbaa !63 ; 2 uses
  %i.aj = and i64 %i.ai, 2147483646
  %i.ak = or disjoint i64 %i.aj, %i.ah
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13rngE, i64 4984), align 8, !tbaa !63
  %i.am = lshr exact i64 %i.ak, 1
  %i.an = xor i64 %i.am, %i.al
  %i.ao = and i64 %i.ai, 1
  %.not20.i.i = icmp eq i64 %i.ao, 0
  %i.ap = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.aq = xor i64 %i.an, %i.ap
  store i64 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13rngE, i64 1808), align 8, !tbaa !63
  %.pre24.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13rngE, i64 1816), align 8, !tbaa !63
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_13rngE, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1816
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_13rngE, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1824
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !63 ; 4 uses
  %i.av = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.aw = and <2 x i64> %i.av, splat (i64 -2147483648)
  %i.ax = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.ay = or disjoint <2 x i64> %i.ax, %i.aw
  %wide.load26 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !63
  %i.az = lshr exact <2 x i64> %i.ay, splat (i64 1)
  %i.ba = xor <2 x i64> %i.az, %wide.load26
  %i.bb = and <2 x i64> %wide.load, splat (i64 1)
  %i.bc = icmp eq <2 x i64> %i.bb, zeroinitializer
  %i.bd = select <2 x i1> %i.bc, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.be = xor <2 x i64> %i.ba, %i.bd
  store <2 x i64> %i.be, ptr %i.as, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bf = icmp eq i64 %index.next, 396
  br i1 %i.bf, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !246

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13rngE, i64 4984), align 8, !tbaa !63
  %i.bh = and i64 %i.bg, -2147483648
  %i.bi = load i64, ptr @_ZN12_GLOBAL__N_13rngE, align 8, !tbaa !63 ; 2 uses
  %i.bj = and i64 %i.bi, 2147483646
  %i.bk = or disjoint i64 %i.bj, %i.bh
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13rngE, i64 3168), align 8, !tbaa !63
  %i.bm = lshr exact i64 %i.bk, 1
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = and i64 %i.bi, 1
  %.not.i.i = icmp eq i64 %i.bo, 0
  %i.bp = select i1 %.not.i.i, i64 0, i64 2567483615
  %i.bq = xor i64 %i.bn, %i.bp
  store i64 %i.bq, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13rngE, i64 4984), align 8, !tbaa !63
  br label %.noexc13

.noexc13:                                         ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, %select.unfold.i.i.i.i
  %i.br = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.q, %select.unfold.i.i.i.i ] ; 2 uses
  %i.bs = add nuw nsw i64 %i.br, 1                ; 3 uses
  store i64 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13rngE, i64 4992), align 8, !tbaa !243
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_13rngE, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !63 ; 2 uses
  %i.bv = lshr i64 %i.bu, 11
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = xor i64 %i.bw, %i.bu                    ; 2 uses
  %i.by = shl i64 %i.bx, 7
  %i.bz = and i64 %i.by, 2636928640
  %i.ca = xor i64 %i.bz, %i.bx                    ; 2 uses
  %i.cb = shl i64 %i.ca, 15
  %i.cc = and i64 %i.cb, 4022730752
  %i.cd = xor i64 %i.cc, %i.ca                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 18
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = uitofp i64 %i.cf to double
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %.01422.i.i.i.i, double %.01521.i.i.i.i) ; 2 uses
  %i.ci = fpext double %.01422.i.i.i.i to x86_fp80
  %i.cj = fmul x86_fp80 %i.ci, f0x401F8000000000000000
  %i.ck = fptrunc x86_fp80 %i.cj to double        ; 2 uses
  %i.cl = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %select.unfold.i.i.i.i, !llvm.loop !247

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.016.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.o, %bb.c ]
  %i.cm = fadd double %.016.i.i.i.i, 0.000000e+00
  %i.cn = fptrunc double %i.cm to float
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.016
  store float %i.cn, ptr %i.co, align 4, !tbaa !78
  %i.cp = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.a
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !248
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #12

declare noundef ptr @_ZNK5faiss17IndexPreTransform11apply_chainElPKf(ptr noundef nonnull align 8 dereferenceable(73), i64 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5faiss6ivflib17extract_index_ivfEPNS_5IndexE(ptr noundef) local_unnamed_addr #1

declare noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #20
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112search_indexEPN5faiss5IndexEPKf(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.27", align 8    ; 12 uses
  %4 = alloca %"class.std::vector", align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = mul nsw i64 %i.b, 200                    ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %bb.b

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i

bb.b:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = mul nsw i64 %i.b, 1600                   ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !139
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !140
  store i64 0, ptr %i.f, align 8, !tbaa !63
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.e, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.j = getelementptr i8, ptr %i.f, i64 %i.e
  %.pre = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.l = sext i32 %.pre to i64                    ; 2 uses
  %i.m = mul nsw i64 %i.l, 200                    ; 2 uses
  %i.n = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.n, label %bb.c, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc11 unwind label %bb.j

.noexc11:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i8 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i.i8, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.d

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.thread, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.f, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.p = mul nsw i64 %i.l, 800                    ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
          to label %.noexc12 unwind label %bb.j   ; 6 uses

.noexc12:                                         ; preds = %bb.d
  store ptr %i.q, ptr %4, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !142
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !78
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %.idx.i.i.i.i.i.i.i9 = add nsw i64 %i.p, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.t, i8 0, i64 %.idx.i.i.i.i.i.i.i9, i1 false), !tbaa !78
  %i.u = getelementptr i8, ptr %i.q, i64 %i.p
  %.pre19 = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62
  %i.v = sext i32 %.pre19 to i64
  br label %bb.e

bb.e:                                             ; preds = %.noexc12, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %i.w = phi ptr [ %i.o, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.f, %.noexc12 ]
  %i.x = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.q, %.noexc12 ]
  %i.y = phi i64 [ 0, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.v, %.noexc12 ]
  %.0.i.i.i.i.i10 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.u, %.noexc12 ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i10, ptr %i.z, align 8, !tbaa !143
  %i.aa = load ptr, ptr %1, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 200, ptr noundef %2, i64 noundef %i.y, ptr noundef %i.x, ptr noundef %i.w, ptr noundef null)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEEC2IRS2_RS4_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %4, align 8, !tbaa !124   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !142
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.aj = load ptr, ptr %3, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !140
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

bb.k:                                             ; preds = %bb.f, %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !124   ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !142
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.aq, %bb.k ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ax = load ptr, ptr %3, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIlSaIlEED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit15
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !140
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit17

_ZNSt6vectorIlSaIlEED2Ev.exit17:                  ; preds = %bb.m, %_ZNSt6vectorIfSaIfEED2Ev.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_128test_get_InvertedListScannerEPN5faiss8IndexIVFEPKNS0_17IndexPreTransformESt6vectorIhSaIhEESt10unique_ptrINS0_19InvertedListScannerESt14default_deleteISA_EES6_IfSaIfEES6_IlSaIlEESF_NS0_10MetricTypeEbf(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) %6, i32 noundef range(i32 0, 2) %7, i1 noundef zeroext %8, float noundef %9) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 9 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  store float %9, ptr %i.a, align 4, !tbaa !78
  %i.c = load ptr, ptr %4, align 8, !tbaa !124    ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK5faiss17IndexPreTransform11apply_chainElPKf(ptr noundef nonnull align 8 dereferenceable(73) %1, i64 noundef 200, ptr noundef %i.c) ; 3 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !124
  %.not93 = icmp eq ptr %i.d, %i.e
  %spec.select = select i1 %.not93, ptr null, ptr %i.d
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.b, %bb.a
  %.sroa.0272.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ] ; 4 uses
  %.086 = phi ptr [ %i.c, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i64, ptr %i.f, align 8, !tbaa !136  ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !212  ; 15 uses
  %sext = shl i64 %i.g, 32                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 5 uses
  %i.l = mul nsw i64 %i.k, 200                    ; 3 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %bb.c, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = mul nsw i64 %i.k, 1600                   ; 2 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21
          to label %bb.e unwind label %bb.i       ; 5 uses

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !63
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.n, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.r = mul nsw i64 %i.k, 800                    ; 2 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #21
          to label %.noexc127 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit217.thread ; 4 uses

.noexc127:                                        ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.l
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !78
  %i.u = getelementptr i8, ptr %i.s, i64 4
  %.idx.i.i.i.i.i.i.i124 = add nsw i64 %i.r, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.u, i8 0, i64 %.idx.i.i.i.i.i.i.i124, i1 false), !tbaa !78
  %i.v = ptrtoint ptr %i.t to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %.noexc127, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0265.0281 = phi ptr [ %i.o, %.noexc127 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.11270.0278 = phi ptr [ %i.p, %.noexc127 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0258.0 = phi ptr [ %i.s, %.noexc127 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi i64 [ %i.v, %.noexc127 ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !144  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(36) %i.x, i64 noundef 200, ptr noundef %.086, i64 noundef %i.k, ptr noundef %.sroa.0258.0, ptr noundef %.sroa.0265.0281, ptr noundef null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.ab = load ptr, ptr %3, align 8, !tbaa !228
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.g, label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 296
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(273) %0, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %3, align 8, !tbaa !228   ; 3 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !228
  %.not.i.i.i.i128 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i128, label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i.i.i.i: ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #19, !inline_history !249
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit219

_ZNSt6vectorIfSaIfEED2Ev.exit217.thread:          ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.k:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !78
  %.not97 = icmp eq i32 %7, 0                     ; 2 uses
  %i.ao = select i1 %.not97, float f0xFF7FFFFF, float f0x7F7FFFFF ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = icmp sgt i32 %i.h, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %wide.trip.count = and i64 %i.g, 2147483647
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.o

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.aw = load float, ptr %i.b, align 4, !tbaa !78
  %i.ax = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.ay, 200
  %i.ba = uitofp i64 %i.az to float
  %i.bb = fdiv float %i.aw, %i.ba                 ; 2 uses
  store float %i.bb, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.bc = load float, ptr %i.a, align 4, !tbaa !78, !noalias !250
  %i.bd = fcmp ult float %i.bb, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cg

bb.n:                                             ; preds = %bb.l
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.36)
          to label %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cg

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %.063456 = phi i64 [ 0, %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit ], [ %i.lp, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 5 uses
  %i.be = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 3 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i32 %i.be, 0
  br i1 %i.bg, label %bb.p, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i132

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc135 unwind label %.loopexit.split-lp

.noexc135:                                        ; preds = %bb.p
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i132: ; preds = %bb.o
  %.not.i.i.i.i133 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i133, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i132
  %i.bh = shl nuw nsw i64 %i.bf, 3                ; 2 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #21
          to label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit unwind label %.loopexit ; 6 uses

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bi, i8 -1, i64 %i.bh, i1 false), !tbaa !63
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %.pre = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 3 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 4 uses
  %i.bl = zext nneg i32 %.pre to i64              ; 2 uses
  %i.bm = icmp slt i32 %.pre, 0
  br i1 %i.bm, label %bb.r, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc143 unwind label %.loopexit.split-lp302

.noexc143:                                        ; preds = %bb.r
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137: ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %.not.i.i.i.i138 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i.i138, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137
  %i.bn = shl nuw nsw i64 %i.bl, 2                ; 3 uses
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #21
          to label %.noexc144 unwind label %.loopexit301 ; 6 uses

.noexc144:                                        ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  %i.bq = add nsw i64 %i.bn, -4                   ; 2 uses
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check998 = icmp ult i64 %i.bq, 28
  br i1 %min.iters.check998, label %.lr.ph.i.i.i.i.i.i.i.i.i139.preheader, label %vector.ph999

vector.ph999:                                     ; preds = %.noexc144
  %n.vec1000 = and i64 %i.bs, 9223372036854775800 ; 3 uses
  %i.bt = shl i64 %n.vec1000, 2
  %i.bu = getelementptr i8, ptr %i.bo, i64 %i.bt
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph999
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1003, %vector.body1001 ] ; 2 uses
  %i.bv = shl i64 %index1002, 2
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !78
  store <4 x float> %broadcast.splat, ptr %i.bw, align 4, !tbaa !78
  %index.next1003 = add nuw i64 %index1002, 8     ; 2 uses
  %i.bx = icmp eq i64 %index.next1003, %n.vec1000
  br i1 %i.bx, label %middle.block1004, label %vector.body1001, !llvm.loop !253

middle.block1004:                                 ; preds = %vector.body1001
  %cmp.n1005 = icmp eq i64 %i.bs, %n.vec1000
  br i1 %cmp.n1005, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i139.preheader

.lr.ph.i.i.i.i.i.i.i.i.i139.preheader:            ; preds = %.noexc144, %middle.block1004
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bo, %.noexc144 ], [ %i.bu, %middle.block1004 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i139

.lr.ph.i.i.i.i.i.i.i.i.i139:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i139.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i139
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.i139 ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i139.preheader ] ; 2 uses
  store float %i.ao, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !78
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i140 = icmp eq ptr %i.by, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i.i140, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i139, !llvm.loop !254

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i139, %middle.block1004
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bl
  %i.ca = ptrtoint ptr %i.bz to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
end_hunk_5
