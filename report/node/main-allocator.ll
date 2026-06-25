inline.NumInlined: 809
inline.NumDeleted: 426
begin_hunk_0_@_ZNK2v88internal13MainAllocator15in_gc_for_spaceEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal15AllocatorPolicyC2EPNS0_13MainAllocatorE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal15AllocatorPolicyE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal15AllocatorPolicy10space_heapEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal15AllocatorPolicy12isolate_heapEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal32SemiSpaceNewSpaceAllocatorPolicy16EnsureAllocationEiNS0_19AllocationAlignmentENS0_16AllocationOriginE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i8 noundef zeroext %2, i32 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional.641", align 16 ; 8 uses
  %5 = alloca %"class.std::optional.641", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp ne ptr %i.c, null                   ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #18
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ %i.g, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit ], [ undef, %bb.a ] ; 2 uses
  tail call void @_ZN2v88internal32SemiSpaceNewSpaceAllocatorPolicy38FreeLinearAllocationAreaUnsynchronizedEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8
  call void @_ZN2v88internal17SemiSpaceNewSpace8AllocateEiNS0_19AllocationAlignmentE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.641") align 8 %4, ptr noundef nonnull align 8 dereferenceable(432) %i.i, i32 noundef %1, i8 noundef zeroext %2) #18
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.k = load i8, ptr %i.j, align 16, !range !6, !noundef !7
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.q = load i64, ptr %i.p, align 8
  %.not45 = icmp ult i64 %i.o, %i.q
  br i1 %.not45, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 @_ZN2v88internal4Heap43ShouldExpandYoungGenerationOnSlowAllocationEm(ptr noundef nonnull align 8 dereferenceable(2992) %i.s, i64 noundef 262144) #18
  br i1 %i.t, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.u = load ptr, ptr %i.h, align 8
  call void @_ZN2v88internal17SemiSpaceNewSpace31AllocateOnNewPageBeyondCapacityEiNS0_19AllocationAlignmentE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.641") align 8 %5, ptr noundef nonnull align 8 dereferenceable(432) %i.u, i32 noundef %1, i8 noundef zeroext %2) #18
  %i.v = load i8, ptr %i.j, align 16, !range !6, !noundef !7
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = load i8, ptr %i.x, align 16, !range !6
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %or.cond.i.i.i.i = select i1 %i.w, i1 %i.z, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load <2 x i64>, ptr %5, align 16
  store <2 x i64> %i.aa, ptr %4, align 16
  br label %_ZNSt8optionalISt4pairImmEEaSEOS2_.exit.thread

bb.g:                                             ; preds = %bb.e
  br i1 %i.z, label %bb.h, label %_ZNSt8optionalISt4pairImmEEaSEOS2_.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 16, i1 false)
  store i8 1, ptr %i.j, align 16
  br label %_ZNSt8optionalISt4pairImmEEaSEOS2_.exit.thread

_ZNSt8optionalISt4pairImmEEaSEOS2_.exit.thread:   ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.i

_ZNSt8optionalISt4pairImmEEaSEOS2_.exit:          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.u

bb.i:                                             ; preds = %_ZNSt8optionalISt4pairImmEEaSEOS2_.exit.thread, %bb.b
  %i.ab = load i64, ptr %4, align 16              ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i64, ptr %i.ac, align 8            ; 7 uses
  %i.ae = call noundef i32 @_ZN2v88internal4Heap14GetFillToAlignEmNS0_19AllocationAlignmentE(i64 noundef %i.ab, i8 noundef zeroext %2) #18
  %i.af = add nsw i32 %i.ae, %1                   ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8             ; 10 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.speculated28 = call i32 @llvm.smax.i32(i32 %i.af, i32 32768)
  %i.aj = zext nneg i32 %.sroa.speculated28 to i64
  %i.ak = add i64 %i.ab, %i.aj
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.ad)
  br label %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.al = sext i32 %i.af to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.an = load i8, ptr %i.am, align 8, !range !6, !noundef !7
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread.thread

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2792
  %i.as = load i8, ptr %i.ar, align 8, !range !6, !noundef !7
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = add i64 %i.ab, %i.al
  br label %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit

bb.n:                                             ; preds = %bb.l
  %i.av = sub i64 %i.ad, %i.ab                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 2796
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZNK2v88internal13MainAllocator18allocation_counterEv.exit.i, label %bb.o

_ZNK2v88internal13MainAllocator18allocation_counterEv.exit.i: ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = xor i64 %i.bh, -1
  %i.bj = add i64 %i.bf, %i.bi
  %i.bk = select i1 %i.bd, i64 4294967288, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = icmp eq i32 %i.bo, 3
  %..i.neg.i = select i1 %i.bp, i64 4294967232, i64 4294967288
  %i.bq = and i64 %..i.neg.i, %i.bk
  %sext.i = shl nuw i64 %i.bq, 32
  %i.br = ashr exact i64 %sext.i, 32
  %.sroa.speculated12.i = call i64 @llvm.umin.i64(i64 %i.br, i64 %i.av)
  br label %bb.o

bb.o:                                             ; preds = %_ZNK2v88internal13MainAllocator18allocation_counterEv.exit.i, %bb.n
  %.028.i = phi i64 [ %.sroa.speculated12.i, %_ZNK2v88internal13MainAllocator18allocation_counterEv.exit.i ], [ %i.av, %bb.n ] ; 2 uses
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1248), align 32
  %.not.i = icmp eq i32 %i.bs, 0
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.028.i, i64 64)
  %.1.i = select i1 %.not.i, i64 %.028.i, i64 %.sroa.speculated.i
  %.sroa.speculated18.i = call i64 @llvm.umax.i64(i64 %.1.i, i64 %i.al)
  %i.bt = add i64 %.sroa.speculated18.i, %i.ab
  br label %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit

_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit: ; preds = %bb.o, %bb.m
  %.019 = phi i64 [ %i.au, %bb.m ], [ %i.bt, %bb.o ] ; 2 uses
  %.not46 = icmp ugt i64 %.019, %i.ad
  br i1 %.not46, label %bb.p, label %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread, !prof !14

bb.p:                                             ; preds = %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #19
  unreachable

_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread: ; preds = %bb.j, %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit
  %.01940 = phi i64 [ %.019, %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit ], [ %.sroa.speculated, %bb.j ] ; 3 uses
  %.not = icmp eq i64 %.01940, %i.ad
  br i1 %.not, label %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread
  %i.bu = load ptr, ptr %i.h, align 8
  call void @_ZN2v88internal17SemiSpaceNewSpace4FreeEmm(ptr noundef nonnull align 8 dereferenceable(432) %i.bu, i64 noundef %.01940, i64 noundef %i.ad) #18
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread.thread

_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread.thread: ; preds = %bb.k, %bb.q, %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread
  %i.bv = phi ptr [ %i.ag, %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread ], [ %.pre, %bb.q ], [ %i.ag, %bb.k ] ; 7 uses
  %.0194043 = phi i64 [ %i.ad, %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread ], [ %.01940, %bb.q ], [ %i.ad, %bb.k ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 160 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %.not17.i = icmp eq i64 %i.bz, 0
  br i1 %.not17.i, label %_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread.thread
  %i.ca = add i64 %i.bz, -1
  %i.cb = and i64 %i.ca, -262144
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = and i64 %i.cg, -262144
  %i.ci = sub i64 %i.bz, %i.ch                    ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  %i.ck = load atomic i64, ptr %i.cj monotonic, align 8 ; 2 uses
  %.old8.i.i = icmp sgt i64 %i.ci, %i.ck
  br i1 %.old8.i.i, label %.preheader.i, label %_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %.0.i23 = phi i64 [ %i.cn, %.preheader.i ], [ %i.ck, %bb.r ]
  %i.cl = cmpxchg weak ptr %i.cj, i64 %.0.i23, i64 %i.ci acq_rel acquire, align 8 ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  %i.cn = extractvalue { i64, i1 } %i.cl, 0       ; 2 uses
  %i.co = icmp sle i64 %i.ci, %i.cn
  %or.cond.not.i = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond.not.i, label %_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i, label %.preheader.i, !llvm.loop !11

_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i: ; preds = %.preheader.i, %bb.r, %_ZNK2v88internal13MainAllocator12ComputeLimitEmmm.exit.thread.thread
  %i.cp = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i22 = icmp eq ptr %i.cp, null
  br i1 %.not.i22, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = sub i64 %.0194043, %i.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2984
  %i.ct = atomicrmw add ptr %i.cs, i64 %i.cr monotonic, align 8 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i
  %i.cu = load ptr, ptr %i.bw, align 8            ; 3 uses
  store i64 %i.ab, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.ab, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %.0194043, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 192
  store i64 %.0194043, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %i.cz = load i8, ptr %i.cy, align 8, !range !6, !noundef !7
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %_ZN2v88internal13MainAllocator25linear_area_original_dataEv.exit.i, label %_ZN2v88internal13MainAllocator8ResetLabEmmm.exit

_ZN2v88internal13MainAllocator25linear_area_original_dataEv.exit.i: ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.bv, i64 200
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 216 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) #18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 208
  store atomic i64 %.0194043, ptr %i.dd monotonic, align 8
  %i.de = atomicrmw xchg ptr %i.db, i64 %i.ab acq_rel, align 8 ; 0 uses
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) #18
  br label %_ZN2v88internal13MainAllocator8ResetLabEmmm.exit

_ZN2v88internal13MainAllocator8ResetLabEmmm.exit: ; preds = %bb.t, %_ZN2v88internal13MainAllocator25linear_area_original_dataEv.exit.i
  %i.df = load ptr, ptr %i.h, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = load ptr, ptr %i.a, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 160
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dn = load i64, ptr %i.dm, align 8
  call void @_ZN2v88internal9SemiSpace27AddRangeToActiveSystemPagesEmm(ptr noundef nonnull align 8 dereferenceable(128) %i.dg, i64 noundef %i.dl, i64 noundef %i.dn) #18
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt8optionalISt4pairImmEEaSEOS2_.exit, %bb.d, %bb.c, %_ZN2v88internal13MainAllocator8ResetLabEmmm.exit
  %.0 = phi i1 [ true, %_ZN2v88internal13MainAllocator8ResetLabEmmm.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %_ZNSt8optionalISt4pairImmEEaSEOS2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not.i.i.i.i.i24 = icmp eq ptr %.sroa.0.0, null
  %or.cond = or i1 %i.d, %.not.i.i.i.i.i24
  br i1 %or.cond, label %_ZNSt14_Optional_baseIN2v84base9LockGuardINS1_5MutexEEELb0ELb0EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0) #18
  br label %_ZNSt14_Optional_baseIN2v84base9LockGuardINS1_5MutexEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v84base9LockGuardINS1_5MutexEEELb0ELb0EED2Ev.exit: ; preds = %bb.u, %bb.v
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal32SemiSpaceNewSpaceAllocatorPolicy38FreeLinearAllocationAreaUnsynchronizedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 6 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.j = load i8, ptr %i.i, align 8, !range !6, !noundef !7
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.d, align 8              ; 2 uses
  %.not1.i = icmp eq i64 %i.l, %i.f
  br i1 %.not1.i, label %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2796
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN2v88internal13MainAllocator18allocation_counterEv.exit.i, label %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit

_ZN2v88internal13MainAllocator18allocation_counterEv.exit.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = sub i64 %i.f, %i.l
  tail call void @_ZN2v88internal17AllocationCounter26AdvanceAllocationObserversEm(ptr noundef nonnull align 8 dereferenceable(128) %i.r, i64 noundef %i.s) #18
  %.pre.i = load ptr, ptr %i.c, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre2.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit

_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit.thread: ; preds = %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  br label %bb.e

_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit: ; preds = %bb.d, %_ZN2v88internal13MainAllocator18allocation_counterEv.exit.i
  %i.u = phi i64 [ %.pre2.i, %_ZN2v88internal13MainAllocator18allocation_counterEv.exit.i ], [ %i.f, %bb.d ]
  %i.v = phi ptr [ %.pre.i, %_ZN2v88internal13MainAllocator18allocation_counterEv.exit.i ], [ %i.d, %bb.d ]
  store i64 %i.u, ptr %i.v, align 8
  %.pre = load ptr, ptr %i.a, align 8             ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 160
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %.pre3, i64 8
  %.pre5 = load i64, ptr %.phi.trans.insert4, align 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 160 ; 2 uses
  %.not17.i = icmp eq i64 %.pre5, 0
  br i1 %.not17.i, label %_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit.thread, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit
  %i.x = phi ptr [ %i.t, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit.thread ], [ %i.w, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit ] ; 2 uses
  %i.y = phi ptr [ %i.b, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit.thread ], [ %.pre, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit ] ; 2 uses
  %i.z = phi i64 [ %i.f, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit.thread ], [ %.pre5, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit ] ; 2 uses
  %i.aa = add i64 %i.z, -1
  %i.ab = and i64 %i.aa, -262144
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, -262144
  %i.ai = sub i64 %i.z, %i.ah                     ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %i.ak = load atomic i64, ptr %i.aj monotonic, align 8 ; 2 uses
  %.old8.i.i = icmp sgt i64 %i.ai, %i.ak
  br i1 %.old8.i.i, label %.preheader.i, label %_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.0.i = phi i64 [ %i.an, %.preheader.i ], [ %i.ak, %bb.e ]
  %i.al = cmpxchg weak ptr %i.aj, i64 %.0.i, i64 %i.ai acq_rel acquire, align 8 ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0       ; 2 uses
  %i.ao = icmp sle i64 %i.ai, %i.an
  %or.cond.not.i = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %or.cond.not.i, label %_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i, label %.preheader.i, !llvm.loop !11

_ZN2v88internal19MemoryChunkMetadata19UpdateHighWaterMarkEm.exit.i: ; preds = %.preheader.i, %bb.e, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit
  %i.ap = phi ptr [ %i.w, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit ], [ %i.x, %bb.e ], [ %i.x, %.preheader.i ]
  %i.aq = phi ptr [ %.pre, %_ZN2v88internal13MainAllocator26AdvanceAllocationObserversEv.exit ], [ %i.y, %bb.e ], [ %i.y, %.preheader.i ] ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i2 = icmp eq ptr %i.ar, null
  br i1 %.not.i2, label %bb.g, label %bb.f

end_hunk_0
begin_hunk_1_@_ZNSt22_Optional_payload_baseIN2v88internal17AllocationCounterEE10_M_destroyEv:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2v88internal17AllocationCounter25AllocationObserverCounterESaIS3_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt13unordered_setIPN2v88internal18AllocationObserverESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZNSt6vectorIN2v88internal17AllocationCounter25AllocationObserverCounterESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN2v88internal17AllocationCounter25AllocationObserverCounterESaIS3_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt13unordered_setIPN2v88internal18AllocationObserverESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev.exit.i
  %i.v = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i, label %_ZN2v88internal17AllocationCounterD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2v88internal17AllocationCounter25AllocationObserverCounterESaIS3_EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #22
  br label %_ZN2v88internal17AllocationCounterD2Ev.exit

_ZN2v88internal17AllocationCounterD2Ev.exit:      ; preds = %_ZNSt6vectorIN2v88internal17AllocationCounter25AllocationObserverCounterESaIS3_EED2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare i64 @_ZN2v88internal4Heap17PrecedeWithFillerENS0_6TaggedINS0_10HeapObjectEEEi(ptr noundef nonnull align 8 dereferenceable(2992), i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #14 comdat {
bb.a:
  tail call void @abort() #19
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #15

declare noundef zeroext i1 @_ZN2v88internal4Heap28ShouldOptimizeForMemoryUsageEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare noundef i32 @_ZN2v88internal8ThreadId18GetCurrentThreadIdEv() local_unnamed_addr #3

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal8GCTracer5Scope15NeedsYoungEpochENS2_7ScopeIdE(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 144, label %bb.c
    i32 147, label %bb.c
    i32 7, label %bb.c
    i32 92, label %bb.c
    i32 93, label %bb.c
    i32 94, label %bb.c
    i32 95, label %bb.c
    i32 96, label %bb.c
    i32 97, label %bb.c
    i32 98, label %bb.c
    i32 99, label %bb.c
    i32 100, label %bb.c
    i32 101, label %bb.c
    i32 102, label %bb.c
    i32 103, label %bb.c
    i32 104, label %bb.c
    i32 105, label %bb.c
    i32 106, label %bb.c
    i32 107, label %bb.c
    i32 108, label %bb.c
    i32 109, label %bb.c
    i32 110, label %bb.c
    i32 111, label %bb.c
    i32 112, label %bb.c
    i32 113, label %bb.c
    i32 114, label %bb.c
    i32 115, label %bb.c
    i32 116, label %bb.c
    i32 117, label %bb.c
    i32 118, label %bb.c
    i32 119, label %bb.c
    i32 120, label %bb.c
    i32 156, label %bb.c
    i32 157, label %bb.c
    i32 158, label %bb.c
    i32 122, label %bb.c
    i32 123, label %bb.c
    i32 124, label %bb.c
    i32 125, label %bb.c
    i32 126, label %bb.c
    i32 127, label %bb.c
    i32 128, label %bb.c
    i32 129, label %bb.c
    i32 130, label %bb.c
    i32 131, label %bb.c
    i32 132, label %bb.c
    i32 133, label %bb.c
    i32 134, label %bb.c
    i32 135, label %bb.c
    i32 136, label %bb.c
    i32 137, label %bb.c
    i32 138, label %bb.c
    i32 139, label %bb.c
    i32 140, label %bb.c
    i32 159, label %bb.c
    i32 160, label %bb.c
    i32 161, label %bb.c
    i32 162, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef ptr @_ZN2v88internal7Isolate23GetCurrentLongTaskStatsEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #3

declare noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v88internal4Heap30CreateFillerObjectAtBackgroundERKNS0_17WritableFreeSpaceE(ptr noundef nonnull align 8 dereferenceable(2992), ptr noundef nonnull align 8 dereferenceable(13)) local_unnamed_addr #3

declare void @_ZN2v88internal15ThreadIsolation13LookupJitPageEmm(ptr dead_on_unwind writable sret(%"class.v8::internal::ThreadIsolation::JitPageReference") align 8, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal15ThreadIsolation16JitPageReference15UnregisterRangeEmm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!9 = !{ptr @_ZN2v88internal13MainAllocator16EnsureAllocationEiNS0_19AllocationAlignmentENS0_16AllocationOriginE}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{ptr @_ZN2v88internal13MainAllocator24FreeLinearAllocationAreaEv}
!14 = !{!"branch_weights", !"expected", i32 3434256, i32 2144049392}
!15 = distinct !{null, null}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN2v88internal15WritableJitPage9FreeRangeEmm: argument 0"}
!18 = distinct !{!18, !"_ZN2v88internal15WritableJitPage9FreeRangeEmm"}
!19 = distinct !{null}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN2v88internal15WritableJitPage9FreeRangeEmm: argument 0"}
!22 = distinct !{!22, !"_ZN2v88internal15WritableJitPage9FreeRangeEmm"}
!23 = distinct !{!23, !12}
!24 = distinct !{null}
!25 = distinct !{null, null}
!26 = distinct !{null}
!27 = distinct !{!27, !12}
end_hunk_1
