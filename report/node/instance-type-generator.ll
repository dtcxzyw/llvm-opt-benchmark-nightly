Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instance-type-generator?download=true
inline.NumInlined: 1289
inline.NumDeleted: 517
begin_hunk_0_@_ZN2v88internal6torque21ImplementationVisitor21GenerateInstanceTypesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %17 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %18 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %19 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %20 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %21 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %22 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %32 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %33 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %34 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %35 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %36 = alloca %"class.std::vector", align 8      ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.c, ptr %12, align 8
  %i.d = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #21
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117 unwind label %bb.bd ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.d, ptr %12, align 8
  store i64 16, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 16, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 67 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.h, ptr %14, align 8
  %i.i = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #21
          to label %bb.a unwind label %bb.be      ; 3 uses

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117
  store ptr %i.i, ptr %14, align 8
  store i64 16, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 16, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 0, ptr %i.k, align 1
  invoke void @_ZN2v88internal6torque17IncludeGuardScopeC1ERSoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 %14)
          to label %bb.b unwind label %bb.bf

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %14, align 8               ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.h, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.1, i64 noundef 83)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.2, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !170
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.r, ptr %6, align 8, !noalias !170
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 1, ptr %i.s, align 8, !noalias !170
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !noalias !170
  store float 1.000000e+00, ptr %i.u, align 8, !noalias !170
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !170
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque13GlobalContextES4_E4top_E) ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !170 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !noalias !170 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !170 ; 2 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i.i, label %.lr.ph.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  store ptr null, ptr %15, align 8, !alias.scope !170
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i

.lr.ph.i.i:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  br label %bb.c

._crit_edge.i.i125:                               ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i
  store ptr %i.ce, ptr %7, align 8, !noalias !170
  store ptr null, ptr %15, align 8, !alias.scope !170
  %i.af = icmp eq ptr %i.ce, %i.cd
  br i1 %i.af, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph94.i.i

.lr.ph94.i.i:                                     ; preds = %._crit_edge.i.i125
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 2 uses
  br label %bb.w

bb.c:                                             ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i, %.lr.ph.i.i
  %i.aj = phi ptr [ null, %.lr.ph.i.i ], [ %i.cd, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i ] ; 11 uses
  %.sroa.075.091.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.cf, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i ] ; 2 uses
  %i.ak = phi ptr [ null, %.lr.ph.i.i ], [ %i.ce, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i ] ; 16 uses
  %i.al = load ptr, ptr %.sroa.075.091.i.i, align 8, !noalias !170 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !noalias !170
  %i.ao = icmp eq i32 %i.an, 9
  br i1 %i.ao, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.i.i, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i

_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.i.i: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.aq = load i8, ptr %i.ap, align 8, !range !87, !noalias !170, !noundef !88
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !noalias !170
  br label %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i

bb.f:                                             ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.i.i
  %i.au = invoke noundef ptr @_ZNK2v88internal6torque9TypeAlias7ResolveEv(ptr noundef nonnull align 8 dereferenceable(152) %i.al)
          to label %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i unwind label %bb.h, !noalias !170

_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i55.i.i = phi ptr [ %i.at, %bb.e ], [ %i.au, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !170
  %.not.i56.i.i = icmp eq ptr %.0.i55.i.i, null
  br i1 %.not.i56.i.i, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i55.i.i, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !noalias !170
  %i.ax = icmp eq i32 %i.aw, 6
  br i1 %i.ax, label %bb.i, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %7, align 8, !noalias !170
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  store ptr %.0.i55.i.i, ptr %i.a, align 8, !noalias !170
  %i.az = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13unordered_mapIPKN2v88internal6torque9ClassTypeEPNS2_12_GLOBAL__N_116InstanceTypeTreeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.k, !noalias !170 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !170
  %.not33.i.i = icmp eq ptr %i.ba, null
  br i1 %.not33.i.i, label %bb.l, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %7, align 8, !noalias !170
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !170
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.bc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %bb.m unwind label %bb.q, !noalias !172 ; 7 uses

bb.m:                                             ; preds = %bb.l
  store ptr %.0.i55.i.i, ptr %i.bc, align 8, !noalias !172
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false), !noalias !172
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <4 x i32> <i32 2147483647, i32 -2147483648, i32 -1, i32 0>, ptr %i.be, align 8, !noalias !172
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store i32 0, ptr %i.bf, align 8, !noalias !172
  store ptr %i.bc, ptr %8, align 8, !alias.scope !171, !noalias !170
  store ptr %i.bc, ptr %i.az, align 8, !noalias !170
  %i.bg = load ptr, ptr %i.ae, align 8, !noalias !170
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.bg
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i: ; preds = %bb.m
  store i64 %i.bh, ptr %i.aj, align 8, !noalias !170
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.ad, align 8, !noalias !170
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bj = ptrtoint ptr %i.aj to i64
  %i.bk = ptrtoint ptr %i.ak to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.o, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.ak, ptr %7, align 8, !noalias !170
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #23
          to label %.noexc60.i.i unwind label %.loopexit.split-lp.i.i, !noalias !170

.noexc60.i.i:                                     ; preds = %bb.o
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %i.bo = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.bo, i64 1, i64 %i.bn
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bn ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bn
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #21
          to label %.noexc61.i.i unwind label %.loopexit.i.i, !noalias !170 ; 5 uses

.noexc61.i.i:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bl
  store i64 %i.bh, ptr %i.bv, align 8, !noalias !170
  store ptr null, ptr %8, align 8, !noalias !170
  br i1 %i.bo, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc61.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bu, %.noexc61.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ak, %.noexc61.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i.i, align 8, !alias.scope !174, !noalias !170
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i.i, align 8, !alias.scope !173, !noalias !170
  store ptr null, ptr %.092.i.i.i.i.i.i.i.i, align 8, !alias.scope !174, !noalias !170
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef nonnull %.092.i.i.i.i.i.i.i.i), !noalias !175
  %i.bw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc61.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.noexc61.i.i ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i28.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i28.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bl) #22, !noalias !170
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i
  store ptr %i.by, ptr %i.ad, align 8, !noalias !170
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.bz, ptr %i.ae, align 8, !noalias !170
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i
  %i.ca = phi ptr [ %i.bi, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i ], [ %i.by, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i ]
  %i.cb = phi ptr [ %i.ak, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i ], [ %i.bu, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !170
  br label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i

bb.q:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %7, align 8, !noalias !170
  br label %bb.s

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %7, align 8, !noalias !170
  br label %bb.r

.loopexit.split-lp.i.i:                           ; preds = %bb.o
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20, !noalias !170
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn34.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.r ], [ %i.cc, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !170
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.k
  %.pn34.pn.pn.i.i = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %.pn34.i.i, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !170
  br label %bb.ak

_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i: ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i, %bb.j, %bb.g, %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i
  %.ph.i.i = phi ptr [ %i.ca, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i ], [ %i.aj, %bb.g ], [ %i.aj, %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i ], [ %i.aj, %bb.j ]
  %.ph140.i.i = phi ptr [ %i.cb, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i ], [ %i.ak, %bb.g ], [ %i.ak, %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i ], [ %i.ak, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !170
  br label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i

_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i: ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i, %bb.d, %bb.c
  %i.cd = phi ptr [ %i.aj, %bb.d ], [ %i.aj, %bb.c ], [ %.ph.i.i, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i ] ; 4 uses
  %i.ce = phi ptr [ %i.ak, %bb.d ], [ %i.ak, %bb.c ], [ %.ph140.i.i, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i ] ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.075.091.i.i, i64 8 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ab
  br i1 %i.cg, label %._crit_edge.i.i125, label %bb.c

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.ce, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i), !noalias !170, !inline_history !100
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %.not.i.i64.i.i = icmp eq ptr %i.ch, %i.cd
  br i1 %.not.i.i64.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i125
  %.val630 = phi ptr [ null, %._crit_edge.i.i125 ], [ %.val54.i64.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  %.val1.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !170
  %i.ci = ptrtoint ptr %.val1.i.i.i to i64
  %i.cj = ptrtoint ptr %i.ce to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ck) #22, !noalias !170, !inline_history !176
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i: ; preds = %bb.u, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i.i
  %.val629 = phi ptr [ %.val630, %bb.u ], [ %.val630, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i ], [ null, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !170
  %.val.i.i.i65.i.i = load ptr, ptr %i.t, align 8, !noalias !170 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i65.i.i, null
  br i1 %.not1.i.i.i.i.i.i, label %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeESt4pairIKS5_PNS2_12_GLOBAL__N_116InstanceTypeTreeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.02.i.i.i.i.i.i = phi ptr [ %.0.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val.i.i.i65.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i ] ; 2 uses
  %.0.val.i.i.i.i.i.i = load ptr, ptr %.02.i.i.i.i.i.i, align 8, !noalias !170 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.02.i.i.i.i.i.i, i64 noundef 24) #22, !noalias !170
  %.not.i.i.i.i66.i.i = icmp eq ptr %.0.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i66.i.i, label %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeESt4pairIKS5_PNS2_12_GLOBAL__N_116InstanceTypeTreeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeESt4pairIKS5_PNS2_12_GLOBAL__N_116InstanceTypeTreeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i
  %i.cl = load ptr, ptr %6, align 8, !noalias !170
  %i.cm = load i64, ptr %i.s, align 8, !noalias !170
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.cn, i1 false), !noalias !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !noalias !170
  %i.co = load ptr, ptr %6, align 8, !noalias !170 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.r
  br i1 %i.cp, label %_ZN2v88internal6torque12_GLOBAL__N_121BuildInstanceTypeTreeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeESt4pairIKS5_PNS2_12_GLOBAL__N_116InstanceTypeTreeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.cq = load i64, ptr %i.s, align 8, !noalias !170
  %i.cr = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #22, !noalias !170
  br label %_ZN2v88internal6torque12_GLOBAL__N_121BuildInstanceTypeTreeEv.exit.i

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i, %.lr.ph94.i.i
  %.val54.i.i = phi ptr [ null, %.lr.ph94.i.i ], [ %.val54.i64.i, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i ] ; 7 uses
  %.sroa.073.092.i.i = phi ptr [ %i.ce, %.lr.ph94.i.i ], [ %i.ei, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !170
  %.val53.i.i = load ptr, ptr %.sroa.073.092.i.i, align 8, !noalias !170
  %i.cs = load ptr, ptr %.val53.i.i, align 8, !noalias !170
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !170 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !noalias !170
  %i.cy = icmp eq i32 %i.cx, 6
  br i1 %i.cy, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr null, ptr %i.b, align 8, !noalias !170
end_hunk_0
