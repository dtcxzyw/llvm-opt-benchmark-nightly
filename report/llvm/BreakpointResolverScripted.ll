Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BreakpointResolverScripted?download=true
inline.NumInlined: 708
inline.NumDeleted: 396
begin_hunk_0_@_ZN12lldb_private26BreakpointResolverScripted28CreateImplementationIfNeededESt10shared_ptrINS_10BreakpointEE:bb.a
  %.0.i.i.i.i8 = phi i32 [ %i.aw, %bb.w ], [ %i.bg, %bb.x ]
  %i.bh = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.bh, label %bb.y, label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, !prof !55

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.u, %_ZNSt10shared_ptrIN12lldb_private10BreakpointEEC2ERKS2_.exit4, %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !48 ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bk, align 8, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !53
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #15, !inline_history !63
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #15, !inline_history !63
  br label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i11 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i11, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

bb.ad:                                            ; preds = %bb.ab
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i13 = phi i32 [ %i.bn, %bb.ac ], [ %i.bx, %bb.ad ]
  %i.by = icmp eq i32 %.0.i.i.i.i13, 1
  br i1 %i.by, label %bb.ae, label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.n, %bb.m, %bb.b, %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

declare void @_ZN12lldb_private10Breakpoint11GetTargetSPEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private26BreakpointResolverScripted28CreateImplementationIfNeededERNS_6TargetESt10shared_ptrINS_10BreakpointEE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2200) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::shared_ptr.5", align 8 ; 3 uses
  %4 = alloca %"class.std::shared_ptr.2", align 16 ; 6 uses
  %5 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %6 = alloca %"class.lldb_private::ScriptedMetadata", align 8 ; 15 uses
  %7 = alloca %"class.llvm::Expected", align 8    ; 10 uses
  %8 = alloca %"class.std::shared_ptr.5", align 16 ; 3 uses
  %9 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %11 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 3 uses
  %.not91 = icmp eq ptr %i.c, null
  br i1 %.not91, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !57, !range !58, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %.not97 = icmp eq ptr %i.g, null
  br i1 %.not97, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %3, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private10BreakpointEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.k, align 4, !tbaa !47
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !47
  br label %_ZNSt10shared_ptrIN12lldb_private10BreakpointEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private10BreakpointEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private10BreakpointEEC2ERKS2_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr nofree noundef nonnull align 8 dereferenceable(16) %3) #15
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !48   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private10BreakpointEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !53
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #15, !inline_history !54
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #15, !inline_history !54
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i4 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private10BreakpointEEC2ERKS2_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store i8 1, ptr %i.d, align 8, !tbaa !57
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

bb.n:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64, !nonnull !59, !align !280
  %i.ak = tail call noundef ptr @_ZN12lldb_private8Debugger20GetScriptInterpreterEbSt8optionalIN4lldb14ScriptLanguageEE(ptr noundef nonnull align 8 dereferenceable(1832) %i.aj, i1 noundef zeroext true, i64 0) #15 ; 3 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !56
  %.not92 = icmp eq ptr %i.al, null
  br i1 %.not92, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 576
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %4, ptr noundef nonnull align 8 dereferenceable(20) %i.ak) #15
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ar = load <2 x ptr>, ptr %4, align 16, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !48 ; 8 uses
  store <2 x ptr> %i.ar, ptr %i.b, align 8, !tbaa !46
  %.not.i.i.i.i5 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i5, label %_ZNSt10shared_ptrIN12lldb_private27ScriptedBreakpointInterfaceEEaSEOS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.at, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !53
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #15, !inline_history !281
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #15, !inline_history !281
  br label %_ZNSt10shared_ptrIN12lldb_private27ScriptedBreakpointInterfaceEEaSEOS2_.exit

bb.s:                                             ; preds = %bb.q
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.t ], [ %i.bg, %bb.u ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.v, label %_ZNSt10shared_ptrIN12lldb_private27ScriptedBreakpointInterfaceEEaSEOS2_.exit, !prof !55

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #15
  br label %_ZNSt10shared_ptrIN12lldb_private27ScriptedBreakpointInterfaceEEaSEOS2_.exit

_ZNSt10shared_ptrIN12lldb_private27ScriptedBreakpointInterfaceEEaSEOS2_.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i6, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private27ScriptedBreakpointInterfaceEEaSEOS2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bj, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !53
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #15, !inline_history !282
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #15, !inline_history !282
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i7 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i7, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

bb.aa:                                            ; preds = %bb.y
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i9 = phi i32 [ %i.bm, %bb.z ], [ %i.bw, %bb.aa ]
  %i.bx = icmp eq i32 %.0.i.i.i.i9, 1
  br i1 %i.bx, label %bb.ab, label %bb.ac, !prof !55

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8, %bb.x, %_ZNSt10shared_ptrIN12lldb_private27ScriptedBreakpointInterfaceEEaSEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !56
  %.not93 = icmp eq ptr %.pr, null
  br i1 %.not93, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %5, ptr noundef nonnull @.str, ptr noundef nonnull @__FUNCTION__._ZN12lldb_private26BreakpointResolverScripted28CreateImplementationIfNeededERNS_6TargetESt10shared_ptrINS_10BreakpointEE, ptr noundef nonnull @.str.1) #15
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %5) #15 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

.thread:                                          ; preds = %bb.o, %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !283, !noalias !284 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !48, !noalias !284 ; 12 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.cd, null       ; 3 uses
  br i1 %.not.i.i.i.i10, label %_ZN12lldb_private18StructuredDataImpl11GetObjectSPEv.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !284
  %.not.i.i.i.i.i11 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i11, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !47, !noalias !284
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !47, !noalias !284
  br label %_ZN12lldb_private18StructuredDataImpl11GetObjectSPEv.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ci = atomicrmw volatile add ptr %i.ce, i32 1 acq_rel, align 4, !noalias !284 ; 0 uses
  br label %_ZN12lldb_private18StructuredDataImpl11GetObjectSPEv.exit

_ZN12lldb_private18StructuredDataImpl11GetObjectSPEv.exit: ; preds = %.thread, %bb.af, %bb.ag
  %.not94 = icmp eq ptr %i.cb, null
  br i1 %.not94, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData10DictionaryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZN12lldb_private18StructuredDataImpl11GetObjectSPEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !287
  %i.cl = icmp ne i32 %i.ck, 7                    ; 2 uses
  %brmerge = or i1 %.not.i.i.i.i10, %i.cl
  %.mux = select i1 %i.cl, ptr null, ptr %i.cb
  br i1 %brmerge, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData10DictionaryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 6 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !293
  %.not.i.i.i.i.i13 = icmp eq i8 %i.cn, 0
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not.i.i.i.i.i13, label %bb.aj, label %.thread121

.thread121:                                       ; preds = %bb.ai
  %i.cq = load i32, ptr %i.cm, align 4, !tbaa !47, !noalias !293
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cm, align 4, !tbaa !47, !noalias !293
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !16
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !19
  br label %bb.ak

_ZNSt12__shared_ptrIN12lldb_private14StructuredData10DictionaryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %bb.ah, %_ZN12lldb_private18StructuredDataImpl11GetObjectSPEv.exit
  %.sroa.075.0.ph = phi ptr [ null, %_ZN12lldb_private18StructuredDataImpl11GetObjectSPEv.exit ], [ %.mux, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !19
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData10DictionaryEEC2ERKS3_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cy = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4, !noalias !293 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %i.cz = icmp eq i8 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.da = load ptr, ptr %i.co, align 8, !tbaa !16 ; 2 uses
  %i.db = load i64, ptr %i.cp, align 8, !tbaa !19 ; 2 uses
  br i1 %i.cz, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread121, %bb.aj
  %i.dc = phi i64 [ %i.ct, %.thread121 ], [ %i.db, %bb.aj ]
  %i.dd = phi ptr [ %i.cs, %.thread121 ], [ %i.da, %bb.aj ]
  %i.de = load i32, ptr %i.cm, align 4, !tbaa !47
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.cm, align 4, !tbaa !47
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData10DictionaryEEC2ERKS3_.exit

bb.al:                                            ; preds = %bb.aj
  %i.dg = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private14StructuredData10DictionaryEEC2ERKS3_.exit

_ZNSt10shared_ptrIN12lldb_private14StructuredData10DictionaryEEC2ERKS3_.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private14StructuredData10DictionaryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, %bb.ak, %bb.al
  %.not.i.i.i2290 = phi i1 [ true, %_ZNSt12__shared_ptrIN12lldb_private14StructuredData10DictionaryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread ], [ false, %bb.al ], [ false, %bb.ak ] ; 2 uses
  %i.dh = phi i64 [ %i.cx, %_ZNSt12__shared_ptrIN12lldb_private14StructuredData10DictionaryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread ], [ %i.db, %bb.al ], [ %i.dc, %bb.ak ] ; 4 uses
  %i.di = phi ptr [ %i.cv, %_ZNSt12__shared_ptrIN12lldb_private14StructuredData10DictionaryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread ], [ %i.da, %bb.al ], [ %i.dd, %bb.ak ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12lldb_private14StructuredData10Dictionary13AddStringItemEN4llvm9StringRefES3_:bb.a
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !48   ; 8 uses
  %.not.i.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i.i3, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !53
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #15, !inline_history !374
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #15, !inline_history !374
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i4 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i6 = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.al, label %bb.m, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private14StructuredData6StringELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private14StructuredData6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void
}

declare void @_ZN12lldb_private18BreakpointResolver15WrapOptionsDictESt10shared_ptrINS_14StructuredData10DictionaryEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(34), ptr nofree noundef align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN12lldb_private26BreakpointResolverScripted20GetScriptInterpreterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(169) %0) local_unnamed_addr #0 align 2 {
_ZNKSt10__weak_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !375, !nonnull !59, !noundef !59 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !375 ; 0 uses
  %i.e = load atomic i32, ptr %i.c monotonic, align 8, !noalias !378
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %_ZNKSt10__weak_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.i
  %.06.i.i.i.i.i.i = phi i32 [ %i.e, %_ZNKSt10__weak_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.i ], [ %i.i, %bb.a ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.f = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.g = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i.i, i32 %i.f acq_rel monotonic, align 8, !noalias !378 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0
  br i1 %i.h, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.a, !llvm.loop !330

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load atomic i32, ptr %i.c monotonic, align 8, !noalias !378 ; 0 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !332, !noalias !378
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !381, !nonnull !59, !align !280
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 656
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64, !nonnull !59, !align !280
  %i.q = tail call noundef ptr @_ZN12lldb_private8Debugger20GetScriptInterpreterEbSt8optionalIN4lldb14ScriptLanguageEE(ptr noundef nonnull align 8 dereferenceable(1832) %i.p, i1 noundef zeroext true, i64 0) #15
  %i.r = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !53
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !54
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !54
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.c:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i1 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.c, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ad = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.d ], [ %i.ad, %bb.e ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.f, label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.f:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.f
  ret ptr %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN12lldb_private26BreakpointResolverScripted14SearchCallbackERNS_12SearchFilterERNS_13SymbolContextEPNS_7AddressE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(169) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.lldb_private::SymbolContext", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !46
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !46
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private6TargetEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.f, align 4, !tbaa !47
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !47
  br label %_ZNSt10shared_ptrIN12lldb_private6TargetEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6TargetEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN12lldb_private6TargetEEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !46
  store <2 x ptr> %i.o, ptr %i.k, align 16, !tbaa !46
  %.not.i.i.i6.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i6.i, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private6TargetEEC2ERKS2_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i7.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i7.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.p, align 4, !tbaa !47
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !47
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i: ; preds = %bb.h, %bb.g, %_ZNSt10shared_ptrIN12lldb_private6TargetEEC2ERKS2_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !46
  store <2 x ptr> %i.aa, ptr %i.w, align 8, !tbaa !46
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !47
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !47
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i

_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i: ; preds = %bb.k, %bb.j, %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !tbaa !14
  store <2 x i64> %i.ai, ptr %i.ag, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !425, !range !58, !noundef !59
  store i8 %i.al, ptr %i.aj, align 8, !tbaa !425
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.an, align 8, !tbaa !46
  store <2 x ptr> %i.aq, ptr %i.am, align 16, !tbaa !46
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i6.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i6.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !47
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !47
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i

_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i: ; preds = %bb.n, %bb.m, %_ZN12lldb_private12AddressRangeC2ERKS0_.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !46
  store <2 x ptr> %i.ba, ptr %i.aw, align 16, !tbaa !46
  %.not.i.i.i.i7.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i7.i.i, label %_ZN12lldb_private13SymbolContextC2ERKS0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i8.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i8.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !47
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !47
  br label %_ZN12lldb_private13SymbolContextC2ERKS0_.exit

bb.q:                                             ; preds = %bb.o
  %i.bf = atomicrmw volatile add ptr %i.bb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private13SymbolContextC2ERKS0_.exit

_ZN12lldb_private13SymbolContextC2ERKS0_.exit:    ; preds = %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i.i, %bb.p, %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.bg, ptr noundef nonnull align 8 dereferenceable(7) %i.bh, i64 7, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr nofree noundef nonnull align 8 dereferenceable(152) %4) #15
  call void @_ZN12lldb_private13SymbolContextD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #15
  %. = zext i1 %i.bn to i32
  br label %bb.r

bb.r:                                             ; preds = %_ZN12lldb_private13SymbolContextC2ERKS0_.exit, %bb.a
  %.0 = phi i32 [ %., %_ZN12lldb_private13SymbolContextC2ERKS0_.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @_ZN12lldb_private13SymbolContextD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN12lldb_private26BreakpointResolverScripted8GetDepthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(169) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.f, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private26BreakpointResolverScripted14GetDescriptionEPNS_6StreamE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.351", align 8 ; 8 uses
  %3 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %4 = alloca %"class.std::optional.351", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45, !noalias !438 ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNK12lldb_private18BreakpointResolver13GetBreakpointEv.exit.thread, label %_ZNKSt10__weak_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.i

_ZNKSt10__weak_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !438
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK12lldb_private18BreakpointResolver13GetBreakpointEv.exit.thread, label %bb.b

_ZNK12lldb_private18BreakpointResolver13GetBreakpointEv.exit.thread: ; preds = %bb.a, %_ZNKSt10__weak_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !438
  call void @_ZN12lldb_private26BreakpointResolverScripted28CreateImplementationIfNeededESt10shared_ptrINS_10BreakpointEE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %_ZNKSt10__weak_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !48, !alias.scope !444
  %i.i = load atomic i32, ptr %i.e monotonic, align 8, !noalias !444
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNK12lldb_private18BreakpointResolver13GetBreakpointEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.k = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i.i, i32 %i.j acq_rel monotonic, align 8, !noalias !444 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  %i.m = extractvalue { i32, i1 } %i.k, 0
  br i1 %i.l, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !330

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.d
  %i.n = load atomic i32, ptr %i.e monotonic, align 8, !noalias !444
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !332, !noalias !444
  br label %bb.f

_ZNK12lldb_private18BreakpointResolver13GetBreakpointEv.exit: ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZN12lldb_private26BreakpointResolverScripted28CreateImplementationIfNeededESt10shared_ptrINS_10BreakpointEE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.e, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %.ph = phi ptr [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ], [ %i.o, %bb.e ]
  store ptr %.ph, ptr %3, align 8, !tbaa !49, !alias.scope !444
  call void @_ZN12lldb_private26BreakpointResolverScripted28CreateImplementationIfNeededESt10shared_ptrINS_10BreakpointEE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %3)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !53
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #15, !inline_history !54
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #15, !inline_history !54
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i3 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK12lldb_private18BreakpointResolver13GetBreakpointEv.exit, %_ZNK12lldb_private18BreakpointResolver13GetBreakpointEv.exit.thread, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 3 uses
  %.not14 = icmp eq ptr %i.af, null
  br i1 %.not14, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.351") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.af) #15
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %4) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !436, !range !58, !noundef !59
  %i.al = trunc nuw i8 %i.ak to i1
  store i8 0, ptr %i.aj, align 8, !tbaa !436
  br i1 %i.al, label %bb.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !18
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.m, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ar = load i8, ptr %i.a, align 8, !tbaa !436, !range !58, !noundef !59
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp ne i64 %i.au, 0
  %or.cond.not = select i1 %i.as, i1 %i.av, i1 false
  br i1 %or.cond.not, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %2, align 8, !tbaa !16    ; 3 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #15
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.o, %bb.p
end_hunk_1
