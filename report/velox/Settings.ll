inline.NumInlined: 1121
inline.NumDeleted: 571
begin_hunk_0_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_:bb.a
.backedge:                                        ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, %.thread81, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, %bb.o
  br label %bb.c, !llvm.loop !3543

bb.q:                                             ; preds = %.thread76
  %i.bx = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.bx, ptr %1, align 4, !tbaa !7
  %i.by = and i32 %i.bx, 512
  %.not53 = icmp eq i32 %i.by, 0
  br i1 %.not53, label %bb.u, label %bb.r

.thread78:                                        ; preds = %bb.p
  %i.bz = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bz, ptr %1, align 4, !tbaa !7
  store atomic i32 %.246.ph, ptr %i.m monotonic, align 4
  %i.ca = load i32, ptr %1, align 4, !tbaa !7
  %i.cb = and i32 %i.ca, 512
  %.not5379 = icmp eq i32 %i.cb, 0
  br i1 %.not5379, label %.thread81, label %.thread80

bb.r:                                             ; preds = %bb.q
  store i16 3, ptr %2, align 2, !tbaa !59
  %i.cc = trunc i32 %.246.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !60
  br label %.thread80

.thread81:                                        ; preds = %.thread78
  %i.ce = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ce, label %.backedge, label %bb.s

bb.s:                                             ; preds = %.thread81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cf = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cg = add i32 %i.cf, -2048                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !7
  %i.ch = icmp ugt i32 %i.cg, 2047
  %i.ci = and i32 %i.cf, 16
  %.not.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i = or i1 %i.ch, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !3431

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  %i.cj = cmpxchg ptr %i.br, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cl = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cm = add i32 %i.cl, -2048                    ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !7
  %i.cn = icmp ugt i32 %i.cm, 2047
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !3431

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.backedge

.thread80:                                        ; preds = %.thread78, %bb.k, %bb.l, %bb.r
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

declare noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800), ptr noundef nonnull, ptr noundef nonnull) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %i.a
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v() #9

declare noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly18SequentialThreadId3getEv() ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %0, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %1, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

declare noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly8settings18getAllSettingsMetaEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %2 = alloca %"class.folly::LockedPtr.30", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = load atomic i8, ptr @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #15
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 24), align 8, !tbaa !44
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 32), align 8, !tbaa !49
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #15
  br label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit

_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3544)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr %2, align 8, !tbaa !53, !alias.scope !3544
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !59, !alias.scope !3544
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !60, !alias.scope !3544
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15, !noalias !3544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !3544
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48) monotonic, align 8, !noalias !3544 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7, !noalias !3544
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !3544 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !3544
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !59, !alias.scope !3544
  br label %.noexc

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.p = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %.noexc unwind label %bb.w     ; 0 uses

.noexc:                                           ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !3544
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15, !noalias !3544
  %i.q = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  %.neg.i.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i.i ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !3464 ; 4 uses
  %i.u = icmp ugt i64 %i.t, 96076792050570581
  br i1 %i.u, label %.invoke.i, label %bb.g

.invoke.i.loopexit:                               ; preds = %bb.j
  store ptr %i.au, ptr %i.w, align 8
  store ptr %i.at, ptr %0, align 8
  br label %.invoke.i

.invoke.i:                                        ; preds = %.invoke.i.loopexit, %.noexc
  %i.v = phi ptr [ @.str.6, %.noexc ], [ @.str.7, %.invoke.i.loopexit ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.v) #29
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3547 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !3550   ; 6 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = sdiv exact i64 %i.ab, 96
  %i.ad = icmp ult i64 %i.ac, %i.t
  br i1 %i.ad, label %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE11_M_allocateEm.exit.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i

_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3551 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.aa
  %i.ai = mul nuw nsw i64 %i.t, 96
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #30
          to label %.noexc4.i unwind label %.loopexit.split-lp.i ; 5 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE11_M_allocateEm.exit.i.i.i
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.y, %i.af
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc4.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %.noexc4.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %.noexc4.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !3533, !alias.scope !3552
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 96
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3556

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc4.i
  %.not.i8.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i.i.i, label %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #28
  br label %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i

_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  store ptr %i.aj, ptr %0, align 8, !tbaa !3550
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !3551
  %i.an = getelementptr inbounds nuw [96 x i8], ptr %i.aj, i64 %i.t ; 2 uses
  store ptr %i.an, ptr %i.w, align 8, !tbaa !3547
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i, %bb.g
  %.promoted7 = phi ptr [ %i.aj, %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i ], [ %i.y, %bb.g ]
  %.promoted = phi ptr [ %i.an, %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i ], [ %i.x, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !44 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i
  %i.at = phi ptr [ %i.bt, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i ], [ %.promoted7, %.lr.ph.i.i.preheader ] ; 8 uses
  %i.au = phi ptr [ %i.bu, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i ], [ %.promoted, %.lr.ph.i.i.preheader ] ; 7 uses
  %.sroa.08.011.i.i = phi ptr [ %i.bv, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i ], [ %i.ap, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !3468 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef nonnull align 8 dereferenceable(96) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %.noexc5.i unwind label %.loopexit.i, !inline_history !3557 ; 2 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !3551 ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.bb, %i.au
  br i1 %.not.i.i3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc5.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bb, ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i64 96, i1 false), !tbaa.struct !3533
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !3551
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i

bb.j:                                             ; preds = %.noexc5.i
  %i.bd = ptrtoint ptr %i.au to i64
  %i.be = ptrtoint ptr %i.at to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775776
  br i1 %i.bg, label %.invoke.i.loopexit, label %_ZNKSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

_ZNKSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.bh = sdiv exact i64 %i.bf, 96                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bi, i64 96076792050570581)
  %i.bl = select i1 %i.bj, i64 96076792050570581, i64 %i.bk ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bm = mul nuw nsw i64 %i.bl, 96
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #30
          to label %.noexc7.i unwind label %.loopexit.i ; 5 uses

.noexc7.i:                                        ; preds = %_ZNKSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bo, ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i64 96, i1 false), !tbaa.struct !3533
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc7.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bn, %.noexc7.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.at, %.noexc7.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !3533, !alias.scope !3558
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.au
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3556

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc7.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.noexc7.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 96
  %.not.i23.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bf) #28
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.br, ptr %i.as, align 8, !tbaa !3551
  %i.bs = getelementptr inbounds nuw [96 x i8], ptr %i.bn, i64 %i.bl
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i: ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.i
  %i.bt = phi ptr [ %i.bn, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.at, %bb.i ] ; 2 uses
  %i.bu = phi ptr [ %i.bs, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.au, %bb.i ] ; 2 uses
  %i.bv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.08.011.i.i) #31 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.aq
  br i1 %i.bw, label %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i.loopexit", label %.lr.ph.i.i

"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i.loopexit": ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i
  store ptr %i.bu, ptr %i.w, align 8
  store ptr %i.bt, ptr %0, align 8
  br label %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i"

"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i": ; preds = %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i.loopexit", %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i
  %i.bx = load i16, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %.not.i.i8.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i8.i, label %bb.v, label %bb.l

bb.l:                                             ; preds = %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i"
  %i.by = load ptr, ptr %2, align 8, !tbaa !53    ; 7 uses
  switch i16 %i.bx, label %bb.r [
    i16 1, label %bb.m
    i16 3, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.bz = load atomic i32, ptr %i.by acquire, align 4
  %i.ca = and i32 %i.bz, 768
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.by)
          to label %.noexc10.i unwind label %bb.t

.noexc10.i:                                       ; preds = %bb.n
  br i1 %i.cc, label %bb.v, label %bb.o

bb.o:                                             ; preds = %.noexc10.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cd = atomicrmw sub ptr %i.by, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ce = add i32 %i.cd, -2048                    ; 2 uses
  store i32 %i.ce, ptr %i.b, align 4, !tbaa !7
  %i.cf = icmp ugt i32 %i.ce, 2047
  %i.cg = and i32 %i.cd, 16
  %.not.i.i.i.i9.i = icmp eq i32 %i.cg, 0
  %or.cond.i.i.i.i = or i1 %i.cf, %.not.i.i.i.i9.i
  br i1 %or.cond.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, label %bb.p, !prof !3431

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i unwind label %bb.t

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.v

bb.q:                                             ; preds = %bb.l
  %i.ch = load i16, ptr %i.h, align 2, !tbaa !60
  %i.ci = zext i16 %i.ch to i64
  %i.cj = ptrtoint ptr %i.by to i64
  %.idx.i.i = shl nuw nsw i64 %i.ci, 5
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i.i
  %i.cl = cmpxchg ptr %i.ck, i64 %i.cj, i64 0 seq_cst seq_cst, align 8
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cm, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cn = atomicrmw sub ptr %i.by, i32 2048 seq_cst, align 4 ; 2 uses
  %i.co = add i32 %i.cn, -2048                    ; 2 uses
  store i32 %i.co, ptr %i.a, align 4, !tbaa !7
  %i.cp = icmp ugt i32 %i.co, 2047
  %i.cq = and i32 %i.cn, 16
  %.not.i.i.i.i = icmp eq i32 %i.cq, 0
  %or.cond.i.i.i = or i1 %i.cp, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.s, !prof !3431

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.t

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.n
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #27
  unreachable

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.au, ptr %i.w, align 8
  store ptr %i.at, ptr %0, align 8
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE11_M_allocateEm.exit.i.i.i, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE2ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.body

bb.v:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %bb.q, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, %.noexc10.i, %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.w:                                             ; preds = %bb.f
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ct, %bb.w ], [ %lpad.phi.i, %bb.u ]
  %i.cu = load ptr, ptr %0, align 8, !tbaa !3550  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.body
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !3547
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #28
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EED2Ev.exit

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EED2Ev.exit: ; preds = %.body, %bb.x
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE2ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !59
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !53
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !3562
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !3564
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !3521
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !3565
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3566 ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !3564
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !44
  store ptr %i.j, ptr %i.d, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !3464
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64   ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE7_M_copyILb0ENSJ_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESO_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3566 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !3567

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3526 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !3568

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !3464
  store i64 %i.u, ptr %i.l, align 8, !tbaa !3464
  store ptr %i.o, ptr %i.a, align 8, !tbaa !65
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !3569
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !3562
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #27
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3569, !nonnull !124, !align !3570
  %i.c = load ptr, ptr %0, align 8, !tbaa !3562
end_hunk_0
