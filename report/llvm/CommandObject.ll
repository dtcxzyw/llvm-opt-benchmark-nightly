Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CommandObject?download=true
inline.NumInlined: 1062
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12lldb_private13CommandObject17CheckRequirementsERNS_19CommandReturnObjectE:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #18
  br label %.critedge77

.critedge77:                                      ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bh, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.not155, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %.critedge77
  call void @_ZN12lldb_private19CommandReturnObject11AppendErrorEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(396) %1, ptr nonnull @.str.6, i64 27) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.be, %.critedge74, %.critedge77, %bb.bm, %bb.ay, %bb.bd, %bb.bb, %_ZN4llvm9StringRefC2EPKc.exit, %_ZN4llvm9StringRefC2EPKc.exit109, %_ZN4llvm9StringRefC2EPKc.exit97, %_ZN4llvm9StringRefC2EPKc.exit88, %_ZN4llvm9StringRefC2EPKc.exit82, %_ZN4llvm9StringRefC2EPKc.exit85, %_ZN4llvm9StringRefC2EPKc.exit91, %_ZN4llvm9StringRefC2EPKc.exit94, %_ZN4llvm9StringRefC2EPKc.exit100, %_ZN4llvm9StringRefC2EPKc.exit106, %_ZN4llvm9StringRefC2EPKc.exit103
  %.7 = phi i1 [ false, %bb.ay ], [ false, %bb.bm ], [ false, %_ZN4llvm9StringRefC2EPKc.exit ], [ false, %_ZN4llvm9StringRefC2EPKc.exit103 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit106 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit100 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit94 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit91 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit85 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit82 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit88 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit97 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit109 ], [ false, %bb.bb ], [ false, %bb.bd ], [ true, %.critedge77 ], [ true, %.critedge74 ], [ true, %bb.be ]
  ret i1 %.7
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN12lldb_private16ExecutionContextaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef ptr @_ZNK12lldb_private16ExecutionContext12GetTargetPtrEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN12lldb_private19CommandReturnObject11AppendErrorEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(396), ptr, i64) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK12lldb_private16ExecutionContext15HasProcessScopeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK12lldb_private16ExecutionContext14HasThreadScopeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK12lldb_private16ExecutionContext13HasFrameScopeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef ptr @_ZNK12lldb_private16ExecutionContext18GetRegisterContextEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6Target11GetAPIMutexEv(ptr noundef nonnull align 8 dereferenceable(2200)) local_unnamed_addr #1

declare noundef ptr @_ZNK12lldb_private16ExecutionContext13GetProcessPtrEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN12lldb_private7Process8GetStateEv(ptr noundef nonnull align 8 dereferenceable(3224)) local_unnamed_addr #1

declare void @_ZN12lldb_private6Target8GetTraceEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.327") align 8, ptr noundef nonnull align 8 dereferenceable(2200)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13CommandObject7CleanupEv(ptr noundef nonnull align 8 dereferenceable(329) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN12lldb_private16ExecutionContext5ClearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !18, !range !192, !noundef !60
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockISt15recursive_mutexE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt11unique_lockISt15recursive_mutexE6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #18 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !18
  br label %_ZNSt11unique_lockISt15recursive_mutexE6unlockEv.exit

_ZNSt11unique_lockISt15recursive_mutexE6unlockEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN12lldb_private16ExecutionContext5ClearEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13CommandObject16HandleCompletionERNS_17CompletionRequestE(ptr noundef nonnull align 8 dereferenceable(329) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::ExecutionContext", align 8 ; 5 uses
  %3 = alloca %"class.std::vector.548", align 16  ; 10 uses
  %4 = alloca %"class.std::vector.548", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59, !nonnull !60, !align !61
  call void @_ZNK12lldb_private18CommandInterpreter19GetExecutionContextEb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::ExecutionContext") align 8 %2, ptr noundef nonnull align 8 dereferenceable(840) %i.b, i1 noundef zeroext true) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN12lldb_private16ExecutionContextaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) #18 ; 0 uses
  call void @_ZN12lldb_private16ExecutionContextD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(329) %0) #18
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(329) %0) #18
  br i1 %i.l, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(329) %0) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !195
  %i.t = trunc i64 %i.s to i32
  call void @_ZN12lldb_private7Options18ParseForCompletionERKNS_4ArgsEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.548") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i32 noundef %i.t) #18
  %i.u = load ptr, ptr %3, align 16, !tbaa !418   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !419
  %i.x = load <2 x ptr>, ptr %4, align 16, !tbaa !420
  store <2 x ptr> %i.x, ptr %3, align 16, !tbaa !420
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !419
  store ptr %i.z, ptr %i.v, align 16, !tbaa !419
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit, label %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EEaSEOS3_.exit: ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #20
  %.pr = load ptr, ptr %4, align 16, !tbaa !418   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EEaSEOS3_.exit
  %i.ad = load ptr, ptr %i.y, align 16, !tbaa !419
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %.pr to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ag) #20
  br label %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit

_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EEaSEOS3_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.ai = call noundef zeroext i1 @_ZN12lldb_private7Options22HandleOptionCompletionERNS_17CompletionRequestERSt6vectorINS_16OptionArgElementESaIS4_EERNS_18CommandInterpreterE(ptr noundef nonnull align 8 dereferenceable(128) %i.p, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(840) %i.ah) #18
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit, %bb.c
  %i.aj = load ptr, ptr %0, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(329) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit, %bb.f
  %i.am = load ptr, ptr %3, align 16, !tbaa !418  ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit15, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !419
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #20
  br label %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit15

_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit15: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12lldb_private16OptionArgElementESaIS1_EED2Ev.exit15, %bb.b
  call void @_ZN12lldb_private16ExecutionContext5ClearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c) #18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !18, !range !192, !noundef !60
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.j, label %"_ZN4llvm10scope_exitIZN12lldb_private13CommandObject16HandleCompletionERNS1_17CompletionRequestEE3$_0ED2Ev.exit"

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %"_ZN4llvm10scope_exitIZN12lldb_private13CommandObject16HandleCompletionERNS1_17CompletionRequestEE3$_0ED2Ev.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #18 ; 0 uses
  store i8 0, ptr %i.as, align 8, !tbaa !18
  br label %"_ZN4llvm10scope_exitIZN12lldb_private13CommandObject16HandleCompletionERNS1_17CompletionRequestEE3$_0ED2Ev.exit"

"_ZN4llvm10scope_exitIZN12lldb_private13CommandObject16HandleCompletionERNS1_17CompletionRequestEE3$_0ED2Ev.exit": ; preds = %bb.i, %bb.j, %bb.k
  ret void
}

declare void @_ZN12lldb_private7Options18ParseForCompletionERKNS_4ArgsEj(ptr dead_on_unwind writable sret(%"class.std::vector.548") align 8, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN12lldb_private7Options22HandleOptionCompletionERNS_17CompletionRequestERSt6vectorINS_16OptionArgElementESaIS4_EERNS_18CommandInterpreterE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(840)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13CommandObject24HandleArgumentCompletionERNS_17CompletionRequestERSt6vectorINS_16OptionArgElementESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(329) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !153  ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = and i64 %i.h, 4294967295
  %.not.a = icmp eq i64 %i.i, 1
  br i1 %.not.a, label %3, label %_ZN12lldb_private13CommandObject22FindArgumentDataByTypeEN4lldb19CommandArgumentTypeE.exit.thread

3:                                                ; preds = %bb.a
  %.not16 = icmp eq ptr %i.c, %i.d
  %.not1317 = icmp eq ptr %i.d, null
  %.not13 = or i1 %.not16, %.not1317
  br i1 %.not13, label %_ZN12lldb_private13CommandObject22FindArgumentDataByTypeEN4lldb19CommandArgumentTypeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !157  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not14 = icmp eq i64 %i.o, 12
  br i1 %.not14, label %bb.c, label %_ZN12lldb_private13CommandObject22FindArgumentDataByTypeEN4lldb19CommandArgumentTypeE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.l, align 4, !tbaa !169  ; 4 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 108
  br i1 %exitcond.not.i, label %_ZN12lldb_private13CommandObject22FindArgumentDataByTypeEN4lldb19CommandArgumentTypeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [64 x i8], ptr @_ZN12lldb_privateL16g_argument_tableE, i64 %indvars.iv.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load i32, ptr %i.r, align 16, !tbaa !175
  %i.t = icmp eq i32 %i.s, %i.p
  br i1 %i.t, label %.split.loop.exit26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [64 x i8], ptr @_ZN12lldb_privateL16g_argument_tableE, i64 %indvars.iv.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.w = load i32, ptr %i.v, align 16, !tbaa !175
  %i.x = icmp eq i32 %i.w, %i.p
  br i1 %i.x, label %.split.loop.exit24, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [64 x i8], ptr @_ZN12lldb_privateL16g_argument_tableE, i64 %indvars.iv.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !175
  %i.ab = icmp eq i32 %i.aa, %i.p
  br i1 %i.ab, label %.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.3, %bb.h ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr @_ZN12lldb_privateL16g_argument_tableE, i64 %indvars.iv.i ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !175
  %i.ae = icmp eq i32 %i.ad, %i.p
  br i1 %i.ae, label %.split.loop.exit28, label %bb.d

.split.loop.exit:                                 ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  br label %.split.loop.exit28

.split.loop.exit24:                               ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  br label %.split.loop.exit28

.split.loop.exit26:                               ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  br label %.split.loop.exit28

.split.loop.exit28:                               ; preds = %bb.i, %.split.loop.exit26, %.split.loop.exit24, %.split.loop.exit
  %.lcssa = phi ptr [ %i.ah, %.split.loop.exit26 ], [ %i.ag, %.split.loop.exit24 ], [ %i.af, %.split.loop.exit ], [ %i.ac, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !421 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN12lldb_private13CommandObject22FindArgumentDataByTypeEN4lldb19CommandArgumentTypeE.exit.thread, label %bb.j

bb.j:                                             ; preds = %.split.loop.exit28
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !168
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !195
  %.not15 = icmp eq i64 %i.ap, 0
  br i1 %.not15, label %bb.l, label %_ZN12lldb_private13CommandObject22FindArgumentDataByTypeEN4lldb19CommandArgumentTypeE.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.as = tail call noundef zeroext i1 @_ZN12lldb_private18CommandCompletions31InvokeCommonCompletionCallbacksERNS_18CommandInterpreterEjRNS_17CompletionRequestEPNS_12SearchFilterE(ptr noundef nonnull align 8 dereferenceable(840) %i.ar, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef null) #18 ; 0 uses
  br label %_ZN12lldb_private13CommandObject22FindArgumentDataByTypeEN4lldb19CommandArgumentTypeE.exit.thread

_ZN12lldb_private13CommandObject22FindArgumentDataByTypeEN4lldb19CommandArgumentTypeE.exit.thread: ; preds = %bb.d, %3, %bb.l, %.split.loop.exit28, %bb.k, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN12lldb_private13CommandObject21GetNumArgumentEntriesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(329) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !153
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN12lldb_private13CommandObject23GetArgumentEntryAtIndexEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(329) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, %i.a
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.a
  %spec.select = select i1 %i.j, ptr %i.k, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12lldb_private13CommandObject22FindArgumentDataByTypeEN4lldb19CommandArgumentTypeE(i32 noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  br label %bb.g

bb.b:                                             ; preds = %bb.g
  %exitcond.not = icmp eq i64 %indvars.iv, 108
  br i1 %exitcond.not, label %.split.loop.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw [64 x i8], ptr @_ZN12lldb_privateL16g_argument_tableE, i64 %indvars.iv ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i32, ptr %i.b, align 16, !tbaa !175
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %.split.loop.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [64 x i8], ptr @_ZN12lldb_privateL16g_argument_tableE, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load i32, ptr %i.f, align 16, !tbaa !175
  %i.h = icmp eq i32 %i.g, %0
  br i1 %i.h, label %.split.loop.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw [64 x i8], ptr @_ZN12lldb_privateL16g_argument_tableE, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.k = load i32, ptr %i.j, align 16, !tbaa !175
  %i.l = icmp eq i32 %i.k, %0
  br i1 %i.l, label %.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.f ] ; 6 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr @_ZN12lldb_privateL16g_argument_tableE, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 16, !tbaa !175
  %i.o = icmp eq i32 %i.n, %0
  br i1 %i.o, label %.split.loop.exit16, label %bb.b

.split.loop.exit:                                 ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  br label %.split.loop.exit16

.split.loop.exit12:                               ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  br label %.split.loop.exit16

.split.loop.exit14:                               ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.split.loop.exit16

.split.loop.exit16:                               ; preds = %bb.g, %bb.b, %.split.loop.exit14, %.split.loop.exit12, %.split.loop.exit
  %i.s = phi ptr [ null, %bb.b ], [ %i.r, %.split.loop.exit14 ], [ %i.q, %.split.loop.exit12 ], [ %i.p, %.split.loop.exit ], [ %i.m, %bb.g ]
  ret ptr %i.s
}

declare noundef zeroext i1 @_ZN12lldb_private18CommandCompletions31InvokeCommonCompletionCallbacksERNS_18CommandInterpreterEjRNS_17CompletionRequestEPNS_12SearchFilterE(ptr noundef nonnull align 8 dereferenceable(840), i32 noundef, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private13CommandObject20HelpTextContainsWordEN4llvm9StringRefEbbbb(ptr noundef nonnull align 8 dereferenceable(329) %0, ptr %1, i64 %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %10 = alloca %"class.lldb_private::StreamString", align 8 ; 7 uses
  %11 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } %i.c(ptr noundef nonnull align 8 dereferenceable(329) %0) #18 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  store ptr %i.e, ptr %7, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = extractvalue { ptr, i64 } %i.d, 1
  store i64 %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.h = load ptr, ptr %0, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call { ptr, i64 } %i.j(ptr noundef nonnull align 8 dereferenceable(329) %0) #18 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  store ptr %i.l, ptr %8, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = extractvalue { ptr, i64 } %i.k, 1
  store i64 %i.n, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.o = load ptr, ptr %0, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call { ptr, i64 } %i.q(ptr noundef nonnull align 8 dereferenceable(329) %0) #18 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  store ptr %i.s, ptr %9, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = extractvalue { ptr, i64 } %i.r, 1
  store i64 %i.u, ptr %i.t, align 8
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = call noundef i64 @_ZNK4llvm9StringRef16find_insensitiveES0_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %1, i64 %2, i64 noundef 0) #18
  %.not23 = icmp eq i64 %i.v, -1
  br i1 %.not23, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = call noundef i64 @_ZNK4llvm9StringRef16find_insensitiveES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %1, i64 %2, i64 noundef 0) #18
  %i.x = icmp eq i64 %i.w, -1                     ; 2 uses
  %brmerge.not = and i1 %5, %i.x
  %not. = xor i1 %i.x, true
  br i1 %brmerge.not, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.y = call noundef i64 @_ZNK4llvm9StringRef16find_insensitiveES0_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %1, i64 %2, i64 noundef 0) #18
  %.not25 = icmp ne i64 %i.y, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e
  %.0.shrunk = phi i1 [ false, %bb.e ], [ %.not25, %bb.f ], [ %not., %bb.d ] ; 2 uses
  %.not = xor i1 %.0.shrunk, true
  %or.cond = and i1 %6, %.not
  br i1 %or.cond, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(329) %0) #18
  %.not17 = icmp eq ptr %i.ac, null
  br i1 %.not17, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120) %10, i1 noundef zeroext false) #18
  %i.ad = load ptr, ptr %0, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(329) %0) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !150, !nonnull !60, !align !61
  %i.al = call noundef i64 @_ZNK12lldb_private8Debugger16GetTerminalWidthEv(ptr noundef nonnull align 8 dereferenceable(1832) %i.ak) #18
  %i.am = trunc i64 %i.al to i32
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !150, !nonnull !60, !align !61
  %i.aq = call noundef zeroext i1 @_ZNK12lldb_private8Debugger11GetUseColorEv(ptr noundef nonnull align 8 dereferenceable(1832) %i.ap) #18
  call void @_ZN12lldb_private7Options19GenerateOptionUsageERNS_6StreamERNS_13CommandObjectEjb(ptr noundef nonnull align 8 dereferenceable(128) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(329) %0, i32 noundef %i.am, i1 noundef zeroext %i.aq) #18
  %i.ar = call noundef zeroext i1 @_ZNK12lldb_private12StreamString5EmptyEv(ptr noundef nonnull align 8 dereferenceable(120) %10) #18
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.as = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %10) #18 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  store ptr %i.at, ptr %11, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
end_hunk_0
