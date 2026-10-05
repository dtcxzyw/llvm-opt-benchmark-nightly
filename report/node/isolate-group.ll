Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/isolate-group?download=true
inline.NumInlined: 775
inline.NumDeleted: 525
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal12IsolateGroup10AddIsolateEPNS0_7IsolateE:bb.a
bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10664
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !46 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10656
  %i.r = load i64, ptr %i.q, align 8, !noalias !46
  %sext.i = shl i64 %i.r, 48
  %i.s = ashr exact i64 %sext.i, 48
  %i.t = ptrtoint ptr %1 to i64
  %i.u = xor i64 %i.t, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  %i.aa = xor i64 %i.s, %i.z                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10672 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ad, align 8, !noalias !46 ; 2 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.aa, %bb.f ], [ %i.bd, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bc, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.d             ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ag, i32 0, i32 3, i32 1), !noalias !46
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ai = load <16 x i8>, ptr %i.ah, align 1, !noalias !46 ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.af, %i.ai
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.ak, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.at, %.critedge.i ], [ %i.ak, %bb.g ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0.i, %i.am
  %i.ao = and i64 %i.an, %i.d
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !46
  %i.ar = icmp eq ptr %i.aq, %1
  br i1 %i.ar, label %.loopexit, label %.critedge.i, !prof !5

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.as = add i16 %.sroa.035.066.i, -1
  %i.at = and i16 %i.as, %.sroa.035.066.i         ; 2 uses
  %.not.i1 = icmp eq i16 %i.at, 0
  br i1 %.not.i1, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.au = icmp eq <16 x i8> %i.ai, splat (i8 -128)
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.av, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !6

.thread.i:                                        ; preds = %.critedge19.i
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.d
  %i.ba = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.aa, i64 %i.az, i64 %.sroa.15.0.i) #16, !noalias !46
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ad, align 8, !noalias !46
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ba
  br label %bb.i

bb.h:                                             ; preds = %.critedge19.i
  %i.bc = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bd = add i64 %i.bc, %.sroa.7.0.i
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph.i, %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #19
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.c, %.thread.i
  %i.be = phi ptr [ %1, %.thread.i ], [ %1, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.4.0.ph = phi ptr [ %i.bb, %.thread.i ], [ %i.h, %bb.c ], [ %i.o, %bb.e ]
  store ptr %i.be, ptr %.sroa.4.0.ph, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 10680 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.a, align 8
  store ptr %i.bh, ptr %i.bf, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 10640
  %i.bj = load ptr, ptr %i.bi, align 8
  call void @_ZN2v88internal29OptimizingCompileTaskExecutor13EnsureStartedEv(ptr noundef nonnull align 8 dereferenceable(137) %i.bj) #16
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1971), align 1, !range !7, !noundef !8
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.l, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 10632 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not10 = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not10, label %bb.m, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split

bb.m:                                             ; preds = %bb.l
  store ptr %i.bo, ptr %i.bm, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split: ; preds = %bb.l, %bb.m
  %.sink21 = phi i64 [ 55448, %bb.m ], [ 59480, %bb.l ]
  %.sink = phi i8 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sink21
  store i8 %.sink, ptr %i.bp, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split, %bb.k
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  ret void
}

declare void @_ZN2v88internal29OptimizingCompileTaskExecutor13EnsureStartedEv(ptr noundef nonnull align 8 dereferenceable(137)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12IsolateGroup13RemoveIsolateEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(10736) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10608 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10648 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10656 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.mask = and i64 %i.e, -131072
  %i.f = icmp eq i64 %.mask, 131072
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10616 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  store ptr null, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i: ; preds = %bb.b
  tail call void @_ZN2v88internal17ReadOnlyArtifactsD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.h) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 104) #17
  br label %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10640
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_ZN2v88internal29OptimizingCompileTaskExecutor4StopEv(ptr noundef nonnull align 8 dereferenceable(137) %i.j) #16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.l = load i8, ptr %i.k, align 8, !range !7, !noundef !8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10632 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit, %bb.a
  %i.q = call noundef i64 @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseIS6_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10680 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.d, align 8
  %.not.i = icmp ult i64 %i.w, 131072
  br i1 %.not.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.c, align 8
  %i.y = icmp ult i64 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10664 ; 2 uses
  br i1 %i.y, label %..thread_crit_edge, label %bb.k

..thread_crit_edge:                               ; preds = %bb.j
  %.pre = load i8, ptr @_ZN4absl18container_internal11kSooControlE, align 1
  br label %.thread

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.z, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10672
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aa, align 8 ; 2 uses
  %i.ab = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1 ; 2 uses
  %i.ac = icmp slt i8 %i.ab, -1
  br i1 %i.ac, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.ad = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.k ]
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.k ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ai = icmp slt i8 %i.ah, -1
  br i1 %i.ai, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !47

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.k
  %2 = phi i8 [ %i.ab, %bb.k ], [ %i.ah, %.lr.ph.i.i ]
  %.sroa.6.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.k ], [ %i.ag, %.lr.ph.i.i ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.k ], [ %i.af, %.lr.ph.i.i ]
  %i.aj = icmp eq ptr %.sroa.0.0.i, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.aj, label %bb.l, label %.thread, !prof !48

bb.l:                                             ; preds = %.loopexit
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #16
  call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %..thread_crit_edge, %.loopexit
  %3 = phi i8 [ %2, %.loopexit ], [ %.pre, %..thread_crit_edge ]
  %.sroa.6.0.i9 = phi ptr [ %.sroa.6.0.i, %.loopexit ], [ %i.z, %..thread_crit_edge ]
  %i.ak = icmp sgt i8 %3, -1
  br i1 %i.ak, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit, label %bb.m, !prof !5

bb.m:                                             ; preds = %.thread
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #16
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit: ; preds = %.thread
  %i.al = load ptr, ptr %.sroa.6.0.i9, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split: ; preds = %bb.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit
  %.sink = phi ptr [ %i.al, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit ], [ null, %bb.i ]
  store ptr %.sink, ptr %i.s, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split, %bb.h
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  ret void
}

declare void @_ZN2v88internal29OptimizingCompileTaskExecutor4StopEv(ptr noundef nonnull align 8 dereferenceable(137)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseIS6_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq ptr %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = xor i64 %i.n, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  %i.u = xor i64 %i.l, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8 ; 3 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.u, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.a        ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not47.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.048.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.a                     ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !5

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i16 %.sroa.017.048.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.048.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i, !prof !6

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !49

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.an, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.am, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i, 1
  %i.aw = icmp eq ptr %i.au, null                 ; 2 uses
  %i.ax = icmp eq ptr %i.au, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit
  %i.ay = load i8, ptr %i.au, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit
  br i1 %i.ax, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit, !prof !6

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseENSD_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull %i.au, ptr %i.av)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit, %bb.k
  %.0 = phi i64 [ 1, %bb.k ], [ 0, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden noalias noundef nonnull ptr @_ZN2v88internal12IsolateGroup3NewEv() local_unnamed_addr #8 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZN2v88internal12IsolateGroup32optimizing_compile_task_executorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10736) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10640
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @_ZN2v88internal29OptimizingCompileTaskExecutorD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal10MemoryPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #2

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare noundef zeroext i1 @_ZN2v88internal9CodeRange15InitReservationEPNS_13PageAllocatorEmb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN2v88internal17VirtualMemoryCageC2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal17ReadOnlyArtifactsD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal9CodeRangeD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare void @_ZN2v88internal29OptimizingCompileTaskExecutorC1Ev(ptr noundef nonnull align 8 dereferenceable(137)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE10InitializeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.590", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN2v88internal30GetPlatformVirtualAddressSpaceEv() #16 ; 7 uses
  %i.b = tail call noundef zeroext i1 @_ZN2v88internal15ThreadIsolation7EnabledEv() #16
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(44) %i.a) #16
  br i1 %i.g, label %_ZNSt10unique_ptrIN2v819VirtualAddressSpaceESt14default_deleteIS1_EED2Ev.exit, label %bb.b

_ZNSt10unique_ptrIN2v819VirtualAddressSpaceESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.h = zext i32 %i.c to i64
  %i.i = or disjoint i64 %i.h, 4294967296
  %.sroa.413.0 = select i1 %i.b, i64 %i.i, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.590") align 8 %1, ptr noundef nonnull align 8 dereferenceable(44) %i.a, i64 noundef 0, i64 noundef 268435456, i64 noundef 16384, i32 noundef 2, i64 %.sroa.413.0) #16
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(44) %i.a, i64 noundef 0, i64 noundef 268435456, i64 noundef 16384, i32 noundef 0) #16 ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

.thread:                                          ; preds = %bb.b
  %i.s = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #18 ; 3 uses
  tail call void @_ZN2v84base30EmulatedVirtualAddressSubspaceC1EPNS_19VirtualAddressSpaceEmmm(ptr noundef nonnull align 8 dereferenceable(312) %i.s, ptr noundef nonnull %i.a, i64 noundef %i.r, i64 noundef 268435456, i64 noundef 268435456) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge, %_ZNSt10unique_ptrIN2v819VirtualAddressSpaceESt14default_deleteIS1_EED2Ev.exit
  %i.u = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %_ZNSt10unique_ptrIN2v819VirtualAddressSpaceESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not11 = icmp eq ptr %i.u, null
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #19
  unreachable

bb.e:                                             ; preds = %.thread, %bb.c
  %i.v = phi ptr [ %i.s, %.thread ], [ %i.u, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i32 -1, ptr %i.z release, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  store atomic i32 -1, ptr %i.aa release, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 -1, ptr %i.ab release, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store atomic i32 -1, ptr %i.ac release, align 4
  %i.ad = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18 ; 2 uses
  call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %i.ae, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal30GetPlatformVirtualAddressSpaceEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2v88internal15ThreadIsolation7EnabledEv() local_unnamed_addr #1

declare void @_ZN2v84base30EmulatedVirtualAddressSubspaceC1EPNS_19VirtualAddressSpaceEmmm(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare void @_ZN2v84base12CallOnceImplEPSt6atomicIhESt8functionIFvvEE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load i8, ptr %i.i, align 8, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  tail call void %i.b(ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.h, i1 noundef zeroext %i.k) #16, !inline_history !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  store ptr %i.c, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 40) #17
  br label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS0_6HashEqIPN2v88internal7IsolateEvE4HashES6_Lb0EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  %i.i = xor i64 %2, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm8EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #11 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8ESaIcEEEPvS3_m(ptr noundef %0, i64 noundef %1) #11 comdat {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #18
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSJ_PFvSJ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
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
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !51

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bc, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.04962, %i.s            ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = xor i64 %i.y, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64
  %i.af = xor i64 %i.w, %i.ae                     ; 6 uses
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  %i.ai = sub i64 %i.t, %i.af                     ; 2 uses
  %i.aj = and i64 %i.h, %i.ai
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %.lr.ph
  %i.al = and i64 %i.ai, 15
  %i.am = add i64 %i.al, %i.af
  %i.an = and i64 %i.am, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.af, %i.b
  %.not.i = icmp ult i64 %i.ao, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ap = and i64 %i.af, %i.a                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1
  %i.as = icmp slt <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.at, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.at, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %i.ap, %i.av
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ah, i64 noundef %i.t, i64 noundef %i.af) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.aw, %bb.g ], [ %i.an, %bb.d ] ; 3 uses
  %i.ax = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ah, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.ba = load i64, ptr %i.u, align 8
  store i64 %i.ba, ptr %i.az, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = add i16 %.sroa.052.061, -1
  %i.bc = and i16 %i.bb, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal7IsolateEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !align !52
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  %i.k = xor i64 %1, %i.j
  ret i64 %i.k
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseENSD_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17) #16
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.b, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #16
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #16
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit: ; preds = %bb.e
  %i.e = load i64, ptr %0, align 8
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, i64 noundef 8) #16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE15erase_meta_onlyENSD_14const_iteratorE.exit

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef 8) #16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE15erase_meta_onlyENSD_14const_iteratorE.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE15erase_meta_onlyENSD_14const_iteratorE.exit: ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #15

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{null}
!11 = distinct !{null, null}
!12 = distinct !{!12, i1 false, !"_ZSt11make_uniqueIN2v88internal29OptimizingCompileTaskExecutorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!13 = distinct !{!13, !12, !"_ZSt11make_uniqueIN2v88internal29OptimizingCompileTaskExecutorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!14 = distinct !{!14, i1 false, !"_ZSt11make_uniqueIN2v88internal10MemoryPoolEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!15 = distinct !{!15, !14, !"_ZSt11make_uniqueIN2v88internal10MemoryPoolEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!16 = !{!13}
!17 = !{!15}
!18 = distinct !{null}
!19 = distinct !{null, null}
!20 = distinct !{!20, i1 false, !"_ZSt11make_uniqueIN2v88internal17ReadOnlyArtifactsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!21 = distinct !{!21, !20, !"_ZSt11make_uniqueIN2v88internal17ReadOnlyArtifactsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!22 = !{!21}
!23 = distinct !{!23, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE6insertIS6_Li0EEESt4pairINSD_8iteratorEbERKT_"}
!24 = distinct !{!24, !23, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE6insertIS6_Li0EEESt4pairINSD_8iteratorEbERKT_: argument 0"}
!25 = distinct !{!25, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7emplaceIJRKS6_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSI_"}
!26 = distinct !{!26, !25, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7emplaceIJRKS6_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSI_: argument 0"}
!27 = distinct !{!27, i1 false, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEEvE5applyINS0_12raw_hash_setIS7_NS0_6HashEqIS6_vE4HashENSC_2EqESaIS6_EE19EmplaceDecomposableEJRKS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_"}
!28 = distinct !{!28, !27, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEEvE5applyINS0_12raw_hash_setIS7_NS0_6HashEqIS6_vE4HashENSC_2EqESaIS6_EE19EmplaceDecomposableEJRKS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_: argument 0"}
!29 = distinct !{!29, i1 false, !"_ZN4absl18container_internal17FlatHashSetPolicyIPN2v88internal7IsolateEE5applyINS0_12raw_hash_setIS6_NS0_6HashEqIS5_vE4HashENSA_2EqESaIS5_EE19EmplaceDecomposableEJRKS5_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_"}
!30 = distinct !{!30, !29, !"_ZN4absl18container_internal17FlatHashSetPolicyIPN2v88internal7IsolateEE5applyINS0_12raw_hash_setIS6_NS0_6HashEqIS5_vE4HashENSA_2EqESaIS5_EE19EmplaceDecomposableEJRKS5_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_: argument 0"}
!31 = distinct !{!31, i1 false, !"_ZN4absl18container_internal14DecomposeValueINS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS7_vE4HashENSA_2EqESaIS7_EE19EmplaceDecomposableERKS7_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_"}
!32 = distinct !{!32, !31, !"_ZN4absl18container_internal14DecomposeValueINS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS7_vE4HashENSA_2EqESaIS7_EE19EmplaceDecomposableERKS7_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_: argument 0"}
!33 = distinct !{!33, i1 false, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE19EmplaceDecomposableclIS6_JRKS6_EEESt4pairINSD_8iteratorEbERKT_DpOT0_"}
!34 = distinct !{!34, !33, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE19EmplaceDecomposableclIS6_JRKS6_EEESt4pairINSD_8iteratorEbERKT_DpOT0_: argument 0"}
!35 = distinct !{!35, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_"}
!36 = distinct !{!36, !35, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_: argument 0"}
!37 = distinct !{!37, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE28find_or_prepare_insert_smallIS6_EESt4pairINSD_8iteratorEbERKT_"}
!38 = distinct !{!38, !37, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE28find_or_prepare_insert_smallIS6_EESt4pairINSD_8iteratorEbERKT_: argument 0"}
!39 = distinct !{!39, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE26find_or_prepare_insert_sooIS6_EESt4pairINSD_8iteratorEbERKT_"}
!40 = distinct !{!40, !39, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE26find_or_prepare_insert_sooIS6_EESt4pairINSD_8iteratorEbERKT_: argument 0"}
!41 = distinct !{!41, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE28find_or_prepare_insert_largeIS6_EESt4pairINSD_8iteratorEbERKT_"}
!42 = distinct !{!42, !41, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE28find_or_prepare_insert_largeIS6_EESt4pairINSD_8iteratorEbERKT_: argument 0"}
!43 = !{!36, !34, !32, !30, !28, !26, !24}
!44 = !{!40, !38, !36, !34, !32, !30, !28, !26, !24}
!45 = !{!34, !32, !30, !28, !26, !24}
!46 = !{!42}
!47 = distinct !{!47, !9}
!48 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!49 = distinct !{!49, !9}
!50 = distinct !{null, null, null}
!51 = distinct !{!51, !9}
!52 = !{i64 8}
end_hunk_0
