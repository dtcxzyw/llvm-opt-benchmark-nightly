Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/mocs_compilation?download=true
inline.NumInlined: 11451
inline.NumDeleted: 4808
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5QListI21QPersistentModelIndexE5clearEv:bb.a

_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.l, i64 noundef 8, i64 noundef 8) #31
  br label %_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev.exit

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.idx2.i = shl i64 %i.c, 3                      ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 %.idx2.i
  %.not4.i.i.i.i = icmp eq i64 %.idx2.i, 0
  br i1 %.not4.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE8truncateEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  tail call void @_ZN21QPersistentModelIndexD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %.05.i.i.i.i) #31
  %i.v = getelementptr i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE8truncateEm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !507

_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE8truncateEm.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  store i64 0, ptr %i.b, align 8
  br label %_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev.exit

_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev.exit: ; preds = %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit.i, %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit.i, %_ZN17QArrayDataPointerI21QPersistentModelIndexE17allocatedCapacityEv.exit, %bb.a, %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE8truncateEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit.thread, label %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit

_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit: ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit.thread

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i = shl i64 %i.f, 3                       ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i
  %.not4.i.i.i.i = icmp eq i64 %.idx.i, 0
  br i1 %.not4.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  tail call void @_ZN21QPersistentModelIndexD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %.05.i.i.i.i) #31
  %i.h = getelementptr i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !507

_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit: ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.i = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 8, i64 noundef 8) #31
  br label %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit.thread

_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit.thread: ; preds = %bb.a, %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit, %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZZN22QtMetaContainerPrivate26QMetaContainerForContainerI5QListI21QPersistentModelIndexEE19getCreateIteratorFnEvENKUlPvNS_23QMetaContainerInterface8PositionEE_clES5_S7_(ptr noundef align 1 dereferenceable_or_null(1) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i8 %2, label %bb.i [
    i8 2, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef dereferenceable_or_null(8) ptr @_Znwm(i64 noundef 8) #34 ; 2 uses
  store ptr null, ptr %i.a, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(8) ptr @_Znwm(i64 noundef 8) #34 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.i.i.i: ; preds = %bb.c
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i, label %bb.d

_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.i.i.i, %bb.c
  invoke void @_ZN17QArrayDataPointerI21QPersistentModelIndexE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  store ptr %i.g, ptr %i.b, align 8
  br label %bb.i

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef dereferenceable_or_null(8) ptr @_Znwm(i64 noundef 8) #34 ; 3 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i8, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i10, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.i.i.i9

_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.i.i.i9: ; preds = %bb.f
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i10, label %bb.g

_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i10: ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.i.i.i9, %bb.f
  invoke void @_ZN17QArrayDataPointerI21QPersistentModelIndexE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.i.i.i9, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i10
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr [8 x i8], ptr %i.n, i64 %i.p
  store ptr %i.q, ptr %i.i, align 8
  br label %bb.i

bb.h:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread.i.i.i10
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %bb.g, %bb.d, %bb.b
  %.06 = phi ptr [ %i.i, %bb.g ], [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.a ]
  ret ptr %.06

bb.j:                                             ; preds = %bb.h, %bb.e
  %.sink = phi ptr [ %i.i, %bb.h ], [ %i.b, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.h, %bb.e ]
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef 8) #33
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress noinline null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI21QPersistentModelIndexE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.QArrayDataPointer.457, align 16 ; 13 uses
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %3, null                     ; 3 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit

_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit: ; preds = %bb.b
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = icmp sgt i32 %i.d, 1
  %i.f = icmp slt i64 %2, 1
  %or.cond3.not = or i1 %i.f, %i.e
  br i1 %or.cond3.not, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI21QPersistentModelIndexE14freeSpaceAtEndEv.exit: ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = add i64 %i.i, 23
  %i.k = and i64 %i.j, -8
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.l, %i.k
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %2
  %i.r = add i64 %i.q, %i.n
  %i.s = tail call { ptr, ptr } @_ZN10QArrayData19reallocateUnalignedEPS_PvxxNS_16AllocationOptionE(ptr noundef nonnull %i.c, ptr noundef %i.h, i64 noundef 8, i64 noundef %i.r, i32 noundef 0) #31 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  %.not.i31 = icmp eq ptr %i.t, null
  br i1 %.not.i31, label %bb.c, label %_ZN9QtPrivate16QMovableArrayOpsI21QPersistentModelIndexE10reallocateExN10QArrayData16AllocationOptionE.exit

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE14freeSpaceAtEndEv.exit
  tail call void @_Z9qBadAllocv() #35
  unreachable

_ZN9QtPrivate16QMovableArrayOpsI21QPersistentModelIndexE10reallocateExN10QArrayData16AllocationOptionE.exit: ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE14freeSpaceAtEndEv.exit
  %i.u = extractvalue { ptr, ptr } %i.s, 0
  store ptr %i.u, ptr %0, align 8
  store ptr %i.t, ptr %i.g, align 8
  br label %bb.p

_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread: ; preds = %bb.b, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN17QArrayDataPointerI21QPersistentModelIndexE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind nonnull writable sret(%struct.QArrayDataPointer.457) align 8 %4, ptr noundef align 8 dereferenceable(24) %0, i64 noundef %2, i32 noundef %1)
  %i.v = icmp sgt i64 %2, 0
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 5 uses
  %.not = icmp eq ptr %i.x, null
  %or.cond41 = select i1 %i.v, i1 %.not, i1 false
  br i1 %or.cond41, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread
  invoke void @_Z9qBadAllocv() #35
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit.thread
  %i.z = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not28 = icmp eq i64 %i.aa, 0
  br i1 %.not28, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = call i64 @llvm.smin.i64(i64 %2, i64 0)
  %spec.select = add i64 %i.aa, %i.ab             ; 2 uses
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i32 = icmp eq ptr %i.ac, null
  br i1 %.not.i32, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit33.thread, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit33

_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit33: ; preds = %bb.h
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = icmp sgt i32 %i.ad, 1
  %or.cond5 = or i1 %i.b, %i.ae
  br i1 %or.cond5, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit33.thread, label %bb.k

_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit33.thread: ; preds = %bb.h, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit33
  %i.af = getelementptr i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.idx42 = shl i64 %spec.select, 3               ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 %.idx42 ; 2 uses
  %i.ai = icmp ne i64 %.idx42, 0
  %i.aj = icmp ult ptr %i.ag, %i.ah
  %or.cond57 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond57, label %.lr.ph.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit

.lr.ph.i:                                         ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit33.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre.i = load i64, ptr %i.ak, align 16
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %.lr.ph.i
  %i.al = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.ap, %.noexc ]
  %.010.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.an, %.noexc ] ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.x, i64 %i.al
  invoke void @_ZN21QPersistentModelIndexC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.am, ptr noundef align 8 dereferenceable(8) %.010.i)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  %i.an = getelementptr i8, ptr %.010.i, i64 8    ; 2 uses
  %i.ao = load i64, ptr %i.ak, align 16
  %i.ap = add i64 %i.ao, 1                        ; 2 uses
  store i64 %i.ap, ptr %i.ak, align 16
  %i.aq = icmp ult ptr %i.an, %i.ah
  br i1 %i.aq, label %bb.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit, !llvm.loop !1417

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit33
  %i.as = getelementptr i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 6 uses
  %.idx = shl i64 %spec.select, 3                 ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %.idx  ; 2 uses
  %i.av = icmp ne i64 %.idx, 0
  %i.aw = icmp ult ptr %i.at, %i.au
  %or.cond58 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond58, label %.lr.ph.i34, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit

.lr.ph.i34:                                       ; preds = %bb.k
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %.pre.i35 = load i64, ptr %5, align 16          ; 2 uses
  %6 = add i64 %.idx, -8                          ; 2 uses
  %7 = and i64 %6, 8
  %lcmp.mod.not.not = icmp eq i64 %7, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i34.a, label %.prol.loopexit

.lr.ph.i34.a:                                     ; preds = %.lr.ph.i34
  %8 = getelementptr [8 x i8], ptr %i.x, i64 %.pre.i35
  %9 = load ptr, ptr %i.at, align 8
  store ptr null, ptr %i.at, align 8
  store ptr %9, ptr %8, align 8
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %.pre.i35.a = load i64, ptr %5, align 16
  %10 = add i64 %.pre.i35.a, 1                    ; 2 uses
  store i64 %10, ptr %5, align 16
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.lr.ph.i34.a, %.lr.ph.i34
  %.unr = phi i64 [ %.pre.i35, %.lr.ph.i34 ], [ %10, %.lr.ph.i34.a ]
  %.010.i36.unr = phi ptr [ %i.at, %.lr.ph.i34 ], [ %i.ax, %.lr.ph.i34.a ]
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit, label %bb.l

bb.l:                                             ; preds = %.prol.loopexit, %bb.l
  %i.ay = phi i64 [ %i.bd, %bb.l ], [ %.unr, %.prol.loopexit ]
  %.010.i36 = phi ptr [ %i.bb, %bb.l ], [ %.010.i36.unr, %.prol.loopexit ] ; 4 uses
  %12 = getelementptr [8 x i8], ptr %i.x, i64 %i.ay
  %13 = load ptr, ptr %.010.i36, align 8
  store ptr null, ptr %.010.i36, align 8
  store ptr %13, ptr %12, align 8
  %14 = getelementptr i8, ptr %.010.i36, i64 8    ; 2 uses
  %15 = load i64, ptr %5, align 16
  %16 = add i64 %15, 1                            ; 2 uses
  store i64 %16, ptr %5, align 16
  %i.az = getelementptr [8 x i8], ptr %i.x, i64 %16
  %i.ba = load ptr, ptr %14, align 8
  store ptr null, ptr %14, align 8
  store ptr %i.ba, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %.010.i36, i64 16 ; 2 uses
  %i.bc = load i64, ptr %5, align 16
  %i.bd = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bd, ptr %5, align 16
  %i.be = icmp ult ptr %i.bb, %i.au
  br i1 %i.be, label %bb.l, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit, !llvm.loop !1418

_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit: ; preds = %.prol.loopexit, %bb.l, %.noexc, %bb.k, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE11needsDetachEv.exit33.thread, %bb.g
  %i.bf = load ptr, ptr %0, align 8               ; 3 uses
  %i.bg = getelementptr i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = load <2 x ptr>, ptr %4, align 16
  store ptr %i.bf, ptr %4, align 16
  store <2 x ptr> %i.bi, ptr %0, align 8
  store ptr %i.bh, ptr %i.w, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bk = load i64, ptr %i.z, align 8             ; 2 uses
  %i.bl = load i64, ptr %i.bj, align 16
  store i64 %i.bl, ptr %i.z, align 8
  store i64 %i.bk, ptr %i.bj, align 16
  br i1 %i.b, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit
  %i.bm = getelementptr i8, ptr %3, i64 8
  %i.bn = load <2 x ptr>, ptr %3, align 8
  %i.bo = load ptr, ptr %3, align 8
  store ptr %i.bf, ptr %3, align 8
  store ptr %i.bh, ptr %i.bm, align 8
  store <2 x ptr> %i.bn, ptr %4, align 16
  %i.bp = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bk, ptr %i.bp, align 8
  store i64 %i.bq, ptr %i.bj, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit
  %i.br = phi ptr [ %i.bo, %bb.m ], [ %i.bf, %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10copyAppendEPKS1_S4_.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev.exit, label %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit.i

_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit.i: ; preds = %bb.n
  %i.bs = atomicrmw sub ptr %i.br, i32 1 acq_rel, align 4
  %.not.i37 = icmp eq i32 %i.bs, 1
  br i1 %.not.i37, label %bb.o, label %_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit.i
  %i.bt = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.bu = load i64, ptr %i.bj, align 16
  %.idx.i.i = shl i64 %i.bu, 3                    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %i.bt, %bb.o ] ; 2 uses
  call void @_ZN21QPersistentModelIndexD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %.05.i.i.i.i.i) #31
  %i.bw = getelementptr i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !507

_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.o
  %i.bx = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bx, i64 noundef 8, i64 noundef 8) #31
  br label %_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev.exit

_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev.exit: ; preds = %bb.n, %_ZN17QArrayDataPointerI21QPersistentModelIndexE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI21QPersistentModelIndexE10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.p

bb.p:                                             ; preds = %_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev.exit, %_ZN9QtPrivate16QMovableArrayOpsI21QPersistentModelIndexE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void

bb.q:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.y, %bb.f ]
  call void @_ZN17QArrayDataPointerI21QPersistentModelIndexED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI21QPersistentModelIndexE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.457) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
  %i.j = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = add i64 %i.m, 23
  %i.o = and i64 %i.n, -8
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add i64 %i.h, %i.r
  %i.t = sub i64 %i.g, %i.s
  %.ph = select i1 %i.j, i64 %i.t, i64 %i.r
  %i.u = sub i64 %i.i, %.ph                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  br label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit
  %i.y = phi i64 [ %i.e, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.u, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit.thread ]
  %i.aa = icmp sle i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.ac = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 8, i64 noundef %i.y, i32 noundef %i.ab) #31 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not = icmp ne ptr %i.ad, null
  %i.ae = icmp ne ptr %i.ac, null
  %i.af = and i1 %i.ae, %.not
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit31
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE5flagsEv.exit, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerI21QPersistentModelIndexE5flagsEv.exit

_ZNK17QArrayDataPointerI21QPersistentModelIndexE5flagsEv.exit: ; preds = %bb.d, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerI21QPersistentModelIndexE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN21QPersistentModelIndexC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(8) ptr @_ZN21QPersistentModelIndexaSERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate16QMovableArrayOpsI21QPersistentModelIndexE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QPersistentModelIndex, align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
end_hunk_0
