Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFFormValue?download=true
inline.NumInlined: 231
inline.NumDeleted: 160
begin_hunk_0_@_ZNK12lldb_private6plugin5dwarf14DWARFFormValue23ReferencedUnitAndOffsetEv:bb.a
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !119 ; 8 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf9DWARFUnit17ContainsDIEOffsetEm.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.am, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !122
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #9, !inline_history !123
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #9, !inline_history !123
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.ap, %bb.f ], [ %i.az, %bb.g ]
  %i.ba = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ba, label %bb.h, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #9
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK12lldb_private6plugin5dwarf9DWARFUnit17ContainsDIEOffsetEm.exit.thread, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.t

bb.i:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf9DWARFUnit17ContainsDIEOffsetEm.exit
  %i.bb = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39, !nonnull !96, !align !97
  %i.bf = tail call noundef nonnull align 8 dereferenceable(132) ptr @_ZN12lldb_private6plugin5dwarf15SymbolFileDWARF9DebugInfoEv(ptr noundef nonnull align 8 dereferenceable(1432) %i.be) #9
  %i.bg = tail call noundef ptr @_ZN12lldb_private6plugin5dwarf14DWARFDebugInfo26GetUnitContainingDIEOffsetENS1_6DIERef7SectionEm(ptr noundef nonnull align 8 dereferenceable(132) %i.bf, i8 noundef zeroext 0, i64 noundef %i.c) #9 ; 2 uses
  %.not1 = icmp eq ptr %i.bg, null
  br i1 %.not1, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.bh = load ptr, ptr %0, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39, !nonnull !96, !align !97 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 408
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(104) %i.bj) #9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @_ZNK12lldb_private11ModuleChild9GetModuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.138") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #9
  %i.bp = load ptr, ptr %4, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.bq = ptrtoint ptr %i.a to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr @.str.11, ptr %1, align 8, !tbaa !105, !alias.scope !126
  %.sroa.22.0..sroa_idx.i.i.i.i.i2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 57, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i2, align 8, !tbaa !27, !alias.scope !126
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !111, !alias.scope !126
  %.sroa.2.0..sroa_idx.i.i.i.i.i3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i3, align 8, !tbaa !27, !alias.scope !126
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 1, ptr %i.bt, align 8, !tbaa !113, !alias.scope !126
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i64 %i.bq, ptr %i.bu, align 8, !tbaa !117, !alias.scope !126
  %i.bv = ptrtoint ptr %i.bu to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %i.br, align 8, !alias.scope !126
  %.sroa.4.0..sroa_idx.i.i.i.i4 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.bv, ptr %.sroa.4.0..sroa_idx.i.i.i.i4, align 8, !tbaa !18, !alias.scope !126
  call void @_ZN12lldb_private6Module11ReportErrorERKN4llvm19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(952) %i.bp, ptr noundef nonnull align 8 dereferenceable(33) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !119 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.by, align 8, !tbaa !120
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !122
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #9, !inline_history !123
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #9, !inline_history !123
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

bb.n:                                             ; preds = %bb.l
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i6 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.p:                                             ; preds = %bb.n
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i8 = phi i32 [ %i.cb, %bb.o ], [ %i.cl, %bb.p ]
  %i.cm = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.cm, label %bb.q, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, !prof !125

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #9
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.cn = load ptr, ptr %0, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !39, !nonnull !96, !align !97
  %i.cq = tail call noundef nonnull align 8 dereferenceable(132) ptr @_ZN12lldb_private6plugin5dwarf15SymbolFileDWARF9DebugInfoEv(ptr noundef nonnull align 8 dereferenceable(1432) %i.cp) #9
  %i.cr = tail call noundef ptr @_ZN12lldb_private6plugin5dwarf14DWARFDebugInfo18GetTypeUnitForHashEm(ptr noundef nonnull align 8 dereferenceable(132) %i.cq, i64 noundef %i.c) #9 ; 4 uses
  %.not = icmp eq ptr %i.cr, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !131
  %i.cw = add i64 %i.cv, %i.ct
  br label %bb.t

bb.t:                                             ; preds = %bb.j, %bb.a, %bb.s, %bb.r, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, %bb.i, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.0.2 = phi ptr [ null, %bb.r ], [ %i.bb, %bb.i ], [ null, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ null, %bb.a ], [ null, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9 ], [ %i.cr, %bb.s ], [ %i.bg, %bb.j ]
  %.sroa.8.2 = phi i64 [ 0, %bb.r ], [ %i.i, %bb.i ], [ 0, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %bb.a ], [ 0, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9 ], [ %i.cw, %bb.s ], [ %i.c, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.8.2, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZNK12lldb_private11ModuleChild9GetModuleEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.138") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(132) ptr @_ZN12lldb_private6plugin5dwarf15SymbolFileDWARF9DebugInfoEv(ptr noundef nonnull align 8 dereferenceable(1432)) local_unnamed_addr #3

declare noundef ptr @_ZN12lldb_private6plugin5dwarf14DWARFDebugInfo26GetUnitContainingDIEOffsetENS1_6DIERef7SectionEm(ptr noundef nonnull align 8 dereferenceable(132), i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN12lldb_private6plugin5dwarf14DWARFDebugInfo18GetTypeUnitForHashEm(ptr noundef nonnull align 8 dereferenceable(132), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, ptr } @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9ReferenceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue23ReferencedUnitAndOffsetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = tail call { ptr, ptr } @_ZN12lldb_private6plugin5dwarf9DWARFUnit6GetDIEEm(ptr noundef nonnull align 8 dereferenceable(864) %i.b, i64 noundef %i.c) #9 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.45.0.a = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.04.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.45.0.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.04.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare { ptr, ptr } @_ZN12lldb_private6plugin5dwarf9DWARFUnit6GetDIEEm(ptr noundef nonnull align 8 dereferenceable(864), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9ReferenceEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !16
  switch i16 %i.d, label %bb.c [
    i16 17, label %bb.b
    i16 18, label %bb.b
    i16 19, label %bb.b
    i16 20, label %bb.b
    i16 21, label %bb.b
    i16 16, label %bb.d
    i16 32, label %bb.d
    i16 7968, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = add i64 %i.b, %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ 1099511627775, %bb.c ], [ %i.e, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i8 } @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue21getAsUnsignedConstantEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !16
  switch i16 %i.b, label %_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit [
    i16 15, label %bb.b
    i16 5, label %bb.b
    i16 6, label %bb.b
    i16 7, label %bb.b
    i16 11, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  br label %_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit

_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit: ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE(i16 noundef zeroext %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp ult i16 %0, 16
  %switch.downshift = lshr i16 -22304, %0
  %switch.masked = trunc i16 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i8 } @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue19getAsSignedConstantEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !16
  switch i16 %i.b, label %_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit [
    i16 15, label %bb.b
    i16 6, label %bb.c
    i16 5, label %bb.d
    i16 11, label %bb.e
    i16 7, label %.thread
    i16 13, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %sext5 = shl i64 %i.g, 32
  %i.h = ashr exact i64 %sext5, 32
  br label %_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %sext4 = shl i64 %i.j, 48
  %i.k = ashr exact i64 %sext4, 48
  br label %_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  %sext = shl i64 %i.m, 56
  %i.n = ashr exact i64 %sext, 56
  br label %_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit

.thread:                                          ; preds = %bb.a, %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  br label %_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit

_ZN12lldb_private6plugin5dwarf14DWARFFormValue10IsDataFormEN4llvm5dwarf4FormE.exit: ; preds = %bb.a, %bb.b, %.thread, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %i.n, %bb.e ], [ %i.p, %.thread ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.5.0 = phi i8 [ 1, %bb.e ], [ 1, %.thread ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.5.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9BlockDataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private6plugin5dwarf14DWARFFormValue11IsBlockFormEN4llvm5dwarf4FormE(i16 noundef zeroext %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp ult i16 %0, 31
  %switch.cast = zext nneg i16 %0 to i31
  %switch.downshift = lshr i31 -1056963048, %switch.cast
  %switch.masked = trunc i31 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private6plugin5dwarf14DWARFFormValue15FormIsSupportedEN4llvm5dwarf4FormE(i16 noundef zeroext %0) local_unnamed_addr #6 align 2 {
bb.a:
  switch i16 %0, label %bb.b [
    i16 1, label %bb.c
    i16 27, label %bb.c
    i16 34, label %bb.c
    i16 35, label %bb.c
    i16 3, label %bb.c
    i16 4, label %bb.c
    i16 5, label %bb.c
    i16 6, label %bb.c
    i16 7, label %bb.c
    i16 30, label %bb.c
    i16 8, label %bb.c
    i16 9, label %bb.c
    i16 10, label %bb.c
    i16 11, label %bb.c
    i16 12, label %bb.c
    i16 13, label %bb.c
    i16 14, label %bb.c
    i16 31, label %bb.c
    i16 26, label %bb.c
    i16 37, label %bb.c
    i16 38, label %bb.c
    i16 39, label %bb.c
    i16 40, label %bb.c
    i16 15, label %bb.c
    i16 16, label %bb.c
    i16 17, label %bb.c
    i16 18, label %bb.c
    i16 19, label %bb.c
    i16 20, label %bb.c
    i16 21, label %bb.c
    i16 22, label %bb.c
    i16 23, label %bb.c
    i16 24, label %bb.c
    i16 25, label %bb.c
    i16 32, label %bb.c
    i16 7938, label %bb.c
    i16 7937, label %bb.c
    i16 33, label %bb.c
    i16 7968, label %bb.c
    i16 7969, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}
end_hunk_0
