Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/scene?download=true
inline.NumInlined: 8765
inline.NumDeleted: 2913
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRA47_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !89, !alias.scope !1686 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body41, label %.body41.sink.split

_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %bb.u
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !87 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !87
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43

bb.x:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #34
          to label %.noexc44 unwind label %bb.y

.noexc44:                                         ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43: ; preds = %_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !89
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46 unwind label %bb.y ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43
  %i.dj = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !88
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43, %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body41, label %.body41.sink.split

.body41.sink.split:                               ; preds = %bb.y, %bb.w
  %.sink88 = phi ptr [ %i.da, %bb.w ], [ %i.do, %bb.y ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.w ], [ %i.dn, %bb.y ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !88
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink88, i64 noundef %i.dr) #33
  br label %.body41

.body41:                                          ; preds = %.body41.sink.split, %bb.y, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.w ], [ %i.dn, %bb.y ], [ %.pn.ph, %.body41.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ab

.invoke:                                          ; preds = %bb.a, %bb.s, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.s ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.154, %bb.c ], [ @.str.155, %bb.s ], [ @.str.153, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.152, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #34
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !201
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.aa unwind label %bb.b

bb.aa:                                            ; preds = %bb.z
  %i.dv = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.aa
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !88
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.ab:                                            ; preds = %.body41, %bb.r, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.r ], [ %.pn, %.body41 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ab
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !88
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupIZNS9_6LookupERKS6_EUlN4pstd3pmr21polymorphic_allocatorISt4byteEESC_E_EEPSB_SC_T_(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.pstd::vector", align 8      ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !87
  %i.e = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.b, i64 noundef %i.d, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67
  %i.k = urem i64 %i.e, %i.j                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit
  %i.m = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #32
  switch i32 %i.m, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68   ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !187  ; 2 uses
  %.not65 = icmp eq ptr %i.q, null
  br i1 %.not65, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %i.r = load i64, ptr %i.c, align 8, !tbaa !87   ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  br label %bb.w

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #34
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %i.t = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #32 ; 0 uses
  %i.u = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #32
  %i.v = icmp eq i32 %i.u, 35
  br i1 %i.v, label %bb.e, label %_ZNSt12shared_mutex4lockEv.exit

bb.e:                                             ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #34
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge
  %i.w = load ptr, ptr %1, align 8, !tbaa !89
  %i.x = load i64, ptr %i.c, align 8, !tbaa !87
  %i.y = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.w, i64 noundef %i.x, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit43 unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit43: ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !67  ; 7 uses
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !68  ; 4 uses
  %.03668 = urem i64 %i.y, %i.ab                  ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.03668
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !187 ; 2 uses
  %.not4069 = icmp eq ptr %i.ae, null
  br i1 %.not4069, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit43
  %i.af = load i64, ptr %i.c, align 8, !tbaa !87  ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph72, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59
  %3 = phi ptr [ %i.ae, %.lr.ph72 ], [ %i.aq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59 ] ; 3 uses
  %.03671 = phi i64 [ %.03668, %.lr.ph72 ], [ %.036, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59 ]
  %.03770 = phi i32 [ 1, %.lr.ph72 ], [ %5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !87
  %i.aj = icmp eq i64 %i.ai, %i.af
  br i1 %i.aj, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59

bb.h:                                             ; preds = %bb.g
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.h
  %i.ak = load ptr, ptr %1, align 8, !tbaa !89
  %i.al = load ptr, ptr %3, align 8, !tbaa !89
  %bcmp.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.af)
  %i.am = icmp eq i32 %bcmp.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.an = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #32 ; 0 uses
  br label %bb.y

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59: ; preds = %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %4 = zext nneg i32 %.03770 to i64
  %i.ao = add i64 %.03671, %4
  %5 = add nuw nsw i32 %.03770, 1
  %.036 = urem i64 %i.ao, %i.ab                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.036
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !187 ; 2 uses
  %.not40 = icmp eq ptr %i.aq, null
  br i1 %.not40, label %._crit_edge, label %bb.g, !llvm.loop !1687

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread59, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit43
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !586 ; 2 uses
  %i.at = shl i64 %i.as, 2
  %i.au = icmp ugt i64 %i.at, %i.ab
  br i1 %i.au, label %bb.i, label %bb.s

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.av = shl i64 %i.ab, 1                        ; 6 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 16, !tbaa !102 ; 6 uses
  %i.aw = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  store i64 %i.aw, ptr %2, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.av, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i, label %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = shl i64 %i.ab, 4                        ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i, label %._crit_edge.i.i.i..lr.ph.i.i_crit_edge

._crit_edge.i.i.i..lr.ph.i.i_crit_edge:           ; preds = %bb.j
  %i.bc = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, i64 noundef %i.ba, i64 noundef 8), !inline_history !1688
  %.pre.pre = load ptr, ptr %i.n, align 8, !tbaa !68
  %.pre84.pre = load i64, ptr %i.i, align 8, !tbaa !67
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i.i..lr.ph.i.i_crit_edge, %bb.j
  %.pre84 = phi i64 [ %.pre84.pre, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge ], [ %i.ab, %bb.j ]
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge ], [ %i.ac, %bb.j ]
  %.0.i.i.i.i12.i.i = phi ptr [ %i.bf, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge ], [ null, %bb.j ] ; 3 uses
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !69
  store ptr %.0.i.i.i.i12.i.i, ptr %i.ax, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i.i12.i.i, i8 0, i64 %i.ba, i1 false), !tbaa !187
  br label %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit

_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit: ; preds = %bb.i, %.lr.ph.i.i
  %i.bg = phi ptr [ null, %bb.i ], [ %.0.i.i.i.i12.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bh = phi i64 [ %i.ab, %bb.i ], [ %.pre84, %.lr.ph.i.i ] ; 2 uses
  %i.bi = phi ptr [ %i.ac, %bb.i ], [ %.pre, %.lr.ph.i.i ] ; 2 uses
  store i64 %i.av, ptr %i.az, align 8, !tbaa !67
  %.idx = shl nuw nsw i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx
  %.not4173 = icmp eq i64 %i.bh, 0
  br i1 %.not4173, label %._crit_edge76, label %.lr.ph75

._crit_edge76:                                    ; preds = %bb.n, %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit
  %i.bk = load ptr, ptr %i.h, align 16, !tbaa !70
  %i.bl = icmp eq ptr %i.bk, %.sroa.0.0.copyload.i
  br i1 %i.bl, label %bb.o, label %bb.k

bb.k:                                             ; preds = %._crit_edge76
  invoke void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.161, i32 noundef 992, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(21) @.str.187) #34
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.k
  unreachable

.lr.ph75:                                         ; preds = %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit, %bb.n
  %.03874 = phi ptr [ %i.bz, %bb.n ], [ %i.bi, %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEC2EmRKSB_.exit ] ; 2 uses
  %i.bm = load ptr, ptr %.03874, align 8, !tbaa !187 ; 4 uses
  %.not42 = icmp eq ptr %i.bm, null
  br i1 %.not42, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph75
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !89
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !87
  %i.bq = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bn, i64 noundef %i.bp, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #31
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i: ; preds = %bb.l
  %.01113.i = urem i64 %i.bq, %i.av               ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.01113.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !187
  %.not14.i = icmp eq ptr %i.bu, null
  br i1 %.not14.i, label %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i ] ; 2 uses
  %.01116.i = phi i64 [ %.011.i, %.lr.ph.i ], [ %.01113.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i ]
  %i.bv = add i64 %.01116.i, %indvars.iv.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.011.i = urem i64 %i.bv, %i.av                 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.011.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !187
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit, label %.lr.ph.i, !llvm.loop !1689

_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit: ; preds = %.lr.ph.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i
  %.011.lcssa.i = phi i64 [ %.01113.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i ], [ %.011.i, %.lr.ph.i ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.011.lcssa.i
  store ptr %i.bm, ptr %i.by, align 8, !tbaa !187
  br label %bb.n

bb.n:                                             ; preds = %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit, %.lr.ph75
  %i.bz = getelementptr inbounds nuw i8, ptr %.03874, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.bz, %i.bj
  br i1 %.not41, label %._crit_edge76, label %.lr.ph75

bb.o:                                             ; preds = %._crit_edge76
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !1692 ; 2 uses
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !1692
  store ptr %i.cb, ptr %i.n, align 8, !tbaa !1692
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 32, !tbaa !198
  store i64 %i.av, ptr %i.cc, align 32, !tbaa !198
  %i.ce = load i64, ptr %i.az, align 8, !tbaa !198
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !198
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = shl i64 %i.cd, 3
  %i.cg = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !72
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, ptr noundef nonnull %i.ca, i64 noundef %i.cf, i64 noundef 8)
          to label %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit unwind label %bb.q, !inline_history !0

bb.q:                                             ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #31
  unreachable

_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.pre85 = load i64, ptr %i.ar, align 8, !tbaa !586
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.cl

bb.s:                                             ; preds = %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit, %._crit_edge
  %i.cm = phi i64 [ %.pre85, %_ZN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEED2Ev.exit ], [ %i.as, %._crit_edge ]
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.ar, align 8, !tbaa !586
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload = load ptr, ptr %i.co, align 64, !tbaa !102 ; 2 uses
  %i.cp = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !72
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload, i64 noundef 32, i64 noundef 8), !inline_history !1690 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !85
  %i.cu = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !87  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !198
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.s
  %i.cx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !89
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !198
  store i64 %i.cy, ptr %i.ct, align 8, !tbaa !88
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.s
  %i.cz = phi ptr [ %i.cx, %.noexc.i.i.i.i ], [ %i.ct, %bb.s ] ; 2 uses
  switch i64 %i.cv, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !88
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !88
  br label %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit

_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.t, %bb.u
  %i.db = load i64, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !87
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  store i8 0, ptr %i.de, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !89
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !87
  %i.dh = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.df, i64 noundef %i.dg, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44 unwind label %bb.v

bb.v:                                             ; preds = %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #31
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44: ; preds = %_ZZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6LookupERKS6_ENKUlN4pstd3pmr21polymorphic_allocatorISt4byteEESB_E_clB5cxx11ESG_SB_.exit
  %i.dk = load i64, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !68  ; 3 uses
  %.01113.i45 = urem i64 %i.dh, %i.dk             ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.01113.i45
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !187
  %.not14.i46 = icmp eq ptr %i.dn, null
  br i1 %.not14.i46, label %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44, %.lr.ph.i47
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i50, %.lr.ph.i47 ], [ 1, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44 ] ; 2 uses
  %.01116.i49 = phi i64 [ %.011.i51, %.lr.ph.i47 ], [ %.01113.i45, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44 ]
  %i.do = add i64 %.01116.i49, %indvars.iv.i48
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i48, 1
  %.011.i51 = urem i64 %i.do, %i.dk               ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.011.i51
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !187
  %.not.i52 = icmp eq ptr %i.dq, null
  br i1 %.not.i52, label %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54, label %.lr.ph.i47, !llvm.loop !1689

_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54: ; preds = %.lr.ph.i47, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44
  %.011.lcssa.i53 = phi i64 [ %.01113.i45, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i44 ], [ %.011.i51, %.lr.ph.i47 ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.011.lcssa.i53
  store ptr %i.cs, ptr %i.dr, align 8, !tbaa !187
  %i.ds = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #32 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60
  %6 = phi ptr [ %i.q, %.lr.ph ], [ %i.ee, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60 ] ; 3 uses
  %.03467 = phi i64 [ %i.k, %.lr.ph ], [ %i.ec, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60 ]
  %.03566 = phi i32 [ 1, %.lr.ph ], [ %8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !87
  %i.dv = icmp eq i64 %i.du, %i.r
  br i1 %i.dv, label %bb.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60

bb.x:                                             ; preds = %bb.w
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56: ; preds = %bb.x
  %i.dw = load ptr, ptr %1, align 8, !tbaa !89
  %i.dx = load ptr, ptr %6, align 8, !tbaa !89
  %bcmp.i55 = tail call i32 @bcmp(ptr %i.dx, ptr %i.dw, i64 %i.r)
  %i.dy = icmp eq i32 %bcmp.i55, 0
  br i1 %i.dy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread: ; preds = %bb.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56
  %i.dz = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #32 ; 0 uses
  br label %bb.y

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread60: ; preds = %bb.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56
  %7 = zext nneg i32 %.03566 to i64
  %i.ea = add i64 %.03467, %7
  %8 = add nuw nsw i32 %.03566, 1
  %i.eb = load i64, ptr %i.i, align 8, !tbaa !67
  %i.ec = urem i64 %i.ea, %i.eb                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !187 ; 2 uses
  %.not = icmp eq ptr %i.ee, null
  br i1 %.not, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %bb.w, !llvm.loop !1691

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread
  %.1 = phi ptr [ %6, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread ], [ %3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.cs, %_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6InsertEPKS6_PN4pstd6vectorISB_NSC_3pmr21polymorphic_allocatorISB_EEEE.exit54 ]
  ret ptr %.1
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(21) %4) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !85, !alias.scope !1695
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87, !alias.scope !1695
  store i8 0, ptr %i.a, align 8, !tbaa !88, !alias.scope !1695
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA21_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(21) %4)
          to label %_ZN4pbrt12StringPrintfIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !89, !alias.scope !1695 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88, !alias.scope !1695
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !89
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA21_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(21) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #32
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #32
  %.not16 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #32
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.z
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.d, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.i = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !85, !alias.scope !1706
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !87, !alias.scope !1706
  store i8 0, ptr %i.j, align 8, !tbaa !88, !alias.scope !1706
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !536, !noalias !1706 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1706 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !537, !noalias !1706 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !89, !alias.scope !1706 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #32, !noalias !1707
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !85, !alias.scope !1707
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !87, !alias.scope !1707
  store i8 0, ptr %i.ae, align 8, !tbaa !88, !alias.scope !1707
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ad, i8 noundef signext 0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !89, !alias.scope !1707
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #32 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !87, !alias.scope !1707
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #31
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !89, !alias.scope !1707 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %.body26, label %.body26.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %bb.j
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !87 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !87
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRA6_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.ab:                                            ; preds = %.body41, %bb.r, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.r ], [ %.pn, %.body41 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ab
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !88
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupIZNS4_6LookupERKS1_EUlN4pstd3pmr21polymorphic_allocatorISt4byteEES7_E_EEPS6_S7_T_(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull align 4 dereferenceable(128) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pstd::vector.12", align 8   ; 10 uses
  %.sroa.0.sroa.0.0.copyload.i = load i64, ptr %1, align 4
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.sroa.4.0.copyload.i = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.sroa.5.0.copyload.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.sroa.6.0.copyload.i = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.sroa.7.0.copyload.i = load i64, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 4
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.sroa.8.0.copyload.i = load i64, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 4
  %.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.sroa.9.0.copyload.i = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 4
  %.sroa.0.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.0.sroa.10.0.copyload.i = load i64, ptr %.sroa.0.sroa.10.0..sroa_idx.i, align 4, !tbaa !88
  %i.a = mul i64 %.sroa.0.sroa.0.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.b = lshr i64 %i.a, 47
  %i.c = xor i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -4132994306676758123
  %i.e = xor i64 %i.d, -6257218595378797248
  %i.f = mul i64 %i.e, -4132994306676758123
  %i.g = mul i64 %.sroa.0.sroa.4.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.h = lshr i64 %i.g, 47
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -4132994306676758123
  %i.k = xor i64 %i.f, %i.j
  %i.l = mul i64 %i.k, -4132994306676758123
  %i.m = mul i64 %.sroa.0.sroa.5.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.n = lshr i64 %i.m, 47
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -4132994306676758123
  %i.q = xor i64 %i.l, %i.p
  %i.r = mul i64 %i.q, -4132994306676758123
  %i.s = mul i64 %.sroa.0.sroa.6.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.t = lshr i64 %i.s, 47
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -4132994306676758123
  %i.w = xor i64 %i.r, %i.v
  %i.x = mul i64 %i.w, -4132994306676758123
  %i.y = mul i64 %.sroa.0.sroa.7.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.z = lshr i64 %i.y, 47
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -4132994306676758123
  %i.ac = xor i64 %i.x, %i.ab
  %i.ad = mul i64 %i.ac, -4132994306676758123
  %i.ae = mul i64 %.sroa.0.sroa.8.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.af = lshr i64 %i.ae, 47
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, -4132994306676758123
  %i.ai = xor i64 %i.ad, %i.ah
  %i.aj = mul i64 %i.ai, -4132994306676758123
  %i.ak = mul i64 %.sroa.0.sroa.9.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.al = lshr i64 %i.ak, 47
  %i.am = xor i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, -4132994306676758123
  %i.ao = xor i64 %i.aj, %i.an
  %i.ap = mul i64 %i.ao, -4132994306676758123
  %i.aq = mul i64 %.sroa.0.sroa.10.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.ar = lshr i64 %i.aq, 47
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, -4132994306676758123
  %i.au = xor i64 %i.ap, %i.at
  %i.av = mul i64 %i.au, -4132994306676758123     ; 2 uses
  %i.aw = lshr i64 %i.av, 47
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -4132994306676758123     ; 2 uses
  %i.az = lshr i64 %i.ay, 47
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !175
  %i.be = urem i64 %i.ba, %i.bd                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.bg = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #32
  switch i32 %i.bg, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader: ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !176
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.be
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !178 ; 2 uses
  %.not66 = icmp eq ptr %i.bk, null
  br i1 %.not66, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #34
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge: ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %i.bl = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #32 ; 0 uses
  %i.bm = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #32
  %i.bn = icmp eq i32 %i.bm, 35
  br i1 %i.bn, label %bb.d, label %_ZNSt12shared_mutex4lockEv.exit

bb.d:                                             ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #34
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge
  %.sroa.0.sroa.0.0.copyload.i46 = load i64, ptr %1, align 4
  %.sroa.0.sroa.4.0.copyload.i48 = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %.sroa.0.sroa.5.0.copyload.i50 = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i52 = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %.sroa.0.sroa.7.0.copyload.i54 = load i64, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 4
  %.sroa.0.sroa.8.0.copyload.i56 = load i64, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 4
  %.sroa.0.sroa.9.0.copyload.i58 = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 4
  %.sroa.0.sroa.10.0.copyload.i60 = load i64, ptr %.sroa.0.sroa.10.0..sroa_idx.i, align 4, !tbaa !88
  %i.bo = mul i64 %.sroa.0.sroa.0.0.copyload.i46, -4132994306676758123 ; 2 uses
  %i.bp = lshr i64 %i.bo, 47
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -4132994306676758123
  %i.bs = xor i64 %i.br, -6257218595378797248
  %i.bt = mul i64 %i.bs, -4132994306676758123
  %i.bu = mul i64 %.sroa.0.sroa.4.0.copyload.i48, -4132994306676758123 ; 2 uses
  %i.bv = lshr i64 %i.bu, 47
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = mul i64 %i.bw, -4132994306676758123
  %i.by = xor i64 %i.bt, %i.bx
  %i.bz = mul i64 %i.by, -4132994306676758123
  %i.ca = mul i64 %.sroa.0.sroa.5.0.copyload.i50, -4132994306676758123 ; 2 uses
  %i.cb = lshr i64 %i.ca, 47
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.cc, -4132994306676758123
  %i.ce = xor i64 %i.bz, %i.cd
  %i.cf = mul i64 %i.ce, -4132994306676758123
  %i.cg = mul i64 %.sroa.0.sroa.6.0.copyload.i52, -4132994306676758123 ; 2 uses
  %i.ch = lshr i64 %i.cg, 47
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = mul i64 %i.ci, -4132994306676758123
  %i.ck = xor i64 %i.cf, %i.cj
  %i.cl = mul i64 %i.ck, -4132994306676758123
  %i.cm = mul i64 %.sroa.0.sroa.7.0.copyload.i54, -4132994306676758123 ; 2 uses
  %i.cn = lshr i64 %i.cm, 47
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = mul i64 %i.co, -4132994306676758123
  %i.cq = xor i64 %i.cl, %i.cp
  %i.cr = mul i64 %i.cq, -4132994306676758123
  %i.cs = mul i64 %.sroa.0.sroa.8.0.copyload.i56, -4132994306676758123 ; 2 uses
  %i.ct = lshr i64 %i.cs, 47
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = mul i64 %i.cu, -4132994306676758123
  %i.cw = xor i64 %i.cr, %i.cv
  %i.cx = mul i64 %i.cw, -4132994306676758123
  %i.cy = mul i64 %.sroa.0.sroa.9.0.copyload.i58, -4132994306676758123 ; 2 uses
  %i.cz = lshr i64 %i.cy, 47
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = mul i64 %i.da, -4132994306676758123
  %i.dc = xor i64 %i.cx, %i.db
  %i.dd = mul i64 %i.dc, -4132994306676758123
  %i.de = mul i64 %.sroa.0.sroa.10.0.copyload.i60, -4132994306676758123 ; 2 uses
  %i.df = lshr i64 %i.de, 47
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, -4132994306676758123
  %i.di = xor i64 %i.dd, %i.dh
  %i.dj = mul i64 %i.di, -4132994306676758123     ; 2 uses
  %i.dk = lshr i64 %i.dj, 47
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = mul i64 %i.dl, -4132994306676758123     ; 2 uses
  %i.dn = lshr i64 %i.dm, 47
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = load i64, ptr %i.bc, align 8, !tbaa !175 ; 2 uses
  %i.dq = urem i64 %i.do, %i.dp                   ; 2 uses
  %i.dr = load ptr, ptr %i.bh, align 8, !tbaa !176 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !178 ; 2 uses
  %.not4269 = icmp eq ptr %i.dt, null
  br i1 %.not4269, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZNSt12shared_mutex4lockEv.exit, %bb.f
  %3 = phi ptr [ %i.ee, %bb.f ], [ %i.dt, %_ZNSt12shared_mutex4lockEv.exit ]
  %.03971 = phi i64 [ %i.eb, %bb.f ], [ %i.dq, %_ZNSt12shared_mutex4lockEv.exit ] ; 2 uses
  %.04070 = phi i32 [ %5, %bb.f ], [ 1, %_ZNSt12shared_mutex4lockEv.exit ] ; 2 uses
  %i.du = tail call noundef zeroext i1 @_ZNK4pbrt12SquareMatrixILi4EEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(128) %3)
  br i1 %i.du, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph72
  %i.dv = load ptr, ptr %i.bh, align 8, !tbaa !176
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03971
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !178
  %i.dy = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #32 ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph72
  %4 = zext nneg i32 %.04070 to i64
  %i.dz = add i64 %.03971, %4
  %5 = add nuw nsw i32 %.04070, 1
  %i.ea = load i64, ptr %i.bc, align 8, !tbaa !175 ; 2 uses
  %i.eb = urem i64 %i.dz, %i.ea                   ; 2 uses
  %i.ec = load ptr, ptr %i.bh, align 8, !tbaa !176 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !178 ; 2 uses
  %.not42 = icmp eq ptr %i.ee, null
  br i1 %.not42, label %._crit_edge, label %.lr.ph72, !llvm.loop !2122

._crit_edge:                                      ; preds = %bb.f, %_ZNSt12shared_mutex4lockEv.exit
  %i.ef = phi ptr [ %i.dr, %_ZNSt12shared_mutex4lockEv.exit ], [ %i.ec, %bb.f ] ; 2 uses
  %i.eg = phi i64 [ %i.dp, %_ZNSt12shared_mutex4lockEv.exit ], [ %i.ea, %bb.f ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !174 ; 2 uses
  %i.ej = shl i64 %i.ei, 2
  %i.ek = icmp ugt i64 %i.ej, %i.eg
  br i1 %i.ek, label %bb.g, label %bb.o

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.el = shl i64 %i.eg, 1                        ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 16, !tbaa !102 ; 4 uses
  %i.em = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  store i64 %i.em, ptr %2, align 8, !tbaa !102
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.el, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i, label %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eq = shl i64 %i.eg, 4                        ; 3 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.lr.ph.i.i, label %._crit_edge.i.i.i..lr.ph.i.i_crit_edge

._crit_edge.i.i.i..lr.ph.i.i_crit_edge:           ; preds = %bb.h
  %i.es = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !72
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef ptr %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, i64 noundef %i.eq, i64 noundef 8), !inline_history !2123
  %.pre.pre = load ptr, ptr %i.bh, align 8, !tbaa !176
  %.pre84.pre = load i64, ptr %i.bc, align 8, !tbaa !175
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i.i..lr.ph.i.i_crit_edge, %bb.h
  %.pre84 = phi i64 [ %.pre84.pre, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge ], [ %i.eg, %bb.h ]
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge ], [ %i.ef, %bb.h ]
  %.0.i.i.i.i12.i.i = phi ptr [ %i.ev, %._crit_edge.i.i.i..lr.ph.i.i_crit_edge ], [ null, %bb.h ] ; 2 uses
  store i64 %i.el, ptr %i.eo, align 8, !tbaa !183
  store ptr %.0.i.i.i.i12.i.i, ptr %i.en, align 8, !tbaa !176
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i.i12.i.i, i8 0, i64 %i.eq, i1 false), !tbaa !178
  br label %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit

_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit: ; preds = %bb.g, %.lr.ph.i.i
  %i.ew = phi i64 [ %i.eg, %bb.g ], [ %.pre84, %.lr.ph.i.i ] ; 2 uses
  %i.ex = phi ptr [ %i.ef, %bb.g ], [ %.pre, %.lr.ph.i.i ] ; 2 uses
  store i64 %i.el, ptr %i.ep, align 8, !tbaa !175
  %.idx = shl nuw nsw i64 %i.ew, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.idx
  %.not4373 = icmp eq i64 %i.ew, 0
  br i1 %.not4373, label %._crit_edge76, label %.lr.ph75

._crit_edge76.loopexit:                           ; preds = %bb.k
  %.pre85 = load ptr, ptr %2, align 8, !tbaa !184
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit
  %i.ez = phi ptr [ %.pre85, %._crit_edge76.loopexit ], [ %.sroa.0.0.copyload.i, %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit ] ; 3 uses
  %i.fa = load ptr, ptr %i.bb, align 16, !tbaa !184
  %i.fb = icmp eq ptr %i.fa, %i.ez
  br i1 %i.fb, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge76
  invoke void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.161, i32 noundef 992, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(21) @.str.187) #34
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

.lr.ph75:                                         ; preds = %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit, %bb.k
  %.03874 = phi ptr [ %i.fd, %bb.k ], [ %i.ex, %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit ] ; 2 uses
  %i.fc = load ptr, ptr %.03874, align 8, !tbaa !178 ; 2 uses
  %.not44 = icmp eq ptr %i.fc, null
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph75
  invoke void @_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull %i.fc, ptr noundef nonnull %2)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j, %.lr.ph75
  %i.fd = getelementptr inbounds nuw i8, ptr %.03874, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %i.fd, %i.ey
  br i1 %.not43, label %._crit_edge76.loopexit, label %.lr.ph75

bb.l:                                             ; preds = %._crit_edge76
  %i.fe = load ptr, ptr %i.bh, align 8, !tbaa !2126 ; 3 uses
  %i.ff = load ptr, ptr %i.en, align 8, !tbaa !2126
  store ptr %i.ff, ptr %i.bh, align 8, !tbaa !2126
  store ptr %i.fe, ptr %i.en, align 8, !tbaa !2126
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 32, !tbaa !198 ; 2 uses
  %i.fi = load <2 x i64>, ptr %i.eo, align 8, !tbaa !198
  store i64 %i.fh, ptr %i.eo, align 8, !tbaa !198
  store <2 x i64> %i.fi, ptr %i.fg, align 32, !tbaa !198
  store i64 0, ptr %i.ep, align 8, !tbaa !175
  %.not.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fj = shl i64 %i.fh, 3
  %i.fk = load ptr, ptr %i.ez, align 8, !tbaa !72
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull %i.fe, i64 noundef %i.fj, i64 noundef 8)
          to label %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEED2Ev.exit unwind label %bb.n, !inline_history !7

bb.n:                                             ; preds = %bb.m
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #31
  unreachable

_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.pre86 = load i64, ptr %i.eh, align 8, !tbaa !174
  br label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.i
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %lpad.loopexit.split-lp105

bb.o:                                             ; preds = %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEED2Ev.exit, %._crit_edge
  %i.fp = phi i64 [ %.pre86, %_ZN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEED2Ev.exit ], [ %i.ei, %._crit_edge ]
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.eh, align 8, !tbaa !174
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload = load ptr, ptr %i.fr, align 64, !tbaa !102 ; 2 uses
  %i.fs = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !72
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call noundef ptr %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload, i64 noundef 128, i64 noundef 4), !inline_history !2124 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.fv, ptr noundef nonnull align 4 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !214
  call void @_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.bb)
  %i.fw = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #32 ; 0 uses
  br label %bb.q

.lr.ph:                                           ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader, %_ZNSt12shared_mutex11lock_sharedEv.exit
  %6 = phi ptr [ %i.gh, %_ZNSt12shared_mutex11lock_sharedEv.exit ], [ %i.bk, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader ]
  %.03468 = phi i64 [ %i.ge, %_ZNSt12shared_mutex11lock_sharedEv.exit ], [ %i.be, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader ] ; 2 uses
  %.03567 = phi i32 [ %8, %_ZNSt12shared_mutex11lock_sharedEv.exit ], [ 1, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader ] ; 2 uses
  %i.fx = tail call noundef zeroext i1 @_ZNK4pbrt12SquareMatrixILi4EEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(128) %6)
  br i1 %i.fx, label %bb.p, label %_ZNSt12shared_mutex11lock_sharedEv.exit

bb.p:                                             ; preds = %.lr.ph
  %i.fy = load ptr, ptr %i.bh, align 8, !tbaa !176
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.03468
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !178
  %i.gb = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #32 ; 0 uses
  br label %bb.q

_ZNSt12shared_mutex11lock_sharedEv.exit:          ; preds = %.lr.ph
  %7 = zext nneg i32 %.03567 to i64
  %i.gc = add i64 %.03468, %7
  %8 = add nuw nsw i32 %.03567, 1
  %i.gd = load i64, ptr %i.bc, align 8, !tbaa !175
  %i.ge = urem i64 %i.gc, %i.gd                   ; 2 uses
  %i.gf = load ptr, ptr %i.bh, align 8, !tbaa !176
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !178 ; 2 uses
  %.not = icmp eq ptr %i.gh, null
  br i1 %.not, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %.lr.ph, !llvm.loop !2125

bb.q:                                             ; preds = %bb.e, %bb.o, %bb.p
  %.1 = phi ptr [ %i.ga, %bb.p ], [ %i.dx, %bb.e ], [ %i.fv, %bb.o ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.0.sroa.0.0.copyload.i = load i64, ptr %1, align 4
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.sroa.4.0.copyload.i = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.sroa.6.0.copyload.i = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.sroa.7.0.copyload.i = load i64, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 4
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.sroa.8.0.copyload.i = load i64, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 4
  %.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.sroa.9.0.copyload.i = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 4
  %.sroa.0.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.sroa.10.0.copyload.i = load i64, ptr %.sroa.0.sroa.10.0..sroa_idx.i, align 4, !tbaa !88
  %i.a = mul i64 %.sroa.0.sroa.0.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.b = lshr i64 %i.a, 47
  %i.c = xor i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -4132994306676758123
  %i.e = xor i64 %i.d, -6257218595378797248
  %i.f = mul i64 %i.e, -4132994306676758123
  %i.g = mul i64 %.sroa.0.sroa.4.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.h = lshr i64 %i.g, 47
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -4132994306676758123
  %i.k = xor i64 %i.f, %i.j
  %i.l = mul i64 %i.k, -4132994306676758123
  %i.m = mul i64 %.sroa.0.sroa.5.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.n = lshr i64 %i.m, 47
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -4132994306676758123
  %i.q = xor i64 %i.l, %i.p
  %i.r = mul i64 %i.q, -4132994306676758123
  %i.s = mul i64 %.sroa.0.sroa.6.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.t = lshr i64 %i.s, 47
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -4132994306676758123
  %i.w = xor i64 %i.r, %i.v
  %i.x = mul i64 %i.w, -4132994306676758123
  %i.y = mul i64 %.sroa.0.sroa.7.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.z = lshr i64 %i.y, 47
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -4132994306676758123
  %i.ac = xor i64 %i.x, %i.ab
  %i.ad = mul i64 %i.ac, -4132994306676758123
  %i.ae = mul i64 %.sroa.0.sroa.8.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.af = lshr i64 %i.ae, 47
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, -4132994306676758123
  %i.ai = xor i64 %i.ad, %i.ah
  %i.aj = mul i64 %i.ai, -4132994306676758123
  %i.ak = mul i64 %.sroa.0.sroa.9.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.al = lshr i64 %i.ak, 47
  %i.am = xor i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, -4132994306676758123
  %i.ao = xor i64 %i.aj, %i.an
  %i.ap = mul i64 %i.ao, -4132994306676758123
  %i.aq = mul i64 %.sroa.0.sroa.10.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.ar = lshr i64 %i.aq, 47
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, -4132994306676758123
  %i.au = xor i64 %i.ap, %i.at
  %i.av = mul i64 %i.au, -4132994306676758123     ; 2 uses
  %i.aw = lshr i64 %i.av, 47
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -4132994306676758123     ; 2 uses
  %i.az = lshr i64 %i.ay, 47
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !175 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !176 ; 3 uses
  %.01113 = urem i64 %i.ba, %i.bc                 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01113
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !178
  %.not14 = icmp eq ptr %i.bg, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %.01116 = phi i64 [ %.011, %.lr.ph ], [ %.01113, %bb.a ]
  %i.bh = add i64 %.01116, %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.011 = urem i64 %i.bh, %i.bc                   ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.011
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !178
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2127

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.011.lcssa = phi i64 [ %.01113, %bb.a ], [ %.011, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.011.lcssa
  store ptr %1, ptr %i.bk, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNK4pbrt12SquareMatrixILi4EEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(960) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !367  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !386    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #34
  unreachable

_ZNKSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 960                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 9607679205057058)
  %i.l = select i1 %i.j, i64 9607679205057058, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 960                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN4pbrt24AnimatedShapeSceneEntityC2EOS0_(ptr noundef nonnull align 8 dereferenceable(960) %i.q, ptr noundef nonnull align 8 dereferenceable(960) %2)
          to label %_ZNSt16allocator_traitsISaIN4pbrt24AnimatedShapeSceneEntityEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.l

_ZNSt16allocator_traitsISaIN4pbrt24AnimatedShapeSceneEntityEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt24AnimatedShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN4pbrt24AnimatedShapeSceneEntityEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN4pbrt24AnimatedShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN4pbrt24AnimatedShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4pbrt24AnimatedShapeSceneEntityEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN4pbrt24AnimatedShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4pbrt24AnimatedShapeSceneEntityEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN4pbrt24AnimatedShapeSceneEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(960) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(960) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN4pbrt24AnimatedShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN4pbrt24AnimatedShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 960 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 960 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt24AnimatedShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #32 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4pbrt24AnimatedShapeSceneEntityEEEvT_S5_(ptr noundef nonnull %i.p, ptr noundef nonnull %.016.i.i.i.i.i)
          to label %_ZSt8_DestroyIPN4pbrt24AnimatedShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i unwind label %bb.d

_ZSt8_DestroyIPN4pbrt24AnimatedShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i: ; preds = %bb.c
  invoke void @__cxa_rethrow() #34
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4pbrt24AnimatedShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN4pbrt24AnimatedShapeSceneEntityES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4pbrt24AnimatedShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt24AnimatedShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN4pbrt24AnimatedShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN4pbrt24AnimatedShapeSceneEntityEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4pbrt24AnimatedShapeSceneEntityEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN4pbrt24AnimatedShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 960 ; 4 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt24AnimatedShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit39, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt24AnimatedShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN4pbrt24AnimatedShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i33
  %.016.i.i.i.i.i30 = phi ptr [ %i.ab, %_ZSt10_ConstructIN4pbrt24AnimatedShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i33 ], [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt24AnimatedShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
end_hunk_1
