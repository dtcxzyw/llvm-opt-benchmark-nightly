Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ObjectFile?download=true
inline.NumInlined: 1389
inline.NumDeleted: 816
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK12lldb_private10ObjectFile13GetObjectNameB5cxx11Ev:bb.a
  br i1 %i.cd, label %bb.p, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cv = load ptr, ptr %1, align 8, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef nonnull align 8 dereferenceable(24) ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(200) %1) #23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !71 ; 3 uses
  %i.db = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz) #23 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %.not.i = icmp eq ptr %i.da, null
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.dc, ptr %0, align 8, !tbaa !197, !alias.scope !371
  br i1 %.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dd, align 8, !tbaa !198, !alias.scope !371
  store i8 0, ptr %i.dc, align 8, !tbaa !33, !alias.scope !371
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !371
  store i64 %i.db, ptr %i.a, align 8, !tbaa !48, !noalias !371
  %i.de = icmp ugt i64 %i.db, 15
  br i1 %i.de, label %bb.s, label %._crit_edge.i.i.i4

bb.s:                                             ; preds = %bb.r
  %i.df = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.df, ptr %0, align 8, !tbaa !32, !alias.scope !371
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !48, !noalias !371
  store i64 %i.dg, ptr %i.dc, align 8, !tbaa !33, !alias.scope !371
  br label %._crit_edge.i.i.i4

._crit_edge.i.i.i4:                               ; preds = %bb.s, %bb.r
  %i.dh = phi ptr [ %i.df, %bb.s ], [ %i.dc, %bb.r ] ; 2 uses
  switch i64 %i.db, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i4
  %i.di = load i8, ptr %i.da, align 1, !tbaa !33
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.u:                                             ; preds = %._crit_edge.i.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr nonnull align 1 %i.da, i64 %i.db, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i4
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !48, !noalias !371 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !198, !alias.scope !371
  %i.dl = load ptr, ptr %0, align 8, !tbaa !32, !alias.scope !371
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !371
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i, %bb.q, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm4json8fromJSONERKNS0_5ValueERN12lldb_private10ObjectFile4TypeENS0_4PathE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr noundef byval(%"class.llvm::json::Path") align 8 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !377, !noalias !378
  %.off = add i16 %i.a, -5
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.b, label %_ZNK4llvm4json5Value11getAsStringEv.exit, !prof !379

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.ph.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.ph = load i64, ptr %.sroa.5.0.ph.in, align 8, !tbaa !48
  %.sroa.0124.0.ph.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0124.0.ph = load ptr, ptr %.sroa.0124.0.ph.in, align 8, !tbaa !73 ; 17 uses
  switch i64 %.sroa.5.0.ph, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread [
    i64 8, label %bb.c
    i64 10, label %bb.d
    i64 9, label %bb.e
    i64 13, label %bb.f
    i64 11, label %bb.i
    i64 3, label %bb.j
    i64 7, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i64, ptr %.sroa.0124.0.ph, align 1
  %i.c = icmp ne i64 %i.b, 7308332183825051491
  %i.d = zext i1 %i.c to i32
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread

bb.d:                                             ; preds = %bb.b
  %i.e = load i64, ptr %.sroa.0124.0.ph, align 1
  %i.f = xor i64 %i.e, 7089075335985461349
  %i.g = getelementptr i8, ptr %.sroa.0124.0.ph, i64 8
  %i.h = load i16, ptr %i.g, align 1
  %i.i = zext i16 %i.h to i64
  %i.j = xor i64 %i.i, 25964
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not.i.i10 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = load i64, ptr %.sroa.0124.0.ph, align 1
  %i.o = xor i64 %i.n, 7380952732378752356
  %i.p = getelementptr i8, ptr %.sroa.0124.0.ph, i64 8
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = xor i64 %i.r, 111
  %i.t = or i64 %i.o, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %.not.i.i18 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i18, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread

bb.f:                                             ; preds = %bb.b
  %i.w = load i64, ptr %.sroa.0124.0.ph, align 1
  %i.x = xor i64 %i.w, 7810202097297553764
  %i.y = getelementptr i8, ptr %.sroa.0124.0.ph, i64 5
  %i.z = load i64, ptr %i.y, align 1
  %i.aa = xor i64 %i.z, 8243112814930846569
  %i.ab = or i64 %i.x, %i.aa
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %.not.i.i26 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i26, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %.sroa.0124.0.ph, align 1
  %i.af = xor i64 %i.ae, 7594885791858975343
  %i.ag = getelementptr i8, ptr %.sroa.0124.0.ph, i64 8
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = zext i16 %i.ah to i64
  %i.aj = xor i64 %i.ai, 25964
  %i.ak = or i64 %i.af, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not.i.i34 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i34, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread

bb.h:                                             ; preds = %bb.f
  %i.an = load i64, ptr %.sroa.0124.0.ph, align 1
  %i.ao = xor i64 %i.an, 7596557058340644979
  %i.ap = getelementptr i8, ptr %.sroa.0124.0.ph, i64 5
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = xor i64 %i.aq, 8751164169839537252
  %i.as = or i64 %i.ao, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not.i.i42 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i42, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread

bb.i:                                             ; preds = %bb.b
  %i.av = load i64, ptr %.sroa.0124.0.ph, align 1
  %i.aw = xor i64 %i.av, 8242266182270678131
  %i.ax = getelementptr i8, ptr %.sroa.0124.0.ph, i64 3
  %i.ay = load i64, ptr %i.ax, align 1
  %i.az = xor i64 %i.ay, 8751164169839537250
  %i.ba = or i64 %i.aw, %i.az
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not.i.i50 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread

bb.j:                                             ; preds = %bb.b
  %i.bd = load i16, ptr %.sroa.0124.0.ph, align 1
  %i.be = xor i16 %i.bd, 26986
  %i.bf = getelementptr i8, ptr %.sroa.0124.0.ph, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i16
  %i.bi = xor i16 %i.bh, 116
  %i.bj = or i16 %i.be, %i.bi
  %i.bk = icmp ne i16 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %.not.i.i58 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i58, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread

bb.k:                                             ; preds = %bb.b
  %i.bm = load i32, ptr %.sroa.0124.0.ph, align 1
  %i.bn = xor i32 %i.bm, 1852534389
  %i.bo = getelementptr i8, ptr %.sroa.0124.0.ph, i64 3
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = xor i32 %i.bp, 1853321070
  %i.br = or i32 %i.bn, %i.bq
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %.not.i.i66 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i66, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, label %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread

_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68: ; preds = %bb.d, %bb.c, %bb.e, %bb.f, %bb.k, %bb.g, %bb.h, %bb.j, %bb.i
  %.sroa.22.8 = phi i32 [ 9, %bb.k ], [ 4, %bb.f ], [ 7, %bb.i ], [ 6, %bb.h ], [ 8, %bb.j ], [ 5, %bb.g ], [ 3, %bb.e ], [ 2, %bb.d ], [ 1, %bb.c ]
  store i32 %.sroa.22.8, ptr %1, align 4, !tbaa !183
  br label %_ZNK4llvm4json5Value11getAsStringEv.exit.thread196

_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread: ; preds = %bb.e, %bb.c, %bb.g, %bb.k, %bb.b, %bb.i, %bb.j, %bb.h
  store i32 0, ptr %1, align 4, !tbaa !183
  call void @_ZN4llvm4json4Path6reportENS_13StringLiteralE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull @.str.70, i64 19) #23
  br label %_ZNK4llvm4json5Value11getAsStringEv.exit.thread196

_ZNK4llvm4json5Value11getAsStringEv.exit:         ; preds = %bb.a
  call void @_ZN4llvm4json4Path6reportENS_13StringLiteralE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull @.str.71, i64 15) #23
  br label %_ZNK4llvm4json5Value11getAsStringEv.exit.thread196

_ZNK4llvm4json5Value11getAsStringEv.exit.thread196: ; preds = %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68, %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread, %_ZNK4llvm4json5Value11getAsStringEv.exit
  %.1 = phi i1 [ false, %_ZNK4llvm4json5Value11getAsStringEv.exit ], [ true, %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68 ], [ false, %_ZN4llvm12StringSwitchIN12lldb_private10ObjectFile4TypeES3_E4CaseENS_13StringLiteralES3_.exit68.thread ]
  ret i1 %.1
}

declare void @_ZN4llvm4json4Path6reportENS_13StringLiteralE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12lldb_private10ObjectFile3isAEPKv(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, @_ZN12lldb_private10ObjectFile2IDE
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK12lldb_private10ObjectFile13GetFileOffsetEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !136
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK12lldb_private10ObjectFile11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !137
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN12lldb_private10ObjectFile11GetFileSpecEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK12lldb_private10ObjectFile11GetFileSpecEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ObjectFile27SectionFileAddressesChangedEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ObjectFile22GetReExportedLibrariesEv(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::FileSpecList") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN12lldb_private12FileSpecListC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private10ObjectFile14SetLoadAddressERNS_6TargetEmb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(2200) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private10ObjectFile33AllowAssemblyEmulationUnwindPlansEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ObjectFile19GetImageInfoAddressEPNS_6TargetE(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Address") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.a, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ObjectFile20GetEntryPointAddressEv(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Address") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.a, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ObjectFile14GetBaseAddressEv(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Address") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load i64, ptr %i.a, align 8, !tbaa !138
  tail call void @_ZN12lldb_private7AddressC1Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN12lldb_private10ObjectFile20GetNumThreadContextsEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ObjectFile19GetIdentifierStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !198
  store i8 0, ptr %i.a, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN12lldb_private10ObjectFile18GetAddressableBitsEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private10ObjectFile25GetCorefileMainBinaryInfoERmRbRNS_4UUIDERNS0_10BinaryTypeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  store i64 -1, ptr %1, align 8, !tbaa !48
  store i8 0, ptr %2, align 1, !tbaa !380
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !68
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private10ObjectFile27GetCorefileThreadExtraInfosERSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ObjectFile26GetCorefileProcessMetadataEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.582") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ObjectFile23GetThreadContextAtIndexEjRNS_6ThreadE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.585") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(576) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ObjectFile7SetTypeENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %1, ptr %i.a, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN12lldb_private10ObjectFile10GetVersionEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { i64, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN12lldb_private10ObjectFile19GetMinimumOSVersionEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { i64, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN12lldb_private10ObjectFile13GetSDKVersionEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { i64, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private10ObjectFile22GetIsDynamicLinkEditorEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN12lldb_private10ObjectFile18GetSectionDataSizeEPNS_7SectionE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !177
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
