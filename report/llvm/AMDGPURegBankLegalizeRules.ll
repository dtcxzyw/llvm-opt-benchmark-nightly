Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPURegBankLegalizeRules?download=true
inline.NumInlined: 5015
inline.NumDeleted: 887
loop-unroll.NumCompletelyUnrolled: 132
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_Z8LLTToBIdN4llvm3LLTE:bb.a
  br i1 %i.e, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 5764607531624169504, ptr %5, align 8
  %i.f = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.f, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 5764607527329202240, ptr %6, align 8
  %i.g = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %i.g, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.05.0.copyload = load i64, ptr %1, align 8, !tbaa !45
  %i.h = and i64 %.sroa.05.0.copyload, -17592186044416
  %i.i = icmp eq i64 %i.h, 4612811918334230528
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %i.i, label %bb.m, label %bb.h

.critedge2:                                       ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 5764607531624169520, ptr %7, align 8
  %i.j = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.j, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i64 5764607531624169536, ptr %8, align 8
  %i.k = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  br i1 %i.k, label %.critedge4, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 5764607540214104096, ptr %9, align 8
  %i.l = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %i.l, label %.critedge4, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 5764607527329202304, ptr %10, align 8
  %i.m = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
  br i1 %i.m, label %.critedge4, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !45
  %i.n = and i64 %.sroa.0.0.copyload, -17592186044416
  %i.o = icmp eq i64 %i.n, 4613937818241073152
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %spec.select = select i1 %i.o, i32 81, i32 0
  br label %bb.m

.critedge4:                                       ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge4, %bb.h, %bb.g, %.critedge2, %bb.c, %.critedge
  %.0 = phi i32 [ %spec.select, %bb.l ], [ 78, %bb.c ], [ 79, %bb.g ], [ 80, %bb.h ], [ 78, %.critedge ], [ 79, %.critedge2 ], [ 81, %.critedge4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm6AMDGPU19SetOfRulesForOpcode16findMappingForMIERKNS_12MachineInstrERKNS_19MachineRegisterInfoERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEE(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45   ; 4 uses
  %i.g = icmp eq i32 %i.b, 2
  %i.h = icmp slt i32 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.f, 2147483647                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.k = load i32, ptr %i.j, align 8, !tbaa !30
  %i.l = icmp ugt i32 %i.k, %i.i
  br i1 %i.l, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.n = zext nneg i32 %i.i to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !45
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.04.0.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.r = tail call noundef i32 @_Z8LLTToBIdN4llvm3LLTE(i64 %.sroa.04.0.i) ; 3 uses
  %i.s = load i32, ptr %i.a, align 8, !tbaa !96
  switch i32 %i.s, label %.thread [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  switch i32 %i.r, label %.thread [
    i32 3, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread
    i32 2, label %bb.n
    i32 4, label %bb.o
    i32 47, label %bb.p
  ]

bb.g:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %switch.tableidx.i = add nsw i32 %i.r, -78      ; 2 uses
  %i.t = icmp ult i32 %switch.tableidx.i, 4
  br i1 %i.t, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread, label %.thread

bb.h:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  switch i32 %i.r, label %.thread [
    i32 3, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread
    i32 48, label %bb.n
    i32 50, label %bb.o
    i32 51, label %bb.p
  ]

bb.i:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.j, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

bb.j:                                             ; preds = %bb.i
  %i.u = and i32 %i.f, 2147483647                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.w = load i32, ptr %i.v, align 8, !tbaa !30
  %i.x = icmp ugt i32 %i.w, %i.u
  br i1 %i.x, label %bb.k, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.z = zext nneg i32 %i.u to i64
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !45
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.04.0.i36 = phi i64 [ %i.ac, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  %i.ad = tail call noundef i32 @_Z7LLTToIdN4llvm3LLTE(i64 %.sroa.04.0.i36) ; 2 uses
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !96
  switch i32 %i.ae, label %.thread [
    i32 1, label %bb.l
    i32 3, label %bb.m
  ]

bb.l:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37
  switch i32 %i.ad, label %.thread [
    i32 3, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread
    i32 2, label %bb.n
    i32 4, label %bb.o
    i32 47, label %bb.p
  ]

bb.m:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37
  switch i32 %i.ad, label %.thread [
    i32 3, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread
    i32 48, label %bb.n
    i32 50, label %bb.o
    i32 51, label %bb.p
  ]

bb.n:                                             ; preds = %bb.f, %bb.h, %bb.m, %bb.l
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread

bb.o:                                             ; preds = %bb.f, %bb.h, %bb.m, %bb.l
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread

bb.p:                                             ; preds = %bb.f, %bb.h, %bb.m, %bb.l
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread

_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread: ; preds = %bb.g, %bb.l, %bb.n, %bb.o, %bb.p, %bb.m, %bb.h, %bb.f
  %.03345 = phi i32 [ %switch.tableidx.i, %bb.g ], [ 0, %bb.f ], [ 0, %bb.l ], [ 1, %bb.n ], [ 2, %bb.o ], [ 3, %bb.p ], [ 0, %bb.m ], [ 0, %bb.h ]
  %i.af = tail call noundef zeroext i1 @_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEE16isDivergentAtDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 %i.f) #20
  %i.ag = zext nneg i32 %.03345 to i64
  %.v.v = select i1 %i.af, i64 792, i64 536
  %.v = getelementptr inbounds nuw i8, ptr %0, i64 %.v.v
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %.v, i64 %i.ag
  br label %.loopexit

.thread:                                          ; preds = %bb.g, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.h, %bb.f, %bb.m, %bb.l, %bb.a
  %i.ai = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %.idx = shl nuw nsw i64 %i.al, 7
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx
  %.not3567 = icmp eq i32 %i.ak, 0
  br i1 %.not3567, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread
  %.068 = phi ptr [ %i.ai, %.lr.ph ], [ %i.bn, %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread ] ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.068, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %select.unfold.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %select.unfold.i ], [ 0, %bb.q ] ; 3 uses
  %i.aq = phi i32 [ %i.bd, %select.unfold.i ], [ %i.ap, %bb.q ]
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.at = load ptr, ptr %.068, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !85 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %select.unfold.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.ax = load i32, ptr %i.as, align 8
  %i.ay = and i32 %i.ax, 255
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.s, label %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !45
  %i.bc = tail call noundef zeroext i1 @_Z21matchUniformityAndLLTN4llvm8RegisterENS_6AMDGPU26UniformityLLTOpPredicateIDERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE(i32 %i.bb, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(520) %2)
  br i1 %i.bc, label %.select.unfold_crit_edge.i, label %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread

.select.unfold_crit_edge.i:                       ; preds = %bb.s
  %.pre.i = load i32, ptr %i.ao, align 8, !tbaa !30
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %.select.unfold_crit_edge.i, %.lr.ph.i
  %i.bd = phi i32 [ %.pre.i, %.select.unfold_crit_edge.i ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %select.unfold.i, %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.068, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %.not.i.i.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.not.i, label %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread56, label %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit

_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread56: ; preds = %._crit_edge.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.068, i64 64
  br label %.loopexit

_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit: ; preds = %._crit_edge.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.068, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.068, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !88
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(80) %1) #20, !inline_history !320
  br i1 %i.bm, label %.loopexit.split.loop.exit65, label %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread

_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread: ; preds = %bb.s, %bb.r, %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.068, i64 128 ; 2 uses
  %.not35 = icmp eq ptr %i.bn, %i.am
  br i1 %.not35, label %.loopexit, label %bb.q

.loopexit.split.loop.exit65:                      ; preds = %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.068, i64 64
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread, %.loopexit.split.loop.exit65, %.thread, %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread, %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread56
  %.5 = phi ptr [ %i.ah, %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit.thread ], [ %i.bi, %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread56 ], [ %i.bo, %.loopexit.split.loop.exit65 ], [ null, %.thread ], [ null, %_ZNK4llvm6AMDGPU16PredicateMapping5matchERKNS_12MachineInstrERKNS_21GenericUniformityInfoINS_17GenericSSAContextINS_15MachineFunctionEEEEERKNS_19MachineRegisterInfoE.exit.thread ]
  ret ptr %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, 4) i32 @_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  switch i32 %i.b, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 3, label %bb.i
    i32 2, label %bb.e
    i32 4, label %bb.f
    i32 47, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %1, -78              ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 4
  %switch.tableidx. = select i1 %i.c, i32 %switch.tableidx, i32 -1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 3, label %bb.i
    i32 48, label %bb.e
    i32 50, label %bb.f
    i32 51, label %bb.g
  ]

bb.e:                                             ; preds = %bb.b, %bb.d
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.d
  br label %bb.i

bb.g:                                             ; preds = %bb.b, %bb.d
  br label %bb.i

bb.h:                                             ; preds = %bb.b, %bb.d
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ %switch.tableidx., %bb.c ], [ 3, %bb.g ], [ -1, %bb.h ], [ 2, %bb.f ], [ -1, %bb.a ], [ 1, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6AMDGPU19SetOfRulesForOpcode7addRuleENS0_19RegBankLegalizeRuleE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef align 8 dereferenceable(128) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %.not.i.i.not.i = icmp ult i32 %i.b, %i.f
  %.pre3.i = load ptr, ptr %0, align 8, !tbaa !29 ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6AMDGPU19RegBankLegalizeRuleELb0EE9push_backERKS2_.exit, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %.pre3.i, i64 %i.c
  %i.h = icmp uge ptr %1, %.pre3.i
  %i.i = icmp ult ptr %1, %i.g
  %spec.select.i.i.i.i.i = and i1 %i.h, %i.i
  br i1 %spec.select.i.i.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !100

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %.pre3.i to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_6AMDGPU19RegBankLegalizeRuleELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %i.m = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.l
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6AMDGPU19RegBankLegalizeRuleELb0EE9push_backERKS2_.exit

.critedge.i.i.i:                                  ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_6AMDGPU19RegBankLegalizeRuleELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6AMDGPU19RegBankLegalizeRuleELb0EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_6AMDGPU19RegBankLegalizeRuleELb0EE9push_backERKS2_.exit: ; preds = %bb.a, %bb.c, %.critedge.i.i.i
  %i.o = phi ptr [ %.pre3.i, %bb.a ], [ %i.m, %bb.c ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %1, %bb.a ], [ %i.n, %bb.c ], [ %1, %.critedge.i.i.i ]
  %i.p = load i32, ptr %i.a, align 8, !tbaa !30
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.q
  tail call void @_ZN4llvm6AMDGPU19RegBankLegalizeRuleC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %i.r, ptr noundef nonnull align 8 dereferenceable(128) %.016.i.i.i)
  %i.s = load i32, ptr %i.a, align 8, !tbaa !30
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.a, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6AMDGPU19SetOfRulesForOpcode20addFastRuleDivergentENS0_26UniformityLLTOpPredicateIDENS0_17RegBankLLTMappingE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %1, ptr nofree noundef align 8 dereferenceable(64) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  switch i32 %i.b, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 3, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit
    i32 2, label %bb.e
    i32 4, label %bb.f
    i32 47, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %switch.tableidx.i = add i32 %1, -78            ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx.i, 4
  %switch.tableidx..i = select i1 %i.c, i32 %switch.tableidx.i, i32 -1
  %i.d = sext i32 %switch.tableidx..i to i64
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit

bb.d:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 3, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit
    i32 48, label %bb.e
    i32 50, label %bb.f
    i32 51, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit

bb.f:                                             ; preds = %bb.d, %bb.b
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit

bb.g:                                             ; preds = %bb.d, %bb.b
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit

bb.h:                                             ; preds = %bb.d, %bb.b
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit

_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ 0, %bb.d ], [ %i.d, %bb.c ], [ 3, %bb.g ], [ -1, %bb.h ], [ 2, %bb.f ], [ -1, %bb.a ], [ 1, %bb.e ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.f = getelementptr inbounds [64 x i8], ptr %i.e, i64 %.0.i ; 3 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_6AMDGPU24RegBankLLTMappingApplyIDEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(60) %i.f, ptr noundef nonnull align 8 dereferenceable(60) %2) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_6AMDGPU24RegBankLLTMappingApplyIDEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.l, ptr %i.m, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6AMDGPU19SetOfRulesForOpcode18addFastRuleUniformENS0_26UniformityLLTOpPredicateIDENS0_17RegBankLLTMappingE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %1, ptr nofree noundef align 8 dereferenceable(64) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  switch i32 %i.b, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 3, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit
    i32 2, label %bb.e
    i32 4, label %bb.f
    i32 47, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %switch.tableidx.i = add i32 %1, -78            ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx.i, 4
  %switch.tableidx..i = select i1 %i.c, i32 %switch.tableidx.i, i32 -1
  %i.d = sext i32 %switch.tableidx..i to i64
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit

bb.d:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 3, label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit
    i32 48, label %bb.e
    i32 50, label %bb.f
    i32 51, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  br label %_ZNK4llvm6AMDGPU19SetOfRulesForOpcode20getFastPredicateSlotENS0_26UniformityLLTOpPredicateIDE.exit

bb.f:                                             ; preds = %bb.d, %bb.b
end_hunk_0
