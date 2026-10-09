Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/basic_parser?download=true
inline.NumInlined: 8390
inline.NumDeleted: 1479
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZZN5boost5beast4http17basic_parser_test8testFuzzEvENKUlNS_4core17basic_string_viewIcEEE1_clES5_:bb.a

bb.u:                                             ; preds = %bb.f
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.i
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.o
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.v
  %i.ew = load i64, ptr %i.o, align 8, !tbaa !42
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.u
  %.pn = phi { ptr, i32 } [ %i.es, %bb.u ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.et, %bb.v ] ; 2 uses
  %i.ey = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.b
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.fa = load i64, ptr %i.b, align 8, !tbaa !42
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.er, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.w:                                             ; preds = %_ZN5boost5beast4test9fuzz_randC2Ev.exit.i, %bb.m, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN5boost5beast4http11test_parserILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.fd = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ae
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.w
  %i.ff = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn8.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.fc, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !37
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !41
  %i.k = load i64, ptr %i.e, align 8, !tbaa !42
  store i64 %i.k, ptr %i.c, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !43
  store ptr %i.e, ptr %i.b, align 8, !tbaa !41
  store i64 0, ptr %i.m, align 8, !tbaa !43
  store i8 0, ptr %i.e, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost5beast4testL4fuzzILm100ENS1_9fuzz_randEZZNS0_4http17basic_parser_test8testFuzzEvENKUlNS_4core17basic_string_viewIcEEE_clES8_EUlS8_E_EEvRKNS_14static_strings19basic_static_stringIXT_EcSt11char_traitsIcEEEmmRT0_RKT1_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(102) %0, i64 noundef range(i64 0, 6) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %"class.std::uniform_int_distribution.177", align 8 ; 6 uses
  %5 = alloca %"class.std::uniform_int_distribution.177", align 8 ; 6 uses
  %6 = alloca %"class.std::uniform_int_distribution.177", align 8 ; 6 uses
  %7 = alloca %"class.std::uniform_int_distribution", align 4 ; 6 uses
  %8 = alloca %"class.std::uniform_int_distribution.177", align 8 ; 6 uses
  %9 = alloca %"class.std::uniform_int_distribution", align 4 ; 6 uses
  %10 = alloca %"class.boost::static_strings::basic_static_string", align 1 ; 17 uses
  %11 = alloca %"class.std::geometric_distribution", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(102) %10, ptr noundef nonnull align 1 dereferenceable(102) %0, i64 102, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.not30 = icmp eq i64 %1, 0
  %i.h = add nsw i64 %1, -1
  br label %bb.c

bb.b:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  ret void

bb.c:                                             ; preds = %bb.a, %.thread
  %.038 = phi i64 [ 4, %bb.a ], [ %i.bl, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i32 0, ptr %9, align 4, !tbaa !397
  store i32 3, ptr %i.a, align 4, !tbaa !398
  %i.i = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  switch i32 %i.i, label %bb.v [
    i32 0, label %bb.d
    i32 1, label %bb.i
    i32 2, label %bb.m
    i32 3, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %10, align 1, !tbaa !393    ; 2 uses
  %.not29 = icmp ult i8 %i.j, 100
  br i1 %.not29, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store i64 0, ptr %8, align 8, !tbaa !400
  store i64 %i.k, ptr %i.f, align 8, !tbaa !401
  %i.l = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i32 0, ptr %7, align 4, !tbaa !397
  store i32 255, ptr %i.g, align 4, !tbaa !398
  %i.m = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.n = trunc i32 %i.m to i8
  %i.o = load i8, ptr %10, align 1, !tbaa !393    ; 3 uses
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = icmp ugt i64 %i.l, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.416) #33
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i8 %i.o, 100
  br i1 %i.r, label %bb.h, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmmc.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.417) #33
  unreachable

_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmmc.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l ; 3 uses
  %reass.sub39 = sub nsw i64 %i.p, %i.l
  %i.t = add nsw i64 %reass.sub39, 1
  %i.u = getelementptr i8, ptr %i.s, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.t, i1 false)
  store i8 %i.n, ptr %i.s, align 1
  %i.v = add i8 %i.o, 1
  store i8 %i.v, ptr %10, align 1, !tbaa !393
  br label %bb.v

bb.i:                                             ; preds = %bb.c
  %i.w = load i8, ptr %10, align 1, !tbaa !393    ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = zext i8 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.z = add nsw i64 %i.y, -1
  store i64 0, ptr %6, align 8, !tbaa !400
  store i64 %i.z, ptr %i.e, align 8, !tbaa !401
  %i.aa = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = load i8, ptr %10, align 1, !tbaa !393   ; 2 uses
  %i.ac = zext i8 %i.ab to i64                    ; 3 uses
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.k, label %_ZNK5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE13capped_lengthEmm.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.416) #33
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE13capped_lengthEmm.exit.i: ; preds = %bb.j
  %13 = icmp ne i64 %i.aa, %i.ac                  ; 3 uses
  %.sroa.speculated.i.i = zext i1 %13 to i64
  %14 = add nuw nsw i64 %i.ac, 1                  ; 2 uses
  %15 = add nuw nsw i64 %i.aa, %.sroa.speculated.i.i ; 2 uses
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE5eraseEmm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE13capped_lengthEmm.exit.i
  %i.ae = sub nsw i64 %14, %15
  %.sroa.speculated.i.i.sroa.sel.idx.sroa.sel.idx = zext i1 %13 to i64
  %.sroa.speculated.i.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %12, i64 %.sroa.speculated.i.i.sroa.sel.idx.sroa.sel.idx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %12, ptr nonnull align 1 %.sroa.speculated.i.i.sroa.sel.idx.sroa.sel, i64 %i.ae, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE5eraseEmm.exit

_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE5eraseEmm.exit: ; preds = %_ZNK5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE13capped_lengthEmm.exit.i, %bb.l
  %.neg = sext i1 %13 to i8
  %17 = add i8 %i.ab, %.neg
  store i8 %17, ptr %10, align 1, !tbaa !393
  br label %bb.v

bb.m:                                             ; preds = %bb.c
  %i.af = load i8, ptr %10, align 1, !tbaa !393   ; 2 uses
  %i.ag = icmp ult i8 %i.af, 2
  br i1 %i.ag, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = zext i8 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ai = add nsw i64 %i.ah, -2
  store i64 0, ptr %5, align 8, !tbaa !400
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !401
  %i.aj = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.aj   ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !42
  %i.am = getelementptr i8, ptr %i.ak, i64 1      ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !42
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !42
  store i8 %i.al, ptr %i.am, align 1, !tbaa !42
  br label %bb.v

bb.o:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %10, align 1, !tbaa !393
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store <2 x double> <double 5.000000e-01, double f0xBFE62E42FEFA39EF>, ptr %11, align 16, !tbaa !1703
  %i.aq = call noundef i64 @_ZNSt22geometric_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %11)
  %i.ar = load i8, ptr %10, align 1, !tbaa !393
  %i.as = zext i8 %i.ar to i64                    ; 2 uses
  %i.at = sub nsw i64 100, %i.as
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.aq) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.au = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.au, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.av = add nsw i64 %i.as, -1
  store i64 0, ptr %4, align 8, !tbaa !400
  store i64 %i.av, ptr %i.b, align 8, !tbaa !401
  %i.aw = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ax = getelementptr i8, ptr %i.c, i64 %i.aw   ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !42
  %i.ba = load i8, ptr %10, align 1, !tbaa !393   ; 2 uses
  %i.bb = zext i8 %i.ba to i64                    ; 3 uses
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.416) #33
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = sub nsw i64 100, %i.bb
  %i.be = icmp ugt i64 %.sroa.speculated, %i.bd
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.417) #33
  unreachable

bb.u:                                             ; preds = %bb.s
  %reass.sub = sub nsw i64 %i.bb, %i.aw
  %i.bf = add nsw i64 %reass.sub, 1
  %i.bg = getelementptr i8, ptr %i.ax, i64 %.sroa.speculated
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.ax, i64 %i.bf, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 %i.az, i64 %.sroa.speculated, i1 false)
  %i.bh = trunc i64 %.sroa.speculated to i8
  %i.bi = add i8 %i.ba, %i.bh
  store i8 %i.bi, ptr %10, align 1, !tbaa !393
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n, %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE5eraseEmm.exit, %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmmc.exit, %bb.c
  %i.bj = load i8, ptr %10, align 1, !tbaa !393
  %i.bk = zext i8 %i.bj to i64
  call void @_ZZZN5boost5beast4http17basic_parser_test8testFuzzEvENKUlNS_4core17basic_string_viewIcEEE_clES5_ENKUlS5_E_clES5_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr nonnull %i.c, i64 %i.bk)
  br i1 %.not30, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  call fastcc void @_ZN5boost5beast4testL4fuzzILm100ENS1_9fuzz_randEZZNS0_4http17basic_parser_test8testFuzzEvENKUlNS_4core17basic_string_viewIcEEE_clES8_EUlS8_E_EEvRKNS_14static_strings19basic_static_stringIXT_EcSt11char_traitsIcEEEmmRT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(102) %10, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.v, %bb.w, %bb.o, %bb.m, %bb.i, %bb.d
  %i.bl = add nsw i64 %.038, -1                   ; 2 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !1702
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef %0) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr @.str.414, ptr %2, align 8, !tbaa !192
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.415, ptr %i.a, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1026, ptr %i.b, align 8, !tbaa !194
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 43, ptr %i.c, align 4, !tbaa !195
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #33
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZZN5boost5beast4http17basic_parser_test8testFuzzEvENKUlNS_4core17basic_string_viewIcEEE_clES5_ENKUlS5_E_clES5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %4 = alloca %"class.boost::beast::http::test_parser.60", align 8 ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !151
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 8388608, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store i32 8192, ptr %i.d, align 8, !tbaa !205
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i16 0, ptr %i.e, align 4, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 0, ptr %i.f, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 76
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http11test_parserILb0EEE, i64 16), ptr %4, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.k, align 8, !tbaa !43
  store i8 0, ptr %i.j, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 0, ptr %i.n, align 8, !tbaa !43
  store i8 0, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 0, ptr %i.q, align 8, !tbaa !43
  store i8 0, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 4 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 0, ptr %i.t, align 8, !tbaa !43
  store i8 0, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !171
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 3 uses
  store i64 1, ptr %i.x, align 8, !tbaa !172
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.z, align 8, !tbaa !173
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.g, align 4, !tbaa !208
  %i.ab = invoke noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http11test_parserILb0EEE, i64 16), ptr %4, align 8, !tbaa !33
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !196 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ad, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.ac, %bb.b ] ; 6 uses
  %i.ad = load ptr, ptr %.06.i.i.i, align 8, !tbaa !197 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !42
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !42
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #34
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #34
  %.not.i.i.i1 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.b
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !171
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !172
  %i.as = shl i64 %i.ar, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.as, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !171 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.w
  br i1 %i.au, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.av = load i64, ptr %i.x, align 8, !tbaa !172
  %i.aw = shl i64 %i.av, 3
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #34
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.c
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !41  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.s
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  %i.az = load i64, ptr %i.s, align 8, !tbaa !42
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #34, !inline_history !209
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !41  ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !42
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #34, !inline_history !209
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.m
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bh = load i64, ptr %i.m, align 8, !tbaa !42
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #34, !inline_history !209
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
end_hunk_0
