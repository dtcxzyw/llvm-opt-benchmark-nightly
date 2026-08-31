Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/marking-state?download=true
inline.NumInlined: 718
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local7PublishEv:bb.a
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %.not.i = icmp eq ptr %i.b, %i.f
  br i1 %.not.i, label %_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local18PublishPushSegmentEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #17
  br label %_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.b, %bb.c
  %i.n = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.n, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local18PublishPushSegmentEv.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %.not.i1 = icmp eq ptr %i.p, %i.t
  br i1 %.not.i1, label %_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local17PublishPopSegmentEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.v = load ptr, ptr %i.o, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #17
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.v, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #17
  br label %_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local17PublishPopSegmentEv.exit

_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local17PublishPopSegmentEv.exit: ; preds = %bb.e, %bb.f
  %i.ab = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.ab, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local17PublishPopSegmentEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal17BasicMarkingStateC2ERNS0_8HeapBaseERNS0_16MarkingWorklistsEPNS0_19CompactionWorklistsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(328) initializes((0, 275), (280, 312)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(368) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5cppgc8internal16MarkingStateBaseE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.h, ptr %i.g, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5cppgc8internal17BasicMarkingStateE, i64 16), ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 136
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.al = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.al, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr %i.an, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ap = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ar = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 232
  store ptr %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.av = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.av, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ax = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.ax, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 256
  store ptr %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bb = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bd = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr %i.bf, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.bg, i8 0, i64 27, i1 false)
  store i64 1, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4heap4base8WorklistIPPKvLt256EE5LocalESt14default_deleteIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18, !noalias !7 ; 4 uses
  store ptr %3, ptr %i.bj, align 8, !noalias !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17, !noalias !7
  store ptr %i.bl, ptr %i.bk, align 8, !noalias !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17, !noalias !7
  store ptr %i.bn, ptr %i.bm, align 8, !noalias !7
  %i.bo = load ptr, ptr %i.bg, align 8            ; 3 uses
  store ptr %i.bj, ptr %i.bg, align 8
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4heap4base8WorklistIPPKvLt256EE5LocalESt14default_deleteIS7_EED2Ev.exit, label %_ZNKSt14default_deleteIN4heap4base8WorklistIPPKvLt256EE5LocalEEclEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIN4heap4base8WorklistIPPKvLt256EE5LocalEEclEPS7_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZN4heap4base8WorklistIPPKvLt256EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #19
  br label %_ZNSt10unique_ptrIN4heap4base8WorklistIPPKvLt256EE5LocalESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIN4heap4base8WorklistIPPKvLt256EE5LocalESt14default_deleteIS7_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4heap4base8WorklistIPPKvLt256EE5LocalEEclEPS7_.exit.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal17BasicMarkingStateD2Ev(ptr noundef nonnull align 8 dereferenceable(328) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5cppgc8internal17BasicMarkingStateE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ult i64 %i.b, 2
  br i1 %i.d, label %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEED2Ev.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i.i.a

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i.i.a: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 65536                      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8 ; 5 uses
  %.pre.i.i.i.i = add i64 %i.b, 16                ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i.i, label %1

1:                                                ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i.i.a
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 %.pre.i.i.i.i
  %3 = icmp ule ptr %2, %i.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %5 = icmp ule ptr %4, %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i
  %6 = select i1 %3, i1 true, i1 %5
  tail call void @llvm.assume(i1 %6)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i.i: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i.i.a, %1
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 %.pre.i.i.i.i
  %8 = icmp ule ptr %7, %i.a
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %10 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i
  %11 = select i1 %8, i1 true, i1 %10
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne i64 %i.g, 0
  tail call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %12)
  br label %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEED2Ev.exit

_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4heap4base8WorklistIPPKvLt256EE5LocalESt14default_deleteIS7_EED2Ev.exit, label %_ZNKSt14default_deleteIN4heap4base8WorklistIPPKvLt256EE5LocalEEclEPS7_.exit.i

_ZNKSt14default_deleteIN4heap4base8WorklistIPPKvLt256EE5LocalEEclEPS7_.exit.i: ; preds = %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEED2Ev.exit
  tail call void @_ZN4heap4base8WorklistIPPKvLt256EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 24) #19
  br label %_ZNSt10unique_ptrIN4heap4base8WorklistIPPKvLt256EE5LocalESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIN4heap4base8WorklistIPPKvLt256EE5LocalESt14default_deleteIS7_EED2Ev.exit: ; preds = %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEED2Ev.exit, %_ZNKSt14default_deleteIN4heap4base8WorklistIPPKvLt256EE5LocalEEclEPS7_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.j) #17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5cppgc8internal16MarkingStateBaseE, i64 16), ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #17, !inline_history !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #20
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #20
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #20
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #17
  br label %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #20
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #20
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #20
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #17
  br label %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal17BasicMarkingStateD0Ev(ptr noundef nonnull align 8 dereferenceable(328) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5cppgc8internal17BasicMarkingStateD2Ev(ptr noundef nonnull align 8 dereferenceable(328) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 328) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal17BasicMarkingState7PublishEv(ptr noundef nonnull align 8 dereferenceable(328) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.absl::flat_hash_map", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt16EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt64EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists28ConcurrentMarkingBailoutItemELt64EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists17EphemeronPairItemELt64EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4heap4base8WorklistIPPKvLt256EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 16, i1 false), !noalias !12
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEEC2EOSJ_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #17
  %i.n = load i64, ptr %i.m, align 8, !noalias !12 ; 3 uses
  %i.o = icmp ne i64 %i.n, 0
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !12
  %.not.i.i.i = icmp ult i64 %i.r, 131072
  br i1 %.not.i.i.i, label %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEE4TakeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.q, align 8, !noalias !12
  br label %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEE4TakeEv.exit

bb.f:                                             ; preds = %bb.c
  %i.s = icmp ult i64 %i.n, 128
  call void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i1 noundef zeroext %i.s, i1 noundef zeroext true) #17
  br label %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEE4TakeEv.exit

_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEE4TakeEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.not.i.i = icmp ult i64 %i.u, 131072
  br i1 %.not.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.preheader, label %bb.g, !prof !15

bb.g:                                             ; preds = %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEE4TakeEv.exit
  %i.v = load i64, ptr %1, align 8                ; 2 uses
  %i.w = icmp ult i64 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.w, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %2 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.v
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = icmp ule ptr %3, %1
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %6 = icmp ule ptr %5, %.sroa.0.0.copyload.i.i.i.i
  %7 = select i1 %4, i1 true, i1 %6
  call void @llvm.assume(i1 %7)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.y, align 8 ; 2 uses
  %i.z = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1
  %i.aa = icmp slt i8 %i.z, -1
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.preheader

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.ab = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ]
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1
  %i.ag = icmp slt i8 %i.af, -1
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.preheader, !llvm.loop !16

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.preheader: ; preds = %.lr.ph.i.i, %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEE4TakeEv.exit, %bb.g, %bb.h
  %.sroa.9.0.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ %i.x, %bb.g ], [ undef, %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEE4TakeEv.exit ], [ %i.ae, %.lr.ph.i.i ]
  %.sroa.06.0.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.h ], [ @_ZN4absl18container_internal11kSooControlE, %bb.g ], [ null, %_ZN4heap4base18CachedUnorderedMapIPN5cppgc8internal8BasePageElN2v84base4hashIS5_EEE4TakeEv.exit ], [ %i.ad, %.lr.ph.i.i ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.backedge, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.preheader
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.ph, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.preheader ], [ %.sroa.9.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.backedge ] ; 3 uses
  %.sroa.06.0 = phi ptr [ %.sroa.06.0.ph, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.preheader ], [ %.sroa.06.0.be, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.backedge ] ; 6 uses
  %i.ah = icmp eq ptr %.sroa.06.0, null           ; 2 uses
  %i.ai = icmp eq ptr %.sroa.06.0, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit
  %i.aj = load i8, ptr %.sroa.06.0, align 1
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit
  br i1 %i.ai, label %bb.k, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorESM_.exit, !prof !15

bb.k:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #17
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorESM_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorESM_.exit
  %i.al = load i64, ptr %1, align 8               ; 4 uses
  %i.am = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp ult i64 %i.al, 2
  br i1 %i.an, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEED2Ev.exit, label %8

8:                                                ; preds = %bb.l
  %9 = and i64 %i.u, 65536                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %9, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8 ; 5 uses
  %.pre.i.i.i = add i64 %i.al, 16                 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.pre.i.i.i, i64 %.pre.i.i.i
  %12 = icmp ule ptr %11, %1
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %14 = icmp ule ptr %13, %.sroa.0.0.copyload.i.i.i1.pre.i.i.i
  %15 = select i1 %12, i1 true, i1 %14
  call void @llvm.assume(i1 %15)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i: ; preds = %8, %10
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.pre.i.i.i, i64 %.pre.i.i.i
  %17 = icmp ule ptr %16, %1
  %.phi.trans.insert.i.i.i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %18 = icmp ule ptr %.phi.trans.insert.i.i.i.a, %.sroa.0.0.copyload.i.i.i1.pre.i.i.i
  %19 = select i1 %17, i1 true, i1 %18
  call void @llvm.assume(i1 %19)
  %i.ao = icmp ne i64 %9, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.al, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.ao)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEED2Ev.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEED2Ev.exit: ; preds = %bb.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iteratorESM_.exit
  %i.ap = load i8, ptr %.sroa.06.0, align 1
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %bb.o, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #17
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %.sroa.9.0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.av = atomicrmw add ptr %i.au, i64 %i.at monotonic, align 8 ; 0 uses
  %i.aw = load i8, ptr %.sroa.06.0, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #17
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator14assert_is_fullEPKc.exit.i: ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 1 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.ay, align 1             ; 2 uses
  %i.bb = icmp slt i8 %i.ba, -1
  br i1 %i.bb, label %.lr.ph.i.i5, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i5:                                      ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator14assert_is_fullEPKc.exit.i, %.lr.ph.i.i5
  %i.bc = phi ptr [ %i.bf, %.lr.ph.i.i5 ], [ %i.az, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.bd = phi ptr [ %i.be, %.lr.ph.i.i5 ], [ %i.ay, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bg = load i8, ptr %i.be, align 1             ; 2 uses
  %i.bh = icmp slt i8 %i.bg, -1
  br i1 %i.bh, label %.lr.ph.i.i5, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !16

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i5, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator14assert_is_fullEPKc.exit.i
  %.sroa.9.1 = phi ptr [ %i.az, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.bf, %.lr.ph.i.i5 ]
  %.sroa.06.1 = phi ptr [ %i.ay, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.be, %.lr.ph.i.i5 ]
  %i.bi = phi i8 [ %i.ba, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.bg, %.lr.ph.i.i5 ]
  %i.bj = icmp eq i8 %i.bi, -1
  br i1 %i.bj, label %bb.q, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.backedge, !prof !15

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.backedge: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator21skip_empty_or_deletedEv.exit.i, %bb.q
  %.sroa.06.0.be = phi ptr [ %.sroa.06.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator21skip_empty_or_deletedEv.exit.i ], [ null, %bb.q ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit

bb.q:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE8iterator21skip_empty_or_deletedEv.exit.i
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE5beginEv.exit.backedge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %.not.i = icmp eq ptr %i.b, %i.f
  br i1 %.not.i, label %_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local18PublishPushSegmentEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #17
  br label %_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.b, %bb.c
  %i.n = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.n, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local18PublishPushSegmentEv.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %.not.i1 = icmp eq ptr %i.p, %i.t
  br i1 %.not.i1, label %_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local17PublishPopSegmentEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.v = load ptr, ptr %i.o, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #17
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.v, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #17
  br label %_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local17PublishPopSegmentEv.exit

_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local17PublishPopSegmentEv.exit: ; preds = %bb.e, %bb.f
  %i.ab = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.ab, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local17PublishPopSegmentEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %.not.i = icmp eq ptr %i.b, %i.f
  br i1 %.not.i, label %_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local18PublishPushSegmentEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #17
  br label %_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.b, %bb.c
  %i.n = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.n, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local18PublishPushSegmentEv.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %.not.i1 = icmp eq ptr %i.p, %i.t
  br i1 %.not.i1, label %_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local17PublishPopSegmentEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.v = load ptr, ptr %i.o, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #17
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.v, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #17
  br label %_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local17PublishPopSegmentEv.exit

_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local17PublishPopSegmentEv.exit: ; preds = %bb.e, %bb.f
  %i.ab = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  store ptr %i.ab, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4heap4base8WorklistIN5cppgc8internal16MarkingWorklists16WeakCallbackItemELt64EE5Local17PublishPopSegmentEv.exit, %bb.d
end_hunk_0
begin_hunk_1_@_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5LocalD2Ev:bb.a
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #20
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #17
  br label %_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #8 comdat {
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #17
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !25, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #21 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #17
  %i.e = add i64 %i.d, 524272
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 16, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.3) #20
  unreachable

_ZN4heap4base8WorklistIPN5cppgc8internal16HeapObjectHeaderELt16EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEEC2EOSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.6 = alloca %"struct.absl::container_internal::HeapPtrs", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.a = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.a, ptr %0, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 1, ptr %1, align 8
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  ret void
}

declare void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #3

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
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #8 comdat {
bb.a:
  %i.a = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8ESaIcEEEPvS3_m(ptr noundef %0, i64 noundef %1) #8 comdat {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #18
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN5cppgc8internal8BasePageElEEN2v84base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_lEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSP_PFvSP_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !26

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
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.ao, 15
  %i.as = add i64 %i.ar, %i.al
  %i.at = and i64 %i.as, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.au = and i64 %i.al, %i.b
  %.not.i = icmp ult i64 %i.au, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.av = and i64 %i.al, %i.a                     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.av
  %i.ax = load <16 x i8>, ptr %i.aw, align 1
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.az, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.az, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = add i64 %i.av, %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.an, i64 noundef %i.t, i64 noundef %i.al) #17
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

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5cppgc8internal14StatsCollector12GetScopeNameENS1_7ScopeIdENS0_14CollectionTypeE(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.ap [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.o
    i32 15, label %bb.p
    i32 16, label %bb.q
    i32 17, label %bb.r
    i32 18, label %bb.s
    i32 19, label %bb.t
    i32 20, label %bb.u
    i32 21, label %bb.v
    i32 22, label %bb.w
    i32 23, label %bb.x
    i32 24, label %bb.y
    i32 25, label %bb.z
    i32 26, label %bb.aa
    i32 27, label %bb.ab
    i32 28, label %bb.ac
    i32 29, label %bb.ad
    i32 30, label %bb.ae
    i32 31, label %bb.af
    i32 32, label %bb.ag
    i32 33, label %bb.ah
    i32 34, label %bb.ai
    i32 35, label %bb.aj
    i32 36, label %bb.ak
    i32 37, label %bb.al
    i32 38, label %bb.am
    i32 39, label %bb.an
    i32 40, label %bb.ao
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i8 %1, 1
  %i.b = select i1 %i.a, ptr @.str.15, ptr @.str.16
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %1, 1
  %i.d = select i1 %i.c, ptr @.str.17, ptr @.str.18
  br label %bb.ap

bb.d:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %1, 1
  %i.f = select i1 %i.e, ptr @.str.19, ptr @.str.20
  br label %bb.ap

bb.e:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %1, 1
  %i.h = select i1 %i.g, ptr @.str.21, ptr @.str.22
  br label %bb.ap

bb.f:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %1, 1
  %i.j = select i1 %i.i, ptr @.str.23, ptr @.str.24
  br label %bb.ap

bb.g:                                             ; preds = %bb.a
  %i.k = icmp eq i8 %1, 1
  %i.l = select i1 %i.k, ptr @.str.25, ptr @.str.26
  br label %bb.ap

bb.h:                                             ; preds = %bb.a
  %i.m = icmp eq i8 %1, 1
  %i.n = select i1 %i.m, ptr @.str.27, ptr @.str.28
  br label %bb.ap

bb.i:                                             ; preds = %bb.a
end_hunk_1
