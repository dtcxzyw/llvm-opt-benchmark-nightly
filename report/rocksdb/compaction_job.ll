Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_job?download=true
inline.NumInlined: 6887
inline.NumDeleted: 3271
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb9StopWatchD2Ev:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ar = phi i64 [ %i.aq, %bb.j ], [ %i.ac, %bb.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !465 ; 2 uses
  %.not7 = icmp eq i32 %i.at, 80
  br i1 %.not7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !464 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(33) %i.av, i32 noundef %i.at, i64 noundef %i.ar)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !466 ; 2 uses
  %.not8 = icmp eq i32 %i.ba, 80
  br i1 %.not8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !464 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(33) %i.bc, i32 noundef %i.ba, i64 noundef %i.ar)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.thread12, %bb.m, %bb.n, %bb.i
  ret void

bb.p:                                             ; preds = %bb.n, %bb.l, %.thread15, %bb.e, %bb.c
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13CompactionJob38MaybeAssignCompactionProgressAndWriterERKSt6vectorINS_21SubcompactionProgressESaIS2_EEPNS_3log6WriterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1896) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !473
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !474  ; 7 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not = icmp eq i64 %i.i, 8456
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !482    ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !482
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 1520
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(6936) %i.n, ptr noundef nonnull align 8 dereferenceable(6936) %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1552
  %i.q = load <2 x i64>, ptr %i.o, align 8, !tbaa !371
  store <2 x i64> %i.q, ptr %i.p, align 8, !tbaa !371
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 1568
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.t = tail call noundef nonnull align 8 dereferenceable(3432) ptr @_ZN7rocksdb10autovectorINS_12FileMetaDataELm8EE6assignERKS2_(ptr noundef nonnull align 8 dereferenceable(3432) %i.r, ptr noundef nonnull align 8 dereferenceable(3432) %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3480
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 5000
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !371
  store <2 x i64> %i.w, ptr %i.v, align 8, !tbaa !371
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 5016
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 3496
  %i.z = tail call noundef nonnull align 8 dereferenceable(3432) ptr @_ZN7rocksdb10autovectorINS_12FileMetaDataELm8EE6assignERKS2_(ptr noundef nonnull align 8 dereferenceable(3432) %i.x, ptr noundef nonnull align 8 dereferenceable(3432) %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 6928
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !484
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8448
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !484
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store ptr %2, ptr %i.ad, align 8, !tbaa !485
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @_ZN7rocksdb11ReadOptionsC1ENS_3Env10IOActivityE(ptr noundef nonnull align 8 dereferenceable(192), i8 noundef zeroext) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(97) ptr @_ZN7rocksdb18SeqnoToTimeMapping14SetMaxTimeSpanEm(ptr noundef nonnull align 8 dereferenceable(97), i64 noundef) local_unnamed_addr #8

declare void @_ZNK7rocksdb7Version18GetTablePropertiesERKNS_11ReadOptionsEPSt10shared_ptrIKNS_15TablePropertiesEEPKNS_12FileMetaDataEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 16 dereferenceable(5369), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN7rocksdb18SeqnoToTimeMapping10DecodeFromERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #8

declare void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(97) ptr @_ZN7rocksdb18SeqnoToTimeMapping7EnforceEm(ptr noundef nonnull align 8 dereferenceable(97), i64 noundef) local_unnamed_addr #8

declare void @_ZNK7rocksdb18SeqnoToTimeMapping29GetCurrentTieringCutoffSeqnosEmmmPmS1_(ptr noundef nonnull align 8 dereferenceable(97), i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(97) ptr @_ZN7rocksdb18SeqnoToTimeMapping11SetCapacityEm(ptr noundef nonnull align 8 dereferenceable(97), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN7rocksdb31AutoThreadOperationStageUpdaterD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -2147483647, 6442450943) i64 @_ZN7rocksdb13CompactionJob22GetSubcompactionsLimitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1896) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.b = load i32, ptr %i.a, align 8, !tbaa !380
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !564
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %.sroa.speculated = zext i32 %i.i to i64
  %i.j = add nsw i64 %.sroa.speculated, %i.c
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13CompactionJob29AcquireSubcompactionResourcesEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1896) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.c = load i32, ptr %i.b, align 8, !tbaa !651
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.e = load i32, ptr %i.d, align 4, !tbaa !652
  %i.f = load i32, ptr %i.a, align 8, !tbaa !653
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !362
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !545
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 520
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !546  ; 3 uses
  %i.m = tail call noundef zeroext i1 @_ZNK7rocksdb15WriteController9IsStoppedEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  br i1 %i.m, label %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load atomic i32, ptr %i.q seq_cst, align 4
  %i.s = icmp sgt i32 %i.r, 0
  br label %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit

_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.s, %bb.c ]
  %i.u = tail call i64 @_ZN7rocksdb6DBImpl14GetBGJobLimitsEiiib(i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.f, i1 noundef zeroext %i.t)
  %.sroa.3.0.extract.shift = lshr i64 %i.u, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !368  ; 3 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !381
  %i.z = load i32, ptr %i.y, align 4, !tbaa !323
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !382
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !323
  %i.ad = add i32 %i.z, %i.ac
  %i.ae = sub i32 %.sroa.3.0.extract.trunc, %i.ad
  %.sroa.speculated8 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !338 ; 2 uses
  %.sroa.speculated14 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated8, i32 %1)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !647
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 2)
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 408
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i32 noundef %.sroa.speculated14, i32 noundef %.sroa.speculated)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1736
  store i32 %i.am, ptr %i.an, align 8, !tbaa !380
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !378
  %i.ap = icmp eq i32 %i.ao, 0
  %.val = load ptr, ptr %i.aa, align 8
  %.sink.a = load ptr, ptr %i.x, align 8
  %.sink = select i1 %i.ap, ptr %.val, ptr %.sink.a ; 2 uses
  %i.aq = load i32, ptr %.sink, align 4, !tbaa !323
  %i.ar = add nsw i32 %i.aq, %i.am
  store i32 %i.ar, ptr %.sink, align 4, !tbaa !323
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.w)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit5 unwind label %bb.g

bb.e:                                             ; preds = %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.w)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #38
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit:      ; preds = %bb.e
  resume { ptr, i32 } %i.as

bb.g:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #38
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit5:     ; preds = %bb.d
  ret void
}

declare i64 @_ZN7rocksdb6DBImpl14GetBGJobLimitsEiiib(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13CompactionJob28ShrinkSubcompactionResourcesEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1896) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !368
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !338  ; 2 uses
  %i.f = trunc i64 %1 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !647
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.h, i32 2)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i32 noundef %i.f, i32 noundef %.sroa.speculated) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !380
  %i.o = sub nsw i32 %i.n, %i.l
  store i32 %i.o, ptr %i.m, align 8, !tbaa !380
  %i.p = load i32, ptr %i.g, align 8, !tbaa !378
  %i.q = icmp eq i32 %i.p, 0
  %. = select i1 %i.q, i64 1752, i64 1744
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !649  ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !323
  %i.u = sub nsw i32 %i.t, %i.l
  store i32 %i.u, ptr %i.s, align 4, !tbaa !323
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !368
  tail call void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.v)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13CompactionJob29ReleaseSubcompactionResourcesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1896) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !380
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN7rocksdb13CompactionJob28ShrinkSubcompactionResourcesEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !368  ; 2 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.e)
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.e)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #38
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit:      ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 8, !tbaa !380  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN7rocksdb13CompactionJob28ShrinkSubcompactionResourcesEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !368
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !338  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !647
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 2)
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 416
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(72) %i.l, i32 noundef %i.h, i32 noundef %.sroa.speculated.i), !inline_history !648 ; 2 uses
  %i.s = load i32, ptr %i.a, align 8, !tbaa !380
  %i.t = sub nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.a, align 8, !tbaa !380
  %i.u = load i32, ptr %i.m, align 8, !tbaa !378
  %i.v = icmp eq i32 %i.u, 0
  %..i = select i1 %i.v, i64 1752, i64 1744
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !649  ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !323
  %i.z = sub nsw i32 %i.y, %i.r
  store i32 %i.z, ptr %i.x, align 4, !tbaa !323
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !368
  tail call void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.aa)
  br label %_ZN7rocksdb13CompactionJob28ShrinkSubcompactionResourcesEm.exit

_ZN7rocksdb13CompactionJob28ShrinkSubcompactionResourcesEm.exit: ; preds = %bb.d, %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 4) i32 @_ZN7rocksdb13CompactionJob22GetRateLimiterPriorityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1896) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !545  ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !546  ; 3 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZNK7rocksdb15WriteController9IsStoppedEv(ptr noundef nonnull align 8 dereferenceable(56) %i.f)
  br i1 %i.j, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 3, %bb.e ], [ 3, %bb.d ]
  ret i32 %.1
}

declare void @_ZN7rocksdb10TableCache21ApproximateKeyAnchorsERKNS_11ReadOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataERKNS_16MutableCFOptionsERSt6vectorINS_11TableReader6AnchorESaISF_EE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(417), ptr noundef nonnull align 8 dereferenceable(736), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb11TableReader6AnchorESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !637    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !633  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7rocksdb11TableReader6AnchorES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb11TableReader6AnchorEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN7rocksdb11TableReader6AnchorEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN7rocksdb11TableReader6AnchorEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #34
  br label %_ZSt8_DestroyIN7rocksdb11TableReader6AnchorEEvPT_.exit.i.i

_ZSt8_DestroyIN7rocksdb11TableReader6AnchorEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7rocksdb11TableReader6AnchorES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !638

_ZSt8_DestroyIPN7rocksdb11TableReader6AnchorES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7rocksdb11TableReader6AnchorEEvPT_.exit.i.i
end_hunk_0
