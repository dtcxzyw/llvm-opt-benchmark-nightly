Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StructuredDataDarwinLog?download=true
inline.NumInlined: 2735
inline.NumDeleted: 1432
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12lldb_private28ThreadPlanCallOnFunctionExitC1ERNS_6ThreadERKSt8functionIFvvEE
declare void @_ZN12lldb_private28ThreadPlanCallOnFunctionExitC1ERNS_6ThreadERKSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(576), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN12lldb_private6Thread15QueueThreadPlanERSt10shared_ptrINS_10ThreadPlanEEb(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(576), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN12lldb_private12FileSpecListC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN12lldb_private8FileSpecC1EN4llvm9StringRefENS1_3sys4path5StyleE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, i32 noundef) unnamed_addr #2

declare void @_ZN12lldb_private12FileSpecList6AppendERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN12lldb_private6Target16CreateBreakpointEPKNS_12FileSpecListES3_PKcN4lldb16FunctionNameTypeENS6_12LanguageTypeEmbNS_8LazyBoolEbb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.507") align 8, ptr noundef nonnull align 8 dereferenceable(2200), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN12lldb_private10Breakpoint11SetCallbackESt8functionIFbPvPNS_24StoppointCallbackContextEmmEES2_b(ptr noundef nonnull align 8 dereferenceable(568), ptr nofree noundef align 8 dereferenceable(32), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZNK12lldb_private9Stoppoint5GetIDEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN12lldb_private12FileSpecListD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private23StructuredDataDarwinLog13DumpTimestampERNS_6StreamEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !659
  %i.c = sub i64 %2, %i.b                         ; 2 uses
  %i.d = udiv i64 %i.c, 3600000000000
  %i.e = urem i64 %i.c, 3600000000000             ; 2 uses
  %i.f = udiv i64 %i.e, 60000000000
  %i.g = urem i64 %i.e, 60000000000               ; 2 uses
  %i.h = udiv i64 %i.g, 1000000000
  %i.i = urem i64 %i.g, 1000000000
  %i.j = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.47, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.i) #21 ; 0 uses
  ret void
}

declare noundef i64 @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private23StructuredDataDarwinLog10DumpHeaderERNS_6StreamERKNS_14StructuredData10DictionaryE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.lldb_private::StreamString", align 8 ; 18 uses
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 5 uses
  %5 = alloca %"class.std::shared_ptr.0", align 8 ; 5 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120) %3, i1 noundef zeroext false) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNK12lldb_private20StructuredDataPlugin10GetProcessEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  %i.b = load ptr, ptr %4, align 8, !tbaa !656    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56, !noalias !892, !nonnull !209, !noundef !209 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !892
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.g = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !892 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !4

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.c
  %i.k = load atomic i32, ptr %i.e monotonic, align 8, !noalias !892
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !213, !noalias !892
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.d, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.n = phi ptr [ %i.m, %bb.d ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ]
  %i.o = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.e, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !66
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21, !inline_history !5
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21, !inline_history !5
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.f:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i1.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.e, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aa = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.g ], [ %i.aa, %bb.h ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.i, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !67

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 656
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !420, !nonnull !209, !align !210 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56, !noalias !893 ; 9 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !52, !alias.scope !893
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 6 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 8, !noalias !893
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.06.i.i.i.i.i = phi i32 [ %i.ak, %bb.j ], [ %i.ao, %bb.l ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %.06.i.i.i.i.i, 1
  %i.am = cmpxchg weak ptr %i.aj, i32 %.06.i.i.i.i.i, i32 %i.al acq_rel monotonic, align 8, !noalias !893 ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.am, 1
  %i.ao = extractvalue { i32, i1 } %i.am, 0
  br i1 %i.an, label %_ZNSt23enable_shared_from_thisIN12lldb_private8DebuggerEE16shared_from_thisEv.exit, label %bb.k, !llvm.loop !4

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.k, %_ZN12lldb_private7Process9GetTargetEv.exit
  call void @abort() #22, !noalias !893
  unreachable

_ZNSt23enable_shared_from_thisIN12lldb_private8DebuggerEE16shared_from_thisEv.exit: ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !422, !noalias !893 ; 2 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !40, !alias.scope !893
  %.not43 = icmp eq ptr %i.ap, null
  br i1 %.not43, label %bb.av, label %bb.m

bb.m:                                             ; preds = %_ZNSt23enable_shared_from_thisIN12lldb_private8DebuggerEE16shared_from_thisEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN19sddarwinlog_private22GetGlobalEnableOptionsERKSt10shared_ptrIN12lldb_private8DebuggerEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.aq = load ptr, ptr %6, align 8, !tbaa !63    ; 5 uses
  %.not44 = icmp eq ptr %i.aq, null
  br i1 %.not44, label %bb.ao, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 133 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 134
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 135
  %i.av = load <4 x i8>, ptr %i.ar, align 1
  %.fr = freeze <4 x i8> %i.av
  %i.aw = trunc <4 x i8> %.fr to <4 x i1>
  %i.ax = bitcast <4 x i1> %i.aw to i4
  %.not53 = icmp eq i4 %i.ax, 0
  br i1 %.not53, label %bb.ao, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 noundef signext 91) #21 ; 0 uses
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !692, !range !126, !noundef !209
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !114
  %i.bb = call noundef zeroext i1 @_ZNK12lldb_private14StructuredData10Dictionary23GetValueForKeyAsIntegerImEEbN4llvm9StringRefERT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr nonnull @.str.48, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !114
  call void @_ZN12lldb_private23StructuredDataDarwinLog13DumpTimestampERNS_6StreamEm(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef %i.bc)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.019 = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.120 = phi i32 [ %.019, %bb.r ], [ 0, %bb.o ]  ; 5 uses
  %i.bd = load i8, ptr %i.as, align 8, !tbaa !693, !range !126, !noundef !209
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.bf = call noundef zeroext i1 @_ZNK12lldb_private14StructuredData10Dictionary22GetValueForKeyAsStringEN4llvm9StringRefERS3_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr nonnull @.str.49, i64 14, ptr noundef nonnull align 8 dereferenceable(16) %7)
  br i1 %i.bf, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !235
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not45 = icmp eq i32 %.120, 0
  br i1 %.not45, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 noundef signext 44) #21 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bk = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr nonnull @.str.50, i64 15) #21 ; 0 uses
  %.sroa.05.0.copyload = load ptr, ptr %7, align 8, !tbaa !116
  %.sroa.26.0.copyload = load i64, ptr %i.bg, align 8, !tbaa !114
  %i.bl = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #21 ; 0 uses
  %i.bm = add nuw nsw i32 %.120, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.t
  %.221 = phi i32 [ %.120, %bb.u ], [ %i.bm, %bb.x ], [ %.120, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.s
  %.3 = phi i32 [ %.221, %bb.y ], [ %.120, %bb.s ] ; 5 uses
  %i.bn = load i8, ptr %i.at, align 2, !tbaa !694, !range !126, !noundef !209
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.bp = call noundef zeroext i1 @_ZNK12lldb_private14StructuredData10Dictionary22GetValueForKeyAsStringEN4llvm9StringRefERS3_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr nonnull @.str.51, i64 9, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br i1 %i.bp, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !235
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not46 = icmp eq i32 %.3, 0
  br i1 %.not46, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bt = call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 noundef signext 44) #21 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bu = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr nonnull @.str.52, i64 10) #21 ; 0 uses
  %.sroa.03.0.copyload = load ptr, ptr %8, align 8, !tbaa !116
  %.sroa.24.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !114
  %i.bv = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload) #21 ; 0 uses
  %i.bw = add nuw nsw i32 %.3, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab, %bb.aa
  %.4 = phi i32 [ %.3, %bb.ab ], [ %i.bw, %bb.ae ], [ %.3, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.z
  %.5 = phi i32 [ %.4, %bb.af ], [ %.3, %bb.z ]
  %i.bx = load i8, ptr %i.au, align 1, !tbaa !695, !range !126, !noundef !209
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.bz = call noundef zeroext i1 @_ZNK12lldb_private14StructuredData10Dictionary22GetValueForKeyAsStringEN4llvm9StringRefERS3_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr nonnull @.str.53, i64 8, ptr noundef nonnull align 8 dereferenceable(16) %9)
  br i1 %i.bz, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !235
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not47 = icmp eq i32 %.5, 0
  br i1 %.not47, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cd = call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 noundef signext 44) #21 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ce = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr nonnull @.str.54, i64 9) #21 ; 0 uses
  %.sroa.01.0.copyload = load ptr, ptr %9, align 8, !tbaa !116
  %.sroa.22.0.copyload = load i64, ptr %i.ca, align 8, !tbaa !114
  %i.cf = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload) #21 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ag
  %i.cg = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr nonnull @.str.55, i64 2) #21 ; 0 uses
  %i.ch = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %3) #21 ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1
  %i.ck = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %i.ci, i64 %i.cj) #21 ; 0 uses
  %i.cl = call noundef i64 @_ZNK12lldb_private12StreamString7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %3) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.n, %bb.m, %bb.an
  %.0 = phi i64 [ %i.cl, %bb.an ], [ 0, %bb.m ], [ 0, %bb.n ]
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !52 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN19sddarwinlog_private13EnableOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967297
  %i.cr = trunc i64 %i.cp to i32                  ; 2 uses
  br i1 %i.cq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.co, align 8, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !66
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !60
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #21, !inline_history !3
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #21, !inline_history !3
  br label %_ZNSt12__shared_ptrIN19sddarwinlog_private13EnableOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i = phi i32 [ %i.cr, %bb.as ], [ %i.db, %bb.at ]
  %i.dc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dc, label %bb.au, label %_ZNSt12__shared_ptrIN19sddarwinlog_private13EnableOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #21
  br label %_ZNSt12__shared_ptrIN19sddarwinlog_private13EnableOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN19sddarwinlog_private13EnableOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ao, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN19sddarwinlog_private13EnableOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt23enable_shared_from_thisIN12lldb_private8DebuggerEE16shared_from_thisEv.exit
  %.1 = phi i64 [ %.0, %_ZNSt12__shared_ptrIN19sddarwinlog_private13EnableOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %_ZNSt23enable_shared_from_thisIN12lldb_private8DebuggerEE16shared_from_thisEv.exit ]
  %i.dd = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.aj, align 8, !tbaa !65
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !66
  %i.dh = load ptr, ptr %i.ah, align 8, !tbaa !60
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
end_hunk_0
