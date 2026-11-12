Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/scope-info?download=true
inline.NumInlined: 2264
inline.NumDeleted: 671
begin_hunk_0_@_ZNK2v88internal9ScopeInfo6EqualsENS0_6TaggedIS1_EEbPi:bb.a
  %.not10.i = icmp ult i64 %.not10.unshifted.i, 4294967296
  br i1 %.not10.i, label %bb.v, label %.critedge73

bb.v:                                             ; preds = %bb.u
  %i.dx = load atomic volatile i64, ptr %i.dp monotonic, align 8
  %.not27.i = icmp ult i64 %i.dx, 4294967296
  br i1 %.not27.i, label %.critedge5, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.v
  %i.dy = getelementptr i8, ptr %i.ab, i64 40
  %i.dz = getelementptr i8, ptr %i.ah, i64 40
  br label %.split.i

.split.i:                                         ; preds = %.split.i.preheader, %bb.w
  %i.ea = load atomic volatile i64, ptr %i.dy monotonic, align 8
  %i.eb = load atomic volatile i64, ptr %i.dz monotonic, align 8
  %.not28.i = icmp eq i64 %i.ea, %i.eb
  br i1 %.not28.i, label %bb.w, label %.critedge73

bb.w:                                             ; preds = %.split.i
  %i.ec = tail call i64 @_ZN2v88internal20NameToIndexHashTable7ValueAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 0) #17
  %i.ed = tail call i64 @_ZN2v88internal20NameToIndexHashTable7ValueAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 0) #17
  %.not29.i = icmp eq i64 %i.ec, %i.ed
  br i1 %.not29.i, label %.split.i, label %.critedge73, !llvm.loop !152

_ZN2v88internal22IsNameToIndexHashTableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal22IsNameToIndexHashTableENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18
  unreachable

.critedge5:                                       ; preds = %bb.i, %bb.g, %.critedge, %bb.m, %bb.s, %_ZN2v88internal15IsDependentCodeENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal20SourceTextModuleInfo6EqualsENS0_6TaggedIS1_EE.exit, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, %bb.n, %bb.v, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ee = tail call noundef i32 @_ZNK2v88internal9ScopeInfo6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ef = sext i32 %i.ee to i64
  %.not225 = icmp slt i64 %indvars.iv.next, %i.ef
  br i1 %.not225, label %.peel.next, label %.critedge73, !llvm.loop !153

.critedge73:                                      ; preds = %bb.t, %bb.u, %bb.o, %bb.p, %bb.q, %bb.r, %bb.k, %bb.s, %bb.g, %bb.h, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, %bb.m, %_ZNK2v88internal20SourceTextModuleInfo6EqualsENS0_6TaggedIS1_EE.exit, %.critedge5, %bb.w, %.split.i, %.critedge5.peel, %.preheader, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.critedge5.peel ], [ true, %.preheader ], [ false, %bb.w ], [ false, %.split.i ], [ false, %bb.u ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.k ], [ false, %bb.s ], [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit ], [ true, %.critedge5 ], [ false, %bb.m ], [ false, %_ZNK2v88internal20SourceTextModuleInfo6EqualsENS0_6TaggedIS1_EE.exit ], [ false, %bb.t ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -268435456, 268435455) i32 @_ZNK2v88internal9ScopeInfo6lengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 !guid !180 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !181
  %i.d = add i64 %.sroa.0.0.copyload.i, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !noalias !182 ; 3 uses
  %i.g = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !183
  %i.h = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !184
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !185
  %i.j = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !186
  %i.k = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !187
  %i.l = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !188
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !189
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %.sroa.0.0.copyload.i, 47
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8, !noalias !188
  %i.u = ashr i64 %i.t, 32
  %i.v = mul nsw i64 %i.u, 24
  br label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18, !noalias !188
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv.exit: ; preds = %bb.a, %bb.c
  %storemerge.i.i.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.a ]
  %i.w = and i32 %i.k, 15
  %i.x = icmp eq i32 %i.w, 5
  %i.y = select i1 %i.x, i64 8, i64 0
  %i.z = icmp sgt i64 %i.f, 322122547199
  %i.aa = select i1 %i.z, i64 8, i64 0
  %i.ab = and i32 %i.c, 15
  %i.ac = icmp eq i32 %i.ab, 5
  %i.ad = select i1 %i.ac, i64 56, i64 48
  %i.ae = add nuw nsw i64 %i.aa, %i.ad
  %i.af = ashr i64 %i.f, 29
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = add nsw i64 %i.ae, %i.ag
  %i.ai = icmp slt i64 %i.f, 322122547200
  %i.aj = select i1 %i.ai, i64 %i.ag, i64 0
  %i.ak = add nsw i64 %i.ah, %i.aj
  %i.al = lshr i32 %i.g, 7
  %i.am = and i32 %i.al, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.ak, %i.an
  %i.ap = and i32 %i.h, 12288
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not.i.not.i.i.i.i.i.i, i64 0, i64 16
  %i.ar = add nsw i64 %i.ao, %i.aq
  %i.as = lshr i32 %i.i, 11
  %i.at = and i32 %i.as, 8
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add nsw i64 %i.ar, %i.au
  %i.aw = lshr i32 %i.j, 19
  %i.ax = and i32 %i.aw, 8
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = add nsw i64 %i.av, %i.ay
  %i.ba = add nsw i64 %i.az, %i.y
  %i.bb = add nsw i64 %i.ba, %storemerge.i.i.i
  %i.bc = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !190
  %i.bd = trunc i64 %i.bb to i32
  %i.be = lshr i32 %i.bc, 1
  %i.bf = and i32 %i.be, 8
  %i.bg = add i32 %i.bd, -8
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = sdiv i32 %i.bh, 8
  ret i32 %i.bi
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo18CreateForWithScopeEPNS0_7IsolateENS0_17MaybeDirectHandleIS1_EE(ptr noundef nonnull %0, ptr nofree readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 !guid !191 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 3 uses
  %i.a = select i1 %.not, i32 5, i32 6
  %i.b = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.a, i8 noundef zeroext 1) #17 ; 7 uses
  %i.c = select i1 %.not, i32 67174408, i32 71368712
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 7
  %i.f = inttoptr i64 %i.e to ptr
  store atomic volatile i32 %i.c, ptr %i.f monotonic, align 4
  %i.g = load i64, ptr %i.b, align 8
  %i.h = add i64 %i.g, 15
  %i.i = inttoptr i64 %i.h to ptr
  store atomic volatile i64 0, ptr %i.i monotonic, align 8
  %i.j = load i64, ptr %i.b, align 8
  %i.k = add i64 %i.j, 23
  %i.l = inttoptr i64 %i.k to ptr
  store atomic volatile i64 0, ptr %i.l monotonic, align 8
  %i.m = load i64, ptr %i.b, align 8
  %i.n = add i64 %i.m, 31
  %i.o = inttoptr i64 %i.n to ptr
  store atomic volatile i64 0, ptr %i.o monotonic, align 8
  %i.p = load i64, ptr %i.b, align 8
  %i.q = add i64 %i.p, 39
  %i.r = inttoptr i64 %i.q to ptr
  store atomic volatile i64 0, ptr %i.r monotonic, align 8
  br i1 %.not, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %_ZNK2v88internal11MaybeHandleINS0_9ScopeInfoEE5CheckEv.exit

_ZNK2v88internal11MaybeHandleINS0_9ScopeInfoEE5CheckEv.exit: ; preds = %bb.a
  %i.s = load i64, ptr %1, align 8                ; 5 uses
  %i.t = load i64, ptr %i.b, align 8              ; 4 uses
  %i.u = add i64 %i.t, 47                         ; 3 uses
  %i.v = inttoptr i64 %i.u to ptr
  store atomic volatile i64 %i.s, ptr %i.v monotonic, align 8
  %i.w = trunc i64 %i.s to i1
  br i1 %i.w, label %bb.b, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_9ScopeInfoEE5CheckEv.exit
  %i.x = and i64 %i.t, -262144
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 262144         ; 2 uses
  %i.aa = and i64 %i.z, 32
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.z, 25
  %.not37.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not37.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = and i64 %i.s, -262144
  %i.ad = inttoptr i64 %i.ac to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 262144
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not38.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.t, i64 noundef %i.u, i64 %i.s) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.t, i64 %i.u, i64 %i.s) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.f, %bb.e, %_ZNK2v88internal11MaybeHandleINS0_9ScopeInfoEE5CheckEv.exit, %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo23CreateGlobalThisBindingEPNS0_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 !guid !192 {
  %2 = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 7, i8 noundef zeroext 4) #17 ; 2 uses
  %3 = load i64, ptr %2, align 8                  ; 10 uses
  %4 = add i64 %3, 7
  %5 = inttoptr i64 %4 to ptr
  store atomic volatile i32 65856, ptr %5 monotonic, align 4
  %6 = add i64 %3, 15
  %7 = inttoptr i64 %6 to ptr
  store atomic volatile i64 0, ptr %7 monotonic, align 8
  %8 = add i64 %3, 23
  %9 = inttoptr i64 %8 to ptr
  store atomic volatile i64 4294967296, ptr %9 monotonic, align 8
  %10 = add i64 %3, 31
  %11 = inttoptr i64 %10 to ptr
  store atomic volatile i64 0, ptr %11 monotonic, align 8
  %12 = add i64 %3, 39
  %13 = inttoptr i64 %12 to ptr
  store atomic volatile i64 0, ptr %13 monotonic, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 7568
  %15 = load i64, ptr %14, align 8                ; 5 uses
  %16 = add i64 %3, 47                            ; 3 uses
  %17 = inttoptr i64 %16 to ptr
  store atomic volatile i64 %15, ptr %17 monotonic, align 8
  %18 = trunc i64 %15 to i1
  br i1 %18, label %19, label %bb.a

19:                                               ; preds = %1
  %20 = and i64 %3, -262144
  %21 = inttoptr i64 %20 to ptr
  %22 = load i64, ptr %21, align 262144           ; 2 uses
  %23 = and i64 %22, 32
  %.not.i.i.i.i = icmp eq i64 %23, 0
  %24 = and i64 %22, 25
  %.not37.i.i.i.i = icmp eq i64 %24, 0
  br i1 %.not37.i.i.i.i, label %25, label %30

25:                                               ; preds = %19
  %26 = and i64 %15, -262144
  %27 = inttoptr i64 %26 to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %27, align 262144
  %28 = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %28, 0
  br i1 %.not38.i.i.i.i, label %30, label %29

29:                                               ; preds = %25
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %3, i64 noundef %16, i64 %15) #17
  br label %30

30:                                               ; preds = %29, %25, %19
  br i1 %.not.i.i.i.i, label %bb.a, label %31, !prof !13

31:                                               ; preds = %30
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %3, i64 %16, i64 %15) #17
  br label %bb.a

bb.a:                                             ; preds = %1, %30, %31
  %32 = add i64 %3, 55
  %33 = inttoptr i64 %32 to ptr
  store atomic volatile i64 18014196646019072, ptr %33 monotonic, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo22CreateForBootstrappingEPNS0_7IsolateENS1_17BootstrappingTypeE(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !193 {
bb.a:
  %i.a = icmp eq i32 %1, 1                        ; 3 uses
  %i.b = icmp eq i32 %1, 3
  %i.c = and i32 %1, -2
  %i.d = icmp eq i32 %i.c, 2
  %i.e = icmp eq i32 %1, 0
  %i.f = add i32 %1, -4
  %i.g = icmp ult i32 %i.f, -3                    ; 3 uses
  %i.h = select i1 %i.g, i32 7, i32 5
  %i.i = select i1 %i.a, i32 3, i32 0
  %i.j = add nuw nsw i32 %i.i, %i.h
  %i.k = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.j, i8 noundef zeroext 4) #17 ; 2 uses
  %i.l = select i1 %i.e, i32 65856, i32 65984
  %i.m = select i1 %i.b, i32 65993, i32 %i.l
  %i.n = select i1 %i.a, i32 94660, i32 %i.m
  %i.o = select i1 %i.d, i32 67108864, i32 0
  %i.p = or disjoint i32 %i.n, %i.o
  %i.q = load i64, ptr %i.k, align 8              ; 19 uses
  %i.r = add i64 %i.q, 7
  %i.s = inttoptr i64 %i.r to ptr
  store atomic volatile i32 %i.p, ptr %i.s monotonic, align 4
  %i.t = add i64 %i.q, 15
  %i.u = inttoptr i64 %i.t to ptr
  store atomic volatile i64 0, ptr %i.u monotonic, align 8
  %i.v = select i1 %i.g, i64 4294967296, i64 0
  %i.w = add i64 %i.q, 23
  %i.x = inttoptr i64 %i.w to ptr
  store atomic volatile i64 %i.v, ptr %i.x monotonic, align 8
  %i.y = add i64 %i.q, 31
  %i.z = inttoptr i64 %i.y to ptr
  store atomic volatile i64 0, ptr %i.z monotonic, align 8
  %i.aa = add i64 %i.q, 39
  %i.ab = inttoptr i64 %i.aa to ptr
  store atomic volatile i64 0, ptr %i.ab monotonic, align 8
  br i1 %i.g, label %bb.b, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7568
  %i.ad = load i64, ptr %i.ac, align 8            ; 5 uses
  %i.ae = add i64 %i.q, 47                        ; 3 uses
  %i.af = inttoptr i64 %i.ae to ptr
  store atomic volatile i64 %i.ad, ptr %i.af monotonic, align 8
  %i.ag = trunc i64 %i.ad to i1
  br i1 %i.ag, label %bb.c, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122

bb.c:                                             ; preds = %bb.b
  %i.ah = and i64 %i.q, -262144
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 262144       ; 2 uses
  %i.ak = and i64 %i.aj, 32
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = and i64 %i.aj, 25
  %.not37.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not37.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.am = and i64 %i.ad, -262144
  %i.an = inttoptr i64 %i.am to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.an, align 262144
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not38.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.q, i64 noundef %i.ae, i64 %i.ad) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.q, i64 %i.ae, i64 %i.ad) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122: ; preds = %bb.b, %bb.f, %bb.g
  %i.ap = add i64 %i.q, 55
  %i.aq = inttoptr i64 %i.ap to ptr
  store atomic volatile i64 18014196646019072, ptr %i.aq monotonic, align 8
  br label %.critedge

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a
  br i1 %i.a, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 5 uses
  %i.at = add i64 %i.q, 47                        ; 3 uses
  %i.au = inttoptr i64 %i.at to ptr
  store atomic volatile i64 %i.as, ptr %i.au monotonic, align 8
  %i.av = trunc i64 %i.as to i1
  br i1 %i.av, label %bb.i, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52

bb.i:                                             ; preds = %bb.h
  %i.aw = and i64 %i.q, -262144
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 262144       ; 2 uses
  %i.az = and i64 %i.ay, 32
  %.not.i.i.i48 = icmp eq i64 %i.az, 0
  %i.ba = and i64 %i.ay, 25
  %.not37.i.i.i49 = icmp eq i64 %i.ba, 0
  br i1 %.not37.i.i.i49, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = and i64 %i.as, -262144
  %i.bc = inttoptr i64 %i.bb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i50 = load i64, ptr %i.bc, align 262144
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i.i.i50, 25
  %.not38.i.i.i51 = icmp eq i64 %i.bd, 0
  br i1 %.not38.i.i.i51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.q, i64 noundef %i.at, i64 %i.as) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i48, label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.q, i64 %i.at, i64 %i.as) #17
  br label %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52

_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52: ; preds = %bb.h, %bb.l, %bb.m
  %i.be = add i64 %i.q, 55
  %i.bf = inttoptr i64 %i.be to ptr
  store atomic volatile i64 0, ptr %i.bf monotonic, align 8
  %i.bg = load i64, ptr %i.ar, align 8            ; 5 uses
  %i.bh = add i64 %i.q, 63                        ; 3 uses
  %i.bi = inttoptr i64 %i.bh to ptr
  store atomic volatile i64 %i.bg, ptr %i.bi monotonic, align 8
  %i.bj = trunc i64 %i.bg to i1
  br i1 %i.bj, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52
  %i.bk = and i64 %i.q, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.bl, align 262144       ; 2 uses
  %i.bn = and i64 %i.bm, 32
  %.not.i.i.i56 = icmp eq i64 %i.bn, 0
  %i.bo = and i64 %i.bm, 25
  %.not37.i.i.i57 = icmp eq i64 %i.bo, 0
  br i1 %.not37.i.i.i57, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bp = and i64 %i.bg, -262144
  %i.bq = inttoptr i64 %i.bp to ptr
  %.sroa.0.0.copyload.i.i.i.i.i58 = load i64, ptr %i.bq, align 262144
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i.i.i58, 25
  %.not38.i.i.i59 = icmp eq i64 %i.br, 0
  br i1 %.not38.i.i.i59, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.q, i64 noundef %i.bh, i64 %i.bg) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  br i1 %.not.i.i.i56, label %.critedge, label %bb.r, !prof !13

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.q, i64 %i.bh, i64 %i.bg) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.q, %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit52, %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread122, %_ZN2v88internal9ScopeInfo3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo22CreateForEmptyFunctionEPNS0_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 !guid !194 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal9ScopeInfo22CreateForBootstrappingEPNS0_7IsolateENS1_17BootstrappingTypeE(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 168), align 8, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8
  %i.e = add i64 %i.d, 7
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = or i32 %i.g, -2147483648
  store atomic volatile i32 %i.h, ptr %i.f monotonic, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo22CreateForNativeContextEPNS0_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 !guid !195 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 5, i8 noundef zeroext 4) #17 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %i.b, 7
  %i.d = inttoptr i64 %i.c to ptr
  store atomic volatile i32 67174848, ptr %i.d monotonic, align 4
  %i.e = add i64 %i.b, 15
  %i.f = inttoptr i64 %i.e to ptr
  store atomic volatile i64 0, ptr %i.f monotonic, align 8
  %i.g = add i64 %i.b, 23
  %i.h = inttoptr i64 %i.g to ptr
  store atomic volatile i64 0, ptr %i.h monotonic, align 8
  %i.i = add i64 %i.b, 31
  %i.j = inttoptr i64 %i.i to ptr
  store atomic volatile i64 0, ptr %i.j monotonic, align 8
  %i.k = add i64 %i.b, 39
  %i.l = inttoptr i64 %i.k to ptr
  store atomic volatile i64 0, ptr %i.l monotonic, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9ScopeInfo33CreateForShadowRealmNativeContextEPNS0_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 !guid !196 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewScopeInfoEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 5, i8 noundef zeroext 4) #17 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %i.b, 7
  %i.d = inttoptr i64 %i.c to ptr
  store atomic volatile i32 67174857, ptr %i.d monotonic, align 4
end_hunk_0
