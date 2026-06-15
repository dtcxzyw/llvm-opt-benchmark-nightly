inline.NumInlined: 39742
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal9ZoneStackINS0_6maglev18MaglevGraphBuilder17HandlerTableEntryEEC2EPNS0_4ZoneE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx, i8 0, i64 88, i1 false)
  tail call void @_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 0)
  %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload = load ptr, ptr %i.q, align 8 ; 3 uses
  %.sroa.0.i.i.i.i.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.i.i.i.i.i.i.sroa.4.0.copyload = load i64, ptr %.sroa.0.i.i.i.i.i.i.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  store ptr %i.h, ptr %i.q, align 8
  store i64 8, ptr %.sroa.0.i.i.i.i.i.i.sroa.4.0..sroa_idx, align 8
  %.sroa.21.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %.sroa.21.16..sroa_idx, align 8
  %.sroa.23.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %.sroa.23.16..sroa_idx, align 8
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.p, ptr %.sroa.25.16..sroa_idx, align 8
  store ptr %.06.i.i.ptr, ptr %i.r, align 8
  %.sroa.30.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.o, ptr %.sroa.30.16..sroa_idx, align 8
  %.sroa.32.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.o, ptr %.sroa.32.16..sroa_idx, align 8
  %.sroa.34.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.p, ptr %.sroa.34.16..sroa_idx, align 8
  store ptr %.06.i.i.ptr, ptr %i.t, align 8
  %.not.i.i = icmp eq ptr %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = icmp ult ptr %i.s, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i
  %.sroa.6.0 = phi ptr [ %.sroa.6.1, %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ], [ null, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %i.ac, %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ], [ null, %bb.e ] ; 3 uses
  %.06.i.i.i = phi ptr [ %i.ad, %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ], [ %i.s, %bb.e ] ; 3 uses
  %i.y = load ptr, ptr %.06.i.i.i, align 8        ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.aa, 64
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 64, ptr %i.ab, align 8
  store ptr %.sroa.6.0, ptr %i.y, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i

_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.6.1 = phi ptr [ %i.y, %bb.g ], [ %.sroa.6.0, %bb.f ]
  %i.ac = phi ptr [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.ae = icmp ult ptr %.06.i.i.i, %i.u
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i, !llvm.loop !21

_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i, %bb.e
  %i.af = and i64 %.sroa.0.i.i.i.i.i.i.sroa.4.0.copyload, 2305843009213693950
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload, i64 8
  store i64 %.sroa.0.i.i.i.i.i.i.sroa.4.0.copyload, ptr %i.ah, align 8
  store ptr null, ptr %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload, align 8
  br label %_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit

_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit: ; preds = %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit.i.i, %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i, %bb.h
  ret void
}

declare void @_ZN2v88internal11interpreter21BytecodeArrayIterator9AdvanceToEi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK2v88internal11interpreter21BytecodeArrayIterator30CurrentBytecodeIsValidOSREntryEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

declare noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2v88internal11interpreter21BytecodeArrayIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev18MaglevGraphBuilder26CalculatePredecessorCountsEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::interpreter::BytecodeArrayIterator", align 8 ; 16 uses
  %3 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::interpreter::JumpTableTargetOffsets", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::interpreter::JumpTableTargetOffsets::iterator", align 8 ; 7 uses
  %6 = alloca %"class.v8::internal::interpreter::JumpTableTargetOffsets::iterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit: ; preds = %bb.a
  store ptr %i.d, ptr %1, align 8
  %i.e = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33 ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.g) #33 ; 3 uses
  %i.i = zext i32 %i.f to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 4
  %i.l = and i64 %i.k, 34359738360                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp ugt i64 %i.l, %i.q
  br i1 %i.r, label %bb.c, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit, !prof !6

bb.c:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 noundef %i.l) #33
  %.pre.i.i = load i64, ptr %i.o, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit: ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit, %bb.c
  %i.s = phi i64 [ %.pre.i.i, %bb.c ], [ %i.p, %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit ] ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = add i64 %i.s, %i.l
  store i64 %i.u, ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 10 uses
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 756 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = call { i64, ptr } asm sideeffect "cld;rep ; stosl", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 %i.y, ptr %i.t) #33, !srcloc !22 ; 0 uses
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = load i32, ptr %i.w, align 4             ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = sub i32 %i.f, %i.ab
  %i.af = zext i32 %i.ae to i64
  %i.ag = call { i64, ptr } asm sideeffect "cld;rep ; stosl", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 1, i64 %i.af, ptr %i.ad) #33, !srcloc !22 ; 0 uses
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 59), align 1, !range !10, !noundef !11
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.ai, i32 2, i32 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i.i.i.i.i29 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i29, label %bb.d, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit30, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit30: ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit
  store ptr %i.am, ptr %3, align 8
  %i.an = call ptr @_ZNK2v88internal8compiler16BytecodeArrayRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC1ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %i.an, i32 noundef 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ao = load i32, ptr %i.w, align 4
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9AdvanceToEi(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ao) #33
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8
  %.not5170 = icmp ult ptr %i.ar, %i.as
  br i1 %.not5170, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit30
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 453
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 753 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bc = zext i32 %i.e to i64                    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph73, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  %i.bd = phi ptr [ %i.ar, %.lr.ph73 ], [ %i.iv, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 2 uses
  %.072 = phi i8 [ 0, %.lr.ph73 ], [ %.4, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 6 uses
  %.sroa.042.071 = phi i32 [ undef, %.lr.ph73 ], [ %.sroa.042.3, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 6 uses
  %i.be = load i8, ptr %i.bd, align 1             ; 6 uses
  %i.bf = load i8, ptr %i.at, align 1, !range !10, !noundef !11
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.av, align 8
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = load i32, ptr %i.aw, align 4
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add i64 %i.bj, %i.bl
  %i.bn = sub i64 %i.bi, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = call noundef zeroext i1 @_ZNK2v88internal8compiler16BytecodeAnalysis12IsLoopHeaderEi(ptr noundef nonnull align 8 dereferenceable(140) %i.au, i32 noundef %i.bo) #33
  br i1 %i.bp, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bq = load ptr, ptr %i.ap, align 8
  %i.br = load ptr, ptr %i.av, align 8
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = load i32, ptr %i.aw, align 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add i64 %i.bt, %i.bv
  %i.bx = sub i64 %i.bs, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK2v88internal8compiler16BytecodeAnalysis14GetLoopInfoForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.au, i32 noundef %i.by) #33 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = sub nsw i32 %i.cb, %i.cd                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 13
  %i.cg = load i8, ptr %i.cf, align 1, !range !10, !noundef !11
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %7, label %bb.k

7:                                                ; preds = %bb.g
  %8 = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %9 = load i8, ptr %8, align 4, !range !10, !noundef !11
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %bb.k, label %bb.h

bb.h:                                             ; preds = %7
  %i.ci = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.cj = load ptr, ptr %i.av, align 8
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = add i64 %i.cl, %i.cn
  %i.cp = sub i64 %i.ck, %i.co                    ; 3 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = load i8, ptr %i.ci, align 1
  %i.cs = load i8, ptr %i.ax, align 8
  %i.ct = lshr i8 %i.cs, 1
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.cu
  %i.cw = zext i8 %i.cr to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %i.cm, %i.cq
  %i.db = add i32 %i.da, %i.cz
  %i.dc = icmp slt i32 %i.db, %i.cb
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 60), align 4
  %i.de = icmp slt i32 %i.ce, %i.dd
  %or.cond49 = select i1 %i.dc, i1 %i.de, i1 false
  br i1 %or.cond49, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.df = load ptr, ptr %i.ay, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 884 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = add nsw i32 %i.dh, %i.ce                ; 2 uses
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 64), align 64
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.di, ptr %i.dg, align 4
  %i.dl = and i64 %i.cp, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = load ptr, ptr %i.az, align 8
  %i.do = icmp sgt i32 %i.cq, -1
  call void @llvm.assume(i1 %i.do)
  %i.dp = lshr i64 %i.cp, 6
  %i.dq = and i64 %i.dp, 33554431
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dq ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = or i64 %i.ds, %i.dm
  store i64 %i.dt, ptr %i.dr, align 8
  %i.du = load ptr, ptr %i.ap, align 8
  %i.dv = load ptr, ptr %i.av, align 8
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = load i32, ptr %i.aw, align 4
  %i.dz = zext i32 %i.dy to i64
  %i.ea = add i64 %i.dx, %i.dz
  %i.eb = sub i64 %i.dw, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = call noundef i32 @_ZNK2v88internal8compiler16BytecodeAnalysis28GetLoopEndOffsetForInnermostEi(ptr noundef nonnull align 8 dereferenceable(140) %i.au, i32 noundef %i.ec) #33
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %7, %bb.h, %bb.i, %bb.j, %bb.f, %bb.e
  %.sroa.042.1 = phi i32 [ %.sroa.042.071, %7 ], [ %i.ed, %bb.j ], [ %.sroa.042.071, %bb.i ], [ %.sroa.042.071, %bb.e ], [ %.sroa.042.071, %bb.h ], [ %.sroa.042.071, %bb.g ], [ %.sroa.042.071, %bb.f ] ; 8 uses
  %.2 = phi i8 [ %.072, %7 ], [ 1, %bb.j ], [ %.072, %bb.i ], [ %.072, %bb.e ], [ %.072, %bb.h ], [ %.072, %bb.g ], [ %.072, %bb.f ] ; 7 uses
  %i.ee = add i8 %i.be, 107
  %i.ef = icmp ult i8 %i.ee, 25
  br i1 %i.ef, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.eg = trunc nuw i8 %.2 to i1
  %i.eh = icmp eq i8 %i.be, -107
  %or.cond = and i1 %i.eh, %i.eg                  ; 2 uses
  %spec.select = select i1 %or.cond, i32 0, i32 %.sroa.042.1 ; 4 uses
  %spec.select50 = select i1 %or.cond, i8 0, i8 %.2 ; 4 uses
  %i.ei = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #33
  %i.ej = load i32, ptr %i.w, align 4
  %i.ek = icmp slt i32 %i.ei, %i.ej
  %i.el = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #33
  %i.em = load ptr, ptr %i.v, align 8
  %i.en = zext i32 %i.el to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  br i1 %i.ek, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.n, label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit

bb.n:                                             ; preds = %bb.m
  %i.er = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #33
  %i.es = load ptr, ptr %i.v, align 8
  %i.et = zext i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.et
  store i32 0, ptr %i.eu, align 4
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit

bb.o:                                             ; preds = %bb.l
  %i.ev = add i32 %i.ep, 1                        ; 2 uses
  %i.ew = icmp ugt i32 %i.ev, 65535
  br i1 %i.ew, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ba, align 1
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit

bb.q:                                             ; preds = %bb.o
  store i32 %i.ev, ptr %i.eo, align 4
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit

_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit: ; preds = %bb.q, %bb.p, %bb.m, %bb.n
  %i.ex = trunc nuw i8 %spec.select50 to i1
  br i1 %i.ex, label %bb.r, label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit31

bb.r:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit
  %i.ey = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #33
  %.not = icmp slt i32 %i.ey, %spec.select
  br i1 %.not, label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit31, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #33
  %i.fa = load ptr, ptr %i.v, align 8
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = add i32 %i.fd, %i.aj                    ; 2 uses
  %i.ff = icmp ugt i32 %i.fe, 65535
  br i1 %i.ff, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.ba, align 1
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit31

bb.u:                                             ; preds = %bb.s
  store i32 %i.fe, ptr %i.fc, align 4
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit31

_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit31: ; preds = %bb.u, %bb.t, %bb.r, %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit
  %i.fg = add nsw i8 %i.be, 104
  %i.fh = icmp ult i8 %i.fg, 22
  br i1 %i.fh, label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit32, label %bb.v

bb.v:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit31
  %i.fi = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.fj = load ptr, ptr %i.av, align 8
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = add i64 %i.fl, %i.fn
  %i.fp = sub i64 %i.fk, %i.fo
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = load i8, ptr %i.fi, align 1
  %i.fs = load i8, ptr %i.ax, align 8
  %i.ft = lshr i8 %i.fs, 1
  %i.fu = zext nneg i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.fu
  %i.fw = zext i8 %i.fr to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add i32 %i.fm, %i.fq
  %i.gb = add i32 %i.ga, %i.fz
  %i.gc = load ptr, ptr %i.v, align 8
  %i.gd = zext i32 %i.gb to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = add i32 %i.gf, -1                       ; 2 uses
  %i.gh = icmp ugt i32 %i.gg, 65535
  br i1 %i.gh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.ba, align 1
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit32

bb.x:                                             ; preds = %bb.v
  store i32 %i.gg, ptr %i.ge, align 4
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit32

bb.y:                                             ; preds = %bb.k
  switch i8 %i.be, label %bb.ac [
    i8 -68, label %bb.z
    i8 -82, label %bb.z
    i8 -67, label %bb.ad
    i8 -73, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZNK2v88internal11interpreter21BytecodeArrayIterator25GetJumpTableTargetOffsetsEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::interpreter::JumpTableTargetOffsets") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZNK2v88internal11interpreter22JumpTableTargetOffsets5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::interpreter::JumpTableTargetOffsets::iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZNK2v88internal11interpreter22JumpTableTargetOffsets3endEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::interpreter::JumpTableTargetOffsets::iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #33
  %i.gi = call noundef zeroext i1 @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorneERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #33
  br i1 %i.gi, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit33, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit32

.lr.ph:                                           ; preds = %bb.z, %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit33
  %i.gj = call i64 @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #33
  %.sroa.3.0.extract.shift = lshr i64 %i.gj, 32
  %i.gk = load ptr, ptr %i.v, align 8
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.sroa.3.0.extract.shift ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = add i32 %i.gm, 1                        ; 2 uses
  %i.go = icmp ugt i32 %i.gn, 65535
  br i1 %i.go, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  store i8 1, ptr %i.ba, align 1
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit33

bb.ab:                                            ; preds = %.lr.ph
  store i32 %i.gn, ptr %i.gl, align 4
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit33

_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit33: ; preds = %bb.aa, %bb.ab
  %i.gp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #33 ; 0 uses
  %i.gq = call noundef zeroext i1 @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorneERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #33
  br i1 %i.gq, label %.lr.ph, label %._crit_edge

bb.ac:                                            ; preds = %bb.y
  %i.gr = add i8 %i.be, 75
  %i.gs = icmp ult i8 %i.gr, 2
  br i1 %i.gs, label %bb.ad, label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit32

bb.ad:                                            ; preds = %bb.y, %bb.y, %bb.ac
  %i.gt = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.gu = load ptr, ptr %i.av, align 8
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add i64 %i.gw, %i.gy
  %i.ha = sub i64 %i.gv, %i.gz
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = load i8, ptr %i.gt, align 1
  %i.hd = load i8, ptr %i.ax, align 8
  %i.he = lshr i8 %i.hd, 1
  %i.hf = zext nneg i8 %i.he to i64
  %i.hg = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.hf
  %i.hh = zext i8 %i.hc to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = zext i8 %i.hj to i32
  %i.hl = add i32 %i.gx, %i.hb
  %i.hm = add i32 %i.hl, %i.hk
  %i.hn = load ptr, ptr %i.v, align 8
  %i.ho = zext i32 %i.hm to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = add i32 %i.hq, -1                       ; 2 uses
  %i.hs = icmp ugt i32 %i.hr, 65535
  br i1 %i.hs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.ba, align 1
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22UpdatePredecessorCountEji.exit34

bb.af:                                            ; preds = %bb.ad
end_hunk_0
