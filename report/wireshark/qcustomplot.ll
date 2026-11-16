Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN12QCPBarsGroup14unregisterBarsEP7QCPBars:bb.a
_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit17: ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 24
  br label %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %bb.b, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit15, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit17, %._crit_edge._crit_edge57.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.g
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.034.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %bb.g ], [ %i.ai, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit17 ], [ %i.ah, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit15 ], [ %i.ag, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.aj = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, %i.f
  br i1 %i.aj, label %_ZN5QListIP7QCPBarsE9removeOneIS1_EEbRKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i
  %i.ak = getelementptr i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, i64 8
  %i.al = tail call ptr @_ZN5QListIP7QCPBarsE5eraseENS2_14const_iteratorES3_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.a, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, ptr %i.ak) ; 0 uses
  br label %_ZN5QListIP7QCPBarsE9removeOneIS1_EEbRKT_.exit

_ZN5QListIP7QCPBarsE9removeOneIS1_EEbRKT_.exit:   ; preds = %._crit_edge.i.i.i.i.i, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef double @_ZN12QCPBarsGroup14keyPixelOffsetEPK7QCPBarsd(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(64) %0, ptr nofree noundef readonly captures(address) %1, double noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.QList.256, align 8           ; 15 uses
  %i.b = alloca double, align 8                   ; 10 uses
  %i.c = alloca double, align 8                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %3, i8 0, i64 24, i1 false)
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1206 ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1206 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !noalias !1206
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null        ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = atomicrmw add ptr %i.e, i32 1 acq_rel, align 4, !noalias !1206 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %bb.a, %bb.b
  %.idx = shl i64 %i.i, 3                         ; 2 uses
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx
  %.not8797 = icmp eq i64 %.idx, 0
  br i1 %.not8797, label %._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.i, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit, label %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.n = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.n, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i, %bb.c
  %i.o = getelementptr i8, ptr %1, i64 248
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK7QCPBars8barBelowEv.exit62.thread, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph99, %bb.i
  %.sroa.10.098 = phi ptr [ %i.g, %.lr.ph99 ], [ %i.aw, %bb.i ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.10.098, align 8     ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 248
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZNK7QCPBars8barBelowEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNK7QCPBars8barBelowEv.exit55
  %i.v = phi ptr [ %i.ae, %_ZNK7QCPBars8barBelowEv.exit55 ], [ %i.t, %bb.d ]
  %storemerge5093 = phi ptr [ %spec.select, %_ZNK7QCPBars8barBelowEv.exit55 ], [ %i.r, %bb.d ] ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4        ; 2 uses
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZNK7QCPBars8barBelowEv.exit.thread, label %_ZNK7QCPBars8barBelowEv.exit

_ZNK7QCPBars8barBelowEv.exit:                     ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %storemerge5093, i64 256
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not51 = icmp eq ptr %i.aa, null
  br i1 %.not51, label %_ZNK7QCPBars8barBelowEv.exit.thread, label %_ZNK7QCPBars8barBelowEv.exit55

_ZNK7QCPBars8barBelowEv.exit55:                   ; preds = %_ZNK7QCPBars8barBelowEv.exit
  %i.ab = load atomic i32, ptr %i.w monotonic, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  %spec.select = select i1 %i.ac, ptr null, ptr %i.aa ; 3 uses
  %i.ad = getelementptr i8, ptr %spec.select, i64 248
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK7QCPBars8barBelowEv.exit.thread, label %.lr.ph

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59, label %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57

_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57: ; preds = %bb.e
  %i.ah = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %.not.i.i.i58 = icmp eq i32 %i.ah, 1
  br i1 %.not.i.i.i58, label %bb.f, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59

_ZNK7QCPBars8barBelowEv.exit.thread:              ; preds = %_ZNK7QCPBars8barBelowEv.exit, %.lr.ph, %_ZNK7QCPBars8barBelowEv.exit55, %bb.d
  %storemerge50.lcssa = phi ptr [ %i.r, %bb.d ], [ %spec.select, %_ZNK7QCPBars8barBelowEv.exit55 ], [ %storemerge5093, %.lr.ph ], [ %storemerge5093, %_ZNK7QCPBars8barBelowEv.exit ] ; 2 uses
  %i.ai = load i64, ptr %i.l, align 8             ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread

bb.g:                                             ; preds = %_ZNK7QCPBars8barBelowEv.exit.thread
  %i.ak = load ptr, ptr %i.m, align 8             ; 3 uses
  %.idx160 = shl i64 %i.ai, 3                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 %.idx160
  %.not.i.i.i60154 = icmp eq i64 %.idx160, 0
  br i1 %.not.i.i.i60154, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread, label %.lr.ph156.a

bb.h:                                             ; preds = %.lr.ph156.a
  %i.am = getelementptr i8, ptr %i.an, i64 8      ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i.i60, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread, label %.lr.ph156.a, !llvm.loop !1203

.lr.ph156.a:                                      ; preds = %bb.g, %bb.h
  %i.an = phi ptr [ %i.am, %bb.h ], [ %i.ak, %bb.g ] ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, %storemerge50.lcssa
  br i1 %i.ap, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit, label %bb.h, !llvm.loop !1203

_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit: ; preds = %.lr.ph156.a
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ak to i64
  %i.as = sub i64 %i.aq, %i.ar
  %.not89 = icmp eq i64 %i.as, -8
  br i1 %.not89, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread, label %bb.i

_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread: ; preds = %bb.h, %bb.g, %_ZNK7QCPBars8barBelowEv.exit.thread, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %storemerge50.lcssa, ptr %i.a, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIPK7QCPBarsE7emplaceIJRS3_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListIPK7QCPBarsE6appendES2_.exit

_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIPK7QCPBarsE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS3_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIPK7QCPBarsE6appendES2_.exit unwind label %bb.e

_ZN5QListIPK7QCPBarsE6appendES2_.exit:            ; preds = %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZN5QListIPK7QCPBarsE6appendES2_.exit, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit
  %i.aw = getelementptr i8, ptr %.sroa.10.098, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.aw, %i.k
  br i1 %.not87, label %._crit_edge, label %bb.d, !llvm.loop !1204

.lr.ph101:                                        ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit, %_ZNK7QCPBars8barBelowEv.exit63
  %i.ax = phi ptr [ %i.bg, %_ZNK7QCPBars8barBelowEv.exit63 ], [ %i.p, %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit ]
  %storemerge100 = phi ptr [ %spec.select149, %_ZNK7QCPBars8barBelowEv.exit63 ], [ %1, %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit ] ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4      ; 2 uses
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZNK7QCPBars8barBelowEv.exit62.thread, label %_ZNK7QCPBars8barBelowEv.exit62

_ZNK7QCPBars8barBelowEv.exit62:                   ; preds = %.lr.ph101
  %i.bb = getelementptr i8, ptr %storemerge100, i64 256
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %_ZNK7QCPBars8barBelowEv.exit62.thread, label %_ZNK7QCPBars8barBelowEv.exit63

_ZNK7QCPBars8barBelowEv.exit63:                   ; preds = %_ZNK7QCPBars8barBelowEv.exit62
  %i.bd = load atomic i32, ptr %i.ay monotonic, align 4
  %i.be = icmp eq i32 %i.bd, 0
  %spec.select149 = select i1 %i.be, ptr null, ptr %i.bc ; 3 uses
  %i.bf = getelementptr i8, ptr %spec.select149, i64 248
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK7QCPBars8barBelowEv.exit62.thread, label %.lr.ph101

_ZNK7QCPBars8barBelowEv.exit62.thread:            ; preds = %_ZNK7QCPBars8barBelowEv.exit62, %.lr.ph101, %_ZNK7QCPBars8barBelowEv.exit63, %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit
  %storemerge.lcssa = phi ptr [ %1, %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit ], [ %spec.select149, %_ZNK7QCPBars8barBelowEv.exit63 ], [ %storemerge100, %.lr.ph101 ], [ %storemerge100, %_ZNK7QCPBars8barBelowEv.exit62 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8            ; 6 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread

bb.j:                                             ; preds = %_ZNK7QCPBars8barBelowEv.exit62.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 5 uses
  %.idx161 = shl i64 %i.bj, 3                     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 %.idx161
  %.not.i.i157 = icmp eq i64 %.idx161, 0
  br i1 %.not.i.i157, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread, label %.lr.ph159

bb.k:                                             ; preds = %.lr.ph159
  %i.bo = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i.i, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread, label %.lr.ph159, !llvm.loop !1203

.lr.ph159:                                        ; preds = %bb.j, %bb.k
  %i.bp = phi ptr [ %i.bo, %bb.k ], [ %i.bm, %bb.j ] ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, %storemerge.lcssa
  br i1 %i.br, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit, label %bb.k, !llvm.loop !1203

_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit: ; preds = %.lr.ph159
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3                 ; 2 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.l, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread

bb.l:                                             ; preds = %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit
  %i.by = and i64 %i.bj, 1
  %.not88 = icmp eq i64 %i.by, 0
  %.pre = and i64 %i.bv, 2147483647               ; 4 uses
  %.pre119 = add nsw i64 %i.bj, -1                ; 3 uses
  br i1 %.not88, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = lshr exact i64 %.pre119, 1
  %i.ca = icmp eq i64 %.pre, %i.bz
  br i1 %i.ca, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.cb = lshr i64 %.pre119, 1
  %.not45141 = icmp samesign ule i64 %.pre, %i.cb ; 2 uses
  %i.cc = select i1 %.not45141, i32 -1, i32 1
  %i.cd = trunc i64 %i.bj to i32
  %i.ce = ashr exact i32 %i.cd, 1
  %i.cf = sext i1 %.not45141 to i32
  %i.cg = add nsw i32 %i.ce, %i.cf                ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr %i.bm, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef double @_ZN12QCPBarsGroup15getPixelSpacingEPK7QCPBarsd(ptr noundef align 8 dereferenceable_or_null(64) %0, ptr noundef %i.cj, double noundef %2)
  %i.cl = call double @llvm.fmuladd.f64(double %i.ck, double 5.000000e-01, double 0.000000e+00)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.cm = lshr exact i64 %.pre119, 1              ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.bm, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void @_ZNK7QCPBars13getPixelWidthEdRdS0_(ptr noundef align 8 dereferenceable_or_null(280) %i.co, double noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %.not45.not = icmp samesign ugt i64 %.pre, %i.cm
  %i.cp = select i1 %.not45.not, i32 1, i32 -1    ; 2 uses
  %i.cq = trunc i64 %i.bj to i32
  %4 = add nsw i32 %i.cq, -1
  %i.cr = ashr exact i32 %4, 1
  %i.cs = add nsw i32 %i.cp, %i.cr
  %i.ct = load double, ptr %i.c, align 8
  %i.cu = load double, ptr %i.b, align 8
  %i.cv = fsub double %i.ct, %i.cu                ; 3 uses
  %i.cw = fcmp ult double %i.cv, 0.000000e+00
  %i.cx = fneg double %i.cv
  %i.cy = select i1 %i.cw, double %i.cx, double %i.cv
  %i.cz = load i64, ptr %i.bi, align 8
  %i.da = add i64 %i.cz, -1
  %i.db = sdiv i64 %i.da, 2
  %i.dc = load ptr, ptr %i.bl, align 8
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.db
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef double @_ZN12QCPBarsGroup15getPixelSpacingEPK7QCPBarsd(ptr noundef align 8 dereferenceable_or_null(64) %0, ptr noundef %i.de, double noundef %2)
  %i.dg = call double @llvm.fmuladd.f64(double %i.cy, double 5.000000e-01, double 0.000000e+00)
  %i.dh = fadd double %i.dg, %i.df
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.di = phi i32 [ %i.cc, %bb.n ], [ %i.cp, %bb.p ] ; 3 uses
  %.035 = phi double [ %i.cl, %bb.n ], [ %i.dh, %bb.p ] ; 2 uses
  %.034 = phi i32 [ %i.cg, %bb.n ], [ %i.cs, %bb.p ] ; 2 uses
  %.not46106 = icmp eq i32 %.034, %i.bw
  br i1 %.not46106, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %bb.r, %bb.q
  %.1.lcssa = phi double [ %.035, %bb.q ], [ %i.eb, %bb.r ]
  %i.dj = load ptr, ptr %i.bl, align 8
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %.pre
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void @_ZNK7QCPBars13getPixelWidthEdRdS0_(ptr noundef align 8 dereferenceable_or_null(280) %i.dl, double noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph110:                                        ; preds = %bb.q, %bb.r
  %.0108 = phi i32 [ %i.ec, %bb.r ], [ %.034, %bb.q ] ; 2 uses
  %.1107 = phi double [ %i.eb, %bb.r ], [ %.035, %bb.q ]
  %i.dm = sext i32 %.0108 to i64                  ; 2 uses
  %i.dn = load ptr, ptr %i.bl, align 8
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void @_ZNK7QCPBars13getPixelWidthEdRdS0_(ptr noundef align 8 dereferenceable_or_null(280) %i.dp, double noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph110
  %i.dq = load double, ptr %i.c, align 8
  %i.dr = load double, ptr %i.b, align 8
  %i.ds = fsub double %i.dq, %i.dr                ; 3 uses
  %i.dt = fcmp ult double %i.ds, 0.000000e+00
  %i.du = fneg double %i.ds
  %i.dv = select i1 %i.dt, double %i.du, double %i.ds
  %i.dw = load ptr, ptr %i.bl, align 8
  %i.dx = getelementptr [8 x i8], ptr %i.dw, i64 %i.dm
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef double @_ZN12QCPBarsGroup15getPixelSpacingEPK7QCPBarsd(ptr noundef align 8 dereferenceable_or_null(64) %0, ptr noundef %i.dy, double noundef %2)
  %i.ea = fadd double %.1107, %i.dv
  %i.eb = fadd double %i.dz, %i.ea                ; 2 uses
  %i.ec = add i32 %.0108, %i.di                   ; 2 uses
  %.not46 = icmp eq i32 %i.ec, %i.bw
  br i1 %.not46, label %._crit_edge111, label %.lr.ph110, !llvm.loop !1205

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph110, %bb.o, %._crit_edge111
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59

bb.s:                                             ; preds = %._crit_edge111
  %i.ed = load double, ptr %i.c, align 8
  %i.ee = load double, ptr %i.b, align 8
  %i.ef = fsub double %i.ed, %i.ee                ; 3 uses
  %i.eg = fcmp ult double %i.ef, 0.000000e+00
  %i.eh = fneg double %i.ef
  %i.ei = select i1 %i.eg, double %i.eh, double %i.ef
  %i.ej = getelementptr i8, ptr %storemerge.lcssa, i64 112
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr i8, ptr %i.ek, i64 4
  %i.en = load atomic i32, ptr %i.em monotonic, align 4
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr i8, ptr %storemerge.lcssa, i64 120
  %i.eq = load ptr, ptr %i.ep, align 8
  br label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit

_ZNK20QCPAbstractPlottable7keyAxisEv.exit:        ; preds = %bb.u, %bb.t, %bb.s
  %i.er = phi ptr [ %i.eq, %bb.u ], [ null, %bb.t ], [ null, %bb.s ] ; 2 uses
  %i.es = call double @llvm.fmuladd.f64(double %i.ei, double 5.000000e-01, double %.1.lcssa)
  %i.et = getelementptr i8, ptr %i.er, i64 320
  %i.eu = load i8, ptr %i.et, align 8, !range !175, !noundef !176
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = getelementptr i8, ptr %i.er, i64 76
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = icmp ne i32 %i.ex, 2
  %.not.i = xor i1 %i.ey, %i.ev
  %i.ez = sub nsw i32 0, %i.di
  %i.fa = select i1 %.not.i, i32 %i.di, i32 %i.ez
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = fmul double %i.es, %i.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  br label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread

_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread: ; preds = %bb.k, %bb.j, %_ZNK7QCPBars8barBelowEv.exit62.thread, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit, %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, %bb.m
  %.036 = phi double [ 0.000000e+00, %bb.m ], [ %i.fc, %_ZNK20QCPAbstractPlottable7keyAxisEv.exit ], [ 0.000000e+00, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit ], [ 0.000000e+00, %_ZNK7QCPBars8barBelowEv.exit62.thread ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ]
  %i.fd = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i64, label %_ZN5QListIPK7QCPBarsED2Ev.exit, label %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i: ; preds = %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread
  %i.fe = atomicrmw add ptr %i.fd, i32 -1 acq_rel, align 4
  %.not.i.i65 = icmp eq i32 %i.fe, 1
  br i1 %.not.i.i65, label %bb.v, label %_ZN5QListIPK7QCPBarsED2Ev.exit

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i
  %i.ff = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ff, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListIPK7QCPBarsED2Ev.exit

_ZN5QListIPK7QCPBarsED2Ev.exit:                   ; preds = %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread, %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  ret double %.036

_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e, %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57, %bb.f
  %.pn52.pn = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ag, %bb.e ], [ %i.ag, %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57 ]
  %i.fg = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i66, label %_ZN5QListIPK7QCPBarsED2Ev.exit69, label %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i67

_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i67: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59
  %i.fh = atomicrmw add ptr %i.fg, i32 -1 acq_rel, align 4
  %.not.i.i68 = icmp eq i32 %i.fh, 1
  br i1 %.not.i.i68, label %bb.w, label %_ZN5QListIPK7QCPBarsED2Ev.exit69

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i67
  %i.fi = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fi, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListIPK7QCPBarsED2Ev.exit69

_ZN5QListIPK7QCPBarsED2Ev.exit69:                 ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59, %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i67, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  resume { ptr, i32 } %.pn52.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN12QCPBarsGroup15getPixelSpacingEPK7QCPBarsd(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(64) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2) local_unnamed_addr #33 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load double, ptr %i.c, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.f, i64 4        ; 2 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  br label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit

_ZNK20QCPAbstractPlottable7keyAxisEv.exit:        ; preds = %bb.d, %bb.e
  %i.m = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ]
  %i.n = getelementptr i8, ptr %i.m, i64 76
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 1
  %i.q = load atomic i32, ptr %i.h monotonic, align 4
  %i.r = icmp eq i32 %i.q, 0                      ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.h

_ZNK20QCPAbstractPlottable7keyAxisEv.exit.thread: ; preds = %bb.c
  %i.s = load i32, ptr inttoptr (i64 76 to ptr), align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit10, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit11

bb.f:                                             ; preds = %_ZNK20QCPAbstractPlottable7keyAxisEv.exit
  br i1 %i.r, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit10, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
