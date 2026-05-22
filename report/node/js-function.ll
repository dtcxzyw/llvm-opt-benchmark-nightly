inline.NumInlined: 2359
inline.NumDeleted: 1001
begin_hunk_0_@_ZN2v88internal10JSFunction19EnsureHasInitialMapEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.r) ; 3 uses
  %i.bj = shl i32 %.sroa.speculated.i, 3
  %i.bk = add nsw i32 %i.bj, %i.bf                ; 2 uses
  %i.bl = add nsw i32 %.sroa.speculated.i, 268435456
  %i.bm = icmp ult i32 %i.bl, 536870912
  br i1 %i.bm, label %bb.g, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.30) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bn = icmp ult i32 %i.bk, 2041
  br i1 %i.bn, label %_ZN2v88internal10JSFunction27CalculateInstanceSizeHelperENS0_12InstanceTypeEbiiPiS3_.exit, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.31) #13
  unreachable

_ZN2v88internal10JSFunction27CalculateInstanceSizeHelperENS0_12InstanceTypeEbiiPiS3_.exit: ; preds = %bb.g
  %i.bo = load i64, ptr %1, align 8
  %i.bp = add i64 %i.bo, 39
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = add i64 %i.br, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = add i64 %i.bu, 31
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.i, label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.i:                                             ; preds = %_ZN2v88internal10JSFunction27CalculateInstanceSizeHelperENS0_12InstanceTypeEbiiPiS3_.exit
  %i.cd = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal10JSFunction27CalculateInstanceSizeHelperENS0_12InstanceTypeEbiiPiS3_.exit, %bb.i
  %.0.i.i = phi ptr [ %i.cd, %bb.i ], [ %i.bz, %_ZN2v88internal10JSFunction27CalculateInstanceSizeHelperENS0_12InstanceTypeEbiiPiS3_.exit ] ; 3 uses
  %i.ce = ptrtoint ptr %.0.i.i to i64
  %i.cf = add i64 %i.ce, 8
  %i.cg = inttoptr i64 %i.cf to ptr
  store ptr %i.cg, ptr %i.by, align 8
  store i64 %i.bx, ptr %.0.i.i, align 8
  %i.ch = tail call ptr @_ZN2v88internal7Factory16NewContextfulMapENS0_12DirectHandleINS0_13NativeContextEEENS0_12InstanceTypeEiNS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i, i16 noundef zeroext %.0, i32 noundef %i.bk, i8 noundef zeroext 3, i32 noundef %.sroa.speculated.i, i8 noundef zeroext 3) #14 ; 4 uses
  %i.ci = load i64, ptr %1, align 8
  %i.cj = add i64 %i.ci, 55
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck acquire, align 8
  %i.cm = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 10624
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.cq = load i64, ptr %i.cp, align 8
  %.not = icmp eq i64 %i.cl, %i.cq
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cr = load i64, ptr %1, align 8
  %i.cs = add i64 %i.cr, 55
  %i.ct = inttoptr i64 %i.cs to ptr               ; 3 uses
  %i.cu = load atomic volatile i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 10624
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = icmp eq i64 %i.cu, %i.cz
  br i1 %i.da, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i

_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i: ; preds = %bb.j
  %i.db = add i64 %i.cu, -1
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load atomic volatile i64, ptr %i.dc monotonic, align 8
  %i.de = add i64 %i.dd, 11
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i16, ptr %i.df monotonic, align 2
  %i.dh = icmp eq i16 %i.dg, 276
  br i1 %i.dh, label %bb.k, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i

bb.k:                                             ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i
  %i.di = load atomic volatile i64, ptr %i.ct acquire, align 8
  %i.dj = add i64 %i.di, 23
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load i64, ptr %i.dk, align 8
  br label %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit

_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i: ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i, %bb.j
  %i.dm = load atomic volatile i64, ptr %i.ct acquire, align 8
  br label %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit

_ZNK2v88internal10JSFunction18instance_prototypeEv.exit: ; preds = %bb.k, %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i
  %.sroa.02.0.i.i = phi i64 [ %i.dl, %bb.k ], [ %i.dm, %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i ] ; 6 uses
  %i.dn = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.do = load ptr, ptr %i.ca, align 8
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %bb.l, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.l:                                             ; preds = %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit
  %i.dq = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit, %bb.l
  %.0.i = phi ptr [ %i.dq, %bb.l ], [ %i.dn, %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit ] ; 5 uses
  %i.dr = ptrtoint ptr %.0.i to i64
  %i.ds = add i64 %i.dr, 8
  %i.dt = inttoptr i64 %i.ds to ptr
  store ptr %i.dt, ptr %i.by, align 8
  store i64 %.sroa.02.0.i.i, ptr %.0.i, align 8
  %i.du = load i64, ptr %i.ch, align 8            ; 4 uses
  %i.dv = add i64 %i.du, 23                       ; 3 uses
  %i.dw = inttoptr i64 %i.dv to ptr
  store atomic volatile i64 %.sroa.02.0.i.i, ptr %i.dw monotonic, align 8
  %i.dx = trunc i64 %.sroa.02.0.i.i to i1
  br i1 %i.dx, label %bb.m, label %_ZN2v88internal3Map13set_prototypeENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_16WriteBarrierModeE.exit

bb.m:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.dy = and i64 %i.du, -262144
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load i64, ptr %i.dz, align 262144       ; 2 uses
  %i.eb = and i64 %i.ea, 32
  %.not.i.i.i = icmp eq i64 %i.eb, 0
  %i.ec = and i64 %i.ea, 25
  %.not38.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not38.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ed = and i64 %.sroa.02.0.i.i, -262144
  %i.ee = inttoptr i64 %i.ed to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.ee, align 262144
  %i.ef = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not39.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.du, i64 noundef %i.dv, i64 %.sroa.02.0.i.i) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i, label %_ZN2v88internal3Map13set_prototypeENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_16WriteBarrierModeE.exit, label %bb.q, !prof !26

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.du, i64 %i.dv, i64 %.sroa.02.0.i.i) #14
  br label %_ZN2v88internal3Map13set_prototypeENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_16WriteBarrierModeE.exit

bb.r:                                             ; preds = %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.eg = tail call ptr @_ZN2v88internal7Factory20NewFunctionPrototypeENS0_12DirectHandleINS0_10JSFunctionEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1) #14 ; 2 uses
  tail call void @_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb(ptr noundef nonnull %0, ptr %i.ch, ptr %i.eg, i1 noundef zeroext true) #14
  br label %_ZN2v88internal3Map13set_prototypeENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal3Map13set_prototypeENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.q, %bb.p, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.r
  %.sroa.051.0 = phi ptr [ %i.eg, %bb.r ], [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %.0.i, %bb.p ], [ %.0.i, %bb.q ] ; 2 uses
  %i.eh = load i64, ptr %.sroa.051.0, align 8
  %i.ei = add i64 %i.eh, -1
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load atomic volatile i64, ptr %i.ej monotonic, align 8
  %i.el = add i64 %i.ek, 11
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load atomic volatile i16, ptr %i.em monotonic, align 2
  %i.eo = icmp ugt i16 %i.en, 299
  br i1 %i.eo, label %bb.t, label %bb.s, !prof !26

bb.s:                                             ; preds = %_ZN2v88internal3Map13set_prototypeENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_16WriteBarrierModeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.24) #13
  unreachable

bb.t:                                             ; preds = %_ZN2v88internal3Map13set_prototypeENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_16WriteBarrierModeE.exit
  tail call void @_ZN2v88internal10JSFunction13SetInitialMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEES5_(ptr noundef nonnull %0, ptr nonnull readonly %1, ptr %i.ch, ptr nonnull %.sroa.051.0, ptr nonnull readonly %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.ep = load i64, ptr %i.ch, align 8
  store i64 %i.ep, ptr %2, align 8
  call void @_ZN2v88internal3Map26StartInobjectSlackTrackingEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit31, %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483640, 253) i32 @_ZN2v88internal10JSFunction30CalculateExpectedNofPropertiesEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 6 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.preheader, !prof !5

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.preheader: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.46) #13
  unreachable

bb.c:                                             ; preds = %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.preheader, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit
  %.02488 = phi i32 [ 0, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.preheader ], [ %.226.ph, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ] ; 4 uses
  %.sroa.11.087 = phi ptr [ %1, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.preheader ], [ %.0.i.i.i.i, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ] ; 3 uses
  %4 = load i64, ptr %.sroa.11.087, align 8       ; 2 uses
  %i.e = add i64 %4, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = add i16 %i.j, -2065
  %i.l = icmp ult i16 %i.k, 17
  br i1 %i.l, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %4, 31
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.s = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.s, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.t = ptrtoint ptr %.0.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.b, align 8
  store i64 %i.o, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %2, i64 %i.o, ptr noundef nonnull %0)
  %.fca.0.load.i = load ptr, ptr %2, align 8
  %.fca.1.load.i = load i8, ptr %.fca.1.gep.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %.fca.0.load.i, ptr %3, align 8
  store i8 %.fca.1.load.i, ptr %.sroa.2.0..sroa_idx, align 8
  %i.w = trunc nuw i8 %.fca.1.load.i to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.x = call noundef zeroext i1 @_ZN2v88internal8Compiler7CompileEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS1_18ClearExceptionFlagEPNS0_15IsCompiledScopeE(ptr noundef nonnull %0, ptr nonnull %.sroa.11.087, i32 noundef 1, ptr noundef nonnull %3) #14
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.y = load i64, ptr %.0.i.i, align 8
  %i.z = add i64 %i.y, 53
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = sub nsw i32 252, %i.ac
  %.not = icmp sgt i32 %.02488, %i.ad
  %i.ae = add nuw nsw i32 %.02488, %i.ac
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.226.ph = phi i32 [ %.02488, %bb.f ], [ %i.ae, %bb.g ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.af = load i64, ptr %.sroa.11.087, align 8
  %i.ag = add i64 %i.af, -1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = icmp eq i16 %i.al, 302
  br i1 %i.am, label %.thread, label %.thread.i.cont

.thread.i.cont:                                   ; preds = %bb.h
  %i.an = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.ao = add i64 %i.an, 23
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = load i64, ptr %i.d, align 8
  %i.as = icmp eq i64 %i.aq, %i.ar
  %i.at = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.i, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit, !prof !5

bb.i:                                             ; preds = %.thread.i.cont
  %i.aw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit: ; preds = %.thread.i.cont, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.aw, %bb.i ], [ %i.at, %.thread.i.cont ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ay = add i64 %i.ax, 8
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.b, align 8
  store i64 %i.aq, ptr %.0.i.i.i.i, align 8
  br i1 %i.as, label %.thread, label %bb.c, !llvm.loop !29

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.k

.thread:                                          ; preds = %bb.h, %bb.c, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit
  %.024.lcssa = phi i32 [ %.02488, %bb.c ], [ %.226.ph, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ], [ %.226.ph, %bb.h ] ; 2 uses
  %i.ba = icmp sgt i32 %.024.lcssa, 0
  %i.bb = call i32 @llvm.smin.i32(i32 %.024.lcssa, i32 244)
  %spec.store.select = add nuw nsw i32 %i.bb, 8
  %.529 = select i1 %i.ba, i32 %spec.store.select, i32 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %.5 = phi i32 [ %.529, %.thread ], [ 252, %bb.j ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10JSFunction27CalculateInstanceSizeHelperENS0_12InstanceTypeEbiiPiS3_(i16 noundef zeroext %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %0, i1 noundef zeroext %1) #14 ; 2 uses
  %i.b = sub nsw i32 2040, %i.a
  %i.c = ashr i32 %i.b, 3                         ; 3 uses
  %i.d = icmp slt i32 %i.c, 253
  br i1 %i.d, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.28) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp ugt i32 %2, %i.c
  br i1 %.not, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.29) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = sub nuw nsw i32 %i.c, %2
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %3) ; 2 uses
  store i32 %.sroa.speculated, ptr %5, align 4
  %i.f = add nsw i32 %.sroa.speculated, %2
  %i.g = shl i32 %i.f, 3                          ; 2 uses
  %i.h = add nsw i32 %i.g, %i.a                   ; 2 uses
  store i32 %i.h, ptr %4, align 4
  %i.i = load i32, ptr %5, align 4
  %i.j = ashr exact i32 %i.g, 3
  %i.k = sub nsw i32 %i.j, %2
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.g, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.30) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = icmp ult i32 %i.h, 2041
  br i1 %i.m, label %bb.i, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.31) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  ret void
}

declare ptr @_ZN2v88internal7Factory16NewContextfulMapENS0_12DirectHandleINS0_13NativeContextEEENS0_12InstanceTypeEiNS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i16 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal3Map26StartInobjectSlackTrackingEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.583", align 8 ; 4 uses
  tail call void @_ZN2v88internal10JSFunction19EnsureHasInitialMapEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1)
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 55
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 14 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit79, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit79

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit79: ; preds = %bb.a, %bb.b
  %.0.i.i78 = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 8 uses
  %i.k = ptrtoint ptr %.0.i.i78 to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i78, align 8
  %i.n = load i64, ptr %2, align 8                ; 3 uses
  %i.o = load i64, ptr %1, align 8
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit79
  %i.q = add i64 %i.n, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = add i16 %i.v, -2065
  %i.x = icmp ult i16 %i.w, 17
  br i1 %i.x, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.y = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.z = add i64 %i.y, 13
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i8, ptr %i.aa monotonic, align 1
  %i.ac = icmp slt i8 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.critedge66.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.n, 55
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 10624
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.af, %i.ak
  br i1 %i.al, label %.critedge.i, label %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit.i

_ZNK2v88internal10JSFunction15has_initial_mapEv.exit.i: ; preds = %bb.e
  %i.am = add i64 %i.af, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = icmp eq i16 %i.ar, 276
  br i1 %i.as, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit.i
  %i.at = load i64, ptr %2, align 8
  %i.au = add i64 %i.at, 55
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = add i64 %i.aw, 31
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.ba = add i64 %i.aw, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8
  %i.bd = trunc i64 %i.az to i1
  br i1 %i.bd, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i: ; preds = %bb.f, %bb.g
  %.sroa.06.020.i.i.i.i = phi i64 [ %i.bk, %bb.g ], [ %i.az, %bb.f ] ; 3 uses
  %i.be = add nsw i64 %.sroa.06.020.i.i.i.i, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = icmp eq i64 %i.bg, %i.bc
  br i1 %i.bh, label %bb.g, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i

bb.g:                                             ; preds = %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i
  %i.bi = add i64 %.sroa.06.020.i.i.i.i, 31
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i, !llvm.loop !22

_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i: ; preds = %bb.g, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i.i.i = phi i64 [ %i.az, %bb.f ], [ %i.bk, %bb.g ], [ %.sroa.06.020.i.i.i.i, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i ] ; 4 uses
  %i.bm = trunc i64 %.sroa.06.0.lcssa.i.i.i.i to i1
  br i1 %i.bm, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZNK2v88internal3Map14GetConstructorEv.exit.i

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i
  %i.bn = add nsw i64 %.sroa.06.0.lcssa.i.i.i.i, -1
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = icmp eq i16 %i.bs, 171
  br i1 %i.bt, label %bb.h, label %_ZNK2v88internal3Map14GetConstructorEv.exit.i

bb.h:                                             ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
end_hunk_0
