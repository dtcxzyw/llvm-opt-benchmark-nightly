Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/http2_client_transport?download=true
inline.NumInlined: 18551
inline.NumDeleted: 8994
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
begin_hunk_0_@"_ZN9grpc_core5Party15ParticipantImplIZNS_5http220Http2ClientTransport21MaybeSpawnPingTimeoutESt8optionalImEE3$_0ZNS3_26SpawnGuardedTransportPartyIS6_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlN4absl12lts_202505126StatusEE_E22PollParticipantPromiseEv":bb.a
  br i1 %i.bp, label %bb.v, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.br = call i8 @_ZZN9grpc_core18InterActivityLatchIvE4WaitEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bq), !noalias !4434
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.w, label %_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit

bb.w:                                             ; preds = %bb.v
  %.pre63 = load i8, ptr %i.bl, align 16, !tbaa !1479, !range !136, !noalias !4432
  %i.bt = trunc nuw i8 %.pre63 to i1
  br i1 %i.bt, label %bb.x, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !657, !noalias !4432 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8, !noalias !4432 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bw, align 8, !tbaa !673, !noalias !4432
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !674, !noalias !4432
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !135, !noalias !4432
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !4432
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #44, !noalias !4432, !inline_history !110
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !135, !noalias !4432
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !4432
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #44, !noalias !4432, !inline_history !110
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !148, !noalias !4432
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !493, !noalias !4432
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4, !noalias !4432
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.ab ], [ %i.cj, %bb.ac ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.ad, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread, !prof !138

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #44, !noalias !4432
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread: ; preds = %bb.w, %bb.x, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44, !noalias !4432
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4435)
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !4437, !noalias !4435
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !4438, !noalias !4435
  store i8 1, ptr %7, align 16, !tbaa !1488, !alias.scope !4435
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44, !noalias !4435
  store ptr %i.cm, ptr %5, align 8, !tbaa !1485, !noalias !4435
  %.sroa.4.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.co, ptr %.sroa.4.0..sroa_idx.i82, align 8, !tbaa !413, !noalias !4435
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.ae

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit: ; preds = %bb.u
  %i.cq = load i8, ptr %i.bq, align 8, !tbaa !485, !range !136, !noalias !4439, !noundef !137 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44, !noalias !4432
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cs = trunc nuw i8 %i.cq to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4440)
  %i.ct = load ptr, ptr %i.cr, align 16, !tbaa !4437, !noalias !4440
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !4438, !noalias !4440
  store i8 %i.cq, ptr %7, align 16, !tbaa !1488, !alias.scope !4440
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44, !noalias !4440
  store ptr %i.ct, ptr %5, align 8, !tbaa !1485, !noalias !4440
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cv, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !413, !noalias !4440
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br i1 %i.cs, label %bb.ae, label %.thread

.thread:                                          ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44, !noalias !4440
  store i8 0, ptr %i.bl, align 16, !tbaa !1488, !noalias !4432
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.thread83

bb.ae:                                            ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread, %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit
  %i.cy = phi ptr [ %i.cp, %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread ], [ %i.cw, %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit ] ; 5 uses
  %i.cz = phi ptr [ %i.cn, %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread ], [ %i.cu, %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit ]
  %i.da = phi ptr [ %i.cl, %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit.thread ], [ %i.cr, %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS5_11PingTimeoutES6_EUlvE1_EEvED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44, !noalias !4440
  call void @_ZZZN9grpc_core5http211PingManager14TimeoutPromiseEmENUlbE_clEbENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::AnyInvocable.891") align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 16, !tbaa !916, !noalias !4440
  call void %i.dc(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %i.cy) #44, !inline_history !4414
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.de = load <2 x ptr>, ptr %i.db, align 16, !tbaa !492, !noalias !4440
  %i.df = load ptr, ptr %i.db, align 16, !tbaa !916, !noalias !4440
  store <2 x ptr> %i.de, ptr %i.dd, align 16, !tbaa !492, !alias.scope !4440
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44, !noalias !4440
  %.pre = load i8, ptr %7, align 16, !tbaa !1488, !range !136, !noalias !4432 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44, !noalias !4440
  %i.dg = trunc nuw i8 %.pre to i1
  store i8 %.pre, ptr %i.bl, align 16, !tbaa !1488, !noalias !4432
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.dg, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit, label %._ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit.thread_crit_edge

._ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit.thread_crit_edge: ; preds = %bb.ae
  %.pre64 = load i64, ptr %i.cy, align 8, !tbaa !139, !noalias !4432
  br label %.thread83

.thread83:                                        ; preds = %.thread, %._ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit.thread_crit_edge
  %i.di = phi ptr [ %i.cw, %.thread ], [ %i.cy, %._ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit.thread_crit_edge ]
  %i.dj = phi i64 [ 1, %.thread ], [ %.pre64, %._ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit.thread_crit_edge ]
  %i.dk = phi ptr [ %i.cx, %.thread ], [ %i.dh, %._ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit.thread_crit_edge ]
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !139, !noalias !4432
  store i64 55, ptr %i.di, align 8, !tbaa !139, !noalias !4432
  store i8 1, ptr %i.bm, align 16, !tbaa !1477, !noalias !4432
  br label %_ZN9grpc_core4PollIbED2Ev.exit20.i.thread

_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit: ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  call void %i.df(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %i.cy, ptr noundef nonnull align 16 dereferenceable(32) %i.dh) #44, !noalias !4432, !inline_history !4415
  %i.dm = load ptr, ptr %i.dd, align 16, !tbaa !916, !noalias !4432
  store ptr %i.dm, ptr %i.da, align 16, !tbaa !916, !noalias !4432
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !915, !noalias !4432
  store ptr %i.dn, ptr %i.cz, align 8, !tbaa !915, !noalias !4432
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.dd, align 16, !tbaa !916, !noalias !4432
  store ptr null, ptr %i.dl, align 8, !tbaa !915, !noalias !4432
  %.pre31 = load i8, ptr %7, align 16, !tbaa !1488, !range !136, !noalias !4432
  %i.do = trunc nuw i8 %.pre31 to i1
  store i8 1, ptr %i.bm, align 16, !tbaa !1477, !noalias !4432
  br i1 %i.do, label %_ZN9grpc_core4PollIbED2Ev.exit20.i.thread, label %bb.af

bb.af:                                            ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit
  %.pre65 = load i64, ptr %i.cy, align 8, !tbaa !139, !noalias !4432 ; 2 uses
  %i.dp = trunc i64 %.pre65 to i1
  br i1 %i.dp, label %_ZN9grpc_core4PollIbED2Ev.exit20.i.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = inttoptr i64 %.pre65 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dq)
          to label %_ZN9grpc_core4PollIbED2Ev.exit20.i.thread unwind label %bb.ah, !noalias !4432

bb.ah:                                            ; preds = %bb.ag
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #43, !noalias !4432
  unreachable

_ZN9grpc_core4PollIbED2Ev.exit20.i.thread:        ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS4_14TimeoutPromiseEmENS5_clEbEUlvE0_EEvEC2EOS9_.exit, %.thread83, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !4432
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN9grpc_core4PollIbED2Ev.exit20.i.thread, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44, !noalias !4432
  %i.dt = load i8, ptr %i.bl, align 16, !tbaa !1488, !range !136, !noalias !4441, !noundef !137
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.du, label %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit, label %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit.thread

_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit.thread: ; preds = %bb.ai
  %i.dw = load i64, ptr %i.dv, align 16, !tbaa !139, !noalias !4442
  store i64 55, ptr %i.dv, align 16, !tbaa !139, !noalias !4442
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit.thread

_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit: ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !915, !noalias !4443
  call void %i.dz(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Poll.1879") align 8 %8, ptr noundef nonnull align 16 dereferenceable(32) %i.dv), !noalias !4431, !inline_history !86
  %.pre32 = load i8, ptr %8, align 8, !tbaa !1304, !range !136, !noalias !4432
  %i.ea = trunc nuw i8 %.pre32 to i1
  br i1 %i.ea, label %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit._crit_edge, label %_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS6_11PingTimeoutES7_EUlvE1_EEJZNS5_14TimeoutPromiseEmEUlbE_EE8PollOnceEv.exit

_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit._crit_edge: ; preds = %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.pre66 = load i64, ptr %i.eb, align 8, !tbaa !139, !noalias !4431
  br label %_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit.thread

_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS6_11PingTimeoutES7_EUlvE1_EEJZNS5_14TimeoutPromiseEmEUlbE_EE8PollOnceEv.exit: ; preds = %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44, !noalias !4432
  br label %_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit

_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit.thread: ; preds = %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit.thread, %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit._crit_edge
  %i.ec = phi i64 [ %i.dw, %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit.thread ], [ %.pre66, %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit._crit_edge ]
  %i.ed = phi ptr [ %i.dx, %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit.thread ], [ %i.eb, %_ZN9grpc_core2IfIbZZNS_5http211PingManager14TimeoutPromiseEmENUlbE_clEbEUlvE_ZZNS2_14TimeoutPromiseEmENS3_clEbEUlvE0_EclEv.exit._crit_edge ]
  store i64 55, ptr %i.ed, align 8, !tbaa !139, !noalias !4431
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44, !noalias !4432
  store i8 1, ptr %10, align 8, !tbaa !1304, !alias.scope !4431
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.aj

_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit: ; preds = %_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_2IfIbZNS_5http211PingManager20PingPromiseCallbacks11PingTimeoutENS_8DurationEEUlvE0_ZNS6_11PingTimeoutES7_EUlvE1_EEJZNS5_14TimeoutPromiseEmEUlbE_EE8PollOnceEv.exit, %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !915, !noalias !4444
  call void %i.eh(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Poll.1879") align 8 %10, ptr noundef nonnull align 16 dereferenceable(32) %i.ef), !inline_history !86
  %.pre67 = load i8, ptr %10, align 8, !tbaa !1304, !range !136
  %i.ei = trunc nuw i8 %.pre67 to i1
  br i1 %i.ei, label %thread-pre-split, label %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit

thread-pre-split:                                 ; preds = %_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.pr = load i64, ptr %i.ej, align 8, !tbaa !139
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split, %_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit.thread
  %i.ek = phi i64 [ %.pr, %thread-pre-split ], [ %i.ec, %_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit.thread ] ; 7 uses
  %i.el = phi ptr [ %i.ej, %thread-pre-split ], [ %i.ee, %_ZN9grpc_core4RaceIJN4absl12lts_2025051212AnyInvocableIFNS_4PollINS2_6StatusEEEvEEEEEclEv.exit.thread ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ek, ptr %11, align 8, !tbaa !139
  store i64 55, ptr %i.el, align 8, !tbaa !139
  %.val15 = load ptr, ptr %i.em, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.en = icmp eq i64 %i.ek, 1
  br i1 %i.en, label %.thread56, label %bb.ak

.thread56:                                        ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.critedge

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  store ptr null, ptr %3, align 8, !tbaa !421
  call void @llvm.experimental.noalias.scope.decl(metadata !4445)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.eo = trunc i64 %i.ek to i1                   ; 2 uses
  br i1 %i.eo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ep = lshr i64 %i.ek, 2
  %i.eq = trunc i64 %i.ep to i32
  br label %_ZNK4absl12lts_202505126Status4codeEv.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.er = inttoptr i64 %i.ek to ptr
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !411, !noalias !4445
  br label %_ZNK4absl12lts_202505126Status4codeEv.exit.i.i

_ZNK4absl12lts_202505126Status4codeEv.exit.i.i:   ; preds = %bb.am, %bb.al
  %.0.i.i.i.i = phi i32 [ %i.eq, %bb.al ], [ %i.et, %bb.am ]
  %i.eu = invoke noundef i32 @_ZN4absl12lts_2025051215status_internal14MapToLocalCodeEi(i32 noundef %.0.i.i.i.i)
          to label %.noexc.i unwind label %bb.ba  ; 2 uses

.noexc.i:                                         ; preds = %_ZNK4absl12lts_202505126Status4codeEv.exit.i.i
  br i1 %i.eo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc.i
  %i.ev = inttoptr i64 %i.ek to ptr               ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !412, !noalias !4445
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !400, !noalias !4445
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i

bb.ao:                                            ; preds = %.noexc.i
  %i.fa = and i64 %i.ek, 2
  %.not.i.i.i21 = icmp eq i64 %i.fa, 0            ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i21, i64 0, i64 27
  %spec.select1.i.i.i = select i1 %.not.i.i.i21, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i

_ZNK4absl12lts_202505126Status7messageEv.exit.i.i: ; preds = %bb.ao, %bb.an
  %.sroa.0.0.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.ao ], [ %i.ez, %bb.an ] ; 5 uses
  %.sroa.4.0.i.i.i = phi ptr [ %spec.select1.i.i.i, %bb.ao ], [ %i.ex, %bb.an ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.fb, ptr %1, align 8, !tbaa !399, !noalias !4445
  %i.fc = icmp eq ptr %.sroa.4.0.i.i.i, null
  %i.fd = icmp ne i64 %.sroa.0.0.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.fd, %i.fc
  br i1 %or.cond.i.i.i.i.i, label %.noexc.i.i, label %bb.ap

.noexc.i.i:                                       ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.63) #47
          to label %.noexc4.i unwind label %bb.ba

.noexc4.i:                                        ; preds = %.noexc.i.i
  unreachable

bb.ap:                                            ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44, !noalias !4445
  store i64 %.sroa.0.0.i.i.i, ptr %i.a, align 8, !tbaa !413, !noalias !4445
  %i.fe = icmp ugt i64 %.sroa.0.0.i.i.i, 15
  br i1 %i.fe, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.ap
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5.i unwind label %bb.ba ; 2 uses

.noexc5.i:                                        ; preds = %.noexc.i.i.i.i.i
  store ptr %i.ff, ptr %1, align 8, !tbaa !412, !noalias !4445
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !413, !noalias !4445
  store i64 %i.fg, ptr %i.fb, align 8, !tbaa !148, !noalias !4445
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc5.i, %bb.ap
  %i.fh = phi ptr [ %i.ff, %.noexc5.i ], [ %i.fb, %bb.ap ] ; 2 uses
  switch i64 %.sroa.0.0.i.i.i, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fi = load i8, ptr %.sroa.4.0.i.i.i, align 1, !tbaa !148, !noalias !4445
  store i8 %i.fi, ptr %i.fh, align 1, !tbaa !148, !noalias !4445
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr align 1 %.sroa.4.0.i.i.i, i64 %.sroa.0.0.i.i.i, i1 false), !noalias !4445
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i.i.i.i
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !413, !noalias !4445 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !400, !noalias !4445
  %i.fl = load ptr, ptr %1, align 8, !tbaa !412, !noalias !4445
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  store i8 0, ptr %i.fm, align 1, !tbaa !148, !noalias !4445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44, !noalias !4445
  call void @llvm.experimental.noalias.scope.decl(metadata !4446)
  %i.fn = icmp eq i32 %i.eu, 0
  %i.fo = select i1 %i.fn, i8 0, i8 2
  store i8 %i.fo, ptr %4, align 8, !tbaa !396, !alias.scope !4447
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.fp, align 1, !tbaa !397, !alias.scope !4447
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.eu, ptr %i.fq, align 4, !tbaa !398, !alias.scope !4447
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !399, !alias.scope !4447
  %i.ft = load ptr, ptr %1, align 8, !tbaa !412, !noalias !4447 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fb
  br i1 %i.fu, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.fv = load i64, ptr %i.fk, align 8, !tbaa !400, !noalias !4447 ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 16
  call void @llvm.assume(i1 %i.fw)
  %i.fx = add nuw nsw i64 %i.fv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fs, ptr noundef nonnull align 8 dereferenceable(1) %i.fb, i64 %i.fx, i1 false)
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.as
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !412, !alias.scope !4447
  %i.fy = load i64, ptr %i.fb, align 8, !tbaa !148, !noalias !4447
  store i64 %i.fy, ptr %i.fs, align 8, !tbaa !148, !alias.scope !4447
  %.pre.i.i.i = load i64, ptr %i.fk, align 8, !tbaa !400, !noalias !4447
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.at
  %i.fz = phi i64 [ %i.fv, %bb.at ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !400, !alias.scope !4447
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZN9grpc_core5http220Http2ClientTransport11HandleErrorENS_13RefCountedPtrINS0_6StreamEEENS0_11Http2StatusENS_13DebugLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(3416) %.val15, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.gb = load ptr, ptr %i.fr, align 8, !tbaa !412 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fs
  br i1 %i.gc, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.av
  %i.gd = load i64, ptr %i.fs, align 8, !tbaa !148
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #48
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit.i:      ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.gf = load ptr, ptr %3, align 8, !tbaa !421   ; 4 uses
  %.not.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i, label %_ZN9grpc_core13RefCountedPtrINS_5http26StreamEED2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = atomicrmw sub ptr %i.gg, i64 1 acq_rel, align 8
  %i.gi = icmp eq i64 %i.gh, 1
  br i1 %i.gi, label %bb.ax, label %_ZN9grpc_core13RefCountedPtrINS_5http26StreamEED2Ev.exit.i, !prof !138

bb.ax:                                            ; preds = %bb.aw
  %i.gj = load ptr, ptr %i.gf, align 8, !tbaa !135
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(248) %i.gf) #44, !inline_history !4430
  br label %_ZN9grpc_core13RefCountedPtrINS_5http26StreamEED2Ev.exit.i

_ZN9grpc_core13RefCountedPtrINS_5http26StreamEED2Ev.exit.i: ; preds = %bb.ax, %bb.aw, %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i
end_hunk_0
