inline.NumInlined: 2359
inline.NumDeleted: 1001
begin_hunk_0_@_ZN2v88internal10JSFunction19RequestOptimizationEPNS0_7IsolateENS0_8CodeKindENS0_15ConcurrencyModeE:bb.a
  %i.cr = lshr i32 %i.cq, 8
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !6, !noundef !7
  %i.ct = trunc nuw i8 %i.cs to i1
  %.not.i28 = xor i1 %i.ct, true
  %i.cu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !6
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond.i29 = select i1 %.not.i28, i1 true, i1 %i.cv
  br i1 %or.cond.i29, label %bb.v, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i30

bb.v:                                             ; preds = %bb.u
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8.i34 = icmp eq i32 %i.cw, -1
  br i1 %.not8.i34, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i30, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.cw, i32 noundef 0) #14
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i30

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i30: ; preds = %bb.w, %bb.v, %bb.u
  %i.cx = load ptr, ptr %i.ay, align 8
  %i.cy = zext nneg i32 %i.cr to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 21912
  %i.db = load i64, ptr %i.da, align 8
  store atomic i64 %i.db, ptr %i.cz monotonic, align 8
  %i.dc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !6, !noundef !7
  %i.dd = trunc nuw i8 %i.dc to i1
  %.not5.i31 = xor i1 %i.dd, true
  %i.de = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !6
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond7.i32 = select i1 %.not5.i31, i1 true, i1 %i.df
  br i1 %or.cond7.i32, label %bb.x, label %_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE.exit

bb.x:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i30
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not9.i33 = icmp eq i32 %i.dg, -1
  br i1 %.not9.i33, label %_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.dg, i32 noundef 2) #14
  br label %_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE.exit

bb.z:                                             ; preds = %bb.t
  %i.dh = load i64, ptr %0, align 8
  %i.di = add i64 %i.dh, 23
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i32, ptr %i.dj monotonic, align 4
  %i.dl = lshr i32 %i.dk, 8
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !6, !noundef !7
  %i.dn = trunc nuw i8 %i.dm to i1
  %.not.i36 = xor i1 %i.dn, true
  %i.do = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !6
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond.i37 = select i1 %.not.i36, i1 true, i1 %i.dp
  br i1 %or.cond.i37, label %bb.aa, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i38

bb.aa:                                            ; preds = %bb.z
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8.i42 = icmp eq i32 %i.dq, -1
  br i1 %.not8.i42, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i38, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.dq, i32 noundef 0) #14
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i38

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i38: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dr = load ptr, ptr %i.ay, align 8
  %i.ds = zext nneg i32 %i.dl to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 21920
  %i.dv = load i64, ptr %i.du, align 8
  store atomic i64 %i.dv, ptr %i.dt monotonic, align 8
  %i.dw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !6, !noundef !7
  %i.dx = trunc nuw i8 %i.dw to i1
  %.not5.i39 = xor i1 %i.dx, true
  %i.dy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !6
  %i.dz = trunc nuw i8 %i.dy to i1
  %or.cond7.i40 = select i1 %.not5.i39, i1 true, i1 %i.dz
  br i1 %or.cond7.i40, label %bb.ac, label %_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE.exit

bb.ac:                                            ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i38
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not9.i41 = icmp eq i32 %i.ea, -1
  br i1 %.not9.i41, label %_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.ea, i32 noundef 2) #14
  br label %_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE.exit

bb.ae:                                            ; preds = %.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.16) #13
  unreachable

_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE.exit: ; preds = %bb.ad, %bb.ac, %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i38, %bb.y, %bb.x, %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i30, %bb.s, %bb.r, %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i22, %bb.n, %bb.m, %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i, %bb.i, %bb.t, %bb.f, %bb.g
  ret void
}

declare void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EEP8_IO_FILE(i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = lshr i32 %1, 8
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !6
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8 = icmp eq i32 %i.f, -1
  br i1 %.not8, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.f, i32 noundef 0) #14
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit:  ; preds = %bb.a, %bb.c, %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = zext nneg i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 21040
  %i.k = zext i32 %2 to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  store atomic i64 %i.m, ptr %i.i monotonic, align 8
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !6, !noundef !7
  %i.o = trunc nuw i8 %i.n to i1
  %.not5 = xor i1 %i.o, true
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !6
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond7 = select i1 %.not5, i1 true, i1 %i.q
  br i1 %or.cond7, label %bb.d, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.d:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not9 = icmp eq i32 %i.r, -1
  br i1 %.not9, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.r, i32 noundef 2) #14
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, %bb.e, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10JSFunction18SetInterruptBudgetEPNS0_7IsolateENS0_18BudgetModificationESt8optionalINS0_8CodeKindEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, i16 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 47
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 19
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = tail call noundef i32 @_ZN2v88internal14TieringManager18InterruptBudgetForEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEESt8optionalINS0_8CodeKindEE(ptr noundef %1, i64 %.sroa.0.0.copyload.i.i, i16 %3) #14 ; 3 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated12 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.a ], [ %.sroa.speculated12, %bb.b ], [ %.sroa.speculated, %bb.c ]
  %.sroa.0.0.copyload.i.i5 = load i64, ptr %0, align 8
  %i.h = add i64 %.sroa.0.0.copyload.i.i5, 47
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 19
  %i.l = inttoptr i64 %i.k to ptr
  store i32 %.0, ptr %i.l, align 4
  ret void
}

declare noundef i32 @_ZN2v88internal14TieringManager18InterruptBudgetForEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEESt8optionalINS0_8CodeKindEE(ptr noundef, i64, i16) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal42JSFunctionOrBoundFunctionOrWrappedFunction17CopyNameAndLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEENS4_INS0_6StringEEEi(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 18 uses
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %7 = alloca %"class.v8::internal::LookupIterator", align 8 ; 18 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9024 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 128
  br i1 %i.j, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.n = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.n, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.y = ptrtoint ptr %2 to i64                   ; 2 uses
  store i64 %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 -1, i64 16, i1 false)
  %i.aa = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2
  %i.ae = and i16 %i.ad, -96
  %.not.i21.i.i = icmp eq i16 %i.ae, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ai = load i8, ptr %i.ah, align 8, !range !6
  %i.aj = trunc nuw i8 %i.ai to i1
  %not..i.i.i23.i.i = xor i1 %i.ag, true
  %i.ak = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.aj
  br i1 %i.ak, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.am = load i8, ptr %i.al, align 8, !range !6, !noundef !7
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.aq = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ar = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.b) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ar, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.b, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.t, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #14
  %i.as = load i64, ptr %2, align 8
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = add i16 %i.ay, -2065
  %i.ba = icmp ult i16 %i.az, 17
  %i.bb = load i32, ptr %i.o, align 4
  %.not = icmp eq i32 %i.bb, 6
  %or.cond = select i1 %i.ba, i1 %.not, i1 false
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.bc = call ptr @_ZNK2v88internal14LookupIterator12GetAccessorsEv(ptr noundef nonnull align 8 dereferenceable(88) %5) #14 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq ptr %i.bc, null
  br i1 %i.be, label %.critedge, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.f
  %i.bf = load i64, ptr %i.bc, align 8
  %i.bg = load i64, ptr %i.a, align 8
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.f, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.g, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.g:                                             ; preds = %.critedge
  %i.bn = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.critedge, %bb.g
  %.0.i.i = phi ptr [ %i.bn, %bb.g ], [ %i.bj, %.critedge ] ; 4 uses
  %i.bo = ptrtoint ptr %.0.i.i to i64
  %i.bp = add i64 %i.bo, 8
  %i.bq = inttoptr i64 %i.bp to ptr
  store ptr %i.bq, ptr %i.bi, align 8
  store i64 0, ptr %.0.i.i, align 8
  %i.br = call i64 @_ZN2v88internal10JSReceiver21GetPropertyAttributesEPNS0_14LookupIteratorE(ptr noundef nonnull %5) #14 ; 2 uses
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit, label %.critedge58

_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit: ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.6140.0.extract.shift.mask = and i64 %i.br, -4294967296
  %.not55 = icmp eq i64 %.sroa.6140.0.extract.shift.mask, 274877906944
  br i1 %.not55, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread223, label %bb.h

bb.h:                                             ; preds = %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit
  %i.bt = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #14 ; 2 uses
  %.not234 = icmp eq ptr %i.bt, null
  br i1 %.not234, label %.critedge58, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.bv = and i64 %i.bu, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.j, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.i
  %i.bx = add nsw i64 %i.bu, -1
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8
  %i.ca = add i64 %i.bz, 11
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i16, ptr %i.cb monotonic, align 2
  %i.cd = icmp eq i16 %i.cc, 130
  br i1 %i.cd, label %bb.k, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread223

bb.j:                                             ; preds = %bb.i
  %i.ce = lshr i64 %i.bu, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = sitofp i32 %i.cf to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.k:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ch, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.j, %bb.k
  %i.ci = phi double [ %i.cg, %bb.j ], [ %.0.copyload.i.i.i.i.i.i, %bb.k ] ; 6 uses
  %or.cond.i71 = fcmp ueq double %i.ci, 0.000000e+00
  br i1 %or.cond.i71, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.cj = call double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ueq double %i.cj, +inf
  br i1 %i.ck, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = fcmp ogt double %i.ci, 0.000000e+00
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cm = call double @llvm.floor.f64(double %i.ci)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

bb.o:                                             ; preds = %bb.m
  %i.cn = call double @llvm.ceil.f64(double %i.ci)
  %i.co = fadd double %i.cn, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

_ZN2v88internal15DoubleToIntegerEd.exit:          ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, %bb.l, %bb.n, %bb.o
  %.0.i72 = phi double [ 0.000000e+00, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ], [ %i.ci, %bb.l ], [ %i.cm, %bb.n ], [ %i.co, %bb.o ]
  %i.cp = sitofp i32 %4 to double
  %i.cq = fsub double %.0.i72, %i.cp              ; 2 uses
  %i.cr = fcmp ogt double %i.cq, 0.000000e+00
  %.sroa.speculated = select i1 %i.cr, double %i.cq, double 0.000000e+00 ; 5 uses
  %i.cs = fcmp oge double %.sroa.speculated, f0xC1E0000000000000
  %i.ct = fcmp ole double %.sroa.speculated, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.cs, %i.ct
  br i1 %or.cond.i.i.i, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, label %bb.q

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.cu = fptosi double %.sroa.speculated to i32  ; 2 uses
  %i.cv = sitofp i32 %i.cu to double
  %i.cw = fcmp oeq double %.sroa.speculated, %i.cv
  br i1 %i.cw, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.q

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.cx = sext i32 %i.cu to i64
  %i.cy = shl nsw i64 %i.cx, 32
  %i.cz = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.bk, align 8
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.p, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.p:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.dc = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.p, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.dc, %bb.p ], [ %i.cz, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.dd = ptrtoint ptr %.0.i.i.i to i64
  %i.de = add i64 %i.dd, 8
  %i.df = inttoptr i64 %i.de to ptr
  store ptr %i.df, ptr %i.bi, align 8
  store i64 %i.cy, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread223

bb.q:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.dg = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = add i64 %i.dh, -1
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store double %.sroa.speculated, ptr %i.dk, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread223

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread223: ; preds = %bb.q, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit
  %.sroa.0142.1 = phi ptr [ %.0.i.i, %_ZNKR2v85MaybeINS_8internal18PropertyAttributesEE8FromJustEv.exit ], [ %.0.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.dg, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.dl = load i64, ptr %i.b, align 8
  %i.dm = add i64 %i.dl, -1
  %i.dn = inttoptr i64 %i.dm to ptr               ; 3 uses
  %i.do = load atomic volatile i64, ptr %i.dn monotonic, align 8
  %i.dp = add i64 %i.do, 11
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load atomic volatile i16, ptr %i.dq monotonic, align 2
  %i.ds = icmp eq i16 %i.dr, 128
  br i1 %i.ds, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i82, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i73

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i82:    ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread223
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = trunc i32 %i.du to i1
  br i1 %i.dv, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i74, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i73

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i73: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i82, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread223
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i74

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i74: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i73, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i82
  %i.dw = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i73 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i82 ]
  store i32 %i.dw, ptr %6, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 0, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %1, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr null, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.eh = ptrtoint ptr %1 to i64
  store i64 %i.eh, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i8 -1, i64 16, i1 false)
  %i.ej = load atomic volatile i64, ptr %i.dn monotonic, align 8
  %i.ek = add i64 %i.ej, 11
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = load atomic volatile i16, ptr %i.el monotonic, align 2
  %i.en = and i16 %i.em, -96
  %.not.i21.i.i75 = icmp eq i16 %i.en, 32
  br i1 %.not.i21.i.i75, label %bb.r, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit83

bb.r:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i74
  %i.eo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.er = load i8, ptr %i.eq, align 8, !range !6
  %i.es = trunc nuw i8 %i.er to i1
  %not..i.i.i23.i.i77 = xor i1 %i.ep, true
  %i.et = select i1 %not..i.i.i23.i.i77, i1 true, i1 %i.es
  br i1 %i.et, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i79, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ev = load i8, ptr %i.eu, align 8, !range !6, !noundef !7
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i78, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i78: ; preds = %bb.s
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ey = load ptr, ptr %i.ex, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i79

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i79: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i78, %bb.r
  %.pn.i.i26.i.i80 = phi ptr [ %i.ey, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i78 ], [ %0, %bb.r ]
  %.in.i.i27.i.i81 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i80, i64 58464
  %i.ez = load ptr, ptr %.in.i.i27.i.i81, align 8
  %i.fa = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.b) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit83

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit83: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i74, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i79
  %.sroa.05.0.i22.i.i76 = phi ptr [ %i.fa, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i79 ], [ %i.b, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i74 ]
  store ptr %.sroa.05.0.i22.i.i76, ptr %i.ec, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #14
  %.sroa.0.0.copyload.i.i84 = load i32, ptr %i.ea, align 8
  %i.fb = lshr i32 %.sroa.0.0.copyload.i.i84, 2
  %i.fc = and i32 %i.fb, 7
  %i.fd = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %6, ptr nonnull %.sroa.0142.1, i32 noundef %i.fc, i64 4294967297, i32 noundef 1, i32 noundef 0, i32 noundef 1, i64 0) #14
  %i.fe = trunc i16 %i.fd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br i1 %i.fe, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %.critedge58

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread: ; preds = %bb.e, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit83
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 9016 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 6 uses
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.fh, -1
  %i.fj = inttoptr i64 %i.fi to ptr               ; 3 uses
  %i.fk = load atomic volatile i64, ptr %i.fj monotonic, align 8
  %i.fl = add i64 %i.fk, 11
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = load atomic volatile i16, ptr %i.fm monotonic, align 2
  %i.fo = icmp eq i16 %i.fn, 128
  br i1 %i.fo, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i94, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i85

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i94:    ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = trunc i32 %i.fq to i1
  br i1 %i.fr, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i86, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i85

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i85: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i94, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i86

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i86: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i85, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i94
  %i.fs = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i85 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i94 ]
  store i32 %i.fs, ptr %7, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  store i32 0, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %2, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr null, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.y, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 -1, i64 16, i1 false)
  %i.ge = load atomic volatile i64, ptr %i.fj monotonic, align 8
  %i.gf = add i64 %i.ge, 11
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load atomic volatile i16, ptr %i.gg monotonic, align 2
  %i.gi = and i16 %i.gh, -96
  %.not.i21.i.i87 = icmp eq i16 %i.gi, 32
  br i1 %.not.i21.i.i87, label %bb.u, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit95

bb.u:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i86
  %i.gj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.gm = load i8, ptr %i.gl, align 8, !range !6
  %i.gn = trunc nuw i8 %i.gm to i1
  %not..i.i.i23.i.i89 = xor i1 %i.gk, true
  %i.go = select i1 %not..i.i.i23.i.i89, i1 true, i1 %i.gn
  br i1 %i.go, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i91, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.gq = load i8, ptr %i.gp, align 8, !range !6, !noundef !7
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i90, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i90: ; preds = %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.gt = load ptr, ptr %i.gs, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i91

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i91: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i90, %bb.u
  %.pn.i.i26.i.i92 = phi ptr [ %i.gt, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i90 ], [ %0, %bb.u ]
  %.in.i.i27.i.i93 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i92, i64 58464
  %i.gu = load ptr, ptr %.in.i.i27.i.i93, align 8
  %i.gv = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.fg) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit95

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit95: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i86, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i91
  %.sroa.05.0.i22.i.i88 = phi ptr [ %i.gv, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i91 ], [ %i.fg, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i86 ]
  store ptr %.sroa.05.0.i22.i.i88, ptr %i.fy, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %7) #14
  %i.gw = load i64, ptr %2, align 8
  %i.gx = add i64 %i.gw, -1
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load atomic volatile i64, ptr %i.gy monotonic, align 8
  %i.ha = add i64 %i.gz, 11
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = load atomic volatile i16, ptr %i.hb monotonic, align 2
  %i.hd = add i16 %i.hc, -2065
  %i.he = icmp ult i16 %i.hd, 17
  %i.hf = load i32, ptr %i.ft, align 4
  %.not56 = icmp eq i32 %i.hf, 6
  %or.cond233 = select i1 %i.he, i1 %.not56, i1 false
  br i1 %or.cond233, label %bb.x, label %.critedge4

bb.x:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit95
  %i.hg = call ptr @_ZNK2v88internal14LookupIterator12GetAccessorsEv(ptr noundef nonnull align 8 dereferenceable(88) %7) #14 ; 3 uses
  %i.hh = icmp eq ptr %i.hg, %i.ff
  br i1 %i.hh, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit67.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hi = icmp eq ptr %i.hg, null
  br i1 %i.hi, label %.critedge4, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit67

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit67: ; preds = %bb.y
  %i.hj = load i64, ptr %i.hg, align 8
  %i.hk = load i64, ptr %i.ff, align 8
  %i.hl = icmp eq i64 %i.hj, %i.hk
  br i1 %i.hl, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit67.thread, label %.critedge4

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit67.thread: ; preds = %bb.x, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit67
  %i.hm = load i32, ptr %i.ft, align 4
  %.not235 = icmp eq i32 %i.hm, 0
  br i1 %.not235, label %.critedge6, label %bb.z

bb.z:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit67.thread
  %i.hn = call noundef zeroext i1 @_ZNK2v88internal14LookupIterator16HolderIsReceiverEv(ptr noundef nonnull align 8 dereferenceable(88) %7) #14
  br i1 %i.hn, label %.critedge6, label %.critedge4

.critedge4:                                       ; preds = %bb.y, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit67, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit95, %bb.z
  %i.ho = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %7, i1 noundef zeroext false) #14 ; 3 uses
  %.not236 = icmp eq ptr %i.ho, null
  br i1 %.not236, label %.critedge60, label %bb.aa

bb.aa:                                            ; preds = %.critedge4
  %i.hp = load i64, ptr %i.ho, align 8            ; 2 uses
  %i.hq = trunc i64 %i.hp to i1
  br i1 %i.hq, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.aa
  %i.hr = add nsw i64 %i.hp, -1
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = load atomic volatile i64, ptr %i.hs monotonic, align 8
  %i.hu = add i64 %i.ht, 11
  %i.hv = inttoptr i64 %i.hu to ptr
  %i.hw = load atomic volatile i16, ptr %i.hv monotonic, align 2
  %i.hx = icmp ult i16 %i.hw, 128
  br i1 %i.hx, label %bb.ab, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.ab:                                            ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.hy = call ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %i.ho) #14 ; 3 uses
  %.not237 = icmp eq ptr %i.hy, null
  br i1 %.not237, label %.critedge60, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hz = icmp eq ptr %3, null
  br i1 %i.hz, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ia = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS5_IS7_EEEEENT_IS7_E9MaybeTypeESB_SB_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %3, ptr nonnull %i.hy, i8 noundef zeroext 0) #14 ; 2 uses
  %.not238 = icmp eq ptr %i.ia, null
  br i1 %.not238, label %.critedge60, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.aa, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ib = icmp eq ptr %3, null
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 688
  %spec.select = select i1 %i.ib, ptr %i.ic, ptr %3
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.ad, %bb.ac
  %.sroa.0118.0 = phi ptr [ %i.hy, %bb.ac ], [ %i.ia, %bb.ad ], [ %spec.select, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.id = load i64, ptr %i.fg, align 8
  %i.ie = add i64 %i.id, -1
  %i.if = inttoptr i64 %i.ie to ptr               ; 3 uses
  %i.ig = load atomic volatile i64, ptr %i.if monotonic, align 8
  %i.ih = add i64 %i.ig, 11
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = load atomic volatile i16, ptr %i.ii monotonic, align 2
  %i.ik = icmp eq i16 %i.ij, 128
  br i1 %i.ik, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i107, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i98

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i107:   ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  %i.im = load i32, ptr %i.il, align 4
  %i.in = trunc i32 %i.im to i1
  br i1 %i.in, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i99, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i98

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i98: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i107, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i99

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i99: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i98, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i107
  %i.io = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i98 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i107 ]
  store i32 %i.io, ptr %8, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.ip, align 4
  %i.iq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i32 0, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %1, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.iz = ptrtoint ptr %1 to i64
  store i64 %i.iz, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i8 -1, i64 16, i1 false)
  %i.jb = load atomic volatile i64, ptr %i.if monotonic, align 8
  %i.jc = add i64 %i.jb, 11
  %i.jd = inttoptr i64 %i.jc to ptr
  %i.je = load atomic volatile i16, ptr %i.jd monotonic, align 2
  %i.jf = and i16 %i.je, -96
  %.not.i21.i.i100 = icmp eq i16 %i.jf, 32
  br i1 %.not.i21.i.i100, label %bb.ae, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.ae:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i99
  %i.jg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.jh = trunc nuw i8 %i.jg to i1
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.jj = load i8, ptr %i.ji, align 8, !range !6
  %i.jk = trunc nuw i8 %i.jj to i1
  %not..i.i.i23.i.i102 = xor i1 %i.jh, true
  %i.jl = select i1 %not..i.i.i23.i.i102, i1 true, i1 %i.jk
  br i1 %i.jl, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i104, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.jn = load i8, ptr %i.jm, align 8, !range !6, !noundef !7
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i103, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i103: ; preds = %bb.af
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.jq = load ptr, ptr %i.jp, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i104

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i104: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i103, %bb.ae
  %.pn.i.i26.i.i105 = phi ptr [ %i.jq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i103 ], [ %0, %bb.ae ]
  %.in.i.i27.i.i106 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i105, i64 58464
  %i.jr = load ptr, ptr %.in.i.i27.i.i106, align 8
  %i.js = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.fg) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i99, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i104
  %.sroa.05.0.i22.i.i101 = phi ptr [ %i.js, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i104 ], [ %i.fg, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i99 ]
  store ptr %.sroa.05.0.i22.i.i101, ptr %i.iu, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %8) #14
  %.sroa.0.0.copyload.i.i108 = load i32, ptr %i.is, align 8
  %i.jt = lshr i32 %.sroa.0.0.copyload.i.i108, 2
  %i.ju = and i32 %i.jt, 7
  %i.jv = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %8, ptr nonnull %.sroa.0118.0, i32 noundef %i.ju, i64 4294967297, i32 noundef 1, i32 noundef 0, i32 noundef 1, i64 0) #14
  %i.jw = trunc i16 %i.jv to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br i1 %i.jw, label %.critedge6, label %.critedge60

.critedge6:                                       ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit67.thread, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.z
  br label %.critedge60

.critedge60:                                      ; preds = %bb.ab, %bb.ad, %.critedge4, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %.critedge6
  %.sroa.0154.6 = phi i16 [ 1, %.critedge6 ], [ 0, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit ], [ 0, %.critedge4 ], [ 0, %bb.ad ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.critedge58

.critedge58:                                      ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.h, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit83, %.critedge60
  %.sroa.0154.8 = phi i16 [ %.sroa.0154.6, %.critedge60 ], [ 0, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit83 ], [ 0, %bb.h ], [ 0, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %.sroa.9.0.insert.shift = shl nuw nsw i16 %.sroa.0154.8, 8
  %.sroa.0154.0.insert.insert = or i16 %.sroa.9.0.insert.shift, %.sroa.0154.8
  ret i16 %.sroa.0154.0.insert.insert
}

declare ptr @_ZNK2v88internal14LookupIterator12GetAccessorsEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i64 @_ZN2v88internal10JSReceiver21GetPropertyAttributesEPNS0_14LookupIteratorE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal14LookupIterator16HolderIsReceiverEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS5_IS7_EEEEENT_IS7_E9MaybeTypeESB_SB_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal15JSBoundFunction7GetNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5544 ; 3 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 23
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 2063
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.078.0139 = phi ptr [ %1, %.lr.ph ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %.sroa.077.0138 = phi ptr [ %i.a, %.lr.ph ], [ %i.o, %_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a, ptr nonnull %.sroa.077.0138, i8 noundef zeroext 0) #14 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %.sroa.078.0139, align 8
  %i.r = add i64 %i.q, 23
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.n, align 8
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.x, %bb.d ], [ %i.u, %bb.c ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.m, align 8
  store i64 %i.t, ptr %.0.i.i, align 8
  %i.ab = add i64 %i.t, 23
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 2063
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.a
  %.sroa.077.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.o, %_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %.lcssa135 = phi i64 [ %i.e, %bb.a ], [ %i.ad, %_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.af, %_ZN2v88internal6HandleINS0_15JSBoundFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %i.al = load atomic volatile i64, ptr %.lcssa monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp eq i16 %i.ao, 2064
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %bb.f, label %_ZN2v88internal6HandleINS0_17JSWrappedFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.av = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_17JSWrappedFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_17JSWrappedFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i40 = phi ptr [ %i.av, %bb.f ], [ %i.ar, %bb.e ] ; 3 uses
  %i.aw = ptrtoint ptr %.0.i.i40 to i64
  %i.ax = add i64 %i.aw, 8
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %i.aq, align 8
  store i64 %.lcssa135, ptr %.0.i.i40, align 8
  %i.az = tail call ptr @_ZN2v88internal17JSWrappedFunction7GetNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %.0.i.i40) ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.sink.split

bb.g:                                             ; preds = %._crit_edge
  %i.bb = load atomic volatile i64, ptr %.lcssa monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = add i16 %i.be, -2065
  %i.bg = icmp ult i16 %i.bf, 17
  br i1 %i.bg, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 568
end_hunk_0
begin_hunk_1_@_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE:bb.a
_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i: ; preds = %bb.v
  %i.fv = add i64 %i.fo, -1
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load atomic volatile i64, ptr %i.fw monotonic, align 8
  %i.fy = add i64 %i.fx, 11
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = load atomic volatile i16, ptr %i.fz monotonic, align 2
  %i.gb = icmp eq i16 %i.ga, 276
  br i1 %i.gb, label %bb.w, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i

bb.w:                                             ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i
  %i.gc = load atomic volatile i64, ptr %i.fn acquire, align 8
  %i.gd = add i64 %i.gc, 23
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load i64, ptr %i.ge, align 8
  br label %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit.i

_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i: ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i, %bb.v
  %i.gg = load atomic volatile i64, ptr %i.fn acquire, align 8
  br label %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit.i

_ZNK2v88internal10JSFunction18instance_prototypeEv.exit.i: ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i, %bb.w
  %.sroa.02.0.i.i.i = phi i64 [ %i.gf, %bb.w ], [ %i.gg, %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i ]
  %i.gh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gi = load ptr, ptr %i.g, align 8
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.x, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.x:                                             ; preds = %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit.i
  %i.gk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.x, %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit.i
  %.0.i.i83 = phi ptr [ %i.gk, %bb.x ], [ %i.gh, %_ZNK2v88internal10JSFunction18instance_prototypeEv.exit.i ] ; 3 uses
  %i.gl = ptrtoint ptr %.0.i.i83 to i64
  %i.gm = add i64 %i.gl, 8
  %i.gn = inttoptr i64 %i.gm to ptr
  store ptr %i.gn, ptr %i.e, align 8
  store i64 %.sroa.02.0.i.i.i, ptr %.0.i.i83, align 8
  tail call void @_ZN2v88internal10JSFunction13SetInitialMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEES5_(ptr noundef nonnull %0, ptr nonnull %2, ptr nonnull %i.ff, ptr nonnull %.0.i.i83, ptr nonnull readonly %1)
  %i.go = load i64, ptr %i.ff, align 8
  %i.gp = add i64 %i.go, 15
  %i.gq = inttoptr i64 %i.gp to ptr               ; 2 uses
  %i.gr = load atomic volatile i32, ptr %i.gq monotonic, align 4
  %i.gs = and i32 %i.gr, 536870911
  store atomic volatile i32 %i.gs, ptr %i.gq monotonic, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.gt = load i64, ptr %i.ff, align 8
  store i64 %i.gt, ptr %5, align 8
  call void @_ZN2v88internal3Map26StartInobjectSlackTrackingEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.y

bb.y:                                             ; preds = %_ZNK2v88internal3Map14GetConstructorEv.exit.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %i.gu = load i64, ptr %2, align 8
  %i.gv = add i64 %i.gu, 55
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = load atomic volatile i64, ptr %i.gw acquire, align 8
  %i.gy = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gz = load ptr, ptr %i.g, align 8
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %bb.z, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.z:                                             ; preds = %bb.y
  %i.hb = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.y, %bb.z
  %.0.i.i77 = phi ptr [ %i.hb, %bb.z ], [ %i.gy, %bb.y ] ; 3 uses
  %i.hc = ptrtoint ptr %.0.i.i77 to i64
  %i.hd = add i64 %i.hc, 8
  %i.he = inttoptr i64 %i.hd to ptr
  store ptr %i.he, ptr %i.e, align 8
  store i64 %i.gx, ptr %.0.i.i77, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.critedge66.thread:                               ; preds = %.critedge.i..critedge66.thread_crit_edge, %bb.d
  %.pre-phi249 = phi ptr [ %.pre248, %.critedge.i..critedge66.thread_crit_edge ], [ %i.r, %bb.d ]
  %i.hf = load atomic volatile i64, ptr %.pre-phi249 monotonic, align 8
  %i.hg = add i64 %i.hf, 13
  %i.hh = inttoptr i64 %i.hg to ptr
  %i.hi = load atomic volatile i8, ptr %i.hh monotonic, align 1
  %i.hj = icmp slt i8 %i.hi, 0
  br i1 %i.hj, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %.critedge66.thread
  tail call void @_ZN2v88internal10JSFunction19EnsureHasInitialMapEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nonnull %2)
  %i.hk = load i64, ptr %2, align 8               ; 2 uses
  %i.hl = add i64 %i.hk, -1
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = load atomic volatile i64, ptr %i.hm monotonic, align 8 ; 3 uses
  %i.ho = add i64 %i.hn, 13
  %i.hp = inttoptr i64 %i.ho to ptr
  %i.hq = load atomic volatile i8, ptr %i.hp monotonic, align 1
  %i.hr = trunc i8 %i.hq to i1
  br i1 %i.hr, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.hs = add i64 %i.hn, 31
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = load i64, ptr %i.ht, align 8            ; 3 uses
  %i.hv = add i64 %i.hn, -1
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = load atomic volatile i64, ptr %i.hw monotonic, align 8
  %i.hy = trunc i64 %i.hu to i1
  br i1 %i.hy, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i91, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i88

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i91: ; preds = %bb.ab, %bb.ac
  %.sroa.06.020.i.i.i.i92 = phi i64 [ %i.if, %bb.ac ], [ %i.hu, %bb.ab ] ; 3 uses
  %i.hz = add nsw i64 %.sroa.06.020.i.i.i.i92, -1
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = load atomic volatile i64, ptr %i.ia monotonic, align 8
  %i.ic = icmp eq i64 %i.ib, %i.hx
  br i1 %i.ic, label %bb.ac, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i88

bb.ac:                                            ; preds = %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i91
  %i.id = add i64 %.sroa.06.020.i.i.i.i92, 31
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = load i64, ptr %i.ie, align 8            ; 3 uses
  %i.ig = trunc i64 %i.if to i1
  br i1 %i.ig, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i91, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i88, !llvm.loop !22

_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i88: ; preds = %bb.ac, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i91, %bb.ab
  %.sroa.06.0.lcssa.i.i.i.i89 = phi i64 [ %i.hu, %bb.ab ], [ %i.if, %bb.ac ], [ %.sroa.06.020.i.i.i.i92, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i91 ] ; 2 uses
  %i.ih = trunc i64 %.sroa.06.0.lcssa.i.i.i.i89 to i1
  br i1 %i.ih, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i90, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, !prof !23

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i90: ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i88
  %i.ii = add nsw i64 %.sroa.06.0.lcssa.i.i.i.i89, -1
  %i.ij = inttoptr i64 %i.ii to ptr               ; 2 uses
  %i.ik = load atomic volatile i64, ptr %i.ij monotonic, align 8
  %i.il = add i64 %i.ik, 11
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = load atomic volatile i16, ptr %i.im monotonic, align 2
  %i.io = icmp eq i16 %i.in, 171
  br i1 %i.io, label %_ZNK2v88internal3Map23GetNonInstancePrototypeENS0_16PtrComprCageBaseE.exit.i.i, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, !prof !24

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i90, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i88
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.34) #13
  unreachable

_ZNK2v88internal3Map23GetNonInstancePrototypeENS0_16PtrComprCageBaseE.exit.i.i: ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i90
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.iq = load i64, ptr %i.ip, align 8
  br label %_ZNK2v88internal10JSFunction9prototypeEv.exit

bb.ad:                                            ; preds = %bb.aa
  %i.ir = add i64 %i.hk, 55
  %i.is = inttoptr i64 %i.ir to ptr               ; 3 uses
  %i.it = load atomic volatile i64, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 10624
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 104
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = icmp eq i64 %i.it, %i.iy
  br i1 %i.iz, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i87, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i86

_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i86: ; preds = %bb.ad
  %i.ja = add i64 %i.it, -1
  %i.jb = inttoptr i64 %i.ja to ptr
  %i.jc = load atomic volatile i64, ptr %i.jb monotonic, align 8
  %i.jd = add i64 %i.jc, 11
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = load atomic volatile i16, ptr %i.je monotonic, align 2
  %i.jg = icmp eq i16 %i.jf, 276
  br i1 %i.jg, label %bb.ae, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i87

bb.ae:                                            ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i86
  %i.jh = load atomic volatile i64, ptr %i.is acquire, align 8
  %i.ji = add i64 %i.jh, 23
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = load i64, ptr %i.jj, align 8
  br label %_ZNK2v88internal10JSFunction9prototypeEv.exit

_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i87: ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i86, %bb.ad
  %i.jl = load atomic volatile i64, ptr %i.is acquire, align 8
  br label %_ZNK2v88internal10JSFunction9prototypeEv.exit

_ZNK2v88internal10JSFunction9prototypeEv.exit:    ; preds = %_ZNK2v88internal3Map23GetNonInstancePrototypeENS0_16PtrComprCageBaseE.exit.i.i, %bb.ae, %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i87
  %.sroa.06.0.i.i = phi i64 [ %i.iq, %_ZNK2v88internal3Map23GetNonInstancePrototypeENS0_16PtrComprCageBaseE.exit.i.i ], [ %i.jk, %bb.ae ], [ %i.jl, %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i87 ] ; 2 uses
  %i.jm = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.jn = load ptr, ptr %i.g, align 8
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.af, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.af:                                            ; preds = %_ZNK2v88internal10JSFunction9prototypeEv.exit
  %i.jp = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal10JSFunction9prototypeEv.exit, %bb.af
  %.0.i.i = phi ptr [ %i.jp, %bb.af ], [ %i.jm, %_ZNK2v88internal10JSFunction9prototypeEv.exit ] ; 3 uses
  %i.jq = ptrtoint ptr %.0.i.i to i64
  %i.jr = add i64 %i.jq, 8
  %i.js = inttoptr i64 %i.jr to ptr
  store ptr %i.js, ptr %i.e, align 8
  store i64 %.sroa.06.0.i.i, ptr %.0.i.i, align 8
  br label %bb.al

.critedge:                                        ; preds = %bb.c, %.critedge66.thread
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %.pre.pre.i = load i64, ptr %i.jt, align 8
  %i.ju = add i64 %.pre.pre.i, -1
  %i.jv = inttoptr i64 %i.ju to ptr               ; 3 uses
  %i.jw = load atomic volatile i64, ptr %i.jv monotonic, align 8
  %i.jx = add i64 %i.jw, 11
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = load atomic volatile i16, ptr %i.jy monotonic, align 2
  %i.ka = icmp eq i16 %i.jz, 128
  br i1 %i.ka, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %.critedge
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  %i.kc = load i32, ptr %i.kb, align 4
  %i.kd = trunc i32 %i.kc to i1
  br i1 %i.kd, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %.critedge
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.ke = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.ke, ptr %4, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.kf, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.kh, align 4
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %2, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.kp = ptrtoint ptr %2 to i64
  store i64 %i.kp, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kq, i8 -1, i64 16, i1 false)
  %i.kr = load atomic volatile i64, ptr %i.jv monotonic, align 8
  %i.ks = add i64 %i.kr, 11
  %i.kt = inttoptr i64 %i.ks to ptr
  %i.ku = load atomic volatile i16, ptr %i.kt monotonic, align 2
  %i.kv = and i16 %i.ku, -96
  %.not.i21.i.i.i = icmp eq i16 %i.kv, 32
  br i1 %.not.i21.i.i.i, label %bb.ag, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.ag:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.kw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.kx = trunc nuw i8 %i.kw to i1
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.kz = load i8, ptr %i.ky, align 8, !range !6
  %i.la = trunc nuw i8 %i.kz to i1
  %not..i.i.i23.i.i.i = xor i1 %i.kx, true
  %i.lb = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.la
  br i1 %i.lb, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ld = load i8, ptr %i.lc, align 8, !range !6, !noundef !7
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.ah
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.lg = load ptr, ptr %i.lf, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.ag
  %.pn.i.i26.i.i.i = phi ptr [ %i.lg, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.ag ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.lh = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.li = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.lh, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.jt) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.li, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.jt, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.kk, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  %i.lj = load i32, ptr %i.kf, align 4
  %.not.i93 = icmp eq i32 %i.lj, 0
  br i1 %.not.i93, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.lk = load ptr, ptr %i.kj, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.aj

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.lm = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.not = icmp eq ptr %i.lm, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i234 = phi ptr [ %i.ll, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.lm, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  call void @_ZN2v88internal10JSFunction19EnsureHasInitialMapEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %1)
  %i.ln = load i64, ptr %1, align 8
  %i.lo = add i64 %i.ln, 55
  %i.lp = inttoptr i64 %i.lo to ptr
  %i.lq = load atomic volatile i64, ptr %i.lp acquire, align 8
  %i.lr = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ls = load ptr, ptr %i.g, align 8
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %bb.ak, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread238, !prof !5

bb.ak:                                            ; preds = %bb.aj
  %i.lu = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread238

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread238: ; preds = %bb.ak, %bb.aj
  %.0.i.i80 = phi ptr [ %i.lu, %bb.ak ], [ %i.lr, %bb.aj ] ; 3 uses
  %i.lv = ptrtoint ptr %.0.i.i80 to i64
  %i.lw = add i64 %i.lv, 8
  %i.lx = inttoptr i64 %i.lw to ptr
  store ptr %i.lx, ptr %i.e, align 8
  store i64 %i.lq, ptr %.0.i.i80, align 8
  %.pre = load i64, ptr %.sroa.07.0.i234, align 8
  br label %bb.al

bb.al:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread238, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ly = phi i64 [ %.sroa.06.0.i.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.pre, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread238 ] ; 2 uses
  %.sroa.0156.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.sroa.07.0.i234, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread238 ]
  %.sroa.0171.1 = phi ptr [ %.0.i.i78, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0.i.i80, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread238 ]
  %i.lz = trunc i64 %i.ly to i1
  br i1 %i.lz, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.al
  %i.ma = add nsw i64 %i.ly, -1
  %i.mb = inttoptr i64 %i.ma to ptr
  %i.mc = load atomic volatile i64, ptr %i.mb monotonic, align 8
  %i.md = add i64 %i.mc, 11
  %i.me = inttoptr i64 %i.md to ptr
  %i.mf = load atomic volatile i16, ptr %i.me monotonic, align 2
  %i.mg = icmp ugt i16 %i.mf, 299
  br i1 %i.mg, label %bb.ay, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.al, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.mh = call ptr @_ZN2v88internal10JSReceiver16GetFunctionRealmENS0_12DirectHandleIS1_EE(ptr nonnull %2) #14 ; 2 uses
  %.not245 = icmp eq ptr %i.mh, null
  br i1 %.not245, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 7984 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %.pre.pre.i95 = load i64, ptr %i.mi, align 8
  %i.mj = add i64 %.pre.pre.i95, -1
  %i.mk = inttoptr i64 %i.mj to ptr               ; 3 uses
  %i.ml = load atomic volatile i64, ptr %i.mk monotonic, align 8
  %i.mm = add i64 %i.ml, 11
  %i.mn = inttoptr i64 %i.mm to ptr
  %i.mo = load atomic volatile i16, ptr %i.mn monotonic, align 2
  %i.mp = icmp eq i16 %i.mo, 128
  br i1 %i.mp, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i108, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i96

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i108: ; preds = %bb.am
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  %i.mr = load i32, ptr %i.mq, align 4
  %i.ms = trunc i32 %i.mr to i1
  br i1 %i.ms, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i97, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i96

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i96: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i108, %bb.am
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i97

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i97: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i96, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i108
  %i.mt = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i96 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i108 ]
  store i32 %i.mt, ptr %3, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.mu, align 4
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.mw, align 4
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.my, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ne = ptrtoint ptr %1 to i64
  store i64 %i.ne, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i8 -1, i64 16, i1 false)
  %i.ng = load atomic volatile i64, ptr %i.mk monotonic, align 8
  %i.nh = add i64 %i.ng, 11
  %i.ni = inttoptr i64 %i.nh to ptr
  %i.nj = load atomic volatile i16, ptr %i.ni monotonic, align 2
  %i.nk = and i16 %i.nj, -96
  %.not.i21.i.i.i98 = icmp eq i16 %i.nk, 32
  br i1 %.not.i21.i.i.i98, label %bb.an, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i99

bb.an:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i97
  %i.nl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.no = load i8, ptr %i.nn, align 8, !range !6
  %i.np = trunc nuw i8 %i.no to i1
  %not..i.i.i23.i.i.i103 = xor i1 %i.nm, true
  %i.nq = select i1 %not..i.i.i23.i.i.i103, i1 true, i1 %i.np
  br i1 %i.nq, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i105, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ns = load i8, ptr %i.nr, align 8, !range !6, !noundef !7
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i104, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i104: ; preds = %bb.ao
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.nv = load ptr, ptr %i.nu, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i105

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i105: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i104, %bb.an
  %.pn.i.i26.i.i.i106 = phi ptr [ %i.nv, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i104 ], [ %0, %bb.an ]
  %.in.i.i27.i.i.i107 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i106, i64 58464
  %i.nw = load ptr, ptr %.in.i.i27.i.i.i107, align 8
  %i.nx = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.mi) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i99

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i99: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i105, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i97
  %.sroa.05.0.i22.i.i.i100 = phi ptr [ %i.nx, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i105 ], [ %i.mi, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i97 ]
  store ptr %.sroa.05.0.i22.i.i.i100, ptr %i.mz, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #14
  %i.ny = load i32, ptr %i.mu, align 4
  %.not.i101 = icmp eq i32 %i.ny, 0
  br i1 %.not.i101, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i99
  %i.nz = load ptr, ptr %i.my, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.ar:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i99
  %i.ob = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %3, i32 noundef 0) #14
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.aq, %bb.ar
  %.sroa.07.0.i102 = phi ptr [ %i.ob, %bb.ar ], [ %i.oa, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.oc = load i64, ptr %.sroa.07.0.i102, align 8 ; 2 uses
  %i.od = and i64 %i.oc, 1
  %i.oe = icmp eq i64 %i.od, 0
  %i.of = load i64, ptr %i.mh, align 8
  %i.og = shl i64 %i.oc, 3
  %sext = ashr i64 %i.og, 32
  %i.oh = and i64 %sext, -8
  %i.oi = add nsw i64 %i.oh, 15
  %i.oj = select i1 %i.oe, i64 %i.oi, i64 1375
  %i.ok = add i64 %i.oj, %i.of
  %i.ol = inttoptr i64 %i.ok to ptr
  %i.om = load atomic volatile i64, ptr %i.ol monotonic, align 8 ; 3 uses
  %i.on = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.oo = load ptr, ptr %i.g, align 8
  %i.op = icmp eq ptr %i.on, %i.oo
  br i1 %i.op, label %bb.as, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.as:                                            ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.oq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %bb.as
  %.0.i.i76 = phi ptr [ %i.oq, %bb.as ], [ %i.on, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.or = ptrtoint ptr %.0.i.i76 to i64
  %i.os = add i64 %i.or, 8
  %i.ot = inttoptr i64 %i.os to ptr
  store ptr %i.ot, ptr %i.e, align 8
  store i64 %i.om, ptr %.0.i.i76, align 8
  %i.ou = add i64 %i.om, -1
  %i.ov = inttoptr i64 %i.ou to ptr
  %i.ow = load atomic volatile i64, ptr %i.ov monotonic, align 8 ; 3 uses
  %i.ox = add i64 %i.ow, 13
  %i.oy = inttoptr i64 %i.ox to ptr
  %i.oz = load atomic volatile i8, ptr %i.oy monotonic, align 1
  %i.pa = trunc i8 %i.oz to i1
  br i1 %i.pa, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.pb = add i64 %i.ow, 31
  %i.pc = inttoptr i64 %i.pb to ptr
  %i.pd = load i64, ptr %i.pc, align 8            ; 3 uses
  %i.pe = add i64 %i.ow, -1
  %i.pf = inttoptr i64 %i.pe to ptr
  %i.pg = load atomic volatile i64, ptr %i.pf monotonic, align 8
  %i.ph = trunc i64 %i.pd to i1
  br i1 %i.ph, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i121, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i116

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i121: ; preds = %bb.at, %bb.au
  %.sroa.06.020.i.i.i.i122 = phi i64 [ %i.po, %bb.au ], [ %i.pd, %bb.at ] ; 3 uses
  %i.pi = add nsw i64 %.sroa.06.020.i.i.i.i122, -1
  %i.pj = inttoptr i64 %i.pi to ptr
  %i.pk = load atomic volatile i64, ptr %i.pj monotonic, align 8
  %i.pl = icmp eq i64 %i.pk, %i.pg
  br i1 %i.pl, label %bb.au, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i116

bb.au:                                            ; preds = %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i121
  %i.pm = add i64 %.sroa.06.020.i.i.i.i122, 31
  %i.pn = inttoptr i64 %i.pm to ptr
  %i.po = load i64, ptr %i.pn, align 8            ; 3 uses
  %i.pp = trunc i64 %i.po to i1
  br i1 %i.pp, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i121, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i116, !llvm.loop !22

_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i116: ; preds = %bb.au, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i121, %bb.at
  %.sroa.06.0.lcssa.i.i.i.i117 = phi i64 [ %i.pd, %bb.at ], [ %i.po, %bb.au ], [ %.sroa.06.020.i.i.i.i122, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i.i121 ] ; 2 uses
  %i.pq = trunc i64 %.sroa.06.0.lcssa.i.i.i.i117 to i1
  br i1 %i.pq, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i119, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i118, !prof !23

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i119: ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i116
  %i.pr = add nsw i64 %.sroa.06.0.lcssa.i.i.i.i117, -1
  %i.ps = inttoptr i64 %i.pr to ptr               ; 2 uses
  %i.pt = load atomic volatile i64, ptr %i.ps monotonic, align 8
  %i.pu = add i64 %i.pt, 11
  %i.pv = inttoptr i64 %i.pu to ptr
  %i.pw = load atomic volatile i16, ptr %i.pv monotonic, align 2
  %i.px = icmp eq i16 %i.pw, 171
  br i1 %i.px, label %_ZNK2v88internal3Map23GetNonInstancePrototypeENS0_16PtrComprCageBaseE.exit.i.i120, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i118, !prof !24

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i118: ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i119, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i.i116
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.34) #13
  unreachable

_ZNK2v88internal3Map23GetNonInstancePrototypeENS0_16PtrComprCageBaseE.exit.i.i120: ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i119
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pz = load i64, ptr %i.py, align 8
  br label %_ZNK2v88internal10JSFunction9prototypeEv.exit123

bb.av:                                            ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.qa = add i64 %i.om, 55
  %i.qb = inttoptr i64 %i.qa to ptr               ; 3 uses
  %i.qc = load atomic volatile i64, ptr %i.qb acquire, align 8 ; 2 uses
  %i.qd = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 10624
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 104
  %i.qh = load i64, ptr %i.qg, align 8
  %i.qi = icmp eq i64 %i.qc, %i.qh
  br i1 %i.qi, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i112, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i111

_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i111: ; preds = %bb.av
  %i.qj = add i64 %i.qc, -1
  %i.qk = inttoptr i64 %i.qj to ptr
  %i.ql = load atomic volatile i64, ptr %i.qk monotonic, align 8
  %i.qm = add i64 %i.ql, 11
  %i.qn = inttoptr i64 %i.qm to ptr
  %i.qo = load atomic volatile i16, ptr %i.qn monotonic, align 2
  %i.qp = icmp eq i16 %i.qo, 276
  br i1 %i.qp, label %bb.aw, label %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i112

bb.aw:                                            ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i111
  %i.qq = load atomic volatile i64, ptr %i.qb acquire, align 8
  %i.qr = add i64 %i.qq, 23
  %i.qs = inttoptr i64 %i.qr to ptr
  %i.qt = load i64, ptr %i.qs, align 8
  br label %_ZNK2v88internal10JSFunction9prototypeEv.exit123

_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i112: ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.i.i.i111, %bb.av
  %i.qu = load atomic volatile i64, ptr %i.qb acquire, align 8
  br label %_ZNK2v88internal10JSFunction9prototypeEv.exit123

_ZNK2v88internal10JSFunction9prototypeEv.exit123: ; preds = %_ZNK2v88internal3Map23GetNonInstancePrototypeENS0_16PtrComprCageBaseE.exit.i.i120, %bb.aw, %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i112
  %.sroa.06.0.i.i114 = phi i64 [ %i.pz, %_ZNK2v88internal3Map23GetNonInstancePrototypeENS0_16PtrComprCageBaseE.exit.i.i120 ], [ %i.qt, %bb.aw ], [ %i.qu, %_ZNK2v88internal10JSFunction15has_initial_mapENS0_16PtrComprCageBaseE.exit.thread.i.i.i112 ]
  %i.qv = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.qw = load ptr, ptr %i.g, align 8
  %i.qx = icmp eq ptr %i.qv, %i.qw
  br i1 %i.qx, label %bb.ax, label %_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, !prof !5

bb.ax:                                            ; preds = %_ZNK2v88internal10JSFunction9prototypeEv.exit123
  %i.qy = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
end_hunk_1
begin_hunk_2_@_ZN2v88internal10JSFunction28GetDerivedRabGsabDataViewMapEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE:bb.a
  %i.ah = load i64, ptr %.0.i.i24, align 8
  %i.ai = add i64 %i.ah, 1295
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.j, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.f, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i23 = phi ptr [ %i.ao, %bb.f ], [ %i.al, %bb.e ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i23 to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.h, align 8
  store i64 %i.ak, ptr %.0.i.i23, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.g:                                             ; preds = %bb.d
  %i.as = tail call ptr @_ZN2v88internal3Map4CopyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKcNS0_18TransitionKindFlagE(ptr noundef nonnull %0, ptr nonnull %i.aa, ptr noundef nonnull @.str.25, i32 noundef 3) #14 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  store atomic volatile i16 2060, ptr %i.av monotonic, align 2
  br label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.g, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.049.0 = phi ptr [ %.0.i.i23, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.as, %bb.g ], [ null, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  ret ptr %.sroa.049.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483648, 2147483641) i32 @_ZN2v88internal10JSFunction31ComputeInstanceSizeWithMinSlackEPNS0_7IsolateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.583", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 55
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 10624
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.c, %i.h
  br i1 %i.i, label %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit.thread, label %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit, !prof !30

_ZNK2v88internal10JSFunction15has_initial_mapEv.exit: ; preds = %bb.a
  %i.j = add i64 %i.c, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 276
  br i1 %i.p, label %bb.b, label %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit.thread, !prof !24

_ZNK2v88internal10JSFunction15has_initial_mapEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.26) #13
  unreachable

bb.b:                                             ; preds = %_ZNK2v88internal10JSFunction15has_initial_mapEv.exit
  %.sroa.0.0.copyload.i.i.i3 = load i64, ptr %0, align 8
  %i.q = add i64 %.sroa.0.0.copyload.i.i.i3, 55
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r acquire, align 8
  %i.t = add i64 %i.s, 15
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i32, ptr %i.u monotonic, align 4
  %i.w = icmp ugt i32 %i.v, 536870911
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.sroa.0.0.copyload.i.i.i4 = load i64, ptr %0, align 8
  %i.x = add i64 %.sroa.0.0.copyload.i.i.i4, 55
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y acquire, align 8
  store i64 %i.z, ptr %2, align 8
  %i.aa = call noundef i32 @_ZN2v88internal3Map21ComputeMinObjectSlackEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.sroa.0.0.copyload.i.i.i5 = load i64, ptr %0, align 8
  %i.ab = add i64 %.sroa.0.0.copyload.i.i.i5, 55
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac acquire, align 8
  %i.ae = add i64 %i.ad, 7
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i8, ptr %i.af monotonic, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = sub nsw i32 %i.ah, %i.aa
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i6 = load i64, ptr %0, align 8
  %i.aj = add i64 %.sroa.0.0.copyload.i.i.i6, 55
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i64, ptr %i.ak acquire, align 8
  %i.am = add i64 %i.al, 7
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i8, ptr %i.an monotonic, align 1
  %i.ap = zext i8 %i.ao to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi i32 [ %i.ai, %bb.c ], [ %i.ap, %bb.d ]
  %.0 = shl nsw i32 %.0.in, 3
  ret i32 %.0
}

declare noundef i32 @_ZN2v88internal3Map21ComputeMinObjectSlackEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZNK2v88internal18SharedFunctionInfo13DebugNameCStrEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10JSFunction9PrintNameEP8_IO_FILE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14, !noalias !31
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8, !noalias !31
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i.i, 31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8, !noalias !31
  store i64 %i.c, ptr %2, align 8, !noalias !31
  call void @_ZNK2v88internal18SharedFunctionInfo13DebugNameCStrEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !31
  %i.d = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef %i.d) #14
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.e) #15
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare void @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal10JSFunction12GetDebugNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = add i64 %i.d, 15
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f acquire, align 4
  %i.h = and i32 %i.g, 1046528
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %._ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread_crit_edge, label %bb.b

._ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 704
  %.pre.pre.i.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.d, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = add i64 %i.l, 55
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.o, %i.q
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %i.l, 71
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = and i64 %i.t, 3
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit, label %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread

_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit: ; preds = %bb.c
  %i.w = add nsw i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 203
  br i1 %i.ac, label %.thread, label %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread

_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread: ; preds = %._ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread_crit_edge, %bb.b, %bb.c, %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit
  %.pre.pre.i = phi i64 [ %.pre.pre.i.pre, %._ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread_crit_edge ], [ %i.q, %bb.b ], [ %i.o, %bb.c ], [ %i.o, %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.ae = add i64 %.pre.pre.i, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 128
  br i1 %i.ak, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.thread
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.ao = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.ao, ptr %2, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.az = ptrtoint ptr %1 to i64
  store i64 %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 -1, i64 16, i1 false)
  %i.bb = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = and i16 %i.be, -96
  %.not.i21.i.i.i = icmp eq i16 %i.bf, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.bj = load i8, ptr %i.bi, align 8, !range !6
  %i.bk = trunc nuw i8 %i.bj to i1
  %not..i.i.i23.i.i.i = xor i1 %i.bh, true
  %i.bl = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bk
  br i1 %i.bl, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.bn = load i8, ptr %i.bm, align 8, !range !6, !noundef !7
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.br = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bs = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.ad) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bs, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ad, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.au, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #14
  %i.bt = load i32, ptr %i.ap, align 4
  %.not.i15 = icmp eq i32 %i.bt, 0
  br i1 %.not.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bu = load ptr, ptr %i.at, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.h:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bw = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %2, i32 noundef 0) #14
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.g, %bb.h
  %.sroa.07.0.i = phi ptr [ %i.bw, %bb.h ], [ %i.bv, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.bx = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.bz = add nsw i64 %i.bx, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = icmp ugt i16 %i.ce, 127
  br i1 %i.cf, label %.thread, label %bb.j

.thread:                                          ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal12_GLOBAL__N_125UseFastFunctionNameLookupEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit
  %i.cg = load i64, ptr %1, align 8
  %i.ch = add i64 %i.cg, 31
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load atomic volatile i64, ptr %i.ci monotonic, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cl, %i.cn
  br i1 %i.co, label %bb.i, label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.i:                                             ; preds = %.thread
  %i.cp = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.thread, %bb.i
  %.0.i.i = phi ptr [ %i.cp, %bb.i ], [ %i.cl, %.thread ] ; 3 uses
  %i.cq = ptrtoint ptr %.0.i.i to i64
  %i.cr = add i64 %i.cq, 8
  %i.cs = inttoptr i64 %i.cr to ptr
  store ptr %i.cs, ptr %i.ck, align 8
  store i64 %i.cj, ptr %.0.i.i, align 8
  %i.ct = call ptr @_ZN2v88internal18SharedFunctionInfo9DebugNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %.0.i.i) #14
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.026.1 = phi ptr [ %i.ct, %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.sroa.07.0.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret ptr %.sroa.026.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10JSFunction7SetNameEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6StringEEE(ptr noundef %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 11 uses
  %i.a = tail call ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %2) #14 ; 3 uses
  %.not38 = icmp eq ptr %i.a, null
  br i1 %.not38, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %0) #14
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr nonnull %3) #14
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.s = zext i32 %i.p to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 32, ptr %i.u, align 1
  %i.v = load i32, ptr %i.o, align 4
  %i.w = load i32, ptr %i.t, align 8
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  store i16 32, ptr %i.y, align 2
  %i.z = load i32, ptr %i.o, align 4
  %i.aa = load i32, ptr %i.t, align 8
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split: ; preds = %bb.e, %bb.d
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, %bb.e, %bb.d
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr nonnull %i.a) #14
  %i.ac = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14 ; 2 uses
  %.not39 = icmp eq ptr %i.ac, null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %.not39, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit12, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit, %bb.b
  %.sroa.022.0 = phi ptr [ %i.a, %bb.b ], [ %i.ac, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ae = call ptr @_ZN2v88internal8JSObject39DefinePropertyOrElementIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr %1, ptr nonnull %i.ad, ptr nonnull %.sroa.022.0, i32 noundef 3) #14
  %i.af = icmp ne ptr %i.ae, null
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit12

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit12: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit, %bb.a, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %.1 = phi i1 [ false, %bb.a ], [ %i.af, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ], [ false, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit ]
  ret i1 %.1
}

declare void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare ptr @_ZN2v88internal8JSObject39DefinePropertyOrElementIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr, ptr, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal10JSFunction8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.667", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 13 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  %i.n = add i64 %i.d, 39
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 10624
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.p, %i.u
  br i1 %i.v, label %_ZNK2v88internal18SharedFunctionInfo16IsUserJavaScriptEv.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo16IsUserJavaScriptEv.exit

_ZNK2v88internal18SharedFunctionInfo16IsUserJavaScriptEv.exit: ; preds = %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 %i.p, ptr %3, align 8
  %i.w = call noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal18SharedFunctionInfo16IsUserJavaScriptEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo16IsUserJavaScriptEv.exit.thread: ; preds = %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal18SharedFunctionInfo16IsUserJavaScriptEv.exit
  %i.x = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_130NativeCodeFunctionSourceStringEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEE(ptr noundef nonnull %0, ptr nonnull %.0.i.i)
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

bb.c:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16IsUserJavaScriptEv.exit
  %i.y = load i64, ptr %.0.i.i, align 8           ; 2 uses
  %i.z = add i64 %i.y, 55
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i32, ptr %i.aa monotonic, align 4
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = and i8 %i.ac, 31
  %i.ae = add nsw i8 %i.ad, -3
  %i.af = icmp ult i8 %i.ae, 4
  br i1 %i.af, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7920 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.pre.pre.i = load i64, ptr %i.ag, align 8
  %i.ah = add i64 %.pre.pre.i, -1
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 128
  br i1 %i.an, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.d
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.ar = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.ar, ptr %2, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bc = ptrtoint ptr %1 to i64
  store i64 %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 -1, i64 16, i1 false)
  %i.be = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = and i16 %i.bh, -96
  %.not.i21.i.i.i = icmp eq i16 %i.bi, 32
  br i1 %.not.i21.i.i.i, label %bb.e, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.bm = load i8, ptr %i.bl, align 8, !range !6
  %i.bn = trunc nuw i8 %i.bm to i1
  %not..i.i.i23.i.i.i = xor i1 %i.bk, true
  %i.bo = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bn
  br i1 %i.bo, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.bq = load i8, ptr %i.bp, align 8, !range !6, !noundef !7
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.e
  %.pn.i.i26.i.i.i = phi ptr [ %i.bt, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.e ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bu = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bv = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.ag) #14
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bv, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ag, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.ax, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #14
  %i.bw = load i32, ptr %i.as, align 4
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bx = load ptr, ptr %i.aw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bz = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %2, i32 noundef 0) #14
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.h, %bb.i
  %.sroa.07.0.i = phi ptr [ %i.bz, %bb.i ], [ %i.by, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.ca = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.cb = trunc i64 %i.ca to i1
  br i1 %i.cb, label %_ZN2v88internal16IsClassPositionsENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit..critedge_crit_edge

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit..critedge_crit_edge: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.pre = load i64, ptr %.0.i.i, align 8
  br label %.critedge

_ZN2v88internal16IsClassPositionsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.cc = add nsw i64 %i.ca, -1
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.cf = add i64 %i.ce, 11
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i16, ptr %i.cg monotonic, align 2
  %i.ci = icmp eq i16 %i.ch, 151
  %.pre182 = load i64, ptr %.0.i.i, align 8       ; 2 uses
  br i1 %i.ci, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN2v88internal16IsClassPositionsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = lshr i64 %i.ck, 32                      ; 2 uses
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = lshr i64 %i.co, 32
  %i.cq = trunc nuw i64 %i.cp to i32              ; 2 uses
  %i.cr = add i64 %.pre182, 39
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load atomic volatile i64, ptr %i.cs acquire, align 8
  %i.cu = add i64 %i.ct, 7
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load i64, ptr %i.cv, align 8            ; 2 uses
  %i.cx = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cy = load ptr, ptr %i.g, align 8
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.k, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit63, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.da = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit63

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit63: ; preds = %bb.j, %bb.k
  %.0.i62 = phi ptr [ %i.da, %bb.k ], [ %i.cx, %bb.j ] ; 4 uses
  %i.db = ptrtoint ptr %.0.i62 to i64
  %i.dc = add i64 %i.db, 8
  %i.dd = inttoptr i64 %i.dc to ptr
  store ptr %i.dd, ptr %i.e, align 8
  store i64 %i.cw, ptr %.0.i62, align 8
  %i.de = icmp eq i64 %i.cl, 0
  br i1 %i.de, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit63
  %i.df = add i64 %i.cw, -1
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = icmp eq i32 %i.di, %i.cq
  br i1 %i.dj, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit63
  %i.dk = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i62, i32 noundef %i.cm, i32 noundef %i.cq) #14
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

.critedge:                                        ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit..critedge_crit_edge, %_ZN2v88internal16IsClassPositionsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.c
  %i.dl = phi i64 [ %.pre, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit..critedge_crit_edge ], [ %.pre182, %_ZN2v88internal16IsClassPositionsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.y, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i64 %i.dl, ptr %4, align 8
  %i.dm = call noundef zeroext i1 @_ZNK2v88internal18SharedFunctionInfo13HasSourceCodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %i.dm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.dn = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_130NativeCodeFunctionSourceStringEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEE(ptr noundef nonnull %0, ptr nonnull %.0.i.i)
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

bb.n:                                             ; preds = %.critedge
  %i.do = load i64, ptr %.0.i.i, align 8
  %i.dp = add i64 %i.do, 7
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load atomic volatile i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = trunc i64 %i.dr to i1
  br i1 %i.ds, label %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit, label %.critedge51

_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit: ; preds = %bb.n
  %i.dt = add nsw i64 %i.dr, -1
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load atomic volatile i64, ptr %i.du monotonic, align 8
  %i.dw = add i64 %i.dv, 11
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load atomic volatile i16, ptr %i.dx monotonic, align 2
  %i.dz = icmp eq i16 %i.dy, 179
  br i1 %i.dz, label %bb.o, label %.critedge51

bb.o:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo27HasWasmExportedFunctionDataENS0_17IsolateForSandboxE.exit
  %i.ea = load i64, ptr %.0.i.i, align 8
  %i.eb = add i64 %i.ea, 7
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load atomic volatile i64, ptr %i.ec acquire, align 8 ; 4 uses
  %i.ee = add i64 %i.ed, -1
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load atomic volatile i64, ptr %i.ef monotonic, align 8
  %i.eh = add i64 %i.eg, 11
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load atomic volatile i16, ptr %i.ei monotonic, align 2
  %i.ek = icmp eq i16 %i.ej, 179
  br i1 %i.ek, label %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit, label %bb.p, !prof !26

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.45) #13
  unreachable

_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit: ; preds = %bb.o
  %i.el = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.em = load ptr, ptr %i.g, align 8
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %bb.q, label %_ZN2v88internal6HandleINS0_24WasmExportedFunctionDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.q:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit
  %i.eo = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_24WasmExportedFunctionDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_24WasmExportedFunctionDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit, %bb.q
  %.0.i.i64 = phi ptr [ %i.eo, %bb.q ], [ %i.el, %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit ] ; 2 uses
  %i.ep = ptrtoint ptr %.0.i.i64 to i64
  %i.eq = add i64 %i.ep, 8
  %i.er = inttoptr i64 %i.eq to ptr
  store ptr %i.er, ptr %i.e, align 8
end_hunk_2
