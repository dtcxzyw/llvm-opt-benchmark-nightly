Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbolev-graph-builder?download=true
inline.NumInlined: 65942
inline.NumDeleted: 17507
loop-unroll.NumCompletelyUnrolled: 517
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 591
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor9BuildJumpEPNS0_6maglev10BasicBlockE:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %1, %i.ax
  br i1 %i.ay, label %_ZNSt13unordered_mapIPKN2v88internal6maglev10BasicBlockEPNS1_8compiler10turboshaft5BlockENS0_4base4hashIS5_EESt8equal_toIS5_ENS1_13ZoneAllocatorISt4pairIKS5_S9_EEEE4findERSH_.exit, label %bb.l, !llvm.loop !2747

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer16HeaderIsBypassedEPKNS0_6maglev10BasicBlockE.exit
  %i.az = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ba = xor i64 %i.az, -1
  %i.bb = shl i64 %i.az, 21
  %i.bc = add i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 24
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = mul i64 %i.be, 265                      ; 2 uses
  %i.bg = lshr i64 %i.bf, 14
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, 21                       ; 2 uses
  %i.bj = lshr i64 %i.bi, 28
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = mul i64 %i.bk, 2147483649               ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = urem i64 %i.bl, %i.bn                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bs, align 8            ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = icmp eq i64 %i.bl, %i.bw
  %i.by = load ptr, ptr %i.bu, align 8
  %i.bz = icmp eq ptr %1, %i.by
  %i.ca = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %i.ca, label %_ZNSt13unordered_mapIPKN2v88internal6maglev10BasicBlockEPNS1_8compiler10turboshaft5BlockENS0_4base4hashIS5_EESt8equal_toIS5_ENS1_13ZoneAllocatorISt4pairIKS5_S9_EEEE4findERSH_.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cc = icmp eq i64 %i.bl, %i.ci
  %i.cd = load ptr, ptr %i.cb, align 8
  %i.ce = icmp eq ptr %1, %i.cd
  %i.cf = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %i.cf, label %_ZNSt13unordered_mapIPKN2v88internal6maglev10BasicBlockEPNS1_8compiler10turboshaft5BlockENS0_4base4hashIS5_EESt8equal_toIS5_ENS1_13ZoneAllocatorISt4pairIKS5_S9_EEEE4findERSH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2430

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.020.i.i.i.i = phi ptr [ %i.cg, %bb.p ], [ %i.bt, %bb.o ]
  %i.cg = load ptr, ptr %.020.i.i.i.i, align 8    ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = urem i64 %i.ci, %i.bn
  %.not19.i.i.i.i = icmp eq i64 %i.cj, %i.bo
  br i1 %.not19.i.i.i.i, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2430

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.q
  br label %.loopexit, !llvm.loop !2430

_ZNSt13unordered_mapIPKN2v88internal6maglev10BasicBlockEPNS1_8compiler10turboshaft5BlockENS0_4base4hashIS5_EESt8equal_toIS5_ENS1_13ZoneAllocatorISt4pairIKS5_S9_EEEE4findERSH_.exit: ; preds = %bb.p, %bb.m, %bb.o
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.m ], [ %i.bt, %bb.o ], [ %i.cg, %bb.p ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  br label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.thread

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.l, %..loopexit_crit_edge21.i.i.i.i, %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 88 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp eq i64 %i.cp, %i.cr
  br i1 %i.cs, label %bb.r, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit, !prof !7

bb.r:                                             ; preds = %.loopexit
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.cn)
  %.pre.i = load i64, ptr %i.co, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit: ; preds = %.loopexit, %bb.r
  %i.ct = phi i64 [ %i.cp, %.loopexit ], [ %.pre.i, %bb.r ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cv = add i64 %i.ct, 1
  store i64 %i.cv, ptr %i.co, align 8
  %i.cw = load ptr, ptr %i.cu, align 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ct
  %i.cy = load ptr, ptr %i.cx, align 8            ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.cy, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store i32 -1, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 52
  store i32 -1, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  store i32 0, ptr %i.de, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dc, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.dd, align 8
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_PNS2_8compiler10turboshaft5BlockEENS2_13ZoneAllocatorISD_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store ptr %i.cy, ptr %i.df, align 8
  br label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.thread

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.g, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a, %_ZNSt13unordered_mapIPKN2v88internal6maglev10BasicBlockEPNS1_8compiler10turboshaft5BlockENS0_4base4hashIS5_EESt8equal_toIS5_ENS1_13ZoneAllocatorISt4pairIKS5_S9_EEEE4findERSH_.exit, %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit
  %.1 = phi ptr [ %i.cy, %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit ], [ %i.e, %bb.a ], [ %i.e, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit ], [ %i.cl, %_ZNSt13unordered_mapIPKN2v88internal6maglev10BasicBlockEPNS1_8compiler10turboshaft5BlockENS0_4base4hashIS5_EESt8equal_toIS5_ENS1_13ZoneAllocatorISt4pairIKS5_S9_EEEE4findERSH_.exit ], [ %i.e, %..loopexit_crit_edge21.i.i.i.i.i ], [ %i.e, %bb.e ], [ %i.e, %bb.g ], [ %i.e, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit, label %bb.s, !prof !7

bb.s:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %.1, i64 52
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp ne i32 %i.dk, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dn = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.dm, ptr noundef nonnull %.1, i1 noundef zeroext %i.dl), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit: ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.thread, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor25MakePhiMaybePermuteInputsEPNS0_6maglev9ValueNodeEiNS2_9OptionalVINS2_3AnyEEE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.v8::base::SmallVector", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = icmp ugt i32 %i.i, 16
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %4, i64 noundef %i.j)
  %.pre.i = load ptr, ptr %4, align 8
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.m = phi ptr [ %.pre.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j ; 3 uses
  %i.o = icmp ugt ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = ptrtoaddr ptr %i.m to i64
  %i.r = shl nuw nsw i64 %i.j, 2
  %i.s = add i64 %i.r, %i.q
  %i.t = add i64 %i.s, -4
  %i.u = sub i64 %i.t, %i.p
  %i.v = and i64 %i.u, -4
  %i.w = add i64 %i.v, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.w, i1 false)
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.c
  store ptr %i.n, ptr %i.c, align 8
  %i.x = icmp sgt i32 %2, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 -8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 512
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre31.pre = load ptr, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit
  %.pre31 = phi ptr [ %.pre31.pre, %._crit_edge.loopexit ], [ %i.n, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit ] ; 2 uses
  %.not23 = icmp eq i32 %3, -1
  %.pre29 = load ptr, ptr %4, align 8             ; 3 uses
  br i1 %.not23, label %bb.l, label %bb.k

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ae = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4            ; 4 uses
  %.not = icmp eq i32 %i.ag, -1
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.h, !prof !7

bb.f:                                             ; preds = %bb.e
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 16 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.ak, align 4 ; 3 uses
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp ule i32 %i.an, %.sroa.02.0.copyload.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ap, align 8
  %i.aq = icmp ult i32 %.sroa.02.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i
  %i.ar = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.g, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor11MapPhiInputENS0_6maglev5InputEi.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = icmp eq i32 %i.at, -1
  %i.av = add i32 %i.at, %i.ag
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.ad, align 8
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  %.0.i.i.i.i = select i1 %i.au, ptr %i.ak, ptr %i.ay
  %.sroa.02.0.copyload.i7.i.i = load i32, ptr %.0.i.i.i.i, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor11MapPhiInputENS0_6maglev5InputEi.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ah, ptr %i.a, align 8
  %i.az = load ptr, ptr %i.f, align 8
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapEPKNS0_6maglev8NodeBaseEb.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.bb, align 4
  %.pre26.pre = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapEPKNS0_6maglev8NodeBaseEb.exit.i.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapEPKNS0_6maglev8NodeBaseEb.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre26 = phi ptr [ %.pre26.pre, %bb.i ], [ %i.ae, %bb.h ]
  %.sroa.01.0.i.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i, %bb.i ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre26, i64 %indvars.iv
  %.pre27 = load i32, ptr %.phi.trans.insert, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor11MapPhiInputENS0_6maglev5InputEi.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor11MapPhiInputENS0_6maglev5InputEi.exit: ; preds = %bb.f, %bb.g, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapEPKNS0_6maglev8NodeBaseEb.exit.i.i
  %i.bc = phi i32 [ %.pre27, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapEPKNS0_6maglev8NodeBaseEb.exit.i.i ], [ %i.ag, %bb.g ], [ %i.ag, %bb.f ]
  %.sroa.06.1.i.i = phi i32 [ %.sroa.01.0.i.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapEPKNS0_6maglev8NodeBaseEb.exit.i.i ], [ %.sroa.02.0.copyload.i7.i.i, %bb.g ], [ %.sroa.02.0.copyload.i.i.i, %bb.f ]
  %i.bd = sext i32 %i.bc to i64
  %i.be = load ptr, ptr %4, align 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %.sroa.06.1.i.i, ptr %i.bf, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor11MapPhiInputENS0_6maglev5InputEi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !2748

bb.k:                                             ; preds = %._crit_edge
  %i.bg = ptrtoint ptr %.pre31 to i64
  %i.bh = ptrtoint ptr %.pre29 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = getelementptr i8, ptr %.pre29, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  store i32 %3, ptr %i.bk, align 4
  %.pre28 = load ptr, ptr %4, align 8
  %.pre30 = load ptr, ptr %i.c, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.bl = phi ptr [ %.pre30, %bb.k ], [ %.pre31, %._crit_edge ]
  %i.bm = phi ptr [ %.pre28, %bb.k ], [ %.pre29, %._crit_edge ] ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %sum.shift.i = lshr i64 %i.bs, 40
  %i.bt = trunc i64 %sum.shift.i to i8
  %i.bu = and i8 %i.bt, 7
  switch i8 %i.bu, label %bb.q [
    i8 0, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor25RegisterRepresentationForENS0_6maglev19ValueRepresentationE.exit
    i8 1, label %bb.m
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor25RegisterRepresentationForENS0_6maglev19ValueRepresentationE.exit

bb.n:                                             ; preds = %bb.l, %bb.l
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor25RegisterRepresentationForENS0_6maglev19ValueRepresentationE.exit

bb.o:                                             ; preds = %bb.l
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor25RegisterRepresentationForENS0_6maglev19ValueRepresentationE.exit

bb.p:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.q:                                             ; preds = %bb.l
  unreachable

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor25RegisterRepresentationForENS0_6maglev19ValueRepresentationE.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i = phi i8 [ 1, %bb.o ], [ 0, %bb.m ], [ 3, %bb.n ], [ 4, %bb.l ]
  %i.bv = load ptr, ptr %i.f, align 8
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit, label %bb.r, !prof !7

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor25RegisterRepresentationForENS0_6maglev19ValueRepresentationE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.by = call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS3_INS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerES3_S5_S7_EEEEEEEEEEEEEEEE9ReducePhiENS9_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(144) %i.bx, ptr %i.bm, i64 %i.bq, i8 %.sroa.0.0.i)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE3PhiENS5_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor25RegisterRepresentationForENS0_6maglev19ValueRepresentationE.exit, %bb.r
  %.sroa.05.0.i.i = phi i32 [ %i.by, %bb.r ], [ -1, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor25RegisterRepresentationForENS0_6maglev19ValueRepresentationE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i32 %.sroa.05.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.a, %i.k
  br i1 %i.l, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %i.a, %i.p
  br i1 %i.m, label %.loopexit30, label %.lr.ph.i.i, !llvm.loop !2432

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !2432

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !2432

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.s = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef %i.d, i64 noundef %i.x, i64 noundef 1) #27 ; 2 uses
  %i.z = extractvalue { i8, i64 } %i.y, 0
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ab = extractvalue { i8, i64 } %i.y, 1
  tail call void @_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab)
  %i.ac = load i64, ptr %i.c, align 8
  %i.ad = urem i64 %i.b, %i.ac
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.ad, %bb.e ], [ %i.e, %.loopexit ] ; 2 uses
  %i.ae = load ptr, ptr %0, align 8               ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.0.i19
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
end_hunk_0
