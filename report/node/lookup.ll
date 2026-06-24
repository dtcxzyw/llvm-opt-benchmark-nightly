inline.NumInlined: 2948
inline.NumDeleted: 992
begin_hunk_0_@_ZNK2v88internal14LookupIterator34GetInterceptorForFailedAccessCheckEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %i.c, align 8
  %i.d = load i64, ptr %.sroa.0.0.copyload.i1.i, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 128
  br i1 %i.k, label %_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit, label %_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit.thread

_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 16
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit.thread, label %.critedge

_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.06.0.copyload = load ptr, ptr %i.q, align 8
  %i.r = tail call i64 @_ZN2v88internal15AccessCheckInfo3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef %i.p, ptr %.sroa.06.0.copyload) #12 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit.thread
  %i.t = load i64, ptr %i.a, align 8
  %i.u = icmp ult i64 %i.t, 4294967295
  %.sroa.04.0.in.in.v = select i1 %i.u, i64 23, i64 15
  %.sroa.04.0.in.in = add i64 %i.r, %.sroa.04.0.in.in.v
  %.sroa.04.0.in = inttoptr i64 %.sroa.04.0.in.in to ptr
  %.sroa.04.0 = load i64, ptr %.sroa.04.0.in, align 8 ; 2 uses
  %.not24 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not24, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 560 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 568
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.v) #12
  br label %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.ac = ptrtoint ptr %.0.i.i to i64
  %i.ad = add i64 %i.ac, 8
  %i.ae = inttoptr i64 %i.ad to ptr
  store ptr %i.ae, ptr %i.w, align 8
  store i64 %.sroa.04.0, ptr %.0.i.i, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.c, %_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit.thread, %_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit
  %.sroa.017.1 = phi ptr [ null, %_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_15InterceptorInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.c ], [ null, %_ZNK2v88internal14LookupIterator13IsPrivateNameEv.exit.thread ]
  ret ptr %.sroa.017.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i64 @_ZN2v88internal15AccessCheckInfo3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14LookupIterator23TryLookupCachedPropertyENS0_12DirectHandleINS0_12AccessorPairEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal14LookupIterator20LookupCachedPropertyENS0_12DirectHandleINS0_12AccessorPairEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14LookupIterator20LookupCachedPropertyENS0_12DirectHandleINS0_12AccessorPairEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 2
  %.not.i = icmp eq i32 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.012.0.copyload.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 4 uses
  br i1 %.not.i, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %.sroa.012.0.copyload.pre, align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = trunc i64 %i.c to i1
  br i1 %i.h, label %_ZN2v88internal15IsJSGlobalProxyENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread57

_ZN2v88internal15IsJSGlobalProxyENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i: ; preds = %bb.c
  %i.i = add nsw i64 %i.c, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp eq i16 %i.n, 304
  br i1 %i.o, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread57

_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit: ; preds = %_ZN2v88internal15IsJSGlobalProxyENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i
  %i.p = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.q = add i64 %i.p, 23
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread57

_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8              ; 5 uses
  %i.w = icmp eq ptr %i.v, %.sroa.012.0.copyload.pre
  br i1 %i.w, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread
  %i.x = icmp eq ptr %i.v, null                   ; 2 uses
  %i.y = icmp eq ptr %.sroa.012.0.copyload.pre, null
  %or.cond.i16 = or i1 %i.y, %i.x
  br i1 %or.cond.i16, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread60, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19: ; preds = %bb.d
  %i.z = load i64, ptr %i.v, align 8
  %i.aa = load i64, ptr %.sroa.012.0.copyload.pre, align 8
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread60

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread60: ; preds = %bb.d, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.011.0.copyload = load ptr, ptr %i.ac, align 8 ; 3 uses
  %i.ad = icmp eq ptr %i.v, %.sroa.011.0.copyload
  br i1 %i.ad, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread60
  %i.ae = icmp eq ptr %.sroa.011.0.copyload, null
  %or.cond.i = or i1 %i.x, %i.ae
  br i1 %or.cond.i, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread57, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.e
  %i.af = load i64, ptr %i.v, align 8
  %i.ag = load i64, ptr %.sroa.011.0.copyload, align 8
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread57

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread: ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread60, %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19
  %i.ai = load i64, ptr %1, align 8
  %i.aj = add i64 %i.ai, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call { i64, i8 } @_ZN2v88internal20FunctionTemplateInfo24TryGetCachedPropertyNameEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef %i.ao, i64 %i.am) #12 ; 2 uses
  %i.aq = extractvalue { i64, i8 } %i.ap, 0       ; 3 uses
  %i.ar = extractvalue { i64, i8 } %i.ap, 1
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread57

bb.f:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread
  %i.at = trunc i64 %i.am to i1
  br i1 %i.at, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit24

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.au = add nsw i64 %i.am, -1
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i64, ptr %i.av monotonic, align 8
  %i.ax = add i64 %i.aw, 11
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i16, ptr %i.ay monotonic, align 2
  %i.ba = add i16 %i.az, -2065
  %i.bb = icmp ult i16 %i.ba, 17
  br i1 %i.bb, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit24

_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.bc = load ptr, ptr %i.an, align 8            ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.05.0.copyload = load ptr, ptr %i.bd, align 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 560 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 568
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit
  %i.bj = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bc) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit
  %.0.i.i20 = phi ptr [ %i.bj, %bb.g ], [ %i.bf, %_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit ] ; 4 uses
  %i.bk = ptrtoint ptr %.0.i.i20 to i64
  %i.bl = add i64 %i.bk, 8
  %i.bm = inttoptr i64 %i.bl to ptr
  store ptr %i.bm, ptr %i.be, align 8
  store i64 %i.aq, ptr %.0.i.i20, align 8
  %i.bn = add i64 %i.aq, -1
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = icmp eq i16 %i.bs, 128
  br i1 %i.bt, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = trunc i32 %i.bv to i1
  br i1 %i.bw, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.h
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.bx = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.bx, ptr %2, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bc, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.sroa.05.0.copyload, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ci = ptrtoint ptr %.sroa.05.0.copyload to i64
  store i64 %i.ci, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 -1, i64 16, i1 false)
  %i.ck = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.cl = add i64 %i.ck, 11
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load atomic volatile i16, ptr %i.cm monotonic, align 2
  %i.co = and i16 %i.cn, -96
  %.not.i21.i.i = icmp eq i16 %i.co, 32
  br i1 %.not.i21.i.i, label %bb.i, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.i:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !24, !noundef !25
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 55448
  %i.cs = load i8, ptr %i.cr, align 8, !range !24
  %i.ct = trunc nuw i8 %i.cs to i1
  %not..i.i.i23.i.i = xor i1 %i.cq, true
  %i.cu = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ct
  br i1 %i.cu, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bc, i64 64088
  %i.cw = load i8, ptr %i.cv, align 8, !range !24, !noundef !25
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #14
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bc, i64 64080
  %i.cz = load ptr, ptr %i.cy, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.i
  %.pn.i.i26.i.i = phi ptr [ %i.cz, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %i.bc, %bb.i ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.da = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.db = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr nonnull %.0.i.i20) #12
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.db, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %.0.i.i20, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.cd, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.dc = load i32, ptr %i.by, align 4
  %.not = icmp eq i32 %i.dc, 7
  br i1 %.not, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %.sroa.0.0.copyload.i23 = load ptr, ptr %i.cd, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.copyload.i23, ptr %i.dd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.n

_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit24: ; preds = %bb.f, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.de = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 560 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 568
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp eq ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.m, label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.m:                                             ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit24
  %i.dk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.de) #12
  br label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit24, %bb.m
  %.0.i.i = phi ptr [ %i.dk, %bb.m ], [ %i.dg, %_ZNRSt8optionalIN2v88internal6TaggedINS1_4NameEEEE5valueEv.exit24 ] ; 3 uses
  %i.dl = ptrtoint ptr %.0.i.i to i64
  %i.dm = add i64 %i.dl, 8
  %i.dn = inttoptr i64 %i.dm to ptr
  store ptr %i.dn, ptr %i.df, align 8
  store i64 %i.aq, ptr %.0.i.i, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i, ptr %i.do, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dq = load i64, ptr %i.dp, align 8
  %.not.i25 = icmp eq i64 %i.dq, -1
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -1, ptr %i.dt, align 8
  br i1 %.not.i25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0), !inline_history !26
  br label %_ZN2v88internal14LookupIterator7RestartEv.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0), !inline_history !27
  br label %_ZN2v88internal14LookupIterator7RestartEv.exit

_ZN2v88internal14LookupIterator7RestartEv.exit:   ; preds = %bb.o, %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = icmp eq i32 %i.dv, 7
  br i1 %i.dw, label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread57, label %bb.q, !prof !13

bb.q:                                             ; preds = %_ZN2v88internal14LookupIterator7RestartEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #13
  unreachable

.critedge:                                        ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread57

_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit.thread57: ; preds = %bb.e, %bb.c, %_ZN2v88internal15IsJSGlobalProxyENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread, %.critedge, %_ZN2v88internal14LookupIterator7RestartEv.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit
  %.2 = phi i1 [ false, %bb.c ], [ false, %_ZNK2v88internal14LookupIterator33HolderIsReceiverOrHiddenPrototypeEv.exit ], [ false, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit ], [ false, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit19.thread ], [ false, %.critedge ], [ true, %_ZN2v88internal14LookupIterator7RestartEv.exit ], [ false, %_ZN2v88internal15IsJSGlobalProxyENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i ], [ false, %bb.e ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14LookupIterator23TryLookupCachedPropertyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 6
  br i1 %.not, label %bb.b, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZNK2v88internal14LookupIterator10FetchValueENS0_16AllocationPolicyE(ptr noundef nonnull readonly align 8 dereferenceable(88) %0, i32 noundef 0) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %bb.b
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 140
  br i1 %i.l, label %bb.c, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal14LookupIterator20LookupCachedPropertyENS0_12DirectHandleINS0_12AccessorPairEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nonnull %i.c)
  br label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %bb.b, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit ], [ %i.m, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare { i64, i8 } @_ZN2v88internal20FunctionTemplateInfo24TryGetCachedPropertyNameEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN2v88internal24ConcurrentLookupIterator19TryGetOwnCowElementEPNS0_7IsolateENS0_6TaggedINS0_10FixedArrayEEENS0_12ElementsKindEim(ptr nofree noundef readonly captures(none) %0, i64 %1, i8 noundef zeroext %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = sext i32 %3 to i64
  %.not = icmp ult i64 %4, %i.g
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = ashr i64 %i.i, 32
  %.not7 = icmp ult i64 %4, %i.j
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %sext = shl i64 %4, 32
  %i.l = ashr exact i64 %sext, 29
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp ne i64 %i.n, %i.p
end_hunk_0
