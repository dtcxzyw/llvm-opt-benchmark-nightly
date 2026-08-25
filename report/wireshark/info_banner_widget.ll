Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/info_banner_widget?download=true
inline.NumInlined: 2736
inline.NumDeleted: 1108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN17QArrayDataPointerI6QColorE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_:bb.a
bb.h:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i.i
  %i.aj = load ptr, ptr %3, align 8               ; 3 uses
  %i.ak = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.al = load i64, ptr %i.v, align 8
  %i.am = getelementptr [16 x i8], ptr %i.ak, i64 %i.al
  %i.an = icmp uge ptr %i.aj, %i.ak
  %i.ao = icmp ult ptr %i.aj, %i.am
  %spec.select.i.i.i = and i1 %i.an, %i.ao
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr [16 x i8], ptr %i.aj, i64 %i.ac
  store ptr %i.ap, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i.i, %bb.h, %bb.i
  store ptr %i.ad, ptr %i.n, align 8
  br label %bb.j

_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit: ; preds = %bb.c, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit
  %i.aq = tail call noundef zeroext i1 @_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  br i1 %i.aq, label %bb.j, label %.critedge

.critedge:                                        ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit.i, %bb.d, %bb.a, %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit, %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit
  tail call void @_ZN17QArrayDataPointerI6QColorE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, %_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit, %.critedge, %bb.b, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN17QArrayDataPointerI6QColorE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit, label %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i

_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.k
  %i.o = sub i64 %i.c, %i.n
  br label %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.p = phi i64 [ %i.c, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.o, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.q = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.q, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = mul i64 %i.s, 3
  %i.u = shl i64 %i.p, 1
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
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
  %.idx.i = shl i64 %i.ah, 4                      ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = icmp eq i64 %i.ag, 0
  br i1 %i.am, label %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq i64 %.idx.i, 0
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond.i.i = or i1 %i.ao, %i.an
  %i.ap = icmp eq ptr %i.ak, null
  %or.cond3.i.i = or i1 %i.ap, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = shl i64 %i.ag, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.aj, i64 noundef %i.aq, i1 noundef false) #28
  br label %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i
  %i.ar = load ptr, ptr %3, align 8               ; 3 uses
  %i.as = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.at = load i64, ptr %i.al, align 8
  %i.au = getelementptr [16 x i8], ptr %i.as, i64 %i.at
  %i.av = icmp uge ptr %i.ar, %i.as
  %i.aw = icmp ult ptr %i.ar, %i.au
  %spec.select.i.i = and i1 %i.av, %i.aw
  br i1 %spec.select.i.i, label %bb.j, label %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr [16 x i8], ptr %i.ar, i64 %i.ah
  store ptr %i.ax, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit

_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI6QColorxEEvPT_T0_S3_.exit.i, %bb.i, %bb.j
  store ptr %i.ak, ptr %i.ai, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerI6QColorE8relocateExPPKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: mustprogress noinline null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI6QColorE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.QArrayDataPointer.16, align 16 ; 14 uses
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %3, null                     ; 3 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit: ; preds = %bb.b
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = icmp sgt i32 %i.d, 1
  %i.f = icmp slt i64 %2, 1
  %or.cond3.not = or i1 %i.f, %i.e
  br i1 %or.cond3.not, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit: ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = add i64 %i.i, 23
  %i.k = and i64 %i.j, -8
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.l, %i.k
  %i.n = ashr exact i64 %i.m, 4
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %2
  %i.r = add i64 %i.q, %i.n
  %i.s = tail call { ptr, ptr } @_ZN10QArrayData19reallocateUnalignedEPS_PvxxNS_16AllocationOptionE(ptr noundef nonnull %i.c, ptr noundef %i.h, i64 noundef 16, i64 noundef %i.r, i32 noundef 0) #28 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  %.not.i28 = icmp eq ptr %i.t, null
  br i1 %.not.i28, label %bb.c, label %_ZN9QtPrivate16QMovableArrayOpsI6QColorE10reallocateExN10QArrayData16AllocationOptionE.exit

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  tail call void @_Z9qBadAllocv() #34
  unreachable

_ZN9QtPrivate16QMovableArrayOpsI6QColorE10reallocateExN10QArrayData16AllocationOptionE.exit: ; preds = %_ZNK17QArrayDataPointerI6QColorE14freeSpaceAtEndEv.exit
  %i.u = extractvalue { ptr, ptr } %i.s, 0
  store ptr %i.u, ptr %0, align 8
  store ptr %i.t, ptr %i.g, align 8
  br label %bb.p

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread: ; preds = %bb.b, %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN17QArrayDataPointerI6QColorE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind nonnull writable sret(%struct.QArrayDataPointer.16) align 8 %4, ptr noundef align 8 dereferenceable(24) %0, i64 noundef %2, i32 noundef %1)
  %i.v = icmp sgt i64 %2, 0
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 7 uses
  %.not = icmp eq ptr %i.x, null
  %or.cond42 = select i1 %i.v, i1 %.not, i1 false
  br i1 %or.cond42, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread
  invoke void @_Z9qBadAllocv() #34
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 16               ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit, label %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i

_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i:   ; preds = %bb.f
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %.not.i29 = icmp eq i32 %i.aa, 1
  br i1 %.not.i29, label %bb.g, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i
  %i.ab = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ab, i64 noundef 16, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI6QColorED2Ev.exit

_ZN17QArrayDataPointerI6QColorED2Ev.exit:         ; preds = %bb.f, %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread
  %i.ac = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.not26 = icmp eq i64 %i.ad, 0
  br i1 %.not26, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = call i64 @llvm.smin.i64(i64 %2, i64 0)
  %spec.select = add i64 %i.ad, %i.ae             ; 2 uses
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i30 = icmp eq ptr %i.af, null
  br i1 %.not.i30, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31.thread, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31: ; preds = %bb.i
  %i.ag = load atomic i32, ptr %i.af monotonic, align 4
  %i.ah = icmp sgt i32 %i.ag, 1
  %or.cond5 = or i1 %i.b, %i.ah
  br i1 %or.cond5, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31.thread, label %bb.k

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31.thread: ; preds = %bb.i, %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31
  %i.ai = getelementptr i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  %.idx43 = shl i64 %spec.select, 4               ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx43 ; 2 uses
  %i.al = icmp ne i64 %.idx43, 0
  %i.am = icmp ult ptr %i.aj, %i.ak
  %or.cond58 = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond58, label %.lr.ph.i, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit

.lr.ph.i:                                         ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31.thread
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %.pre.i = load i64, ptr %5, align 16            ; 2 uses
  %6 = add i64 %.idx43, -16                       ; 2 uses
  %7 = and i64 %6, 16
  %lcmp.mod65.not.not = icmp eq i64 %7, 0
  br i1 %lcmp.mod65.not.not, label %.lr.ph.i.a, label %.prol.loopexit63

.lr.ph.i.a:                                       ; preds = %.lr.ph.i
  %8 = getelementptr [16 x i8], ptr %i.x, i64 %.pre.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.an = getelementptr i8, ptr %i.aj, i64 16
  %.pre.i.a = load i64, ptr %5, align 16
  %9 = add i64 %.pre.i.a, 1                       ; 2 uses
  store i64 %9, ptr %5, align 16
  br label %.prol.loopexit63

.prol.loopexit63:                                 ; preds = %.lr.ph.i.a, %.lr.ph.i
  %.unr66 = phi i64 [ %.pre.i, %.lr.ph.i ], [ %9, %.lr.ph.i.a ]
  %.010.i.unr = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.an, %.lr.ph.i.a ]
  %10 = icmp eq i64 %6, 0
  br i1 %10, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit, label %bb.j

bb.j:                                             ; preds = %.prol.loopexit63, %bb.j
  %i.ao = phi i64 [ %i.as, %bb.j ], [ %.unr66, %.prol.loopexit63 ]
  %.010.i = phi ptr [ %i.aq, %bb.j ], [ %.010.i.unr, %.prol.loopexit63 ] ; 3 uses
  %11 = getelementptr [16 x i8], ptr %i.x, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %11, ptr noundef align 4 dereferenceable(16) %.010.i, i64 16, i1 false)
  %12 = getelementptr i8, ptr %.010.i, i64 16
  %13 = load i64, ptr %5, align 16
  %14 = add i64 %13, 1                            ; 2 uses
  store i64 %14, ptr %5, align 16
  %i.ap = getelementptr [16 x i8], ptr %i.x, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.ap, ptr noundef align 4 dereferenceable(16) %12, i64 16, i1 false)
  %i.aq = getelementptr i8, ptr %.010.i, i64 32   ; 2 uses
  %i.ar = load i64, ptr %5, align 16
  %i.as = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.as, ptr %5, align 16
  %i.at = icmp ult ptr %i.aq, %i.ak
  br i1 %i.at, label %bb.j, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit, !llvm.loop !138

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31
  %i.au = getelementptr i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 5 uses
  %.idx = shl i64 %spec.select, 4                 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 %.idx  ; 2 uses
  %i.ax = icmp ne i64 %.idx, 0
  %i.ay = icmp ult ptr %i.av, %i.aw
  %or.cond59 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond59, label %.lr.ph.i32, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit

.lr.ph.i32:                                       ; preds = %bb.k
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %.pre.i33 = load i64, ptr %15, align 16         ; 2 uses
  %16 = add i64 %.idx, -16                        ; 2 uses
  %17 = and i64 %16, 16
  %lcmp.mod.not.not = icmp eq i64 %17, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i32.a, label %.prol.loopexit

.lr.ph.i32.a:                                     ; preds = %.lr.ph.i32
  %18 = getelementptr [16 x i8], ptr %i.x, i64 %.pre.i33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %18, ptr noundef align 4 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.az = getelementptr i8, ptr %i.av, i64 16
  %.pre.i33.a = load i64, ptr %15, align 16
  %19 = add i64 %.pre.i33.a, 1                    ; 2 uses
  store i64 %19, ptr %15, align 16
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.lr.ph.i32.a, %.lr.ph.i32
  %.unr = phi i64 [ %.pre.i33, %.lr.ph.i32 ], [ %19, %.lr.ph.i32.a ]
  %.010.i34.unr = phi ptr [ %i.av, %.lr.ph.i32 ], [ %i.az, %.lr.ph.i32.a ]
  %20 = icmp eq i64 %16, 0
  br i1 %20, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit, label %bb.l

bb.l:                                             ; preds = %.prol.loopexit, %bb.l
  %i.ba = phi i64 [ %i.be, %bb.l ], [ %.unr, %.prol.loopexit ]
  %.010.i34 = phi ptr [ %i.bc, %bb.l ], [ %.010.i34.unr, %.prol.loopexit ] ; 3 uses
  %21 = getelementptr [16 x i8], ptr %i.x, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %21, ptr noundef align 4 dereferenceable(16) %.010.i34, i64 16, i1 false)
  %22 = getelementptr i8, ptr %.010.i34, i64 16
  %23 = load i64, ptr %15, align 16
  %24 = add i64 %23, 1                            ; 2 uses
  store i64 %24, ptr %15, align 16
  %i.bb = getelementptr [16 x i8], ptr %i.x, i64 %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.bb, ptr noundef align 4 dereferenceable(16) %22, i64 16, i1 false)
  %i.bc = getelementptr i8, ptr %.010.i34, i64 32 ; 2 uses
  %i.bd = load i64, ptr %15, align 16
  %i.be = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.be, ptr %15, align 16
  %i.bf = icmp ult ptr %i.bc, %i.aw
  br i1 %i.bf, label %bb.l, label %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit, !llvm.loop !139

_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit: ; preds = %.prol.loopexit, %bb.l, %.prol.loopexit63, %bb.j, %bb.k, %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit31.thread, %bb.h
  %i.bg = load ptr, ptr %0, align 8               ; 3 uses
  %i.bh = getelementptr i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = load <2 x ptr>, ptr %4, align 16
  store ptr %i.bg, ptr %4, align 16
  store <2 x ptr> %i.bj, ptr %0, align 8
  store ptr %i.bi, ptr %i.w, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bl = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.bm = load i64, ptr %i.bk, align 16
  store i64 %i.bm, ptr %i.ac, align 8
  store i64 %i.bl, ptr %i.bk, align 16
  br i1 %i.b, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit
  %i.bn = getelementptr i8, ptr %3, i64 8
  %i.bo = load <2 x ptr>, ptr %3, align 8
  %i.bp = load ptr, ptr %3, align 8
  store ptr %i.bg, ptr %3, align 8
  store ptr %i.bi, ptr %i.bn, align 8
  store <2 x ptr> %i.bo, ptr %4, align 16
  %i.bq = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8
  store i64 %i.bl, ptr %i.bq, align 8
  store i64 %i.br, ptr %i.bk, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit
  %i.bs = phi ptr [ %i.bp, %bb.m ], [ %i.bg, %_ZN9QtPrivate16QGenericArrayOpsI6QColorE10copyAppendEPKS1_S4_.exit ] ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i35, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit38, label %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i36

_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i36: ; preds = %bb.n
  %i.bt = atomicrmw sub ptr %i.bs, i32 1 acq_rel, align 4
  %.not.i37 = icmp eq i32 %i.bt, 1
  br i1 %.not.i37, label %bb.o, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit38

bb.o:                                             ; preds = %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i36
  %i.bu = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bu, i64 noundef 16, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI6QColorED2Ev.exit38

_ZN17QArrayDataPointerI6QColorED2Ev.exit38:       ; preds = %bb.n, %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i36, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.p

bb.p:                                             ; preds = %_ZN17QArrayDataPointerI6QColorED2Ev.exit38, %_ZN9QtPrivate16QMovableArrayOpsI6QColorE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI6QColorE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.16) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
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
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = add i64 %i.h, %i.r
  %i.t = sub i64 %i.g, %i.s
  %.ph = select i1 %i.j, i64 %i.t, i64 %i.r
  %i.u = sub i64 %i.i, %.ph                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  br label %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit
  %i.y = phi i64 [ %i.e, %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.u, %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit.thread ]
  %i.aa = icmp sle i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ac = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 8, i64 noundef %i.y, i32 noundef %i.ab) #28 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not = icmp ne ptr %i.ad, null
  %i.ae = icmp ne ptr %i.ac, null
  %i.af = and i1 %i.ae, %.not
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit31
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerI6QColorE5flagsEv.exit, label %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [16 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerI6QColorE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerI6QColorE5flagsEv.exit

_ZNK17QArrayDataPointerI6QColorE5flagsEv.exit:    ; preds = %bb.d, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerI6QColorE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerI6QColorE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerI6QColorE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerI6QColorE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare { ptr, ptr } @_ZN10QArrayData19reallocateUnalignedEPS_PvxxNS_16AllocationOptionE(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1, ptr noundef align 8 dereferenceable(248) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.BannerSlide, align 8        ; 37 uses
  %4 = alloca %"struct.QtPrivate::QGenericArrayOps<BannerSlide>::Inserter", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %i.e
  br i1 %i.f, label %_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit, label %bb.d

_ZNK17QArrayDataPointerI11BannerSlideE14freeSpaceAtEndEv.exit: ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = add i64 %i.k, 23
  %i.m = and i64 %i.l, -8
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.m
end_hunk_0
