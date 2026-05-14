inline.NumInlined: 3334
inline.NumDeleted: 1601
begin_hunk_0_@_ZN6hermes2vm13RuntimeConfig7Builder6updateERKS2_:bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i8 1, ptr %i.hm, align 8, !tbaa !386
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bb
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 297
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !391, !range !67, !noundef !68
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !337
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i32 %i.hr, ptr %i.hs, align 8, !tbaa !392
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 297
  store i8 1, ptr %i.ht, align 1, !tbaa !391
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 298
  %i.hv = load i8, ptr %i.hu, align 2, !tbaa !393, !range !67, !noundef !68
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 268
  %i.hy = load i8, ptr %i.hx, align 4, !tbaa !338, !range !67, !noundef !68
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 268
  store i8 %i.hy, ptr %i.hz, align 4, !tbaa !394
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 298
  store i8 1, ptr %i.ia, align 2, !tbaa !393
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  call void @_ZN6hermes2vm8GCConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(299) %0, ptr noundef nonnull align 8 dereferenceable(299) %1)
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.ib, ptr noundef nonnull align 8 dereferenceable(45) %i.ic, i64 45, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !184 ; 2 uses
  %i.ih = load <2 x ptr>, ptr %i.ie, align 8, !tbaa !213
  store <2 x ptr> %i.ih, ptr %i.id, align 8, !tbaa !213
  %.not.i.i.i.i.i58 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i.i58, label %_ZN6hermes2vm13RuntimeConfig7BuilderC2ERKS2_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i59, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ik = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.il = add nsw i32 %i.ik, 1
  store i32 %i.il, ptr %i.ii, align 4, !tbaa !3
  br label %_ZN6hermes2vm13RuntimeConfig7BuilderC2ERKS2_.exit

bb.bt:                                            ; preds = %bb.br
  %i.im = atomicrmw volatile add ptr %i.ii, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6hermes2vm13RuntimeConfig7BuilderC2ERKS2_.exit

_ZN6hermes2vm13RuntimeConfig7BuilderC2ERKS2_.exit: ; preds = %bb.bq, %bb.bs, %bb.bt
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.in, ptr noundef nonnull align 8 dereferenceable(5) %i.io, i64 5, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.ip, ptr noundef nonnull align 8 dereferenceable(27) %i.iq, i64 27, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !189
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !395
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !395
  br label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !151  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.h, %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aa = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.j, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #35
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i:       ; preds = %bb.l, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN6hermes2vm8GCConfigD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !74
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZN6hermes2vm8GCConfigD2Ev.exit

_ZN6hermes2vm8GCConfigD2Ev.exit:                  ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6hermes2vm8GCConfig7Builder6updateERKS2_(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::GCConfig::Builder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(216) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.4", align 16  ; 14 uses
  %4 = alloca %"class.std::function.1", align 16  ; 14 uses
  %5 = alloca %"class.std::function", align 16    ; 14 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.hermes::vm::GCTripwireConfig", align 8 ; 5 uses
  %8 = alloca %"class.std::function.1", align 8   ; 9 uses
  %9 = alloca %"class.std::function.4", align 8   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.c = load i8, ptr %i.b, align 8, !tbaa !317, !range !67, !noundef !68
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 8, !tbaa !282
  store i32 %i.e, ptr %1, align 8, !tbaa !396
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 1, ptr %i.f, align 8, !tbaa !317
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 201
  %i.h = load i8, ptr %i.g, align 1, !tbaa !321, !range !67, !noundef !68
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !283
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !397
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 201
  store i8 1, ptr %i.m, align 1, !tbaa !321
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 202
  %i.o = load i8, ptr %i.n, align 2, !tbaa !398, !range !67, !noundef !68
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !284
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.r, ptr %i.s, align 8, !tbaa !399
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 202
  store i8 1, ptr %i.t, align 2, !tbaa !398
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 203
  %i.v = load i8, ptr %i.u, align 1, !tbaa !400, !range !67, !noundef !68
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !285
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.y, ptr %i.z, align 8, !tbaa !401
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 203
  store i8 1, ptr %i.aa, align 1, !tbaa !400
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !402, !range !67, !noundef !68
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !286
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !403
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 204
  store i8 1, ptr %i.ah, align 4, !tbaa !402
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 205
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !404, !range !67, !noundef !68
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i = load double, ptr %i.al, align 8, !tbaa !405
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %.sroa.0.0.copyload.i, ptr %i.am, align 8, !tbaa !405
  %.sroa.2.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i33, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 205
  store i8 1, ptr %i.an, align 1, !tbaa !404
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 206
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !406, !range !67, !noundef !68
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !225, !range !67, !noundef !68
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 %i.as, ptr %i.at, align 8, !tbaa !407
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 206
  store i8 1, ptr %i.au, align 2, !tbaa !406
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 207
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !408, !range !67, !noundef !68
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !288
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !409
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 207
  store i8 1, ptr %i.bb, align 1, !tbaa !408
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !410, !range !67, !noundef !68
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.bg, ptr %6, align 8, !tbaa !91, !alias.scope !411
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !144, !noalias !411 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !92, !noalias !411 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36, !noalias !411
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !107, !noalias !411
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.r
  %i.bl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bl, ptr %6, align 8, !tbaa !144, !alias.scope !411
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !107, !noalias !411
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !74, !alias.scope !411
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.r
  %i.bn = phi ptr [ %i.bl, %.noexc.i.i ], [ %i.bg, %bb.r ] ; 2 uses
  switch i64 %i.bj, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !74
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !74
  br label %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  br label %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit

_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit:    ; preds = %._crit_edge.i.i.i, %bb.s, %bb.t
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !107, !noalias !411 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !92, !alias.scope !411
  %i.br = load ptr, ptr %6, align 8, !tbaa !144, !alias.scope !411
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36, !noalias !411
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !144 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  %i.bx = load ptr, ptr %6, align 8, !tbaa !144   ; 6 uses
  %i.by = icmp eq ptr %i.bx, %i.bg                ; 2 uses
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit
  br i1 %i.by, label %bb.u, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit
  br i1 %i.by, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bz = load i64, ptr %i.bq, align 8, !tbaa !92 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %.not21.i.i = icmp eq ptr %6, %i.bt
  br i1 %.not21.i.i, label %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.v, !prof !125

bb.v:                                             ; preds = %bb.u
  switch i64 %i.bz, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !74
  store i8 %i.cb, ptr %i.bu, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bx, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cc = load i64, ptr %i.bq, align 8, !tbaa !92 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !92
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !144
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 0, ptr %i.cf, align 1, !tbaa !74
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !144
  br label %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !144
  %i.ch = load <2 x i64>, ptr %i.bq, align 8, !tbaa !74
  store <2 x i64> %i.ch, ptr %i.cg, align 8, !tbaa !74
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ci = load i64, ptr %i.bv, align 8, !tbaa !74
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !144
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ck = load <2 x i64>, ptr %i.bq, align 8, !tbaa !74
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bu, ptr %6, align 8, !tbaa !144
  store i64 %i.ci, ptr %i.bg, align 8, !tbaa !74
  br label %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.bg, ptr %6, align 8, !tbaa !144
  br label %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.y, %bb.z
  %i.cl = phi ptr [ %i.bu, %bb.y ], [ %i.bg, %bb.z ], [ %i.bx, %bb.u ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.bq, align 8, !tbaa !92
  store i8 0, ptr %i.cl, align 1, !tbaa !74
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i8 1, ptr %i.cm, align 8, !tbaa !410
  %i.cn = load ptr, ptr %6, align 8, !tbaa !144   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bg
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cp = load i64, ptr %i.bg, align 8, !tbaa !74
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 209
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !414, !range !67, !noundef !68
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.aa, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !418, !noalias !415 ; 2 uses
  store i32 %i.cv, ptr %7, align 8, !tbaa !418, !alias.scope !415
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i8 0, i64 32, i1 false), !alias.scope !415
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !151, !noalias !415 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread, label %bb.ab

_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread: ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %i.cv, ptr %i.db, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.de = invoke noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i32 noundef 2)
          to label %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !151, !alias.scope !415 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i32 noundef 3)
          to label %common.resume unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #35
  unreachable

common.resume:                                    ; preds = %bb.be, %bb.bf, %bb.au, %bb.av, %bb.ac, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.fs, %bb.au ], [ %i.df, %bb.ac ], [ %i.df, %bb.ad ], [ %i.fs, %bb.av ], [ %i.hc, %bb.bf ], [ %i.hc, %bb.be ]
  resume { ptr, i32 } %common.resume.op

_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit: ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !419, !noalias !415 ; 3 uses
  store ptr %i.dl, ptr %i.cy, align 8, !tbaa !419, !alias.scope !415
  %i.dm = load ptr, ptr %i.cz, align 8, !tbaa !151, !noalias !415 ; 3 uses
  store ptr %i.dm, ptr %i.cx, align 8, !tbaa !151, !alias.scope !415
  %.pre = load i32, ptr %7, align 8, !tbaa !418
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %.pre, ptr %i.dn, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 16, i1 false), !tbaa.struct !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i: ; preds = %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread, %bb.af, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit
  %i.dp = phi ptr [ %i.dc, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread ], [ %i.do, %bb.af ], [ %i.do, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit ]
  %i.dq = phi ptr [ null, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread ], [ %i.dl, %bb.af ], [ %i.dl, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit ]
  %i.dr = phi ptr [ null, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread ], [ %i.dm, %bb.af ], [ null, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.0.i.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %5, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 16, i1 false), !tbaa.struct !420
  store <16 x i8> %.sroa.0.i.i.i.i.i.sroa.0.0.copyload, ptr %i.ds, align 8, !tbaa !74
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !213 ; 3 uses
  store ptr %i.dv, ptr %i.dt, align 16, !tbaa !213
  store ptr %i.dr, ptr %i.du, align 8, !tbaa !213
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !213
  store ptr %i.dx, ptr %i.dp, align 8, !tbaa !213
  store ptr %i.dq, ptr %i.dw, align 8, !tbaa !213
  %.not.i.i.i.i36 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i36, label %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit.thread, label %bb.ag

_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit.thread: ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 209
  store i8 1, ptr %i.dy, align 1, !tbaa !414
  br label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit

bb.ag:                                            ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i
  %i.dz = invoke noundef zeroext i1 %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #35
  unreachable

_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit: ; preds = %bb.ag
  %.pre48 = load ptr, ptr %i.cx, align 8, !tbaa !151 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 209
  store i8 1, ptr %i.ec, align 1, !tbaa !414
  %.not.i.i37 = icmp eq ptr %.pre48, null
  br i1 %.not.i.i37, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit
  %i.ed = invoke noundef zeroext i1 %.pre48(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #35
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit:         ; preds = %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit.thread, %bb.ai, %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 210
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !421, !range !67, !noundef !68
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !326, !range !67, !noundef !68
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 %i.ek, ptr %i.el, align 8, !tbaa !422
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 210
  store i8 1, ptr %i.em, align 2, !tbaa !421
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 211
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !423, !range !67, !noundef !68
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 129
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !424, !range !67, !noundef !68
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 %i.er, ptr %i.es, align 1, !tbaa !425
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 211
  store i8 1, ptr %i.et, align 1, !tbaa !423
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.ev = load i8, ptr %i.eu, align 4, !tbaa !426, !range !67, !noundef !68
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 130
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !427, !range !67, !noundef !68
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 130
  store i8 %i.ey, ptr %i.ez, align 2, !tbaa !428
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 212
  store i8 1, ptr %i.fa, align 4, !tbaa !426
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 213
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !429, !range !67, !noundef !68
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 131
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !430, !range !67, !noundef !68
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 131
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !431
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 213
  store i8 1, ptr %i.fh, align 1, !tbaa !429
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 214
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !432, !range !67, !noundef !68
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.as, label %_ZNSt14_Function_baseD2Ev.exit

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !alias.scope !433
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !151, !noalias !433 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.not.i.i, label %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread, label %bb.at

_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.fr = invoke noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, i32 noundef 2)
          to label %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %i.fl, align 8, !tbaa !151, !alias.scope !433 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fu = invoke noundef zeroext i1 %i.ft(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %common.resume unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #35
  unreachable

_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit: ; preds = %bb.at
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !436, !noalias !433 ; 3 uses
  store ptr %i.fy, ptr %i.fm, align 8, !tbaa !436, !alias.scope !433
  %i.fz = load ptr, ptr %i.fn, align 8, !tbaa !151, !noalias !433 ; 3 uses
  store ptr %i.fz, ptr %i.fl, align 8, !tbaa !151, !alias.scope !433
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i38 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.not.i.i.i38, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i: ; preds = %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread, %bb.ax, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit
  %i.gb = phi ptr [ %i.fp, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread ], [ %i.ga, %bb.ax ], [ %i.ga, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit ]
  %i.gc = phi ptr [ null, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread ], [ %i.fz, %bb.ax ], [ null, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit ]
  %i.gd = phi ptr [ null, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit.thread ], [ %i.fy, %bb.ax ], [ %i.fy, %_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv.exit ]
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %4, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ge, i64 16, i1 false), !tbaa.struct !420
  store <16 x i8> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ge, align 8, !tbaa !74
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !213 ; 3 uses
  store ptr %i.gh, ptr %i.gf, align 16, !tbaa !213
  store ptr %i.gc, ptr %i.gg, align 8, !tbaa !213
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !213
  store ptr %i.gj, ptr %i.gb, align 8, !tbaa !213
  store ptr %i.gd, ptr %i.gi, align 8, !tbaa !213
  %.not.i.i.i39 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i39, label %_ZN6hermes2vm8GCConfig7Builder21withAnalyticsCallbackESt8functionIFvRKNS0_16GCAnalyticsEventEEE.exit.thread, label %bb.ay

_ZN6hermes2vm8GCConfig7Builder21withAnalyticsCallbackESt8functionIFvRKNS0_16GCAnalyticsEventEEE.exit.thread: ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 214
  store i8 1, ptr %i.gk, align 2, !tbaa !432
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.ay:                                            ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i
  %i.gl = invoke noundef zeroext i1 %i.gh(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6hermes2vm8GCConfig7Builder21withAnalyticsCallbackESt8functionIFvRKNS0_16GCAnalyticsEventEEE.exit unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #35
  unreachable

_ZN6hermes2vm8GCConfig7Builder21withAnalyticsCallbackESt8functionIFvRKNS0_16GCAnalyticsEventEEE.exit: ; preds = %bb.ay
  %.pre49 = load ptr, ptr %i.fl, align 8, !tbaa !151 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 214
  store i8 1, ptr %i.go, align 2, !tbaa !432
  %.not.i = icmp eq ptr %.pre49, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN6hermes2vm8GCConfig7Builder21withAnalyticsCallbackESt8functionIFvRKNS0_16GCAnalyticsEventEEE.exit
  %i.gp = invoke noundef zeroext i1 %.pre49(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bb ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6hermes2vm8GCConfig7Builder21withAnalyticsCallbackESt8functionIFvRKNS0_16GCAnalyticsEventEEE.exit.thread, %bb.ba, %_ZN6hermes2vm8GCConfig7Builder21withAnalyticsCallbackESt8functionIFvRKNS0_16GCAnalyticsEventEEE.exit, %bb.ar
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 215
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !437, !range !67, !noundef !68
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bc, label %_ZNSt14_Function_baseD2Ev.exit47

bb.bc:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false), !alias.scope !438
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !151, !noalias !438 ; 2 uses
  %.not.i.i.not.i.i40 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.not.i.i40, label %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread, label %bb.bd

_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread: ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.hb = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ha, i32 noundef 2)
          to label %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit unwind label %bb.be ; 0 uses

bb.be:                                            ; preds = %bb.bd
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %i.gv, align 8, !tbaa !151, !alias.scope !438 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i41, label %common.resume, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.he = invoke noundef zeroext i1 %i.hd(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %common.resume unwind label %bb.bg ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #35
  unreachable

_ZNK6hermes2vm8GCConfig11getCallbackEv.exit:      ; preds = %bb.bd
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !441, !noalias !438 ; 3 uses
  store ptr %i.hi, ptr %i.gw, align 8, !tbaa !441, !alias.scope !438
  %i.hj = load ptr, ptr %i.gx, align 8, !tbaa !151, !noalias !438 ; 3 uses
  store ptr %i.hj, ptr %i.gv, align 8, !tbaa !151, !alias.scope !438
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i44 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.not.i.i.i44, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i: ; preds = %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread, %bb.bh, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit
  %i.hl = phi ptr [ %i.gz, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread ], [ %i.hk, %bb.bh ], [ %i.hk, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit ]
  %i.hm = phi ptr [ null, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread ], [ %i.hj, %bb.bh ], [ null, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit ]
  %i.hn = phi ptr [ null, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit.thread ], [ %i.hi, %bb.bh ], [ %i.hi, %_ZNK6hermes2vm8GCConfig11getCallbackEv.exit ]
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %.sroa.0.i.i.i.i43.sroa.0.0.copyload = load <16 x i8>, ptr %3, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ho, i64 16, i1 false), !tbaa.struct !420
  store <16 x i8> %.sroa.0.i.i.i.i43.sroa.0.0.copyload, ptr %i.ho, align 8, !tbaa !74
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !213 ; 3 uses
  store ptr %i.hr, ptr %i.hp, align 16, !tbaa !213
  store ptr %i.hm, ptr %i.hq, align 8, !tbaa !213
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !213
  store ptr %i.ht, ptr %i.hl, align 8, !tbaa !213
  store ptr %i.hn, ptr %i.hs, align 8, !tbaa !213
  %.not.i.i.i45 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i45, label %_ZN6hermes2vm8GCConfig7Builder12withCallbackESt8functionIFvNS0_11GCEventKindEPKcEE.exit.thread, label %bb.bi

_ZN6hermes2vm8GCConfig7Builder12withCallbackESt8functionIFvNS0_11GCEventKindEPKcEE.exit.thread: ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 215
  store i8 1, ptr %i.hu, align 1, !tbaa !437
  br label %_ZNSt14_Function_baseD2Ev.exit47

bb.bi:                                            ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i.i
  %i.hv = invoke noundef zeroext i1 %i.hr(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN6hermes2vm8GCConfig7Builder12withCallbackESt8functionIFvNS0_11GCEventKindEPKcEE.exit unwind label %bb.bj ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #35
  unreachable

_ZN6hermes2vm8GCConfig7Builder12withCallbackESt8functionIFvNS0_11GCEventKindEPKcEE.exit: ; preds = %bb.bi
  %.pre50 = load ptr, ptr %i.gv, align 8, !tbaa !151 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 215
  store i8 1, ptr %i.hy, align 1, !tbaa !437
  %.not.i46 = icmp eq ptr %.pre50, null
  br i1 %.not.i46, label %_ZNSt14_Function_baseD2Ev.exit47, label %bb.bk

bb.bk:                                            ; preds = %_ZN6hermes2vm8GCConfig7Builder12withCallbackESt8functionIFvNS0_11GCEventKindEPKcEE.exit
  %i.hz = invoke noundef zeroext i1 %.pre50(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit47 unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit47:                 ; preds = %_ZN6hermes2vm8GCConfig7Builder12withCallbackESt8functionIFvNS0_11GCEventKindEPKcEE.exit.thread, %bb.bk, %_ZN6hermes2vm8GCConfig7Builder12withCallbackESt8functionIFvNS0_11GCEventKindEPKcEE.exit, %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZN6hermes2vm8GCConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %1)
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm8GCConfig7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.d, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #35
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i:       ; preds = %bb.f, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !144  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN6hermes2vm8GCConfigD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !74
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #37
  br label %_ZN6hermes2vm8GCConfigD2Ev.exit

_ZN6hermes2vm8GCConfigD2Ev.exit:                  ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm8GCConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #35
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit:         ; preds = %_ZNSt14_Function_baseD2Ev.exit2, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !144  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !74
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN8facebook6hermes7tracing15parseSynthTraceESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.std::tuple.125") align 8, ptr noundef) local_unnamed_addr #8

end_hunk_0
begin_hunk_1_@_ZNSt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #36, !inline_history !1035
  br label %_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit

_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1036 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIKN8facebook3jsi6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !74
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(44) @_ZTSSt14default_deleteIKN8facebook3jsi6BufferEE) #36
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #36, !inline_history !1038
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #36, !inline_history !1038
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6hermes2vm15NopCrashManagerEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !184
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !187
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !189
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !1039
  store ptr %i.a, ptr %0, align 8, !tbaa !184
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #36 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 8) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #39
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #35
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1039 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(200) ptr @_ZN6hermes2vm8GCConfigaSEOS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.4", align 16  ; 9 uses
  %3 = alloca %"class.std::function.1", align 16  ; 9 uses
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !144  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !144  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !125

bb.c:                                             ; preds = %bb.b
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !74
  store i8 %i.l, ptr %i.c, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.m, ptr %i.n, align 8, !tbaa !92
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.f, ptr %i.a, align 8, !tbaa !144
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !92
  store i64 %i.s, ptr %i.q, align 8, !tbaa !92
  %i.t = load i64, ptr %i.g, align 8, !tbaa !74
  store i64 %i.t, ptr %i.d, align 8, !tbaa !74
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !74
  store ptr %i.f, ptr %i.a, align 8, !tbaa !144
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.x, align 8, !tbaa !92
  %i.y = load i64, ptr %i.g, align 8, !tbaa !74
  store i64 %i.y, ptr %i.d, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %i.b, align 8, !tbaa !144
  store i64 %i.u, ptr %i.g, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.aa, align 8, !tbaa !92
  store i8 0, ptr %i.z, align 1, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !418
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !418
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !213
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !151
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %4, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !420
  store <16 x i8> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ae, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !213
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !213 ; 2 uses
  store <2 x ptr> %i.al, ptr %i.aj, align 16, !tbaa !213
  store <2 x ptr> %i.ag, ptr %i.ak, align 8, !tbaa !213
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #35
  unreachable

_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit:      ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = load i32, ptr %i.ar, align 8
  store i32 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !213
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !151
  %.not.i.i.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 16, i1 false), !tbaa.struct !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i: ; preds = %bb.k, %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %3, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 16, i1 false), !tbaa.struct !420
  store <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.at, align 8, !tbaa !74
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !213
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !213 ; 2 uses
  store <2 x ptr> %i.ba, ptr %i.ay, align 16, !tbaa !213
  store <2 x ptr> %i.av, ptr %i.az, align 8, !tbaa !213
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #35
  unreachable

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit: ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !213
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !151
  %.not.i.i.not.i.i8 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.not.i.i8, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 16, i1 false), !tbaa.struct !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i: ; preds = %bb.n, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %.sroa.0.i.i.i7.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !420
  store <16 x i8> %.sroa.0.i.i.i7.sroa.0.0.copyload, ptr %i.bf, align 8, !tbaa !74
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !213
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !213 ; 2 uses
  store <2 x ptr> %i.bm, ptr %i.bk, align 16, !tbaa !213
  store <2 x ptr> %i.bh, ptr %i.bl, align 8, !tbaa !213
  %.not.i.i9 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i
  %i.bo = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #35
  unreachable

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit: ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 20, i1 false), !tbaa.struct !266
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !184  ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !213
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !213
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit

_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.n = load i32, ptr %1, align 8, !tbaa !1042
  store i32 %i.n, ptr %i.b, align 8, !tbaa !1042
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !222  ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit
  %i.s = invoke noundef ptr @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !222
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit
  %.0.in38 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.039 = load ptr, ptr %.0.in38, align 8, !tbaa !220 ; 2 uses
  %.not3240 = icmp eq ptr %.039, null
  br i1 %.not3240, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.r
  %.042 = phi ptr [ %.0, %bb.r ], [ %.039, %bb.h ] ; 6 uses
  %.03141 = phi ptr [ %i.v, %bb.r ], [ %i.b, %bb.h ] ; 2 uses
  %i.v = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc unwind label %bb.o     ; 9 uses

.noexc:                                           ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.042, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 20, i1 false), !tbaa.struct !266
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %.042, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %.042, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !213
  store <2 x ptr> %i.ac, ptr %i.y, align 8, !tbaa !213
  %.not.i.i.i.i.i.i.i.i34 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i34, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i.i.i.i35 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.noexc
  %i.ai = load i32, ptr %.042, align 8, !tbaa !1042
  store i32 %i.ai, ptr %i.v, align 8, !tbaa !1042
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.03141, i64 16
  store ptr %i.v, ptr %i.ak, align 8, !tbaa !220
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.03141, ptr %i.al, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %.042, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !222 ; 2 uses
  %.not33 = icmp eq ptr %i.an, null
  br i1 %.not33, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = invoke noundef ptr @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !222
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph, %bb.m
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.u, %bb.g ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.030) #36 ; 0 uses
  invoke void @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_rethrow() #39
          to label %bb.v unwind label %bb.s

bb.r:                                             ; preds = %bb.n, %bb.l
  %.0.in = getelementptr inbounds nuw i8, ptr %.042, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !220 ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !1043

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.as

._crit_edge:                                      ; preds = %bb.r, %bb.h
  ret ptr %i.b

bb.u:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #35
  unreachable

bb.v:                                             ; preds = %bb.q
  unreachable
}

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_less_iterEEvT_SJ_SJ_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
end_hunk_1
