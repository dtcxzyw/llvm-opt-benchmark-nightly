Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/chunk_encode?download=true
inline.NumInlined: 3534
inline.NumDeleted: 1348
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5boost5beast9unit_test6detail11make_reasonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_RKT_PKci:bb.a

bb.q:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #33
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.o, %bb.p
  %storemerge.i.i = phi i8 [ %i.by, %bb.p ], [ %i.bw, %bb.o ]
  store i8 %storemerge.i.i, ptr %i.ax, align 1, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !47 ; 2 uses
  %i.cd = load i64, ptr %i.l, align 8, !tbaa !47
  %i.ce = sub i64 4611686018427387903, %i.cd
  %i.cf = icmp ult i64 %i.ce, %i.cc
  br i1 %i.cf, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.r:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #34
          to label %.noexc26 unwind label %bb.t

.noexc26:                                         ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.cg = load ptr, ptr %4, align 8, !tbaa !45
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cg, i64 noundef %i.cc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.ci = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.au
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ck = load i64, ptr %i.au, align 8, !tbaa !46
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.cm = load i64, ptr %i.l, align 8, !tbaa !47
  %i.cn = icmp eq i64 %i.cm, 4611686018427387903
  br i1 %i.cn, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit20, %._crit_edge67
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #34
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.21, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit31 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i17
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.r
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.au
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.t
  %i.ct = load i64, ptr %i.au, align 8, !tbaa !46
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28
  ret void

bb.u:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.cp, %bb.s ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  %i.cv = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.b
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.u
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !46
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost5beast4testL4fuzzILm200ENS1_9fuzz_randEZZNS0_4http17chunk_encode_test24testParseChunkExtensionsEvENKUlNS_4core17basic_string_viewIcEEE_clES8_EUlS8_E_EEvRKNS_14static_strings19basic_static_stringIXT_EcSt11char_traitsIcEEEmmRT0_RKT1_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(202) %0, i64 noundef range(i64 0, 6) %1, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.std::uniform_int_distribution.154", align 8 ; 6 uses
  %5 = alloca %"class.std::uniform_int_distribution.154", align 8 ; 6 uses
  %6 = alloca %"class.std::uniform_int_distribution.154", align 8 ; 6 uses
  %7 = alloca %"class.std::uniform_int_distribution", align 4 ; 6 uses
  %8 = alloca %"class.std::uniform_int_distribution.154", align 8 ; 6 uses
  %9 = alloca %"class.std::uniform_int_distribution", align 4 ; 6 uses
  %10 = alloca %"class.boost::static_strings::basic_static_string", align 1 ; 17 uses
  %11 = alloca %"class.std::geometric_distribution", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(202) %10, ptr noundef nonnull align 1 dereferenceable(202) %0, i64 202, i1 false)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  ret void

bb.c:                                             ; preds = %bb.a, %.thread
  %.038 = phi i64 [ 5, %bb.a ], [ %i.bl, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store i32 0, ptr %9, align 4, !tbaa !254
  store i32 3, ptr %i.a, align 4, !tbaa !255
  %i.i = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  switch i32 %i.i, label %bb.v [
    i32 0, label %bb.d
    i32 1, label %bb.i
    i32 2, label %bb.m
    i32 3, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %10, align 1, !tbaa !243    ; 2 uses
  %.not29 = icmp ult i8 %i.j, -56
  br i1 %.not29, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = zext i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store i64 0, ptr %8, align 8, !tbaa !257
  store i64 %i.k, ptr %i.f, align 8, !tbaa !258
  %i.l = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i32 0, ptr %7, align 4, !tbaa !254
  store i32 255, ptr %i.g, align 4, !tbaa !255
  %i.m = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.n = trunc i32 %i.m to i8
  %i.o = load i8, ptr %10, align 1, !tbaa !243    ; 3 uses
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = icmp ugt i64 %i.l, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.109) #34
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i8 %i.o, -56
  br i1 %i.r, label %bb.h, label %_ZN5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE6insertEmmc.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.110) #34
  unreachable

_ZN5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE6insertEmmc.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l ; 3 uses
  %reass.sub39 = sub nsw i64 %i.p, %i.l
  %i.t = add nsw i64 %reass.sub39, 1
  %i.u = getelementptr i8, ptr %i.s, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.t, i1 false)
  store i8 %i.n, ptr %i.s, align 1
  %i.v = add i8 %i.o, 1
  store i8 %i.v, ptr %10, align 1, !tbaa !243
  br label %bb.v

bb.i:                                             ; preds = %bb.c
  %i.w = load i8, ptr %10, align 1, !tbaa !243    ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = zext i8 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.z = add nsw i64 %i.y, -1
  store i64 0, ptr %6, align 8, !tbaa !257
  store i64 %i.z, ptr %i.e, align 8, !tbaa !258
  %i.aa = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = load i8, ptr %10, align 1, !tbaa !243   ; 2 uses
  %i.ac = zext i8 %i.ab to i64                    ; 3 uses
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.k, label %_ZNK5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE13capped_lengthEmm.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.109) #34
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE13capped_lengthEmm.exit.i: ; preds = %bb.j
  %13 = icmp ne i64 %i.aa, %i.ac                  ; 3 uses
  %.sroa.speculated.i.i = zext i1 %13 to i64
  %14 = add nuw nsw i64 %i.ac, 1                  ; 2 uses
  %15 = add nuw nsw i64 %i.aa, %.sroa.speculated.i.i ; 2 uses
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %_ZN5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE5eraseEmm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE13capped_lengthEmm.exit.i
  %i.ae = sub nsw i64 %14, %15
  %.sroa.speculated.i.i.sroa.sel.idx.sroa.sel.idx = zext i1 %13 to i64
  %.sroa.speculated.i.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %12, i64 %.sroa.speculated.i.i.sroa.sel.idx.sroa.sel.idx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %12, ptr nonnull align 1 %.sroa.speculated.i.i.sroa.sel.idx.sroa.sel, i64 %i.ae, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE5eraseEmm.exit

_ZN5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE5eraseEmm.exit: ; preds = %_ZNK5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE13capped_lengthEmm.exit.i, %bb.l
  %.neg = sext i1 %13 to i8
  %17 = add i8 %i.ab, %.neg
  store i8 %17, ptr %10, align 1, !tbaa !243
  br label %bb.v

bb.m:                                             ; preds = %bb.c
  %i.af = load i8, ptr %10, align 1, !tbaa !243   ; 2 uses
  %i.ag = icmp ult i8 %i.af, 2
  br i1 %i.ag, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = zext i8 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ai = add nsw i64 %i.ah, -2
  store i64 0, ptr %5, align 8, !tbaa !257
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !258
  %i.aj = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.aj   ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !46
  %i.am = getelementptr i8, ptr %i.ak, i64 1      ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !46
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !46
  store i8 %i.al, ptr %i.am, align 1, !tbaa !46
  br label %bb.v

bb.o:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %10, align 1, !tbaa !243
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store <2 x double> <double 5.000000e-01, double f0xBFE62E42FEFA39EF>, ptr %11, align 16, !tbaa !693
  %i.aq = call noundef i64 @_ZNSt22geometric_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %11)
  %i.ar = load i8, ptr %10, align 1, !tbaa !243
  %i.as = zext i8 %i.ar to i64                    ; 2 uses
  %i.at = sub nsw i64 200, %i.as
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.aq) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.au = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.au, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.av = add nsw i64 %i.as, -1
  store i64 0, ptr %4, align 8, !tbaa !257
  store i64 %i.av, ptr %i.b, align 8, !tbaa !258
  %i.aw = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ax = getelementptr i8, ptr %i.c, i64 %i.aw   ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !46
  %i.ba = load i8, ptr %10, align 1, !tbaa !243   ; 2 uses
  %i.bb = zext i8 %i.ba to i64                    ; 3 uses
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.109) #34
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = sub nsw i64 200, %i.bb
  %i.be = icmp ugt i64 %.sroa.speculated, %i.bd
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.110) #34
  unreachable

bb.u:                                             ; preds = %bb.s
  %reass.sub = sub nsw i64 %i.bb, %i.aw
  %i.bf = add nsw i64 %reass.sub, 1
  %i.bg = getelementptr i8, ptr %i.ax, i64 %.sroa.speculated
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.ax, i64 %i.bf, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 %i.az, i64 %.sroa.speculated, i1 false)
  %i.bh = trunc i64 %.sroa.speculated to i8
  %i.bi = add i8 %i.ba, %i.bh
  store i8 %i.bi, ptr %10, align 1, !tbaa !243
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n, %_ZN5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE5eraseEmm.exit, %_ZN5boost14static_strings19basic_static_stringILm200EcSt11char_traitsIcEE6insertEmmc.exit, %bb.c
  %i.bj = load i8, ptr %10, align 1, !tbaa !243
  %i.bk = zext i8 %i.bj to i64
  call void @_ZZZN5boost5beast4http17chunk_encode_test24testParseChunkExtensionsEvENKUlNS_4core17basic_string_viewIcEEE_clES5_ENKUlS5_E_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.c, i64 %i.bk)
  br i1 %.not30, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  call fastcc void @_ZN5boost5beast4testL4fuzzILm200ENS1_9fuzz_randEZZNS0_4http17chunk_encode_test24testParseChunkExtensionsEvENKUlNS_4core17basic_string_viewIcEEE_clES8_EUlS8_E_EEvRKNS_14static_strings19basic_static_stringIXT_EcSt11char_traitsIcEEEmmRT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(202) %10, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.v, %bb.w, %bb.o, %bb.m, %bb.i, %bb.d
  %i.bl = add nsw i64 %.038, -1                   ; 2 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !692
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef %0) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr @.str.107, ptr %2, align 8, !tbaa !125
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.108, ptr %i.a, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1026, ptr %i.b, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 43, ptr %i.c, align 4, !tbaa !128
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #34
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #32 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt12length_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt12length_errorED2Ev) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.b
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 16), ptr %0, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 64), ptr %i.a, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 104), ptr %i.b, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !129
  %i.h = shufflevector <2 x ptr> %i.g, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !129
  %i.i = load <2 x i32>, ptr %i.e, align 8, !tbaa !101
  store <2 x i32> %i.i, ptr %i.d, align 8, !tbaa !101
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12length_errorED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !3 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #32
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost10wrapexceptISt12length_errorE5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c) #32, !inline_history !696
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.d, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.c unwind label %.body, !inline_history !694

.body:                                            ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #32, !inline_history !696
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 16), ptr %i.a, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 64), ptr %i.b, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 104), ptr %i.d, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.n)
          to label %_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit7

_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #32, !inline_history !695
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit7, %.body
  %.pn = phi { ptr, i32 } [ %i.o, %_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit7 ], [ %i.k, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost10wrapexceptISt12length_errorE7rethrowEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #32 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt12length_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt12length_errorED2Ev) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.b
end_hunk_0
