Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/client_auth_filter?download=true
inline.NumInlined: 1391
inline.NumDeleted: 854
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9grpc_core21promise_filter_detail7RunCallIMNS_16ClientAuthFilter4CallEFNS_2IfIbZNS3_23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS2_EUlvE_ZNS3_23OnClientInitialMetadataES9_SA_EUlvE0_EES9_SA_ES2_EEDaT_NS_8CallArgsESt8functionIFNS_12ArenaPromiseIS9_EESH_EEPNS0_14FilterCallDataIT0_EE:bb.a

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %bb.g, %bb.h
  call void @_ZN9grpc_core8CallArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #29
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::If") align 16 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef align 8 %2, ptr noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.grpc_core::ArenaPromise.135", align 16 ; 5 uses
  %5 = alloca %"class.grpc_core::promise_detail::PromiseLike.130", align 16 ; 11 uses
  %6 = alloca %"class.grpc_core::If", align 16    ; 15 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core14promise_detail18ThreadLocalContextINS_5ArenaEE8current_E) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i16, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_15SecurityContextEE3id_E, align 2, !tbaa !33
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_Z35grpc_client_security_context_createPN9grpc_core5ArenaEP21grpc_call_credentials(ptr noundef nonnull %i.b, ptr noundef null) ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i16, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_15SecurityContextEE3id_E, align 2, !tbaa !33
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN9grpc_core5Arena10SetContextINS_15SecurityContextEEEvPT_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #29, !inline_history !277
  br label %_ZN9grpc_core5Arena10SetContextINS_15SecurityContextEEEvPT_.exit.i

_ZN9grpc_core5Arena10SetContextINS_15SecurityContextEEEvPT_.exit.i: ; preds = %bb.c, %bb.b
  store ptr %i.i, ptr %i.n, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core5Arena10SetContextINS_15SecurityContextEEEvPT_.exit.i, %bb.a
  %.0.i = phi ptr [ %i.i, %_ZN9grpc_core5Arena10SetContextINS_15SecurityContextEEEvPT_.exit.i ], [ %i.g, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %.not.i5.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %.pre.i.i, %bb.e ], [ null, %bb.d ]
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !42   ; 4 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !42
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN9grpc_core16ClientAuthFilter14InstallContextEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = atomicrmw sub ptr %i.w, i64 1 acq_rel, align 8
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.h, label %_ZN9grpc_core16ClientAuthFilter14InstallContextEv.exit, !prof !22

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN17grpc_auth_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.w) #29, !inline_history !1
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 96) #30, !inline_history !1
  br label %_ZN9grpc_core16ClientAuthFilter14InstallContextEv.exit

_ZN9grpc_core16ClientAuthFilter14InstallContextEv.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 6 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !33
  %i.ac = and i16 %i.ab, 2
  %.not.i.i.not.i = icmp eq i16 %i.ac, 0          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ad = zext i1 %.not.i.i.not.i to i8           ; 2 uses
  store i8 %i.ad, ptr %6, align 16, !tbaa !82
  br i1 %.not.i.i.not.i, label %.thread50, label %bb.i

.thread50:                                        ; preds = %_ZN9grpc_core16ClientAuthFilter14InstallContextEv.exit
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = load i8, ptr %2, align 8, !tbaa !65, !noalias !289
  store ptr null, ptr %i.z, align 8, !tbaa !67, !noalias !289
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.af, ptr %i.ag, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.ae, ptr %i.ah, align 16, !tbaa !67
  store i8 %i.ad, ptr %0, align 16, !tbaa !82, !alias.scope !290
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i8

bb.i:                                             ; preds = %_ZN9grpc_core16ClientAuthFilter14InstallContextEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !291
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29, !noalias !291 ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !132, !noalias !291
  %.not.i.i.i5 = icmp eq ptr %i.am, null          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !291
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 49
  %i.aq = select i1 %.not.i.i.i5, ptr %i.ap, ptr %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !noalias !291 ; 2 uses
  %i.at = and i64 %i.as, 255
  %i.au = select i1 %.not.i.i.i5, i64 %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !24, !noalias !291
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !26, !noalias !291
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !291
  call void %i.ay(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::ArenaPromise.135") align 16 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 %i.au, ptr %i.aq, ptr noundef %i.av), !noalias !291, !inline_history !286
  %i.az = load i8, ptr %2, align 8, !tbaa !65, !noalias !291
  %i.ba = load i64, ptr %i.z, align 8, !tbaa !67, !noalias !291
  store ptr null, ptr %i.z, align 8, !tbaa !67, !noalias !291
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store i8 0, ptr %i.bb, align 16, !tbaa !86, !alias.scope !291
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.bc, align 16, !alias.scope !291
  %i.bd = load ptr, ptr %4, align 16, !tbaa !91, !noalias !291 ; 2 uses
  store ptr %i.bd, ptr %5, align 16, !tbaa !91, !alias.scope !291
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !93, !noalias !291
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void %i.bf(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bg)
          to label %_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #31
  unreachable

_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit: ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %3, ptr %i.bk, align 16, !tbaa !104, !alias.scope !291
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i8 %i.az, ptr %i.bl, align 8, !tbaa !65, !alias.scope !291
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store i64 %i.ba, ptr %i.bm, align 16, !tbaa !67, !alias.scope !291
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !291
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.bo = load i8, ptr %i.bb, align 16, !tbaa !86
  store i8 %i.bo, ptr %i.bn, align 16, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i64 0, ptr %i.bp, align 16
  %i.bq = load ptr, ptr %5, align 16, !tbaa !91   ; 2 uses
  store ptr %i.bq, ptr %i.bj, align 16, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !93
  invoke void %i.bs(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bc)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #31
  unreachable

_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit: ; preds = %_ZZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_ENUlvE0_clEv.exit
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE, ptr %5, align 16, !tbaa !91
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.bw = load ptr, ptr %i.bk, align 16, !tbaa !104
  store ptr %i.bw, ptr %i.bv, align 16, !tbaa !104
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.by = load i8, ptr %i.bl, align 8, !tbaa !65
  store i8 %i.by, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.ca = load i64, ptr %i.bm, align 16, !tbaa !67
  store i64 %i.ca, ptr %i.bz, align 16, !tbaa !67
  store ptr null, ptr %i.bm, align 16, !tbaa !67
  %i.cb = load i8, ptr %i.bb, align 16, !tbaa !86
  %cond45 = icmp eq i8 %i.cb, 1
  br i1 %cond45, label %bb.l, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit

bb.l:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit
  call void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS3_20GetCallCredsMetadataES8_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(80) %5) #29
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS_12ArenaPromiseIN4absl12lts_202505126StatusEEEJZZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS8_ENUlvE0_clEvEUlvE_EEEvEC2EOSJ_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre31 = load i8, ptr %6, align 16, !tbaa !82, !range !83, !noalias !292 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.cc = trunc nuw i8 %.pre31 to i1
  store i8 %.pre31, ptr %0, align 16, !tbaa !82, !alias.scope !292
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit
  %.pre = load i64, ptr %i.bj, align 16           ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ce = icmp eq i64 %.pre, 1
  br i1 %i.ce, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i8, label %.thread46

bb.n:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_EC2EbOS9_OSA_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ch = load i8, ptr %i.bn, align 16, !tbaa !86
  store i8 %i.ch, ptr %i.cg, align 16, !tbaa !86
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.ci, align 16
  %i.cj = load ptr, ptr %i.bj, align 16, !tbaa !91 ; 2 uses
  store ptr %i.cj, ptr %i.cf, align 16, !tbaa !91
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !93
  invoke void %i.cl(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.bp)
          to label %_ZN9grpc_core16AssertResultTypeIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES8_PSB_EUlvE_ZNSC_23OnClientInitialMetadataES8_SD_EUlvE0_EEEENSt9enable_ifIXsr3stdE9is_same_vIDTclfp_EENS_4PollIT_EEEET0_E4typeEOSM_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #31
  unreachable

_ZN9grpc_core16AssertResultTypeIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES8_PSB_EUlvE_ZNSC_23OnClientInitialMetadataES8_SD_EUlvE0_EEEENSt9enable_ifIXsr3stdE9is_same_vIDTclfp_EENS_4PollIT_EEEET0_E4typeEOSM_.exit: ; preds = %bb.n
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE, ptr %i.bj, align 16, !tbaa !91
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = load ptr, ptr %i.bv, align 16, !tbaa !104
  store ptr %i.cp, ptr %i.co, align 16, !tbaa !104
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cr = load i8, ptr %i.bx, align 8, !tbaa !65
  store i8 %i.cr, ptr %i.cq, align 8, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ct = load i64, ptr %i.bz, align 16, !tbaa !67
  store i64 %i.ct, ptr %i.cs, align 16, !tbaa !67
  store ptr null, ptr %i.bz, align 16, !tbaa !67
  %.pre32 = load i8, ptr %6, align 16, !tbaa !82, !range !83
  %i.cu = trunc nuw i8 %.pre32 to i1
  br i1 %i.cu, label %_ZN9grpc_core16AssertResultTypeIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES8_PSB_EUlvE_ZNSC_23OnClientInitialMetadataES8_SD_EUlvE0_EEEENSt9enable_ifIXsr3stdE9is_same_vIDTclfp_EENS_4PollIT_EEEET0_E4typeEOSM_.exit.thread, label %bb.r

.thread46:                                        ; preds = %bb.m
  store i64 %.pre, ptr %i.cd, align 16, !tbaa !40
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i8:    ; preds = %.thread50, %bb.m
  %i.cv = phi ptr [ %i.ai, %.thread50 ], [ %i.cd, %bb.m ]
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load i8, ptr %i.cw, align 8, !tbaa !65
  store i8 %i.cy, ptr %i.cx, align 8, !tbaa !65
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.db = load i64, ptr %i.da, align 16, !tbaa !67
  store i64 %i.db, ptr %i.cz, align 16, !tbaa !67
  store i64 1, ptr %i.cv, align 8, !tbaa !40
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

_ZN9grpc_core16AssertResultTypeIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES8_PSB_EUlvE_ZNSC_23OnClientInitialMetadataES8_SD_EUlvE0_EEEENSt9enable_ifIXsr3stdE9is_same_vIDTclfp_EENS_4PollIT_EEEET0_E4typeEOSM_.exit.thread: ; preds = %_ZN9grpc_core16AssertResultTypeIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES8_PSB_EUlvE_ZNSC_23OnClientInitialMetadataES8_SD_EUlvE0_EEEENSt9enable_ifIXsr3stdE9is_same_vIDTclfp_EENS_4PollIT_EEEET0_E4typeEOSM_.exit
  br i1 ptrtoint (ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE to i1), label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN9grpc_core16AssertResultTypeIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES8_PSB_EUlvE_ZNSC_23OnClientInitialMetadataES8_SD_EUlvE0_EEEENSt9enable_ifIXsr3stdE9is_same_vIDTclfp_EENS_4PollIT_EEEET0_E4typeEOSM_.exit.thread
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE6vtableE)
          to label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #31
  unreachable

bb.r:                                             ; preds = %_ZN9grpc_core16AssertResultTypeIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES8_PSB_EUlvE_ZNSC_23OnClientInitialMetadataES8_SD_EUlvE0_EEEENSt9enable_ifIXsr3stdE9is_same_vIDTclfp_EENS_4PollIT_EEEET0_E4typeEOSM_.exit
  %i.de = load i8, ptr %i.bn, align 16, !tbaa !86
  %cond = icmp eq i8 %i.de, 1
  br i1 %cond, label %bb.s, label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

bb.s:                                             ; preds = %bb.r
  call void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS3_20GetCallCredsMetadataES8_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(80) %i.bj) #29
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS1_EUlvE_ZNS2_23OnClientInitialMetadataES7_S8_EUlvE0_ED2Ev.exit: ; preds = %bb.r, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i8, %.thread46, %bb.s, %bb.p, %_ZN9grpc_core16AssertResultTypeIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES8_PSB_EUlvE_ZNSC_23OnClientInitialMetadataES8_SD_EUlvE0_EEEENSt9enable_ifIXsr3stdE9is_same_vIDTclfp_EENS_4PollIT_EEEET0_E4typeEOSM_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS4_FSD_S9_SA_ES3_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseIS9_EESJ_EEPNSE_14FilterCallDataIS3_EEEUlS9_E_EED2Ev(ptr noundef nonnull align 16 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i8, ptr %i.a, align 16, !tbaa !80
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(96) dereferenceable(193) %0) #29
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void %i.e(ptr noundef nonnull %i.f)
          to label %_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS4_EUlvE_ZNS5_23OnClientInitialMetadataESA_SB_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS5_FSE_SA_SB_ES4_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseISA_EESK_EEPNSF_14FilterCallDataIS4_EEEUlSA_E_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN9grpc_core37ClientInitialMetadataOutstandingTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i.i = icmp ne ptr %i.r, null
  %i.s = load i8, ptr %i.i, align 16, !range !83
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.t, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.h, label %_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS4_EUlvE_ZNS5_23OnClientInitialMetadataESA_SB_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS5_FSE_SA_SB_ES4_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseISA_EESK_EEPNSF_14FilterCallDataIS4_EEEUlSA_E_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.r) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 664) #30
  br label %_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS4_EUlvE_ZNS5_23OnClientInitialMetadataESA_SB_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS5_FSE_SA_SB_ES4_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseISA_EESK_EEPNSF_14FilterCallDataIS4_EEEUlSA_E_EED2Ev.exit

_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS4_EUlvE_ZNS5_23OnClientInitialMetadataESA_SB_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS5_FSE_SA_SB_ES4_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseISA_EESK_EEPNSF_14FilterCallDataIS4_EEEUlSA_E_EED2Ev.exit: ; preds = %bb.h, %_ZNSt14_Function_baseD2Ev.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core8CallArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9grpc_core37ClientInitialMetadataOutstandingTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 3 uses
  %.not.i = icmp ne ptr %i.c, null
  %i.d = load i8, ptr %0, align 8, !range !83
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.c) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 664) #30
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN9grpc_core5Arena16ManagedNewObject4LinkEPSt6atomicIPS1_E(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN9grpc_core5Arena9AllocZoneEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5Arena16ManagedNewObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5Arena14ManagedNewImplINS_21promise_filter_detail14FilterCallDataINS_16ClientAuthFilterEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE8PollOnceEPNS0_7ArgTypeE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::Poll") align 8 %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @abort() #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE4MoveEPNS0_7ArgTypeES7_(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE7DestroyEPNS0_7ArgTypeE(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505126StatusEE7ToProtoEPKNS0_7ArgTypeEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.a, align 4, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.30, i64 45), ptr %i.b, align 4
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 12, ptr %.sroa.56.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core21promise_filter_detail11RunCallImplIMNS_16ClientAuthFilter4CallEFNS_2IfIbZNS3_23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS2_EUlvE_ZNS3_23OnClientInitialMetadataES9_SA_EUlvE0_EES9_SA_ES2_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseIS9_EESH_EEPNS0_14FilterCallDataIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::promise_detail::TrySeq") align 16 %0, ptr noundef align 8 %1, ptr noundef align 8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.47", align 8 ; 6 uses
  %5 = alloca %"class.grpc_core::If", align 16    ; 21 uses
  %6 = alloca %"class.std::unique_ptr.47", align 8 ; 5 uses
  %7 = alloca %class.anon.150, align 8            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = load i8, ptr %1, align 8, !tbaa !65      ; 2 uses
  store i8 %i.a, ptr %4, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67
  store ptr null, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i8 %i.a, ptr %6, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !67
  store ptr null, ptr %i.b, align 8, !tbaa !67
  %i.f = load ptr, ptr %3, align 8, !tbaa !63
  invoke void @_ZN9grpc_core16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS0_(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::If") align 16 %5, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 %6, ptr noundef %i.f)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.g = load i8, ptr %1, align 8, !tbaa !65      ; 2 uses
  store i8 %i.g, ptr %7, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  store i64 %i.i, ptr %i.h, align 8, !tbaa !67
  store ptr null, ptr %i.c, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !69
  store ptr %i.l, ptr %i.j, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74   ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75   ; 4 uses
  %.not.i.i.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEC2EOSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !77
  store ptr %i.t, ptr %i.u, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZN9grpc_core20arena_promise_detail17AllocatedCallableISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEENS_14promise_detail6TrySeqINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES6_PSA_EUlvE_ZNSB_23OnClientInitialMetadataES6_SC_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMSB_FSF_S6_SC_ESA_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseIS6_EESL_EEPNSG_14FilterCallDataISA_EEEUlS6_E_EEEE7DestroyEPNS0_7ArgTypeE:bb.a
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEvED2Ev(ptr noundef nonnull align 16 dead_on_return(96) dereferenceable(208) %i.a) #29
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void %i.f(ptr noundef nonnull %i.g)
          to label %_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS4_FSD_S9_SA_ES3_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseIS9_EESJ_EEPNSE_14FilterCallDataIS3_EEEUlS9_E_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  %i.n = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @_ZN9grpc_core37ClientInitialMetadataOutstandingTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #29
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.s, null
  %i.t = load i8, ptr %i.j, align 16, !range !83
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.h, label %_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS4_FSD_S9_SA_ES3_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseIS9_EESJ_EEPNSE_14FilterCallDataIS3_EEEUlS9_E_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.s) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 664) #30
  br label %_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS4_FSD_S9_SA_ES3_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseIS9_EESJ_EEPNSE_14FilterCallDataIS3_EEEUlS9_E_EED2Ev.exit

_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS3_EUlvE_ZNS4_23OnClientInitialMetadataES9_SA_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS4_FSD_S9_SA_ES3_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseIS9_EESJ_EEPNSE_14FilterCallDataIS3_EEEUlS9_E_EED2Ev.exit: ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail17AllocatedCallableISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEENS_14promise_detail6TrySeqINS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataES6_PSA_EUlvE_ZNSB_23OnClientInitialMetadataES6_SC_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMSB_FSF_S6_SC_ESA_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseIS6_EESL_EEPNSG_14FilterCallDataISA_EEEUlS6_E_EEEE7ToProtoEPKNS0_7ArgTypeEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108
  tail call void @_ZNK9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_2IfIbZNS_16ClientAuthFilter4Call23OnClientInitialMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEPS4_EUlvE_ZNS5_23OnClientInitialMetadataESA_SB_EUlvE0_EEJZNS_21promise_filter_detail11RunCallImplIMS5_FSE_SA_SB_ES4_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseISA_EESK_EEPNSF_14FilterCallDataIS4_EEEUlSA_E_EE7ToProtoE40grpc_channelz_v2_Promise_CompositionKindP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef nonnull align 16 dereferenceable(208) %i.a, i32 noundef 2, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::If.139") align 16 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.grpc_core::promise_detail::OncePromiseFactory.263", align 8 ; 7 uses
  %4 = alloca %"class.grpc_core::promise_detail::PromiseLike.144", align 16 ; 5 uses
  %5 = alloca %"class.grpc_core::promise_detail::OncePromiseFactory.259", align 8 ; 9 uses
  %6 = alloca %"class.grpc_core::promise_detail::PromiseLike.141", align 16 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 9 uses
  %8 = alloca %class.anon.257, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN9grpc_core16ClientAuthFilter12GetCallCredsEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load i64, ptr %7, align 8, !tbaa !40     ; 4 uses
  %i.b = icmp eq i64 %i.a, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %1, ptr %8, align 8, !tbaa !363
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.c, align 8, !tbaa !364
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.e = load i8, ptr %2, align 8, !tbaa !65      ; 4 uses
  store i8 %i.e, ptr %i.d, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !67
  %i.i = zext i1 %i.b to i8
  store i8 %i.i, ptr %0, align 16, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 %i.e, ptr %i.j, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 %i.h, ptr %i.k, align 8, !tbaa !67
  store ptr null, ptr %i.f, align 8, !tbaa !67
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !366, !noalias !365, !nonnull !41, !align !148 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40, !noalias !365
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i, label %bb.c, !prof !124

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34
          to label %.noexc unwind label %.body3

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i: ; preds = %bb.b
  %i.p = load ptr, ptr %5, align 8, !tbaa !363, !noalias !365
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37, !noalias !365
  %i.s = icmp ne ptr %i.r, null                   ; 2 uses
  %i.t = zext i1 %i.s to i8                       ; 2 uses
  store i8 %i.t, ptr %6, align 16, !tbaa !138, !alias.scope !365
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !365
  store ptr %i.p, ptr %3, align 8, !tbaa !44, !noalias !365
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !364, !noalias !365
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !367, !noalias !365
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br i1 %i.s, label %bb.d, label %.thread20

bb.d:                                             ; preds = %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !365
  invoke void @_ZZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Map") align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc2 unwind label %.body3

.noexc2:                                          ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  store i64 0, ptr %i.v, align 16, !alias.scope !365
  %i.w = load ptr, ptr %4, align 16, !tbaa !142, !noalias !365 ; 2 uses
  store ptr %i.w, ptr %i.u, align 16, !tbaa !142, !alias.scope !365
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !146, !noalias !365
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void %i.y(ptr noundef nonnull %i.v, ptr noundef nonnull %i.z)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc2
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #31
  unreachable

.thread20:                                        ; preds = %_ZNR4absl12lts_202505128StatusOrIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEEdeEv.exit.i
  store ptr null, ptr %i.k, align 8, !tbaa !67, !noalias !368
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.e, ptr %i.ac, align 8, !tbaa !65, !alias.scope !365
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !365
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.t, ptr %i.ad, align 16, !tbaa !138
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !365
  %.pre = load i8, ptr %6, align 16, !tbaa !138, !range !83 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !365
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = trunc nuw i8 %.pre to i1
  store i8 %.pre, ptr %i.af, align 16, !tbaa !138
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 0, ptr %i.ai, align 16
  %i.aj = load ptr, ptr %i.u, align 16, !tbaa !142 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 16, !tbaa !142
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !146
  invoke void %i.al(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.v)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #31
  unreachable

bb.i:                                             ; preds = %bb.f
  %.pr = load i64, ptr %i.u, align 16             ; 2 uses
  %i.ao = icmp eq i64 %.pr, 1
  br i1 %i.ao, label %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge, label %.thread23

._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge: ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre23 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !65
  %.pre25 = load i64, ptr %i.v, align 16, !tbaa !67
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit: ; preds = %bb.g
  store ptr @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEE6vtableE, ptr %i.u, align 16, !tbaa !142
  %.pre11 = load i8, ptr %6, align 16, !tbaa !138, !range !83
  %i.ap = trunc nuw i8 %.pre11 to i1
  br i1 %i.ap, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit, label %bb.j

.thread23:                                        ; preds = %bb.i
  store i64 %.pr, ptr %i.ah, align 16, !tbaa !40
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i:   ; preds = %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge, %.thread20
  %i.aq = phi i64 [ %i.h, %.thread20 ], [ %.pre25, %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge ]
  %i.ar = phi i8 [ %i.e, %.thread20 ], [ %.pre23, %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge ]
  %i.as = phi ptr [ %i.ae, %.thread20 ], [ %i.ah, %._ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i_crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.ar, ptr %i.at, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aq, ptr %i.au, align 16, !tbaa !67
  store i64 1, ptr %i.as, align 8, !tbaa !40
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit

bb.j:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZN9grpc_core20arena_promise_detail4NullIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEE6vtableE)
          to label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #31
  unreachable

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvEC2EOSD_.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i.i, %.thread23, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit

.body3:                                           ; preds = %bb.d, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  resume { ptr, i32 } %i.ax

bb.l:                                             ; preds = %bb.a
  %i.ay = trunc i64 %i.a to i1
  br i1 %i.ay, label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = inttoptr i64 %i.a to ptr
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4, !noalias !369 ; 0 uses
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit: ; preds = %bb.l, %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.bb, align 16, !tbaa !40
  br label %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit

_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_clEvEUlvE_ZZNS3_20GetCallCredsMetadataES8_ENS9_clEvEUlvE0_EEvED2Ev.exit, %_ZN9grpc_core14promise_detail11PromiseLikeINS0_9ImmediateIN4absl12lts_202505128StatusOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEEvED2Ev.exit
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !67  ; 3 uses
  %.not.i.i.i = icmp ne ptr %i.bc, null
  %i.bd = load i8, ptr %i.j, align 8, !range !83
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.be, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit

bb.n:                                             ; preds = %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.bc) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 664) #30
  br label %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit

_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit: ; preds = %bb.n, %_ZN9grpc_core2IfIbZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ZNS1_20GetCallCredsMetadataES6_EUlvE0_EC2EbOS7_OS8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre12 = load i64, ptr %7, align 8, !tbaa !40  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bf = icmp eq i64 %.pre12, 1
  br i1 %i.bf, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.s

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37 ; 6 uses
  %.not.i.i5 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i5, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = atomicrmw add ptr %i.bi, i64 -4294967295 acq_rel, align 8
  %.mask.i.i.i = and i64 %i.bj, -4294967296
  %i.bk = icmp eq i64 %.mask.i.i.i, 4294967296
  br i1 %i.bk, label %bb.p, label %.noexc.i.i, !prof !22

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.noexc.i.i unwind label %bb.r, !inline_history !2

.noexc.i.i:                                       ; preds = %bb.p, %bb.o
  %i.bo = atomicrmw sub ptr %i.bi, i64 1 acq_rel, align 8
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.q, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit, !prof !22

bb.q:                                             ; preds = %.noexc.i.i
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(20) %i.bh) #29, !inline_history !361
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #31
  unreachable

bb.s:                                             ; preds = %_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev.exit
  %i.bv = trunc i64 %.pre12 to i1
  br i1 %i.bv, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = inttoptr i64 %.pre12 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bw)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #31
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %.noexc.i.i, %bb.q, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN9grpc_core16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 3 uses
  %.not.i = icmp ne ptr %i.c, null
  %i.d = load i8, ptr %i.a, align 8, !range !83
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.c) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 664) #30
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.f

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 6 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 -4294967295 acq_rel, align 8
  %.mask.i.i = and i64 %i.f, -4294967296
  %i.g = icmp eq i64 %.mask.i.i, 4294967296
  br i1 %i.g, label %bb.c, label %.noexc.i, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc.i unwind label %bb.e, !inline_history !2

.noexc.i:                                         ; preds = %bb.c, %bb.b
  %i.k = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit, !prof !22

bb.d:                                             ; preds = %.noexc.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(20) %i.d) #29, !inline_history !3
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #31
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.r = trunc i64 %i.a to i1
  br i1 %i.r, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #31
  unreachable

_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit: ; preds = %bb.g, %bb.f, %bb.d, %.noexc.i, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_16ClientAuthFilter20GetCallCredsMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
