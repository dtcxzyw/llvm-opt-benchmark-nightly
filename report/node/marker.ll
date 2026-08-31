Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/marker?download=true
inline.NumInlined: 1530
inline.NumDeleted: 928
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE1EE13StopTraceImplEv:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 179
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr @.str.98, ptr %i.a, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.99, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.al = load i64, ptr %i.ag, align 8
  store i8 2, ptr %i.b, align 1
  store i64 %i.al, ptr %i.c, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 1, ptr %i.am, align 1
  %i.ao = zext i1 %i.aj to i64
  store i64 %i.ao, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ap = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #22 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef signext 69, ptr noundef nonnull %.0, ptr noundef %.0.i, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %1, i32 noundef 0) #22, !inline_history !79 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit9
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #22, !inline_history !80
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit9, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.az = load ptr, ptr %1, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.az, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.az) #22, !inline_history !80
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  ret void
}

declare noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE1ELNS1_12ScopeContextE0EE13StopTraceImplEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca [2 x %"class.std::unique_ptr.208"], align 16 ; 6 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %i.d = load atomic volatile i64, ptr @_ZZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE1ELNS1_12ScopeContextE0EE13StopTraceImplEvE28trace_event_unique_atomic492 acquire, align 8 ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #22 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.114) #22 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  store atomic volatile i64 %i.k, ptr @_ZZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE1ELNS1_12ScopeContextE0EE13StopTraceImplEvE28trace_event_unique_atomic492 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.a ], [ %i.j, %bb.b ]  ; 2 uses
  %i.l = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.m = and i8 %i.l, 5
  %.not6 = icmp eq i8 %i.m, 0
  br i1 %.not6, label %bb.d, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit9

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit9: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.r = load i8, ptr %i.q, align 8
  %i.s = tail call noundef ptr @_ZN5cppgc8internal14StatsCollector12GetScopeNameENS1_7ScopeIdENS0_14CollectionTypeE(i32 noundef %i.o, i8 noundef zeroext %i.r)
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 179
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr @.str.98, ptr %i.a, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.99, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.z = load i64, ptr %i.u, align 8
  store i8 2, ptr %i.b, align 1
  store i64 %i.z, ptr %i.c, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 1, ptr %i.aa, align 1
  %i.ac = zext i1 %i.x to i64
  store i64 %i.ac, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ad = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #22 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i8 noundef signext 69, ptr noundef nonnull %.0, ptr noundef %i.s, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %1, i32 noundef 0) #22, !inline_history !79 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit9
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #22, !inline_history !80
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit9, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.an = load ptr, ptr %1, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.an, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #22, !inline_history !80
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  ret void
}

declare void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN5cppgc8internal10MarkerBase15VisitLocalRootsENS3_18EmbedderStackStateEE3$_0EEvPS1_PvPKv"(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8               ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !26, !align !27 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(512) %i.c) #22, !inline_history !38
  %i.h = load ptr, ptr %.val, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(860) %.val) #22, !inline_history !38
  tail call void @_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull %i.k) #22
  store <2 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  ret void
}

declare void @_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEEixERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair", align 8        ; 9 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorptEv.exit6

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.g = tail call { ptr, ptr } @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE4findIS6_EENSJ_8iteratorERSG_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 4 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = icmp eq ptr %i.h, null                   ; 2 uses
  %i.k = icmp eq ptr %i.h, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.h, align 1
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.e, !prof !37

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.d, %bb.c
  br i1 %i.k, label %bb.f, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorESM_.exit, !prof !35

bb.f:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.118, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.116) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorESM_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.j, label %bb.g, label %.thread

.thread:                                          ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorESM_.exit
  %i.n = load ptr, ptr %1, align 8
  store ptr %i.n, ptr %0, align 8
  br label %bb.p

bb.g:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorESM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.o = load i64, ptr %i.f, align 8, !noalias !105
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !112
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.r, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 131072, ptr %i.q, align 8, !noalias !112
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_smallIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !112
  %i.v = load ptr, ptr %1, align 8, !noalias !112
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_smallIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !112
  store ptr %i.f, ptr %2, align 8, !noalias !112
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.x, align 8, !noalias !112
  %i.y = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v84base4hashIPN5cppgc8internal8BasePageEEESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #22, !noalias !112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !112
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !112 ; 4 uses
  %4 = load i64, ptr %i.f, align 8, !noalias !112 ; 2 uses
  %5 = icmp ult i64 %4, 2
  %6 = add i64 %4, 16
  %7 = select i1 %5, i64 0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %7
  %9 = icmp ule ptr %8, %i.f
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %11 = icmp ule ptr %10, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  %12 = select i1 %9, i1 true, i1 %11
  call void @llvm.assume(i1 %12)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !112
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_smallIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_smallIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sink17.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %bb.k ], [ @_ZN4absl18container_internal11kSooControlE, %bb.i ], [ @_ZN4absl18container_internal11kSooControlE, %bb.j ]
  %.sink16.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.k ], [ %i.s, %bb.i ], [ %i.t, %bb.j ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.k ], [ 1, %bb.i ], [ 0, %bb.j ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !112
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !112
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE22find_or_prepare_insertIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.g
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_largeIS6_EESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !range !25, !alias.scope !113
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE22find_or_prepare_insertIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE22find_or_prepare_insertIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_smallIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %i.ac = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_smallIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %bb.l ]
  %i.ad = trunc nuw i8 %i.ac to i1
  %.pre16 = load ptr, ptr %1, align 8             ; 2 uses
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE22find_or_prepare_insertIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !113 ; 2 uses
  store ptr %.pre16, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ae, align 8
  %.pre = load ptr, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE22find_or_prepare_insertIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %i.af = phi ptr [ %.pre, %bb.m ], [ %.pre16, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE22find_or_prepare_insertIS6_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.i.i.i ]
  %.sroa.07.0.copyload = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr %i.af, ptr %0, align 8
  %i.ag = icmp eq ptr %.sroa.07.0.copyload, null
  br i1 %i.ag, label %bb.o, label %bb.p, !prof !114

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.118, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #22
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %.thread, %bb.n
  %.sroa.07.015 = phi ptr [ %i.h, %.thread ], [ %.sroa.07.0.copyload, %bb.n ] ; 3 uses
  %.sroa.7.014 = phi ptr [ %i.i, %.thread ], [ %.sroa.7.0.copyload, %bb.n ]
  %i.ah = icmp eq ptr %.sroa.07.015, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.ah, label %bb.q, label %bb.r, !prof !35

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.118, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120) #22
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ai = load i8, ptr %.sroa.07.015, align 1
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.t, label %bb.s, !prof !37

bb.s:                                             ; preds = %bb.r
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.118, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.120) #22
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.7.014, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = load i8, ptr %.sroa.07.015, align 1
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorptEv.exit6, label %bb.u, !prof !37

bb.u:                                             ; preds = %bb.t
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.118, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.120) #22
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorptEv.exit6: ; preds = %bb.t, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.ak, %bb.t ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE4findIS6_EENSJ_8iteratorERSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_smallIS6_EENSJ_8iteratorERSG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq ptr %i.f, %i.g
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_smallIS6_EENSJ_8iteratorERSG_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8 ; 6 uses
  %2 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.a
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = icmp ule ptr %3, %0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = icmp ule ptr %5, %.sroa.0.0.copyload.i.i.i.i
  %7 = select i1 %4, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext, 48
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = xor i64 %i.n, -1
  %i.p = shl i64 %i.n, 21
  %i.q = add i64 %i.p, %i.o                       ; 2 uses
  %i.r = lshr i64 %i.q, 24
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, 265                        ; 2 uses
  %i.u = lshr i64 %i.t, 14
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, 21                         ; 2 uses
  %i.x = lshr i64 %i.w, 28
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, 2147483649
  %i.aa = xor i64 %i.z, %i.l                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.ad, align 8 ; 2 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7 = phi i64 [ %i.aa, %bb.d ], [ %i.ay, %bb.g ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.d ], [ %i.ax, %bb.g ]
  %.sroa.6.0.i = and i64 %.pn.i7, %i.a            ; 4 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ag, i32 0, i32 3, i32 1)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  %i.ai = load <16 x i8>, ptr %i.ah, align 1      ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.af, %i.ai
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not46.i = icmp eq i16 %i.ak, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.017.047.i = phi i16 [ %i.au, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i, %i.am
  %i.ao = and i64 %i.an, %i.a                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aq, %i.m
  br i1 %i.ar, label %.thread33.i, label %bb.f, !prof !37

.thread33.i:                                      ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_largeIS6_EENSJ_8iteratorERSG_m.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.at = add i16 %.sroa.017.047.i, -1
  %i.au = and i16 %i.at, %.sroa.017.047.i         ; 2 uses
  %.not.i = icmp eq i16 %i.au, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.av = icmp eq <16 x i8> %i.ai, splat (i8 -128)
  %i.aw = bitcast <16 x i1> %i.av to i16
  %.not44.i = icmp eq i16 %i.aw, 0
  br i1 %.not44.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_largeIS6_EENSJ_8iteratorERSG_m.exit, !prof !35

bb.g:                                             ; preds = %._crit_edge.i
  %i.ax = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.ay = add i64 %i.ax, %.sroa.6.0.i
  br label %bb.e, !llvm.loop !115

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_largeIS6_EENSJ_8iteratorERSG_m.exit: ; preds = %._crit_edge.i, %.thread33.i
  %.sroa.0.4.ph.i = phi ptr [ %i.as, %.thread33.i ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.ap, %.thread33.i ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_smallIS6_EENSJ_8iteratorERSG_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_smallIS6_EENSJ_8iteratorERSG_.exit: ; preds = %bb.c, %bb.b, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_largeIS6_EENSJ_8iteratorERSG_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE10find_largeIS6_EENSJ_8iteratorERSG_m.exit ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i, %bb.c ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #16

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE28find_or_prepare_insert_largeIS6_EESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8 ; 5 uses
  %i.b = load i64, ptr %1, align 8                ; 5 uses
  %3 = icmp ult i64 %i.b, 2
  %4 = add i64 %i.b, 16
  %5 = select i1 %3, i64 0, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %5
  %7 = icmp ule ptr %6, %1
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %sext = shl i64 %i.d, 48
  %i.e = ashr exact i64 %sext, 48
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = xor i64 %i.g, -1
  %i.i = shl i64 %i.g, 21
  %i.j = add i64 %i.i, %i.h                       ; 2 uses
  %i.k = lshr i64 %i.j, 24
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, 265                        ; 2 uses
  %i.n = lshr i64 %i.m, 14
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 21                         ; 2 uses
  %i.q = lshr i64 %i.p, 28
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 2147483649
  %i.t = xor i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22 = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.t, %bb.a ], [ %i.ax, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.aw, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.b                 ; 5 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not64 = icmp eq i16 %i.ad, 0
  br i1 %.not64, label %.critedge19, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.035.065 = phi i16 [ %i.am, %.critedge ], [ %i.ad, %bb.b ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.7.0, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %.critedge21, label %.critedge, !prof !37

.critedge:                                        ; preds = %.lr.ph
  %i.al = add i16 %.sroa.035.065, -1
  %i.am = and i16 %i.al, %.sroa.035.065           ; 2 uses
  %.not = icmp eq i16 %i.am, 0
  br i1 %.not, label %.critedge19, label %.lr.ph

.critedge19:                                      ; preds = %.critedge, %bb.b
  %i.an = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not57 = icmp eq i16 %i.ao, 0
  br i1 %.not57, label %bb.c, label %.thread, !prof !35

.thread:                                          ; preds = %.critedge19
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = add i64 %.sroa.7.0, %i.aq
  %i.as = and i64 %i.ar, %i.b
  %i.at = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.t, i64 %i.as, i64 %.sroa.15.0) #22 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.a, align 8, !nonnull !26, !noundef !26 ; 3 uses
  %11 = load i64, ptr %1, align 8                 ; 2 uses
  %12 = icmp ult i64 %11, 2
  %13 = add i64 %11, 16
  %14 = select i1 %12, i64 0, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %14
  %16 = icmp ule ptr %15, %1
  %17 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i.i.i25
  %18 = select i1 %16, i1 true, i1 %17
  tail call void @llvm.assume(i1 %18)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.at
  %.sroa.0.0.copyload.i.i.i2.i26 = load ptr, ptr %i.w, align 8
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26, i64 %i.at
  br label %bb.d

bb.c:                                             ; preds = %.critedge19
  %i.aw = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.7.0
  br label %bb.b

.critedge21:                                      ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ah
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge21
  %.sink82 = phi ptr [ %i.au, %.thread ], [ %i.ay, %.critedge21 ]
  %.sink81 = phi ptr [ %i.av, %.thread ], [ %i.ai, %.critedge21 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge21 ]
  store ptr %.sink82, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81, ptr %.sroa.4.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.az, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #6

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnIN2v84base4hashIPN5cppgc8internal8BasePageEEES8_Lb0EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, -1
  %i.d = shl i64 %i.b, 21
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = lshr i64 %i.e, 24
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, 265                        ; 2 uses
  %i.i = lshr i64 %i.h, 14
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, 21                         ; 2 uses
  %i.l = lshr i64 %i.k, 28
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 2147483649
  %i.o = xor i64 %i.n, %2
  ret i64 %i.o
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #11 comdat {
bb.a:
  %i.a = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8ESaIcEEEPvS3_m(ptr noundef %0, i64 noundef %1) #11 comdat {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #11 comdat {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, 15
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = add i64 %i.d, %4
  %i.f = add i64 %i.e, %i.a
  %i.g = sub i64 0, %4
  %i.h = and i64 %i.f, %i.g
  %i.i = mul i64 %3, %1
  %i.j = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.k = add i64 %i.i, 7
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSP_PFvSP_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 5 uses
  %5 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.a
  %6 = getelementptr i8, ptr %5, i64 16
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.04962, 16                  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !116

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bh, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.04962, %i.s            ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = xor i64 %i.y, -1
  %i.aa = shl i64 %i.y, 21
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 24
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, 265                      ; 2 uses
  %i.af = lshr i64 %i.ae, 14
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, 21                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 28
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = mul i64 %i.aj, 2147483649
  %i.al = xor i64 %i.ak, %i.w                     ; 6 uses
  %i.am = lshr i64 %i.al, 57
  %i.an = trunc nuw nsw i64 %i.am to i8           ; 2 uses
  %i.ao = sub i64 %i.t, %i.al                     ; 2 uses
  %i.ap = and i64 %i.h, %i.ao
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !37

bb.d:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.ao, 15
  %i.as = add i64 %i.ar, %i.al
  %i.at = and i64 %i.as, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.au = and i64 %i.al, %i.b
  %.not.i = icmp ult i64 %i.au, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !37

bb.f:                                             ; preds = %bb.e
  %i.av = and i64 %i.al, %i.a                     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.av
  %i.ax = load <16 x i8>, ptr %i.aw, align 1
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.az, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.az, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = add i64 %i.av, %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.an, i64 noundef %i.t, i64 noundef %i.al) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.bc, %bb.g ], [ %i.at, %bb.d ] ; 3 uses
  %i.bd = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.an, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = add i16 %.sroa.052.061, -1
  %i.bh = and i16 %i.bg, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bh, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v84base4hashIPN5cppgc8internal8BasePageEEESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !26, !align !27
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = shl i64 %i.d, 21
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  %i.h = lshr i64 %i.g, 24
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, 265                        ; 2 uses
  %i.k = lshr i64 %i.j, 14
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, 21                         ; 2 uses
  %i.n = lshr i64 %i.m, 28
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 2147483649
  %i.q = xor i64 %i.p, %1
  ret i64 %i.q
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread31

.thread31:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8 ; 4 uses
  %i.m = icmp eq ptr %.sroa.025.0, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.l, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !117

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = urem i64 %i.q, %i.s
  br label %.critedge

bb.f:                                             ; preds = %.thread31
  %i.u = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.c, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %i.c, %i.ab
  br i1 %i.y, label %_ZNKSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !118

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.z, %bb.g ], [ %i.u, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.f
  %.not19.i.i = icmp eq i64 %i.ad, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !118

end_hunk_0
