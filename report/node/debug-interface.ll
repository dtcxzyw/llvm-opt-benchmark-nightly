inline.NumInlined: 2928
inline.NumDeleted: 1412
begin_hunk_0_@_ZN2v85debug22GetFunctionDescriptionENS_5LocalINS_8FunctionEEE:bb.a

.preheader:                                       ; preds = %bb.ab, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit35
  %i.mg = phi i8 [ %i.mt, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit35 ], [ 40, %bb.ab ]
  %.0.i134.idx = phi i64 [ %.0.i134.add, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit35 ], [ 0, %bb.ab ]
  %.0.i134.add = add nuw nsw i64 %.0.i134.idx, 1  ; 3 uses
  %.ptr173 = getelementptr inbounds nuw i8, ptr @.str.1, i64 %.0.i134.add
  %i.mh = load ptr, ptr %i.lu, align 8
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = add i64 %i.mi, -1
  %i.mk = inttoptr i64 %i.mj to ptr
  %i.ml = load i32, ptr %i.lq, align 4            ; 2 uses
  %i.mm = add nsw i32 %i.ml, 1
  store i32 %i.mm, ptr %i.lq, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mo = zext i32 %i.ml to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  store i8 %i.mg, ptr %i.mp, align 1
  %i.mq = load i32, ptr %i.lq, align 4
  %i.mr = load i32, ptr %i.lo, align 8
  %i.ms = icmp eq i32 %i.mq, %i.mr
  br i1 %i.ms, label %bb.ae, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit35

bb.ae:                                            ; preds = %.preheader
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #26
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit35

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit35: ; preds = %.preheader, %bb.ae
  %i.mt = load i8, ptr %.ptr173, align 1
  %exitcond137 = icmp eq i64 %.0.i134.add, 20
  br i1 %exitcond137, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi21EEEvRAT__Kc.exit, label %.preheader, !llvm.loop !7

bb.af:                                            ; preds = %.critedge127.preheader, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit36
  %i.mu = phi i8 [ 40, %.critedge127.preheader ], [ %i.ni, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit36 ]
  %.1.i133.idx = phi i64 [ 0, %.critedge127.preheader ], [ %.1.i133.add, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit36 ]
  %.1.i133.add = add nuw nsw i64 %.1.i133.idx, 1  ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @.str.1, i64 %.1.i133.add
  %i.mv = load ptr, ptr %i.ll, align 8
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = add i64 %i.mw, -1
  %i.my = inttoptr i64 %i.mx to ptr
  %i.mz = load i32, ptr %i.lm, align 4            ; 2 uses
  %i.na = add nsw i32 %i.mz, 1
  store i32 %i.na, ptr %i.lm, align 4
  %i.nb = sext i8 %i.mu to i16
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.nd = zext i32 %i.mz to i64
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.nd
  store i16 %i.nb, ptr %i.ne, align 2
  %i.nf = load i32, ptr %i.lm, align 4
  %i.ng = load i32, ptr %i.ln, align 8
  %i.nh = icmp eq i32 %i.nf, %i.ng
  br i1 %i.nh, label %bb.ag, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit36

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #26
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit36

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit36: ; preds = %bb.af, %bb.ag
  %i.ni = load i8, ptr %.ptr, align 1
  %exitcond = icmp eq i64 %.1.i133.add, 20
  br i1 %exitcond, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi21EEEvRAT__Kc.exit, label %bb.af, !llvm.loop !9

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi21EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit36, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit35, %bb.ac, %bb.ad
  %i.nj = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #26 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.ah, label %bb.ai, !prof !5

bb.ah:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi21EEEvRAT__Kc.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.23) #27
  unreachable

bb.ai:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi21EEEvRAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.ak

_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread: ; preds = %_ZN2v88internal6HandleINS0_23WasmTrustedInstanceDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.d, %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit
  %i.nl = tail call ptr @_ZN2v88internal10JSFunction8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %i.b, ptr nonnull %0) #26
  br label %bb.ak

bb.aj:                                            ; preds = %bb.c
  %i.nm = getelementptr inbounds nuw i8, ptr %i.b, i64 6152
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread, %bb.aj, %bb.b
  %.sroa.026.2 = phi ptr [ %i.m, %bb.b ], [ %i.nm, %bb.aj ], [ %i.nl, %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit.thread ], [ %i.nj, %bb.ai ]
  store i16 %i.d, ptr %i.c, align 8
  ret ptr %.sroa.026.2
}

declare ptr @_ZN2v88internal15JSBoundFunction8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #6

declare ptr @_ZN2v88internal24GetWasmFunctionDebugNameEPNS0_7IsolateENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEEj(ptr noundef, ptr, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #6

declare void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #6

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare ptr @_ZN2v88internal10JSFunction8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v85debug26SetBreakOnNextFunctionCallEPNS_7IsolateE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59496
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal5Debug26SetBreakOnNextFunctionCallEv(ptr noundef nonnull align 8 dereferenceable(256) %i.b) #26
  ret void
}

declare void @_ZN2v88internal5Debug26SetBreakOnNextFunctionCallEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v85debug28ClearBreakOnNextFunctionCallEPNS_7IsolateE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59496
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal5Debug28ClearBreakOnNextFunctionCallEv(ptr noundef nonnull align 8 dereferenceable(256) %i.b) #26
  ret void
}

declare void @_ZN2v88internal5Debug28ClearBreakOnNextFunctionCallEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v85debug21GetInternalPropertiesEPNS_7IsolateENS_5LocalINS_5ValueEEE(ptr noundef %0, ptr %1) local_unnamed_addr #5 {
_ZNK2v88internal11MaybeHandleINS0_7JSArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  store i16 5, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v88internal7Runtime21GetInternalPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef %0, ptr %1) #26
  store i16 %i.b, ptr %i.a, align 8
  ret ptr %i.c
}

declare ptr @_ZN2v88internal7Runtime21GetInternalPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v85debug17GetPrivateMembersENS_5LocalINS_7ContextEEENS1_INS_6ObjectEEEiPNS_11LocalVectorINS_5ValueEEES9_(ptr nofree readnone captures(none) %0, ptr %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %7 = alloca %"class.std::function", align 8     ; 8 uses
  %8 = alloca %"class.std::function.708", align 8 ; 7 uses
  %9 = alloca %"class.std::function.711", align 8 ; 8 uses
  %10 = alloca %"class.std::function", align 8    ; 9 uses
  %11 = alloca %"class.std::function.708", align 8 ; 8 uses
  %12 = alloca %"class.std::function.711", align 8 ; 9 uses
  %13 = alloca %"class.std::function", align 8    ; 9 uses
  %14 = alloca %"class.std::function.708", align 8 ; 8 uses
  %15 = alloca %"class.std::function.711", align 8 ; 9 uses
  %16 = alloca %"class.std::function", align 8    ; 8 uses
  %17 = alloca %"class.std::function.708", align 8 ; 7 uses
  %18 = alloca %"class.std::function.711", align 8 ; 8 uses
  store ptr %3, ptr %i.a, align 8
  store ptr %4, ptr %i.b, align 8
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.e = load ptr, ptr %i.d, align 8              ; 36 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 496 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8
  store i16 5, ptr %i.f, align 8
  %i.h = trunc i32 %2 to i1
  %i.i = and i32 %2, 2
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  %i.j = and i32 %2, 4
  %.not97 = icmp eq i32 %i.j, 0
  %i.k = and i32 %2, 5
  %.not96 = icmp eq i32 %i.k, 0                   ; 3 uses
  %_ZN2v88internal37IsPrivateMethodOrAccessorVariableModeENS0_12VariableModeE._ZN2v88internal27IsPrivateMethodVariableModeENS0_12VariableModeE = select i1 %.not97, ptr @_ZN2v88internal27IsPrivateMethodVariableModeENS0_12VariableModeE, ptr @_ZN2v88internal37IsPrivateMethodOrAccessorVariableModeENS0_12VariableModeE
  %i.l = select i1 %i.h, ptr %_ZN2v88internal37IsPrivateMethodOrAccessorVariableModeENS0_12VariableModeE._ZN2v88internal27IsPrivateMethodVariableModeENS0_12VariableModeE, ptr @_ZN2v88internal29IsPrivateAccessorVariableModeENS0_12VariableModeE ; 4 uses
  %i.m = tail call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef %i.e, ptr %1, i32 noundef 0, i32 noundef 32, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #26 ; 5 uses
  %.not344 = icmp eq ptr %i.m, null
  br i1 %.not344, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32
  %.not98354 = icmp sgt i32 %i.t, 0
  br i1 %.not98354, label %.lr.ph, label %.critedge105

.lr.ph:                                           ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 568 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 55448
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 64088
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 64080
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = ptrtoint ptr %i.c to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge103
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge103 ] ; 2 uses
  %i.ar = phi ptr [ %i.p, %.lr.ph ], [ %i.cz, %.critedge103 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8 ; 2 uses
  %i.av = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.v, align 8
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.d, label %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.ay = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i128 = phi ptr [ %i.ay, %bb.d ], [ %i.av, %bb.c ] ; 4 uses
  %i.az = ptrtoint ptr %.0.i.i128 to i64
  %i.ba = add i64 %i.az, 8
  %i.bb = inttoptr i64 %i.ba to ptr
  store ptr %i.bb, ptr %i.u, align 8
  store i64 %i.au, ptr %.0.i.i128, align 8
  %i.bc = add i64 %i.au, -1
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = and i32 %i.bf, 32
  %.not350 = icmp eq i32 %i.bg, 0
  br i1 %.not350, label %bb.n, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  br i1 %.not96, label %.critedge103, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bh = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = icmp eq i16 %i.bk, 128
  %i.bm = trunc i32 %i.bf to i1
  %or.cond = and i1 %i.bl, %i.bm
  %i.bn = select i1 %or.cond, i32 0, i32 3
  store i32 %i.bn, ptr %6, align 8
  store i32 0, ptr %i.w, align 4
  store i8 0, ptr %i.x, align 8
  store i32 0, ptr %i.y, align 4
  store i32 0, ptr %i.z, align 8
  store ptr %i.e, ptr %i.aa, align 8
  store ptr null, ptr %i.ac, align 8
  store ptr %1, ptr %i.ad, align 8
  store ptr null, ptr %i.ae, align 8
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 -1, i64 16, i1 false)
  %i.bo = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = and i16 %i.br, -96
  %.not.i21.i.i.i = icmp eq i16 %i.bs, 32
  br i1 %.not.i21.i.i.i, label %bb.f, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.f:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !10, !noundef !11
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load i8, ptr %i.ai, align 8, !range !10
  %i.bw = trunc nuw i8 %i.bv to i1
  %not..i.i.i23.i.i.i = xor i1 %i.bu, true
  %i.bx = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bw
  br i1 %i.bx, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = load i8, ptr %i.aj, align 8, !range !10, !noundef !11
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.g
  %i.ca = load ptr, ptr %i.ak, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.f
  %.pn.i.i26.i.i.i = phi ptr [ %i.ca, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %i.e, %bb.f ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.cb = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.cc = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr nonnull %.0.i.i128) #26
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.cc, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %.0.i.i128, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.ab, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #26
  %i.cd = load i32, ptr %i.w, align 4
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.ce = load ptr, ptr %i.aa, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cg = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %6, i1 noundef zeroext false) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not351 = icmp eq ptr %i.cg, null
  br i1 %.not351, label %.critedge101, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i337 = phi ptr [ %i.cf, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.cg, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ]
  %i.ch = load i64, ptr %.sroa.0.0.i337, align 8
  %i.ci = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.cj = load ptr, ptr %i.v, align 8
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.j, label %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.cl = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit

_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.cl, %bb.j ], [ %i.ci, %bb.i ] ; 3 uses
  %i.cm = ptrtoint ptr %.0.i.i to i64
  %i.cn = add i64 %i.cm, 8
  %i.co = inttoptr i64 %i.cn to ptr
  store ptr %i.co, ptr %i.u, align 8
  store i64 %i.ch, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 0, ptr %i.aq, align 8
  store ptr %i.l, ptr %7, align 8
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFbN2v88internal12VariableModeEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFbN2v88internal12VariableModeEEPS3_E9_M_invokeERKSt9_Any_dataOS2_>, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFbN2v88internal12IsStaticFlagEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENS5_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFbN2v88internal12IsStaticFlagEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENS5_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESD_E3$_0E9_M_invokeERKSt9_Any_dataOS2_">, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 0, ptr %i.ap, align 8
  store i64 %i.an, ptr %9, align 8
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvN2v88internal12VariableModeENS1_6HandleINS1_6StringEEENS3_INS1_6ObjectEEEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENSA_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESI_E3$_1E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvN2v88internal12VariableModeENS1_6HandleINS1_6StringEEENS3_INS1_6ObjectEEEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENSA_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESI_E3$_1E9_M_invokeERKSt9_Any_dataOS2_OS5_OS7_">, ptr %i.ao, align 8
  call fastcc void @_ZN2v85debug12_GLOBAL__N_119ForEachContextLocalEPNS_8internal7IsolateENS2_12DirectHandleINS2_7ContextEEERKSt8functionIFbNS2_12VariableModeEEERKS8_IFbNS2_12IsStaticFlagEEERKS8_IFvS9_NS2_6HandleINS2_6StringEEENSJ_INS2_6ObjectEEEEE(ptr noundef nonnull %i.e, ptr nonnull %.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
  %i.cp = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i136 = icmp eq ptr %i.cp, null
  br i1 %.not.i136, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit
  %i.cq = call noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3) #26, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.cr = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i137 = icmp eq ptr %i.cr, null
  br i1 %.not.i137, label %_ZNSt14_Function_baseD2Ev.exit138, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #26, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit138

_ZNSt14_Function_baseD2Ev.exit138:                ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ct = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i139 = icmp eq ptr %i.ct, null
  br i1 %.not.i139, label %_ZNSt14_Function_baseD2Ev.exit140, label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit138
  %i.cu = call noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #26, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit140

_ZNSt14_Function_baseD2Ev.exit140:                ; preds = %_ZNSt14_Function_baseD2Ev.exit138, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.critedge103

bb.n:                                             ; preds = %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  br i1 %.not, label %.critedge103, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load i32, ptr %i.c, align 4
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.c, align 4
  br label %.critedge103

.critedge103:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit140, %bb.n, %bb.o, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = load i64, ptr %i.m, align 8
  %i.cy = add i64 %i.cx, -1
  %i.cz = inttoptr i64 %i.cy to ptr               ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = ashr i64 %i.db, 32
  %.not98 = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %.not98, label %bb.c, label %.critedge105, !llvm.loop !13

.critedge105:                                     ; preds = %.critedge103, %bb.b
  br i1 %.not96, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.critedge105
  %i.dd = load i64, ptr %1, align 8               ; 3 uses
  %i.de = add i64 %i.dd, -1
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8
  %i.dh = add i64 %i.dg, 11
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i16, ptr %i.di monotonic, align 2
  %i.dk = add i16 %i.dj, -2065
  %i.dl = icmp ult i16 %i.dk, 17
  br i1 %i.dl, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 6 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 568 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.r, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.r:                                             ; preds = %bb.q
  %i.dr = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.q, %bb.r
  %.0.i.i132 = phi ptr [ %i.dr, %bb.r ], [ %i.dn, %bb.q ] ; 3 uses
  %i.ds = ptrtoint ptr %.0.i.i132 to i64
  %i.dt = add i64 %i.ds, 8
  %i.du = inttoptr i64 %i.dt to ptr
  store ptr %i.du, ptr %i.dm, align 8
  store i64 %i.dd, ptr %.0.i.i132, align 8
  %i.dv = add i64 %i.dd, 31
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = load atomic volatile i64, ptr %i.dw monotonic, align 8 ; 3 uses
  %i.dy = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.dz = load ptr, ptr %i.do, align 8
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.s, label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.s:                                             ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.eb = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.s
  %.0.i.i133 = phi ptr [ %i.eb, %bb.s ], [ %i.dy, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %i.ec = ptrtoint ptr %.0.i.i133 to i64
  %i.ed = add i64 %i.ec, 8
  %i.ee = inttoptr i64 %i.ed to ptr
  store ptr %i.ee, ptr %i.dm, align 8
  store i64 %i.dx, ptr %.0.i.i133, align 8
  %i.ef = add i64 %i.dx, 55
  %i.eg = inttoptr i64 %i.ef to ptr
end_hunk_0
begin_hunk_1_@_ZN2v85debug17GetPrivateMembersENS_5LocalINS_7ContextEEENS1_INS_6ObjectEEEiPNS_11LocalVectorINS_5ValueEEES9_:bb.a
bb.ab:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit.thread: ; preds = %bb.aa, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit.thread412, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit
  %.pre-phi411 = phi i64 [ %i.fp, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit.thread412 ], [ %.pre368, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %i.fp, %bb.aa ] ; 3 uses
  %i.ha = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load ptr, ptr %i.ha, align 8            ; 7 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64               ; 4 uses
  %i.hg = sub i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = ashr exact i64 %i.hg, 3
  %i.hi = icmp ult i64 %i.hh, %.pre-phi411
  br i1 %i.hi, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit.i.i150, label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit159

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit.i.i150: ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8            ; 3 uses
  %i.hl = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hm = sub i64 %i.hl, %i.hf
  %i.hn = shl nuw nsw i64 %.pre-phi411, 3
  %i.ho = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #29 ; 7 uses
  %.not10.i.i.i.i.i151 = icmp eq ptr %i.hd, %i.hk
  br i1 %.not10.i.i.i.i.i151, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i156, label %.lr.ph.i.i.i.i.i152.preheader

.lr.ph.i.i.i.i.i152.preheader:                    ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit.i.i150
  %i.hp = ptrtoaddr ptr %i.ho to i64
  %i.hq = add i64 %i.hl, -8
  %i.hr = sub i64 %i.hq, %i.hf                    ; 2 uses
  %i.hs = lshr i64 %i.hr, 3
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check426 = icmp ult i64 %i.hr, 56
  %i.hu = sub i64 %i.hp, %i.hf
  %diff.check424 = icmp ult i64 %i.hu, 32
  %or.cond478 = or i1 %min.iters.check426, %diff.check424
  br i1 %or.cond478, label %.lr.ph.i.i.i.i.i152.preheader484, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph.i.i.i.i.i152.preheader
  %n.vec429 = and i64 %i.ht, 4611686018427387900  ; 3 uses
  %i.hv = shl i64 %n.vec429, 3                    ; 2 uses
  %i.hw = getelementptr i8, ptr %i.ho, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hd, i64 %i.hv
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph427
  %index431 = phi i64 [ 0, %vector.ph427 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.hy = shl i64 %index431, 3                    ; 2 uses
  %next.gep432 = getelementptr i8, ptr %i.ho, i64 %i.hy ; 2 uses
  %next.gep433 = getelementptr i8, ptr %i.hd, i64 %i.hy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.hz = getelementptr i8, ptr %next.gep433, i64 16
  %wide.load434 = load <2 x i64>, ptr %next.gep433, align 8, !alias.scope !26, !noalias !23
  %wide.load435 = load <2 x i64>, ptr %i.hz, align 8, !alias.scope !26, !noalias !23
  %i.ia = getelementptr i8, ptr %next.gep432, i64 16
  store <2 x i64> %wide.load434, ptr %next.gep432, align 8, !alias.scope !23, !noalias !26
  store <2 x i64> %wide.load435, ptr %i.ia, align 8, !alias.scope !23, !noalias !26
  %index.next436 = add nuw i64 %index431, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.ib, label %middle.block437, label %vector.body430, !llvm.loop !28

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.ht, %n.vec429
  br i1 %cmp.n438, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i156, label %.lr.ph.i.i.i.i.i152.preheader484

.lr.ph.i.i.i.i.i152.preheader484:                 ; preds = %.lr.ph.i.i.i.i.i152.preheader, %middle.block437
  %.012.i.i.i.i.i153.ph = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i152.preheader ], [ %i.hw, %middle.block437 ]
  %.0911.i.i.i.i.i154.ph = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i152.preheader ], [ %i.hx, %middle.block437 ]
  br label %.lr.ph.i.i.i.i.i152

.lr.ph.i.i.i.i.i152:                              ; preds = %.lr.ph.i.i.i.i.i152.preheader484, %.lr.ph.i.i.i.i.i152
  %.012.i.i.i.i.i153 = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i152 ], [ %.012.i.i.i.i.i153.ph, %.lr.ph.i.i.i.i.i152.preheader484 ] ; 2 uses
  %.0911.i.i.i.i.i154 = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i152 ], [ %.0911.i.i.i.i.i154.ph, %.lr.ph.i.i.i.i.i152.preheader484 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.ic = load i64, ptr %.0911.i.i.i.i.i154, align 8, !alias.scope !26, !noalias !23
  store i64 %i.ic, ptr %.012.i.i.i.i.i153, align 8, !alias.scope !23, !noalias !26
  %i.id = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i154, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i153, i64 8
  %.not.i.i.i.i.i155 = icmp eq ptr %i.id, %i.hk
  br i1 %.not.i.i.i.i.i155, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i156, label %.lr.ph.i.i.i.i.i152, !llvm.loop !29

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i156: ; preds = %.lr.ph.i.i.i.i.i152, %middle.block437, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit.i.i150
  %.not.i8.i.i157 = icmp eq ptr %i.hd, null
  br i1 %.not.i8.i.i157, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i158, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i156
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hg) #30
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i158

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i158: ; preds = %bb.ac, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i156
  store ptr %i.ho, ptr %i.ha, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hm
  store ptr %i.if, ptr %i.hj, align 8
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.pre-phi411
  store ptr %i.ig, ptr %i.hb, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit159

_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit159: ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit.thread, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i158
  br i1 %.194, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit159
  %i.ih = load i64, ptr %1, align 8
  %i.ii = add i64 %i.ih, 39
  %i.ij = inttoptr i64 %i.ii to ptr
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8            ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.e, i64 568
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = icmp eq ptr %i.im, %i.io
  br i1 %i.ip, label %bb.ae, label %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit162, !prof !5

bb.ae:                                            ; preds = %bb.ad
  %i.iq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit162

_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit162: ; preds = %bb.ad, %bb.ae
  %.0.i.i124 = phi ptr [ %i.iq, %bb.ae ], [ %i.im, %bb.ad ] ; 3 uses
  %i.ir = ptrtoint ptr %.0.i.i124 to i64
  %i.is = add i64 %i.ir, 8
  %i.it = inttoptr i64 %i.is to ptr
  store ptr %i.it, ptr %i.il, align 8
  store i64 %i.ik, ptr %.0.i.i124, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.iw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.l, ptr %13, align 8
  store ptr @_ZNSt17_Function_handlerIFbN2v88internal12VariableModeEEPS3_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.iv, align 8
  store ptr @_ZNSt17_Function_handlerIFbN2v88internal12VariableModeEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.iw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ix = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbN2v88internal12IsStaticFlagEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENS5_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESD_E3$_2E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.iy, align 8
  store ptr @"_ZNSt17_Function_handlerIFbN2v88internal12IsStaticFlagEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENS5_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESD_E3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.ix, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.iz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.a, ptr %15, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal12VariableModeENS1_6HandleINS1_6StringEEENS3_INS1_6ObjectEEEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENSA_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESI_E3$_3E9_M_invokeERKSt9_Any_dataOS2_OS5_OS7_", ptr %i.ja, align 8
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal12VariableModeENS1_6HandleINS1_6StringEEENS3_INS1_6ObjectEEEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENSA_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESI_E3$_3E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.iz, align 8
  call fastcc void @_ZN2v85debug12_GLOBAL__N_119ForEachContextLocalEPNS_8internal7IsolateENS2_12DirectHandleINS2_7ContextEEERKSt8functionIFbNS2_12VariableModeEEERKS8_IFbNS2_12IsStaticFlagEEERKS8_IFvS9_NS2_6HandleINS2_6StringEEENSJ_INS2_6ObjectEEEEE(ptr noundef nonnull %i.e, ptr nonnull %.0.i.i124, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %i.jb = load ptr, ptr %i.iz, align 8            ; 2 uses
  %.not.i163 = icmp eq ptr %i.jb, null
  br i1 %.not.i163, label %_ZNSt14_Function_baseD2Ev.exit164, label %bb.af

bb.af:                                            ; preds = %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit162
  %i.jc = call noundef zeroext i1 %i.jb(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3) #26, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit164

_ZNSt14_Function_baseD2Ev.exit164:                ; preds = %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit162, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.jd = load ptr, ptr %i.ix, align 8            ; 2 uses
  %.not.i165 = icmp eq ptr %i.jd, null
  br i1 %.not.i165, label %_ZNSt14_Function_baseD2Ev.exit166, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit164
  %i.je = call noundef zeroext i1 %i.jd(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3) #26, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit166

_ZNSt14_Function_baseD2Ev.exit166:                ; preds = %_ZNSt14_Function_baseD2Ev.exit164, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.jf = load ptr, ptr %i.iw, align 8            ; 2 uses
  %.not.i167 = icmp eq ptr %i.jf, null
  br i1 %.not.i167, label %_ZNSt14_Function_baseD2Ev.exit168, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit166
  %i.jg = call noundef zeroext i1 %i.jf(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3) #26, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit168

_ZNSt14_Function_baseD2Ev.exit168:                ; preds = %_ZNSt14_Function_baseD2Ev.exit166, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit168, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit159
  %i.jh = load i64, ptr %i.m, align 8
  %i.ji = add i64 %i.jh, -1
  %i.jj = inttoptr i64 %i.ji to ptr               ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = lshr i64 %i.jl, 32
  %i.jn = trunc nuw i64 %i.jm to i32
  %.not99.not356 = icmp sgt i32 %i.jn, 0
  br i1 %.not99.not356, label %.lr.ph358, label %.critedge101

.lr.ph358:                                        ; preds = %bb.ai
  %i.jo = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 8 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.e, i64 568 ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.jx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ka = ptrtoint ptr %1 to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.kc = getelementptr inbounds nuw i8, ptr %i.e, i64 55448
  %i.kd = getelementptr inbounds nuw i8, ptr %i.e, i64 64088
  %i.ke = getelementptr inbounds nuw i8, ptr %i.e, i64 64080
  %i.kf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph358, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit206
  %indvars.iv363 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next364, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit206 ] ; 2 uses
  %i.kj = phi ptr [ %i.jj, %.lr.ph358 ], [ %i.qk, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit206 ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv363
  %i.km = load atomic volatile i64, ptr %i.kl monotonic, align 8 ; 3 uses
  %i.kn = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.ko = load ptr, ptr %i.jp, align 8
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %bb.ak, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit121, !prof !5

bb.ak:                                            ; preds = %bb.aj
  %i.kq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit121

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit121: ; preds = %bb.aj, %bb.ak
  %.0.i120 = phi ptr [ %i.kq, %bb.ak ], [ %i.kn, %bb.aj ] ; 2 uses
  %i.kr = ptrtoint ptr %.0.i120 to i64
  %i.ks = add i64 %i.kr, 8
  %i.kt = inttoptr i64 %i.ks to ptr
  store ptr %i.kt, ptr %i.jo, align 8
  store i64 %i.km, ptr %.0.i120, align 8
  %i.ku = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.kv = load ptr, ptr %i.jp, align 8
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %bb.al, label %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit130, !prof !5

bb.al:                                            ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit121
  %i.kx = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit130

_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit130: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit121, %bb.al
  %.0.i.i129 = phi ptr [ %i.kx, %bb.al ], [ %i.ku, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit121 ] ; 5 uses
  %i.ky = ptrtoint ptr %.0.i.i129 to i64
  %i.kz = add i64 %i.ky, 8
  %i.la = inttoptr i64 %i.kz to ptr
  store ptr %i.la, ptr %i.jo, align 8
  store i64 %i.km, ptr %.0.i.i129, align 8
  %i.lb = add i64 %i.km, -1
  %i.lc = inttoptr i64 %i.lb to ptr               ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %i.le = load i32, ptr %i.ld, align 4            ; 2 uses
  %i.lf = and i32 %i.le, 16
  %.not347 = icmp eq i32 %i.lf, 0
  br i1 %.not347, label %bb.am, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i171, !prof !5

bb.am:                                            ; preds = %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit130
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #27
  unreachable

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i171: ; preds = %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.lg = load atomic volatile i64, ptr %i.lc monotonic, align 8
  %i.lh = add i64 %i.lg, 11
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = load atomic volatile i16, ptr %i.li monotonic, align 2
  %i.lk = icmp eq i16 %i.lj, 128
  %i.ll = trunc i32 %i.le to i1
  %or.cond417 = and i1 %i.lk, %i.ll
  %i.lm = select i1 %or.cond417, i32 0, i32 3
  store i32 %i.lm, ptr %5, align 8
  store i32 0, ptr %i.jq, align 4
  store i8 0, ptr %i.jr, align 8
  store i32 0, ptr %i.js, align 4
  store i32 0, ptr %i.jt, align 8
  store ptr %i.e, ptr %i.ju, align 8
  store ptr null, ptr %i.jw, align 8
  store ptr %1, ptr %i.jx, align 8
  store ptr null, ptr %i.jy, align 8
  store i64 %i.ka, ptr %i.jz, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, i8 -1, i64 16, i1 false)
  %i.ln = load atomic volatile i64, ptr %i.lc monotonic, align 8
  %i.lo = add i64 %i.ln, 11
  %i.lp = inttoptr i64 %i.lo to ptr
  %i.lq = load atomic volatile i16, ptr %i.lp monotonic, align 2
  %i.lr = and i16 %i.lq, -96
  %.not.i21.i.i.i172 = icmp eq i16 %i.lr, 32
  br i1 %.not.i21.i.i.i172, label %bb.an, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i173

bb.an:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i171
  %i.ls = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !10, !noundef !11
  %i.lt = trunc nuw i8 %i.ls to i1
  %i.lu = load i8, ptr %i.kc, align 8, !range !10
  %i.lv = trunc nuw i8 %i.lu to i1
  %not..i.i.i23.i.i.i177 = xor i1 %i.lt, true
  %i.lw = select i1 %not..i.i.i23.i.i.i177, i1 true, i1 %i.lv
  br i1 %i.lw, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i179, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lx = load i8, ptr %i.kd, align 8, !range !10, !noundef !11
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i178, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i178: ; preds = %bb.ao
  %i.lz = load ptr, ptr %i.ke, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i179

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i179: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i178, %bb.an
  %.pn.i.i26.i.i.i180 = phi ptr [ %i.lz, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i178 ], [ %i.e, %bb.an ]
  %.in.i.i27.i.i.i181 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i180, i64 58464
  %i.ma = load ptr, ptr %.in.i.i27.i.i.i181, align 8
  %i.mb = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ma, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr nonnull %.0.i.i129) #26
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i173

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i173: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i179, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i171
  %.sroa.05.0.i22.i.i.i174 = phi ptr [ %i.mb, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i179 ], [ %.0.i.i129, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i171 ]
  store ptr %.sroa.05.0.i22.i.i.i174, ptr %i.jv, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #26
  %i.mc = load i32, ptr %i.jq, align 4
  %.not.i175 = icmp eq i32 %i.mc, 0
  br i1 %.not.i175, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit183.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit183

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit183.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i173
  %i.md = load ptr, ptr %i.ju, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.aq

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit183: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i173
  %i.mf = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.not348 = icmp eq ptr %i.mf, null
  br i1 %.not348, label %.critedge101, label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit183, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit183.thread
  %.sroa.0.0.i176341 = phi ptr [ %i.me, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit183.thread ], [ %i.mf, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit183 ] ; 2 uses
  %i.mg = load i64, ptr %.0.i.i129, align 8
  %i.mh = add i64 %i.mg, -1
  %i.mi = inttoptr i64 %i.mh to ptr               ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %i.mk = load i32, ptr %i.mj, align 4
  %i.ml = and i32 %i.mk, 32
  %.not349 = icmp eq i32 %i.ml, 0
  br i1 %.not349, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not96, label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit206, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mm = load i64, ptr %.sroa.0.0.i176341, align 8
  %i.mn = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.mo = load ptr, ptr %i.jp, align 8
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %bb.at, label %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit185, !prof !5

bb.at:                                            ; preds = %bb.as
  %i.mq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit185

_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit185: ; preds = %bb.as, %bb.at
  %.0.i.i126 = phi ptr [ %i.mq, %bb.at ], [ %i.mn, %bb.as ] ; 3 uses
  %i.mr = ptrtoint ptr %.0.i.i126 to i64
  %i.ms = add i64 %i.mr, 8
  %i.mt = inttoptr i64 %i.ms to ptr
  store ptr %i.mt, ptr %i.jo, align 8
  store i64 %i.mm, ptr %.0.i.i126, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i64 0, ptr %i.ki, align 8
  store ptr %i.l, ptr %16, align 8
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFbN2v88internal12VariableModeEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFbN2v88internal12VariableModeEEPS3_E9_M_invokeERKSt9_Any_dataOS2_>, ptr %i.kf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFbN2v88internal12IsStaticFlagEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENS5_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFbN2v88internal12IsStaticFlagEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENS5_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESD_E3$_0E9_M_invokeERKSt9_Any_dataOS2_">, ptr %i.kg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store ptr %i.a, ptr %18, align 8
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx231, align 8
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvN2v88internal12VariableModeENS1_6HandleINS1_6StringEEENS3_INS1_6ObjectEEEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENSA_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESI_E3$_3E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvN2v88internal12VariableModeENS1_6HandleINS1_6StringEEENS3_INS1_6ObjectEEEEZNS0_5debug17GetPrivateMembersENS0_5LocalINS0_7ContextEEENSA_INS0_6ObjectEEEiPNS0_11LocalVectorINS0_5ValueEEESI_E3$_3E9_M_invokeERKSt9_Any_dataOS2_OS5_OS7_">, ptr %i.kh, align 8
  call fastcc void @_ZN2v85debug12_GLOBAL__N_119ForEachContextLocalEPNS_8internal7IsolateENS2_12DirectHandleINS2_7ContextEEERKSt8functionIFbNS2_12VariableModeEEERKS8_IFbNS2_12IsStaticFlagEEERKS8_IFvS9_NS2_6HandleINS2_6StringEEENSJ_INS2_6ObjectEEEEE(ptr noundef nonnull %i.e, ptr nonnull %.0.i.i126, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.mu = load ptr, ptr %i.kh, align 8            ; 2 uses
  %.not.i186 = icmp eq ptr %i.mu, null
  br i1 %.not.i186, label %_ZNSt14_Function_baseD2Ev.exit187, label %bb.au

bb.au:                                            ; preds = %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit185
  %i.mv = call noundef zeroext i1 %i.mu(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3) #26, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit187

_ZNSt14_Function_baseD2Ev.exit187:                ; preds = %_ZNSt8functionIFbN2v88internal12VariableModeEEEC2IRPS3_vEEOT_.exit185, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.mw = load ptr, ptr %i.kg, align 8            ; 2 uses
  %.not.i188 = icmp eq ptr %i.mw, null
  br i1 %.not.i188, label %_ZNSt14_Function_baseD2Ev.exit189, label %bb.av

bb.av:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit187
  %i.mx = call noundef zeroext i1 %i.mw(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3) #26, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit189

_ZNSt14_Function_baseD2Ev.exit189:                ; preds = %_ZNSt14_Function_baseD2Ev.exit187, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.my = load ptr, ptr %i.kf, align 8            ; 2 uses
  %.not.i190 = icmp eq ptr %i.my, null
  br i1 %.not.i190, label %_ZNSt14_Function_baseD2Ev.exit191, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit189
  %i.mz = call noundef zeroext i1 %i.my(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3) #26, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit191

_ZNSt14_Function_baseD2Ev.exit191:                ; preds = %_ZNSt14_Function_baseD2Ev.exit189, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit206

bb.ax:                                            ; preds = %bb.aq
  br i1 %.not, label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit206, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.na = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.nb = load i64, ptr %i.na, align 8
  %i.nc = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.nd = load ptr, ptr %i.jp, align 8
  %i.ne = icmp eq ptr %i.nc, %i.nd
  br i1 %i.ne, label %bb.az, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.az:                                            ; preds = %bb.ay
  %i.nf = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.e) #26
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.ay, %bb.az
  %.0.i = phi ptr [ %i.nf, %bb.az ], [ %i.nc, %bb.ay ] ; 2 uses
  %i.ng = ptrtoint ptr %.0.i to i64               ; 3 uses
  %i.nh = add i64 %i.ng, 8
  %i.ni = inttoptr i64 %i.nh to ptr
  store ptr %i.ni, ptr %i.jo, align 8
  store i64 %i.nb, ptr %.0.i, align 8
  %i.nj = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 4 uses
  %i.nl = load ptr, ptr %i.nk, align 8            ; 5 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 16 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8
  %.not.i.i.i = icmp eq ptr %i.nl, %i.nn
  br i1 %.not.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  store i64 %i.ng, ptr %i.nl, align 8
  %i.no = load ptr, ptr %i.nk, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.np, ptr %i.nk, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit

bb.bb:                                            ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.nq = load ptr, ptr %i.nj, align 8            ; 7 uses
  %i.nr = ptrtoint ptr %i.nl to i64               ; 2 uses
  %i.ns = ptrtoint ptr %i.nq to i64               ; 3 uses
  %i.nt = sub i64 %i.nr, %i.ns                    ; 4 uses
  %i.nu = icmp eq i64 %i.nt, 9223372036854775800
  br i1 %i.nu, label %bb.bc, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bb
  %i.nv = ashr exact i64 %i.nt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nv, i64 1)
  %i.nw = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.nv ; 2 uses
  %i.nx = icmp ult i64 %i.nw, %i.nv
  %i.ny = call i64 @llvm.umin.i64(i64 %i.nw, i64 1152921504606846975)
  %i.nz = select i1 %i.nx, i64 1152921504606846975, i64 %i.ny ; 3 uses
  %.not.i.i.i.i.i192 = icmp ne i64 %i.nz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i192)
  %i.oa = shl nuw nsw i64 %i.nz, 3
  %i.ob = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oa) #29 ; 8 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nt
  store i64 %i.ng, ptr %i.oc, align 8
end_hunk_1
begin_hunk_2_@_ZN2v85debug8Coverage17CollectBestEffortEPNS_7IsolateE:_ZNSt12__shared_ptrIN2v88internal8CoverageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal8CoverageESt14default_deleteIS2_EED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIN2v88internal8CoverageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZNKSt14default_deleteIN2v88internal8CoverageEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c)
  br label %_ZNSt10unique_ptrIN2v88internal8CoverageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal8CoverageESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2v88internal8CoverageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

declare void @_ZN2v88internal8Coverage17CollectBestEffortEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.1157") align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v85debug8Coverage15CollectWasmDataEPNS_7IsolateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::debug::Coverage") align 8 captures(none) initializes((0, 16)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
_ZNSt12__shared_ptrIN2v88internal8CoverageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %2 = alloca %"class.std::shared_ptr.1139", align 16 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.1157", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN2v88internal8Coverage15CollectWasmDataEPNS0_7IsolateE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1157") align 8 %3, ptr noundef %1) #26
  call void @_ZNSt12__shared_ptrIN2v88internal8CoverageELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x ptr>, ptr %2, align 16
  store ptr null, ptr %i.a, align 8
  store <2 x ptr> %i.b, ptr %0, align 8
  store ptr null, ptr %2, align 16
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal8CoverageESt14default_deleteIS2_EED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIN2v88internal8CoverageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZNKSt14default_deleteIN2v88internal8CoverageEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c)
  br label %_ZNSt10unique_ptrIN2v88internal8CoverageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal8CoverageESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2v88internal8CoverageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

declare void @_ZN2v88internal8Coverage15CollectWasmDataEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.1157") align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v85debug8Coverage10SelectModeEPNS_7IsolateENS0_12CoverageModeE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN2v88internal8Coverage10SelectModeEPNS0_7IsolateENS_5debug12CoverageModeE(ptr noundef %0, i32 noundef %1) #26
  ret void
}

declare void @_ZN2v88internal8Coverage10SelectModeEPNS0_7IsolateENS_5debug12CoverageModeE(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v85debug14EphemeronTable3GetEPNS_7IsolateENS_5LocalINS_5ValueEEE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, ptr %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call i64 @_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE6LookupENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr %2) #26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #26
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i, align 8
  %i.n = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 10624
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.d, %i.r
  %spec.select = select i1 %i.s, ptr null, ptr %.0.i
  ret ptr %spec.select
}

declare i64 @_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE6LookupENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16), ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v85debug14EphemeronTable3SetEPNS_7IsolateENS_5LocalINS_5ValueEEES6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef readnone captures(none) %1, ptr %2, ptr %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE3PutENS0_6HandleIS2_EENS0_12DirectHandleINS0_6ObjectEEES9_(ptr nonnull %0, ptr %2, ptr %3) #26
  ret ptr %i.a
}

declare ptr @_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE3PutENS0_6HandleIS2_EENS0_12DirectHandleINS0_6ObjectEEES9_(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v85debug14EphemeronTable3NewEPNS_7IsolateE(ptr noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  store i16 5, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v88internal9HashTableINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 0) #26
  store i16 %i.b, ptr %i.a, align 8
  ret ptr %i.c
}

declare ptr @_ZN2v88internal9HashTableINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v85debug12AccessorPair6getterEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #26
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.g, ptr %.0.i, align 8
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v85debug12AccessorPair6setterEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #26
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.g, ptr %.0.i, align 8
  ret ptr %.0.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v85debug12AccessorPair14IsAccessorPairENS_5LocalINS_5ValueEEE(ptr nofree readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 140
  br label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v85debug21GetMessageFromPromiseENS_5LocalINS_7PromiseEEE(ptr %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8000 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %.pre.pre.i = load i64, ptr %i.c, align 8
  %i.d = add i64 %.pre.pre.i, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 128
  br i1 %i.j, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.n = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.n, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = ptrtoint ptr %0 to i64
  store i64 %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 -1, i64 16, i1 false)
  %i.aa = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2
  %i.ae = and i16 %i.ad, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ae, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !10, !noundef !11
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 55448
  %i.ai = load i8, ptr %i.ah, align 8, !range !10
  %i.aj = trunc nuw i8 %i.ai to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ag, true
  %i.ak = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.aj
  br i1 %i.ak, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 64088
  %i.am = load i8, ptr %i.al, align 8, !range !10, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 64080
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %i.b, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.aq = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ar = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr nonnull %i.c) #26
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ar, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.c, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.t, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %1) #26
  %i.as = load i32, ptr %i.o, align 4
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = load ptr, ptr %i.s, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.av = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %1, i32 noundef 0) #26
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi ptr [ %i.av, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.aw = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.ax = trunc i64 %i.aw to i1
  br i1 %i.ax, label %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal17IsJSMessageObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.ay = add nsw i64 %i.aw, -1
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = add i64 %i.ba, 11
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i16, ptr %i.bc monotonic, align 2
  %i.be = icmp eq i16 %i.bd, 272
  br i1 %i.be, label %_ZN2v88internal17IsJSMessageObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread, label %_ZN2v88internal17IsJSMessageObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit

_ZN2v88internal17IsJSMessageObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bf = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bg = add i64 %i.bf, 11
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i16, ptr %i.bh monotonic, align 2
  %i.bj = icmp eq i16 %i.bi, 2133
  %spec.select = select i1 %i.bj, ptr %.sroa.07.0.i, ptr null
  br label %_ZN2v88internal17IsJSMessageObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal17IsJSMessageObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %_ZN2v88internal17IsJSMessageObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.019.0 = phi ptr [ null, %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit ], [ null, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %spec.select, %_ZN2v88internal17IsJSMessageObjectENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit ]
  ret ptr %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v85debug37RecordAsyncStackTaggingCreateTaskCallEPNS_7IsolateE(ptr noundef nonnull %0) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i32 noundef 116) #26
  ret void
}

declare void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v85debug29NotifyDebuggerPausedEventSentEPNS_7IsolateE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59496
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal5Debug29NotifyDebuggerPausedEventSentEv(ptr noundef nonnull align 8 dereferenceable(256) %i.b) #26
  ret void
}

declare void @_ZN2v88internal5Debug29NotifyDebuggerPausedEventSentEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v85debug12GetIsolateIdEPNS_7IsolateE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59496
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v85debug12SetIsolateIdEPNS_7IsolateEm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59496
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i64 %1, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v85debug16PropertyIterator6CreateENS_5LocalINS_7ContextEEENS2_INS_6ObjectEEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.1179") align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly captures(none) %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %"class.v8::CallDepthScope", align 8 ; 7 uses
  %5 = alloca %"class.std::unique_ptr.1187", align 8 ; 4 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i64, ptr %i.c, align 8
  %i.g = icmp eq i64 %i.f, %i.e
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.b, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNSt10unique_ptrIN2v88internal21DebugPropertyIteratorESt14default_deleteIS2_EED2Ev.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #26
  br label %_ZNSt10unique_ptrIN2v88internal21DebugPropertyIteratorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal21DebugPropertyIteratorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = ptrtoint ptr %.0.i.i.i to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.i, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %.0.i.i.i, align 8
  store ptr %.0.i.i.i, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8
  %i.v = ptrtoint ptr %4 to i64
  store i64 %i.v, ptr %i.s, align 8
  %i.w = load i64, ptr %1, align 8
  store i64 %i.w, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN2v88internal21DebugPropertyIterator6CreateEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1187") align 8 %5, ptr noundef nonnull %i.b, ptr %2, i1 noundef zeroext %3) #26
  %i.x = load ptr, ptr %5, align 8
  store ptr %i.x, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.y = load ptr, ptr %4, align 8                ; 7 uses
  %i.z = load i64, ptr %i.u, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 360
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = icmp eq i64 %i.z, 0
end_hunk_2
