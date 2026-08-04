begin_hunk_0_@_ZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationE:bb.a
  store i32 1, ptr %i.ce, align 8, !tbaa !154, !noalias !236
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 1, ptr %i.cf, align 4, !tbaa !156, !noalias !236
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz30DataSinkCompletionNotificationESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cd, align 16, !tbaa !24, !noalias !236
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 4 uses
  store ptr %i.bu, ptr %i.cg, align 16, !tbaa !171, !noalias !236
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.br, ptr %i.ch, align 8, !tbaa !157, !noalias !236
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaNS0_8DurationEE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESE_", ptr %i.ci, align 16, !tbaa !173, !noalias !236
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaNS0_8DurationEE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.cj, align 8, !tbaa !175, !noalias !236
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !157, !alias.scope !236
  store ptr %i.cg, ptr %11, align 8, !tbaa !176, !alias.scope !236
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ck = load ptr, ptr %10, align 8, !tbaa !189  ; 5 uses
  store ptr %i.ck, ptr %12, align 8, !tbaa !189
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cm = load ptr, ptr %i.bv, align 8, !tbaa !157 ; 37 uses
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !157
  %.not.i.i.i77 = icmp eq ptr %i.cm, null         ; 8 uses
  br i1 %.not.i.i.i77, label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.thread, label %bb.q

bb.q:                                             ; preds = %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEEN3$_0D2Ev.exit"
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i78 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i78, label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !167
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !167
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.thread

_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.thread: ; preds = %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEEN3$_0D2Ev.exit", %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.cg, ptr %i.cr, align 8, !tbaa !182
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.cd, ptr %i.cs, align 8, !tbaa !157
  br label %bb.s

_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit: ; preds = %bb.q
  %i.ct = atomicrmw volatile add ptr %i.cn, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %11, align 8, !tbaa !182  ; 3 uses
  %.pre200 = load ptr, ptr %i.cc, align 8, !tbaa !157 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.pre, ptr %i.cu, align 8, !tbaa !182
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %.pre200, ptr %i.cv, align 8, !tbaa !157
  %.not.i.i.i79 = icmp eq ptr %.pre200, null
  br i1 %.not.i.i.i79, label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.thread, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit
  %i.cw = phi ptr [ %i.cg, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.thread ], [ %.pre, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit ] ; 2 uses
  %i.cx = phi ptr [ %i.cd, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.thread ], [ %.pre200, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i80 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i.i80, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !167
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !167
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit

bb.u:                                             ; preds = %bb.s
  %i.dc = atomicrmw volatile add ptr %i.cy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit

_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  br i1 %.not.i.i.i77, label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i.thread, label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.thread

_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.thread: ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit
  %i.dd = phi ptr [ %i.cx, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit ], [ null, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit ] ; 3 uses
  %i.de = phi ptr [ %i.cw, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit ], [ %.pre, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit ] ; 3 uses
  %.not.i.i.i79246248 = phi i1 [ false, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit ], [ true, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !239
  %.not.i.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i, label %.split, label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i

.split:                                           ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.thread
  %i.dh = atomicrmw volatile add ptr %i.df, i32 1 acq_rel, align 4, !noalias !239 ; 0 uses
  br i1 %.not.i.i.i79246248, label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i.thread, label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i.thread

_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i: ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.thread
  %i.di = load i32, ptr %i.df, align 4, !tbaa !167, !noalias !239
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !167, !noalias !239
  br i1 %.not.i.i.i79246248, label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i.thread, label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i.thread

_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i.thread: ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit, %.split, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i
  %i.dk = phi ptr [ %i.de, %.split ], [ %i.de, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i ], [ %i.cw, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit ] ; 3 uses
  %i.dl = phi ptr [ %i.dd, %.split ], [ %i.dd, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i ], [ %i.cx, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !239
  %.not.i.i.i.i2.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i2.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i.thread
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !167, !noalias !239
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !167, !noalias !239
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i.thread
  %i.dq = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4, !noalias !239 ; 0 uses
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i.thread: ; preds = %.split, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i
  store ptr %i.ck, ptr %13, align 8, !tbaa !242, !alias.scope !239
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.cm, ptr %i.dr, align 8, !tbaa !185, !alias.scope !239
  br label %bb.x

_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i: ; preds = %bb.w, %bb.v
  store ptr %i.ck, ptr %13, align 8, !tbaa !242, !alias.scope !239
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store ptr %i.cm, ptr %i.ds, align 8, !tbaa !185, !alias.scope !239
  br i1 %.not.i.i.i77, label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i.thread, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i
  %i.dt = phi ptr [ %i.dr, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i.thread ], [ %i.ds, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i ] ; 3 uses
  %i.du = phi ptr [ %i.dd, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i.thread ], [ %i.dl, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i ] ; 4 uses
  %i.dv = phi ptr [ %i.de, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i.thread ], [ %i.dk, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i ] ; 4 uses
  %.not.i.i.i79246249252256 = phi i1 [ true, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i.thread ], [ false, %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cm, i64 12 ; 4 uses
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !167, !noalias !239
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !167, !noalias !239
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ea = atomicrmw volatile add ptr %i.dw, i32 1 acq_rel, align 4, !noalias !239 ; 0 uses
  br label %bb.aa

_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.dk, ptr %i.eb, align 8, !tbaa !182, !alias.scope !239
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.dl, ptr %i.ec, align 8, !tbaa !157, !alias.scope !239
  br label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit"

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.dv, ptr %i.ed, align 8, !tbaa !182, !alias.scope !239
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.du, ptr %i.ee, align 8, !tbaa !157, !alias.scope !239
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8, !noalias !239 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ef, align 8, !tbaa !154, !noalias !239
  store i32 0, ptr %i.dw, align 4, !tbaa !156, !noalias !239
  %i.ej = load ptr, ptr %i.cm, align 8, !tbaa !24, !noalias !239
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !239
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #33, !noalias !239, !inline_history !244
  %i.em = load ptr, ptr %i.cm, align 8, !tbaa !24, !noalias !239
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !239
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #33, !noalias !239, !inline_history !244
  br label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit"

bb.ac:                                            ; preds = %bb.aa
  %i.ep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !239
  %.not.i.i.i6.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.i6.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eq = add nsw i32 %i.ei, -1
  store i32 %i.eq, ptr %i.ef, align 8, !tbaa !167, !noalias !239
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i

bb.ae:                                            ; preds = %bb.ac
  %i.er = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4, !noalias !239
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i8.i = phi i32 [ %i.ei, %bb.ad ], [ %i.er, %bb.ae ]
  %i.es = icmp eq i32 %.0.i.i.i.i8.i, 1
  br i1 %i.es, label %bb.af, label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit", !prof !58

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #33, !noalias !239
  br label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit"

"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit": ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i, %bb.ab, %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.et = phi ptr [ %i.dt, %bb.af ], [ %i.dt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i ], [ %i.dt, %bb.ab ], [ %i.ds, %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ]
  %i.eu = phi ptr [ %i.du, %bb.af ], [ %i.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i ], [ %i.du, %bb.ab ], [ %i.dl, %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 12 uses
  %i.ev = phi ptr [ %i.dv, %bb.af ], [ %i.dv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i ], [ %i.dv, %bb.ab ], [ %i.dk, %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i79246249252255 = phi i1 [ %.not.i.i.i79246249252256, %bb.af ], [ %.not.i.i.i79246249252256, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i ], [ %.not.i.i.i79246249252256, %bb.ab ], [ false, %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  %i.ew = load ptr, ptr %0, align 8, !tbaa !24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  invoke void %i.ey(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 %13)
          to label %bb.ag unwind label %bb.bk

bb.ag:                                            ; preds = %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit"
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !157 ; 8 uses
  %.not.i.i.i82 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i82, label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i86, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.fb, align 8, !tbaa !154
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !156
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #33, !inline_history !184
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #33, !inline_history !184
  br label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i86

bb.aj:                                            ; preds = %bb.ah
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i83 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i83, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !167
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84

bb.al:                                            ; preds = %bb.aj
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i85 = phi i32 [ %i.fe, %bb.ak ], [ %i.fo, %bb.al ]
  %i.fp = icmp eq i32 %.0.i.i.i.i.i85, 1
  br i1 %i.fp, label %bb.am, label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i86, !prof !58

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #33
  br label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i86

_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i86: ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84, %bb.ai, %bb.ag
  %i.fq = load ptr, ptr %i.et, align 8, !tbaa !185 ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i1.i, label %_ZN9grpc_core8channelz8DataSinkD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i86
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 12 ; 3 uses
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i2.i = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i2.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !167 ; 2 uses
  %i.fu = add nsw i32 %i.ft, -1
  store i32 %i.fu, ptr %i.fr, align 4, !tbaa !167
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.ap:                                            ; preds = %bb.an
  %i.fv = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i4.i = phi i32 [ %i.ft, %bb.ao ], [ %i.fv, %bb.ap ]
  %i.fw = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.fw, label %bb.aq, label %_ZN9grpc_core8channelz8DataSinkD2Ev.exit

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  %i.fx = load ptr, ptr %i.fq, align 8, !tbaa !24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #33, !inline_history !187
  br label %_ZN9grpc_core8channelz8DataSinkD2Ev.exit

_ZN9grpc_core8channelz8DataSinkD2Ev.exit:         ; preds = %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i86, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ga)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit88 unwind label %bb.bl

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit88: ; preds = %_ZN9grpc_core8channelz8DataSinkD2Ev.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !12 ; 2 uses
  %i.gd = trunc i64 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = select i1 %i.gd, ptr %i.gf, ptr %i.ge   ; 2 uses
  %i.gh = shl nuw nsw i64 %i.gc, 2
  %.idx = and i64 %i.gh, 9223372036854775800      ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx
  %.not195 = icmp samesign eq i64 %.idx, 0
  br i1 %.not195, label %._crit_edge198, label %.lr.ph197

.lr.ph197:                                        ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit88
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 7 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cm, i64 12 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %14, i64 24
  %19 = insertelement <2 x ptr> poison, ptr %i.ev, i64 0
  %20 = insertelement <2 x ptr> %19, ptr %i.eu, i64 1 ; 2 uses
  br label %bb.bm

._crit_edge198:                                   ; preds = %_ZN9grpc_core8channelz8DataSinkD2Ev.exit123, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit88
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ga)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit89 unwind label %bb.ar

bb.ar:                                            ; preds = %._crit_edge198
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #36
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit89:      ; preds = %._crit_edge198
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  br i1 %.not.i.i.i77, label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i92, label %bb.as

bb.as:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit89
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.gs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !245
  %.not.i.i.i.i.i91 = icmp eq i8 %i.gs, 0
  br i1 %.not.i.i.i.i.i91, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !167, !noalias !245
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !167, !noalias !245
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i92

bb.au:                                            ; preds = %bb.as
  %i.gv = atomicrmw volatile add ptr %i.gr, i32 1 acq_rel, align 4, !noalias !245 ; 0 uses
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i92

_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i92: ; preds = %bb.au, %bb.at, %_ZN4absl12lts_202505129MutexLockD2Ev.exit89
  br i1 %.not.i.i.i79246249252255, label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i95, label %bb.av

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i92
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !245
  %.not.i.i.i.i2.i94 = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i2.i94, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !167, !noalias !245
  %i.gz = add nsw i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gw, align 4, !tbaa !167, !noalias !245
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i95

bb.ax:                                            ; preds = %bb.av
  %i.ha = atomicrmw volatile add ptr %i.gw, i32 1 acq_rel, align 4, !noalias !245 ; 0 uses
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i95

_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i95: ; preds = %bb.ax, %bb.aw, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i92
  store ptr %i.ck, ptr %15, align 8, !tbaa !242, !alias.scope !245
  %i.hb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.cm, ptr %i.hb, align 8, !tbaa !185, !alias.scope !245
  br i1 %.not.i.i.i77, label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i100, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i95
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cm, i64 12 ; 4 uses
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !245
  %.not.i.i.i.i.i.i96 = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i96, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !167, !noalias !245
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !167, !noalias !245
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.hg = atomicrmw volatile add ptr %i.hc, i32 1 acq_rel, align 4, !noalias !245 ; 0 uses
  br label %bb.bb

_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i100: ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i95
  %i.hh = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.ev, ptr %i.hh, align 8, !tbaa !182, !alias.scope !245
  %i.hi = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.eu, ptr %i.hi, align 8, !tbaa !157, !alias.scope !245
  br label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit101"

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.ev, ptr %i.hj, align 8, !tbaa !182, !alias.scope !245
  %i.hk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.eu, ptr %i.hk, align 8, !tbaa !157, !alias.scope !245
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.hm = load atomic i64, ptr %i.hl acquire, align 8, !noalias !245 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 4294967297
  %i.ho = trunc i64 %i.hm to i32                  ; 2 uses
  br i1 %i.hn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.hl, align 8, !tbaa !154, !noalias !245
  store i32 0, ptr %i.hc, align 4, !tbaa !156, !noalias !245
  %i.hp = load ptr, ptr %i.cm, align 8, !tbaa !24, !noalias !245
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !245
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #33, !noalias !245, !inline_history !244
  %i.hs = load ptr, ptr %i.cm, align 8, !tbaa !24, !noalias !245
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !245
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #33, !noalias !245, !inline_history !244
  br label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit101"

bb.bd:                                            ; preds = %bb.bb
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !245
  %.not.i.i.i6.i97 = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i6.i97, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hw = add nsw i32 %i.ho, -1
  store i32 %i.hw, ptr %i.hl, align 8, !tbaa !167, !noalias !245
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i98

bb.bf:                                            ; preds = %bb.bd
  %i.hx = atomicrmw volatile add ptr %i.hl, i32 -1 acq_rel, align 4, !noalias !245
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i98

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i98: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i8.i99 = phi i32 [ %i.ho, %bb.be ], [ %i.hx, %bb.bf ]
  %i.hy = icmp eq i32 %.0.i.i.i.i8.i99, 1
  br i1 %i.hy, label %bb.bg, label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit101", !prof !58

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i98
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #33, !noalias !245
  br label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit101"

bb.bh:                                            ; preds = %._crit_edge
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.bi:                                            ; preds = %bb.m
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.bj:                                            ; preds = %_ZNSt10shared_ptrIN9grpc_core12NotificationEEC2ERKS2_.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEEN3$_0D2Ev"(ptr nonnull %i.br) #33
  br label %bb.ez

bb.bk:                                            ; preds = %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit"
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core8channelz8DataSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #33
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit124

bb.bl:                                            ; preds = %_ZN9grpc_core8channelz8DataSinkD2Ev.exit
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit124

bb.bm:                                            ; preds = %.lr.ph197, %_ZN9grpc_core8channelz8DataSinkD2Ev.exit123
  %.048196 = phi ptr [ %i.gg, %.lr.ph197 ], [ %i.kg, %_ZN9grpc_core8channelz8DataSinkD2Ev.exit123 ] ; 2 uses
  %i.ie = load ptr, ptr %.048196, align 8, !tbaa !179 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  br i1 %.not.i.i.i77, label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i104, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !248
  %.not.i.i.i.i.i103 = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i.i.i103, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ig = load i32, ptr %i.gj, align 4, !tbaa !167, !noalias !248
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.gj, align 4, !tbaa !167, !noalias !248
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i104

bb.bp:                                            ; preds = %bb.bn
  %i.ii = atomicrmw volatile add ptr %i.gj, i32 1 acq_rel, align 4, !noalias !248 ; 0 uses
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i104

_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i104: ; preds = %bb.bp, %bb.bo, %bb.bm
  br i1 %.not.i.i.i79246249252255, label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i107, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i104
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !248
  %.not.i.i.i.i2.i106 = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i2.i106, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ik = load i32, ptr %i.gk, align 4, !tbaa !167, !noalias !248
  %i.il = add nsw i32 %i.ik, 1
  store i32 %i.il, ptr %i.gk, align 4, !tbaa !167, !noalias !248
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i107

bb.bs:                                            ; preds = %bb.bq
  %i.im = atomicrmw volatile add ptr %i.gk, i32 1 acq_rel, align 4, !noalias !248 ; 0 uses
  br label %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i107

_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i107: ; preds = %bb.bs, %bb.br, %_ZNSt10shared_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i104
  store ptr %i.ck, ptr %14, align 8, !tbaa !242, !alias.scope !248
  store ptr %i.cm, ptr %i.gl, align 8, !tbaa !185, !alias.scope !248
  br i1 %.not.i.i.i77, label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i107
  %i.in = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !248
  %.not.i.i.i.i.i.i108 = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i.i.i.i108, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.io = load i32, ptr %i.gm, align 4, !tbaa !167, !noalias !248
  %i.ip = add nsw i32 %i.io, 1
  store i32 %i.ip, ptr %i.gm, align 4, !tbaa !167, !noalias !248
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.iq = atomicrmw volatile add ptr %i.gm, i32 1 acq_rel, align 4, !noalias !248 ; 0 uses
  br label %bb.bw

_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112: ; preds = %_ZNSt10shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationEEC2ERKS3_.exit.i107
  store <2 x ptr> %20, ptr %i.gn, align 8, !tbaa !181, !alias.scope !248
  br label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit113"

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  store <2 x ptr> %20, ptr %i.gn, align 8, !tbaa !181, !alias.scope !248
  %i.ir = load atomic i64, ptr %i.gj acquire, align 8, !noalias !248 ; 2 uses
  %i.is = icmp eq i64 %i.ir, 4294967297
  %i.it = trunc i64 %i.ir to i32                  ; 2 uses
  br i1 %i.is, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.gj, align 8, !tbaa !154, !noalias !248
  store i32 0, ptr %i.gm, align 4, !tbaa !156, !noalias !248
  %i.iu = load ptr, ptr %i.cm, align 8, !tbaa !24, !noalias !248
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !248
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #33, !noalias !248, !inline_history !244
  %i.ix = load ptr, ptr %i.cm, align 8, !tbaa !24, !noalias !248
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !248
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #33, !noalias !248, !inline_history !244
  br label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit113"

bb.by:                                            ; preds = %bb.bw
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !248
  %.not.i.i.i6.i109 = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i6.i109, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jb = add nsw i32 %i.it, -1
  store i32 %i.jb, ptr %i.gj, align 8, !tbaa !167, !noalias !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i110

bb.ca:                                            ; preds = %bb.by
  %i.jc = atomicrmw volatile add ptr %i.gj, i32 -1 acq_rel, align 4, !noalias !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i110

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i110: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i8.i111 = phi i32 [ %i.it, %bb.bz ], [ %i.jc, %bb.ca ]
  %i.jd = icmp eq i32 %.0.i.i.i.i8.i111, 1
  br i1 %i.jd, label %bb.cb, label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit113", !prof !58

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i110
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #33, !noalias !248
  br label %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit113"

"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit113": ; preds = %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i110, %bb.bx, %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112
  %i.je = load ptr, ptr %i.ie, align 8, !tbaa !24
  %i.jf = load ptr, ptr %i.je, align 8
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 %14)
          to label %bb.cc unwind label %bb.cn

bb.cc:                                            ; preds = %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit113"
  %i.jg = load ptr, ptr %i.go, align 8, !tbaa !157 ; 8 uses
  %.not.i.i.i114 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i114, label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 4 uses
  %i.ji = load atomic i64, ptr %i.jh acquire, align 8 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 4294967297
  %i.jk = trunc i64 %i.ji to i32                  ; 2 uses
  br i1 %i.jj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.jh, align 8, !tbaa !154
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.jl, align 4, !tbaa !156
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !24
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #33, !inline_history !184
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #33, !inline_history !184
  br label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118

bb.cf:                                            ; preds = %bb.cd
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i115 = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i.i115, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jt = add nsw i32 %i.jk, -1
  store i32 %i.jt, ptr %i.jh, align 8, !tbaa !167
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116

bb.ch:                                            ; preds = %bb.cf
  %i.ju = atomicrmw volatile add ptr %i.jh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i.i117 = phi i32 [ %i.jk, %bb.cg ], [ %i.ju, %bb.ch ]
  %i.jv = icmp eq i32 %.0.i.i.i.i.i117, 1
  br i1 %i.jv, label %bb.ci, label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118, !prof !58

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #33
  br label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118

_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118: ; preds = %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116, %bb.ce, %bb.cc
  %i.jw = load ptr, ptr %i.gl, align 8, !tbaa !185 ; 4 uses
  %.not.i.i1.i119 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i1.i119, label %_ZN9grpc_core8channelz8DataSinkD2Ev.exit123, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 12 ; 3 uses
  %i.jy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i2.i120 = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i2.i120, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !167 ; 2 uses
  %i.ka = add nsw i32 %i.jz, -1
  store i32 %i.ka, ptr %i.jx, align 4, !tbaa !167
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i121

bb.cl:                                            ; preds = %bb.cj
  %i.kb = atomicrmw volatile add ptr %i.jx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i121

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i121: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i4.i122 = phi i32 [ %i.jz, %bb.ck ], [ %i.kb, %bb.cl ]
  %i.kc = icmp eq i32 %.0.i.i.i.i4.i122, 1
  br i1 %i.kc, label %bb.cm, label %_ZN9grpc_core8channelz8DataSinkD2Ev.exit123

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i121
  %i.kd = load ptr, ptr %i.jw, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(16) %i.jw) #33, !inline_history !187
  br label %_ZN9grpc_core8channelz8DataSinkD2Ev.exit123

_ZN9grpc_core8channelz8DataSinkD2Ev.exit123:      ; preds = %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i121, %bb.cm
  %i.kg = getelementptr inbounds nuw i8, ptr %.048196, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.kg, %i.gi
  br i1 %.not, label %._crit_edge198, label %bb.bm

bb.cn:                                            ; preds = %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit113"
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core8channelz8DataSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #33
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ga)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit124 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #36
  unreachable

"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit101": ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i98, %bb.bc, %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i100
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %17, align 8, !tbaa !24
  %i.kk = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, i8 0, i64 24, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.km = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.km, ptr %18, align 8, !tbaa !8
  %i.kn = load ptr, ptr %i.kl, align 8, !tbaa !14 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.kp, ptr %i.a, align 8, !tbaa !12
  %i.kq = icmp ugt i64 %i.kp, 15
  br i1 %i.kq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit101"
  %i.kr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc125 unwind label %bb.eu ; 2 uses

.noexc125:                                        ; preds = %.noexc.i
  store ptr %i.kr, ptr %18, align 8, !tbaa !14
  %i.ks = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.ks, ptr %i.km, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc125, %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit101"
  %i.kt = phi ptr [ %i.kr, %.noexc125 ], [ %i.km, %"_ZZN9grpc_core8channelz8BaseNode15SerializeEntityEP23grpc_channelz_v2_EntityP9upb_ArenaN4absl12lts_202505128DurationEENK3$_1clEv.exit101" ] ; 2 uses
  switch i64 %i.kp, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i
  %i.ku = load i8, ptr %i.kn, align 1, !tbaa !16
  store i8 %i.ku, ptr %i.kt, align 1, !tbaa !16
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kt, ptr align 1 %i.kn, i64 %i.kp, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i
  %i.kv = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !17
  %i.kx = load ptr, ptr %18, align 8, !tbaa !14
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kv
  store i8 0, ptr %i.ky, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.kz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_St17basic_string_viewIcS6_ET_(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 4, ptr nonnull @.str, ptr noundef nonnull align 8 %18)
          to label %bb.cs unwind label %bb.ev
end_hunk_0
