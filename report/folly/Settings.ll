Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Settings?download=true
inline.NumInlined: 1135
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_:bb.a
  %i.cn = icmp ugt i32 %i.cm, 2047
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !3503

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.backedge

.thread81:                                        ; preds = %.thread79, %bb.k, %bb.l, %bb.r
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
  store i32 %i.a, ptr %0, align 4, !tbaa !204
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %1, align 4, !tbaa !204
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
define void @_ZN5folly8settings18getAllSettingsMetaEv(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %2 = alloca %"class.folly::LockedPtr.34", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = load atomic i8, ptr @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, !prof !189

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #15
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 24), align 8, !tbaa !194
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 32), align 8, !tbaa !195
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #15
  br label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit

_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3670)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr %2, align 8, !tbaa !201, !alias.scope !3670
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !202, !alias.scope !3670
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !203, !alias.scope !3670
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15, !noalias !3670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !3670
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48) monotonic, align 8, !noalias !3670 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !204, !noalias !3670
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !3670 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !3670
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !202, !alias.scope !3670
  br label %.noexc

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.p = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %.noexc unwind label %bb.v     ; 0 uses

.noexc:                                           ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !3670
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15, !noalias !3670
  %i.q = load ptr, ptr %2, align 8, !tbaa !201    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  %.neg.i.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i.i ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !3510 ; 4 uses
  %i.u = icmp ugt i64 %i.t, 96076792050570581
  br i1 %i.u, label %.invoke.i, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3673 ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !3674   ; 6 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = sdiv exact i64 %i.aa, 96
  %i.ac = icmp ult i64 %i.ab, %i.t
  br i1 %i.ac, label %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE11_M_allocateEm.exit.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i

_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3675 ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.z
  %i.ah = mul nuw nsw i64 %i.t, 96
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #30
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ; 5 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE11_M_allocateEm.exit.i.i.i
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.x, %i.ae
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc4.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.noexc4.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %.noexc4.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !3552, !alias.scope !3676
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 96
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3665

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc4.i
  %.not.i8.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i8.i.i.i, label %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #28
  br label %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i

_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !3674
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !3675
  %i.am = getelementptr inbounds nuw [96 x i8], ptr %i.ai, i64 %i.t ; 2 uses
  store ptr %i.am, ptr %i.v, align 8, !tbaa !3673
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i, %bb.g
  %.promoted7 = phi ptr [ %i.ai, %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i ], [ %i.x, %bb.g ]
  %.promoted = phi ptr [ %i.am, %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i ], [ %i.w, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !194 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i
  %i.as = phi ptr [ %i.bq, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i ], [ %.promoted7, %.lr.ph.i.i.preheader ] ; 8 uses
  %i.at = phi ptr [ %i.br, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i ], [ %.promoted, %.lr.ph.i.i.preheader ] ; 7 uses
  %.sroa.08.011.i.i = phi ptr [ %i.bs, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i ], [ %i.ao, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3511 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !215
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef nonnull align 8 dereferenceable(96) ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !inline_history !3666 ; 2 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i
  %3 = load ptr, ptr %i.ar, align 8, !tbaa !3675  ; 3 uses
  %.not.i.i3.i = icmp eq ptr %3, %i.at
  br i1 %.not.i.i3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc5.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.az, i64 96, i1 false), !tbaa.struct !3552
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %4, ptr %i.ar, align 8, !tbaa !3675
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i

bb.j:                                             ; preds = %.noexc5.i
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = ptrtoint ptr %i.as to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775776
  br i1 %i.bd, label %.invoke.i.loopexit, label %_ZNKSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke.i.loopexit:                               ; preds = %bb.j
  store ptr %i.at, ptr %i.v, align 8
  store ptr %i.as, ptr %0, align 8
  br label %.invoke.i

.invoke.i:                                        ; preds = %.invoke.i.loopexit, %.noexc
  %i.be = phi ptr [ @.str.6, %.noexc ], [ @.str.7, %.invoke.i.loopexit ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.be) #29
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.bf = sdiv exact i64 %i.bc, 96                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 96076792050570581)
  %i.bj = select i1 %i.bh, i64 96076792050570581, i64 %i.bi ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bk = mul nuw nsw i64 %i.bj, 96
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #30
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit ; 5 uses

.noexc7.i:                                        ; preds = %_ZNKSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bm, ptr noundef nonnull align 8 dereferenceable(96) %i.az, i64 96, i1 false), !tbaa.struct !3552
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc7.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bl, %.noexc7.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %i.as, %.noexc7.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !3552, !alias.scope !3677
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3665

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc7.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.noexc7.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 96
  %.not.i23.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bc) #28
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %5, ptr %i.ar, align 8, !tbaa !3675
  %i.bp = getelementptr inbounds nuw [96 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i: ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.i
  %i.bq = phi ptr [ %i.bl, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.as, %bb.i ] ; 2 uses
  %i.br = phi ptr [ %i.bp, %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.at, %bb.i ] ; 2 uses
  %i.bs = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.08.011.i.i) #31 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ap
  br i1 %i.bt, label %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i.loopexit", label %.lr.ph.i.i

"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i.loopexit": ; preds = %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE9push_backERKS2_.exit.i.i
  store ptr %i.br, ptr %i.v, align 8
  store ptr %i.bq, ptr %0, align 8
  br label %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i"

"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i": ; preds = %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i.loopexit", %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE7reserveEm.exit.i.i
  %i.bu = load i16, ptr %i.g, align 8, !tbaa !202 ; 2 uses
  %.not.i.i8.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.i8.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i"
  %i.bv = load ptr, ptr %2, align 8, !tbaa !201   ; 7 uses
  switch i16 %i.bu, label %bb.r [
    i16 1, label %bb.m
    i16 3, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.bw = load atomic i32, ptr %i.bv acquire, align 4
  %i.bx = and i32 %i.bw, 768
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bv)
          to label %.noexc10.i unwind label %bb.t

.noexc10.i:                                       ; preds = %bb.n
  br i1 %i.bz, label %bb.u, label %bb.o

bb.o:                                             ; preds = %.noexc10.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ca = atomicrmw add ptr %i.bv, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.cb = add i32 %i.ca, -2048                    ; 2 uses
  store i32 %i.cb, ptr %i.b, align 4, !tbaa !204
  %i.cc = icmp ugt i32 %i.cb, 2047
  %i.cd = and i32 %i.ca, 16
  %.not.i.i.i.i9.i = icmp eq i32 %i.cd, 0
  %or.cond.i.i.i.i = or i1 %i.cc, %.not.i.i.i.i9.i
  br i1 %or.cond.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, label %bb.p, !prof !3503

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i unwind label %bb.t

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ce = load i16, ptr %i.h, align 2, !tbaa !203
  %i.cf = zext i16 %i.ce to i64
  %i.cg = ptrtoint ptr %i.bv to i64
  %.idx.i.i = shl nuw nsw i64 %i.cf, 5
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i.i
  %i.ci = cmpxchg ptr %i.ch, i64 %i.cg, i64 0 seq_cst seq_cst, align 8
  %i.cj = extractvalue { i64, i1 } %i.ci, 1
  br i1 %i.cj, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ck = atomicrmw add ptr %i.bv, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.cl = add i32 %i.ck, -2048                    ; 2 uses
  store i32 %i.cl, ptr %i.a, align 4, !tbaa !204
  %i.cm = icmp ugt i32 %i.cl, 2047
  %i.cn = and i32 %i.ck, 16
  %.not.i.i.i.i = icmp eq i32 %i.cn, 0
  %or.cond.i.i.i = or i1 %i.cm, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.s, !prof !3503

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.t

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.n
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #27
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit:  ; preds = %.lr.ph.i.i, %_ZNKSt6vectorIN5folly8settings15SettingMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.at, ptr %i.v, align 8
  store ptr %i.as, ptr %0, align 8
  br label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %_ZNSt12_Vector_baseIN5folly8settings15SettingMetadataESaIS2_EE11_M_allocateEm.exit.i.i.i, %.invoke.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ]
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE2ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.body

bb.u:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %bb.q, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, %.noexc10.i, %"_ZZN5folly8settings18getAllSettingsMetaEvENK3$_0clISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6detail15SettingCoreBaseESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEDaRKT_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.v:                                             ; preds = %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.cq, %bb.v ], [ %lpad.phi, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.cr = load ptr, ptr %0, align 8, !tbaa !3674  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.body
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !3673
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #28
  br label %_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EED2Ev.exit

_ZNSt6vectorIN5folly8settings15SettingMetadataESaIS2_EED2Ev.exit: ; preds = %.body, %bb.w
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE2ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !202
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !201
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !3554
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !209  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !3555
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !3541
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !3556
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3557 ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !3555
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !208
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !194
  store ptr %i.j, ptr %i.d, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !3510
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !208  ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeC2ERSJ_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE7_M_copyILb0ENSJ_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESO_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3557 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !3678

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !209
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3545 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !3679

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !209
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !3510
  store i64 %i.u, ptr %i.l, align 8, !tbaa !3510
  store ptr %i.o, ptr %i.a, align 8, !tbaa !209
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !3558
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !3554
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
end_hunk_0
