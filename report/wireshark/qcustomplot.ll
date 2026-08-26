Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN13QCPLayoutGrid8simplifyEv:bb.a
  br i1 %.not.i2.i, label %bb.h, label %_ZN5QListIdE5clearEv.exit

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bl, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdE5clearEv.exit

bb.i:                                             ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i
  store i64 0, ptr %i.l, align 8
  br label %_ZN5QListIdE5clearEv.exit

_ZN5QListIdE5clearEv.exit:                        ; preds = %bb.b, %bb.i, %bb.h, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i, %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i, %bb.e, %_ZN5QListIdE8removeAtEx.exit
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, -1
  %i.bn = icmp sgt i64 %indvars.iv68, 0
  br i1 %i.bn, label %.preheader54, label %._crit_edge.loopexit, !llvm.loop !215

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.bo = phi i64 [ %i.aa, %.preheader.lr.ph ], [ %i.dh, %.loopexit ] ; 3 uses
  %indvars.iv79 = phi i64 [ %i.ao, %.preheader.lr.ph ], [ %indvars.iv.next80, %.loopexit ] ; 5 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph60, label %.critedge29

.lr.ph60:                                         ; preds = %.preheader
  %i.br = load ptr, ptr %i.aj, align 8
  %wide.trip.count74 = and i64 %i.bo, 2147483647
  br label %bb.k

._crit_edge65:                                    ; preds = %.loopexit, %._crit_edge, %_ZNK13QCPLayoutGrid11columnCountEv.exit
  ret void

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %.critedge29, label %bb.k, !llvm.loop !216

bb.k:                                             ; preds = %.lr.ph60, %bb.j
  %indvars.iv71 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next72, %bb.j ] ; 2 uses
  %i.bs = getelementptr [24 x i8], ptr %i.br, i64 %indvars.iv71
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv79
  %i.bw = load ptr, ptr %i.bv, align 8
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %bb.j, label %.loopexit

.critedge29:                                      ; preds = %bb.j, %.preheader
  %i.bx = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i32, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i42, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i33

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i33: ; preds = %.critedge29
  %i.by = load atomic i32, ptr %i.bx monotonic, align 4
  %i.bz = icmp sgt i32 %i.by, 1
  br i1 %i.bz, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i42, label %_ZN17QArrayDataPointerIdE6detachEPS0_.exit.i.i34

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i42: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i33, %.critedge29
  call void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.ak, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN17QArrayDataPointerIdE6detachEPS0_.exit.i.i34

_ZN17QArrayDataPointerIdE6detachEPS0_.exit.i.i34: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i42, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i33
  %i.ca = load ptr, ptr %i.al, align 8
  %.idx.i.i35 = shl nuw nsw i64 %indvars.iv79, 3  ; 3 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 %.idx.i.i35 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  %i.cd = icmp ne i64 %indvars.iv79, 0            ; 2 uses
  %i.ce = load i64, ptr %i.am, align 8            ; 3 uses
  %.idx4.i.i36 = shl i64 %i.ce, 3                 ; 2 uses
  %i.cf = add nuw nsw i64 %.idx.i.i35, 8          ; 4 uses
  %.not.i.i.i37 = icmp eq i64 %i.cf, %.idx4.i.i36 ; 2 uses
  %or.cond.i.i.i38 = select i1 %i.cd, i1 true, i1 %.not.i.i.i37
  br i1 %or.cond.i.i.i38, label %._crit_edge.i.i.i39, label %bb.l

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIdE6detachEPS0_.exit.i.i34
  store ptr %i.cc, ptr %i.al, align 8
  br label %_ZN5QListIdE8removeAtEx.exit43

._crit_edge.i.i.i39:                              ; preds = %_ZN17QArrayDataPointerIdE6detachEPS0_.exit.i.i34
  br i1 %.not.i.i.i37, label %_ZN5QListIdE8removeAtEx.exit43, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i39
  %gepdiff.i.i40 = sub i64 %.idx4.i.i36, %i.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.cb, ptr noundef align 1 %i.cc, i64 noundef %gepdiff.i.i40, i1 noundef false) #51
  %.pre12.i.i.i41 = load i64, ptr %i.am, align 8
  br label %_ZN5QListIdE8removeAtEx.exit43

_ZN5QListIdE8removeAtEx.exit43:                   ; preds = %bb.l, %._crit_edge.i.i.i39, %bb.m
  %i.cg = phi i64 [ %i.ce, %._crit_edge.i.i.i39 ], [ %.pre12.i.i.i41, %bb.m ], [ %i.ce, %bb.l ]
  %i.ch = add i64 %i.cg, -1
  store i64 %i.ch, ptr %i.am, align 8
  %i.ci = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph62, label %.loopexit

.lr.ph62:                                         ; preds = %_ZN5QListIdE8removeAtEx.exit43, %_ZN5QListIP16QCPLayoutElementE8removeAtEx.exit
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %_ZN5QListIP16QCPLayoutElementE8removeAtEx.exit ], [ 0, %_ZN5QListIdE8removeAtEx.exit43 ] ; 2 uses
  %i.cl = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i44, label %_ZN5QListIS_IP16QCPLayoutElementEE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i: ; preds = %.lr.ph62
  %i.cm = load atomic i32, ptr %i.cl monotonic, align 4
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %_ZN5QListIS_IP16QCPLayoutElementEE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i.i

_ZN5QListIS_IP16QCPLayoutElementEE6detachEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i, %.lr.ph62
  call void @_ZN17QArrayDataPointerI5QListIP16QCPLayoutElementEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS4_(ptr noundef align 8 dereferenceable_or_null(24) %i.an, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i = load ptr, ptr %i.an, align 8          ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i.i: ; preds = %_ZN5QListIS_IP16QCPLayoutElementEE6detachEv.exit.i, %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i
  %i.co = phi ptr [ %.pre.i, %_ZN5QListIS_IP16QCPLayoutElementEE6detachEv.exit.i ], [ %i.cl, %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i ]
  %i.cp = load atomic i32, ptr %i.co monotonic, align 4
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN5QListIS_IP16QCPLayoutElementEEixEx.exit

_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i.i, %_ZN5QListIS_IP16QCPLayoutElementEE6detachEv.exit.i
  call void @_ZN17QArrayDataPointerI5QListIP16QCPLayoutElementEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS4_(ptr noundef align 8 dereferenceable_or_null(24) %i.an, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIS_IP16QCPLayoutElementEEixEx.exit

_ZN5QListIS_IP16QCPLayoutElementEEixEx.exit:      ; preds = %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.thread.i.i.i.i
  %i.cr = load ptr, ptr %i.aj, align 8
  %i.cs = getelementptr [24 x i8], ptr %i.cr, i64 %indvars.iv76 ; 4 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i45, label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i: ; preds = %_ZN5QListIS_IP16QCPLayoutElementEEixEx.exit
  %i.cu = load atomic i32, ptr %i.ct monotonic, align 4
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i, label %_ZN17QArrayDataPointerIP16QCPLayoutElementE6detachEPS2_.exit.i.i

_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i, %_ZN5QListIS_IP16QCPLayoutElementEEixEx.exit
  call void @_ZN17QArrayDataPointerIP16QCPLayoutElementE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.cs, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN17QArrayDataPointerIP16QCPLayoutElementE6detachEPS2_.exit.i.i

_ZN17QArrayDataPointerIP16QCPLayoutElementE6detachEPS2_.exit.i.i: ; preds = %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i, %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i
  %i.cw = getelementptr i8, ptr %i.cs, i64 8      ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.idx.i.i35 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 8      ; 2 uses
  %i.da = getelementptr i8, ptr %i.cs, i64 16     ; 3 uses
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %.idx4.i.i47 = shl i64 %i.db, 3                 ; 2 uses
  %.not.i.i.i48 = icmp eq i64 %i.cf, %.idx4.i.i47 ; 2 uses
  %or.cond.i.i.i49 = select i1 %i.cd, i1 true, i1 %.not.i.i.i48
  br i1 %or.cond.i.i.i49, label %._crit_edge.i.i.i50, label %bb.n

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIP16QCPLayoutElementE6detachEPS2_.exit.i.i
  store ptr %i.cz, ptr %i.cw, align 8
  br label %_ZN5QListIP16QCPLayoutElementE8removeAtEx.exit

._crit_edge.i.i.i50:                              ; preds = %_ZN17QArrayDataPointerIP16QCPLayoutElementE6detachEPS2_.exit.i.i
  br i1 %.not.i.i.i48, label %_ZN5QListIP16QCPLayoutElementE8removeAtEx.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i50
  %gepdiff.i.i51 = sub i64 %.idx4.i.i47, %i.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.cy, ptr noundef align 1 %i.cz, i64 noundef %gepdiff.i.i51, i1 noundef false) #51
  %.pre12.i.i.i52 = load i64, ptr %i.da, align 8
  br label %_ZN5QListIP16QCPLayoutElementE8removeAtEx.exit

_ZN5QListIP16QCPLayoutElementE8removeAtEx.exit:   ; preds = %bb.n, %._crit_edge.i.i.i50, %bb.o
  %i.dc = phi i64 [ %i.db, %._crit_edge.i.i.i50 ], [ %.pre12.i.i.i52, %bb.o ], [ %i.db, %bb.n ]
  %i.dd = add i64 %i.dc, -1
  store i64 %i.dd, ptr %i.da, align 8
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.de = load i64, ptr %i.b, align 8             ; 2 uses
  %sext = shl i64 %i.de, 32
  %i.df = ashr exact i64 %sext, 32
  %i.dg = icmp slt i64 %indvars.iv.next77, %i.df
  br i1 %i.dg, label %.lr.ph62, label %.loopexit, !llvm.loop !217

.loopexit:                                        ; preds = %bb.k, %_ZN5QListIP16QCPLayoutElementE8removeAtEx.exit, %_ZN5QListIdE8removeAtEx.exit43
  %i.dh = phi i64 [ %i.de, %_ZN5QListIP16QCPLayoutElementE8removeAtEx.exit ], [ %i.ci, %_ZN5QListIdE8removeAtEx.exit43 ], [ %i.bo, %bb.k ]
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1
  %i.di = icmp sgt i64 %indvars.iv79, 0
  br i1 %i.di, label %.preheader, label %._crit_edge65, !llvm.loop !218
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListIS_IP16QCPLayoutElementEE8removeAtEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.thread.i.i, label %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i

_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.thread.i.i, label %_ZN17QArrayDataPointerI5QListIP16QCPLayoutElementEE6detachEPS4_.exit.i

_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.thread.i.i: ; preds = %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i, %bb.a
  tail call void @_ZN17QArrayDataPointerI5QListIP16QCPLayoutElementEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS4_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN17QArrayDataPointerI5QListIP16QCPLayoutElementEE6detachEPS4_.exit.i

_ZN17QArrayDataPointerI5QListIP16QCPLayoutElementEE6detachEPS4_.exit.i: ; preds = %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.thread.i.i, %_ZNK17QArrayDataPointerI5QListIP16QCPLayoutElementEE11needsDetachEv.exit.i.i
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr [24 x i8], ptr %i.e, i64 %1 ; 5 uses
  %2 = getelementptr i8, ptr %i.f, i64 24         ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI5QListIP16QCPLayoutElementEEvPT_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN17QArrayDataPointerI5QListIP16QCPLayoutElementEE6detachEPS4_.exit.i
  %i.h = atomicrmw sub ptr %i.g, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.h, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.b, label %_ZSt8_DestroyI5QListIP16QCPLayoutElementEEvPT_.exit.i.i.i.i.i

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i.i.i.i.i.i.i
  %i.i = load ptr, ptr %i.f, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 8, i64 noundef 8) #51
  br label %_ZSt8_DestroyI5QListIP16QCPLayoutElementEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI5QListIP16QCPLayoutElementEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i.i.i.i.i.i.i, %_ZN17QArrayDataPointerI5QListIP16QCPLayoutElementEE6detachEPS4_.exit.i
  %.pre.i = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.j = icmp ne ptr %i.f, %.pre.i
  %i.k = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr [24 x i8], ptr %.pre.i, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %2, %i.m                ; 2 uses
  %or.cond.i.i = select i1 %i.j, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZSt7destroyIP5QListIP16QCPLayoutElementEEvT_S5_.exit._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyI5QListIP16QCPLayoutElementEEvPT_.exit.i.i.i.i.i
  store ptr %2, ptr %i.d, align 8
  br label %_ZN5QListIS_IP16QCPLayoutElementEE6removeExx.exit

_ZSt7destroyIP5QListIP16QCPLayoutElementEEvT_S5_.exit._crit_edge.i.i: ; preds = %_ZSt8_DestroyI5QListIP16QCPLayoutElementEEvPT_.exit.i.i.i.i.i
  br i1 %.not.i.i, label %_ZN5QListIS_IP16QCPLayoutElementEE6removeExx.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt7destroyIP5QListIP16QCPLayoutElementEEvT_S5_.exit._crit_edge.i.i
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 %i.f, ptr noundef align 8 %2, i64 noundef %i.p, i1 noundef false) #51
  %.pre14.i.i = load i64, ptr %i.k, align 8
  br label %_ZN5QListIS_IP16QCPLayoutElementEE6removeExx.exit

_ZN5QListIS_IP16QCPLayoutElementEE6removeExx.exit: ; preds = %bb.c, %_ZSt7destroyIP5QListIP16QCPLayoutElementEEvT_S5_.exit._crit_edge.i.i, %bb.d
  %i.q = phi i64 [ %i.l, %_ZSt7destroyIP5QListIP16QCPLayoutElementEEvT_S5_.exit._crit_edge.i.i ], [ %.pre14.i.i, %bb.d ], [ %i.l, %bb.c ]
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define i64 @_ZNK13QCPLayoutGrid20minimumOuterSizeHintEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(256) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QList.80, align 8            ; 12 uses
  %2 = alloca %class.QList.80, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZNK13QCPLayoutGrid21getMinimumRowColSizesEP5QListIiES2_(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !noalias !219 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !219 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !219
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.a, i32 1 acq_rel, align 4, !noalias !219 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit: ; preds = %bb.b, %bb.c
  %.idx = shl i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr i8, ptr %i.c, i64 %.idx
  %.not55 = icmp eq i64 %.idx, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  %i.h = add i64 %.idx, -4                        ; 2 uses
  %i.i = lshr exact i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 28
  br i1 %min.iters.check, label %.lr.ph.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %i.k = shl i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %i.c, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load75 = load <4 x i32>, ptr %i.n, align 4
  %i.o = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.p = add <4 x i32> %wide.load75, %vec.phi74   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.p, %i.o
  %i.r = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader96

.lr.ph.preheader96:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.047.057.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  %.sroa.841.056.ph = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  %.sroa.047.0.lcssa = phi i32 [ 0, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit ], [ %i.r, %middle.block ], [ %i.ao, %.lr.ph ]
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i:     ; preds = %._crit_edge
  %i.s = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.s, 1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i, %bb.d
  %i.t = load ptr, ptr %2, align 8, !noalias !223 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !223 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !223
  %.not.i.i.i.i.i7 = icmp eq ptr %i.t, null       ; 2 uses
  br i1 %.not.i.i.i.i.i7, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8, label %bb.e

bb.e:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit
  %i.y = atomicrmw add ptr %i.t, i32 1 acq_rel, align 4, !noalias !223 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8

_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit, %bb.e
  %.idx64 = shl i64 %i.x, 2                       ; 3 uses
  %i.z = getelementptr i8, ptr %i.v, i64 %.idx64
  %.not5458 = icmp eq i64 %.idx64, 0
  br i1 %.not5458, label %._crit_edge62, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8
  %i.aa = add i64 %.idx64, -4                     ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.aa, 28
  br i1 %min.iters.check77, label %.lr.ph61.preheader93, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph61.preheader
  %n.vec79 = and i64 %i.ac, 9223372036854775800   ; 3 uses
  %i.ad = shl i64 %n.vec79, 2
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body80 ] ; 2 uses
  %vec.phi82 = phi <4 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.ah, %vector.body80 ]
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.ai, %vector.body80 ]
  %i.af = shl i64 %index81, 2
  %next.gep84 = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load85 = load <4 x i32>, ptr %next.gep84, align 4
  %wide.load86 = load <4 x i32>, ptr %i.ag, align 4
  %i.ah = add <4 x i32> %wide.load85, %vec.phi82  ; 2 uses
  %i.ai = add <4 x i32> %wide.load86, %vec.phi83  ; 2 uses
  %index.next87 = add nuw i64 %index81, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.aj, label %middle.block88, label %vector.body80, !llvm.loop !226

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx89 = add <4 x i32> %i.ai, %i.ah
  %i.ak = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx89) ; 2 uses
  %cmp.n90 = icmp eq i64 %i.ac, %n.vec79
  br i1 %cmp.n90, label %._crit_edge62, label %.lr.ph61.preheader93

.lr.ph61.preheader93:                             ; preds = %.lr.ph61.preheader, %middle.block88
  %.sroa.851.060.ph = phi i32 [ 0, %.lr.ph61.preheader ], [ %i.ak, %middle.block88 ]
  %.sroa.8.059.ph = phi ptr [ %i.v, %.lr.ph61.preheader ], [ %i.ae, %middle.block88 ]
  br label %.lr.ph61

bb.f:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i18, label %_ZN5QListIiED2Ev.exit21, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i19

.lr.ph:                                           ; preds = %.lr.ph.preheader96, %.lr.ph
  %.sroa.047.057 = phi i32 [ %i.ao, %.lr.ph ], [ %.sroa.047.057.ph, %.lr.ph.preheader96 ]
  %.sroa.841.056 = phi ptr [ %i.ap, %.lr.ph ], [ %.sroa.841.056.ph, %.lr.ph.preheader96 ] ; 2 uses
  %i.an = load i32, ptr %.sroa.841.056, align 4
  %i.ao = add i32 %i.an, %.sroa.047.057           ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.841.056, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !227

._crit_edge62:                                    ; preds = %.lr.ph61, %middle.block88, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8
  %.sroa.851.0.lcssa = phi i32 [ 0, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8 ], [ %i.ak, %middle.block88 ], [ %i.ce, %.lr.ph61 ]
  br i1 %.not.i.i.i.i.i7, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i10

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i10:   ; preds = %._crit_edge62
  %i.aq = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4
  %.not.i.i.i11 = icmp eq i32 %i.aq, 1
  br i1 %.not.i.i.i11, label %bb.g, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i10
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.t, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12
end_hunk_0
