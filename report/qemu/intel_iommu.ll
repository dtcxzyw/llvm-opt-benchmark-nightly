Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/intel_iommu?download=true
inline.NumInlined: 680
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vtd_report_sid_ir_illegal_access:bb.a

vtd_report_fault.exit:                            ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %vtd_report_dmar_fault.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -91, 1) i32 @vtd_ce_get_pasid_fpd(ptr nofree noundef readonly captures(none) %0, i64 %.0.val, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.VTDPASIDDirEntry, align 8   ; 5 uses
  %4 = alloca %struct.VTDPASIDEntry, align 8      ; 6 uses
  %i.a = and i64 %.0.val, -4096
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !annotation !14
  %i.b = lshr i32 %2, 3
  %i.c = and i32 %i.b, 131064
  %i.d = zext nneg i32 %i.c to i64
  %i.e = add i64 %i.a, %i.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.f = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.e, i64 4294967296, ptr noundef nonnull %3, i64 noundef range(i64 4, 65) 8, i1 noundef zeroext false) #17
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %vtd_get_pe_from_pdire.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %3, align 8                ; 3 uses
  %i.h = and i64 %i.g, 2
  %.not13 = icmp eq i64 %i.h, 0
  br i1 %.not13, label %bb.c, label %vtd_get_pe_from_pdire.exit.thread.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.g to i1
  br i1 %i.i, label %bb.d, label %vtd_get_pe_from_pdire.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.g, -4096
  %i.k = shl i32 %2, 6
  %i.l = and i32 %i.k, 4032
  %i.m = zext nneg i32 %i.l to i64
  %i.n = or disjoint i64 %i.j, %i.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.o = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.n, i64 4294967296, ptr noundef nonnull %4, i64 noundef range(i64 4, 65) 64, i1 noundef zeroext false) #17
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %.preheader.preheader.i.i, label %vtd_get_pe_from_pdire.exit.thread

.preheader.preheader.i.i:                         ; preds = %bb.d
  %.val.i.i = load i64, ptr %4, align 8           ; 3 uses
  %i.p = lshr i64 %.val.i.i, 6
  %i.q = and i64 %i.p, 7                          ; 2 uses
  switch i64 %i.q, label %vtd_get_pe_from_pdire.exit.thread [
    i64 1, label %vtd_pe_type_check.exit.i.i
    i64 2, label %bb.e
    i64 4, label %bb.f
  ]

bb.e:                                             ; preds = %.preheader.preheader.i.i
  br label %vtd_pe_type_check.exit.i.i

bb.f:                                             ; preds = %.preheader.preheader.i.i
  br label %vtd_pe_type_check.exit.i.i

vtd_pe_type_check.exit.i.i:                       ; preds = %bb.f, %bb.e, %.preheader.preheader.i.i
  %.sink2.i.i.i = phi i64 [ 64, %bb.f ], [ 70368744177664, %bb.e ], [ 140737488355328, %.preheader.preheader.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, %.sink2.i.i.i
  %.not33.i.i = icmp eq i64 %i.t, 0
  br i1 %.not33.i.i, label %vtd_get_pe_from_pdire.exit.thread, label %bb.g

bb.g:                                             ; preds = %vtd_pe_type_check.exit.i.i
  %i.u = trunc nuw nsw i64 %i.q to i32
  switch i32 %i.u, label %vtd_get_pe_from_pdire.exit [
    i32 2, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = lshr i64 %.val.i.i, 2
  %i.w = and i64 %i.v, 7
  %i.x = getelementptr i8, ptr %0, i64 4208
  %.val31.i.i = load i64, ptr %i.x, align 16
  %i.y = shl nuw nsw i64 256, %i.w
  %i.z = and i64 %i.y, 7936
  %i.aa = and i64 %i.z, %.val31.i.i
  %.not34.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not34.i.i, label %vtd_get_pe_from_pdire.exit.thread, label %vtd_get_pe_from_pdire.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 12
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %vtd_get_pe_from_pdire.exit, label %vtd_get_pe_from_pdire.exit.thread

vtd_get_pe_from_pdire.exit:                       ; preds = %bb.i, %bb.h, %bb.g
  %i.af = and i64 %.val.i.i, 2
  %.not15 = icmp eq i64 %i.af, 0
  br i1 %.not15, label %vtd_get_pe_from_pdire.exit.thread, label %vtd_get_pe_from_pdire.exit.thread.sink.split

vtd_get_pe_from_pdire.exit.thread.sink.split:     ; preds = %vtd_get_pe_from_pdire.exit, %bb.b
  store i8 1, ptr %1, align 1
  br label %vtd_get_pe_from_pdire.exit.thread

vtd_get_pe_from_pdire.exit.thread:                ; preds = %vtd_get_pe_from_pdire.exit.thread.sink.split, %.preheader.preheader.i.i, %bb.i, %vtd_pe_type_check.exit.i.i, %bb.h, %bb.d, %vtd_get_pe_from_pdire.exit, %bb.c, %bb.a
  %.0 = phi i32 [ -80, %bb.a ], [ -91, %bb.h ], [ -81, %bb.c ], [ 0, %vtd_get_pe_from_pdire.exit ], [ -88, %bb.d ], [ -91, %.preheader.preheader.i.i ], [ -91, %bb.i ], [ -91, %vtd_pe_type_check.exit.i.i ], [ 0, %vtd_get_pe_from_pdire.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtd_report_fault(ptr nofree noundef captures(none) %0, i32 noundef range(i32 1, 0) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  br i1 %2, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @vtd_qualified_faults, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !range !15, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_vtd_fault_disabled.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.f = load i16, ptr @_TRACE_VTD_FAULT_DISABLED_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_vtd_fault_disabled.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_vtd_fault_disabled.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26) #17
  br label %trace_vtd_fault_disabled.exit

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.i = icmp ult i32 %1, 146
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 633, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_report_dmar_fault) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %vtd_report_dmar_fault.exit, label %bb.j, !prof !17

bb.j:                                             ; preds = %bb.i
  %i.k = load i16, ptr @_TRACE_VTD_DMAR_FAULT_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.k, 0
  br i1 %.not4.i.i, label %vtd_report_dmar_fault.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not5.i.i = icmp eq i32 %i.m, 0
  br i1 %.not5.i.i, label %vtd_report_dmar_fault.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = zext i16 %3 to i32
  %i.o = zext i1 %5 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, i32 noundef %i.n, i32 noundef range(i32 1, 146) %1, i64 noundef %4, i32 noundef %i.o) #17
  br label %vtd_report_dmar_fault.exit

vtd_report_dmar_fault.exit:                       ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.p = zext i16 %3 to i64                       ; 2 uses
  %i.q = zext nneg i32 %1 to i64
  %i.r = shl nuw nsw i64 %i.q, 32
  %i.s = and i32 %7, 65535
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = or disjoint i64 %i.u, %i.r
  %i.w = select i1 %6, i64 2147483648, i64 0
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = or disjoint i64 %i.x, %i.p               ; 2 uses
  %i.z = or i64 %i.y, 4611686018427387904
  %spec.select.i = select i1 %5, i64 %i.y, i64 %i.z
  %i.aa = and i64 %4, -4096
  tail call fastcc void @vtd_report_frcd_fault(ptr noundef %0, i64 noundef %i.p, i64 noundef %spec.select.i, i64 noundef %i.aa)
  br label %trace_vtd_fault_disabled.exit

trace_vtd_fault_disabled.exit:                    ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %vtd_report_dmar_fault.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtd_report_frcd_fault(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 65536) %1, i64 noundef range(i64 4294967296, 4683743612465315840) %2, i64 noundef range(i64 0, -4095) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1972 ; 8 uses
  %.val.i = load i32, ptr %i.a, align 1           ; 2 uses
  %i.b = zext i32 %.val.i to i64                  ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_report_frcd_fault.print_once_, ptr noundef nonnull @.str.29) #17 ; 0 uses
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.e = trunc nuw i64 %1 to i16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2472 ; 6 uses
  %.val.i.i = load i64, ptr %i.f, align 1         ; 2 uses
  %.not.i = icmp slt i64 %.val.i.i, 0             ; 2 uses
  %i.g = trunc i64 %.val.i.i to i16
  %i.h = icmp eq i16 %i.e, %i.g
  %or.cond.i = and i1 %.not.i, %i.h
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_report_frcd_fault.print_once_.30, ptr noundef nonnull @.str.31) #17 ; 0 uses
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4206 ; 7 uses
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %vtd_is_frcd_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_is_frcd_set) #19
  unreachable

vtd_is_frcd_set.exit:                             ; preds = %bb.e
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %vtd_is_frcd_set.exit
  %i.m = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_report_frcd_fault.print_once_.32, ptr noundef nonnull @.str.33) #17 ; 0 uses
  %.val.i27 = load i32, ptr %i.a, align 2
  %i.n = or i32 %.val.i27, 1
  store i32 %i.n, ptr %i.a, align 2
  br label %bb.x

bb.h:                                             ; preds = %vtd_is_frcd_set.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2464
  store i64 %3, ptr %i.o, align 2
  store i64 %2, ptr %i.f, align 2
  %i.p = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %vtd_record_frcd.exit, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.q = load i16, ptr @_TRACE_VTD_FRR_NEW_DSTATE, align 2
  %.not3.i.i = icmp eq i16 %i.q, 0
  br i1 %.not3.i.i, label %vtd_record_frcd.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr @qemu_loglevel, align 4
  %i.s = and i32 %i.r, 32768
  %.not4.i.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i.i, label %vtd_record_frcd.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.37, i32 noundef range(i32 0, 65536) 0, i64 noundef range(i64 4294967296, 4683743612465315840) %2, i64 noundef range(i64 0, -4095) %3) #17
  br label %vtd_record_frcd.exit

vtd_record_frcd.exit:                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.t = and i64 %i.b, 2
  %.not25 = icmp eq i64 %i.t, 0
  br i1 %.not25, label %bb.r, label %bb.l

bb.l:                                             ; preds = %vtd_record_frcd.exit
  %i.u = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_report_frcd_fault.print_once_.34, ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.v = load i16, ptr %i.j, align 2
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_set_frcd_and_update_ppf) #19
  unreachable

bb.n:                                             ; preds = %bb.l
  %.val.i.i28 = load i64, ptr %i.f, align 2
  %i.x = or i64 %.val.i.i28, -9223372036854775808
  store i64 %i.x, ptr %i.f, align 2
  %.val.i8.i.i = load i32, ptr %i.a, align 2
  %.sink.i.i = or i32 %.val.i8.i.i, 2
  store i32 %.sink.i.i, ptr %i.a, align 2
  %i.y = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %vtd_set_frcd_and_update_ppf.exit.thread, label %bb.o, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.z = load i16, ptr @_TRACE_VTD_FSTS_PPF_DSTATE, align 2
  %.not1.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not1.i.i.i, label %vtd_set_frcd_and_update_ppf.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = load i32, ptr @qemu_loglevel, align 4
  %i.ab = and i32 %i.aa, 32768
  %.not2.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not2.i.i.i, label %vtd_set_frcd_and_update_ppf.exit.thread, label %vtd_set_frcd_and_update_ppf.exit

vtd_set_frcd_and_update_ppf.exit:                 ; preds = %bb.p
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, i32 noundef 1) #17
  %.pre = load i16, ptr %i.j, align 2
  %.pre.fr = freeze i16 %.pre                     ; 2 uses
  %i.ac = add i16 %.pre.fr, 1
  %i.ad = icmp eq i16 %.pre.fr, 0
  br i1 %i.ad, label %vtd_set_frcd_and_update_ppf.exit.thread, label %bb.q

vtd_set_frcd_and_update_ppf.exit.thread:          ; preds = %bb.p, %bb.o, %bb.n, %vtd_set_frcd_and_update_ppf.exit
  br label %bb.q

bb.q:                                             ; preds = %vtd_set_frcd_and_update_ppf.exit, %vtd_set_frcd_and_update_ppf.exit.thread
  %i.ae = phi i16 [ 0, %vtd_set_frcd_and_update_ppf.exit.thread ], [ %i.ac, %vtd_set_frcd_and_update_ppf.exit ]
  store i16 %i.ae, ptr %i.j, align 2
  br label %bb.x

bb.r:                                             ; preds = %vtd_record_frcd.exit
  %i.af = load i16, ptr %i.j, align 2             ; 2 uses
  %4 = zext i16 %i.af to i32
  %5 = shl nuw nsw i32 %4, 8
  %6 = and i32 %5, 65280
  %.val.i29 = load i32, ptr %i.a, align 2
  %7 = and i32 %.val.i29, -65281                  ; 2 uses
  %8 = or disjoint i32 %6, %7
  store i32 %8, ptr %i.a, align 2
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_set_frcd_and_update_ppf) #19
  unreachable

bb.t:                                             ; preds = %bb.r
  %.val.i.i30 = load i64, ptr %i.f, align 2
  %i.ah = or i64 %.val.i.i30, -9223372036854775808
  store i64 %i.ah, ptr %i.f, align 2
  %.sink.i.i32 = or i32 %7, 2
  store i32 %.sink.i.i32, ptr %i.a, align 2
  %i.ai = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i33 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i33, label %vtd_set_frcd_and_update_ppf.exit36.thread, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.aj = load i16, ptr @_TRACE_VTD_FSTS_PPF_DSTATE, align 2
  %.not1.i.i.i34 = icmp eq i16 %i.aj, 0
  br i1 %.not1.i.i.i34, label %vtd_set_frcd_and_update_ppf.exit36.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = load i32, ptr @qemu_loglevel, align 4
  %i.al = and i32 %i.ak, 32768
  %.not2.i.i.i35 = icmp eq i32 %i.al, 0
  br i1 %.not2.i.i.i35, label %vtd_set_frcd_and_update_ppf.exit36.thread, label %vtd_set_frcd_and_update_ppf.exit36

vtd_set_frcd_and_update_ppf.exit36:               ; preds = %bb.v
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, i32 noundef 1) #17
  %.pre37 = load i16, ptr %i.j, align 2
  %.pre37.fr = freeze i16 %.pre37                 ; 2 uses
  %i.am = add i16 %.pre37.fr, 1
  %i.an = icmp eq i16 %.pre37.fr, 0
  br i1 %i.an, label %vtd_set_frcd_and_update_ppf.exit36.thread, label %bb.w

vtd_set_frcd_and_update_ppf.exit36.thread:        ; preds = %bb.v, %bb.u, %bb.t, %vtd_set_frcd_and_update_ppf.exit36
  br label %bb.w

bb.w:                                             ; preds = %vtd_set_frcd_and_update_ppf.exit36, %vtd_set_frcd_and_update_ppf.exit36.thread
  %i.ao = phi i16 [ 0, %vtd_set_frcd_and_update_ppf.exit36.thread ], [ %i.am, %vtd_set_frcd_and_update_ppf.exit36 ]
  store i16 %i.ao, ptr %i.j, align 2
  tail call fastcc void @vtd_generate_fault_event(ptr noundef nonnull %0, i32 noundef %.val.i)
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %bb.w, %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtd_generate_fault_event(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.MSIMessage, align 8         ; 5 uses
  %i.a = and i32 %1, 19
  %or.cond9 = icmp eq i32 %i.a, 0
  br i1 %or.cond9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_generate_fault_event.print_once_, ptr noundef nonnull @.str.39) #17 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 4 uses
  %.val.i = load i32, ptr %i.c, align 1           ; 2 uses
  %i.d = or i32 %.val.i, 1073741824
  store i32 %i.d, ptr %i.c, align 1
  %.not8 = icmp sgt i32 %.val.i, -1
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_generate_fault_event.print_once_.40, ptr noundef nonnull @.str.41) #17 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !annotation !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %.val.i.i = load i32, ptr %i.g, align 1
  %i.h = zext i32 %.val.i.i to i64                ; 2 uses
  store i64 %i.h, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1980
  %.val.i6.i = load i32, ptr %i.i, align 1        ; 2 uses
  store i32 %.val.i6.i, ptr %i.f, align 8
  %i.j = zext i32 %.val.i6.i to i64
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %vtd_generate_interrupt.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.l = load i16, ptr @_TRACE_VTD_IRQ_GENERATE_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.l, 0
  br i1 %.not2.i.i, label %vtd_generate_interrupt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not3.i.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i.i, label %vtd_generate_interrupt.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i64 noundef %i.h, i64 noundef range(i64 0, 4294967296) %i.j) #17
  br label %vtd_generate_interrupt.exit

vtd_generate_interrupt.exit:                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.o = tail call ptr @apic_get_class(ptr noundef null) #17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull %2) #17, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.val.i11 = load i32, ptr %i.c, align 1
  %i.r = and i32 %.val.i11, -1073741825
  store i32 %i.r, ptr %i.c, align 1
  br label %bb.i

bb.i:                                             ; preds = %vtd_generate_interrupt.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtd_update_fsts_ppf(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %.val.i.i = load i64, ptr %i.a, align 1         ; 2 uses
  %i.b = icmp slt i64 %.val.i.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1972 ; 2 uses
  %.val.i8 = load i32, ptr %i.c, align 1
  %i.d = and i32 %.val.i8, -3
  %masksel = select i1 %i.b, i32 2, i32 0
  %.sink = or disjoint i32 %i.d, %masksel
  store i32 %.sink, ptr %i.c, align 1
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_vtd_fsts_ppf.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_VTD_FSTS_PPF_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_vtd_fsts_ppf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_vtd_fsts_ppf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i.lobit = lshr i64 %.val.i.i, 63
  %i.i = trunc nuw nsw i64 %.val.i.i.lobit to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, i32 noundef %i.i) #17
  br label %trace_vtd_fsts_ppf.exit

trace_vtd_fsts_ppf.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

declare ptr @apic_get_class(ptr noundef) local_unnamed_addr #4

declare ptr @vtd_find_hiod_iommufd(ptr noundef) local_unnamed_addr #4

declare void @memory_region_set_enabled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @vtd_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #17 ; 5 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 28, ptr noundef nonnull @__func__.X86_IOMMU_DEVICE_CLASS) #17 ; 2 uses
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 22, ptr noundef nonnull @__func__.RESETTABLE_CLASS) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr @vtd_reset_exit, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vtd_vmstate, ptr %i.e, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @vtd_properties, i64 noundef 11) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 131
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr @vtd_realize, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr @vtd_int_remap, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, 128
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @.str.49, ptr %i.l, align 8
  tail call void @vtd_iommu_ops_update_accel(ptr noundef nonnull @vtd_iommu_ops) #17
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vtd_reset_exit(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.54, i32 noundef 30, ptr noundef nonnull @__func__.INTEL_IOMMU_DEVICE) #17 ; 2 uses
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_vtd_reset_exit.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_VTD_RESET_EXIT_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.c, 0
  br i1 %.not1.i, label %trace_vtd_reset_exit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %trace_vtd_reset_exit.exit, label %bb.d
end_hunk_0
