Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/memory-measurement?download=true
inline.NumInlined: 1122
inline.NumDeleted: 775
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit: ; preds = %bb.r
  %i.gd = load i64, ptr %i.fz, align 8
  %i.ge = load i64, ptr %i.gb, align 8
  %i.gf = icmp eq i64 %i.gd, %i.ge
  br i1 %i.gf, label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder8AddOtherEmmm.exit, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit.thread

_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit.thread: ; preds = %.split, %bb.r, %_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit
  %i.gg = load ptr, ptr %i.fq, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.067
  %i.gi = load i64, ptr %i.gh, align 8            ; 3 uses
  %i.gj = add i64 %i.gi, %i.b
  store i8 1, ptr %i.fj, align 8
  %i.gk = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder9NewResultEmmm(ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %i.gi, i64 noundef %i.gi, i64 noundef %i.gj) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fw, %i.fv
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit.thread
  %i.gl = ptrtoint ptr %i.gk to i64
  store i64 %i.gl, ptr %i.fw, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  store ptr %i.gm, ptr %i.fs, align 8
  br label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder8AddOtherEmmm.exit

bb.t:                                             ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit.thread
  %i.gn = ptrtoint ptr %i.fv to i64
  %i.go = ptrtoint ptr %i.fu to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 4 uses
  %i.gq = icmp eq i64 %i.gp, 9223372036854775800
  br i1 %i.gq, label %bb.u, label %_ZNKSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.t
  %i.gr = ashr exact i64 %i.gp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gr, i64 1)
  %i.gs = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.gr ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.gr
  %i.gu = tail call i64 @llvm.umin.i64(i64 %i.gs, i64 1152921504606846975)
  %i.gv = select i1 %i.gt, i64 1152921504606846975, i64 %i.gu ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.gv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %i.gx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #19 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gp
  %i.gz = ptrtoint ptr %i.gk to i64
  store i64 %i.gz, ptr %i.gy, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fu, %i.fv
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gx, %_ZNKSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fu, %_ZNKSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.ha = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !29
  store i64 %i.ha, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !28
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hb, %i.fv
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !22

_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gx, %_ZNKSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.hc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.gp) #20
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.v, %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  store ptr %i.gx, ptr %i.fr, align 8
  store ptr %i.hd, ptr %i.fs, align 8
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gv ; 2 uses
  store ptr %i.he, ptr %i.ft, align 8
  br label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder8AddOtherEmmm.exit

_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder8AddOtherEmmm.exit: ; preds = %.split, %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.s, %_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit
  %i.hf = phi ptr [ %i.gx, %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.fu, %bb.s ], [ %i.fu, %_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit ], [ %i.fu, %.split ]
  %i.hg = phi ptr [ %i.he, %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.fv, %bb.s ], [ %i.fv, %_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit ], [ %i.fv, %.split ]
  %i.hh = phi ptr [ %i.hd, %_ZNSt6vectorIN2v88internal6HandleINS1_8JSObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.gm, %bb.s ], [ %i.fw, %_ZN2v88internal12HandleHelper12EqualHandlesINS_14PersistentBaseINS_7ContextEEENS_5LocalIS4_EEEEbRKT_RKT0_.exit ], [ %i.fw, %.split ] ; 2 uses
  %i.hi = add nuw i64 %.067, 1                    ; 2 uses
  %i.hj = load i64, ptr %i.fn, align 8
  %i.hk = icmp ult i64 %i.hi, %i.hj
  br i1 %i.hk, label %bb.q, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder8AddOtherEmmm.exit
  %.pre = load i8, ptr %i.fj, align 8, !range !14
  %i.hl = trunc nuw i8 %.pre to i1
  %i.hm = ptrtoint ptr %i.hh to i64
  br i1 %i.hl, label %.loopexit.thread, label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit

.loopexit.thread:                                 ; preds = %bb.p, %.loopexit
  %i.hn = phi i64 [ %i.hm, %.loopexit ], [ 0, %bb.p ]
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.hn, %i.hq
  %i.hs = lshr exact i64 %i.hr, 3                 ; 2 uses
  %i.ht = trunc i64 %i.hs to i32                  ; 2 uses
  %i.hu = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, i32 noundef %i.ht, i8 noundef zeroext 0, i8 0) #17 ; 3 uses
  %i.hv = icmp sgt i32 %i.ht, 0
  br i1 %i.hv, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.thread
  %wide.trip.count.i = and i64 %i.hs, 2147483647
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.loopexit.thread
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bh, i64 6960
  %i.hx = load i64, ptr %i.hu, align 8
  %i.hy = add i64 %i.hx, -1
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = lshr i64 %i.ib, 32
  %i.id = trunc nuw i64 %i.ic to i32
  %i.ie = tail call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, ptr nonnull %i.hu, i8 noundef zeroext 3, i32 noundef %i.id, i8 noundef zeroext 0) #17
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %i.bh, ptr %i.ce, ptr nonnull %i.hw, ptr %i.ie, i32 noundef 0) #17
  br label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ] ; 3 uses
  %i.if = load i64, ptr %i.hu, align 8
  %i.ig = add i64 %i.if, -1                       ; 3 uses
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv.i
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = load i64, ptr %i.ij, align 8            ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.i ; 2 uses
  store atomic volatile i64 %i.ik, ptr %i.im monotonic, align 8
  %i.in = trunc i64 %i.ik to i1
  br i1 %i.in, label %bb.w, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.io = or disjoint i64 %i.ig, 1                ; 2 uses
  %i.ip = ptrtoint ptr %i.im to i64               ; 2 uses
  %i.iq = and i64 %i.ig, -262144
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = load i64, ptr %i.ir, align 262144       ; 2 uses
  %i.it = and i64 %i.is, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.it, 0
  %i.iu = and i64 %i.is, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.iv = and i64 %i.ik, -262144
  %i.iw = inttoptr i64 %i.iv to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.iw, align 262144
  %i.ix = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.ix, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.io, i64 noundef %i.ip, i64 %i.ik) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.aa, !prof !15

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.io, i64 %i.ip, i64 %i.ik) #17
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.aa, %bb.z, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !24

_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit: ; preds = %.loopexit, %bb.o, %._crit_edge.i
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iz = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ja = load ptr, ptr %i.iy, align 8, !nonnull !11, !noundef !11
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = ptrtoint ptr %i.iz to i64
  %i.jd = add i64 %i.jc, 560
  %i.je = inttoptr i64 %i.jd to ptr               ; 3 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = icmp eq ptr %i.jf, %i.jh
  br i1 %i.ji, label %bb.ab, label %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit, !prof !12

bb.ab:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit
  %i.jj = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.iz) #17
  br label %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit

_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit, %bb.ab
  %.0.i.i = phi ptr [ %i.jj, %bb.ab ], [ %i.jf, %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit ] ; 3 uses
  %i.jk = ptrtoint ptr %.0.i.i to i64
  %i.jl = add i64 %i.jk, 8
  %i.jm = inttoptr i64 %i.jl to ptr
  store ptr %i.jm, ptr %i.je, align 8
  store i64 %i.jb, ptr %.0.i.i, align 8
  %i.jn = tail call i16 @_ZN2v87Promise8Resolver7ResolveENS_5LocalINS_7ContextEEENS2_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, ptr nonnull %.0.i, ptr %i.ce) #17
  %3 = trunc i16 %i.jn to i1
  br i1 %3, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit
  %i.jo = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 368
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 960
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = load i64, ptr %i.jp, align 8
  %i.jt = icmp eq i64 %i.js, %i.jr
  br i1 %i.jt, label %bb.ae, label %bb.ad, !prof !15

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18
  unreachable

bb.ae:                                            ; preds = %bb.ac, %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load ptr, ptr %i.ju, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilderD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val38 = load ptr, ptr %i.jv, align 8
  %i.jw = ptrtoint ptr %.val38 to i64
  %i.jx = ptrtoint ptr %.val to i64
  %i.jy = sub i64 %i.jw, %i.jx
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.jy) #20
  br label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilderD2Ev.exit

_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilderD2Ev.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  tail call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.0.i) #17
  ret void
}

declare i16 @_ZN2v87Promise8Resolver7ResolveENS_5LocalINS_7ContextEEENS2_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17MemoryMeasurementC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.a, align 8
  store ptr %0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8
  store ptr %i.c, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.f, ptr %i.g, align 8
  store ptr %i.f, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZNK2v88internal4Heap23GetForegroundTaskRunnerENS_12TaskPriorityE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.j, ptr noundef nonnull align 8 dereferenceable(2992) %i.k, i8 noundef zeroext 2) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @_ZN2v84base21RandomNumberGeneratorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #17
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1568), align 32 ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = sext i32 %i.p to i64
  tail call void @_ZN2v84base21RandomNumberGenerator7SetSeedEl(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.q) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZNK2v88internal4Heap23GetForegroundTaskRunnerENS_12TaskPriorityE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(2992), i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v84base21RandomNumberGeneratorC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN2v84base21RandomNumberGenerator7SetSeedEl(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17MemoryMeasurement14EnqueueRequestESt10unique_ptrINS_21MeasureMemoryDelegateESt14default_deleteIS3_EENS_22MeasureMemoryExecutionESt6vectorINS0_6HandleINS0_13NativeContextEEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %3, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewWeakFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i32 noundef %i.h, i8 noundef zeroext 0) #17 ; 2 uses
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.g, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %bb.a
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 58848
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %i.k, align 8
  %i.q = tail call ptr @_ZN2v88internal13GlobalHandles6CreateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 %i.p) #17
  %i.r = load i64, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %sext = shl i64 %i.f, 29                        ; 3 uses
  %i.s = ashr exact i64 %sext, 32                 ; 3 uses
  %i.t = icmp ugt i64 %i.s, 1152921504606846975
  br i1 %i.t, label %bb.b, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZN2v88internal17MemoryMeasurement7RequestD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.u = ashr exact i64 %sext, 29
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #19 ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 2 uses
  store i64 0, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.v, i64 8        ; 3 uses
  %i.y = add nsw i64 %i.s, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN2v88internal17MemoryMeasurement7RequestD2Ev.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZN2v88internal17MemoryMeasurement7RequestD2Ev.exit

_ZN2v88internal17MemoryMeasurement7RequestD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.sroa.8.0 = phi ptr [ %i.v, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.v, %bb.c ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.16.0 = phi ptr [ %i.w, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.w, %bb.c ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.x, %bb.c ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ab = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #17
  %i.ac = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #19 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.r, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = ptrtoint ptr %i.q to i64
  store i64 %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %.sroa.8.0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %.0.i.i.i.i.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %.sroa.16.0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.23.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  store i64 %i.ab, ptr %.sroa.23.40..sroa_idx, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8
  tail call void @_ZN2v88internal17MemoryMeasurement14ScheduleGCTaskENS_22MeasureMemoryExecutionE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %2)
  ret i1 true

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.an = load i64, ptr %i.k, align 8
  %i.ao = add i64 %i.an, -1                       ; 3 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %3, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = or i64 %i.at, 3                         ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.au, ptr %i.aw monotonic, align 8
  %i.ax = and i64 %i.au, 4294967295
  %.not = icmp eq i64 %i.ax, 3
  br i1 %.not, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ay = and i64 %i.au, -3                       ; 2 uses
  %i.az = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.ba = ptrtoint ptr %i.aw to i64               ; 2 uses
end_hunk_0
