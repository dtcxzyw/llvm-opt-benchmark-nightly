Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/bench_parser?download=true
inline.NumInlined: 1513
inline.NumDeleted: 585
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost5beast4http14message_fuzz_tIvE8responseINS0_17basic_flat_bufferISaIcEEEEEvRT_:bb.a
  call void @_ZN5boost5beast6detail14ostream_helperINS0_17basic_flat_bufferISaIcEEEcSt11char_traitsIcELb1EED1Ev(ptr noundef nonnull align 8 dereferenceable(80) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost5beast6detail14ostream_helperINS0_17basic_flat_bufferISaIcEEEcSt11char_traitsIcELb1EED1Ev(ptr noundef nonnull align 8 dereferenceable(80) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn13 = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %.pn.pn.pn, %bb.i ]
  resume { ptr, i32 } %.pn13
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http14message_fuzz_tIvE5tokenB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(5000) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %3 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %4 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !28
  store i8 0, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i64 0, ptr %4, align 8, !tbaa !155
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 76, ptr %i.c, align 8, !tbaa !156
  %i.d = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http14message_fuzz_tIvE5tokenB5cxx11EvE5valid, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !27
  %i.g = load i64, ptr %i.b, align 8, !tbaa !28
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.f)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.preheader unwind label %.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.preheader: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 0, ptr %3, align 8, !tbaa !155
  store i64 3, ptr %i.i, align 8, !tbaa !156
  %i.k = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i64 0, ptr %2, align 8, !tbaa !155
  store i64 76, ptr %i.j, align 8, !tbaa !156
  %i.l = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http14message_fuzz_tIvE5tokenB5cxx11EvE5valid, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27
  %i.o = load i64, ptr %i.b, align 8, !tbaa !28
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.a, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !27
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.phi

bb.g:                                             ; preds = %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast9unit_test5suite15scoped_testcaseC2IA20_cEERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(808) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(20) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %1, ptr %0, align 8, !tbaa !66
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !322
  %i.b = load ptr, ptr %2, align 8, !tbaa !30
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef 0)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !131, !nonnull !61, !align !63 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !28
  store i8 0, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef %i.k, ptr noundef nonnull %i.g, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.o = load i32, ptr %i.n, align 8, !tbaa !107
  %i.p = and i32 %i.o, 3
  %.not.i.i.i = icmp eq i32 %i.p, 0
  %i.q = load i64, ptr %i.j, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.q
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !26
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef %i.r, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.b

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc
  %i.s = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.u = load i64, ptr %i.g, align 8, !tbaa !27
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !131, !nonnull !61, !align !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #29
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %3, i64 noundef %i.y) ; 0 uses
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.g
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !27
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #16

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http11parser_test11testParser2INS2_12bench_parserILb1ENS1_18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEEENS1_12basic_fieldsIS7_EEEEEEvmRKSt6vectorINS0_17basic_flat_bufferIS7_EESaISF_EE(ptr noundef nonnull align 8 dereferenceable(864) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.boost::beast::unit_test::suite::abort_exception", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"class.boost::beast::buffers_suffix", align 8 ; 15 uses
  %7 = alloca %"struct.boost::beast::http::parser_test::bench_parser", align 8 ; 17 uses
  %8 = alloca %"class.boost::system::error_code", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.not134 = icmp eq i64 %1, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 76
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %2, align 8, !tbaa !123
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %._crit_edge, label %.lr.ph135.split

.loopexit:                                        ; preds = %_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit, %.lr.ph135.split
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph135.split, !llvm.loop !323

.lr.ph135.split:                                  ; preds = %.lr.ph135, %.loopexit
  %.in = phi i64 [ %i.x, %.loopexit ], [ %1, %.lr.ph135 ]
  %i.x = add i64 %.in, -1                         ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !123    ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %.not109132 = icmp eq ptr %i.y, %i.z
  br i1 %.not109132, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph135.split, %_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit
  %.sroa.079.0133 = phi ptr [ %i.fr, %_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit ], [ %i.y, %.lr.ph135.split ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i8 1, ptr %i.c, align 8, !tbaa !164
  store i64 1048576, ptr %i.d, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store i16 0, ptr %i.g, align 4, !tbaa !333
  store i32 0, ptr %i.h, align 8, !tbaa !334
  store i32 0, ptr %i.i, align 4, !tbaa !335
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http11parser_test12bench_parserILb1ENS1_18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEEENS1_12basic_fieldsIS6_EEEE, i64 16), ptr %7, align 8, !tbaa !30
  store i32 -1, ptr %i.f, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.079.0133, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !144 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.079.0133, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !145
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %i.ab, ptr %6, align 8, !tbaa !64
  store i64 %i.ag, ptr %.sroa.577.0..sroa_idx, align 8, !tbaa !24
  store ptr %6, ptr %i.j, align 8, !tbaa !177
  store i64 0, ptr %i.k, align 8, !tbaa !178
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i, %.lr.ph
  %.sroa.4.0.copyload.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.peel.i.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i ], [ %i.ag, %.lr.ph ] ; 6 uses
  %i.ah = phi i64 [ %11, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i ], [ 0, %.lr.ph ] ; 4 uses
  %i.ai = phi ptr [ %12, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i ], [ %6, %.lr.ph ] ; 7 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %.thread93, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp eq ptr %i.ai, %6
  br i1 %i.ak, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i, label %.lr.ph.i.i.i.i54

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i: ; preds = %bb.c
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.ai, align 8, !tbaa !64
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.am = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke

.lr.ph.i.i.i.i54:                                 ; preds = %bb.c
  %i.an = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i, i64 %i.ah)
  br label %.lr.ph.split.i.i.i.i57

.lr.ph.split.i.i.i.i57:                           ; preds = %.lr.ph.split.i.i.i.i57, %.lr.ph.i.i.i.i54
  %.09.i.i.i.i58 = phi i64 [ %i.ao, %.lr.ph.split.i.i.i.i57 ], [ %i.an, %.lr.ph.i.i.i.i54 ]
  %.sroa.02.08.i.pn.i.i.i59 = phi ptr [ %.sroa.02.08.i.i.i.i60, %.lr.ph.split.i.i.i.i57 ], [ %i.ai, %.lr.ph.i.i.i.i54 ] ; 2 uses
  %.sroa.02.08.i.i.i.i60 = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i.i59, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i61 = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i.i59, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i62 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i61, align 8, !tbaa !24
  %i.ao = add i64 %.sroa.4.0.copyload.i.i.i.i.i62, %.09.i.i.i.i58 ; 8 uses
  %.not.i.i.i.i63 = icmp eq ptr %.sroa.02.08.i.i.i.i60, %6
  br i1 %.not.i.i.i.i63, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i64, label %.lr.ph.split.i.i.i.i57, !llvm.loop !6

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i64: ; preds = %.lr.ph.split.i.i.i.i57
  %i.ap = icmp ult i64 %i.ao, 8193
  br i1 %i.ap, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i.i, label %bb.f

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i.i: ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %spec.select.i.i.i.i.peel.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %.pn.i.i.i.peel.i.i = sub nuw i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i.i.peel.i.i ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %.pn.i.i.i.peel.i.i, i64 8192) ; 3 uses
  %.not.i.i.i.peel.not.i.i = icmp ugt i64 %.sroa.4.0.copyload.i.i, %i.ah
  br i1 %.not.i.i.i.peel.not.i.i, label %bb.d, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i

bb.d:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i.i
  %.sroa.0.0.copyload1.i.i.i.peel.i.i = load ptr, ptr %i.ai, align 8, !tbaa !64
  %.pn3.i.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i.peel.i.i, i64 %spec.select.i.i.i.i.peel.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.pn3.i.i.i.peel.i.i, i64 %i.aq, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i: ; preds = %bb.d, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i.i
  %.not.i.i.peel.i.i = icmp ugt i64 %.pn.i.i.i.peel.i.i, 8191
  br i1 %.not.i.i.peel.i.i, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i, label %.lr.ph.split.i.i.peel.next.i.i

.lr.ph.split.i.i.peel.next.i.i:                   ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i
  %i.ar = sub nuw nsw i64 8192, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  br label %.lr.ph.split.i.i.i24.i

.lr.ph.split.i.i.i24.i:                           ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i, %.lr.ph.split.i.i.peel.next.i.i
  %.sroa.05.017.i.i.i.i = phi ptr [ %i.au, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i ], [ %i.as, %.lr.ph.split.i.i.peel.next.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i = phi i64 [ %i.av, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i ], [ %i.ar, %.lr.ph.split.i.i.peel.next.i.i ] ; 2 uses
  %.sroa.09.015.i.i.pn.i.i = phi ptr [ %.sroa.09.015.i.i.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i ], [ %i.ai, %.lr.ph.split.i.i.peel.next.i.i ] ; 3 uses
  %.sroa.09.015.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i.pn.i.i, i64 16 ; 2 uses
  %.not21.i.i.i.i = icmp eq ptr %.sroa.09.015.i.i.pn.i.i, %6
  br i1 %.not21.i.i.i.i, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i.i

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i.i24.i
  %.sroa.4.0..sroa_idx.i.i.i.i25.i = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i.pn.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i26.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i25.i, align 8, !tbaa !24 ; 2 uses
  %i.at = call i64 @llvm.umin.i64(i64 %.sroa.6.016.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i26.i) ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i26.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i.i
  %.sroa.0.0.copyload1.i.i.i.i.i = load ptr, ptr %.sroa.09.015.i.i.i.i, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.05.017.i.i.i.i, ptr align 1 %.sroa.0.0.copyload1.i.i.i.i.i, i64 %i.at, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i: ; preds = %bb.e, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i.i, i64 %i.at
  %i.av = sub nuw nsw i64 %.sroa.6.016.i.i.i.i, %i.at ; 2 uses
  %.not.i.i.i27.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i27.i, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i, label %.lr.ph.split.i.i.i24.i, !llvm.loop !324

_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i, %.lr.ph.split.i.i.i24.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i
  %i.aw = invoke noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr nonnull %i.a, i64 %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.noexc66 unwind label %bb.ac

.noexc66:                                         ; preds = %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.noexc

bb.f:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i64
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !337
  %i.ay = icmp ugt i64 %i.ao, %i.ax
  br i1 %i.ay, label %bb.g, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.az = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #34
          to label %.noexc67 unwind label %bb.ac

.noexc67:                                         ; preds = %bb.g
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !137 ; 2 uses
  store ptr %i.az, ptr %i.n, align 8, !tbaa !137
  %.not.i.i.i.i28.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i28.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.noexc67
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #32
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.noexc67
  store i64 %i.ao, ptr %i.m, align 8, !tbaa !337
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !177
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i, %bb.f
  %i.bb = phi ptr [ %i.ai, %bb.f ], [ %.pre.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ]
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !137
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.05.017.i.i.i = phi ptr [ %i.bj, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %i.bc, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i = phi i64 [ %i.bk, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %i.ao, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.09.015.i.i.i = phi ptr [ %i.bl, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %i.bb, %.lr.ph.i.i.i ] ; 5 uses
  %.not21.i.i.i = icmp eq ptr %.sroa.09.015.i.i.i, %i.j
  br i1 %.not21.i.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i.i.i
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.be = icmp eq ptr %.sroa.09.015.i.i.i, %i.bd
  %.sroa.0.0.copyload1.i.i.i.i = load ptr, ptr %.sroa.09.015.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !24 ; 3 uses
  br i1 %i.be, label %bb.i, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load i64, ptr %i.k, align 8, !tbaa !178
  %spec.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %.sroa.4.0.copyload.i.i.i.i) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i.i, i64 %spec.select.i.i.i.i.i
  %i.bh = sub i64 %.sroa.4.0.copyload.i.i.i.i, %spec.select.i.i.i.i.i
  br label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pn3.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %.sroa.0.0.copyload1.i.i.i.i, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.bh, %bb.i ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.h ] ; 2 uses
  %i.bi = call i64 @llvm.umin.i64(i64 %.sroa.6.016.i.i.i, i64 %.pn.i.i.i.i) ; 3 uses
  %.not.i.i.i31.i = icmp eq i64 %.pn.i.i.i.i, 0
  br i1 %.not.i.i.i31.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.05.017.i.i.i, ptr align 1 %.pn3.i.i.i.i, i64 %i.bi, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.j, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i, i64 %i.bi
  %i.bk = sub nuw i64 %.sroa.6.016.i.i.i, %i.bi   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i.i, i64 16
  %.not.i.i32.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i32.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i, label %.lr.ph.split.i.i.i, !llvm.loop !7

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %.lr.ph.split.i.i.i
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !137
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke: ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i
  %i.bn = phi ptr [ %i.bm, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i ], [ %i.al, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i ]
  %i.bo = phi i64 [ %i.ao, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i ], [ %i.am, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i ]
  %i.bp = invoke noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr %i.bn, i64 %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke, %.noexc66
  %.1.i.ph = phi i64 [ %i.bp, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke ], [ %i.aw, %.noexc66 ] ; 4 uses
  %.pr = load i64, ptr %i.l, align 8, !tbaa !41   ; 3 uses
  %i.bq = and i64 %.pr, 1
  %.not.i.i.i = icmp eq i64 %i.bq, 0              ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread17.i, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.br = icmp eq i64 %.pr, 1
  %i.bs = load i32, ptr %8, align 8
  %.not.i = icmp eq i32 %i.bs, 0
  %or.cond = select i1 %i.br, i1 %.not.i, i1 false
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread17.i, label %.thread96

_ZNK5boost6system10error_codecvbEv.exit.thread17.i: ; preds = %bb.k, %.noexc
  %i.bt = icmp eq i64 %.1.i.ph, 0
  br i1 %i.bt, label %bb.p, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread17.i
  %.promoted.i.i = load ptr, ptr %i.j, align 8    ; 5 uses
  %.promoted16.i.i = load i64, ptr %i.k, align 8  ; 3 uses
  %.not11.i.peel.i = icmp eq ptr %.promoted.i.i, %i.j
  br i1 %.not11.i.peel.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %.sroa.2.0..sroa_idx.i.peel.i = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 8
  %.sroa.2.0.copyload.i.peel.i = load i64, ptr %.sroa.2.0..sroa_idx.i.peel.i, align 8, !tbaa !24
  %i.bu = sub i64 %.sroa.2.0.copyload.i.peel.i, %.promoted16.i.i ; 2 uses
  %i.bv = icmp ult i64 %.1.i.ph, %i.bu            ; 2 uses
  %i.bw = add i64 %.promoted16.i.i, %.1.i.ph      ; 2 uses
  %storemerge.i.peel.i = select i1 %i.bv, i64 %i.bw, i64 0
  store i64 %storemerge.i.peel.i, ptr %i.k, align 8, !tbaa !178
  br i1 %i.bv, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = sub nuw i64 %.1.i.ph, %i.bu             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 16 ; 3 uses
  store ptr %i.by, ptr %i.j, align 8, !tbaa !177
  %.not.i.peel.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.peel.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.m, %bb.o
  %.0813.i.i = phi i64 [ %i.cb, %bb.o ], [ %i.bx, %bb.m ] ; 4 uses
  %i.bz = phi ptr [ %i.cc, %bb.o ], [ %i.by, %bb.m ] ; 5 uses
  %.not11.i.i = icmp eq ptr %i.bz, %i.j
  br i1 %.not11.i.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %bb.n

bb.n:                                             ; preds = %.peel.next.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !24 ; 2 uses
  %i.ca = icmp ult i64 %.0813.i.i, %.sroa.2.0.copyload.i.i ; 2 uses
  %storemerge.i.i = select i1 %i.ca, i64 %.0813.i.i, i64 0
  store i64 %storemerge.i.i, ptr %i.k, align 8, !tbaa !178
  br i1 %i.ca, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = sub nuw i64 %.0813.i.i, %.sroa.2.0.copyload.i.i ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  store ptr %i.cc, ptr %i.j, align 8, !tbaa !177
  %.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %.peel.next.i, !llvm.loop !325

_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i: ; preds = %bb.o, %bb.n, %.peel.next.i, %bb.m, %bb.l, %.lr.ph.i.i
  %11 = phi i64 [ %.promoted16.i.i, %.lr.ph.i.i ], [ 0, %bb.m ], [ %i.bw, %bb.l ], [ 0, %bb.o ], [ %.0813.i.i, %bb.n ], [ 0, %.peel.next.i ] ; 2 uses
  %12 = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.by, %bb.m ], [ %.promoted.i.i, %bb.l ], [ %i.cc, %bb.o ], [ %i.bz, %bb.n ], [ %i.bz, %.peel.next.i ] ; 5 uses
  %i.cd = load i32, ptr %i.h, align 8, !tbaa !334
  %i.ce = icmp eq i32 %i.cd, 11
  %.not.i.i15.i = icmp eq ptr %12, %i.j
  %or.cond.i = select i1 %i.ce, i1 true, i1 %.not.i.i15.i
  br i1 %or.cond.i, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i
  %.sroa.4.0..sroa_idx.i.i.peel.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.cf = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i.i, i64 %11) ; 2 uses
  %.not.i.peel.i.i.i = icmp eq ptr %12, %6
  br i1 %.not.i.peel.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i.i
  %.09.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.split.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i ]
  %.sroa.02.08.i.pn.i.i.i = phi ptr [ %.sroa.02.08.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %12, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.02.08.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i.i, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !24
  %i.cg = add i64 %.sroa.4.0.copyload.i.i.i.i.i, %.09.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.02.08.i.i.i.i, %6
  br i1 %.not.i.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !6

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i: ; preds = %.lr.ph.split.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.cg, %.lr.ph.split.i.i.i.i ]
  %.0.lcssa.i.i.i.fr.i = freeze i64 %.0.lcssa.i.i.i.i
  %i.ch = icmp eq i64 %.0.lcssa.i.i.i.fr.i, 0
  br i1 %i.ch, label %bb.p, label %bb.b

.thread93:                                        ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

.thread96:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.q

bb.p:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, %_ZNK5boost6system10error_codecvbEv.exit.thread17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.not.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %.thread96, %bb.p
  %i.ci = icmp eq i64 %.pr, 1
  br i1 %i.ci, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_code8categoryEv.exit.thread.i

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.q
  %i.cj = load i32, ptr %8, align 8, !tbaa !180   ; 2 uses
  %.not110 = icmp eq i32 %i.cj, 0
  br i1 %.not110, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %.thread104

.thread104:                                       ; preds = %_ZNK5boost6system10error_codecvbEv.exit
  %i.ck = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !44, !noalias !338 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !30, !noalias !338
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !338
  invoke void %i.co(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i32 noundef %i.cj)
          to label %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit unwind label %.loopexit112, !inline_history !8

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %.thread93, %bb.p, %_ZNK5boost6system10error_codecvbEv.exit
  %i.cp = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !66 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !89, !range !60, !noundef !61
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !range !60
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond.i.i = select i1 %i.cs, i1 %i.cv, i1 false
  br i1 %or.cond.i.i, label %bb.r, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i

bb.r:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %4, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr @.str.19, ptr %5, align 8, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.20, ptr %i.cw, align 8, !tbaa !110
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 592, ptr %i.cx, align 8, !tbaa !111
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 48, ptr %i.cy, align 4, !tbaa !112
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #30
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.body

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !91
  invoke void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.db)
          to label %.critedge22 unwind label %bb.ad

_ZNK5boost6system10error_code8categoryEv.exit.thread.i: ; preds = %bb.q
  %i.dc = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !27, !noalias !339 ; 2 uses
  %i.de = load i32, ptr %8, align 8, !tbaa !27, !noalias !339
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !30, !noalias !339
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !339
  invoke void %i.dh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(52) %i.dd, i32 noundef %i.de)
          to label %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit unwind label %.loopexit112, !inline_history !8

_ZNK5boost6system10error_code7messageB5cxx11Ev.exit: ; preds = %.thread104, %_ZNK5boost6system10error_code8categoryEv.exit.thread.i
  %i.di = phi ptr [ %i.ck, %.thread104 ], [ %i.dc, %_ZNK5boost6system10error_code8categoryEv.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZN5boost5beast9unit_test6detail11make_reasonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_RKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.29, i32 noundef 127)
          to label %.noexc29 unwind label %bb.ae

.noexc29:                                         ; preds = %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc29
  %i.dj = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.q
  br i1 %i.dk, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.dl = load i64, ptr %i.q, align 8, !tbaa !27
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #32
  br label %.critedge

bb.v:                                             ; preds = %.noexc29
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.q
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.v
  %i.dq = load i64, ptr %i.q, align 8, !tbaa !27
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.body30

.critedge:                                        ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ds = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.p
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.du = load i64, ptr %i.p, align 8, !tbaa !27
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.dw = load ptr, ptr %i.aa, align 8, !tbaa !144 ; 2 uses
  %i.dx = load ptr, ptr %i.ac, align 8, !tbaa !145
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  store ptr %i.r, ptr %10, align 8, !tbaa !22, !alias.scope !340
  store i64 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !340
  store i8 0, ptr %i.r, align 8, !tbaa !27, !alias.scope !340
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ea)
          to label %.preheader.preheader.i unwind label %bb.w

.preheader.preheader.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = load i64, ptr %i.s, align 8, !tbaa !28, !alias.scope !340
  %i.ec = sub i64 4611686018427387903, %i.eb
  %i.ed = icmp ult i64 %i.ec, %i.ea
  br i1 %i.ed, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %.preheader.preheader.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #30
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.x
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %.preheader.preheader.i
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dw, i64 noundef %i.ea)
          to label %_ZN5boost5beast17buffers_to_stringINS_4asio12const_bufferEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %.loopexit.i ; 0 uses

.loopexit.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %bb.x
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.w
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ee, %bb.w ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.eg = load ptr, ptr %10, align 8, !tbaa !26, !alias.scope !340 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.r
  br i1 %i.eh, label %.body37, label %.body37.sink.split

_ZN5boost5beast17buffers_to_stringINS_4asio12const_bufferEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ei = load ptr, ptr %10, align 8, !tbaa !26
  %i.ej = load i64, ptr %i.s, align 8, !tbaa !28
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.ei, i64 noundef %i.ej)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit113 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN5boost5beast17buffers_to_stringINS_4asio12const_bufferEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30
  %i.em = getelementptr i8, ptr %i.el, i64 -24
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 240
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !147 ; 6 uses
  %.not.i.i.i69 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i69, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.z:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc70 unwind label %.loopexit.split-lp114

.noexc70:                                         ; preds = %bb.z
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = load i8, ptr %i.er, align 8, !tbaa !153
  %.not.i1.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.i1.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 67
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eq)
          to label %.noexc71 unwind label %.loopexit113

.noexc71:                                         ; preds = %bb.ab
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = invoke noundef signext i8 %i.ex(ptr noundef nonnull align 8 dereferenceable(570) %i.eq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit113, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc71, %bb.aa
  %.0.i.i.i = phi i8 [ %i.eu, %bb.aa ], [ %i.ey, %.noexc71 ]
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i8 noundef signext %.0.i.i.i)
          to label %.noexc73 unwind label %.loopexit113

.noexc73:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit113 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc73
  %i.fb = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.r
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.fd = load i64, ptr %i.r, align 8, !tbaa !27
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.critedge22

bb.ac:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke, %bb.g, %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit112:                                     ; preds = %.thread104, %_ZNK5boost6system10error_code8categoryEv.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.ae:                                            ; preds = %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.body30:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %bb.ae
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.fh, %bb.ae ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ] ; 2 uses
  %i.fi = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.p
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.body30
  %i.fk = load i64, ptr %i.p, align 8, !tbaa !27
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %.body30, %.loopexit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %.pn = phi { ptr, i32 } [ %eh.lpad-body31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %lpad.loopexit, %.loopexit112 ], [ %eh.lpad-body31, %.body30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.body

.loopexit113:                                     ; preds = %_ZN5boost5beast17buffers_to_stringINS_4asio12const_bufferEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %bb.ab, %.noexc71, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc73
  %lpad.loopexit115 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp114:                            ; preds = %bb.z
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp114, %.loopexit113
  %lpad.phi117 = phi { ptr, i32 } [ %lpad.loopexit115, %.loopexit113 ], [ %lpad.loopexit.split-lp116, %.loopexit.split-lp114 ] ; 2 uses
  %i.fm = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.r
  br i1 %i.fn, label %.body37, label %.body37.sink.split

.body37.sink.split:                               ; preds = %bb.af, %bb.y
  %.sink = phi ptr [ %i.eg, %bb.y ], [ %i.fm, %bb.af ]
  %.pn19.ph = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.y ], [ %lpad.phi117, %bb.af ]
  %i.fo = load i64, ptr %i.r, align 8, !tbaa !27
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fp) #32
  br label %.body37

.body37:                                          ; preds = %.body37.sink.split, %bb.af, %bb.y
  %.pn19 = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.y ], [ %lpad.phi117, %bb.af ], [ %.pn19.ph, %.body37.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.body

.critedge22:                                      ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http12basic_parserILb1EEE, i64 16), ptr %7, align 8, !tbaa !30
  %i.fq = load ptr, ptr %i.n, align 8, !tbaa !137 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i50, label %_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %.critedge22
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #32, !inline_history !181
  br label %_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit

_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit: ; preds = %.critedge22, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.079.0133, i64 48 ; 2 uses
  %.not109 = icmp eq ptr %i.fr, %i.z
  br i1 %.not109, label %.loopexit, label %.lr.ph

.body:                                            ; preds = %bb.ad, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %.body37, %bb.ac
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %.body37 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.ff, %bb.ac ], [ %i.fg, %bb.ad ], [ %i.cz, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http12basic_parserILb1EEE, i64 16), ptr %7, align 8, !tbaa !30
  %i.fs = load ptr, ptr %i.n, align 8, !tbaa !137 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i51, label %_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit53, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i52

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i52: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.fs) #32, !inline_history !181
  br label %_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit53

_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit53: ; preds = %.body, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  resume { ptr, i32 } %.pn19.pn

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph135, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http11parser_test11testParser2INS2_12bench_parserILb0ENS1_18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEEENS1_12basic_fieldsIS7_EEEEEEvmRKSt6vectorINS0_17basic_flat_bufferIS7_EESaISF_EE(ptr noundef nonnull align 8 dereferenceable(864) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.boost::beast::unit_test::suite::abort_exception", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"class.boost::beast::buffers_suffix", align 8 ; 15 uses
  %7 = alloca %"struct.boost::beast::http::parser_test::bench_parser.37", align 8 ; 17 uses
  %8 = alloca %"class.boost::system::error_code", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.not134 = icmp eq i64 %1, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 76
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %2, align 8, !tbaa !123
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %._crit_edge, label %.lr.ph135.split

.loopexit:                                        ; preds = %_ZN5boost5beast4http12basic_parserILb0EED2Ev.exit, %.lr.ph135.split
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph135.split, !llvm.loop !341

.lr.ph135.split:                                  ; preds = %.lr.ph135, %.loopexit
  %.in = phi i64 [ %i.x, %.loopexit ], [ %1, %.lr.ph135 ]
  %i.x = add i64 %.in, -1                         ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !123    ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %.not109132 = icmp eq ptr %i.y, %i.z
  br i1 %.not109132, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph135.split, %_ZN5boost5beast4http12basic_parserILb0EED2Ev.exit
  %.sroa.079.0133 = phi ptr [ %i.fr, %_ZN5boost5beast4http12basic_parserILb0EED2Ev.exit ], [ %i.y, %.lr.ph135.split ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i8 1, ptr %i.c, align 8, !tbaa !164
  store i64 8388608, ptr %i.d, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store i16 0, ptr %i.g, align 4, !tbaa !351
  store i32 0, ptr %i.h, align 8, !tbaa !352
  store i32 0, ptr %i.i, align 4, !tbaa !353
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http11parser_test12bench_parserILb0ENS1_18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEEENS1_12basic_fieldsIS6_EEEE, i64 16), ptr %7, align 8, !tbaa !30
  store i32 -1, ptr %i.f, align 8, !tbaa !354
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.079.0133, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !144 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.079.0133, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !145
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %i.ab, ptr %6, align 8, !tbaa !64
  store i64 %i.ag, ptr %.sroa.577.0..sroa_idx, align 8, !tbaa !24
  store ptr %6, ptr %i.j, align 8, !tbaa !177
  store i64 0, ptr %i.k, align 8, !tbaa !178
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i, %.lr.ph
  %.sroa.4.0.copyload.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.peel.i.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i ], [ %i.ag, %.lr.ph ] ; 6 uses
  %i.ah = phi i64 [ %11, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i ], [ 0, %.lr.ph ] ; 4 uses
  %i.ai = phi ptr [ %12, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i ], [ %6, %.lr.ph ] ; 7 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %.thread93, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp eq ptr %i.ai, %6
  br i1 %i.ak, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i, label %.lr.ph.i.i.i.i54

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i: ; preds = %bb.c
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.ai, align 8, !tbaa !64
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.am = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke

.lr.ph.i.i.i.i54:                                 ; preds = %bb.c
  %i.an = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i, i64 %i.ah)
  br label %.lr.ph.split.i.i.i.i57

.lr.ph.split.i.i.i.i57:                           ; preds = %.lr.ph.split.i.i.i.i57, %.lr.ph.i.i.i.i54
  %.09.i.i.i.i58 = phi i64 [ %i.ao, %.lr.ph.split.i.i.i.i57 ], [ %i.an, %.lr.ph.i.i.i.i54 ]
  %.sroa.02.08.i.pn.i.i.i59 = phi ptr [ %.sroa.02.08.i.i.i.i60, %.lr.ph.split.i.i.i.i57 ], [ %i.ai, %.lr.ph.i.i.i.i54 ] ; 2 uses
  %.sroa.02.08.i.i.i.i60 = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i.i59, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i61 = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i.i59, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i62 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i61, align 8, !tbaa !24
  %i.ao = add i64 %.sroa.4.0.copyload.i.i.i.i.i62, %.09.i.i.i.i58 ; 8 uses
  %.not.i.i.i.i63 = icmp eq ptr %.sroa.02.08.i.i.i.i60, %6
  br i1 %.not.i.i.i.i63, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i64, label %.lr.ph.split.i.i.i.i57, !llvm.loop !6

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i64: ; preds = %.lr.ph.split.i.i.i.i57
  %i.ap = icmp ult i64 %i.ao, 8193
  br i1 %i.ap, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i.i, label %bb.f

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i.i: ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %spec.select.i.i.i.i.peel.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %.pn.i.i.i.peel.i.i = sub nuw i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i.i.peel.i.i ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %.pn.i.i.i.peel.i.i, i64 8192) ; 3 uses
  %.not.i.i.i.peel.not.i.i = icmp ugt i64 %.sroa.4.0.copyload.i.i, %i.ah
  br i1 %.not.i.i.i.peel.not.i.i, label %bb.d, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i

bb.d:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i.i
  %.sroa.0.0.copyload1.i.i.i.peel.i.i = load ptr, ptr %i.ai, align 8, !tbaa !64
  %.pn3.i.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i.peel.i.i, i64 %spec.select.i.i.i.i.peel.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.pn3.i.i.i.peel.i.i, i64 %i.aq, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i: ; preds = %bb.d, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i.i
  %.not.i.i.peel.i.i = icmp ugt i64 %.pn.i.i.i.peel.i.i, 8191
  br i1 %.not.i.i.peel.i.i, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i, label %.lr.ph.split.i.i.peel.next.i.i

.lr.ph.split.i.i.peel.next.i.i:                   ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i
  %i.ar = sub nuw nsw i64 8192, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  br label %.lr.ph.split.i.i.i24.i

.lr.ph.split.i.i.i24.i:                           ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i, %.lr.ph.split.i.i.peel.next.i.i
  %.sroa.05.017.i.i.i.i = phi ptr [ %i.au, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i ], [ %i.as, %.lr.ph.split.i.i.peel.next.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i = phi i64 [ %i.av, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i ], [ %i.ar, %.lr.ph.split.i.i.peel.next.i.i ] ; 2 uses
  %.sroa.09.015.i.i.pn.i.i = phi ptr [ %.sroa.09.015.i.i.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i ], [ %i.ai, %.lr.ph.split.i.i.peel.next.i.i ] ; 3 uses
  %.sroa.09.015.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i.pn.i.i, i64 16 ; 2 uses
  %.not21.i.i.i.i = icmp eq ptr %.sroa.09.015.i.i.pn.i.i, %6
  br i1 %.not21.i.i.i.i, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i.i

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i.i24.i
  %.sroa.4.0..sroa_idx.i.i.i.i25.i = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i.pn.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i26.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i25.i, align 8, !tbaa !24 ; 2 uses
  %i.at = call i64 @llvm.umin.i64(i64 %.sroa.6.016.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i26.i) ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i26.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i.i
  %.sroa.0.0.copyload1.i.i.i.i.i = load ptr, ptr %.sroa.09.015.i.i.i.i, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.05.017.i.i.i.i, ptr align 1 %.sroa.0.0.copyload1.i.i.i.i.i, i64 %i.at, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i: ; preds = %bb.e, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i.i, i64 %i.at
  %i.av = sub nuw nsw i64 %.sroa.6.016.i.i.i.i, %i.at ; 2 uses
  %.not.i.i.i27.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i27.i, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i, label %.lr.ph.split.i.i.i24.i, !llvm.loop !342

_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i.i, %.lr.ph.split.i.i.i24.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i.i
  %i.aw = invoke noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr nonnull %i.a, i64 %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.noexc66 unwind label %bb.ac

.noexc66:                                         ; preds = %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.noexc

bb.f:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i64
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !355
  %i.ay = icmp ugt i64 %i.ao, %i.ax
  br i1 %i.ay, label %bb.g, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.az = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #34
          to label %.noexc67 unwind label %bb.ac

.noexc67:                                         ; preds = %bb.g
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !137 ; 2 uses
  store ptr %i.az, ptr %i.n, align 8, !tbaa !137
  %.not.i.i.i.i28.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i28.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.noexc67
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #32
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.noexc67
  store i64 %i.ao, ptr %i.m, align 8, !tbaa !355
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !177
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i, %bb.f
  %i.bb = phi ptr [ %i.ai, %bb.f ], [ %.pre.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ]
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !137
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.05.017.i.i.i = phi ptr [ %i.bj, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %i.bc, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i = phi i64 [ %i.bk, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %i.ao, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.09.015.i.i.i = phi ptr [ %i.bl, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %i.bb, %.lr.ph.i.i.i ] ; 5 uses
  %.not21.i.i.i = icmp eq ptr %.sroa.09.015.i.i.i, %i.j
  br i1 %.not21.i.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i.i.i
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.be = icmp eq ptr %.sroa.09.015.i.i.i, %i.bd
  %.sroa.0.0.copyload1.i.i.i.i = load ptr, ptr %.sroa.09.015.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !24 ; 3 uses
  br i1 %i.be, label %bb.i, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load i64, ptr %i.k, align 8, !tbaa !178
  %spec.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %.sroa.4.0.copyload.i.i.i.i) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i.i, i64 %spec.select.i.i.i.i.i
  %i.bh = sub i64 %.sroa.4.0.copyload.i.i.i.i, %spec.select.i.i.i.i.i
  br label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pn3.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %.sroa.0.0.copyload1.i.i.i.i, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.bh, %bb.i ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.h ] ; 2 uses
  %i.bi = call i64 @llvm.umin.i64(i64 %.sroa.6.016.i.i.i, i64 %.pn.i.i.i.i) ; 3 uses
  %.not.i.i.i31.i = icmp eq i64 %.pn.i.i.i.i, 0
  br i1 %.not.i.i.i31.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.05.017.i.i.i, ptr align 1 %.pn3.i.i.i.i, i64 %i.bi, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.j, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i, i64 %i.bi
  %i.bk = sub nuw i64 %.sroa.6.016.i.i.i, %i.bi   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i.i, i64 16
  %.not.i.i32.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i32.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i, label %.lr.ph.split.i.i.i, !llvm.loop !7

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %.lr.ph.split.i.i.i
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !137
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke: ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i
  %i.bn = phi ptr [ %i.bm, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i ], [ %i.al, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i ]
  %i.bo = phi i64 [ %i.ao, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i ], [ %i.am, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i ]
  %i.bp = invoke noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr %i.bn, i64 %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke, %.noexc66
  %.1.i.ph = phi i64 [ %i.bp, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit.i.invoke ], [ %i.aw, %.noexc66 ] ; 4 uses
  %.pr = load i64, ptr %i.l, align 8, !tbaa !41   ; 3 uses
  %i.bq = and i64 %.pr, 1
  %.not.i.i.i = icmp eq i64 %i.bq, 0              ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread17.i, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.br = icmp eq i64 %.pr, 1
  %i.bs = load i32, ptr %8, align 8
  %.not.i = icmp eq i32 %i.bs, 0
  %or.cond = select i1 %i.br, i1 %.not.i, i1 false
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread17.i, label %.thread96

_ZNK5boost6system10error_codecvbEv.exit.thread17.i: ; preds = %bb.k, %.noexc
  %i.bt = icmp eq i64 %.1.i.ph, 0
  br i1 %i.bt, label %bb.p, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread17.i
  %.promoted.i.i = load ptr, ptr %i.j, align 8    ; 5 uses
  %.promoted16.i.i = load i64, ptr %i.k, align 8  ; 3 uses
  %.not11.i.peel.i = icmp eq ptr %.promoted.i.i, %i.j
  br i1 %.not11.i.peel.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %.sroa.2.0..sroa_idx.i.peel.i = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 8
  %.sroa.2.0.copyload.i.peel.i = load i64, ptr %.sroa.2.0..sroa_idx.i.peel.i, align 8, !tbaa !24
  %i.bu = sub i64 %.sroa.2.0.copyload.i.peel.i, %.promoted16.i.i ; 2 uses
  %i.bv = icmp ult i64 %.1.i.ph, %i.bu            ; 2 uses
  %i.bw = add i64 %.promoted16.i.i, %.1.i.ph      ; 2 uses
  %storemerge.i.peel.i = select i1 %i.bv, i64 %i.bw, i64 0
  store i64 %storemerge.i.peel.i, ptr %i.k, align 8, !tbaa !178
  br i1 %i.bv, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = sub nuw i64 %.1.i.ph, %i.bu             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 16 ; 3 uses
  store ptr %i.by, ptr %i.j, align 8, !tbaa !177
  %.not.i.peel.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.peel.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.m, %bb.o
  %.0813.i.i = phi i64 [ %i.cb, %bb.o ], [ %i.bx, %bb.m ] ; 4 uses
  %i.bz = phi ptr [ %i.cc, %bb.o ], [ %i.by, %bb.m ] ; 5 uses
  %.not11.i.i = icmp eq ptr %i.bz, %i.j
  br i1 %.not11.i.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %bb.n

bb.n:                                             ; preds = %.peel.next.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !24 ; 2 uses
  %i.ca = icmp ult i64 %.0813.i.i, %.sroa.2.0.copyload.i.i ; 2 uses
  %storemerge.i.i = select i1 %i.ca, i64 %.0813.i.i, i64 0
  store i64 %storemerge.i.i, ptr %i.k, align 8, !tbaa !178
  br i1 %i.ca, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = sub nuw i64 %.0813.i.i, %.sroa.2.0.copyload.i.i ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  store ptr %i.cc, ptr %i.j, align 8, !tbaa !177
  %.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, label %.peel.next.i, !llvm.loop !343

_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i: ; preds = %bb.o, %bb.n, %.peel.next.i, %bb.m, %bb.l, %.lr.ph.i.i
  %11 = phi i64 [ %.promoted16.i.i, %.lr.ph.i.i ], [ 0, %bb.m ], [ %i.bw, %bb.l ], [ 0, %bb.o ], [ %.0813.i.i, %bb.n ], [ 0, %.peel.next.i ] ; 2 uses
  %12 = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.by, %bb.m ], [ %.promoted.i.i, %bb.l ], [ %i.cc, %bb.o ], [ %i.bz, %bb.n ], [ %i.bz, %.peel.next.i ] ; 5 uses
  %i.cd = load i32, ptr %i.h, align 8, !tbaa !352
  %i.ce = icmp eq i32 %i.cd, 11
  %.not.i.i15.i = icmp eq ptr %12, %i.j
  %or.cond.i = select i1 %i.ce, i1 true, i1 %.not.i.i15.i
  br i1 %or.cond.i, label %bb.p, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i
  %.sroa.4.0..sroa_idx.i.i.peel.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.cf = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i.i, i64 %11) ; 2 uses
  %.not.i.peel.i.i.i = icmp eq ptr %12, %6
  br i1 %.not.i.peel.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i.i
  %.09.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.split.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i ]
  %.sroa.02.08.i.pn.i.i.i = phi ptr [ %.sroa.02.08.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %12, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.02.08.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i.i, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !24
  %i.cg = add i64 %.sroa.4.0.copyload.i.i.i.i.i, %.09.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.02.08.i.i.i.i, %6
  br i1 %.not.i.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !6

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i: ; preds = %.lr.ph.split.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.cg, %.lr.ph.split.i.i.i.i ]
  %.0.lcssa.i.i.i.fr.i = freeze i64 %.0.lcssa.i.i.i.i
  %i.ch = icmp eq i64 %.0.lcssa.i.i.i.fr.i, 0
  br i1 %i.ch, label %bb.p, label %bb.b

.thread93:                                        ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

.thread96:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.q

bb.p:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit.i, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit.i, %_ZNK5boost6system10error_codecvbEv.exit.thread17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.not.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %.thread96, %bb.p
  %i.ci = icmp eq i64 %.pr, 1
  br i1 %i.ci, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_code8categoryEv.exit.thread.i

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.q
  %i.cj = load i32, ptr %8, align 8, !tbaa !180   ; 2 uses
  %.not110 = icmp eq i32 %i.cj, 0
  br i1 %.not110, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %.thread104

.thread104:                                       ; preds = %_ZNK5boost6system10error_codecvbEv.exit
  %i.ck = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !44, !noalias !356 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !30, !noalias !356
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !356
  invoke void %i.co(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i32 noundef %i.cj)
          to label %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit unwind label %.loopexit112, !inline_history !8

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %.thread93, %bb.p, %_ZNK5boost6system10error_codecvbEv.exit
  %i.cp = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !66 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !89, !range !60, !noundef !61
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !range !60
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond.i.i = select i1 %i.cs, i1 %i.cv, i1 false
  br i1 %or.cond.i.i, label %bb.r, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i

bb.r:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %4, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr @.str.19, ptr %5, align 8, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.20, ptr %i.cw, align 8, !tbaa !110
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 592, ptr %i.cx, align 8, !tbaa !111
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 48, ptr %i.cy, align 4, !tbaa !112
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #30
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.body

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !91
  invoke void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.db)
          to label %.critedge22 unwind label %bb.ad

_ZNK5boost6system10error_code8categoryEv.exit.thread.i: ; preds = %bb.q
  %i.dc = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !27, !noalias !357 ; 2 uses
  %i.de = load i32, ptr %8, align 8, !tbaa !27, !noalias !357
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !30, !noalias !357
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !357
  invoke void %i.dh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(52) %i.dd, i32 noundef %i.de)
          to label %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit unwind label %.loopexit112, !inline_history !8

_ZNK5boost6system10error_code7messageB5cxx11Ev.exit: ; preds = %.thread104, %_ZNK5boost6system10error_code8categoryEv.exit.thread.i
  %i.di = phi ptr [ %i.ck, %.thread104 ], [ %i.dc, %_ZNK5boost6system10error_code8categoryEv.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZN5boost5beast9unit_test6detail11make_reasonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_RKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.29, i32 noundef 127)
          to label %.noexc29 unwind label %bb.ae

.noexc29:                                         ; preds = %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc29
  %i.dj = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.q
  br i1 %i.dk, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.dl = load i64, ptr %i.q, align 8, !tbaa !27
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #32
  br label %.critedge

bb.v:                                             ; preds = %.noexc29
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.q
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.v
  %i.dq = load i64, ptr %i.q, align 8, !tbaa !27
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.body30

.critedge:                                        ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ds = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.p
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.du = load i64, ptr %i.p, align 8, !tbaa !27
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.dw = load ptr, ptr %i.aa, align 8, !tbaa !144 ; 2 uses
  %i.dx = load ptr, ptr %i.ac, align 8, !tbaa !145
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  store ptr %i.r, ptr %10, align 8, !tbaa !22, !alias.scope !358
  store i64 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !358
  store i8 0, ptr %i.r, align 8, !tbaa !27, !alias.scope !358
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ea)
          to label %.preheader.preheader.i unwind label %bb.w

.preheader.preheader.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = load i64, ptr %i.s, align 8, !tbaa !28, !alias.scope !358
  %i.ec = sub i64 4611686018427387903, %i.eb
  %i.ed = icmp ult i64 %i.ec, %i.ea
  br i1 %i.ed, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %.preheader.preheader.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #30
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.x
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %.preheader.preheader.i
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dw, i64 noundef %i.ea)
          to label %_ZN5boost5beast17buffers_to_stringINS_4asio12const_bufferEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %.loopexit.i ; 0 uses

.loopexit.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %bb.x
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.w
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ee, %bb.w ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.eg = load ptr, ptr %10, align 8, !tbaa !26, !alias.scope !358 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.r
  br i1 %i.eh, label %.body37, label %.body37.sink.split

_ZN5boost5beast17buffers_to_stringINS_4asio12const_bufferEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ei = load ptr, ptr %10, align 8, !tbaa !26
  %i.ej = load i64, ptr %i.s, align 8, !tbaa !28
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.ei, i64 noundef %i.ej)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit113 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN5boost5beast17buffers_to_stringINS_4asio12const_bufferEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30
  %i.em = getelementptr i8, ptr %i.el, i64 -24
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 240
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !147 ; 6 uses
  %.not.i.i.i69 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i69, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.z:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc70 unwind label %.loopexit.split-lp114

.noexc70:                                         ; preds = %bb.z
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = load i8, ptr %i.er, align 8, !tbaa !153
  %.not.i1.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.i1.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 67
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eq)
          to label %.noexc71 unwind label %.loopexit113

.noexc71:                                         ; preds = %bb.ab
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = invoke noundef signext i8 %i.ex(ptr noundef nonnull align 8 dereferenceable(570) %i.eq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit113, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc71, %bb.aa
end_hunk_0
