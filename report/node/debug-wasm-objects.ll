inline.NumInlined: 2433
inline.NumDeleted: 945
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE8FindNameINS_5ValueEEESt8optionalIjENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoIT_EE:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #17, !inline_history !33
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.am = load ptr, ptr %i.aa, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17, !inline_history !33
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = load i8, ptr %.0.i.i, align 1
  %i.ar = zext i8 %i.aq to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.k:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = inttoptr i64 %i.at to ptr               ; 6 uses
  %i.av = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = and i16 %i.ay, 16
  %.not.i.i10 = icmp eq i16 %i.az, 0
  br i1 %.not.i.i10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #17, !inline_history !34
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = load ptr, ptr %i.au, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17, !inline_history !34
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i11 = phi ptr [ %i.bf, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = load i16, ptr %.0.i.i11, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.c, %bb.c
  %i.bl = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.c, %bb.c
  %i.bm = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.q:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.o, %bb.p
  %.0.i9 = phi i16 [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.ar, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bk, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bl, %bb.o ], [ %i.bm, %bb.p ]
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !range !8, !noundef !9
  %i.bp = trunc nuw i8 %i.bo to i1
  store i8 0, ptr %i.bn, align 8
  br i1 %i.bp, label %bb.r, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.r:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #17
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not = icmp eq i16 %.0.i9, 36
  br i1 %.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.bx) #17
  store i64 %i.by, ptr %i.bs, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %bb.t, %bb.u
  %i.bz = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr nonnull %i.bs, ptr noundef %.val) ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 648
  %i.ce = load i64, ptr %0, align 8
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load atomic i32, ptr %i.ch acquire, align 4 ; 3 uses
  %i.cj = and i32 %i.ci, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.v, !prof !7

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.cl = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i32 noundef %i.ci)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.v, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %.0.in.i.i.i = phi i32 [ %i.cl, %bb.v ], [ %i.ci, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cn = load atomic volatile i64, ptr %i.cm monotonic, align 8
  %i.co = lshr i64 %i.cn, 32
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cr = add i32 %i.cp, -1                       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.cr, %.0.i.i.i ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64
  %i.ct = mul nuw i64 %.sroa.06.033.i.i, 12884901888 ; 2 uses
  %sext.i34.i.i = add nuw i64 %i.ct, 25769803776
  %i.cu = ashr exact i64 %sext.i34.i.i, 29
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.cq
  br i1 %i.cx, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.cy = load i64, ptr %0, align 8               ; 2 uses
  %.not.i9.i = icmp eq i64 %i.cy, %i.cw
  br i1 %.not.i9.i, label %.loopexit, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.cz = add i32 %.035.i11.i, 1
  %.not.i.i12 = icmp eq i64 %i.cy, %i.de
  br i1 %.not.i.i12, label %.loopexit, label %.lr.ph.i, !llvm.loop !27

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.w
  %.035.i11.i = phi i32 [ %i.cz, %bb.w ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.in37.i10.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.w ], [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ]
  %i.da = add i32 %.sroa.06.0.in37.i10.i, %.035.i11.i
  %.sroa.06.0.in.i.i = and i32 %i.da, %i.cr       ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64
  %i.db = mul i64 %.sroa.06.0.i.i, 12884901888    ; 2 uses
  %sext.i.i.i = add i64 %i.db, 25769803776
  %i.dc = ashr exact i64 %sext.i.i.i, 29
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 %i.dc
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.cq
  br i1 %i.df, label %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, label %bb.w, !llvm.loop !27

._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %.critedge, !llvm.loop !27

.loopexit:                                        ; preds = %bb.w, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.db, %bb.w ]
  %i.dg = load i64, ptr %i.bz, align 8
  %i.dh = add i64 %i.dg, -1
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %sext.i.i = add i64 %.pre-phi, 30064771072
  %i.dk = ashr exact i64 %sext.i.i, 29
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.dn = lshr i64 %i.dm, 32
  %i.do = or disjoint i64 %i.dn, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, %.loopexit, %_ZNK2v85Value13QuickIsStringEv.exit
  %.sroa.2.2 = phi i64 [ 0, %_ZNK2v85Value13QuickIsStringEv.exit ], [ 0, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ], [ 0, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ 0, %bb.b ], [ %i.do, %.loopexit ], [ 0, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i ], [ 0, %bb.a ]
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = ptrtoint ptr %0 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !8
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %1, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.a) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i42 = icmp eq i32 %i.aq, 0
  br i1 %.not.i42, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !35

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.07.0.i73 = phi ptr [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.at, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.av = load i64, ptr %.sroa.07.0.i73, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41

bb.f:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.az = load i64, ptr %0, align 8
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2 ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 1057
  br i1 %i.bg, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add i64 %i.bc, 13
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i8, ptr %i.bi monotonic, align 1
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.bf, i1 noundef zeroext %i.bk) #17
  %i.bm = sext i32 %i.bl to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i: ; preds = %bb.g, %bb.f
  %i.bn = phi i64 [ %i.bm, %bb.g ], [ 24, %bb.f ]
  %i.bo = add i64 %i.bn, %i.ba
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i
  %i.bw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.bw, %bb.h ], [ %i.bs, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i ] ; 3 uses
  %i.bx = ptrtoint ptr %.0.i.i.i to i64
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.br, align 8
  store i64 %i.bq, ptr %.0.i.i.i, align 8
  %i.ca = add i64 %i.bq, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8
  %i.cd = add i64 %i.cc, 31
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = add i64 %i.cf, 7
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = and i32 %i.cj, 1048575
  %i.cl = call noundef ptr @_ZN2v88internal4wasm20GetTypeCanonicalizerEv() #17
  %i.cm = call noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer12LookupStructENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(8056) %i.cl, i32 %i.ck) #17
  %i.cn = load i16, ptr %i.cm, align 8            ; 3 uses
  %i.co = zext i16 %i.cn to i32
  %i.cp = call ptr @_ZN2v88internal14NameDictionary3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %1, i32 noundef %i.co, i8 noundef zeroext 0, i32 noundef 0) #17 ; 2 uses
  %.not = icmp eq i16 %i.cn, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %wide.trip.count = zext i16 %i.cn to i64
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %.sroa.054.0.lcssa = phi ptr [ %i.cp, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS0_11StructProxyELNS1_12DebugProxyIdE7ENS0_10WasmStructEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit ], [ %.sroa.054.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 2 uses
  %i.cr = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %1, ptr nonnull %0, ptr nonnull %i.a, ptr %.sroa.054.0.lcssa, i32 noundef 0, i64 0) #17
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41, !prof !5

bb.i:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

bb.j:                                             ; preds = %.lr.ph, %_ZN2v88internal11HandleScopeD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 3 uses
  %.sroa.054.075 = phi ptr [ %i.cp, %.lr.ph ], [ %.sroa.054.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 4 uses
  %i.ct = load ptr, ptr %i.br, align 8
  %i.cu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cv = load i32, ptr %i.cq, align 8
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cq, align 8
  %i.cx = trunc nuw nsw i64 %indvars.iv to i32
  %i.cy = call ptr @_ZN2v88internal11StructProxy7GetNameEPNS0_7IsolateENS0_12DirectHandleINS0_10WasmStructEEEj(ptr noundef nonnull %1, ptr nonnull %.0.i.i.i, i32 noundef %i.cx) ; 3 uses
  %i.cz = load i64, ptr %.sroa.054.075, align 8
  %i.da = add i64 %i.cz, -1
  %i.db = inttoptr i64 %i.da to ptr               ; 2 uses
  %i.dc = load i64, ptr %i.cy, align 8
  %i.dd = add i64 %i.dc, -1
  %i.de = inttoptr i64 %i.dd to ptr               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load atomic i32, ptr %i.df acquire, align 4 ; 3 uses
  %i.dh = and i32 %i.dg, 1
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.dj = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.de, i32 noundef %i.dg)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.k, %bb.j
  %.0.in.i.i.i = phi i32 [ %i.dj, %bb.k ], [ %i.dg, %bb.j ]
  %.0.i.i.i43 = lshr i32 %.0.in.i.i.i, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dl = load atomic volatile i64, ptr %i.dk monotonic, align 8
  %i.dm = lshr i64 %i.dl, 32
  %i.dn = trunc nuw i64 %i.dm to i32
  %i.do = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.dp = add i32 %i.dn, -1                       ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.dp, %.0.i.i.i43 ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64
  %i.dr = mul nuw i64 %.sroa.06.033.i.i, 12884901888
  %sext.i34.i.i = add nuw i64 %i.dr, 25769803776
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE13IndexedGetterEjRKNS_20PropertyCallbackInfoINS_5ValueEEE:bb.a
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2 ; 2 uses
  %i.p = icmp eq i16 %i.o, 1057
  br i1 %i.p, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.q = add i64 %i.l, 13
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i8, ptr %i.r monotonic, align 1
  %i.t = icmp slt i8 %i.s, 0
  %i.u = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.o, i1 noundef zeroext %i.t) #17
  %i.v = sext i32 %i.u to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i: ; preds = %bb.c, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.w = phi i64 [ %i.v, %bb.c ], [ 24, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i ]
  %i.x = add i64 %i.w, %i.j
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 560 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 568
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i
  %i.af = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %.val.i) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ab, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i ] ; 2 uses
  %i.ag = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.aa, align 8
  store i64 %i.z, ptr %.0.i.i.i.i, align 8
  %i.aj = add i64 %i.z, -1
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -2
  %i.aq = icmp ult i32 %0, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.as = sext i32 %0 to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 560 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 568
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.f, label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ba = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %.val) #17
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.ba, %bb.f ], [ %i.aw, %bb.e ] ; 2 uses
  %i.bb = ptrtoint ptr %.0.i.i.i to i64
  %i.bc = add i64 %i.bb, 8
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %i.av, align 8
  store i64 %i.au, ptr %.0.i.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.au, ptr %i.be, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit
  %.0 = phi i8 [ 1, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit ], [ 0, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext range(i8 0, 2) i8 @_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE12IndexedQueryEjRKNS_20PropertyCallbackInfoINS_7IntegerEEE(i32 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 3
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_7IntegerEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.g) #17 ; 2 uses
  store i64 %i.h, ptr %i.b, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_7IntegerEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_7IntegerEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i: ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %i.c, %bb.a ], [ %i.h, %bb.b ]
  %.val.i = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2 ; 2 uses
  %i.p = icmp eq i16 %i.o, 1057
  br i1 %i.p, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_7IntegerEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.q = add i64 %i.l, 13
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i8, ptr %i.r monotonic, align 1
  %i.t = icmp slt i8 %i.s, 0
  %i.u = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.o, i1 noundef zeroext %i.t) #17
  %i.v = sext i32 %i.u to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i: ; preds = %bb.c, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_7IntegerEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.w = phi i64 [ %i.v, %bb.c ], [ 24, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_7IntegerEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i ]
  %i.x = add i64 %i.w, %i.j
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 560 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 568
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i
  %i.af = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %.val.i) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ab, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i ] ; 2 uses
  %i.ag = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.aa, align 8
  store i64 %i.z, ptr %.0.i.i.i.i, align 8
  %i.aj = add i64 %i.z, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -2
  %i.aq = icmp ult i32 %0, %i.ap
  br i1 %i.aq, label %bb.e, label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = tail call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.as, i32 noundef 5) #17 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.av = load i64, ptr %i.at, align 8
  br label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split

_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split: ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ %i.av, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink, ptr %i.ar, align 8
  br label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit
  %.0 = phi i8 [ 0, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit ], [ 1, %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE17IndexedEnumeratorERKNS_20PropertyCallbackInfoINS_5ArrayEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((40, 48)) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v85Array3NewEPNS_7IsolateEi(ptr noundef %i.b, i32 noundef 0) #17 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 648
  %i.h = inttoptr i64 %i.g to ptr
  br label %_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %bb.a, %bb.b
  %storemerge.in = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext range(i8 0, 2) i8 @_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE17IndexedDescriptorEjRKNS_20PropertyCallbackInfoINS_5ValueEEE(i32 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 3
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.g) #17 ; 2 uses
  store i64 %i.h, ptr %i.b, align 8
  %.val.i.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = phi ptr [ %.val, %bb.a ], [ %.val.i.pre, %bb.b ] ; 3 uses
  %i.i = phi i64 [ %i.c, %bb.a ], [ %i.h, %bb.b ]
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2 ; 2 uses
  %i.p = icmp eq i16 %i.o, 1057
  br i1 %i.p, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.q = add i64 %i.l, 13
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i8, ptr %i.r monotonic, align 1
  %i.t = icmp slt i8 %i.s, 0
  %i.u = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.o, i1 noundef zeroext %i.t) #17
  %i.v = sext i32 %i.u to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i: ; preds = %bb.c, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.w = phi i64 [ %i.v, %bb.c ], [ 24, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i ]
  %i.x = add i64 %i.w, %i.j
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 560 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 568
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i
  %i.af = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %.val.i) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ab, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i ] ; 2 uses
  %i.ag = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.aa, align 8
  store i64 %i.z, ptr %.0.i.i.i.i, align 8
  %i.aj = add i64 %i.z, -1
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -2
  %i.aq = icmp ult i32 %0, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  store i8 43, ptr %2, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = sext i32 %0 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 560 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 568
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_111LocalsProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %.val) #17
  br label %_ZN2v88internal12_GLOBAL__N_111LocalsProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit

_ZN2v88internal12_GLOBAL__N_111LocalsProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.bb, %bb.f ], [ %i.ax, %bb.e ] ; 3 uses
  %i.bc = ptrtoint ptr %.0.i.i.i to i64
  %i.bd = add i64 %i.bc, 8
  %i.be = inttoptr i64 %i.bd to ptr
  store ptr %i.be, ptr %i.aw, align 8
  store i64 %i.av, ptr %.0.i.i.i, align 8
  store ptr %.0.i.i.i, ptr %i.ar, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = call ptr @_ZN2v88internal18PropertyDescriptor8ToObjectEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.val) #17 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.g, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111LocalsProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %i.bj, 648
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111LocalsProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit, %bb.g
  %storemerge.in = phi ptr [ %i.bl, %bb.g ], [ %i.bg, %_ZN2v88internal12_GLOBAL__N_111LocalsProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit
  %.0 = phi i8 [ 1, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit ], [ 0, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, 8589934592) i64 @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE8FindNameINS_5ValueEEESt8optionalIjENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoIT_EE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 8 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 3
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZNK2v85Value13QuickIsStringEv.exit, label %.critedge

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 12 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i16, ptr %i.h, align 2
  %i.j = icmp ult i16 %i.i, 128
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !48
  %i.n = load atomic volatile i64, ptr %i.e acquire, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = and i16 %i.q, 15
  switch i16 %i.r, label %bb.q [
    i16 8, label %bb.d
    i16 0, label %bb.e
    i16 9, label %bb.f
    i16 1, label %bb.f
    i16 10, label %bb.g
    i16 2, label %bb.k
    i16 11, label %bb.o
    i16 3, label %bb.o
    i16 13, label %bb.p
    i16 5, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load i8, ptr %i.s, align 8
  %i.u = zext i8 %i.t to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load i16, ptr %i.v, align 8
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.x = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.g:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = inttoptr i64 %i.z to ptr                ; 6 uses
  %i.ab = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = and i16 %i.ae, 16
  %.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #17, !inline_history !33
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.am = load ptr, ptr %i.aa, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17, !inline_history !33
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = load i8, ptr %.0.i.i, align 1
  %i.ar = zext i8 %i.aq to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.k:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = inttoptr i64 %i.at to ptr               ; 6 uses
  %i.av = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = and i16 %i.ay, 16
  %.not.i.i10 = icmp eq i16 %i.az, 0
  br i1 %.not.i.i10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #17, !inline_history !34
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = load ptr, ptr %i.au, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17, !inline_history !34
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i11 = phi ptr [ %i.bf, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = load i16, ptr %.0.i.i11, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.c, %bb.c
  %i.bl = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.c, %bb.c
  %i.bm = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.q:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.o, %bb.p
  %.0.i9 = phi i16 [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.ar, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bk, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bl, %bb.o ], [ %i.bm, %bb.p ]
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !range !8, !noundef !9
  %i.bp = trunc nuw i8 %i.bo to i1
  store i8 0, ptr %i.bn, align 8
  br i1 %i.bp, label %bb.r, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.r:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #17
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not = icmp eq i16 %.0.i9, 36
  br i1 %.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.bx) #17
  store i64 %i.by, ptr %i.bs, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %bb.t, %bb.u
  %i.bz = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr nonnull %i.bs, ptr noundef %.val) ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 648
  %i.ce = load i64, ptr %0, align 8
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load atomic i32, ptr %i.ch acquire, align 4 ; 3 uses
  %i.cj = and i32 %i.ci, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.v, !prof !7

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.cl = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i32 noundef %i.ci)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.v, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %.0.in.i.i.i = phi i32 [ %i.cl, %bb.v ], [ %i.ci, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cn = load atomic volatile i64, ptr %i.cm monotonic, align 8
  %i.co = lshr i64 %i.cn, 32
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cr = add i32 %i.cp, -1                       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.cr, %.0.i.i.i ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64
  %i.ct = mul nuw i64 %.sroa.06.033.i.i, 12884901888 ; 2 uses
  %sext.i34.i.i = add nuw i64 %i.ct, 25769803776
  %i.cu = ashr exact i64 %sext.i34.i.i, 29
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.cq
  br i1 %i.cx, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.cy = load i64, ptr %0, align 8               ; 2 uses
  %.not.i9.i = icmp eq i64 %i.cy, %i.cw
  br i1 %.not.i9.i, label %.loopexit, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.cz = add i32 %.035.i11.i, 1
  %.not.i.i12 = icmp eq i64 %i.cy, %i.de
  br i1 %.not.i.i12, label %.loopexit, label %.lr.ph.i, !llvm.loop !27

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.w
  %.035.i11.i = phi i32 [ %i.cz, %bb.w ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.in37.i10.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.w ], [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ]
  %i.da = add i32 %.sroa.06.0.in37.i10.i, %.035.i11.i
  %.sroa.06.0.in.i.i = and i32 %i.da, %i.cr       ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64
  %i.db = mul i64 %.sroa.06.0.i.i, 12884901888    ; 2 uses
  %sext.i.i.i = add i64 %i.db, 25769803776
  %i.dc = ashr exact i64 %sext.i.i.i, 29
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 %i.dc
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.cq
  br i1 %i.df, label %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, label %bb.w, !llvm.loop !27

._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %.critedge, !llvm.loop !27

.loopexit:                                        ; preds = %bb.w, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.db, %bb.w ]
  %i.dg = load i64, ptr %i.bz, align 8
  %i.dh = add i64 %i.dg, -1
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %sext.i.i = add i64 %.pre-phi, 30064771072
  %i.dk = ashr exact i64 %sext.i.i, 29
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.dn = lshr i64 %i.dm, 32
  %i.do = or disjoint i64 %i.dn, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, %.loopexit, %_ZNK2v85Value13QuickIsStringEv.exit
  %.sroa.2.2 = phi i64 [ 0, %_ZNK2v85Value13QuickIsStringEv.exit ], [ 0, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ], [ 0, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ 0, %bb.b ], [ %i.do, %.loopexit ], [ 0, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i ], [ 0, %bb.a ]
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::StringBuilder", align 8 ; 13 uses
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = ptrtoint ptr %0 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !8
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %1, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.a) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #17
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i42 = icmp eq i32 %i.aq, 0
  br i1 %.not.i42, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !35

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.07.0.i75 = phi ptr [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.at, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.av = load i64, ptr %.sroa.07.0.i75, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41

bb.f:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.az = load i64, ptr %0, align 8
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2 ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 1057
  br i1 %i.bg, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add i64 %i.bc, 13
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i8, ptr %i.bi monotonic, align 1
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.bf, i1 noundef zeroext %i.bk) #17
  %i.bm = sext i32 %i.bl to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i: ; preds = %bb.g, %bb.f
  %i.bn = phi i64 [ %i.bm, %bb.g ], [ 24, %bb.f ]
  %i.bo = add i64 %i.bn, %i.ba
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i
  %i.bw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.bw, %bb.h ], [ %i.bs, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i ] ; 3 uses
  %i.bx = ptrtoint ptr %.0.i.i.i to i64
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.br, align 8
  store i64 %i.bq, ptr %.0.i.i.i, align 8
  %i.ca = add i64 %i.bq, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = lshr i64 %i.cd, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -2                   ; 3 uses
  %i.ch = call ptr @_ZN2v88internal14NameDictionary3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %1, i32 noundef %i.cg, i8 noundef zeroext 0, i32 noundef 0) #17 ; 2 uses
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 272
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %.sroa.056.0.lcssa = phi ptr [ %i.ch, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11LocalsProxyELNS1_12DebugProxyIdE5ENS0_10FixedArrayEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit ], [ %.sroa.056.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 2 uses
  %i.cq = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %1, ptr nonnull %0, ptr nonnull %i.a, ptr %.sroa.056.0.lcssa, i32 noundef 0, i64 0) #17
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41, !prof !5

bb.i:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

bb.j:                                             ; preds = %.lr.ph, %_ZN2v88internal11HandleScopeD2Ev.exit
  %.078 = phi i32 [ 0, %.lr.ph ], [ %i.gi, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 3 uses
  %.sroa.056.077 = phi ptr [ %i.ch, %.lr.ph ], [ %.sroa.056.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 4 uses
  %i.cs = load ptr, ptr %i.br, align 8
  %i.ct = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cu = load i32, ptr %i.ci, align 8
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ci, align 8
  %i.cw = load i64, ptr %.0.i.i.i, align 8
  %i.cx = add i64 %i.cw, -1
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %sext.i = add i64 %i.da, -8589934592
  %i.dc = ashr i64 %sext.i, 32
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8
  %i.df = add i64 %i.de, 23
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = add i64 %i.dh, 7
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = add i64 %i.da, -4294967296
  %i.dq = ashr i64 %i.dp, 32
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dq
  %i.ds = load atomic volatile i64, ptr %i.dr monotonic, align 8
  %i.dt = lshr i64 %i.ds, 32
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = call noundef ptr @_ZN2v88internal4wasm12NativeModule16GetNamesProviderEv(ptr noundef nonnull align 8 dereferenceable(552) %i.do) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  store ptr %2, ptr %i.ck, align 8
  store ptr %2, ptr %i.cl, align 8
  store i64 256, ptr %i.cm, align 8
  store i8 1, ptr %i.cn, align 8
  call void @_ZN2v88internal4wasm13NamesProvider14PrintLocalNameERNS1_13StringBuilderEjjNS2_14IndexAsCommentE(ptr noundef nonnull align 8 dereferenceable(288) %i.dv, ptr noundef nonnull align 8 dereferenceable(305) %2, i32 noundef %i.du, i32 noundef range(i32 0, -1) %.078, i1 noundef zeroext false) #17
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE12IndexedQueryEjRKNS_20PropertyCallbackInfoINS_7IntegerEEE:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i
  %i.af = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %.val.i) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ab, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i ] ; 2 uses
  %i.ag = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.aa, align 8
  store i64 %i.z, ptr %.0.i.i.i.i, align 8
  %i.aj = add i64 %i.z, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = icmp ult i32 %0, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = tail call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.ar, i32 noundef 5) #17 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.au = load i64, ptr %i.as, align 8
  br label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split

_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split: ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ %i.au, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink, ptr %i.aq, align 8
  br label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit
  %.0 = phi i8 [ 0, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_7IntegerEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit ], [ 1, %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE17IndexedEnumeratorERKNS_20PropertyCallbackInfoINS_5ArrayEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 3
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ArrayEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.g) #17 ; 2 uses
  store i64 %i.h, ptr %i.b, align 8
  %.val.i.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ArrayEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ArrayEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = phi ptr [ %.val, %bb.a ], [ %.val.i.pre, %bb.b ] ; 3 uses
  %i.i = phi i64 [ %i.c, %bb.a ], [ %i.h, %bb.b ]
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2 ; 2 uses
  %i.p = icmp eq i16 %i.o, 1057
  br i1 %i.p, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ArrayEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.q = add i64 %i.l, 13
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i8, ptr %i.r monotonic, align 1
  %i.t = icmp slt i8 %i.s, 0
  %i.u = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.o, i1 noundef zeroext %i.t) #17
  %i.v = sext i32 %i.u to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i: ; preds = %bb.c, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ArrayEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.w = phi i64 [ %i.v, %bb.c ], [ 24, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ArrayEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i ]
  %i.x = add i64 %i.w, %i.j
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 560 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 568
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ArrayEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i
  %i.af = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %.val.i) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ArrayEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ArrayEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ab, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i ] ; 2 uses
  %i.ag = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.aa, align 8
  store i64 %i.z, ptr %.0.i.i.i.i, align 8
  %i.aj = add i64 %i.z, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 32                      ; 4 uses
  %i.ao = trunc nuw i64 %i.an to i32              ; 3 uses
  %i.ap = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %.val, i32 noundef %i.ao, i8 noundef zeroext 0, i8 0) #17 ; 5 uses
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ArrayEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit
  %xtraiter = and i32 %i.ao, 1
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ao, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.025.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cb, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = sext i32 %.025.epil.init to i64         ; 2 uses
  %i.av = shl nsw i64 %i.au, 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.au
  store atomic volatile i64 %i.av, ptr %i.ax monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ArrayEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.ay = load i64, ptr %i.ap, align 8
  %i.az = add i64 %i.ay, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = lshr i64 %i.bc, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = tail call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %.val, ptr nonnull %i.ap, i8 noundef zeroext 0, i32 noundef %i.be, i8 noundef zeroext 0) #17 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.e, label %_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit, !prof !5

bb.e:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %i.a, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = add i64 %i.bi, 648
  %i.bk = inttoptr i64 %i.bj to ptr
  br label %_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %._crit_edge, %bb.e
  %storemerge.in = phi ptr [ %i.bk, %bb.e ], [ %i.bf, %._crit_edge ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.bl, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.025 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bm = load i64, ptr %i.ap, align 8
  %i.bn = add i64 %i.bm, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = sext i32 %.025 to i64                   ; 2 uses
  %i.bq = shl nsw i64 %i.bp, 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bp
  store atomic volatile i64 %i.bq, ptr %i.bs monotonic, align 8
  %i.bt = or disjoint i32 %.025, 1
  %i.bu = load i64, ptr %i.ap, align 8
  %i.bv = add i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = sext i32 %i.bt to i64                   ; 2 uses
  %i.by = shl nsw i64 %i.bx, 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.bx
  store atomic volatile i64 %i.by, ptr %i.ca monotonic, align 8
  %i.cb = add nuw i32 %.025, 2                    ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !52
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext range(i8 0, 2) i8 @_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE17IndexedDescriptorEjRKNS_20PropertyCallbackInfoINS_5ValueEEE(i32 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 3
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.g) #17 ; 2 uses
  store i64 %i.h, ptr %i.b, align 8
  %.val.i.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = phi ptr [ %.val, %bb.a ], [ %.val.i.pre, %bb.b ] ; 3 uses
  %i.i = phi i64 [ %i.c, %bb.a ], [ %i.h, %bb.b ]
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2 ; 2 uses
  %i.p = icmp eq i16 %i.o, 1057
  br i1 %i.p, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.q = add i64 %i.l, 13
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i8, ptr %i.r monotonic, align 1
  %i.t = icmp slt i8 %i.s, 0
  %i.u = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.o, i1 noundef zeroext %i.t) #17
  %i.v = sext i32 %i.u to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i: ; preds = %bb.c, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i
  %i.w = phi i64 [ %i.v, %bb.c ], [ 24, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit.i ]
  %i.x = add i64 %i.w, %i.j
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 560 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 568
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i
  %i.af = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %.val.i) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ab, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i.i ] ; 2 uses
  %i.ag = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.aa, align 8
  store i64 %i.z, ptr %.0.i.i.i.i, align 8
  %i.aj = add i64 %i.z, -1
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = icmp ult i32 %0, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  store i8 43, ptr %2, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.as = sext i32 %0 to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 560 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 568
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_110StackProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ba = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %.val) #17
  br label %_ZN2v88internal12_GLOBAL__N_110StackProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit

_ZN2v88internal12_GLOBAL__N_110StackProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.ba, %bb.f ], [ %i.aw, %bb.e ] ; 3 uses
  %i.bb = ptrtoint ptr %.0.i.i.i to i64
  %i.bc = add i64 %i.bb, 8
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %i.av, align 8
  store i64 %i.au, ptr %.0.i.i.i, align 8
  store ptr %.0.i.i.i, ptr %i.aq, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = call ptr @_ZN2v88internal18PropertyDescriptor8ToObjectEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.val) #17 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.g, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_110StackProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit
  %i.bh = load ptr, ptr %i.a, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = add i64 %i.bi, 648
  %i.bk = inttoptr i64 %i.bj to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_110StackProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit, %bb.g
  %storemerge.in = phi ptr [ %i.bk, %bb.g ], [ %i.bf, %_ZN2v88internal12_GLOBAL__N_110StackProxy3GetEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj.exit ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit
  %.0 = phi i8 [ 1, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit ], [ 0, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_10StackProxyELNS1_12DebugProxyIdE6ENS0_10FixedArrayEE11GetProviderINS_5ValueEEENS0_12DirectHandleIS5_EERKNS_20PropertyCallbackInfoIT_EE.exit ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN2v88internal12_GLOBAL__N_121ContextProxyPrototype14CreateTemplateEPNS_7IsolateE(ptr noundef %0) #0 align 2 {
bb.a:
  %1 = alloca %"struct.v8::NamedPropertyHandlerConfiguration", align 8 ; 6 uses
  %i.a = tail call ptr @_ZN2v816FunctionTemplate3NewEPNS_7IsolateEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEENS_5LocalIS4_EENSA_INS_9SignatureEEEiNS_19ConstructorBehaviorENS_14SideEffectTypeEPKNS_9CFunctionEttt(ptr noundef %0, ptr noundef null, ptr null, ptr null, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #17 ; 2 uses
  %i.b = tail call ptr @_ZN2v816FunctionTemplate16InstanceTemplateEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZN2v88internal12_GLOBAL__N_121ContextProxyPrototype11NamedGetterENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoINS_5ValueEEE, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store i32 6, ptr %i.d, align 8
  call void @_ZN2v814ObjectTemplate10SetHandlerERKNS_33NamedPropertyHandlerConfigurationE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(68) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext range(i8 0, 2) i8 @_ZN2v88internal12_GLOBAL__N_121ContextProxyPrototype11NamedGetterENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoINS_5ValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i64, ptr %0, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !53
  %i.i = load atomic volatile i64, ptr %i.f acquire, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.p [
    i16 8, label %bb.c
    i16 0, label %bb.d
    i16 9, label %bb.e
    i16 1, label %bb.e
    i16 10, label %bb.f
    i16 2, label %bb.j
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %bb.o
    i16 5, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i8, ptr %i.n, align 8
  %i.p = zext i8 %i.o to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load i16, ptr %i.q, align 8
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.s = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.f, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i64, ptr %i.t, align 8
  %i.v = inttoptr i64 %i.u to ptr                 ; 6 uses
  %i.w = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = and i16 %i.z, 16
  %.not.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #17, !inline_history !56
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #17
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ah = load ptr, ptr %i.v, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #17, !inline_history !56
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = load i8, ptr %.0.i.i.i, align 1
  %i.am = zext i8 %i.al to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i

bb.j:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = inttoptr i64 %i.ao to ptr               ; 6 uses
  %i.aq = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = and i16 %i.at, 16
  %.not.i.i35.i = icmp eq i16 %i.au, 0
  br i1 %.not.i.i35.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #17, !inline_history !57
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bb = load ptr, ptr %i.ap, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #17, !inline_history !57
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i36.i = phi ptr [ %i.ba, %bb.l ], [ %i.be, %bb.m ]
  %i.bf = load i16, ptr %.0.i.i36.i, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bg = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.f, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.bh = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.f, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i

bb.p:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i: ; preds = %bb.o, %bb.n, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i16 [ %i.p, %bb.c ], [ %i.r, %bb.d ], [ %i.s, %bb.e ], [ %i.am, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i ], [ %i.bf, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit.i ], [ %i.bg, %bb.n ], [ %i.bh, %bb.o ]
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !range !8, !noundef !9
  %i.bk = trunc nuw i8 %i.bj to i1
  store i8 0, ptr %i.bi, align 8
  br i1 %i.bk, label %bb.q, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i

bb.q:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i
  %i.bl = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #17
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i: ; preds = %bb.r, %bb.q, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.bm = icmp eq i16 %.0.i.i, 36
  br i1 %i.bm, label %.preheader.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

.preheader.i:                                     ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 648 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 55448
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 64088
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 64080
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %.preheader.i
  %.0.idx127.i = phi i64 [ 0, %.preheader.i ], [ %.0.add.i, %bb.z ] ; 2 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal12_GLOBAL__N_121ContextProxyPrototype16GetNamedPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS5_INS0_6StringEEE.kDelegateNames, i64 %.0.idx127.i
  %i.cc = load ptr, ptr %.0.ptr.i, align 8
  %i.cd = call ptr @_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef %i.b, ptr nonnull %i.c, ptr noundef %i.cc) ; 4 uses
  %.not125.i = icmp eq ptr %i.cd, null
  br i1 %.not125.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = load i64, ptr %i.bn, align 8
  %i.cg = icmp eq i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %.pre.pre.i.i = load i64, ptr %0, align 8
  %i.ch = add i64 %.pre.pre.i.i, -1
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = load atomic volatile i64, ptr %i.ci monotonic, align 8
  %i.ck = add i64 %i.cj, 11
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load atomic volatile i16, ptr %i.cl monotonic, align 2
  %i.cn = icmp eq i16 %i.cm, 128
  br i1 %i.cn, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i:  ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = trunc i32 %i.cp to i1
  br i1 %i.cq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, %bb.u
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i
  %i.cr = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i ]
  store i32 %i.cr, ptr %2, align 8
  store i32 0, ptr %i.bo, align 4
  store i8 0, ptr %i.bp, align 8
  store i32 0, ptr %i.bq, align 4
  store i32 0, ptr %i.br, align 8
  store ptr %i.b, ptr %i.bs, align 8
  store ptr %0, ptr %i.bt, align 8
  store ptr null, ptr %i.bu, align 8
  store ptr %i.cd, ptr %i.bv, align 8
  store ptr null, ptr %i.bw, align 8
  %i.cs = ptrtoint ptr %i.cd to i64
  store i64 %i.cs, ptr %i.bx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 -1, i64 16, i1 false)
  %i.ct = load atomic volatile i64, ptr %i.ci monotonic, align 8
  %i.cu = add i64 %i.ct, 11
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i16, ptr %i.cv monotonic, align 2
  %i.cx = and i16 %i.cw, -96
  %.not.i21.i.i.i.i = icmp eq i16 %i.cx, 32
  br i1 %.not.i21.i.i.i.i, label %bb.v, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

bb.v:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = load i8, ptr %i.bz, align 8, !range !8
  %i.db = trunc nuw i8 %i.da to i1
  %not..i.i.i23.i.i.i.i = xor i1 %i.cz, true
  %i.dc = select i1 %not..i.i.i23.i.i.i.i, i1 true, i1 %i.db
  br i1 %i.dc, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = load i8, ptr %i.ca, align 8, !range !8, !noundef !9
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i: ; preds = %bb.w
  %i.df = load ptr, ptr %i.cb, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, %bb.v
  %.pn.i.i26.i.i.i.i = phi ptr [ %i.df, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i ], [ %i.b, %bb.v ]
  %.in.i.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i, i64 58464
  %i.dg = load ptr, ptr %.in.i.i27.i.i.i.i, align 8
  %i.dh = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr nonnull %0) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i = phi ptr [ %i.dh, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i ], [ %0, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i, ptr %i.bt, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17
  %i.di = load i32, ptr %i.bo, align 4
  %.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.dj = load ptr, ptr %i.bs, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.y

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.dl = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not126.i = icmp eq ptr %i.dl, null
  br i1 %.not126.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i
  %.sroa.0.0.i121.i = phi ptr [ %i.dk, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i ], [ %i.dl, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i ]
  %i.dm = load i64, ptr %.sroa.0.0.i121.i, align 8 ; 2 uses
  %i.dn = load i64, ptr %i.bn, align 8
  %i.do = icmp eq i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.z, label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit

bb.z:                                             ; preds = %bb.y, %bb.t
  %.0.add.i = add nuw nsw i64 %.0.idx127.i, 8     ; 2 uses
  %.not29.not.i = icmp eq i64 %.0.add.i, 40
  br i1 %.not29.not.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, label %bb.s

_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.dm, ptr %i.dp, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.z, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i, %bb.s, %bb.a, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit
  %.0 = phi i8 [ 1, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit ], [ 0, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i ], [ 0, %bb.a ], [ 0, %bb.s ], [ 0, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i ], [ 0, %bb.z ]
  ret i8 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %i.b = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, i64 %i.a) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %.pre.pre.i = load i64, ptr %i.b, align 8
  %i.c = add i64 %.pre.pre.i, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 128
  br i1 %i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.m = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.m, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 -1, i64 16, i1 false)
  %i.z = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = and i16 %i.ac, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ad, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ah = load i8, ptr %i.ag, align 8, !range !8
  %i.ai = trunc nuw i8 %i.ah to i1
  %not..i.i.i23.i.i.i = xor i1 %i.af, true
  %i.aj = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ai
  br i1 %i.aj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.al = load i8, ptr %i.ak, align 8, !range !8, !noundef !9
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ao = load ptr, ptr %i.an, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ap = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.aq = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.b) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.aq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.b, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.s, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #17
  %i.ar = load i32, ptr %i.n, align 4
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.as = load ptr, ptr %i.r, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 648
  br label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.au = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #17
  br label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi ptr [ %i.au, %bb.f ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %.sroa.07.0.i
}

declare ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_129GetOrCreateInstanceProxyCacheEPNS0_7IsolateENS0_12DirectHandleINS0_18WasmInstanceObjectEEE(ptr noundef %0, ptr %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8144 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !8
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.e

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i36 = phi ptr [ %i.as, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.at, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.au = load i64, ptr %.sroa.0.0.i36, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.critedge, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

.critedge:                                        ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %bb.e
  %i.ay = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 4, i8 noundef zeroext 0) #17 ; 2 uses
  %i.az = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr %1, ptr nonnull %i.a, ptr %i.ay, i32 noundef 0, i64 0) #17
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !5

bb.f:                                             ; preds = %.critedge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %.critedge, %bb.e
  %.sroa.025.0 = phi ptr [ %.sroa.0.0.i36, %bb.e ], [ %i.ay, %.critedge ]
  ret ptr %.sroa.025.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE14CreateTemplateEPNS_7IsolateE(ptr noundef %0) #0 align 2 {
bb.a:
  %1 = alloca %"struct.v8::IndexedPropertyHandlerConfiguration", align 8 ; 12 uses
  %2 = alloca %"struct.v8::NamedPropertyHandlerConfiguration", align 8 ; 12 uses
  %i.a = tail call ptr @_ZN2v816FunctionTemplate3NewEPNS_7IsolateEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEENS_5LocalIS4_EENSA_INS_9SignatureEEEiNS_19ConstructorBehaviorENS_14SideEffectTypeEPKNS_9CFunctionEttt(ptr noundef %0, ptr noundef null, ptr null, ptr null, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #17 ; 5 uses
  %i.b = tail call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef -1) #17 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE14CreateTemplateEPNS_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE14CreateTemplateEPNS_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE14CreateTemplateEPNS_7IsolateE.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2v816FunctionTemplate12SetClassNameENS_5LocalINS_6StringEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %i.b) #17
  %i.d = tail call ptr @_ZN2v816FunctionTemplate16InstanceTemplateEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #17
  tail call void @_ZN2v814ObjectTemplate21SetInternalFieldCountEi(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef 1) #17
  %i.e = tail call ptr @_ZN2v816FunctionTemplate16InstanceTemplateEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE13IndexedGetterEjRKNS_20PropertyCallbackInfoINS_5ValueEEE, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE12IndexedQueryEjRKNS_20PropertyCallbackInfoINS_7IntegerEEE, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE17IndexedEnumeratorERKNS_20PropertyCallbackInfoINS_5ArrayEEE, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE17IndexedDescriptorEjRKNS_20PropertyCallbackInfoINS_5ValueEEE, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 4, ptr %i.m, align 8
  call void @_ZN2v814ObjectTemplate10SetHandlerERKNS_35IndexedPropertyHandlerConfigurationE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(68) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.n = call ptr @_ZN2v816FunctionTemplate16InstanceTemplateEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE11NamedGetterENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoINS_5ValueEEE, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE10NamedQueryENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoINS_7IntegerEEE, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE15NamedEnumeratorERKNS_20PropertyCallbackInfoINS_5ArrayEEE, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE15NamedDescriptorENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoINS_5ValueEEE, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 4, ptr %i.v, align 8
  call void @_ZN2v814ObjectTemplate10SetHandlerERKNS_33NamedPropertyHandlerConfigurationE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(68) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext range(i8 0, 2) i8 @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE11NamedGetterENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoINS_5ValueEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #0 align 2 {
bb.a:
  %i.a = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE8FindNameINS_5ValueEEESt8optionalIjENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoIT_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %i.b = icmp samesign ult i64 %i.a, 4294967296
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32
  %i.c = tail call noundef zeroext i8 @_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE13IndexedGetterEjRKNS_20PropertyCallbackInfoINS_5ValueEEE(i32 noundef %.sroa.0.0.extract.trunc, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %spec.select = phi i8 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i8 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext range(i8 0, 2) i8 @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE10NamedQueryENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoINS_7IntegerEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 8 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 3
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZNK2v85Value13QuickIsStringEv.exit.i, label %.thread

_ZNK2v85Value13QuickIsStringEv.exit.i:            ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 12 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i16, ptr %i.h, align 2
  %i.j = icmp ult i16 %i.i, 128
  br i1 %i.j, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE8FindNameINS_5ValueEEESt8optionalIjENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoIT_EE:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #17, !inline_history !33
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.am = load ptr, ptr %i.aa, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17, !inline_history !33
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = load i8, ptr %.0.i.i, align 1
  %i.ar = zext i8 %i.aq to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.k:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = inttoptr i64 %i.at to ptr               ; 6 uses
  %i.av = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = and i16 %i.ay, 16
  %.not.i.i10 = icmp eq i16 %i.az, 0
  br i1 %.not.i.i10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #17, !inline_history !34
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = load ptr, ptr %i.au, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17, !inline_history !34
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i11 = phi ptr [ %i.bf, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = load i16, ptr %.0.i.i11, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.c, %bb.c
  %i.bl = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.c, %bb.c
  %i.bm = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.q:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.o, %bb.p
  %.0.i9 = phi i16 [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.ar, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bk, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bl, %bb.o ], [ %i.bm, %bb.p ]
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !range !8, !noundef !9
  %i.bp = trunc nuw i8 %i.bo to i1
  store i8 0, ptr %i.bn, align 8
  br i1 %i.bp, label %bb.r, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.r:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #17
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not = icmp eq i16 %.0.i9, 36
  br i1 %.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.bx) #17
  store i64 %i.by, ptr %i.bs, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %bb.t, %bb.u
  %i.bz = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr nonnull %i.bs, ptr noundef %.val) ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 648
  %i.ce = load i64, ptr %0, align 8
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load atomic i32, ptr %i.ch acquire, align 4 ; 3 uses
  %i.cj = and i32 %i.ci, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.v, !prof !7

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.cl = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i32 noundef %i.ci)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.v, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %.0.in.i.i.i = phi i32 [ %i.cl, %bb.v ], [ %i.ci, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cn = load atomic volatile i64, ptr %i.cm monotonic, align 8
  %i.co = lshr i64 %i.cn, 32
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cr = add i32 %i.cp, -1                       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.cr, %.0.i.i.i ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64
  %i.ct = mul nuw i64 %.sroa.06.033.i.i, 12884901888 ; 2 uses
  %sext.i34.i.i = add nuw i64 %i.ct, 25769803776
  %i.cu = ashr exact i64 %sext.i34.i.i, 29
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.cq
  br i1 %i.cx, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.cy = load i64, ptr %0, align 8               ; 2 uses
  %.not.i9.i = icmp eq i64 %i.cy, %i.cw
  br i1 %.not.i9.i, label %.loopexit, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.cz = add i32 %.035.i11.i, 1
  %.not.i.i12 = icmp eq i64 %i.cy, %i.de
  br i1 %.not.i.i12, label %.loopexit, label %.lr.ph.i, !llvm.loop !27

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.w
  %.035.i11.i = phi i32 [ %i.cz, %bb.w ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.in37.i10.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.w ], [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ]
  %i.da = add i32 %.sroa.06.0.in37.i10.i, %.035.i11.i
  %.sroa.06.0.in.i.i = and i32 %i.da, %i.cr       ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64
  %i.db = mul i64 %.sroa.06.0.i.i, 12884901888    ; 2 uses
  %sext.i.i.i = add i64 %i.db, 25769803776
  %i.dc = ashr exact i64 %sext.i.i.i, 29
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 %i.dc
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.cq
  br i1 %i.df, label %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, label %bb.w, !llvm.loop !27

._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %.critedge, !llvm.loop !27

.loopexit:                                        ; preds = %bb.w, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.db, %bb.w ]
  %i.dg = load i64, ptr %i.bz, align 8
  %i.dh = add i64 %i.dg, -1
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %sext.i.i = add i64 %.pre-phi, 30064771072
  %i.dk = ashr exact i64 %sext.i.i, 29
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.dn = lshr i64 %i.dm, 32
  %i.do = or disjoint i64 %i.dn, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, %.loopexit, %_ZNK2v85Value13QuickIsStringEv.exit
  %.sroa.2.2 = phi i64 [ 0, %_ZNK2v85Value13QuickIsStringEv.exit ], [ 0, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ], [ 0, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ 0, %bb.b ], [ %i.do, %.loopexit ], [ 0, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i ], [ 0, %bb.a ]
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::StringBuilder", align 8 ; 13 uses
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = ptrtoint ptr %0 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !8
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %1, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.a) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #17
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i42 = icmp eq i32 %i.aq, 0
  br i1 %.not.i42, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !35

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.07.0.i74 = phi ptr [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.at, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.av = load i64, ptr %.sroa.07.0.i74, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41

bb.f:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.az = load i64, ptr %0, align 8
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2 ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 1057
  br i1 %i.bg, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add i64 %i.bc, 13
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i8, ptr %i.bi monotonic, align 1
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.bf, i1 noundef zeroext %i.bk) #17
  %i.bm = sext i32 %i.bl to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i: ; preds = %bb.g, %bb.f
  %i.bn = phi i64 [ %i.bm, %bb.g ], [ 24, %bb.f ]
  %i.bo = add i64 %i.bn, %i.ba
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i
  %i.bw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.h ], [ %i.bs, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i ] ; 3 uses
  %i.bx = ptrtoint ptr %.0.i.i.i.i to i64
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.br, align 8
  store i64 %i.bq, ptr %.0.i.i.i.i, align 8
  %i.ca = add i64 %i.bq, 23
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i64, ptr %i.cb acquire, align 8
  %i.cd = add i64 %i.cc, 175
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = add i64 %i.cf, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = lshr i64 %i.cj, 32                      ; 2 uses
  %i.cl = trunc nuw i64 %i.ck to i32              ; 2 uses
  %i.cm = call ptr @_ZN2v88internal14NameDictionary3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %1, i32 noundef %i.cl, i8 noundef zeroext 0, i32 noundef 0) #17 ; 2 uses
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 272
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %.sroa.055.0.lcssa = phi ptr [ %i.cm, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_13MemoriesProxyELNS1_12DebugProxyIdE2ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit ], [ %.sroa.055.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 2 uses
  %i.cv = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %1, ptr nonnull %0, ptr nonnull %i.a, ptr %.sroa.055.0.lcssa, i32 noundef 0, i64 0) #17
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41, !prof !5

bb.i:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

bb.j:                                             ; preds = %.lr.ph, %_ZN2v88internal11HandleScopeD2Ev.exit
  %.077 = phi i32 [ 0, %.lr.ph ], [ %i.gc, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 3 uses
  %.sroa.055.076 = phi ptr [ %i.cm, %.lr.ph ], [ %.sroa.055.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 4 uses
  %i.cx = load ptr, ptr %i.br, align 8
  %i.cy = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cz = load i32, ptr %i.cn, align 8
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cn, align 8
  %i.db = load i64, ptr %.0.i.i.i.i, align 8
  %i.dc = add i64 %i.db, 31
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = add i64 %i.de, 23
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = add i64 %i.dh, 7
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef ptr @_ZN2v88internal4wasm12NativeModule16GetNamesProviderEv(ptr noundef nonnull align 8 dereferenceable(552) %i.do) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  store ptr %2, ptr %i.cp, align 8
  store ptr %2, ptr %i.cq, align 8
  store i64 256, ptr %i.cr, align 8
  store i8 1, ptr %i.cs, align 8
  call void @_ZN2v88internal4wasm13NamesProvider15PrintMemoryNameERNS1_13StringBuilderEjNS2_14IndexAsCommentE(ptr noundef nonnull align 8 dereferenceable(288) %i.dp, ptr noundef nonnull align 8 dereferenceable(305) %2, i32 noundef %.077, i1 noundef zeroext false) #17
  %.val.i = load ptr, ptr %i.cp, align 8          ; 2 uses
  %.val2.i = load ptr, ptr %i.cq, align 8
  %i.dq = ptrtoint ptr %.val2.i to i64
  %i.dr = ptrtoint ptr %.val.i to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %.val.i, i64 %i.ds, i1 noundef zeroext false) #17 ; 3 uses
  %i.du = load ptr, ptr %i.co, align 8            ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE8FindNameINS_5ValueEEESt8optionalIjENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoIT_EE:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #17, !inline_history !33
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.am = load ptr, ptr %i.aa, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17, !inline_history !33
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = load i8, ptr %.0.i.i, align 1
  %i.ar = zext i8 %i.aq to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.k:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = inttoptr i64 %i.at to ptr               ; 6 uses
  %i.av = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = and i16 %i.ay, 16
  %.not.i.i10 = icmp eq i16 %i.az, 0
  br i1 %.not.i.i10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #17, !inline_history !34
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = load ptr, ptr %i.au, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17, !inline_history !34
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i11 = phi ptr [ %i.bf, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = load i16, ptr %.0.i.i11, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.c, %bb.c
  %i.bl = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.c, %bb.c
  %i.bm = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.q:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.o, %bb.p
  %.0.i9 = phi i16 [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.ar, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bk, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bl, %bb.o ], [ %i.bm, %bb.p ]
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !range !8, !noundef !9
  %i.bp = trunc nuw i8 %i.bo to i1
  store i8 0, ptr %i.bn, align 8
  br i1 %i.bp, label %bb.r, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.r:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #17
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not = icmp eq i16 %.0.i9, 36
  br i1 %.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.bx) #17
  store i64 %i.by, ptr %i.bs, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %bb.t, %bb.u
  %i.bz = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr nonnull %i.bs, ptr noundef %.val) ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 648
  %i.ce = load i64, ptr %0, align 8
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load atomic i32, ptr %i.ch acquire, align 4 ; 3 uses
  %i.cj = and i32 %i.ci, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.v, !prof !7

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.cl = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i32 noundef %i.ci)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.v, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %.0.in.i.i.i = phi i32 [ %i.cl, %bb.v ], [ %i.ci, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cn = load atomic volatile i64, ptr %i.cm monotonic, align 8
  %i.co = lshr i64 %i.cn, 32
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cr = add i32 %i.cp, -1                       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.cr, %.0.i.i.i ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64
  %i.ct = mul nuw i64 %.sroa.06.033.i.i, 12884901888 ; 2 uses
  %sext.i34.i.i = add nuw i64 %i.ct, 25769803776
  %i.cu = ashr exact i64 %sext.i34.i.i, 29
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.cq
  br i1 %i.cx, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.cy = load i64, ptr %0, align 8               ; 2 uses
  %.not.i9.i = icmp eq i64 %i.cy, %i.cw
  br i1 %.not.i9.i, label %.loopexit, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.cz = add i32 %.035.i11.i, 1
  %.not.i.i12 = icmp eq i64 %i.cy, %i.de
  br i1 %.not.i.i12, label %.loopexit, label %.lr.ph.i, !llvm.loop !27

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.w
  %.035.i11.i = phi i32 [ %i.cz, %bb.w ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.in37.i10.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.w ], [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ]
  %i.da = add i32 %.sroa.06.0.in37.i10.i, %.035.i11.i
  %.sroa.06.0.in.i.i = and i32 %i.da, %i.cr       ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64
  %i.db = mul i64 %.sroa.06.0.i.i, 12884901888    ; 2 uses
  %sext.i.i.i = add i64 %i.db, 25769803776
  %i.dc = ashr exact i64 %sext.i.i.i, 29
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 %i.dc
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.cq
  br i1 %i.df, label %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, label %bb.w, !llvm.loop !27

._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %.critedge, !llvm.loop !27

.loopexit:                                        ; preds = %bb.w, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.db, %bb.w ]
  %i.dg = load i64, ptr %i.bz, align 8
  %i.dh = add i64 %i.dg, -1
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %sext.i.i = add i64 %.pre-phi, 30064771072
  %i.dk = ashr exact i64 %sext.i.i, 29
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.dn = lshr i64 %i.dm, 32
  %i.do = or disjoint i64 %i.dn, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, %.loopexit, %_ZNK2v85Value13QuickIsStringEv.exit
  %.sroa.2.2 = phi i64 [ 0, %_ZNK2v85Value13QuickIsStringEv.exit ], [ 0, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ], [ 0, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ 0, %bb.b ], [ %i.do, %.loopexit ], [ 0, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i ], [ 0, %bb.a ]
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::StringBuilder", align 8 ; 13 uses
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = ptrtoint ptr %0 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !8
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %1, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.a) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #17
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i42 = icmp eq i32 %i.aq, 0
  br i1 %.not.i42, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !35

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.07.0.i74 = phi ptr [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.at, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.av = load i64, ptr %.sroa.07.0.i74, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41

bb.f:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.az = load i64, ptr %0, align 8
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2 ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 1057
  br i1 %i.bg, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add i64 %i.bc, 13
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i8, ptr %i.bi monotonic, align 1
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.bf, i1 noundef zeroext %i.bk) #17
  %i.bm = sext i32 %i.bl to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i: ; preds = %bb.g, %bb.f
  %i.bn = phi i64 [ %i.bm, %bb.g ], [ 24, %bb.f ]
  %i.bo = add i64 %i.bn, %i.ba
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i
  %i.bw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.h ], [ %i.bs, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i ] ; 3 uses
  %i.bx = ptrtoint ptr %.0.i.i.i.i to i64
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.br, align 8
  store i64 %i.bq, ptr %.0.i.i.i.i, align 8
  %i.ca = add i64 %i.bq, 23
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i64, ptr %i.cb acquire, align 8
  %i.cd = add i64 %i.cc, 207
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = add i64 %i.cf, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = lshr i64 %i.cj, 32                      ; 2 uses
  %i.cl = trunc nuw i64 %i.ck to i32              ; 2 uses
  %i.cm = call ptr @_ZN2v88internal14NameDictionary3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %1, i32 noundef %i.cl, i8 noundef zeroext 0, i32 noundef 0) #17 ; 2 uses
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 272
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %.sroa.055.0.lcssa = phi ptr [ %i.cm, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_11TablesProxyELNS1_12DebugProxyIdE3ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit ], [ %.sroa.055.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 2 uses
  %i.cv = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %1, ptr nonnull %0, ptr nonnull %i.a, ptr %.sroa.055.0.lcssa, i32 noundef 0, i64 0) #17
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41, !prof !5

bb.i:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

bb.j:                                             ; preds = %.lr.ph, %_ZN2v88internal11HandleScopeD2Ev.exit
  %.077 = phi i32 [ 0, %.lr.ph ], [ %i.gc, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 3 uses
  %.sroa.055.076 = phi ptr [ %i.cm, %.lr.ph ], [ %.sroa.055.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 4 uses
  %i.cx = load ptr, ptr %i.br, align 8
  %i.cy = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cz = load i32, ptr %i.cn, align 8
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cn, align 8
  %i.db = load i64, ptr %.0.i.i.i.i, align 8
  %i.dc = add i64 %i.db, 31
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = add i64 %i.de, 23
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = add i64 %i.dh, 7
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef ptr @_ZN2v88internal4wasm12NativeModule16GetNamesProviderEv(ptr noundef nonnull align 8 dereferenceable(552) %i.do) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  store ptr %2, ptr %i.cp, align 8
  store ptr %2, ptr %i.cq, align 8
  store i64 256, ptr %i.cr, align 8
  store i8 1, ptr %i.cs, align 8
  call void @_ZN2v88internal4wasm13NamesProvider14PrintTableNameERNS1_13StringBuilderEjNS2_14IndexAsCommentE(ptr noundef nonnull align 8 dereferenceable(288) %i.dp, ptr noundef nonnull align 8 dereferenceable(305) %2, i32 noundef %.077, i1 noundef zeroext false) #17
  %.val.i = load ptr, ptr %i.cp, align 8          ; 2 uses
  %.val2.i = load ptr, ptr %i.cq, align 8
  %i.dq = ptrtoint ptr %.val2.i to i64
  %i.dr = ptrtoint ptr %.val.i to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %.val.i, i64 %i.ds, i1 noundef zeroext false) #17 ; 3 uses
  %i.du = load ptr, ptr %i.co, align 8            ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE8FindNameINS_5ValueEEESt8optionalIjENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoIT_EE:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #17, !inline_history !33
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.am = load ptr, ptr %i.aa, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17, !inline_history !33
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = load i8, ptr %.0.i.i, align 1
  %i.ar = zext i8 %i.aq to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.k:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = inttoptr i64 %i.at to ptr               ; 6 uses
  %i.av = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = and i16 %i.ay, 16
  %.not.i.i10 = icmp eq i16 %i.az, 0
  br i1 %.not.i.i10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #17, !inline_history !34
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = load ptr, ptr %i.au, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17, !inline_history !34
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i11 = phi ptr [ %i.bf, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = load i16, ptr %.0.i.i11, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.c, %bb.c
  %i.bl = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.c, %bb.c
  %i.bm = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.q:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.o, %bb.p
  %.0.i9 = phi i16 [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.ar, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bk, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bl, %bb.o ], [ %i.bm, %bb.p ]
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !range !8, !noundef !9
  %i.bp = trunc nuw i8 %i.bo to i1
  store i8 0, ptr %i.bn, align 8
  br i1 %i.bp, label %bb.r, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.r:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #17
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not = icmp eq i16 %.0.i9, 36
  br i1 %.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.bx) #17
  store i64 %i.by, ptr %i.bs, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %bb.t, %bb.u
  %i.bz = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr nonnull %i.bs, ptr noundef %.val) ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 648
  %i.ce = load i64, ptr %0, align 8
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load atomic i32, ptr %i.ch acquire, align 4 ; 3 uses
  %i.cj = and i32 %i.ci, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.v, !prof !7

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.cl = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i32 noundef %i.ci)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.v, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %.0.in.i.i.i = phi i32 [ %i.cl, %bb.v ], [ %i.ci, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cn = load atomic volatile i64, ptr %i.cm monotonic, align 8
  %i.co = lshr i64 %i.cn, 32
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cr = add i32 %i.cp, -1                       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.cr, %.0.i.i.i ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64
  %i.ct = mul nuw i64 %.sroa.06.033.i.i, 12884901888 ; 2 uses
  %sext.i34.i.i = add nuw i64 %i.ct, 25769803776
  %i.cu = ashr exact i64 %sext.i34.i.i, 29
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.cq
  br i1 %i.cx, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.cy = load i64, ptr %0, align 8               ; 2 uses
  %.not.i9.i = icmp eq i64 %i.cy, %i.cw
  br i1 %.not.i9.i, label %.loopexit, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.cz = add i32 %.035.i11.i, 1
  %.not.i.i12 = icmp eq i64 %i.cy, %i.de
  br i1 %.not.i.i12, label %.loopexit, label %.lr.ph.i, !llvm.loop !27

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.w
  %.035.i11.i = phi i32 [ %i.cz, %bb.w ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.in37.i10.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.w ], [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ]
  %i.da = add i32 %.sroa.06.0.in37.i10.i, %.035.i11.i
  %.sroa.06.0.in.i.i = and i32 %i.da, %i.cr       ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64
  %i.db = mul i64 %.sroa.06.0.i.i, 12884901888    ; 2 uses
  %sext.i.i.i = add i64 %i.db, 25769803776
  %i.dc = ashr exact i64 %sext.i.i.i, 29
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 %i.dc
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.cq
  br i1 %i.df, label %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, label %bb.w, !llvm.loop !27

._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %.critedge, !llvm.loop !27

.loopexit:                                        ; preds = %bb.w, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.db, %bb.w ]
  %i.dg = load i64, ptr %i.bz, align 8
  %i.dh = add i64 %i.dg, -1
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %sext.i.i = add i64 %.pre-phi, 30064771072
  %i.dk = ashr exact i64 %sext.i.i, 29
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.dn = lshr i64 %i.dm, 32
  %i.do = or disjoint i64 %i.dn, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, %.loopexit, %_ZNK2v85Value13QuickIsStringEv.exit
  %.sroa.2.2 = phi i64 [ 0, %_ZNK2v85Value13QuickIsStringEv.exit ], [ 0, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ], [ 0, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ 0, %bb.b ], [ %i.do, %.loopexit ], [ 0, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i ], [ 0, %bb.a ]
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::StringBuilder", align 8 ; 13 uses
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = ptrtoint ptr %0 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !8
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %1, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.a) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #17
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i42 = icmp eq i32 %i.aq, 0
  br i1 %.not.i42, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !35

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.07.0.i74 = phi ptr [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.at, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.av = load i64, ptr %.sroa.07.0.i74, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41

bb.f:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.az = load i64, ptr %0, align 8
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2 ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 1057
  br i1 %i.bg, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add i64 %i.bc, 13
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i8, ptr %i.bi monotonic, align 1
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.bf, i1 noundef zeroext %i.bk) #17
  %i.bm = sext i32 %i.bl to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i: ; preds = %bb.g, %bb.f
  %i.bn = phi i64 [ %i.bm, %bb.g ], [ 24, %bb.f ]
  %i.bo = add i64 %i.bn, %i.ba
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i
  %i.bw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.h ], [ %i.bs, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i ] ; 3 uses
  %i.bx = ptrtoint ptr %.0.i.i.i.i to i64
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.br, align 8
  store i64 %i.bq, ptr %.0.i.i.i.i, align 8
  %i.ca = add i64 %i.bq, 31
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = add i64 %i.cc, 23
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = add i64 %i.cf, 7
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 216
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 224
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 232
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cp, align 8
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 24
  %i.cx = trunc i64 %i.cw to i32                  ; 3 uses
  %i.cy = call ptr @_ZN2v88internal14NameDictionary3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %1, i32 noundef %i.cx, i8 noundef zeroext 0, i32 noundef 0) #17 ; 2 uses
  %.not = icmp eq i32 %i.cx, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 272
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %.sroa.055.0.lcssa = phi ptr [ %i.cy, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_12GlobalsProxyELNS1_12DebugProxyIdE1ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit ], [ %.sroa.055.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 2 uses
  %i.dh = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %1, ptr nonnull %0, ptr nonnull %i.a, ptr %.sroa.055.0.lcssa, i32 noundef 0, i64 0) #17
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41, !prof !5

bb.i:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

bb.j:                                             ; preds = %.lr.ph, %_ZN2v88internal11HandleScopeD2Ev.exit
  %.077 = phi i32 [ 0, %.lr.ph ], [ %i.go, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 3 uses
  %.sroa.055.076 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.055.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 4 uses
  %i.dj = load ptr, ptr %i.br, align 8
  %i.dk = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.dl = load i32, ptr %i.cz, align 8
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.cz, align 8
  %i.dn = load i64, ptr %.0.i.i.i.i, align 8
  %i.do = add i64 %i.dn, 31
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = add i64 %i.dq, 23
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = add i64 %i.dt, 7
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef ptr @_ZN2v88internal4wasm12NativeModule16GetNamesProviderEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ea) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
end_hunk_5
begin_hunk_6_@_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE8FindNameINS_5ValueEEESt8optionalIjENS_5LocalINS_4NameEEERKNS_20PropertyCallbackInfoIT_EE:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #17, !inline_history !33
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.am = load ptr, ptr %i.aa, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17, !inline_history !33
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = load i8, ptr %.0.i.i, align 1
  %i.ar = zext i8 %i.aq to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.k:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = inttoptr i64 %i.at to ptr               ; 6 uses
  %i.av = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = and i16 %i.ay, 16
  %.not.i.i10 = icmp eq i16 %i.az, 0
  br i1 %.not.i.i10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #17, !inline_history !34
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = load ptr, ptr %i.au, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #17, !inline_history !34
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i11 = phi ptr [ %i.bf, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = load i16, ptr %.0.i.i11, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.c, %bb.c
  %i.bl = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.p:                                             ; preds = %bb.c, %bb.c
  %i.bm = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.q:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.o, %bb.p
  %.0.i9 = phi i16 [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.ar, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bk, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.bl, %bb.o ], [ %i.bm, %bb.p ]
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !range !8, !noundef !9
  %i.bp = trunc nuw i8 %i.bo to i1
  store i8 0, ptr %i.bn, align 8
  br i1 %i.bp, label %bb.r, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.r:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #17
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not = icmp eq i16 %.0.i9, 36
  br i1 %.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = call noundef i64 @_ZN2v812api_internal33ConvertToJSGlobalProxyIfNecessaryEm(i64 noundef %i.bx) #17
  store i64 %i.by, ptr %i.bs, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit: ; preds = %bb.t, %bb.u
  %i.bz = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr nonnull %i.bs, ptr noundef %.val) ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 648
  %i.ce = load i64, ptr %0, align 8
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load atomic i32, ptr %i.ch acquire, align 4 ; 3 uses
  %i.cj = and i32 %i.ci, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.v, !prof !7

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %i.cl = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i32 noundef %i.ci)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.v, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit
  %.0.in.i.i.i = phi i32 [ %i.cl, %bb.v ], [ %i.ci, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE9GetHolderINS_5ValueEEENS0_12DirectHandleINS0_8JSObjectEEERKNS_20PropertyCallbackInfoIT_EE.exit ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cn = load atomic volatile i64, ptr %i.cm monotonic, align 8
  %i.co = lshr i64 %i.cn, 32
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cr = add i32 %i.cp, -1                       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.cr, %.0.i.i.i ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64
  %i.ct = mul nuw i64 %.sroa.06.033.i.i, 12884901888 ; 2 uses
  %sext.i34.i.i = add nuw i64 %i.ct, 25769803776
  %i.cu = ashr exact i64 %sext.i34.i.i, 29
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.cq
  br i1 %i.cx, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.cy = load i64, ptr %0, align 8               ; 2 uses
  %.not.i9.i = icmp eq i64 %i.cy, %i.cw
  br i1 %.not.i9.i, label %.loopexit, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.cz = add i32 %.035.i11.i, 1
  %.not.i.i12 = icmp eq i64 %i.cy, %i.de
  br i1 %.not.i.i12, label %.loopexit, label %.lr.ph.i, !llvm.loop !27

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.w
  %.035.i11.i = phi i32 [ %i.cz, %bb.w ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.in37.i10.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.w ], [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ]
  %i.da = add i32 %.sroa.06.0.in37.i10.i, %.035.i11.i
  %.sroa.06.0.in.i.i = and i32 %i.da, %i.cr       ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64
  %i.db = mul i64 %.sroa.06.0.i.i, 12884901888    ; 2 uses
  %sext.i.i.i = add i64 %i.db, 25769803776
  %i.dc = ashr exact i64 %sext.i.i.i, 29
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 %i.dc
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.cq
  br i1 %i.df, label %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, label %bb.w, !llvm.loop !27

._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %.critedge, !llvm.loop !27

.loopexit:                                        ; preds = %bb.w, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.db, %bb.w ]
  %i.dg = load i64, ptr %i.bz, align 8
  %i.dh = add i64 %i.dg, -1
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %sext.i.i = add i64 %.pre-phi, 30064771072
  %i.dk = ashr exact i64 %sext.i.i, 29
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load atomic volatile i64, ptr %i.dl monotonic, align 8
  %i.dn = lshr i64 %i.dm, 32
  %i.do = or disjoint i64 %i.dn, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, %.loopexit, %_ZNK2v85Value13QuickIsStringEv.exit
  %.sroa.2.2 = phi i64 [ 0, %_ZNK2v85Value13QuickIsStringEv.exit ], [ 0, %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i ], [ 0, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ 0, %bb.b ], [ %i.do, %.loopexit ], [ 0, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i ], [ 0, %bb.a ]
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_115NamedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE12GetNameTableENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE(ptr %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = ptrtoint ptr %0 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !8
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %1, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.a) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i42 = icmp eq i32 %i.aq, 0
  br i1 %.not.i42, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !35

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.07.0.i73 = phi ptr [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.at, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.av = load i64, ptr %.sroa.07.0.i73, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41

bb.f:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.az = load i64, ptr %0, align 8
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2 ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 1057
  br i1 %i.bg, label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add i64 %i.bc, 13
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i8, ptr %i.bi monotonic, align 1
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.bf, i1 noundef zeroext %i.bk) #17
  %i.bm = sext i32 %i.bl to i64
  br label %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i

_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i: ; preds = %bb.g, %bb.f
  %i.bn = phi i64 [ %i.bm, %bb.g ], [ 24, %bb.f ]
  %i.bo = add i64 %i.bn, %i.ba
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 8 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 6 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i
  %i.bw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #17
  br label %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.h ], [ %i.bs, %_ZN2v88internal8JSObject16GetEmbedderFieldEi.exit.i ] ; 3 uses
  %i.bx = ptrtoint ptr %.0.i.i.i.i to i64
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.br, align 8
  store i64 %i.bq, ptr %.0.i.i.i.i, align 8
  %i.ca = add i64 %i.bq, 31
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = add i64 %i.cc, 23
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = add i64 %i.cf, 7
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 216
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 200
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 208
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cp, align 8
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 5
  %i.cx = trunc i64 %i.cw to i32                  ; 3 uses
  %i.cy = call ptr @_ZN2v88internal14NameDictionary3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %1, i32 noundef %i.cx, i8 noundef zeroext 0, i32 noundef 0) #17 ; 2 uses
  %.not = icmp eq i32 %i.cx, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit
  %.sroa.054.0.lcssa = phi ptr [ %i.cy, %_ZN2v88internal12_GLOBAL__N_117IndexedDebugProxyINS1_14FunctionsProxyELNS1_12DebugProxyIdE0ENS0_18WasmInstanceObjectEE11GetProviderENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateE.exit ], [ %.sroa.054.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 2 uses
  %i.da = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %1, ptr nonnull %0, ptr nonnull %i.a, ptr %.sroa.054.0.lcssa, i32 noundef 0, i64 0) #17
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit41, !prof !5

bb.i:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #18
  unreachable

bb.j:                                             ; preds = %.lr.ph, %_ZN2v88internal11HandleScopeD2Ev.exit
  %.076 = phi i32 [ 0, %.lr.ph ], [ %i.fk, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 3 uses
  %.sroa.054.075 = phi ptr [ %i.cy, %.lr.ph ], [ %.sroa.054.1, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 4 uses
  %i.dc = load ptr, ptr %i.br, align 8
  %i.dd = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.de = load i32, ptr %i.cz, align 8
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.cz, align 8
  %i.dg = load i64, ptr %.0.i.i.i.i, align 8
  %i.dh = add i64 %i.dg, 23
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i64, ptr %i.di acquire, align 8
  %i.dk = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.dl = load ptr, ptr %i.bt, align 8
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_114FunctionsProxy7GetNameEPNS0_7IsolateENS0_12DirectHandleINS0_18WasmInstanceObjectEEEj.exit, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.dn = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #17
  br label %_ZN2v88internal12_GLOBAL__N_114FunctionsProxy7GetNameEPNS0_7IsolateENS0_12DirectHandleINS0_18WasmInstanceObjectEEEj.exit

_ZN2v88internal12_GLOBAL__N_114FunctionsProxy7GetNameEPNS0_7IsolateENS0_12DirectHandleINS0_18WasmInstanceObjectEEEj.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i = phi ptr [ %i.dn, %bb.k ], [ %i.dk, %bb.j ] ; 3 uses
  %i.do = ptrtoint ptr %.0.i.i.i to i64
  %i.dp = add i64 %i.do, 8
  %i.dq = inttoptr i64 %i.dp to ptr
  store ptr %i.dq, ptr %i.br, align 8
  store i64 %i.dj, ptr %.0.i.i.i, align 8
  %i.dr = call ptr @_ZN2v88internal24GetWasmFunctionDebugNameEPNS0_7IsolateENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEEj(ptr noundef nonnull %1, ptr nonnull %.0.i.i.i, i32 noundef %.076) ; 3 uses
  %i.ds = load i64, ptr %.sroa.054.075, align 8
  %i.dt = add i64 %i.ds, -1
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
end_hunk_6
