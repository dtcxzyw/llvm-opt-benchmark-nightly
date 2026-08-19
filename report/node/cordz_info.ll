inline.NumInlined: 165
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Znwm

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal9CordzInfo5TrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4 ; 3 uses
  %i.d = and i32 %i.c, 1
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %bb.a
  %i.e = or disjoint i32 %i.c, 1
  %i.f = cmpxchg ptr %i.b, i32 %i.c, i32 %i.e acquire monotonic, align 4
  %i.g = extractvalue { i32, i1 } %i.f, 0
  %.pre.i.i.i = and i32 %i.g, 1
  %i.h = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.h, label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.a
  tail call void @_ZN4absl13base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.b) #15
  br label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit

_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.split, label %.split5

.split5:                                          ; preds = %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store atomic ptr %0, ptr %i.l release, align 8
  br label %.split

.split:                                           ; preds = %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit, %.split5
  %.sink = phi ptr [ %i.k, %.split5 ], [ null, %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic ptr %.sink, ptr %i.m release, align 8
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store atomic ptr %0, ptr %i.o release, align 8
  %i.p = load atomic i32, ptr %i.b monotonic, align 4
  %i.q = and i32 %i.p, 2
  %i.r = atomicrmw xchg ptr %i.b, i32 %i.q release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.r, 8
  br i1 %.not4.i.i, label %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.split
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.r) #15
  br label %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit

_ZN4absl13base_internal14SpinLockHolderD2Ev.exit: ; preds = %.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataERKS2_NS0_18CordzUpdateTracker16MethodIdentifierE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 260, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataERKS2_NS0_18CordzUpdateTracker16MethodIdentifierE) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataERKS2_NS0_18CordzUpdateTracker16MethodIdentifierE) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.f, label %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #12
  unreachable

_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit: ; preds = %bb.e
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit
  %i.h = inttoptr i64 %i.g to ptr
  tail call void @_ZN4absl13cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.h)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit
  %i.i = tail call noalias noundef nonnull dereferenceable(1344) ptr @_Znwm(i64 noundef 1344) #14 ; 6 uses
  %i.j = load i8, ptr %0, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 626, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData7as_treeEv) #12
  unreachable

_ZNK4absl13cord_internal10InlineData7as_treeEv.exit: ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i8, ptr %1, align 8
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 576, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #12
  unreachable

bb.k:                                             ; preds = %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit
  %i.p = load i64, ptr %1, align 8                ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not.i11 = icmp eq i64 %i.q, 0
  br i1 %.not.i11, label %bb.l, label %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit14

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #12
  unreachable

_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit14: ; preds = %bb.k
  %i.r = add nsw i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1336
  %i.u = load i64, ptr %i.t, align 8
  tail call void @_ZN4absl13cord_internal9CordzInfoC2EPNS0_7CordRepEPKS1_NS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(1344) %i.i, ptr noundef %i.m, ptr noundef %i.s, i32 noundef %2, i64 noundef %i.u)
  %i.v = load i8, ptr %0, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %_ZN4absl13cord_internal10InlineData14set_cordz_infoEPNS0_9CordzInfoE.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit14
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 587, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10InlineData14set_cordz_infoEPNS0_9CordzInfoE) #12
  unreachable

_ZN4absl13cord_internal10InlineData14set_cordz_infoEPNS0_9CordzInfoE.exit: ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit14
  %i.x = ptrtoint ptr %i.i to i64
  %i.y = or i64 %i.x, 1
  store i64 %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 6 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4 ; 3 uses
  %i.ac = and i32 %i.ab, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i.i: ; preds = %_ZN4absl13cord_internal10InlineData14set_cordz_infoEPNS0_9CordzInfoE.exit
  %i.ad = or disjoint i32 %i.ab, 1
  %i.ae = cmpxchg ptr %i.aa, i32 %i.ab, i32 %i.ad acquire monotonic, align 4
  %i.af = extractvalue { i32, i1 } %i.ae, 0
  %.pre.i.i.i.i = and i32 %i.af, 1
  %i.ag = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %i.ag, label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i.i, %_ZN4absl13cord_internal10InlineData14set_cordz_infoEPNS0_9CordzInfoE.exit
  tail call void @_ZN4absl13base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.aa) #15
  br label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i

_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i.i, %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i.i
  %i.ah = load ptr, ptr %i.z, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load atomic ptr, ptr %i.ai acquire, align 8 ; 3 uses
  %.not.i15 = icmp eq ptr %i.aj, null
  br i1 %.not.i15, label %.split.i, label %.split5.i

.split5.i:                                        ; preds = %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store atomic ptr %i.i, ptr %i.ak release, align 8
  br label %.split.i

.split.i:                                         ; preds = %.split5.i, %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store atomic ptr %i.aj, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.z, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store atomic ptr %i.i, ptr %i.an release, align 8
  %i.ao = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ap = and i32 %i.ao, 2
  %i.aq = atomicrmw xchg ptr %i.aa, i32 %i.ap release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.aq, 8
  br i1 %.not4.i.i.i, label %_ZN4absl13cord_internal9CordzInfo5TrackEv.exit, label %bb.n

bb.n:                                             ; preds = %.split.i
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.aa, i32 noundef %i.aq) #15
  br label %_ZN4absl13cord_internal9CordzInfo5TrackEv.exit

_ZN4absl13cord_internal9CordzInfo5TrackEv.exit:   ; preds = %.split.i, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, @_ZN4absl13cord_internal9CordzInfo12global_list_E
  br i1 %.not.i, label %_ZNK4absl13cord_internal9CordzInfo8ODRCheckEv.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 59), i32 noundef 224, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #13
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15, i32 noundef 224, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal9CordzInfo8ODRCheckEv) #12
  unreachable

_ZNK4absl13cord_internal9CordzInfo8ODRCheckEv.exit: ; preds = %bb.a
  %i.c = load atomic i32, ptr @_ZN4absl13cord_internal9CordzInfo12global_list_E monotonic, align 8 ; 3 uses
  %i.d = and i32 %i.c, 1
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %_ZNK4absl13cord_internal9CordzInfo8ODRCheckEv.exit
  %i.e = or disjoint i32 %i.c, 1
  %i.f = cmpxchg ptr @_ZN4absl13cord_internal9CordzInfo12global_list_E, i32 %i.c, i32 %i.e acquire monotonic, align 4
  %i.g = extractvalue { i32, i1 } %i.f, 0
  %.pre.i.i.i = and i32 %i.g, 1
  %i.h = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.h, label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit, label %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZNK4absl13cord_internal9CordzInfo8ODRCheckEv.exit
  tail call void @_ZN4absl13base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl13cord_internal9CordzInfo12global_list_E) #15
  br label %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit

_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit: ; preds = %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl13base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic ptr, ptr %i.j acquire, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.q = load atomic ptr, ptr %i.p acquire, align 8
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN4absl13cord_internal9CordzInfo7UntrackEvENK3$_0clEv") #12
  unreachable

bb.e:                                             ; preds = %bb.c
  store atomic ptr %i.o, ptr %i.p release, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4absl13base_internal14SpinLockHolderC2ERNS0_8SpinLockE.exit
  %.not14 = icmp eq ptr %i.o, null
  %i.s = icmp eq ptr %i.k, %0                     ; 2 uses
  br i1 %.not14, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN4absl13cord_internal9CordzInfo7UntrackEvENK3$_0clEv") #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.u = load atomic ptr, ptr %i.t acquire, align 8
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 355, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN4absl13cord_internal9CordzInfo7UntrackEvENK3$_0clEv") #12
  unreachable

bb.k:                                             ; preds = %bb.i
  store atomic ptr %i.m, ptr %i.t release, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.n, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 358, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN4absl13cord_internal9CordzInfo7UntrackEvENK3$_0clEv") #12
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store atomic ptr %i.m, ptr %i.x release, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.y = load atomic i32, ptr @_ZN4absl13cord_internal9CordzInfo12global_list_E monotonic, align 8
  %i.z = and i32 %i.y, 2
  %i.aa = atomicrmw xchg ptr @_ZN4absl13cord_internal9CordzInfo12global_list_E, i32 %i.z release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.aa, 8
  br i1 %.not4.i.i, label %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl13cord_internal9CordzInfo12global_list_E, i32 noundef %i.aa) #15
  br label %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit

_ZN4absl13base_internal14SpinLockHolderD2Ev.exit: ; preds = %bb.o, %bb.p
  %i.ab = tail call noundef zeroext i1 @_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br i1 %i.ab, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(1344) %0) #13
  br label %bb.t

bb.r:                                             ; preds = %_ZN4absl13base_internal14SpinLockHolderD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN4absl5Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not16 = icmp eq ptr %i.ai, null
  br i1 %.not16, label %bb.s, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit:    ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i32 2 monotonic, align 4 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit, %bb.r
  tail call void @_ZN4absl5Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #13
  tail call void @_ZN4absl13cord_internal11CordzHandle6DeleteEPS1_(ptr noundef nonnull %0) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal9CordzInfo18MaybeTrackCordImplERNS0_10InlineDataERKS2_NS0_18CordzUpdateTracker16MethodIdentifierE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl13cord_internal10InlineData11is_profiledEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 558, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData11is_profiledEv) #12
  unreachable

_ZNK4absl13cord_internal10InlineData11is_profiledEv.exit: ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4absl13cord_internal10InlineData11is_profiledEv.exit
  tail call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataERKS2_NS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
  br label %bb.i

bb.d:                                             ; preds = %_ZNK4absl13cord_internal10InlineData11is_profiledEv.exit
  %i.d = load i8, ptr %0, align 8
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %_ZNK4absl13cord_internal10InlineData11is_profiledEv.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 558, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData11is_profiledEv) #12
  unreachable

_ZNK4absl13cord_internal10InlineData11is_profiledEv.exit6: ; preds = %bb.d
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %.not7 = icmp eq i64 %i.f, 1
  br i1 %.not7, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4absl13cord_internal10InlineData11is_profiledEv.exit6
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 576, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #12
  unreachable

_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit: ; preds = %bb.f
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @_ZN4absl13cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.i)
  %i.j = load i8, ptr %0, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %_ZN4absl13cord_internal10InlineData16clear_cordz_infoEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 595, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10InlineData16clear_cordz_infoEv) #12
  unreachable

_ZN4absl13cord_internal10InlineData16clear_cordz_infoEv.exit: ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit
  store i64 1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4absl13cord_internal10InlineData11is_profiledEv.exit6, %_ZN4absl13cord_internal10InlineData16clear_cordz_infoEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN4absl13cord_internal9CordzInfo15GetParentMethodEPKS1_(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.e = load i32, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4absl13cord_internal9CordzInfo15FillParentStackEPKS1_PPv(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 292, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal9CordzInfo15FillParentStackEPKS1_PPv) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not14 = icmp eq i64 %i.c, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.e = shl i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %i.d, i64 %i.e, i1 false)
  %i.f = load i64, ptr %i.b, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %i.g, i64 %i.j, i1 false)
  %i.k = load i64, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.0 = phi i64 [ %i.k, %bb.f ], [ %i.f, %bb.e ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal9CordzInfoC2EPNS0_7CordRepEPKS1_NS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(1344) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4absl13cord_internal11CordzHandleC2Eb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext false) #13
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl13cord_internal9CordzInfoE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN4absl13cord_internal9CordzInfo12global_list_E, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = tail call noundef i32 @_ZN4absl13GetStackTraceEPPvii(ptr noundef nonnull %i.e, i32 noundef 64, i32 noundef 1) #13
  %i.g = sext i32 %i.f to i64
  store i64 %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.j, label %_ZN4absl13cord_internal9CordzInfo15FillParentStackEPKS1_PPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %.not14.i = icmp eq i64 %i.l, 0
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 584
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1096 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
end_hunk_0
