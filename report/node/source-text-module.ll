inline.NumInlined: 2605
inline.NumDeleted: 1302
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal16SourceTextModule5ResetEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  store atomic volatile i64 %i.bn, ptr %i.bp monotonic, align 8
  %i.bq = trunc i64 %i.bn to i1
  br i1 %i.bq, label %bb.m, label %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE19set_regular_importsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

bb.m:                                             ; preds = %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE19set_regular_exportsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.br = and i64 %i.ah, -262144
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load i64, ptr %i.bs, align 262144       ; 2 uses
  %i.bu = and i64 %i.bt, 32
  %.not.i.i.i26 = icmp eq i64 %i.bu, 0
  %i.bv = and i64 %i.bt, 25
  %.not38.i.i.i27 = icmp eq i64 %i.bv, 0
  br i1 %.not38.i.i.i27, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bw = and i64 %i.bn, -262144
  %i.bx = inttoptr i64 %i.bw to ptr
  %.sroa.0.0.copyload.i28.i.i.i28 = load i64, ptr %i.bx, align 262144
  %i.by = and i64 %.sroa.0.0.copyload.i28.i.i.i28, 25
  %.not39.i.i.i29 = icmp eq i64 %i.by, 0
  br i1 %.not39.i.i.i29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ah, i64 noundef %i.bo, i64 %i.bn) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i26, label %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE19set_regular_importsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ah, i64 %i.bo, i64 %i.bn) #18
  br label %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE19set_regular_importsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE19set_regular_importsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE19set_regular_exportsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, %bb.p, %bb.q
  %i.bz = load i64, ptr %i.ag, align 8            ; 5 uses
  %i.ca = add i64 %i.ah, 79                       ; 3 uses
  %i.cb = inttoptr i64 %i.ca to ptr
  store atomic volatile i64 %i.bz, ptr %i.cb monotonic, align 8
  %i.cc = trunc i64 %i.bz to i1
  br i1 %i.cc, label %bb.r, label %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE21set_requested_modulesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

bb.r:                                             ; preds = %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE19set_regular_importsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.cd = and i64 %i.ah, -262144
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i64, ptr %i.ce, align 262144       ; 2 uses
  %i.cg = and i64 %i.cf, 32
  %.not.i.i.i32 = icmp eq i64 %i.cg, 0
  %i.ch = and i64 %i.cf, 25
  %.not38.i.i.i33 = icmp eq i64 %i.ch, 0
  br i1 %.not38.i.i.i33, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ci = and i64 %i.bz, -262144
  %i.cj = inttoptr i64 %i.ci to ptr
  %.sroa.0.0.copyload.i28.i.i.i34 = load i64, ptr %i.cj, align 262144
  %i.ck = and i64 %.sroa.0.0.copyload.i28.i.i.i34, 25
  %.not39.i.i.i35 = icmp eq i64 %i.ck, 0
  br i1 %.not39.i.i.i35, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ah, i64 noundef %i.ca, i64 %i.bz) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i.i.i32, label %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE21set_requested_modulesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.v, !prof !6

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ah, i64 %i.ca, i64 %i.bz) #18
  br label %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE21set_requested_modulesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE21set_requested_modulesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal31TorqueGeneratedSourceTextModuleINS0_16SourceTextModuleENS0_6ModuleEE19set_regular_importsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, %bb.u, %bb.v
  %i.cl = add i64 %i.ah, 111
  %i.cm = inttoptr i64 %i.cl to ptr
  store atomic volatile i64 -4294967296, ptr %i.cm monotonic, align 8
  %i.cn = add i64 %i.ah, 119
  %i.co = inttoptr i64 %i.cn to ptr
  store atomic volatile i64 -4294967296, ptr %i.co monotonic, align 8
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16SourceTextModule31GetStalledTopLevelAwaitMessagesEPNS0_7IsolateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.628") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Zone", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::UnorderedModuleSet", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::DirectHandleVector", align 8 ; 9 uses
  %6 = alloca %"class.v8::internal::MessageLocation", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.3", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 58832
  %i.b = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.b, ptr noundef nonnull @__func__._ZN2v88internal16SourceTextModule31GetStalledTopLevelAwaitMessagesEPNS0_7IsolateE) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = ptrtoint ptr %3 to i64
  store i64 %i.c, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 2) #18 ; 5 uses
  %i.k = load i64, ptr %i.f, align 8
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal18UnorderedModuleSetC2EPNS0_4ZoneE.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.j, 1
  br i1 %i.m, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.e, align 8
  br label %_ZNSt10_HashtableIN2v88internal6HandleINS1_6ModuleEEES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityENS1_17ModuleHandleEqualENS1_16ModuleHandleHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %4, align 8                ; 3 uses
  %i.o = icmp ult i64 %i.j, 2305843009213693951
  br i1 %i.o, label %bb.f, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw i64 %i.j, 3                      ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_6HandleINS2_6ModuleEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 noundef %i.p) #18
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_6HandleINS2_6ModuleEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_6HandleINS2_6ModuleEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.w = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = add i64 %i.w, %i.p
  store i64 %i.y, ptr %i.s, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.p, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal6HandleINS1_6ModuleEEES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityENS1_17ModuleHandleEqualENS1_16ModuleHandleHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIN2v88internal6HandleINS1_6ModuleEEES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityENS1_17ModuleHandleEqualENS1_16ModuleHandleHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_6HandleINS2_6ModuleEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.e, %bb.c ], [ %i.x, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_6HandleINS2_6ModuleEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i, ptr %i.d, align 8
  store i64 %i.j, ptr %i.f, align 8
  br label %_ZN2v88internal18UnorderedModuleSetC2EPNS0_4ZoneE.exit

_ZN2v88internal18UnorderedModuleSetC2EPNS0_4ZoneE.exit: ; preds = %bb.a, %_ZNSt10_HashtableIN2v88internal6HandleINS1_6ModuleEEES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityENS1_17ModuleHandleEqualENS1_16ModuleHandleHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal16SourceTextModule34InnerGetStalledTopLevelAwaitModuleEPNS0_7IsolateEPNS0_18UnorderedModuleSetEPNS0_18DirectHandleVectorIS1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = load ptr, ptr %5, align 8               ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq ptr %i.aa, %i.ab
  br i1 %i.af, label %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread, label %bb.h

_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i.thread: ; preds = %_ZN2v88internal18UnorderedModuleSetC2EPNS0_4ZoneE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr null, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  store ptr null, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  br label %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEED2Ev.exit

bb.h:                                             ; preds = %_ZN2v88internal18UnorderedModuleSetC2EPNS0_4ZoneE.exit
  %i.ak = icmp ugt i64 %i.ae, 9223372036854775800
  br i1 %i.ak, label %bb.i, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #17
  unreachable

.lr.ph:                                           ; preds = %bb.h
  %i.al = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #20 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ae
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 664
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEE9push_backERKNS0_12DirectHandleIS2_EE.exit
  %.0.lcssa.i.i.i.i.i.i.i52.pn191.le = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i52.pn to i64 ; 2 uses
  %.sroa.078.3189.le = ptrtoaddr ptr %.sroa.078.3 to i64
  %.pre = load ptr, ptr %i.z, align 8             ; 3 uses
  %.pre143 = load ptr, ptr %5, align 8            ; 5 uses
  %.pre145 = ptrtoint ptr %.pre to i64            ; 2 uses
  %.pre146 = ptrtoint ptr %.pre143 to i64         ; 3 uses
  %.pre148 = sub i64 %.pre145, %.pre146           ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i31 = icmp eq ptr %.pre, %.pre143
  br i1 %.not.i.i.i.i.i.i31, label %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33.thread, label %bb.j

_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33.thread: ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr null, i64 %.pre148
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.aq, ptr %i.ar, align 8
  br label %_ZN2v88internal18DirectHandleVectorINS0_16SourceTextModuleEEC2ERKS3_.exit.i37

bb.j:                                             ; preds = %._crit_edge
  %i.as = icmp ugt i64 %.pre148, 9223372036854775800
  br i1 %i.as, label %bb.k, label %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33: ; preds = %bb.j
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre148) #20 ; 6 uses
  store ptr %i.at, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.pre148
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = sub i64 %.pre145, %.pre146
  %i.ax = add i64 %i.aw, -8                       ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.ax, 72
  %i.ba = ptrtoaddr ptr %i.at to i64
  %i.bb = sub i64 %.pre146, %i.ba
  %diff.check171 = icmp ugt i64 %i.bb, -32
  %or.cond = or i1 %min.iters.check173, %diff.check171
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i34.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33
  %n.vec176 = and i64 %i.az, 4611686018427387900  ; 3 uses
  %i.bc = shl i64 %n.vec176, 3                    ; 2 uses
  %i.bd = getelementptr i8, ptr %i.at, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %.pre143, i64 %i.bc
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph174
  %index178 = phi i64 [ 0, %vector.ph174 ], [ %index.next183, %vector.body177 ] ; 2 uses
  %i.bf = shl i64 %index178, 3                    ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.at, i64 %i.bf ; 2 uses
  %next.gep180 = getelementptr i8, ptr %.pre143, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep180, i64 16
  %wide.load181 = load <2 x i64>, ptr %next.gep180, align 8
  %wide.load182 = load <2 x i64>, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %next.gep179, i64 16
  store <2 x i64> %wide.load181, ptr %next.gep179, align 8
  store <2 x i64> %wide.load182, ptr %i.bh, align 8
  %index.next183 = add nuw i64 %index178, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next183, %n.vec176
  br i1 %i.bi, label %middle.block184, label %vector.body177, !llvm.loop !33

middle.block184:                                  ; preds = %vector.body177
  %cmp.n185 = icmp eq i64 %i.az, %n.vec176
  br i1 %cmp.n185, label %_ZN2v88internal18DirectHandleVectorINS0_16SourceTextModuleEEC2ERKS3_.exit.i37, label %.lr.ph.i.i.i.i.i.i.i34.preheader

.lr.ph.i.i.i.i.i.i.i34.preheader:                 ; preds = %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33, %middle.block184
  %.08.i.i.i.i.i.i.i35.ph = phi ptr [ %i.at, %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33 ], [ %i.bd, %middle.block184 ]
  %.sroa.04.07.i.i.i.i.i.i.i36.ph = phi ptr [ %.pre143, %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33 ], [ %i.be, %middle.block184 ]
  br label %.lr.ph.i.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i.i34:                           ; preds = %.lr.ph.i.i.i.i.i.i.i34.preheader, %.lr.ph.i.i.i.i.i.i.i34
  %.08.i.i.i.i.i.i.i35 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i34 ], [ %.08.i.i.i.i.i.i.i35.ph, %.lr.ph.i.i.i.i.i.i.i34.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i36 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i34 ], [ %.sroa.04.07.i.i.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i.i.i34.preheader ] ; 2 uses
  %i.bj = load i64, ptr %.sroa.04.07.i.i.i.i.i.i.i36, align 8
  store i64 %i.bj, ptr %.08.i.i.i.i.i.i.i35, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i36, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i35, i64 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %.pre
  br i1 %i.bm, label %_ZN2v88internal18DirectHandleVectorINS0_16SourceTextModuleEEC2ERKS3_.exit.i37, label %.lr.ph.i.i.i.i.i.i.i34, !llvm.loop !36

_ZN2v88internal18DirectHandleVectorINS0_16SourceTextModuleEEC2ERKS3_.exit.i37: ; preds = %.lr.ph.i.i.i.i.i.i.i34, %middle.block184, %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33.thread
  %.0.lcssa.i.i.i.i.i.i.i38 = phi ptr [ null, %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_16SourceTextModuleEEESaIS4_EEC2EmRKS5_.exit.i.i.i33.thread ], [ %i.bd, %middle.block184 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i34 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i38, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bp = ptrtoint ptr %.sroa.12.2 to i64
  %i.bq = ptrtoint ptr %.sroa.078.3 to i64        ; 3 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3.i39 = icmp eq ptr %.sroa.12.2, %.sroa.078.3
  br i1 %.not.i.i.i.i.i3.i39, label %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_15JSMessageObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.i41.thread, label %bb.l

_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_15JSMessageObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.i41.thread: ; preds = %_ZN2v88internal18DirectHandleVectorINS0_16SourceTextModuleEEC2ERKS3_.exit.i37
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr null, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store ptr %i.bt, ptr %i.bu, align 8
  br label %.loopexit

bb.l:                                             ; preds = %_ZN2v88internal18DirectHandleVectorINS0_16SourceTextModuleEEC2ERKS3_.exit.i37
  %i.bv = icmp ugt i64 %i.br, 9223372036854775800
  br i1 %i.bv, label %bb.m, label %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_15JSMessageObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.i41, !prof !5

bb.m:                                             ; preds = %bb.l
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_15JSMessageObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.i41: ; preds = %bb.l
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #20 ; 7 uses
  store ptr %i.bw, ptr %i.bo, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.br
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = sub i64 %.0.lcssa.i.i.i.i.i.i.i52.pn191.le, %i.bq ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check193 = icmp ult i64 %i.ca, 72
  %i.cd = ptrtoaddr ptr %i.bw to i64
  %i.ce = sub i64 %.sroa.078.3189.le, %i.cd
  %diff.check190 = icmp ugt i64 %i.ce, -32
  %or.cond210.a = select i1 %min.iters.check193, i1 true, i1 %diff.check190
  br i1 %or.cond210.a, label %.lr.ph.i.i.i.i.i.i4.i42.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_15JSMessageObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.i41
  %n.vec196 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec196, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bw, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.078.3, i64 %i.cf
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph194
  %index198 = phi i64 [ 0, %vector.ph194 ], [ %index.next203, %vector.body197 ] ; 2 uses
  %i.ci = shl i64 %index198, 3                    ; 2 uses
  %next.gep199.a = getelementptr i8, ptr %i.bw, i64 %i.ci ; 2 uses
  %next.gep200 = getelementptr i8, ptr %.sroa.078.3, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep200, i64 16
  %wide.load201.a = load <2 x i64>, ptr %next.gep200, align 8
  %wide.load202 = load <2 x i64>, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %next.gep199.a, i64 16
  store <2 x i64> %wide.load201.a, ptr %next.gep199.a, align 8
  store <2 x i64> %wide.load202, ptr %i.ck, align 8
  %index.next203 = add nuw i64 %index198, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.cl, label %middle.block204, label %vector.body197, !llvm.loop !37

middle.block204:                                  ; preds = %vector.body197
  %cmp.n205 = icmp eq i64 %i.cc, %n.vec196
  br i1 %cmp.n205, label %.loopexit, label %.lr.ph.i.i.i.i.i.i4.i42.preheader

.lr.ph.i.i.i.i.i.i4.i42.preheader:                ; preds = %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_15JSMessageObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.i41, %middle.block204
  %.08.i.i.i.i.i.i5.i43.ph = phi ptr [ %i.bw, %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_15JSMessageObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.i41 ], [ %i.cg, %middle.block204 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i6.i44.ph = phi ptr [ %.sroa.078.3, %_ZNSt12_Vector_baseIN2v88internal21DirectHandleUncheckedINS1_15JSMessageObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.i41 ], [ %i.ch, %middle.block204 ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i.i6.i44.ph215 = ptrtoint ptr %.sroa.04.07.i.i.i.i.i.i6.i44.ph to i64
  %i.cm = sub i64 %.0.lcssa.i.i.i.i.i.i.i52.pn191.le, %.sroa.04.07.i.i.i.i.i.i6.i44.ph215 ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1
  %xtraiter = and i64 %i.co, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i4.i42.prol.loopexit, label %.lr.ph.i.i.i.i.i.i4.i42.prol

.lr.ph.i.i.i.i.i.i4.i42.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i4.i42.preheader, %.lr.ph.i.i.i.i.i.i4.i42.prol
  %.08.i.i.i.i.i.i5.i43.prol = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i4.i42.prol ], [ %.08.i.i.i.i.i.i5.i43.ph, %.lr.ph.i.i.i.i.i.i4.i42.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i6.i44.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i4.i42.prol ], [ %.sroa.04.07.i.i.i.i.i.i6.i44.ph, %.lr.ph.i.i.i.i.i.i4.i42.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i4.i42.prol ], [ 0, %.lr.ph.i.i.i.i.i.i4.i42.preheader ]
  %i.cp = load i64, ptr %.sroa.04.07.i.i.i.i.i.i6.i44.prol, align 8
  store i64 %i.cp, ptr %.08.i.i.i.i.i.i5.i43.prol, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i44.prol, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i43.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i4.i42.prol.loopexit, label %.lr.ph.i.i.i.i.i.i4.i42.prol, !llvm.loop !38

.lr.ph.i.i.i.i.i.i4.i42.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i4.i42.prol, %.lr.ph.i.i.i.i.i.i4.i42.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i4.i42.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.i4.i42.prol ]
  %.08.i.i.i.i.i.i5.i43.unr = phi ptr [ %.08.i.i.i.i.i.i5.i43.ph, %.lr.ph.i.i.i.i.i.i4.i42.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.i4.i42.prol ]
  %.sroa.04.07.i.i.i.i.i.i6.i44.unr = phi ptr [ %.sroa.04.07.i.i.i.i.i.i6.i44.ph, %.lr.ph.i.i.i.i.i.i4.i42.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.i4.i42.prol ]
  %i.cs = icmp ult i64 %i.cm, 56
  br i1 %i.cs, label %.loopexit, label %.lr.ph.i.i.i.i.i.i4.i42

.lr.ph.i.i.i.i.i.i4.i42:                          ; preds = %.lr.ph.i.i.i.i.i.i4.i42.prol.loopexit, %.lr.ph.i.i.i.i.i.i4.i42
  %.08.i.i.i.i.i.i5.i43 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i4.i42 ], [ %.08.i.i.i.i.i.i5.i43.unr, %.lr.ph.i.i.i.i.i.i4.i42.prol.loopexit ] ; 9 uses
  %.sroa.04.07.i.i.i.i.i.i6.i44 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i4.i42 ], [ %.sroa.04.07.i.i.i.i.i.i6.i44.unr, %.lr.ph.i.i.i.i.i.i4.i42.prol.loopexit ] ; 9 uses
  %i.ct = load i64, ptr %.sroa.04.07.i.i.i.i.i.i6.i44, align 8
  store i64 %i.ct, ptr %.08.i.i.i.i.i.i5.i43, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i44, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i43, i64 8
  %i.cw = load i64, ptr %i.cu, align 8
  store i64 %i.cw, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i44, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i43, i64 16
  %i.cz = load i64, ptr %i.cx, align 8
  store i64 %i.cz, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i44, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i43, i64 24
  %i.dc = load i64, ptr %i.da, align 8
  store i64 %i.dc, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i44, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i43, i64 32
  %i.df = load i64, ptr %i.dd, align 8
  store i64 %i.df, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i44, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i43, i64 40
  %i.di = load i64, ptr %i.dg, align 8
  store i64 %i.di, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i44, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i43, i64 48
  %i.dl = load i64, ptr %i.dj, align 8
  store i64 %i.dl, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i44, i64 56 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i43, i64 56
  %i.do = load i64, ptr %i.dm, align 8
  store i64 %i.do, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i6.i44, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i5.i43, i64 64 ; 2 uses
  %i.dr = icmp eq ptr %i.dm, %.0.lcssa.i.i.i.i.i.i.i52.pn
  br i1 %i.dr, label %.loopexit, label %.lr.ph.i.i.i.i.i.i4.i42, !llvm.loop !40

bb.n:                                             ; preds = %.lr.ph, %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEE9push_backERKNS0_12DirectHandleIS2_EE.exit
  %.sroa.078.0138 = phi ptr [ %i.al, %.lr.ph ], [ %.sroa.078.3, %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEE9push_backERKNS0_12DirectHandleIS2_EE.exit ] ; 7 uses
  %.sroa.12.0137 = phi ptr [ %i.al, %.lr.ph ], [ %.sroa.12.2, %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEE9push_backERKNS0_12DirectHandleIS2_EE.exit ] ; 6 uses
  %.sroa.22.0136 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.22.3, %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEE9push_backERKNS0_12DirectHandleIS2_EE.exit ] ; 2 uses
  %.sroa.075.0135 = phi ptr [ %i.ab, %.lr.ph ], [ %i.hm, %_ZN2v88internal18DirectHandleVectorINS0_15JSMessageObjectEE9push_backERKNS0_12DirectHandleIS2_EE.exit ] ; 2 uses
  %i.ds = load i64, ptr %.sroa.075.0135, align 8
  %i.dt = inttoptr i64 %i.ds to ptr               ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = add i64 %i.du, 55
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = add i64 %i.dx, -1
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load atomic volatile i64, ptr %i.dz monotonic, align 8
  %i.eb = add i64 %i.ea, 11
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load atomic volatile i16, ptr %i.ec monotonic, align 2
  %i.ee = add i16 %i.ed, -2109
  %i.ef = icmp ult i16 %i.ee, 3
  br i1 %i.ef, label %bb.p, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.eg = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.eh = load ptr, ptr %i.ao, align 8
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.q, label %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.q:                                             ; preds = %bb.p
  %i.ej = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.p, %bb.q
  %.0.i.i = phi ptr [ %i.ej, %bb.q ], [ %i.eg, %bb.p ] ; 3 uses
  %i.ek = ptrtoint ptr %.0.i.i to i64
  %i.el = add i64 %i.ek, 8
  %i.em = inttoptr i64 %i.el to ptr
  store ptr %i.em, ptr %i.an, align 8
  store i64 %i.dx, ptr %.0.i.i, align 8
  %i.en = load i64, ptr %i.dt, align 8            ; 5 uses
  %i.eo = add i64 %i.en, 23
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = lshr i64 %i.eq, 32
  %i.es = trunc nuw i64 %i.er to i32
  switch i32 %i.es, label %bb.v [
    i32 0, label %bb.r
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.t
    i32 5, label %bb.t
    i32 6, label %bb.t
    i32 7, label %bb.u
  ]

bb.r:                                             ; preds = %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.et = add i64 %i.en, 55
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load i64, ptr %i.eu, align 8
  br label %_ZNK2v88internal16SourceTextModule21GetSharedFunctionInfoEv.exit

bb.s:                                             ; preds = %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ew = add i64 %i.en, 55
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = add i64 %i.ey, 31
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load atomic volatile i64, ptr %i.fa monotonic, align 8
  br label %_ZNK2v88internal16SourceTextModule21GetSharedFunctionInfoEv.exit

bb.t:                                             ; preds = %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.fc = add i64 %i.en, 55
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = add i64 %i.fe, 23
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.fh, 31
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load atomic volatile i64, ptr %i.fj monotonic, align 8
  br label %_ZNK2v88internal16SourceTextModule21GetSharedFunctionInfoEv.exit

bb.u:                                             ; preds = %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.fl = add i64 %i.en, 55
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = load i64, ptr %i.fm, align 8
  br label %_ZNK2v88internal16SourceTextModule21GetSharedFunctionInfoEv.exit

bb.v:                                             ; preds = %_ZN2v88internal6HandleINS0_17JSGeneratorObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #17
  unreachable

_ZNK2v88internal16SourceTextModule21GetSharedFunctionInfoEv.exit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.08.0.i = phi i64 [ %i.ev, %bb.r ], [ %i.fb, %bb.s ], [ %i.fk, %bb.t ], [ %i.fn, %bb.u ] ; 2 uses
  %i.fo = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.fp = load ptr, ptr %i.ao, align 8
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %bb.w, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit30, !prof !5

bb.w:                                             ; preds = %_ZNK2v88internal16SourceTextModule21GetSharedFunctionInfoEv.exit
  %i.fr = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit30

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit30: ; preds = %_ZNK2v88internal16SourceTextModule21GetSharedFunctionInfoEv.exit, %bb.w
  %.0.i29 = phi ptr [ %i.fr, %bb.w ], [ %i.fo, %_ZNK2v88internal16SourceTextModule21GetSharedFunctionInfoEv.exit ] ; 3 uses
  %i.fs = ptrtoint ptr %.0.i29 to i64
  %i.ft = add i64 %i.fs, 8
  %i.fu = inttoptr i64 %i.ft to ptr
  store ptr %i.fu, ptr %i.an, align 8
  store i64 %.sroa.08.0.i, ptr %.0.i29, align 8
  %i.fv = add i64 %.sroa.08.0.i, 39
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load atomic volatile i64, ptr %i.fw acquire, align 8
  %i.fy = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.fz = load ptr, ptr %i.ao, align 8
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %bb.x, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.x:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit30
  %i.gb = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit30, %bb.x
  %.0.i = phi ptr [ %i.gb, %bb.x ], [ %i.fy, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit30 ] ; 3 uses
  %i.gc = ptrtoint ptr %.0.i to i64
  %i.gd = add i64 %i.gc, 8
  %i.ge = inttoptr i64 %i.gd to ptr
  store ptr %i.ge, ptr %i.an, align 8
  store i64 %i.fx, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.gf = load i64, ptr %.0.i.i, align 8
  store i64 %i.gf, ptr %7, align 8
end_hunk_0
