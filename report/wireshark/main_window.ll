inline.NumInlined: 1058
inline.NumDeleted: 500
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN10MainWindow14addPacketMenusEP5QMenuP10_GPtrArray:bb.a

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i
  %i.at = load ptr, ptr %3, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.at, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit8.i.i

_ZN7QStringD2Ev.exit8.i.i:                        ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.not.i.i.i.i.i, label %_ZN7QStringD2Ev.exit61, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59

bb.s:                                             ; preds = %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.not.i.i.i.i.i, label %_ZN7QStringD2Ev.exit54, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i52

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i52:    ; preds = %bb.s
  %i.au = atomicrmw sub ptr %i.aj, i32 1 acq_rel, align 4
  %.not.i.i53 = icmp eq i32 %i.au, 1
  br i1 %.not.i.i53, label %bb.t, label %_ZN7QStringD2Ev.exit54

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i52
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.aj, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit54

_ZN7QStringD2Ev.exit54:                           ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i52, %bb.t
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QActionEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN7QStringD2Ev.exit54
  %i.av = atomicrmw add ptr %i.c, i32 1 acq_rel, align 4, !noalias !34 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QActionEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QActionEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %_ZN7QStringD2Ev.exit54, %bb.u
  %.idx = shl i64 %i.e, 3                         ; 2 uses
  %i.aw = getelementptr i8, ptr %i.d, i64 %.idx
  %.not9399 = icmp eq i64 %.idx, 0
  br i1 %.not9399, label %._crit_edge103, label %.lr.ph102

._crit_edge103:                                   ; preds = %bb.ai, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QActionEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  %.019.lcssa = phi i1 [ false, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QActionEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ], [ %.2, %bb.ai ]
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QActionEED2Ev.exit, label %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i.i: ; preds = %._crit_edge103
  %i.ax = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %.not.i.i.i57 = icmp eq i32 %i.ax, 1
  br i1 %.not.i.i.i57, label %bb.v, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QActionEED2Ev.exit

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 8) #28
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP7QActionEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIP7QActionEED2Ev.exit: ; preds = %._crit_edge103, %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i.i, %bb.v
  call void @_ZN5QHashI7QStringP5QMenuED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN5QHashI7QString15QHashDummyValueED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.an

bb.w:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit61

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59:    ; preds = %_ZN7QStringD2Ev.exit8.i.i
  %i.az = atomicrmw sub ptr %i.aj, i32 1 acq_rel, align 4
  %.not.i.i60 = icmp eq i32 %i.az, 1
  br i1 %.not.i.i60, label %bb.x, label %_ZN7QStringD2Ev.exit61

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.aj, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit61

.lr.ph102:                                        ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QActionEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, %bb.ai
  %.019101 = phi i1 [ %.2, %bb.ai ], [ false, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QActionEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 2 uses
  %.sroa.10.0100 = phi ptr [ %i.bj, %bb.ai ], [ %i.d, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QActionEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 2 uses
  %i.ba = load ptr, ptr %.sroa.10.0100, align 8   ; 2 uses
  %i.bb = invoke noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN12FunnelAction16staticMetaObjectE, ptr noundef %i.ba)
          to label %_Z12qobject_castIP12FunnelActionET_P7QObject.exit unwind label %bb.y

_Z12qobject_castIP12FunnelActionET_P7QObject.exit: ; preds = %.lr.ph102
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.ai, label %bb.z

bb.y:                                             ; preds = %.lr.ph102
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %_Z12qobject_castIP12FunnelActionET_P7QObject.exit
  %i.bd = invoke noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN12FunnelAction16staticMetaObjectE, ptr noundef %i.ba)
          to label %_Z12qobject_castIP12FunnelActionET_P7QObject.exit62 unwind label %bb.ac ; 3 uses

_Z12qobject_castIP12FunnelActionET_P7QObject.exit62: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN12FunnelAction23getPacketRequiredFieldsEv(ptr dead_on_unwind nonnull writable sret(%class.QSet) align 8 %10, ptr noundef align 8 dereferenceable_or_null(112) %i.bd)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_Z12qobject_castIP12FunnelActionET_P7QObject.exit62
  %i.be = invoke noundef zeroext i1 @_ZNK4QSetI7QStringE8containsERKS1_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5QHashI7QString15QHashDummyValueED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %i.be, label %bb.ag, label %bb.ai

bb.ac:                                            ; preds = %bb.z, %bb.ah, %bb.ag
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ad:                                            ; preds = %_Z12qobject_castIP12FunnelActionET_P7QObject.exit62
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QHashI7QString15QHashDummyValueED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn34 = phi { ptr, i32 } [ %i.bh, %bb.ae ], [ %i.bg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ab
  invoke void @_ZN12FunnelAction13setPacketDataEP10_GPtrArray(ptr noundef align 8 dereferenceable_or_null(112) %i.bd, ptr noundef %2)
          to label %bb.ah unwind label %bb.ac

bb.ah:                                            ; preds = %bb.ag
  %i.bi = load ptr, ptr %i.a, align 8
  invoke void @_ZN12FunnelAction9addToMenuEP5QMenuR5QHashI7QStringS1_E(ptr noundef align 8 dereferenceable_or_null(112) %i.bd, ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ai unwind label %bb.ac

bb.ai:                                            ; preds = %bb.ab, %bb.ah, %_Z12qobject_castIP12FunnelActionET_P7QObject.exit
  %.2 = phi i1 [ %.019101, %_Z12qobject_castIP12FunnelActionET_P7QObject.exit ], [ %.019101, %bb.ab ], [ true, %bb.ah ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.sroa.10.0100, i64 8 ; 2 uses
  %.not93 = icmp eq ptr %i.bj, %i.aw
  br i1 %.not93, label %._crit_edge103, label %.lr.ph102, !llvm.loop !37

bb.aj:                                            ; preds = %bb.ac, %bb.af, %bb.y
  %.pn36.pn = phi { ptr, i32 } [ %i.bc, %bb.y ], [ %i.bf, %bb.ac ], [ %.pn34, %bb.af ] ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit61, label %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i.i64

_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i.i64: ; preds = %bb.aj
  %i.bk = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %.not.i.i.i65 = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i.i65, label %bb.ak, label %_ZN7QStringD2Ev.exit61

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i.i64
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit61

_ZN7QStringD2Ev.exit61:                           ; preds = %bb.aj, %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i.i64, %bb.ak, %bb.w, %_ZN7QStringD2Ev.exit8.i.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59, %bb.x
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.x ], [ %i.ay, %bb.w ], [ %i.aq, %_ZN7QStringD2Ev.exit8.i.i ], [ %i.aq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59 ], [ %.pn36.pn, %bb.ak ], [ %.pn36.pn, %bb.aj ], [ %.pn36.pn, %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i.i64 ]
  call void @_ZN5QHashI7QStringP5QMenuED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.al

bb.al:                                            ; preds = %_ZN7QStringD2Ev.exit61, %_ZN7QStringD2Ev.exit49
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %_ZN7QStringD2Ev.exit49 ], [ %.pn36.pn.pn.pn, %_ZN7QStringD2Ev.exit61 ]
  call void @_ZN5QHashI7QString15QHashDummyValueED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %.not.i.i.i.i, label %_ZN5QListIP7QActionED2Ev.exit, label %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i

_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i: ; preds = %bb.al
  %i.bl = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %.not.i.i68 = icmp eq i32 %i.bl, 1
  br i1 %.not.i.i68, label %bb.am, label %_ZN5QListIP7QActionED2Ev.exit

bb.am:                                            ; preds = %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 8) #28
  br label %_ZN5QListIP7QActionED2Ev.exit

_ZN5QListIP7QActionED2Ev.exit:                    ; preds = %bb.al, %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i, %bb.am
  resume { ptr, i32 } %.pn41.pn

bb.an:                                            ; preds = %_ZN10MainWindow20getPacketMenuActionsEv.exit, %_ZN9QtPrivate17QForeachContainerI5QListIP7QActionEED2Ev.exit
  %.0 = phi i1 [ %.019.lcssa, %_ZN9QtPrivate17QForeachContainerI5QListIP7QActionEED2Ev.exit ], [ false, %_ZN10MainWindow20getPacketMenuActionsEv.exit ]
  br i1 %.not.i.i.i.i, label %_ZN5QListIP7QActionED2Ev.exit72, label %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i70

_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i70: ; preds = %bb.an
  %i.bm = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %.not.i.i71 = icmp eq i32 %i.bm, 1
  br i1 %.not.i.i71, label %bb.ao, label %_ZN5QListIP7QActionED2Ev.exit72

bb.ao:                                            ; preds = %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i70
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 8) #28
  br label %_ZN5QListIP7QActionED2Ev.exit72

_ZN5QListIP7QActionED2Ev.exit72:                  ; preds = %bb.an, %_ZN17QArrayDataPointerIP7QActionE5derefEv.exit.i.i70, %bb.ao
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #16

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4QSetI7QStringE8containsERKS1_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noalias !38  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !38 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !noalias !38
  %.not.i.i.i.i = icmp eq i8 %i.d, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noalias !38 ; 2 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread13, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.h = add nuw i64 %i.j, 1                      ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.f
  br i1 %i.i, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread13, label %.lr.ph, !llvm.loop !41

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %i.h, %bb.d ], [ 1, %bb.c ]    ; 4 uses
  %i.k = lshr i64 %i.j, 7
  %i.l = getelementptr [144 x i8], ptr %i.c, i64 %i.k
  %i.m = and i64 %i.j, 127
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !38
  %.not.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph, !llvm.loop !41

_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph: ; preds = %.lr.ph, %bb.b
  %.sroa.4.0.i.i42 = phi i64 [ 0, %bb.b ], [ %i.j, %.lr.ph ]
  %i.p = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i.i5, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread13, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph.split

_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph.split: ; preds = %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %i.s = getelementptr i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = load i64, ptr %i.r, align 8              ; 2 uses
  %i.v = add i64 %i.u, -1
  %i.w = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = lshr i64 %i.u, 7
  br label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread

_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread: ; preds = %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph.split, %_ZN4QSetI7QStringE14const_iteratorppEv.exit
  %.sroa.7.023 = phi i64 [ %.sroa.4.0.i.i42, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph.split ], [ %.sroa.7.1, %_ZN4QSetI7QStringE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.07.022 = phi ptr [ %i.a, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph.split ], [ %.sroa.07.1, %_ZN4QSetI7QStringE14const_iteratorppEv.exit ] ; 3 uses
  %i.z = getelementptr i8, ptr %.sroa.07.022, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = lshr i64 %.sroa.7.023, 7
  %i.ac = getelementptr [144 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = and i64 %.sroa.7.023, 127
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr [24 x i8], ptr %i.ae, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %i.am, align 8            ; 4 uses
  %i.ao = tail call noundef i64 @_Z5qHash11QStringViewm(i64 %i.an, ptr %i.al, i64 noundef %i.t) #32
  %i.ap = and i64 %i.v, %i.ao                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 7
  %i.ar = getelementptr [144 x i8], ptr %i.w, i64 %i.aq ; 2 uses
  %i.as = and i64 %i.ap, 127                      ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = icmp eq i8 %i.au, -1
  br i1 %i.av, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread13, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread, %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i
  %i.aw = phi i8 [ %i.bq, %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i ], [ %i.au, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread ]
  %.sroa.0.023.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i ], [ %i.ar, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread ] ; 3 uses
  %.sroa.8.022.i.i.i = phi i64 [ %.sroa.8.1.i.i.i, %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i ], [ %i.as, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread ]
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr i8, ptr %.sroa.0.023.i.i.i, i64 128
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr [24 x i8], ptr %i.az, i64 %i.ax ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp eq i64 %i.bc, %i.an
  br i1 %i.bd, label %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i.i.i, label %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i

_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 %i.an, ptr %i.bf, i64 %i.an, ptr %i.al, i32 noundef 1) #32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZNK4QSetI7QStringE8containsERKS0_.exit, label %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i

_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i: ; preds = %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i.i.i, %.lr.ph.i.i.i
  %i.bi = add nuw nsw i64 %.sroa.8.022.i.i.i, 1   ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 128
  br i1 %i.bj, label %bb.e, label %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i, !prof !42

bb.e:                                             ; preds = %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i
  %i.bk = getelementptr i8, ptr %.sroa.0.023.i.i.i, i64 144 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.x
  %i.bn = sdiv exact i64 %i.bm, 144
  %i.bo = icmp eq i64 %i.bn, %i.y
  %spec.select.i.i.i = select i1 %i.bo, ptr %i.w, ptr %i.bk
  br label %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i

_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i: ; preds = %bb.e, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i
  %.sroa.8.1.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bi, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ %.sroa.0.023.i.i.i, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.0.1.i.i.i, i64 %.sroa.8.1.i.i.i
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %i.br = icmp eq i8 %i.bq, -1
  br i1 %i.br, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread13, label %.lr.ph.i.i.i, !llvm.loop !43

_ZNK4QSetI7QStringE8containsERKS0_.exit:          ; preds = %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i.i.i
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread13, label %bb.f

bb.f:                                             ; preds = %_ZNK4QSetI7QStringE8containsERKS0_.exit
  %i.bs = getelementptr i8, ptr %.sroa.07.022, i64 16
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = add i64 %.sroa.7.023, 1                 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %i.bt
  br i1 %i.bv, label %_ZN4QSetI7QStringE14const_iteratorppEv.exit, label %.lr.ph51

bb.g:                                             ; preds = %.lr.ph51
  %i.bw = add i64 %i.by, 1                        ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.bt
  br i1 %i.bx, label %_ZN4QSetI7QStringE14const_iteratorppEv.exit, label %.lr.ph51, !llvm.loop !41

.lr.ph51:                                         ; preds = %bb.f, %bb.g
  %i.by = phi i64 [ %i.bw, %bb.g ], [ %i.bu, %bb.f ] ; 4 uses
  %i.bz = lshr i64 %i.by, 7
  %i.ca = getelementptr [144 x i8], ptr %i.aa, i64 %i.bz
  %i.cb = and i64 %i.by, 127
  %i.cc = getelementptr i8, ptr %i.ca, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %.not.i.i.i.i6 = icmp eq i8 %i.cd, -1
  br i1 %.not.i.i.i.i6, label %bb.g, label %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge54, !llvm.loop !41

._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge54: ; preds = %.lr.ph51
  br label %_ZN4QSetI7QStringE14const_iteratorppEv.exit, !llvm.loop !41

_ZN4QSetI7QStringE14const_iteratorppEv.exit:      ; preds = %bb.g, %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge54, %bb.f
  %.sroa.07.1 = phi ptr [ %.sroa.07.022, %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge54 ], [ null, %bb.f ], [ null, %bb.g ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %i.by, %._ZN4QSetI7QStringE14const_iteratorppEv.exit_crit_edge54 ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  %i.ce = icmp eq ptr %.sroa.07.1, null
  %i.cf = icmp eq i64 %.sroa.7.1, 0
  %or.cond.not = and i1 %i.ce, %i.cf
  br i1 %or.cond.not, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread13, label %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread, !llvm.loop !44

_ZNK4QSetI7QStringE8containsERKS0_.exit.thread13: ; preds = %bb.d, %_ZNK4QSetI7QStringE8containsERKS0_.exit, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread, %_ZN4QSetI7QStringE14const_iteratorppEv.exit, %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i, %bb.c, %bb.a, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph
  %or.cond.not20 = phi i1 [ false, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread.lr.ph ], [ true, %_ZN4QSetI7QStringE14const_iteratorppEv.exit ], [ true, %bb.a ], [ true, %bb.c ], [ false, %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i ], [ false, %_ZNK4QSetI7QStringE8containsERKS0_.exit ], [ false, %_ZNK4QSetI7QStringE14const_iteratorneERKS2_.exit.thread ], [ true, %bb.d ]
  ret i1 %or.cond.not20
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN12FunnelAction23getPacketRequiredFieldsEv(ptr dead_on_unwind writable sret(%class.QSet) align 8, ptr noundef align 8 dereferenceable_or_null(112)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN12FunnelAction13setPacketDataEP10_GPtrArray(ptr noundef align 8 dereferenceable_or_null(112), ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN12FunnelAction9addToMenuEP5QMenuR5QHashI7QStringS1_E(ptr noundef align 8 dereferenceable_or_null(112), ptr noundef, ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QHashI7QStringP5QMenuED2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread, label %_ZN9QtPrivate8RefCount5derefEv.exit

_ZN9QtPrivate8RefCount5derefEv.exit:              ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not3 = icmp eq i32 %i.d, 1
  br i1 %.not3, label %bb.c, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

bb.c:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN12QHashPrivate4DataINS_4NodeI7QStringP5QMenuEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx.i = mul i64 %i.k, 144                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN12QHashPrivate4SpanINS_4NodeI7QStringP5QMenuEEED2Ev.exit.i, %.preheader.preheader.i
  %i.n = phi ptr [ %i.o, %_ZN12QHashPrivate4SpanINS_4NodeI7QStringP5QMenuEEED2Ev.exit.i ], [ %i.m, %.preheader.preheader.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -144 ; 3 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -16      ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN12QHashPrivate4SpanINS_4NodeI7QStringP5QMenuEEED2Ev.exit.i, label %.preheader.i.i.i

bb.f:                                             ; preds = %_ZN12QHashPrivate4NodeI7QStringP5QMenuED2Ev.exit.i.i.i
  %i.r = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN12QHashPrivate4SpanINS_4NodeI7QStringP5QMenuEEED2Ev.exit.i, label %bb.i

.preheader.i.i.i:                                 ; preds = %.preheader.i, %_ZN12QHashPrivate4NodeI7QStringP5QMenuED2Ev.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.aa, %_ZN12QHashPrivate4NodeI7QStringP5QMenuED2Ev.exit.i.i.i ], [ %i.o, %.preheader.i ] ; 2 uses
  %i.t = load i8, ptr %.013.i.i.i, align 1        ; 2 uses
  %.not12.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not12.i.i.i, label %_ZN12QHashPrivate4NodeI7QStringP5QMenuED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i.i
  %i.u = zext i8 %i.t to i64
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr [32 x i8], ptr %i.v, i64 %i.u ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12QHashPrivate4NodeI7QStringP5QMenuED2Ev.exit.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.y = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 1
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_ZN12QHashPrivate4NodeI7QStringP5QMenuED2Ev.exit.i.i.i

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i
  %i.z = load ptr, ptr %i.w, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.z, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN12QHashPrivate4NodeI7QStringP5QMenuED2Ev.exit.i.i.i

_ZN12QHashPrivate4NodeI7QStringP5QMenuED2Ev.exit.i.i.i: ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i, %bb.g, %.preheader.i.i.i
  %i.aa = getelementptr i8, ptr %.013.i.i.i, i64 1 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.aa, %i.p
  br i1 %.not11.i.i.i, label %bb.f, label %.preheader.i.i.i

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #30
  br label %_ZN12QHashPrivate4SpanINS_4NodeI7QStringP5QMenuEEED2Ev.exit.i

_ZN12QHashPrivate4SpanINS_4NodeI7QStringP5QMenuEEED2Ev.exit.i: ; preds = %bb.i, %bb.f, %.preheader.i
  %i.ab = icmp eq ptr %i.o, %i.h
  br i1 %i.ab, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZN12QHashPrivate4SpanINS_4NodeI7QStringP5QMenuEEED2Ev.exit.i, %bb.e
  %i.ac = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef %i.j, i64 noundef %i.ac) #30
  br label %_ZN12QHashPrivate4DataINS_4NodeI7QStringP5QMenuEEED2Ev.exit

_ZN12QHashPrivate4DataINS_4NodeI7QStringP5QMenuEEED2Ev.exit: ; preds = %bb.d, %.loopexit.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 40) #30
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

_ZN9QtPrivate8RefCount5derefEv.exit.thread:       ; preds = %bb.b, %bb.c, %_ZN12QHashPrivate4DataINS_4NodeI7QStringP5QMenuEEED2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN10MainWindow34addDisplayFilterTranslationActionsEP5QMenu(ptr noundef align 8 dereferenceable_or_null(392) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QString, align 16            ; 5 uses
  %3 = alloca %class.QString, align 16            ; 12 uses
  %4 = alloca %class.QString, align 16            ; 16 uses
  %5 = alloca %class.QString, align 16            ; 8 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QString, align 16            ; 8 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QVariant, align 8            ; 7 uses
  %10 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @get_dfilter_translator_list() ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @g_free(ptr noundef %i.d)
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef ptr @_ZN5QMenu12addSeparatorEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %1) ; 0 uses
  %i.i = load ptr, ptr %i.d, align 8
  %.not2983 = icmp eq ptr %i.i, null
  br i1 %.not2983, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr i8, ptr %0, i64 368        ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 384
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN7QStringD2Ev.exit70, %bb.e
  call void @g_free(ptr noundef nonnull %i.d)
  br label %bb.aj

bb.f:                                             ; preds = %.lr.ph, %_ZN7QStringD2Ev.exit70
  %.02684 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %_ZN7QStringD2Ev.exit70 ] ; 3 uses
  %i.q = getelementptr [8 x i8], ptr %i.d, i64 %.02684
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN7QStringC2EPKc.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.f
  %i.s = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.r) #28
  br label %_ZN7QStringC2EPKc.exit

_ZN7QStringC2EPKc.exit:                           ; preds = %bb.f, %.split.i.i
  %.sink5.i.i = phi i64 [ %i.s, %.split.i.i ], [ 0, %bb.f ]
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 %.sink5.i.i, ptr %i.r)
  %i.t = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.t, ptr %3, align 16
  %i.u = load i64, ptr %i.k, align 16
  store i64 %i.u, ptr %i.j, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %4, i8 0, i64 24, i1 false)
  %i.v = icmp eq i64 %.02684, 0
  br i1 %i.v, label %bb.g, label %bb.n

bb.g:                                             ; preds = %_ZN7QStringC2EPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN10MainWindow16staticMetaObjectE, ptr noundef nonnull @.str.76, ptr noundef null, i32 noundef -1)
          to label %_ZN10MainWindow2trEPKcS1_i.exit unwind label %bb.k

end_hunk_0
