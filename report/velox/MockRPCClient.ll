inline.NumInlined: 1879
inline.NumDeleted: 977
begin_hunk_0_@_ZN8facebook5velox3rpc13MockRPCClient16generateResponseERKNS1_10RPCRequestEb:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.es
  store i8 0, ptr %i.ew, align 1, !tbaa !31
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ey = load i64, ptr %2, align 8, !tbaa !38
  store i64 %i.ey, ptr %0, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.fa, ptr %i.ez, align 8, !tbaa !60
  %i.fb = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.cw
  br i1 %i.fc, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load i64, ptr %i.cx, align 8, !tbaa !61 ; 3 uses
  %i.fe = icmp ult i64 %i.fd, 16
  call void @llvm.assume(i1 %i.fe)
  %i.ff = add nuw nsw i64 %i.fd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fa, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.ff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ag
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !70
  %i.fg = load i64, ptr %i.cw, align 8, !tbaa !31
  store i64 %i.fg, ptr %i.fa, align 8, !tbaa !31
  %.pre94 = load i64, ptr %i.cx, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fh = phi i64 [ %i.fd, %bb.ah ], [ %.pre94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !61
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i8 0, i64 24, i1 false)
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !62
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !63
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.fn, align 8, !tbaa !64
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.fo, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.ex, %bb.af ]
  %i.fp = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.cw
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.ai
  %i.fr = load i64, ptr %i.cw, align 8, !tbaa !31
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox3rpc13MockRPCClient4callERKNS1_10RPCRequestE(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::SemiFuture") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::futures::detail::KeepAliveOrDeferred", align 8 ; 6 uses
  %4 = alloca %"class.folly::Function", align 16  ; 10 uses
  %5 = alloca %class.anon.216, align 8            ; 33 uses
  %6 = alloca %"class.std::shared_ptr.88", align 8 ; 7 uses
  %7 = alloca %"struct.folly::futures::detail::FutureBaseHelper::FuturePromisePair.209", align 8 ; 10 uses
  %8 = alloca %class.anon.211, align 8            ; 21 uses
  %9 = alloca %class.anon.207, align 8            ; 17 uses
  %10 = alloca %"class.folly::Future.197", align 8 ; 9 uses
  %11 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 8 uses
  %12 = alloca %class.anon.199, align 8           ; 18 uses
  %13 = alloca %"class.std::random_device", align 8 ; 7 uses
  %14 = alloca %class.anon, align 8               ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8 ; 0 uses
  %.b.i = load i1, ptr @_ZGVZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEvE3rng, align 1
  br i1 %.b.i, label %_ZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEv.exit, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %13)
  %i.c = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %13)
          to label %_ZNSt13random_deviceclEv.exit.i unwind label %bb.g

_ZNSt13random_deviceclEv.exit.i:                  ; preds = %bb.b
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  store i64 %i.d, ptr @_ZZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEvE3rng, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZNSt13random_deviceclEv.exit.i
  %store_forwarded = phi i64 [ %i.d, %_ZNSt13random_deviceclEv.exit.i ], [ %i.q, %bb.d ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit.i ], [ %i.r, %bb.d ] ; 4 uses
  %i.e = getelementptr [8 x i8], ptr @_ZZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEvE3rng, i64 %.011.i.i.i
  %i.f = lshr i64 %store_forwarded, 30
  %i.g = xor i64 %i.f, %store_forwarded
  %i.h = mul nuw nsw i64 %i.g, 1812433253
  %i.i = add nuw i64 %i.h, %.011.i.i.i            ; 2 uses
  %i.j = and i64 %i.i, 4294967295                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !9
  %i.k = add nuw nsw i64 %.011.i.i.i, 1           ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.k, 624
  br i1 %exitcond.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr [8 x i8], ptr @_ZZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEvE3rng, i64 %i.k
  %i.m = lshr i64 %i.j, 30
  %i.n = xor i64 %i.m, %i.i
  %i.o = mul i64 %i.n, 1812433253
  %i.p = add i64 %i.o, %i.k
  %i.q = and i64 %i.p, 4294967295                 ; 2 uses
  store i64 %i.q, ptr %i.l, align 8, !tbaa !9
  %i.r = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEvE3rng, i64 4992), align 8, !tbaa !84
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %13)
          to label %_ZNSt13random_deviceD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

_ZNSt13random_deviceD2Ev.exit.i:                  ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  store i1 true, ptr @_ZGVZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEvE3rng, align 1
  br label %_ZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEv.exit

bb.g:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %13)
          to label %_ZNSt13random_deviceD2Ev.exit1.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

common.resume:                                    ; preds = %bb.ca, %bb.bz, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit11.i, %_ZNSt13random_deviceD2Ev.exit1.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZNSt13random_deviceD2Ev.exit1.i ], [ %.pn.i, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit11.i ], [ %i.lu, %bb.bz ], [ %i.lu, %bb.ca ]
  resume { ptr, i32 } %common.resume.op

_ZNSt13random_deviceD2Ev.exit1.i:                 ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %common.resume

_ZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEv.exit: ; preds = %bb.a, %_ZNSt13random_deviceD2Ev.exit.i
  %i.x = call noundef nonnull align 8 dereferenceable(5000) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEvE3rng)
  %i.y = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000), !tbaa !3
  %i.z = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !3
  %i.aa = fdiv x86_fp80 %i.y, %i.z
  %i.ab = fptoui x86_fp80 %i.aa to i64            ; 2 uses
  %i.ac = add i64 %i.ab, 52
  %i.ad = udiv i64 %i.ac, %i.ab
  %spec.select.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  br label %select.unfold.i.i.i.i

bb.i:                                             ; preds = %select.unfold.i.i.i.i
  %i.ae = fdiv double %i.aj, %i.am                ; 2 uses
  %i.af = fcmp ult double %i.ae, 1.000000e+00
  br i1 %i.af, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit, label %bb.j, !prof !86

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %_ZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEv.exit
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_ZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEv.exit ], [ %i.an, %select.unfold.i.i.i.i ]
  %.01422.i.i.i.i = phi double [ 1.000000e+00, %_ZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEv.exit ], [ %i.am, %select.unfold.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi double [ 0.000000e+00, %_ZN8facebook5velox3rpc12_GLOBAL__N_114threadLocalRngEv.exit ], [ %i.aj, %select.unfold.i.i.i.i ]
  %i.ag = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.x)
  %i.ah = uitofp i64 %i.ag to double
  %i.ai = fmul double %.01422.i.i.i.i, %i.ah
  %i.aj = fadd double %.01521.i.i.i.i, %i.ai      ; 2 uses
  %i.ak = fpext double %.01422.i.i.i.i to x86_fp80
  %i.al = fmul x86_fp80 %i.ak, f0x401F8000000000000000
  %i.am = fptrunc x86_fp80 %i.al to double        ; 2 uses
  %i.an = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %select.unfold.i.i.i.i, !llvm.loop !87

bb.j:                                             ; preds = %bb.i
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit: ; preds = %bb.i, %bb.j
  %.016.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.j ], [ %i.ae, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !11
  %i.aq = fcmp olt double %.016.i.i.i.i, %i.ap
  %i.ar = zext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEC2EPS1_.exit, label %_ZN5folly8Executor17getKeepAliveTokenIS0_EENS_17ExecutorKeepAliveIT_EEPS3_.exit.i

_ZN5folly8Executor17getKeepAliveTokenIS0_EENS_17ExecutorKeepAliveIT_EEPS3_.exit.i: ; preds = %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
  %i.av = load ptr, ptr %i.at, align 64, !tbaa !7
  %i.aw = getelementptr i8, ptr %i.av, i64 -72
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !7, !noalias !88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !88
  %i.bc = call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #24, !noalias !88, !inline_history !91
  %i.bd = ptrtoint ptr %i.ay to i64
  %not..i.i = xor i1 %i.bc, true
  %i.be = zext i1 %not..i.i to i64
  %spec.select.i.i = or i64 %i.be, %i.bd
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEC2EPS1_.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEC2EPS1_.exit: ; preds = %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit, %_ZN5folly8Executor17getKeepAliveTokenIS0_EENS_17ExecutorKeepAliveIT_EEPS3_.exit.i
  %.sink.i7.i = phi i64 [ %spec.select.i.i, %_ZN5folly8Executor17getKeepAliveTokenIS0_EENS_17ExecutorKeepAliveIT_EEPS3_.exit.i ], [ 0, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store ptr %1, ptr %14, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  invoke void @_ZN8facebook5velox3rpc10RPCRequestC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.k unwind label %bb.bz

bb.k:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEC2EPS1_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 2 uses
  store i8 %i.ar, ptr %i.bg, align 8, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !9
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !96
  store i64 %.sink.i7.i, ptr %11, align 8, !tbaa !99, !noalias !96
  invoke void @_ZN5folly3viaENS_17ExecutorKeepAliveINS_8ExecutorEEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Future.197") align 8 %10, ptr noundef nonnull %11)
          to label %bb.l unwind label %bb.bs, !noalias !96

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !96
  %i.bk = load ptr, ptr %14, align 8, !tbaa !92, !noalias !96 ; 2 uses
  store ptr %i.bk, ptr %12, align 8, !tbaa !92, !noalias !96
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bl, ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i64 12, i1 false), !noalias !96
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 10 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !70, !noalias !96 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 7 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !61, !noalias !96 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false), !noalias !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !70, !noalias !96
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !31, !noalias !96
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !31, !noalias !96
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.pre.i7 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !61, !noalias !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.m
  %i.bx = phi ptr [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bo, %bb.m ] ; 2 uses
  %i.by = phi i64 [ %.pre.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bt, %bb.m ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !61, !noalias !96
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !70, !noalias !96
  store i64 0, ptr %i.bz, align 8, !tbaa !61, !noalias !96
  store i8 0, ptr %i.bq, align 8, !tbaa !31, !noalias !96
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !82, !noalias !96 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !101, !noalias !96
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !82, !noalias !96
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62, !noalias !96
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !63, !noalias !96
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cb, ptr %i.cl, align 8, !tbaa !102, !noalias !96
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !64, !noalias !96
  store ptr null, ptr %i.cc, align 8, !tbaa !82, !noalias !96
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !62, !noalias !96
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !63, !noalias !96
  store i64 0, ptr %i.cm, align 8, !tbaa !64, !noalias !96
  br label %"_ZZN8facebook5velox3rpc13MockRPCClient4callERKNS1_10RPCRequestEEN3$_0C2EOS6_.exit.i"

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr null, ptr %i.co, align 8, !tbaa !82, !noalias !96
  br label %"_ZZN8facebook5velox3rpc13MockRPCClient4callERKNS1_10RPCRequestEEN3$_0C2EOS6_.exit.i"

"_ZZN8facebook5velox3rpc13MockRPCClient4callERKNS1_10RPCRequestEEN3$_0C2EOS6_.exit.i": ; preds = %bb.o, %bb.n
  %i.cp = phi ptr [ %i.cb, %bb.o ], [ %i.ci, %bb.n ] ; 2 uses
  %i.cq = phi ptr [ %i.cb, %bb.o ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cr = phi i64 [ 0, %bb.o ], [ %i.cn, %bb.n ]  ; 2 uses
  %.sink.i.i.i.i.i.i.i = phi i32 [ 0, %bb.o ], [ %i.cf, %bb.n ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !62, !noalias !96
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !63, !noalias !96
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  store i64 %i.cr, ptr %i.cu, align 8, !tbaa !64, !noalias !96
  store i32 %.sink.i.i.i.i.i.i.i, ptr %i.cb, align 8, !tbaa !101, !noalias !96
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !103
  store ptr %i.bk, ptr %9, align 8, !tbaa !92, !noalias !103
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cw, ptr noundef nonnull align 8 dereferenceable(96) %i.bl, i64 12, i1 false), !noalias !103
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 10 uses
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !60, !noalias !103
  %i.cz = icmp eq ptr %i.bx, %i.bo
  br i1 %i.cz, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %"_ZZN8facebook5velox3rpc13MockRPCClient4callERKNS1_10RPCRequestEEN3$_0C2EOS6_.exit.i"
  %i.da = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.da)
  %i.db = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cy, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.db, i1 false), !noalias !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZZN8facebook5velox3rpc13MockRPCClient4callERKNS1_10RPCRequestEEN3$_0C2EOS6_.exit.i"
  store ptr %i.bx, ptr %i.cx, align 8, !tbaa !70, !noalias !103
  %i.dc = load i64, ptr %i.bo, align 8, !tbaa !31, !noalias !103
  store i64 %i.dc, ptr %i.cy, align 8, !tbaa !31, !noalias !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  store i64 %i.by, ptr %i.dd, align 8, !tbaa !61, !noalias !103
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !70, !noalias !103
  store i64 0, ptr %i.ca, align 8, !tbaa !61, !noalias !103
  store i8 0, ptr %i.bo, align 8, !tbaa !31, !noalias !103
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !82, !noalias !103 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 5 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !82, !noalias !103
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.de, ptr %i.di, align 8, !tbaa !102, !noalias !103
  store ptr null, ptr %i.df, align 8, !tbaa !82, !noalias !103
  store ptr %i.cb, ptr %i.cs, align 8, !tbaa !62, !noalias !103
  store ptr %i.cb, ptr %i.ct, align 8, !tbaa !63, !noalias !103
  store i64 0, ptr %i.cu, align 8, !tbaa !64, !noalias !103
end_hunk_0
begin_hunk_1_@"_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreINS_4UnitEE11setCallbackIZNS4_10FutureBaseIS6_E18thenImplementationIZNOS_6FutureIS6_E9thenValueIZNS_3viaIZN8facebook5velox3rpc13MockRPCClient9callBatchERKSt6vectorINSI_10RPCRequestESaISL_EEE3$_0EENSC_INS_20isFutureOrSemiFutureIDTclscT_fL3p0_EEE5InnerEEENS_17ExecutorKeepAliveINS_8ExecutorEEEOSS_EUlS10_E_EENSC_INS4_19valueCallableResultIS6_SS_E10value_typeEEES10_EUlOSZ_ONS_3TryIS6_EEE_NS4_25tryExecutorCallableResultIS6_S1A_EEEENSt9enable_ifIXntsrNT0_13ReturnsFutureE5valueENSC_INS1E_10value_typeEEEE4typeES10_S1E_NS4_18InlineContinuationEEUlS16_S19_E_EEvS10_OSt10shared_ptrINS_14RequestContextEES1J_EUlRNS4_8CoreBaseES16_PNS_17exception_wrapperEE_Lb0ELb0EvJS1Q_S16_S1S_EEET2_DpT3_RNS1_4DataE":bb.a
bb.f:                                             ; preds = %_ZN5folly7futures6detail4CoreINS_4UnitEE20setCallbackGetResultERNS1_8CoreBaseEPNS_17exception_wrapperE.exit.i
  %i.l = and i64 %i.i, -4                         ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7, !noalias !372
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !noalias !372
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #24, !noalias !372, !inline_history !375
  %not..i.i.i.i = xor i1 %i.q, true
  %i.r = zext i1 %not..i.i.i.i to i64
  %spec.select.i.i.i.i = or disjoint i64 %i.l, %i.r
  br label %_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit.i.i

_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %storemerge.i.i.i = phi i64 [ %i.k, %bb.e ], [ 0, %bb.f ], [ %spec.select.i.i.i.i, %bb.g ]
  store i64 %storemerge.i.i.i, ptr %9, align 8, !tbaa !99, !alias.scope !369
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.s = load i32, ptr %i.h, align 8, !tbaa !268, !noalias !394
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %_ZNO5folly3TryINS_4UnitEE9exceptionEv.exit.i.i.i.i.i.i.i.i, label %bb.h

_ZNO5folly3TryINS_4UnitEE9exceptionEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.v = load i64, ptr %i.u, align 16, !noalias !398
  store i64 0, ptr %i.u, align 16, !noalias !398
  store i32 1, ptr %10, align 8, !tbaa !225, !alias.scope !401
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.v, ptr %i.w, align 8, !alias.scope !402
  br label %"_ZN5folly11makeTryWithIZZNS_7futures6detail10FutureBaseINS_4UnitEE18thenImplementationIZNOS_6FutureIS4_E9thenValueIZNS_3viaIZN8facebook5velox3rpc13MockRPCClient9callBatchERKSt6vectorINSD_10RPCRequestESaISG_EEE3$_0EENS7_INS_20isFutureOrSemiFutureIDTclscT_fL3p0_EEE5InnerEEENS_17ExecutorKeepAliveINS_8ExecutorEEEOSN_EUlSV_E_EENS7_INS2_19valueCallableResultIS4_SN_E10value_typeEEESV_EUlOSU_ONS_3TryIS4_EEE_NS2_25tryExecutorCallableResultIS4_S15_EEEENSt9enable_ifIXntsrNT0_13ReturnsFutureE5valueENS7_INS19_10value_typeEEEE4typeESV_S19_NS2_18InlineContinuationEENUlS11_S14_E_clES11_S14_EUlvE_EENS18_IXsr5isTryINS_13invoke_detail6traitsISN_E6resultIEEEE5valueES1L_E4typeESV_.exit.i.i"

bb.h:                                             ; preds = %_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.x = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNR5folly3TryINS_4UnitEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !376 ; 0 uses

.noexc.i.i.i:                                     ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !156, !noalias !418
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9, !noalias !418 ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ac = udiv i64 %i.aa, 1000                    ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ac, -1000
  %i.ad = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.aa
  %i.ae = mul nsw i64 %i.ad, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !418
  store i64 %i.ac, ptr %5, align 8, !tbaa !343, !noalias !418
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !345, !noalias !418
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ag = invoke i32 @nanosleep(ptr noundef nonnull %5, ptr noundef nonnull %5)
          to label %.noexc3.i.i.i unwind label %.loopexit.i.i.i, !noalias !376

.noexc3.i.i.i:                                    ; preds = %bb.j
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.k, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc3.i.i.i
  %i.ai = tail call ptr @__errno_location() #30
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !418
  %i.ak = icmp eq i32 %i.aj, 4
  br i1 %i.ak, label %bb.j, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !346

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.k, %.noexc3.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !418
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !419, !noalias !408
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !189, !noalias !418 ; 3 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !188, !noalias !418 ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 96                ; 3 uses
  %i.at = icmp ugt i64 %i.as, 72057594037927935
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !418

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox3rpc11RPCResponseESaIS3_EE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox3rpc11RPCResponseESaIS3_EE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN8facebook5velox3rpc11RPCResponseESaIS3_EE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.av = shl nuw nsw i64 %i.as, 7
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25
          to label %_ZNSt12_Vector_baseIN8facebook5velox3rpc11RPCResponseESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !418 ; 3 uses

_ZNSt12_Vector_baseIN8facebook5velox3rpc11RPCResponseESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox3rpc11RPCResponseESaIS3_EE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.aw, ptr %8, align 16, !tbaa !228, !alias.scope !419, !noalias !408
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !231, !alias.scope !419, !noalias !408
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %i.aw, i64 %i.as
  store ptr %i.ay, ptr %i.au, align 16, !tbaa !233, !alias.scope !419, !noalias !408
  br label %_ZNSt6vectorIN8facebook5velox3rpc11RPCResponseESaIS3_EE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox3rpc11RPCResponseESaIS3_EE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox3rpc11RPCResponseESaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %.b.i.i.i.i.i.i.i.i.i.i.i.i = load i1, ptr @"_ZGVZZN8facebook5velox3rpc13MockRPCClient9callBatchERKSt6vectorINS1_10RPCRequestESaIS4_EEENK3$_0clEvE8localRng", align 1, !noalias !418
  br i1 %.b.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.n, !prof !83

bb.n:                                             ; preds = %_ZNSt6vectorIN8facebook5velox3rpc11RPCResponseESaIS3_EE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !418
  invoke void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %bb.o unwind label %bb.v, !noalias !418

bb.o:                                             ; preds = %bb.n
  %i.az = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceclEv.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.w, !noalias !418

_ZNSt13random_deviceclEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  store i64 %i.ba, ptr @"_ZZZN8facebook5velox3rpc13MockRPCClient9callBatchERKSt6vectorINS1_10RPCRequestESaIS4_EEENK3$_0clEvE8localRng", align 8, !tbaa !9, !noalias !418
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %_ZNSt13random_deviceclEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %store_forwarded = phi i64 [ %i.ba, %_ZNSt13random_deviceclEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bn, %bb.q ] ; 2 uses
  %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.q ] ; 4 uses
  %i.bb = getelementptr [8 x i8], ptr @"_ZZZN8facebook5velox3rpc13MockRPCClient9callBatchERKSt6vectorINS1_10RPCRequestESaIS4_EEENK3$_0clEvE8localRng", i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = lshr i64 %store_forwarded, 30
  %i.bd = xor i64 %i.bc, %store_forwarded
  %i.be = mul nuw nsw i64 %i.bd, 1812433253
  %i.bf = add nuw i64 %i.be, %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bg = and i64 %i.bf, 4294967295               ; 2 uses
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !9, !noalias !418
  %i.bh = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bh, 624
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr [8 x i8], ptr @"_ZZZN8facebook5velox3rpc13MockRPCClient9callBatchERKSt6vectorINS1_10RPCRequestESaIS4_EEENK3$_0clEvE8localRng", i64 %i.bh
  %i.bj = lshr i64 %i.bg, 30
  %i.bk = xor i64 %i.bj, %i.bf
  %i.bl = mul i64 %i.bk, 1812433253
  %i.bm = add i64 %i.bl, %i.bh
  %i.bn = and i64 %i.bm, 4294967295               ; 2 uses
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !9, !noalias !418
  %i.bo = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br label %bb.p

bb.r:                                             ; preds = %bb.p
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZN8facebook5velox3rpc13MockRPCClient9callBatchERKSt6vectorINS1_10RPCRequestESaIS4_EEENK3$_0clEvE8localRng", i64 4992), align 8, !tbaa !84, !noalias !418
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.s, !noalias !418

bb.s:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #28, !noalias !418
  unreachable

_ZNSt13random_deviceD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !418
  store i1 true, ptr @"_ZGVZZN8facebook5velox3rpc13MockRPCClient9callBatchERKSt6vectorINS1_10RPCRequestESaIS4_EEENK3$_0clEvE8localRng", align 1, !noalias !418
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !193, !noalias !418
  %.pre33.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !193, !noalias !418
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt13random_deviceD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN8facebook5velox3rpc11RPCResponseESaIS3_EE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = phi ptr [ %i.an, %_ZNSt6vectorIN8facebook5velox3rpc11RPCResponseESaIS3_EE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre33.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt13random_deviceD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bs = phi ptr [ %i.ao, %_ZNSt6vectorIN8facebook5velox3rpc11RPCResponseESaIS3_EE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt13random_deviceD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.br
  br i1 %i.bt, label %"_ZN5folly7futures6detail23InvokeResultWrapperBaseINS_3TryISt6vectorIN8facebook5velox3rpc11RPCResponseESaIS8_EEEEE10wrapResultIZNS1_10wrapInvokeINS_4UnitEZNS_3viaIZNS7_13MockRPCClient9callBatchERKS4_INS7_10RPCRequestESaISI_EEE3$_0EENS_6FutureINS_20isFutureOrSemiFutureIDTclscT_fL1p0_EEE5InnerEEENS_17ExecutorKeepAliveINS_8ExecutorEEEOSQ_EUlSY_E_EEDaONS3_ISQ_EEOT0_EUlvE_EESB_SQ_.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @"_ZZZN8facebook5velox3rpc13MockRPCClient9callBatchERKSt6vectorINS1_10RPCRequestESaIS4_EEENK3$_0clEvE8localRng") ; 20 uses
  %i.bw = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000), !tbaa !3
  %i.bx = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !3
  %i.by = fdiv x86_fp80 %i.bw, %i.bx
  %i.bz = fptoui x86_fp80 %i.by to i64            ; 2 uses
  %i.ca = add i64 %i.bz, 52
  %i.cb = udiv i64 %i.ca, %i.bz
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 4992 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 1816
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 4984 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 3168
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 1792
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 1800
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 4968
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 1800
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 1808
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 4976
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 1808
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 1816
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 4984
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIN8facebook5velox3rpc11RPCResponseESaIS3_EE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ai

bb.v:                                             ; preds = %bb.n
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt13random_deviceD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !418

bb.x:                                             ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #28, !noalias !418
  unreachable

_ZNSt13random_deviceD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cx, %bb.v ], [ %i.cy, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !418
  br label %bb.ai

bb.y:                                             ; preds = %_ZN8facebook5velox3rpc11RPCResponseD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.025.031.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iy, %_ZN8facebook5velox3rpc11RPCResponseD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.db = atomicrmw add ptr %i.bu, i64 1 seq_cst, align 8, !noalias !408 ; 0 uses
  %.pre34.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !tbaa !84, !noalias !418
  br label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = fdiv double %i.id, %i.ig                ; 2 uses
  %i.dd = fcmp ult double %i.dc, 1.000000e+00
  br i1 %i.dd, label %bb.ab, label %bb.aa, !prof !86

select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y
  %i.de = phi i64 [ %.pre34.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y ], [ %i.hn, %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y ], [ %i.ih, %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.01422.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 1.000000e+00, %bb.y ], [ %i.ig, %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.y ], [ %i.id, %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.df = icmp ugt i64 %i.de, 623
  br i1 %i.df, label %vector.ph30, label %.noexc22.i.i.i.i.i.i.i.i.i.i.i.i

vector.ph30:                                      ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !tbaa !9, !noalias !418
  %vector.recur.init33 = insertelement <4 x i64> poison, i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph30
  %index32 = phi i64 [ 0, %vector.ph30 ], [ %index.next43, %vector.body31 ] ; 3 uses
  %vector.recur34 = phi <4 x i64> [ %vector.recur.init33, %vector.ph30 ], [ %wide.load38, %vector.body31 ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index32 ; 8 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index32 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %wide.load35 = load <4 x i64>, ptr %i.di, align 8, !tbaa !9, !noalias !418 ; 4 uses
  %wide.load36 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !9, !noalias !418 ; 4 uses
  %wide.load37 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !9, !noalias !418 ; 4 uses
  %wide.load38 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !9, !noalias !418 ; 5 uses
  %i.dm = shufflevector <4 x i64> %vector.recur34, <4 x i64> %wide.load35, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dn = shufflevector <4 x i64> %wide.load35, <4 x i64> %wide.load36, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.do = shufflevector <4 x i64> %wide.load36, <4 x i64> %wide.load37, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dp = shufflevector <4 x i64> %wide.load37, <4 x i64> %wide.load38, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dq = and <4 x i64> %i.dm, splat (i64 -2147483648)
  %i.dr = and <4 x i64> %i.dn, splat (i64 -2147483648)
  %i.ds = and <4 x i64> %i.do, splat (i64 -2147483648)
  %i.dt = and <4 x i64> %i.dp, splat (i64 -2147483648)
  %i.du = and <4 x i64> %wide.load35, splat (i64 2147483646)
  %i.dv = and <4 x i64> %wide.load36, splat (i64 2147483646)
  %i.dw = and <4 x i64> %wide.load37, splat (i64 2147483646)
  %i.dx = and <4 x i64> %wide.load38, splat (i64 2147483646)
  %i.dy = or disjoint <4 x i64> %i.du, %i.dq
  %i.dz = or disjoint <4 x i64> %i.dv, %i.dr
  %i.ea = or disjoint <4 x i64> %i.dw, %i.ds
  %i.eb = or disjoint <4 x i64> %i.dx, %i.dt
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dg, i64 3176
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 3208
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 3240
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dg, i64 3272
  %wide.load39 = load <4 x i64>, ptr %i.ec, align 8, !tbaa !9, !noalias !418
  %wide.load40 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !9, !noalias !418
  %wide.load41 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !9, !noalias !418
  %wide.load42 = load <4 x i64>, ptr %i.ef, align 8, !tbaa !9, !noalias !418
  %i.eg = lshr exact <4 x i64> %i.dy, splat (i64 1)
  %i.eh = lshr exact <4 x i64> %i.dz, splat (i64 1)
  %i.ei = lshr exact <4 x i64> %i.ea, splat (i64 1)
  %i.ej = lshr exact <4 x i64> %i.eb, splat (i64 1)
  %i.ek = xor <4 x i64> %i.eg, %wide.load39
  %i.el = xor <4 x i64> %i.eh, %wide.load40
  %i.em = xor <4 x i64> %i.ei, %wide.load41
  %i.en = xor <4 x i64> %i.ej, %wide.load42
  %i.eo = and <4 x i64> %wide.load35, splat (i64 1)
  %i.ep = and <4 x i64> %wide.load36, splat (i64 1)
  %i.eq = and <4 x i64> %wide.load37, splat (i64 1)
  %i.er = and <4 x i64> %wide.load38, splat (i64 1)
  %i.es = icmp eq <4 x i64> %i.eo, zeroinitializer
  %i.et = icmp eq <4 x i64> %i.ep, zeroinitializer
  %i.eu = icmp eq <4 x i64> %i.eq, zeroinitializer
  %i.ev = icmp eq <4 x i64> %i.er, zeroinitializer
  %i.ew = select <4 x i1> %i.es, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.ex = select <4 x i1> %i.et, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.ey = select <4 x i1> %i.eu, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.ez = select <4 x i1> %i.ev, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.fa = xor <4 x i64> %i.ek, %i.ew
  %i.fb = xor <4 x i64> %i.el, %i.ex
  %i.fc = xor <4 x i64> %i.em, %i.ey
  %i.fd = xor <4 x i64> %i.en, %i.ez
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %i.fa, ptr %i.dg, align 8, !tbaa !9, !noalias !418
  store <4 x i64> %i.fb, ptr %i.fe, align 8, !tbaa !9, !noalias !418
  store <4 x i64> %i.fc, ptr %i.ff, align 8, !tbaa !9, !noalias !418
  store <4 x i64> %i.fd, ptr %i.fg, align 8, !tbaa !9, !noalias !418
  %index.next43 = add nuw i64 %index32, 16        ; 2 uses
  %i.fh = icmp eq i64 %index.next43, 224
  br i1 %i.fh, label %vector.ph, label %vector.body31, !llvm.loop !420

vector.ph:                                        ; preds = %vector.body31
  %vector.recur.extract = extractelement <4 x i64> %wide.load38, i64 3
  %i.fi = and i64 %vector.recur.extract, -2147483648
  %i.fj = load i64, ptr %i.co, align 8, !tbaa !9, !noalias !418 ; 3 uses
  %i.fk = and i64 %i.fj, 2147483646
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = load i64, ptr %i.cp, align 8, !tbaa !9, !noalias !418
  %i.fn = lshr exact i64 %i.fl, 1
  %i.fo = xor i64 %i.fn, %i.fm
  %i.fp = and i64 %i.fj, 1
  %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fp, 0
  %i.fq = select i1 %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 0, i64 2567483615
  %i.fr = xor i64 %i.fo, %i.fq
  store i64 %i.fr, ptr %i.cn, align 8, !tbaa !9, !noalias !418
  %i.fs = and i64 %i.fj, -2147483648
  %i.ft = load i64, ptr %i.cr, align 8, !tbaa !9, !noalias !418 ; 3 uses
  %i.fu = and i64 %i.ft, 2147483646
  %i.fv = or disjoint i64 %i.fu, %i.fs
  %i.fw = load i64, ptr %i.cs, align 8, !tbaa !9, !noalias !418
  %i.fx = lshr exact i64 %i.fv, 1
  %i.fy = xor i64 %i.fx, %i.fw
  %i.fz = and i64 %i.ft, 1
  %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.fz, 0
  %i.ga = select i1 %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 0, i64 2567483615
  %i.gb = xor i64 %i.fy, %i.ga
  store i64 %i.gb, ptr %i.cq, align 8, !tbaa !9, !noalias !418
  %i.gc = and i64 %i.ft, -2147483648
  %i.gd = load i64, ptr %i.cu, align 8, !tbaa !9, !noalias !418 ; 2 uses
  %i.ge = and i64 %i.gd, 2147483646
  %i.gf = or disjoint i64 %i.ge, %i.gc
  %i.gg = load i64, ptr %i.cv, align 8, !tbaa !9, !noalias !418
  %i.gh = lshr exact i64 %i.gf, 1
  %i.gi = xor i64 %i.gh, %i.gg
  %i.gj = and i64 %i.gd, 1
  %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i64 %i.gj, 0
  %i.gk = select i1 %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 0, i64 2567483615
  %i.gl = xor i64 %i.gi, %i.gk
  store i64 %i.gl, ptr %i.ct, align 8, !tbaa !9, !noalias !418
  %.pre24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !9, !noalias !418
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.gm = getelementptr [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 1816
  %i.go = getelementptr [8 x i8], ptr %i.bv, i64 %index
  %i.gp = getelementptr i8, ptr %i.go, i64 1824
  %wide.load = load <2 x i64>, ptr %i.gp, align 8, !tbaa !9, !noalias !418 ; 4 uses
  %i.gq = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.gr = and <2 x i64> %i.gq, splat (i64 -2147483648)
  %i.gs = and <2 x i64> %wide.load, splat (i64 2147483646)
end_hunk_1
