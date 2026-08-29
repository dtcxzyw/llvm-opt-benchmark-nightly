Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lte_rlc_statistics_dialog?download=true
inline.NumInlined: 1117
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN17QArrayDataPointerI8QVariantE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_:bb.a
bb.h:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI8QVariantxEEvPT_T0_S3_.exit.i.i
  %i.aj = load ptr, ptr %3, align 8               ; 3 uses
  %i.ak = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.al = load i64, ptr %i.v, align 8
  %i.am = getelementptr [32 x i8], ptr %i.ak, i64 %i.al
  %i.an = icmp uge ptr %i.aj, %i.ak
  %i.ao = icmp ult ptr %i.aj, %i.am
  %spec.select.i.i.i = and i1 %i.an, %i.ao
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN17QArrayDataPointerI8QVariantE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr [32 x i8], ptr %i.aj, i64 %i.ac
  store ptr %i.ap, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI8QVariantE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

_ZN17QArrayDataPointerI8QVariantE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI8QVariantxEEvPT_T0_S3_.exit.i.i, %bb.h, %bb.i
  store ptr %i.ad, ptr %i.n, align 8
  br label %bb.j

_ZN17QArrayDataPointerI8QVariantE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit: ; preds = %bb.c, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit
  %i.aq = tail call noundef zeroext i1 @_ZN17QArrayDataPointerI8QVariantE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  br i1 %i.aq, label %bb.j, label %.critedge

.critedge:                                        ; preds = %_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit.i, %bb.d, %bb.a, %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit, %_ZN17QArrayDataPointerI8QVariantE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit
  tail call void @_ZN17QArrayDataPointerI8QVariantE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI8QVariantE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, %_ZN17QArrayDataPointerI8QVariantE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit, %.critedge, %bb.b, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN17QArrayDataPointerI8QVariantE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit, label %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit.i

_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 5                   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.k
  %i.o = sub i64 %i.c, %i.n
  br label %_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.p = phi i64 [ %i.c, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.o, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.q = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.q, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = mul i64 %i.s, 3
  %i.u = shl i64 %i.p, 1
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit
  %i.w = icmp ne i32 %1, 1
  %.not18 = icmp slt i64 %.0.i20, %2
  %or.cond19 = or i1 %i.w, %.not18
  br i1 %or.cond19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = mul i64 %i.y, 3
  %i.aa = icmp slt i64 %i.z, %i.p
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = add i64 %2, %i.y
  %i.ac = sub i64 %i.p, %i.ab
  %i.ad = sdiv i64 %i.ac, 2
  %i.ae = tail call noundef i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  %i.af = add i64 %i.ae, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.ag = phi i64 [ %i.s, %bb.b ], [ %i.y, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %i.ah = sub i64 %.0, %.0.i24                    ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.idx.i = shl i64 %i.ah, 5                      ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = icmp eq i64 %i.ag, 0
  br i1 %i.am, label %_ZN9QtPrivate20q_relocate_overlap_nI8QVariantxEEvPT_T0_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq i64 %.idx.i, 0
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond.i.i = or i1 %i.ao, %i.an
  %i.ap = icmp eq ptr %i.ak, null
  %or.cond3.i.i = or i1 %i.ap, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI8QVariantxEEvPT_T0_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = shl i64 %i.ag, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.aj, i64 noundef %i.aq, i1 noundef false) #23
  br label %_ZN9QtPrivate20q_relocate_overlap_nI8QVariantxEEvPT_T0_S3_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nI8QVariantxEEvPT_T0_S3_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerI8QVariantE8relocateExPPKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI8QVariantxEEvPT_T0_S3_.exit.i
  %i.ar = load ptr, ptr %3, align 8               ; 3 uses
  %i.as = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.at = load i64, ptr %i.al, align 8
  %i.au = getelementptr [32 x i8], ptr %i.as, i64 %i.at
  %i.av = icmp uge ptr %i.ar, %i.as
  %i.aw = icmp ult ptr %i.ar, %i.au
  %spec.select.i.i = and i1 %i.av, %i.aw
  br i1 %spec.select.i.i, label %bb.j, label %_ZN17QArrayDataPointerI8QVariantE8relocateExPPKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr [32 x i8], ptr %i.ar, i64 %i.ah
  store ptr %i.ax, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI8QVariantE8relocateExPPKS0_.exit

_ZN17QArrayDataPointerI8QVariantE8relocateExPPKS0_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI8QVariantxEEvPT_T0_S3_.exit.i, %bb.i, %bb.j
  store ptr %i.ak, ptr %i.ai, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerI8QVariantE8relocateExPPKS0_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerI8QVariantE8relocateExPPKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: mustprogress noinline null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI8QVariantE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.QArrayDataPointer.22, align 16 ; 13 uses
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %3, null                     ; 3 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit

_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit: ; preds = %bb.b
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = icmp sgt i32 %i.d, 1
  %i.f = icmp slt i64 %2, 1
  %or.cond3.not = or i1 %i.f, %i.e
  br i1 %or.cond3.not, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit: ; preds = %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = add i64 %i.i, 23
  %i.k = and i64 %i.j, -8
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.l, %i.k
  %i.n = ashr exact i64 %i.m, 5
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %2
  %i.r = add i64 %i.q, %i.n
  %i.s = tail call { ptr, ptr } @_ZN10QArrayData19reallocateUnalignedEPS_PvxxNS_16AllocationOptionE(ptr noundef nonnull %i.c, ptr noundef %i.h, i64 noundef 32, i64 noundef %i.r, i32 noundef 0) #23 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  %.not.i31 = icmp eq ptr %i.t, null
  br i1 %.not.i31, label %bb.c, label %_ZN9QtPrivate16QMovableArrayOpsI8QVariantE10reallocateExN10QArrayData16AllocationOptionE.exit

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit
  tail call void @_Z9qBadAllocv() #28
  unreachable

_ZN9QtPrivate16QMovableArrayOpsI8QVariantE10reallocateExN10QArrayData16AllocationOptionE.exit: ; preds = %_ZNK17QArrayDataPointerI8QVariantE14freeSpaceAtEndEv.exit
  %i.u = extractvalue { ptr, ptr } %i.s, 0
  store ptr %i.u, ptr %0, align 8
  store ptr %i.t, ptr %i.g, align 8
  br label %bb.p

_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread: ; preds = %bb.b, %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN17QArrayDataPointerI8QVariantE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind nonnull writable sret(%struct.QArrayDataPointer.22) align 8 %4, ptr noundef align 8 dereferenceable(24) %0, i64 noundef %2, i32 noundef %1)
  %i.v = icmp sgt i64 %2, 0
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 5 uses
  %.not = icmp eq ptr %i.x, null
  %or.cond41 = select i1 %i.v, i1 %.not, i1 false
  br i1 %or.cond41, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread
  invoke void @_Z9qBadAllocv() #28
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread
  %i.z = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not28 = icmp eq i64 %i.aa, 0
  br i1 %.not28, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = call i64 @llvm.smin.i64(i64 %2, i64 0)
  %spec.select = add i64 %i.aa, %i.ab             ; 2 uses
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i32 = icmp eq ptr %i.ac, null
  br i1 %.not.i32, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit33.thread, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit33

_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit33: ; preds = %bb.h
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = icmp sgt i32 %i.ad, 1
  %or.cond5 = or i1 %i.b, %i.ae
  br i1 %or.cond5, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit33.thread, label %bb.k

_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit33.thread: ; preds = %bb.h, %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit33
  %i.af = getelementptr i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.idx42 = shl i64 %spec.select, 5               ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 %.idx42 ; 2 uses
  %i.ai = icmp ne i64 %.idx42, 0
  %i.aj = icmp ult ptr %i.ag, %i.ah
  %or.cond57 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond57, label %.lr.ph.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit

.lr.ph.i:                                         ; preds = %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit33.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre.i = load i64, ptr %i.ak, align 16
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %.lr.ph.i
  %i.al = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.ap, %.noexc ]
  %.010.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.an, %.noexc ] ; 2 uses
  %i.am = getelementptr [32 x i8], ptr %i.x, i64 %i.al
  invoke void @_ZN8QVariantC1ERKS_(ptr noundef align 8 dereferenceable_or_null(32) %i.am, ptr noundef align 8 dereferenceable(32) %.010.i)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  %i.an = getelementptr i8, ptr %.010.i, i64 32   ; 2 uses
  %i.ao = load i64, ptr %i.ak, align 16
  %i.ap = add i64 %i.ao, 1                        ; 2 uses
  store i64 %i.ap, ptr %i.ak, align 16
  %i.aq = icmp ult ptr %i.an, %i.ah
  br i1 %i.aq, label %bb.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit, !llvm.loop !31

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit33
  %i.as = getelementptr i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 7 uses
  %.idx = shl i64 %spec.select, 5                 ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %.idx  ; 2 uses
  %i.av = icmp ne i64 %.idx, 0
  %i.aw = icmp ult ptr %i.at, %i.au
  %or.cond58 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond58, label %.lr.ph.i34, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit

.lr.ph.i34:                                       ; preds = %bb.k
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %.pre.i35 = load i64, ptr %5, align 16          ; 2 uses
  %6 = add i64 %.idx, -32                         ; 2 uses
  %7 = and i64 %6, 32
  %lcmp.mod.not.not = icmp eq i64 %7, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i34.a, label %.prol.loopexit

.lr.ph.i34.a:                                     ; preds = %.lr.ph.i34
  %8 = getelementptr [32 x i8], ptr %i.x, i64 %.pre.i35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) dereferenceable_or_null(32) %8, ptr noundef align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.prol, align 8
  %i.ax = getelementptr i8, ptr %i.at, i64 32
  %.pre.i35.a = load i64, ptr %5, align 16
  %9 = add i64 %.pre.i35.a, 1                     ; 2 uses
  store i64 %9, ptr %5, align 16
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.lr.ph.i34.a, %.lr.ph.i34
  %.unr = phi i64 [ %.pre.i35, %.lr.ph.i34 ], [ %9, %.lr.ph.i34.a ]
  %.010.i36.unr = phi ptr [ %i.at, %.lr.ph.i34 ], [ %i.ax, %.lr.ph.i34.a ]
  %10 = icmp eq i64 %6, 0
  br i1 %10, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit, label %bb.l

bb.l:                                             ; preds = %.prol.loopexit, %bb.l
  %i.ay = phi i64 [ %i.bc, %bb.l ], [ %.unr, %.prol.loopexit ]
  %.010.i36 = phi ptr [ %i.ba, %bb.l ], [ %.010.i36.unr, %.prol.loopexit ] ; 6 uses
  %11 = getelementptr [32 x i8], ptr %i.x, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) dereferenceable_or_null(32) %11, ptr noundef align 8 dereferenceable(32) %.010.i36, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.010.i36, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.010.i36, i64 24
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %12 = getelementptr i8, ptr %.010.i36, i64 32   ; 2 uses
  %13 = load i64, ptr %5, align 16
  %14 = add i64 %13, 1                            ; 2 uses
  store i64 %14, ptr %5, align 16
  %i.az = getelementptr [32 x i8], ptr %i.x, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) dereferenceable_or_null(32) %i.az, ptr noundef align 8 dereferenceable(32) %12, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.a = getelementptr i8, ptr %.010.i36, i64 56
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.a, align 8
  %i.ba = getelementptr i8, ptr %.010.i36, i64 64 ; 2 uses
  %i.bb = load i64, ptr %5, align 16
  %i.bc = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bc, ptr %5, align 16
  %i.bd = icmp ult ptr %i.ba, %i.au
  br i1 %i.bd, label %bb.l, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit, !llvm.loop !32

_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit: ; preds = %.prol.loopexit, %bb.l, %.noexc, %bb.k, %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit33.thread, %bb.g
  %i.be = load ptr, ptr %0, align 8               ; 3 uses
  %i.bf = getelementptr i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = load <2 x ptr>, ptr %4, align 16
  store ptr %i.be, ptr %4, align 16
  store <2 x ptr> %i.bh, ptr %0, align 8
  store ptr %i.bg, ptr %i.w, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bj = load i64, ptr %i.z, align 8             ; 2 uses
  %i.bk = load i64, ptr %i.bi, align 16
  store i64 %i.bk, ptr %i.z, align 8
  store i64 %i.bj, ptr %i.bi, align 16
  br i1 %i.b, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit
  %i.bl = getelementptr i8, ptr %3, i64 8
  %i.bm = load <2 x ptr>, ptr %3, align 8
  %i.bn = load ptr, ptr %3, align 8
  store ptr %i.be, ptr %3, align 8
  store ptr %i.bg, ptr %i.bl, align 8
  store <2 x ptr> %i.bm, ptr %4, align 16
  %i.bo = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  store i64 %i.bj, ptr %i.bo, align 8
  store i64 %i.bp, ptr %i.bi, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit
  %i.bq = phi ptr [ %i.bn, %bb.m ], [ %i.be, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI8QVariantED2Ev.exit, label %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i

_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i: ; preds = %bb.n
  %i.br = atomicrmw sub ptr %i.bq, i32 1 acq_rel, align 4
  %.not.i37 = icmp eq i32 %i.br, 1
  br i1 %.not.i37, label %bb.o, label %_ZN17QArrayDataPointerI8QVariantED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i
  %i.bs = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.bt = load i64, ptr %i.bi, align 16
  %.idx.i.i = shl i64 %i.bt, 5                    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %i.bs, %bb.o ] ; 2 uses
  call void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32) %.05.i.i.i.i.i) #23
  %i.bv = getelementptr i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.o
  %i.bw = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bw, i64 noundef 32, i64 noundef 8) #23
  br label %_ZN17QArrayDataPointerI8QVariantED2Ev.exit

_ZN17QArrayDataPointerI8QVariantED2Ev.exit:       ; preds = %bb.n, %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

bb.p:                                             ; preds = %_ZN17QArrayDataPointerI8QVariantED2Ev.exit, %_ZN9QtPrivate16QMovableArrayOpsI8QVariantE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void

bb.q:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.y, %bb.f ]
  call void @_ZN17QArrayDataPointerI8QVariantED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI8QVariantE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.22) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
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
  %i.r = ashr exact i64 %i.q, 5                   ; 2 uses
  %i.s = add i64 %i.h, %i.r
  %i.t = sub i64 %i.g, %i.s
  %.ph = select i1 %i.j, i64 %i.t, i64 %i.r
  %i.u = sub i64 %i.i, %.ph                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  br label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit
  %i.y = phi i64 [ %i.e, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.u, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread ]
  %i.aa = icmp sle i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ac = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8, i64 noundef %i.y, i32 noundef %i.ab) #23 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not = icmp ne ptr %i.ad, null
  %i.ae = icmp ne ptr %i.ac, null
  %i.af = and i1 %i.ae, %.not
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit, label %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [32 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [32 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit

_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit:  ; preds = %bb.d, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare void @_Z9qBadAllocv() local_unnamed_addr #18

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI8QVariantED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.thread, label %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit

_ZN17QArrayDataPointerI8QVariantE5derefEv.exit:   ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
end_hunk_0
