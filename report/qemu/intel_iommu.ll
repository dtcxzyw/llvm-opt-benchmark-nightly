Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/intel_iommu?download=true
inline.NumInlined: 680
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vtd_pri_request_page:bb.a
  %i.ce = or disjoint i64 %i.cd, %i.bw
  %i.cf = or disjoint i64 %i.ce, %i.bx
  %i.cg = or disjoint i64 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bv, ptr %12, align 8
  store i64 %i.cg, ptr %i.ch, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.ci = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.v, i64 4294967296, ptr noundef nonnull %12, i64 noundef range(i64 4, 65) 32, i1 noundef zeroext true) #17
  %.not60 = icmp eq i32 %i.ci, 0
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_pri_request_page.print_once_, ptr noundef nonnull @.str.269) #17 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.val14.i = load i64, ptr %i.f, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 2680
  %.val13.i = load i64, ptr %i.ck, align 8        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 3240
  %.val.i70 = load i64, ptr %i.cl, align 8
  %i.cm = xor i64 %.val13.i, -1
  %i.cn = and i64 %.val14.i, %i.cm
  %i.co = and i64 %.val13.i, %i.o
  %i.cp = or i64 %i.cn, %i.co
  %i.cq = and i64 %.val.i70, %i.o
  %i.cr = xor i64 %i.cq, -1
  %i.cs = and i64 %i.cp, %i.cr
  store i64 %i.cs, ptr %i.f, align 8
  %.val5.i71 = load i32, ptr %i.w, align 4        ; 2 uses
  %.val.i72 = load i32, ptr %i.x, align 4
  %i.ct = xor i32 %.val.i72, -1
  %i.cu = and i32 %.val5.i71, %i.ct               ; 2 uses
  %i.cv = and i32 %i.cu, 1
  %.not61 = icmp eq i32 %i.cv, 0
  br i1 %.not61, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cw = or i32 %.val5.i71, 1
  store i32 %i.cw, ptr %i.w, align 4
  call fastcc void @vtd_generate_page_request_event(ptr noundef nonnull %1, i32 noundef %i.cu)
  br label %bb.o

bb.o:                                             ; preds = %vtd_check_pre_bit.exit, %bb.m, %bb.n, %bb.j, %bb.g, %bb.c, %bb.b, %bb.a, %bb.l, %bb.i
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %vtd_check_pre_bit.exit ], [ -28, %bb.i ], [ -28, %bb.g ], [ -5, %bb.l ], [ -22, %bb.j ], [ -22, %bb.c ], [ -1, %bb.b ], [ 0, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  ret i32 %.0
}

declare ptr @object_ref(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @vtd_check_hiod_accel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #4

declare i32 @g_hash_table_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @memory_region_register_iommu_notifier(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @memory_region_unregister_iommu_notifier(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define internal void @vtd_iommu_translate(ptr dead_on_unwind noalias nofree writable sret(%struct.IOMMUTLBEntry) align 8 captures(none) initializes((0, 40)) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -176 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1376
  %i.c = load ptr, ptr %i.b, align 16             ; 2 uses
  store ptr @address_space_memory, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 -164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 0                      ; 2 uses
  %spec.select = select i1 %i.k, i32 -1, i32 %i.j
  store i32 %spec.select, ptr %i.h, align 4
  %i.l = and i32 %3, 2
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4185
  %i.o = load i8, ptr %i.n, align 1, !range !15, !noundef !16
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %.critedge.sink.split, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %4, 1
  br i1 %i.q, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.r = load ptr, ptr %i.a, align 16
  %i.s = getelementptr inbounds i8, ptr %1, i64 -168
  %i.t = load i8, ptr %i.s, align 8
  %i.u = tail call fastcc zeroext i1 @vtd_do_iommu_translate(ptr noundef nonnull %i.a, ptr noundef %i.r, i8 noundef zeroext %i.t, i64 noundef %2, i1 noundef zeroext %i.m, ptr noundef nonnull %0, i32 noundef %4)
  br i1 %i.u, label %.critedge, label %bb.i, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4184
  %i.w = load i8, ptr %i.v, align 8, !range !15, !noundef !16
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %.critedge.sink.split, label %.critedge31

.critedge31:                                      ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 4095, ptr %i.f, align 8
  store i32 -1, ptr %i.h, align 4
  %i.y = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iommu_translate.print_once_, ptr noundef nonnull @.str.243, ptr noundef nonnull @__func__.vtd_iommu_translate, i32 noundef %i.j) #17 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.a, align 16
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -168
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = tail call fastcc zeroext i1 @vtd_do_iommu_translate(ptr noundef nonnull %i.a, ptr noundef %i.z, i8 noundef zeroext %i.ab, i64 noundef %2, i1 noundef zeroext %i.m, ptr noundef nonnull %0, i32 noundef 1)
  br i1 %i.ac, label %.critedge, label %bb.i, !prof !17

.critedge.sink.split:                             ; preds = %bb.a, %bb.d
  %i.ad = and i64 %2, -4096                       ; 2 uses
  store i64 %i.ad, ptr %i.d, align 8
  store i64 %i.ad, ptr %i.e, align 8
  store i64 4095, ptr %i.f, align 8
  store i32 3, ptr %i.g, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.split, %bb.e
  %i.ae = load ptr, ptr %i.a, align 16
  %i.af = tail call i32 @pci_bus_num(ptr noundef %i.ae) #17
  %i.ag = getelementptr inbounds i8, ptr %1, i64 -168
  %i.ah = load i8, ptr %i.ag, align 8             ; 2 uses
  %i.ai = lshr i8 %i.ah, 3
  %i.aj = and i8 %i.ah, 7
  %i.ak = load i64, ptr %i.d, align 8
  %i.al = load i64, ptr %i.e, align 8
  %i.am = load i64, ptr %i.f, align 8
  %i.an = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %trace_vtd_dmar_translate.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %.critedge
  %i.ao = load i16, ptr @_TRACE_VTD_DMAR_TRANSLATE_DSTATE, align 2
  %.not6.i = icmp eq i16 %i.ao, 0
  br i1 %.not6.i, label %trace_vtd_dmar_translate.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr @qemu_loglevel, align 4
  %i.aq = and i32 %i.ap, 32768
  %.not7.i = icmp eq i32 %i.aq, 0
  br i1 %.not7.i, label %trace_vtd_dmar_translate.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = and i32 %i.af, 255
  %i.as = zext nneg i8 %i.ai to i32
  %i.at = zext nneg i8 %i.aj to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.268, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.am) #17
  br label %trace_vtd_dmar_translate.exit

bb.i:                                             ; preds = %.split, %.critedge31, %bb.e
  %i.au = load ptr, ptr %i.a, align 16
  %i.av = tail call i32 @pci_bus_num(ptr noundef %i.au) #17
  %i.aw = getelementptr inbounds i8, ptr %1, i64 -168
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = lshr i32 %i.ay, 3
  %i.ba = and i32 %i.ay, 7
  %i.bb = tail call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iommu_translate.print_once_.244, ptr noundef nonnull @.str.245, ptr noundef nonnull @__func__.vtd_iommu_translate, i32 noundef %i.av, i32 noundef %i.az, i32 noundef %i.ba, i64 noundef %2) #17 ; 0 uses
  br label %trace_vtd_dmar_translate.exit

trace_vtd_dmar_translate.exit:                    ; preds = %bb.h, %bb.g, %bb.f, %.critedge, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @vtd_do_iommu_translate(ptr nofree noundef captures(none) %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.VTDPASIDEntry, align 8      ; 5 uses
  %8 = alloca %struct.VTDPASIDEntry, align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %9 = alloca %struct.VTDPASIDEntry, align 8      ; 5 uses
  %10 = alloca %struct.VTDPASIDEntry, align 8     ; 6 uses
  %11 = alloca %struct.VTDPASIDEntry, align 8     ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %12 = alloca %struct.VTDPASIDEntry, align 8     ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %13 = alloca %struct.VTDPASIDEntry, align 8     ; 5 uses
  %14 = alloca %struct.VTDPASIDEntry, align 8     ; 6 uses
  %15 = alloca %struct.VTDPASIDEntry, align 8     ; 6 uses
  %16 = alloca %struct.vtd_as_raw_key, align 8    ; 5 uses
  %17 = alloca %struct.VTDPASIDEntry, align 8     ; 7 uses
  %18 = alloca %struct.vtd_iotlb_key, align 8     ; 12 uses
  %19 = alloca %struct.VTDContextEntry, align 8   ; 28 uses
  %i.d = alloca i8, align 1                       ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.f = load ptr, ptr %i.e, align 16             ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.g = tail call i32 @pci_bus_num(ptr noundef %1) #17 ; 4 uses
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 26 uses
  %i.k = shl i32 %i.g, 8
  %i.l = zext i8 %2 to i32                        ; 3 uses
  %i.m = or disjoint i32 %i.k, %i.l               ; 5 uses
  %i.n = trunc i32 %i.m to i16                    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i8 0, ptr %i.d, align 1
  %i.o = icmp ne i32 %i.j, 0
  %i.p = and i64 %3, -1048576
  %i.q = icmp eq i64 %i.p, 4276092928
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.1, i32 noundef 2113, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_do_iommu_translate) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false), !annotation !14
  %i.r = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 6344 ; 5 uses
  tail call void %i.r(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.1, i32 noundef 187) #17, !inline_history !0
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store i64 281474976710656, ptr %i.t, align 8, !annotation !14
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 14 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 4232 ; 6 uses
  %i.x = lshr i64 %3, 12                          ; 3 uses
  store i64 %i.x, ptr %18, align 8
  store i16 %i.n, ptr %i.v, align 4
  store i32 %i.j, ptr %i.t, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = call ptr @g_hash_table_lookup(ptr noundef %i.y, ptr noundef nonnull %18) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.d, label %vtd_lookup_iotlb.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = and i64 %i.x, 4503599627369984
  store i64 %i.aa, ptr %18, align 8
  store i8 2, ptr %i.u, align 2
  store i16 %i.n, ptr %i.v, align 4
  store i32 %i.j, ptr %i.t, align 8
  %i.ab = load ptr, ptr %i.w, align 8
  %i.ac = call ptr @g_hash_table_lookup(ptr noundef %i.ab, ptr noundef nonnull %18) #17 ; 2 uses
  %.not.1.i = icmp eq ptr %i.ac, null
  br i1 %.not.1.i, label %vtd_lookup_iotlb.exit, label %vtd_lookup_iotlb.exit.thread

vtd_lookup_iotlb.exit.thread:                     ; preds = %bb.c, %bb.d
  %.1.i.ph = phi ptr [ %i.ac, %bb.d ], [ %i.z, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.e

vtd_lookup_iotlb.exit:                            ; preds = %bb.d
  %i.ad = and i64 %i.x, 4503599627108352
  store i64 %i.ad, ptr %18, align 8
  store i8 3, ptr %i.u, align 2
  store i16 %i.n, ptr %i.v, align 4
  store i32 %i.j, ptr %i.t, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %i.af = call ptr @g_hash_table_lookup(ptr noundef %i.ae, ptr noundef nonnull %18) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %vtd_lookup_iotlb.exit.thread, %vtd_lookup_iotlb.exit
  %.1.i238 = phi ptr [ %.1.i.ph, %vtd_lookup_iotlb.exit.thread ], [ %i.af, %vtd_lookup_iotlb.exit ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i238, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i238, i64 8
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i154 = icmp eq i32 %i.ak, 0
  br i1 %.not.i154, label %trace_vtd_iotlb_page_hit.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.al = load i16, ptr @_TRACE_VTD_IOTLB_PAGE_HIT_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.al, 0
  br i1 %.not4.i, label %trace_vtd_iotlb_page_hit.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr @qemu_loglevel, align 4
  %i.an = and i32 %i.am, 32768
  %.not5.i = icmp eq i32 %i.an, 0
  br i1 %.not5.i, label %trace_vtd_iotlb_page_hit.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = and i32 %i.m, 65535
  %i.ap = zext i16 %i.aj to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.248, i32 noundef %i.ao, i64 noundef %3, i64 noundef %i.ah, i32 noundef %i.ap) #17
  %.pre = load i64, ptr %i.ag, align 8
  br label %trace_vtd_iotlb_page_hit.exit

trace_vtd_iotlb_page_hit.exit:                    ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.aq = phi i64 [ %i.ah, %bb.e ], [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ %.pre, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i238, i64 32
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i238, i64 24
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %.pre353 = and i64 %i.au, %3
  br label %bb.cn

bb.i:                                             ; preds = %vtd_lookup_iotlb.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 4224 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 16
  %i.az = icmp eq i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.ba, align 16
  %i.be = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i155 = icmp eq i32 %i.be, 0
  br i1 %.not.i155, label %trace_vtd_iotlb_cc_hit.exit, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.bf = load i16, ptr @_TRACE_VTD_IOTLB_CC_HIT_DSTATE, align 2
  %.not5.i156 = icmp eq i16 %i.bf, 0
  br i1 %.not5.i156, label %trace_vtd_iotlb_cc_hit.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr @qemu_loglevel, align 4
  %i.bh = and i32 %i.bg, 32768
  %.not6.i = icmp eq i32 %i.bh, 0
  br i1 %.not6.i, label %trace_vtd_iotlb_cc_hit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = and i32 %i.g, 255
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.249, i32 noundef %i.bi, i32 noundef %i.l, i64 noundef %i.bc, i64 noundef %i.bd, i32 noundef %i.aw) #17
  br label %trace_vtd_iotlb_cc_hit.exit

trace_vtd_iotlb_cc_hit.exit:                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 16 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bj = load i64, ptr %19, align 8              ; 2 uses
  %i.bk = and i64 %i.bj, 2                        ; 2 uses
  %.not144 = icmp eq i64 %i.bk, 0
  %.lobit143 = lshr exact i64 %i.bk, 1
  %i.bl = trunc nuw nsw i64 %.lobit143 to i8
  store i8 %i.bl, ptr %i.d, align 1
  br i1 %.not144, label %bb.n, label %bb.w

bb.n:                                             ; preds = %trace_vtd_iotlb_cc_hit.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 4184
  %i.bn = load i8, ptr %i.bm, align 8, !range !15, !noundef !16
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bp = call fastcc i32 @vtd_ce_get_pasid_fpd(ptr noundef nonnull %i.f, i64 %i.bj, ptr noundef %i.d, i32 noundef %i.j) ; 2 uses
  %.not145 = icmp eq i32 %i.bp, 0
  br i1 %.not145, label %bb.w, label %.thread369

bb.p:                                             ; preds = %bb.i
  %i.bq = call i32 @vtd_dev_to_context_entry(ptr noundef nonnull %i.f, i8 noundef zeroext %i.h, i8 noundef zeroext %2, ptr noundef nonnull %19) ; 2 uses
  %i.br = load i64, ptr %19, align 8              ; 3 uses
  %i.bs = and i64 %i.br, 2                        ; 2 uses
  %i.bt = icmp ne i64 %i.bs, 0
  %.lobit = lshr exact i64 %i.bs, 1
  %i.bu = trunc nuw nsw i64 %.lobit to i8
  store i8 %i.bu, ptr %i.d, align 1
  %i.bv = icmp ne i32 %i.bq, 0
  %or.cond = select i1 %i.bv, i1 true, i1 %i.bt
  br i1 %or.cond, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 4184
  %i.bx = load i8, ptr %i.bw, align 8, !range !15, !noundef !16
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bz = call fastcc i32 @vtd_ce_get_pasid_fpd(ptr noundef nonnull %i.f, i64 %i.br, ptr noundef %i.d, i32 noundef %i.j)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.0134 = phi i32 [ %i.bq, %bb.p ], [ %i.bz, %bb.r ] ; 2 uses
  %.not142 = icmp eq i32 %.0134, 0
  br i1 %.not142, label %..thread_crit_edge, label %.thread369

..thread_crit_edge:                               ; preds = %bb.s
  %.pre349 = load i64, ptr %19, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.q
  %i.ca = phi i64 [ %.pre349, %..thread_crit_edge ], [ %i.br, %bb.q ]
  %i.cb = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = load i32, ptr %i.av, align 8
  %i.ce = load i32, ptr %i.ax, align 16
  %i.cf = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i157 = icmp eq i32 %i.cf, 0
  br i1 %.not.i157, label %trace_vtd_iotlb_cc_update.exit, label %bb.t, !prof !17

bb.t:                                             ; preds = %.thread
  %i.cg = load i16, ptr @_TRACE_VTD_IOTLB_CC_UPDATE_DSTATE, align 2
  %.not6.i158 = icmp eq i16 %i.cg, 0
  br i1 %.not6.i158, label %trace_vtd_iotlb_cc_update.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = load i32, ptr @qemu_loglevel, align 4
  %i.ci = and i32 %i.ch, 32768
  %.not7.i = icmp eq i32 %i.ci, 0
  br i1 %.not7.i, label %trace_vtd_iotlb_cc_update.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = and i32 %i.g, 255
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.250, i32 noundef %i.cj, i32 noundef %i.l, i64 noundef %i.cc, i64 noundef %i.ca, i32 noundef %i.cd, i32 noundef %i.ce) #17
  br label %trace_vtd_iotlb_cc_update.exit

trace_vtd_iotlb_cc_update.exit:                   ; preds = %.thread, %bb.t, %bb.u, %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false)
  %i.cl = load i32, ptr %i.ax, align 16
  store i32 %i.cl, ptr %i.av, align 8
  br label %bb.w

bb.w:                                             ; preds = %trace_vtd_iotlb_cc_hit.exit, %bb.n, %bb.o, %trace_vtd_iotlb_cc_update.exit
  %.val = load i64, ptr %19, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 4184 ; 9 uses
  %i.cn = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.x, label %.split

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %17, i8 0, i64 64, i1 false), !annotation !14
  %i.cp = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val, ptr noundef nonnull %17, i32 noundef %i.j)
  %.not.i159 = icmp eq i32 %i.cp, 0
  br i1 %.not.i159, label %vtd_dev_pt_enabled.exit, label %vtd_dev_pt_enabled.exit.thread

vtd_dev_pt_enabled.exit.thread:                   ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.ah

.split:                                           ; preds = %bb.w
  %i.cq = and i64 %.val, 12
  %i.cr = icmp eq i64 %i.cq, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br i1 %i.cr, label %bb.y, label %bb.ah

vtd_dev_pt_enabled.exit:                          ; preds = %bb.x
  %.val7.i = load i64, ptr %17, align 8
  %i.cs = and i64 %.val7.i, 448
  %i.ct = icmp eq i64 %i.cs, 256
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br i1 %i.ct, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %.split, %vtd_dev_pt_enabled.exit
  %i.cu = and i64 %3, -4096                       ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cu, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 4095, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 3, ptr %i.cy, align 8
  %i.cz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i160 = icmp eq i32 %i.cz, 0
  br i1 %.not.i160, label %trace_vtd_translate_pt.exit, label %bb.z, !prof !17

bb.z:                                             ; preds = %bb.y
  %i.da = load i16, ptr @_TRACE_VTD_TRANSLATE_PT_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.da, 0
  br i1 %.not2.i, label %trace_vtd_translate_pt.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = load i32, ptr @qemu_loglevel, align 4
  %i.dc = and i32 %i.db, 32768
  %.not3.i = icmp eq i32 %i.dc, 0
  br i1 %.not3.i, label %trace_vtd_translate_pt.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = and i32 %i.m, 65535
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.251, i32 noundef %i.dd, i64 noundef %i.cu) #17
  br label %trace_vtd_translate_pt.exit

trace_vtd_translate_pt.exit:                      ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.de = getelementptr i8, ptr %i.f, i64 4240
  %.val153 = load ptr, ptr %i.de, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store i64 0, ptr %16, align 8, !annotation !14
  store i16 %i.n, ptr %16, align 8
  %i.df = call ptr @g_hash_table_find(ptr noundef %.val153, ptr noundef nonnull @vtd_find_as_by_sid_and_pasid, ptr noundef nonnull %16) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %.not.i161 = icmp eq ptr %i.df, null
  br i1 %.not.i161, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %trace_vtd_translate_pt.exit
  %i.dg = call fastcc zeroext i1 @vtd_switch_address_space(ptr noundef nonnull %i.df)
  %not..i = xor i1 %i.dg, true
  %i.dh = zext i1 %not..i to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %trace_vtd_translate_pt.exit
  %.0.i162 = phi i32 [ 0, %trace_vtd_translate_pt.exit ], [ %i.dh, %bb.ac ]
  %i.di = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i, label %vtd_pt_enable_fast_path.exit, label %bb.ae, !prof !17

bb.ae:                                            ; preds = %bb.ad
  %i.dj = load i16, ptr @_TRACE_VTD_PT_ENABLE_FAST_PATH_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.dj, 0
  br i1 %.not2.i.i, label %vtd_pt_enable_fast_path.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = load i32, ptr @qemu_loglevel, align 4
  %i.dl = and i32 %i.dk, 32768
  %.not3.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not3.i.i, label %vtd_pt_enable_fast_path.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = and i32 %i.m, 65535
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.252, i32 noundef %i.dm, i32 noundef %.0.i162) #17
  br label %vtd_pt_enable_fast_path.exit

vtd_pt_enable_fast_path.exit:                     ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  br label %bb.cr

bb.ah:                                            ; preds = %.split, %vtd_dev_pt_enabled.exit.thread, %vtd_dev_pt_enabled.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 4166 ; 7 uses
  %i.do = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.dp = trunc nuw i8 %i.do to i1
  %.pre350 = load i8, ptr %i.cm, align 8, !range !15
  %i.dq = trunc nuw i8 %.pre350 to i1             ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 6340 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 4             ; 3 uses
  br i1 %i.dp, label %bb.ai, label %bb.bd

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dq, label %vtd_get_iova_pgtbl_base.exit.i, label %.thread367

.thread367:                                       ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  br label %bb.bh

vtd_get_iova_pgtbl_base.exit.i:                   ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, i8 0, i64 64, i1 false), !annotation !14
  %.val.i.i = load i64, ptr %19, align 8
  %i.dt = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val.i.i, ptr noundef nonnull %15, i32 noundef %i.j) ; 0 uses
  %i.du = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.dv = trunc nuw i8 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.val6.i.i = load i64, ptr %i.dw, align 8
  %i.dx = load i64, ptr %15, align 8
  %.0.in.i.i = select i1 %i.dv, i64 %.val6.i.i, i64 %i.dx
  %.0.i.i = and i64 %.0.in.i.i, -4096
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.dy = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %vtd_get_iova_pgtbl_base.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, i8 0, i64 64, i1 false), !annotation !14
  %.val6.i65.i = load i64, ptr %19, align 8
  %i.ea = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val6.i65.i, ptr noundef nonnull %14, i32 noundef %i.j) ; 0 uses
  %i.eb = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = lshr i32 %i.ef, 2
  %i.eh = and i32 %i.eg, 3
  %i.ei = or disjoint i32 %i.eh, 4
  br label %vtd_get_iova_level.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.ej = load i64, ptr %14, align 8
  %i.ek = trunc i64 %i.ej to i32
  %i.el = lshr i32 %i.ek, 2
  %i.em = and i32 %i.el, 7
  %i.en = add nuw nsw i32 %i.em, 2
  br label %vtd_get_iova_level.exit.i

bb.am:                                            ; preds = %vtd_get_iova_pgtbl_base.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val.i63.i = load i64, ptr %i.eo, align 8
  %i.ep = trunc i64 %.val.i63.i to i32
  %i.eq = and i32 %i.ep, 7
  %i.er = add nuw nsw i32 %i.eq, 2
  br label %vtd_get_iova_level.exit.i

vtd_get_iova_level.exit.i:                        ; preds = %bb.am, %bb.al, %bb.ak
  %.0.i64.i = phi i32 [ %i.ei, %bb.ak ], [ %i.en, %bb.al ], [ %i.er, %bb.am ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.es = load i8, ptr %i.dr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.et = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %vtd_get_iova_level.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, i8 0, i64 64, i1 false), !annotation !14
  %.val.i.i.i.i = load i64, ptr %19, align 8
  %i.ev = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val.i.i.i.i, ptr noundef nonnull %13, i32 noundef %i.j) ; 0 uses
  %i.ew = load i64, ptr %13, align 8
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = lshr i32 %i.ex, 2
  br label %vtd_iova_fs_check_canonical.exit.i

bb.ao:                                            ; preds = %vtd_get_iova_level.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val5.i.i.i.i = load i64, ptr %i.ez, align 8
  %i.fa = trunc i64 %.val5.i.i.i.i to i32
  br label %vtd_iova_fs_check_canonical.exit.i

vtd_iova_fs_check_canonical.exit.i:               ; preds = %bb.ao, %bb.an
  %.0.in.in.in.i.i.i.i = phi i32 [ %i.ey, %bb.an ], [ %i.fa, %bb.ao ]
  %.0.in.in.i.i.i.i = and i32 %.0.in.in.in.i.i.i.i, 7
  %.0.in.i.i.i.i = mul nuw nsw i32 %.0.in.in.i.i.i.i, 9
  %.0.i.i.i.i = add nuw nsw i32 %.0.in.i.i.i.i, 30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.fb = zext i8 %i.es to i32
  %i.fc = call i32 @llvm.umin.i32(i32 %.0.i.i.i.i, i32 %i.fb)
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd                    ; 2 uses
  %i.ff = sub i64 0, %i.fe                        ; 2 uses
  %i.fg = lshr i64 %i.fe, 1
  %i.fh = and i64 %i.fg, %3
  %.not.i.i163 = icmp eq i64 %i.fh, 0
  %..i.i = select i1 %.not.i.i163, i64 0, i64 %i.ff
  %i.fi = and i64 %3, %i.ff
  %.0.i66.i = icmp eq i64 %i.fi, %..i.i
  br i1 %.0.i66.i, label %vtd_iova_level_offset.exit.lr.ph.i, label %bb.ap

bb.ap:                                            ; preds = %vtd_iova_fs_check_canonical.exit.i
  %i.fj = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_fspte.print_once_, ptr noundef nonnull @.str.253, ptr noundef nonnull @__func__.vtd_iova_to_fspte, i64 noundef %3, i32 noundef %i.j) #17 ; 0 uses
  br label %vtd_iova_to_fspte.exit.thread

vtd_iova_level_offset.exit.lr.ph.i:               ; preds = %vtd_iova_fs_check_canonical.exit.i
  %i.fk = icmp ne i32 %6, 2
  %i.fl = zext nneg i8 %i.ds to i64
  %notmask.i.i = shl nsw i64 -1, %i.fl
  %i.fm = and i64 %notmask.i.i, 9223372036854771712
  %i.fn = xor i64 %i.fm, 9223372036854771712
  %.first_iter = icmp samesign ult i32 %.0.i64.i, 5
  br label %vtd_iova_level_offset.exit.i

vtd_iova_level_offset.exit.i:                     ; preds = %bb.bc, %vtd_iova_level_offset.exit.lr.ph.i
  %.2229 = phi i32 [ %.0.i64.i, %vtd_iova_level_offset.exit.lr.ph.i ], [ %i.hm, %bb.bc ] ; 14 uses
  %.1220 = phi i8 [ 1, %vtd_iova_level_offset.exit.lr.ph.i ], [ %i.gy, %bb.bc ]
  %.05993.i = phi i64 [ %.0.i.i, %vtd_iova_level_offset.exit.lr.ph.i ], [ %i.hl, %bb.bc ]
  %i.fo = mul nuw nsw i32 %.2229, 9
  %i.fp = add nuw nsw i32 %i.fo, 3
  %i.fq = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fr = lshr i64 %3, %i.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !annotation !14
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = and i64 %i.fs, 4088
  %i.fu = add nuw i64 %i.ft, %.05993.i            ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.fv = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.fu, i64 4294967296, ptr noundef nonnull %i.c, i64 noundef range(i64 4, 65) 8, i1 noundef zeroext false) #17
  %.not.i67.i = icmp ne i32 %i.fv, 0
  %i.fw = load i64, ptr %i.c, align 8             ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.fx = icmp eq i64 %i.fw, -1
  %i.fy = select i1 %.not.i67.i, i1 true, i1 %i.fx
  br i1 %i.fy, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %vtd_iova_level_offset.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.fz = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 0, i64 64, i1 false), !annotation !14
  %.val6.i70.i = load i64, ptr %19, align 8
  %i.gb = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val6.i70.i, ptr noundef nonnull %12, i32 noundef %i.j) ; 0 uses
  %i.gc = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = lshr i32 %i.gg, 2
  %i.gi = and i32 %i.gh, 3
  %i.gj = or disjoint i32 %i.gi, 4
  br label %vtd_get_iova_level.exit71.i

bb.at:                                            ; preds = %bb.ar
  %i.gk = load i64, ptr %12, align 8
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = lshr i32 %i.gl, 2
  %i.gn = and i32 %i.gm, 7
  %i.go = add nuw nsw i32 %i.gn, 2
  br label %vtd_get_iova_level.exit71.i

bb.au:                                            ; preds = %bb.aq
  %i.gp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val.i68.i = load i64, ptr %i.gp, align 8
  %i.gq = trunc i64 %.val.i68.i to i32
  %i.gr = and i32 %i.gq, 7
  %i.gs = add nuw nsw i32 %i.gr, 2
  br label %vtd_get_iova_level.exit71.i

vtd_get_iova_level.exit71.i:                      ; preds = %bb.au, %bb.at, %bb.as
  %.0.i69.i = phi i32 [ %i.gj, %bb.as ], [ %i.go, %bb.at ], [ %i.gs, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.gt = icmp eq i32 %.2229, %.0.i69.i
  %..i.neg = select i1 %i.gt, i32 115, i32 112
  br label %vtd_iova_to_fspte.exit.thread

bb.av:                                            ; preds = %vtd_iova_level_offset.exit.i
  %i.gu = trunc i64 %i.fw to i1
  br i1 %i.gu, label %bb.aw, label %vtd_iova_to_fspte.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.gv = and i64 %i.fw, 4
  %.not.i165 = icmp eq i64 %i.gv, 0
  br i1 %.not.i165, label %vtd_iova_to_fspte.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gw = and i64 %i.fw, 2                        ; 2 uses
  %.lobit.i = lshr exact i64 %i.gw, 1
  %i.gx = trunc nuw nsw i64 %.lobit.i to i8
  %i.gy = and i8 %.1220, %i.gx                    ; 2 uses
  %i.gz = icmp eq i64 %i.gw, 0
  %or.cond.i = and i1 %i.fk, %i.gz
  %or.cond94.i = select i1 %4, i1 %or.cond.i, i1 false
  br i1 %or.cond94.i, label %vtd_is_recoverable_fault.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %.first_iter, label %vtd_fspte_nonzero_rsvd.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @__assert_fail(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.1, i32 noundef 1928, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_fspte_nonzero_rsvd) #19
  unreachable

vtd_fspte_nonzero_rsvd.exit.i:                    ; preds = %bb.ay
  %i.ha = and i32 %.2229, 6
  %or.cond.i.i = icmp ne i32 %i.ha, 2
  %i.hb = and i64 %i.fw, 128                      ; 2 uses
  %.not11.i.i = icmp eq i64 %i.hb, 0
  %or.cond12.i.i = or i1 %or.cond.i.i, %.not11.i.i
  %i.hc = zext nneg i32 %.2229 to i64
  %.0.in.v.i.i = select i1 %or.cond12.i.i, ptr @vtd_fpte_rsvd, ptr @vtd_fpte_rsvd_large
  %.0.in.i73.i = getelementptr inbounds nuw [8 x i8], ptr %.0.in.v.i.i, i64 %i.hc
  %.0.i74.i = load i64, ptr %.0.in.i73.i, align 8
  %i.hd = and i64 %.0.i74.i, %i.fw
  %.not79.i = icmp eq i64 %i.hd, 0
  br i1 %.not79.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %vtd_fspte_nonzero_rsvd.exit.i
  %i.he = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_fspte.print_once_.254, ptr noundef nonnull @.str.255, ptr noundef nonnull @__func__.vtd_iova_to_fspte, i64 noundef %3, i32 noundef %.2229, i64 noundef %i.fw, i32 noundef %i.j) #17 ; 0 uses
  br label %vtd_iova_to_fspte.exit.thread

bb.bb:                                            ; preds = %vtd_fspte_nonzero_rsvd.exit.i
  %i.hf = icmp eq i32 %.2229, 1
  %i.hg = icmp ne i64 %i.hb, 0
  %i.hh = or i1 %i.hf, %i.hg                      ; 2 uses
  %or.cond3.i = and i1 %4, %i.hh
  %spec.select.i = select i1 %or.cond3.i, i64 96, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.hi = and i64 %spec.select.i, %i.fw
  %.not.i75.i = icmp eq i64 %i.hi, 0
  br i1 %.not.i75.i, label %vtd_set_flag_in_pte.exit.i, label %vtd_set_flag_in_pte.exit.thread.i

vtd_set_flag_in_pte.exit.thread.i:                ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %vtd_set_flag_in_pte.exit._crit_edge.i

vtd_set_flag_in_pte.exit.i:                       ; preds = %bb.bb
  %i.hj = or i64 %spec.select.i, %i.fw
  store i64 %i.hj, ptr %i.b, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.hk = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.fu, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef range(i64 4, 65) 8, i1 noundef zeroext true) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not62.i = icmp eq i32 %i.hk, 0
  br i1 %.not62.i, label %vtd_set_flag_in_pte.exit._crit_edge.i, label %vtd_iova_to_fspte.exit.thread

vtd_set_flag_in_pte.exit._crit_edge.i:            ; preds = %vtd_set_flag_in_pte.exit.i, %vtd_set_flag_in_pte.exit.thread.i
  br i1 %i.hh, label %vtd_pt_level_page_mask.exit, label %bb.bc

bb.bc:                                            ; preds = %vtd_set_flag_in_pte.exit._crit_edge.i
  %i.hl = and i64 %i.fw, %i.fn
  %i.hm = add nsw i32 %.2229, -1
  br label %vtd_iova_level_offset.exit.i

bb.bd:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  br i1 %i.dq, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !annotation !14
  %.val.i.i187 = load i64, ptr %19, align 8
  %i.hn = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val.i.i187, ptr noundef nonnull %11, i32 noundef %i.j) ; 0 uses
  %i.ho = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.val6.i.i188 = load i64, ptr %i.hq, align 8
  br label %vtd_get_iova_pgtbl_base.exit.i167

bb.bg:                                            ; preds = %bb.be
  %i.hr = load i64, ptr %11, align 8
  br label %vtd_get_iova_pgtbl_base.exit.i167

bb.bh:                                            ; preds = %.thread367, %bb.bd
  %.val7.i.i166 = load i64, ptr %19, align 8
  br label %vtd_get_iova_pgtbl_base.exit.i167

vtd_get_iova_pgtbl_base.exit.i167:                ; preds = %bb.bh, %bb.bg, %bb.bf
  %.0.in.i.i168 = phi i64 [ %.val6.i.i188, %bb.bf ], [ %i.hr, %bb.bg ], [ %.val7.i.i166, %bb.bh ]
  %.0.i.i169 = and i64 %.0.in.i.i168, -4096
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.hs = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %vtd_get_iova_pgtbl_base.exit.i167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false), !annotation !14
  %.val6.i59.i = load i64, ptr %19, align 8
  %i.hu = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val6.i59.i, ptr noundef nonnull %10, i32 noundef %i.j) ; 0 uses
  %i.hv = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = lshr i32 %i.hz, 2
  %i.ib = and i32 %i.ia, 3
  %i.ic = or disjoint i32 %i.ib, 4
  br label %vtd_get_iova_level.exit.i170

bb.bk:                                            ; preds = %bb.bi
  %i.id = load i64, ptr %10, align 8
  %i.ie = trunc i64 %i.id to i32
  %i.if = lshr i32 %i.ie, 2
  %i.ig = and i32 %i.if, 7
  %i.ih = add nuw nsw i32 %i.ig, 2
  br label %vtd_get_iova_level.exit.i170

bb.bl:                                            ; preds = %vtd_get_iova_pgtbl_base.exit.i167
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val.i57.i = load i64, ptr %i.ii, align 8
  %i.ij = trunc i64 %.val.i57.i to i32
  %i.ik = and i32 %i.ij, 7
  %i.il = add nuw nsw i32 %i.ik, 2
  br label %vtd_get_iova_level.exit.i170

vtd_get_iova_level.exit.i170:                     ; preds = %bb.bl, %bb.bk, %bb.bj
  %.0.i58.i = phi i32 [ %i.ic, %bb.bj ], [ %i.ih, %bb.bk ], [ %i.il, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.im = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %vtd_get_iova_level.exit.i170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !annotation !14
  %.val.i.i.i.i186 = load i64, ptr %19, align 8
  %i.io = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val.i.i.i.i186, ptr noundef nonnull %9, i32 noundef %i.j) ; 0 uses
  %i.ip = load i64, ptr %9, align 8
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = lshr i32 %i.iq, 2
  br label %vtd_iova_ss_range_check.exit.i

bb.bn:                                            ; preds = %vtd_get_iova_level.exit.i170
  %i.is = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val5.i.i.i.i171 = load i64, ptr %i.is, align 8
  %i.it = trunc i64 %.val5.i.i.i.i171 to i32
  br label %vtd_iova_ss_range_check.exit.i

vtd_iova_ss_range_check.exit.i:                   ; preds = %bb.bn, %bb.bm
  %.0.in.in.in.i.i.i.i172 = phi i32 [ %i.ir, %bb.bm ], [ %i.it, %bb.bn ]
  %.0.in.in.i.i.i.i173 = and i32 %.0.in.in.in.i.i.i.i172, 7
  %.0.in.i.i.i.i174 = mul nuw nsw i32 %.0.in.in.i.i.i.i173, 9
  %.0.i.i.i.i175 = add nuw nsw i32 %.0.in.i.i.i.i174, 30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.iu = zext i8 %i.ds to i32
  %i.iv = call i32 @llvm.umin.i32(i32 %.0.i.i.i.i175, i32 %i.iu)
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = lshr i64 %3, %i.iw
  %.not.i.i176 = icmp eq i64 %i.ix, 0
  br i1 %.not.i.i176, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %vtd_iova_ss_range_check.exit.i
  %i.iy = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_sspte.print_once_, ptr noundef nonnull @.str.257, ptr noundef nonnull @__func__.vtd_iova_to_sspte, i64 noundef %3, i32 noundef %i.j) #17 ; 0 uses
  br label %vtd_iova_to_fspte.exit.thread

bb.bp:                                            ; preds = %vtd_iova_ss_range_check.exit.i
  %i.iz = select i1 %4, i64 2, i64 1
  %i.ja = zext nneg i8 %i.ds to i64
  %notmask.i.i178 = shl nsw i64 -1, %i.ja
  %i.jb = and i64 %notmask.i.i178, 9223372036854771712
  %i.jc = xor i64 %i.jb, 9223372036854771712
  br label %vtd_iova_level_offset.exit.i179

vtd_iova_level_offset.exit.i179:                  ; preds = %bb.cb, %bb.bp
  %.3225 = phi i8 [ 1, %bb.bp ], [ %i.kl, %bb.cb ]
  %.3 = phi i8 [ 1, %bb.bp ], [ %i.kn, %bb.cb ]
  %.055.i = phi i32 [ %.0.i58.i, %bb.bp ], [ %i.lb, %bb.cb ] ; 10 uses
  %.054.i = phi i64 [ %.0.i.i169, %bb.bp ], [ %i.la, %bb.cb ]
  %i.jd = mul nuw nsw i32 %.055.i, 9
  %i.je = add nuw nsw i32 %i.jd, 3
  %i.jf = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jg = lshr i64 %3, %i.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !14
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = and i64 %i.jh, 4088
  %i.jj = add nuw i64 %i.ji, %.054.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !13
  fence seq_cst
  %i.jk = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.jj, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 4, 65) 8, i1 noundef zeroext false) #17
  %.not.i60.i = icmp ne i32 %i.jk, 0
  %i.jl = load i64, ptr %i.a, align 8             ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.jm = icmp eq i64 %i.jl, -1
  %i.jn = select i1 %.not.i60.i, i1 true, i1 %i.jm
  br i1 %i.jn, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %vtd_iova_level_offset.exit.i179
  %i.jo = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_sspte.print_once_.258, ptr noundef nonnull @.str.259, ptr noundef nonnull @__func__.vtd_iova_to_sspte, i64 noundef %3, i32 noundef %i.j) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.jp = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false), !annotation !14
  %.val6.i63.i = load i64, ptr %19, align 8
  %i.jr = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val6.i63.i, ptr noundef nonnull %8, i32 noundef %i.j) ; 0 uses
  %i.js = load i8, ptr %i.dn, align 2, !range !15, !noundef !16
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jv = load i64, ptr %i.ju, align 8
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = lshr i32 %i.jw, 2
  %i.jy = and i32 %i.jx, 3
  %i.jz = or disjoint i32 %i.jy, 4
  br label %vtd_get_iova_level.exit64.i

bb.bt:                                            ; preds = %bb.br
  %i.ka = load i64, ptr %8, align 8
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = lshr i32 %i.kb, 2
  %i.kd = and i32 %i.kc, 7
  %i.ke = add nuw nsw i32 %i.kd, 2
  br label %vtd_get_iova_level.exit64.i

bb.bu:                                            ; preds = %bb.bq
  %i.kf = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.val.i61.i = load i64, ptr %i.kf, align 8
  %i.kg = trunc i64 %.val.i61.i to i32
  %i.kh = and i32 %i.kg, 7
  %i.ki = add nuw nsw i32 %i.kh, 2
  br label %vtd_get_iova_level.exit64.i

vtd_get_iova_level.exit64.i:                      ; preds = %bb.bu, %bb.bt, %bb.bs
  %.0.i62.i = phi i32 [ %i.jz, %bb.bs ], [ %i.ke, %bb.bt ], [ %i.ki, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.kj = icmp eq i32 %.055.i, %.0.i62.i
  %..i185.neg = select i1 %i.kj, i32 3, i32 7
  br label %vtd_iova_to_fspte.exit.thread

bb.bv:                                            ; preds = %vtd_iova_level_offset.exit.i179
  %i.kk = trunc i64 %i.jl to i8                   ; 2 uses
  %i.kl = and i8 %.3225, %i.kk                    ; 2 uses
  %i.km = lshr i8 %i.kk, 1
  %i.kn = and i8 %i.km, %.3                       ; 2 uses
  %i.ko = and i64 %i.jl, %i.iz
  %.not.i180 = icmp eq i64 %i.ko, 0
  br i1 %.not.i180, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kp = zext i1 %4 to i32
  %i.kq = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_sspte.print_once_.260, ptr noundef nonnull @.str.261, ptr noundef nonnull @__func__.vtd_iova_to_sspte, i64 noundef %3, i32 noundef %.055.i, i64 noundef %i.jl, i32 noundef %i.kp, i32 noundef %i.j) #17 ; 0 uses
  %.neg282 = select i1 %4, i32 5, i32 6
  br label %vtd_iova_to_fspte.exit.thread

bb.bx:                                            ; preds = %bb.bv
  %i.kr = icmp ult i32 %.055.i, 5
  br i1 %i.kr, label %vtd_sspte_nonzero_rsvd.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @__assert_fail(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 1124, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_sspte_nonzero_rsvd) #19
  unreachable

vtd_sspte_nonzero_rsvd.exit.i:                    ; preds = %bb.bx
  %i.ks = and i32 %.055.i, 6
  %or.cond.i.i181 = icmp ne i32 %i.ks, 2
  %i.kt = and i64 %i.jl, 128                      ; 2 uses
  %.not11.i.i182 = icmp eq i64 %i.kt, 0
  %or.cond12.i.i183 = or i1 %or.cond.i.i181, %.not11.i.i182
  %i.ku = zext nneg i32 %.055.i to i64
  %.0.in.v.i.i184 = select i1 %or.cond12.i.i183, ptr @vtd_spte_rsvd, ptr @vtd_spte_rsvd_large
  %.0.in.i66.i = getelementptr inbounds nuw [8 x i8], ptr %.0.in.v.i.i184, i64 %i.ku
  %.0.i67.i = load i64, ptr %.0.in.i66.i, align 8
  %i.kv = and i64 %.0.i67.i, %i.jl
  %.not68.i = icmp eq i64 %i.kv, 0
  br i1 %.not68.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %vtd_sspte_nonzero_rsvd.exit.i
  %i.kw = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_iova_to_sspte.print_once_.262, ptr noundef nonnull @.str.263, ptr noundef nonnull @__func__.vtd_iova_to_sspte, i64 noundef %3, i32 noundef %.055.i, i64 noundef %i.jl, i32 noundef %i.j) #17 ; 0 uses
  br label %vtd_iova_to_fspte.exit.thread

bb.ca:                                            ; preds = %vtd_sspte_nonzero_rsvd.exit.i
  %i.kx = icmp eq i32 %.055.i, 1
  %i.ky = icmp ne i64 %i.kt, 0
  %i.kz = or i1 %i.kx, %i.ky
  br i1 %i.kz, label %vtd_pt_level_page_mask.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.la = and i64 %i.jl, %i.jc
  %i.lb = add nsw i32 %.055.i, -1
  br label %vtd_iova_level_offset.exit.i179

vtd_pt_level_page_mask.exit:                      ; preds = %bb.ca, %vtd_set_flag_in_pte.exit._crit_edge.i
  %.lcssa394.sink = phi i64 [ %i.fw, %vtd_set_flag_in_pte.exit._crit_edge.i ], [ %i.jl, %bb.ca ] ; 5 uses
  %.pre-phi352 = phi i64 [ %i.fq, %vtd_set_flag_in_pte.exit._crit_edge.i ], [ %i.jf, %bb.ca ]
  %.0132267 = phi i8 [ 1, %vtd_set_flag_in_pte.exit._crit_edge.i ], [ 2, %bb.ca ]
  %.0219266 = phi i8 [ %i.gy, %vtd_set_flag_in_pte.exit._crit_edge.i ], [ %i.kn, %bb.ca ]
  %.0222265 = phi i8 [ 1, %vtd_set_flag_in_pte.exit._crit_edge.i ], [ %i.kl, %bb.ca ]
  %.0227264 = phi i32 [ %.2229, %vtd_set_flag_in_pte.exit._crit_edge.i ], [ %.055.i, %bb.ca ] ; 3 uses
  %.sink413 = load i8, ptr %i.dr, align 4
  %i.lc = zext nneg i8 %.sink413 to i64
  %notmask.i = shl nsw i64 -1, %i.lc
  %i.ld = and i64 %notmask.i, 9223372036854771712
  %i.le = xor i64 %i.ld, 9223372036854771712
  %i.lf = and i64 %i.le, %.lcssa394.sink          ; 3 uses
  %notmask.i190 = shl nsw i64 -1, %.pre-phi352    ; 5 uses
  %i.lg = icmp samesign ult i64 %i.lf, 4277141504
  %i.lh = sub nuw i64 %notmask.i190, %i.lf
  %i.li = icmp ult i64 %i.lh, -4276092928
  %or.cond150 = select i1 %i.lg, i1 %i.li, i1 false
  br i1 %or.cond150, label %bb.cc, label %vtd_pt_level_page_mask.exit193

bb.cc:                                            ; preds = %vtd_pt_level_page_mask.exit
  %i.lj = sub nsw i64 0, %notmask.i190
  %i.lk = zext i1 %4 to i32
  %i.ll = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @vtd_do_iommu_translate.print_once_, ptr noundef nonnull @.str.247, ptr noundef nonnull @__func__.vtd_do_iommu_translate, i64 noundef %3, i32 noundef %.0227264, i64 noundef %.lcssa394.sink, i32 noundef %i.lk, i64 noundef %i.lf, i64 noundef %i.lj, i32 noundef %i.j) #17 ; 0 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.f, i64 4165
  %i.ln = load i8, ptr %i.lm, align 1, !range !15, !noundef !16
  %i.lo = trunc nuw i8 %i.ln to i1
  %.neg = select i1 %i.lo, i32 135, i32 14
  br label %vtd_iova_to_fspte.exit.thread

vtd_iova_to_fspte.exit.thread:                    ; preds = %vtd_set_flag_in_pte.exit.i, %bb.aw, %bb.av, %bb.bw, %bb.bz, %bb.bo, %vtd_get_iova_level.exit64.i, %bb.ba, %bb.ap, %vtd_get_iova_level.exit71.i, %bb.cc
  %.0227250.ph = phi i32 [ %.0227264, %bb.cc ], [ -1, %bb.bz ], [ -1, %bb.bo ], [ -1, %bb.bw ], [ -1, %vtd_get_iova_level.exit64.i ], [ %.0.i64.i, %bb.ap ], [ %.2229, %bb.ba ], [ %.2229, %vtd_get_iova_level.exit71.i ], [ %.2229, %bb.av ], [ %.2229, %bb.aw ], [ %.2229, %vtd_set_flag_in_pte.exit.i ] ; 3 uses
  %.2.ph.neg = phi i32 [ %.neg, %bb.cc ], [ 12, %bb.bz ], [ 4, %bb.bo ], [ %.neg282, %bb.bw ], [ %..i185.neg, %vtd_get_iova_level.exit64.i ], [ 128, %bb.ap ], [ 114, %bb.ba ], [ %..i.neg, %vtd_get_iova_level.exit71.i ], [ 145, %vtd_set_flag_in_pte.exit.i ], [ 129, %bb.aw ], [ 113, %bb.av ] ; 3 uses
  %i.lp = icmp eq i32 %6, 2
  br i1 %i.lp, label %vtd_is_recoverable_fault.exit, label %vtd_is_recoverable_fault.exit.thread

vtd_is_recoverable_fault.exit:                    ; preds = %vtd_iova_to_fspte.exit.thread
  %i.lq = zext nneg i32 %.2.ph.neg to i64
  %i.lr = getelementptr inbounds nuw i8, ptr @vtd_recoverable_faults, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !range !15, !noundef !16
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.co, label %vtd_is_recoverable_fault.exit.thread

vtd_is_recoverable_fault.exit.thread:             ; preds = %bb.ax, %vtd_iova_to_fspte.exit.thread, %vtd_is_recoverable_fault.exit
  %i.lu = phi i32 [ %.2.ph.neg, %vtd_is_recoverable_fault.exit ], [ %.2.ph.neg, %vtd_iova_to_fspte.exit.thread ], [ 133, %bb.ax ]
  %.0227250.ph280 = phi i32 [ %.0227250.ph, %vtd_is_recoverable_fault.exit ], [ %.0227250.ph, %vtd_iova_to_fspte.exit.thread ], [ %.2229, %bb.ax ]
  %i.lv = load i8, ptr %i.d, align 1, !range !15, !noundef !16
  %i.lw = trunc nuw i8 %i.lv to i1
  call fastcc void @vtd_report_fault(ptr noundef %i.f, i32 noundef %i.lu, i1 noundef zeroext %i.lw, i16 noundef zeroext %i.n, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %i.o, i32 noundef %i.j)
  br label %bb.co

vtd_pt_level_page_mask.exit193:                   ; preds = %vtd_pt_level_page_mask.exit
  %i.lx = shl nuw nsw i8 %.0219266, 1
  %i.ly = add nuw nsw i8 %.0222265, %i.lx         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.lz = load i8, ptr %i.cm, align 8, !range !15, !noundef !16
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %vtd_pt_level_page_mask.exit193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !annotation !14
  %.val.i = load i64, ptr %19, align 8
  %i.mb = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef nonnull readonly %i.f, i64 %.val.i, ptr noundef nonnull %7, i32 noundef %i.j) ; 0 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.md = load i64, ptr %i.mc, align 8
  br label %vtd_get_iotlb_gfn.exit.i

bb.ce:                                            ; preds = %vtd_pt_level_page_mask.exit193
  %i.me = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.mf = load i64, ptr %i.me, align 8
  %i.mg = lshr i64 %i.mf, 8
  br label %vtd_get_iotlb_gfn.exit.i

vtd_get_iotlb_gfn.exit.i:                         ; preds = %bb.ce, %bb.cd
  %.0.in.i = phi i64 [ %i.md, %bb.cd ], [ %i.mg, %bb.ce ] ; 2 uses
  %.0.i194 = trunc i64 %.0.in.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.mh = call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #18 ; 8 uses
  %i.mi = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #18 ; 5 uses
  %i.mj = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i195 = icmp eq i32 %i.mj, 0
  br i1 %.not.i.i195, label %trace_vtd_iotlb_page_update.exit.i, label %bb.cf, !prof !17

bb.cf:                                            ; preds = %vtd_get_iotlb_gfn.exit.i
  %i.mk = load i16, ptr @_TRACE_VTD_IOTLB_PAGE_UPDATE_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.mk, 0
  br i1 %.not4.i.i, label %trace_vtd_iotlb_page_update.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ml = load i32, ptr @qemu_loglevel, align 4
  %i.mm = and i32 %i.ml, 32768
  %.not5.i.i = icmp eq i32 %i.mm, 0
  br i1 %.not5.i.i, label %trace_vtd_iotlb_page_update.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mn = and i32 %i.m, 65535
  %i.mo = trunc i64 %.0.in.i to i32
  %i.mp = and i32 %i.mo, 65535
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.266, i32 noundef %i.mn, i64 noundef %3, i64 noundef %.lcssa394.sink, i32 noundef %i.mp) #17
  br label %trace_vtd_iotlb_page_update.exit.i

trace_vtd_iotlb_page_update.exit.i:               ; preds = %bb.ch, %bb.cg, %bb.cf, %vtd_get_iotlb_gfn.exit.i
  %i.mq = load ptr, ptr %i.w, align 8
  %i.mr = call i32 @g_hash_table_size(ptr noundef %i.mq) #17
  %i.ms = icmp ugt i32 %i.mr, 1023
  br i1 %i.ms, label %bb.ci, label %vtd_update_iotlb.exit

bb.ci:                                            ; preds = %trace_vtd_iotlb_page_update.exit.i
  %i.mt = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i32.i = icmp eq i32 %i.mt, 0
  br i1 %.not.i32.i, label %trace_vtd_iotlb_reset.exit.i, label %bb.cj, !prof !17

bb.cj:                                            ; preds = %bb.ci
  %i.mu = load i16, ptr @_TRACE_VTD_IOTLB_RESET_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.mu, 0
  br i1 %.not1.i.i, label %trace_vtd_iotlb_reset.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mv = load i32, ptr @qemu_loglevel, align 4
  %i.mw = and i32 %i.mv, 32768
  %.not2.i.i196 = icmp eq i32 %i.mw, 0
  br i1 %.not2.i.i196, label %trace_vtd_iotlb_reset.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.265) #17
  br label %trace_vtd_iotlb_reset.exit.i

trace_vtd_iotlb_reset.exit.i:                     ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %.val.i197 = load ptr, ptr %i.w, align 8        ; 2 uses
  %.not.i33.i = icmp eq ptr %.val.i197, null
  br i1 %.not.i33.i, label %bb.cm, label %vtd_reset_iotlb_locked.exit.i

bb.cm:                                            ; preds = %trace_vtd_iotlb_reset.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 375, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_reset_iotlb_locked) #19
  unreachable

vtd_reset_iotlb_locked.exit.i:                    ; preds = %trace_vtd_iotlb_reset.exit.i
  call void @g_hash_table_remove_all(ptr noundef nonnull %.val.i197) #17
  br label %vtd_update_iotlb.exit

vtd_update_iotlb.exit:                            ; preds = %trace_vtd_iotlb_page_update.exit.i, %vtd_reset_iotlb_locked.exit.i
  %i.mx = and i64 %notmask.i190, %3               ; 2 uses
  %i.my = lshr i64 %i.mx, 12                      ; 2 uses
  store i64 %i.my, ptr %i.mh, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i16 %.0.i194, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store i64 %.lcssa394.sink, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  store i8 %i.ly, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  store i64 %notmask.i190, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store i32 %i.j, ptr %i.nd, align 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mh, i64 33
  store i8 %.0132267, ptr %i.ne, align 1
  store i64 %i.my, ptr %i.mi, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  store i16 %i.n, ptr %i.nf, align 4
  %i.ng = trunc nuw nsw i32 %.0227264 to i8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mi, i64 14
  store i8 %i.ng, ptr %i.nh, align 2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store i32 %i.j, ptr %i.ni, align 8
  %i.nj = load ptr, ptr %i.w, align 8
  %i.nk = call i32 @g_hash_table_replace(ptr noundef %i.nj, ptr noundef nonnull %i.mi, ptr noundef nonnull %i.mh) #17 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %vtd_update_iotlb.exit, %trace_vtd_iotlb_page_hit.exit
  %.pre-phi354 = phi i64 [ %i.mx, %vtd_update_iotlb.exit ], [ %.pre353, %trace_vtd_iotlb_page_hit.exit ]
  %.1233 = phi i64 [ %.lcssa394.sink, %vtd_update_iotlb.exit ], [ %i.aq, %trace_vtd_iotlb_page_hit.exit ]
  %.0135 = phi i64 [ %notmask.i190, %vtd_update_iotlb.exit ], [ %i.au, %trace_vtd_iotlb_page_hit.exit ] ; 2 uses
  %.0133 = phi i8 [ %i.ly, %vtd_update_iotlb.exit ], [ %i.as, %trace_vtd_iotlb_page_hit.exit ]
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  %i.nl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.pre-phi354, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.f, i64 6340
  %i.nn = load i8, ptr %i.nm, align 4
  %i.no = zext nneg i8 %i.nn to i64
  %notmask.i198 = shl nsw i64 -1, %i.no
  %i.np = and i64 %notmask.i198, 9223372036854771712
  %i.nq = xor i64 %i.np, 9223372036854771712
  %i.nr = and i64 %.1233, %i.nq
  %i.ns = and i64 %i.nr, %.0135
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ns, ptr %i.nt, align 8
  %i.nu = xor i64 %.0135, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.nu, ptr %i.nv, align 8
  %i.nw = zext i8 %.0133 to i32                   ; 2 uses
  %i.nx = and i32 %i.nw, 253
  %i.ny = select i1 %4, i32 %i.nw, i32 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.ny, ptr %i.nz, align 8
  br label %bb.cr

.thread369:                                       ; preds = %bb.s, %bb.o
  %.sink416 = phi i32 [ %i.bp, %bb.o ], [ %.0134, %bb.s ]
  %i.oa = sub nsw i32 0, %.sink416
  %i.ob = load i8, ptr %i.d, align 1, !range !15, !noundef !16
  %i.oc = trunc nuw i8 %i.ob to i1
  call fastcc void @vtd_report_fault(ptr noundef nonnull %i.f, i32 noundef %i.oa, i1 noundef zeroext %i.oc, i16 noundef zeroext %i.n, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext false, i32 noundef 0)
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  %i.od = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.od, i8 0, i64 16, i1 false)
  br label %bb.cq

bb.co:                                            ; preds = %vtd_is_recoverable_fault.exit, %vtd_is_recoverable_fault.exit.thread
  %.1228 = phi i32 [ %.0227250.ph, %vtd_is_recoverable_fault.exit ], [ %.0227250.ph280, %vtd_is_recoverable_fault.exit.thread ] ; 2 uses
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.1, i32 noundef 192) #17
  %i.oe = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i8 0, i64 16, i1 false)
  switch i32 %.1228, label %vtd_pt_level_page_mask.exit201 [
    i32 -1, label %bb.cq
    i32 0, label %bb.cp
  ]

bb.cp:                                            ; preds = %bb.co
  call void @__assert_fail(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 299, ptr noundef nonnull @__PRETTY_FUNCTION__.vtd_pt_level_shift) #19
  unreachable

vtd_pt_level_page_mask.exit201:                   ; preds = %bb.co
  %i.of = mul nuw nsw i32 %.1228, 9
  %i.og = add nuw nsw i32 %i.of, 3
  %i.oh = zext nneg i32 %i.og to i64
  %notmask.i200 = shl nsw i64 -1, %i.oh
  %i.oi = xor i64 %notmask.i200, -1
  br label %bb.cq

bb.cq:                                            ; preds = %.thread369, %bb.co, %vtd_pt_level_page_mask.exit201
  %i.oj = phi i64 [ %i.oi, %vtd_pt_level_page_mask.exit201 ], [ 4095, %bb.co ], [ 4095, %.thread369 ]
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.oj, ptr %i.ok, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.ol, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn, %vtd_pt_enable_fast_path.exit
  %.0 = phi i1 [ true, %bb.cn ], [ true, %vtd_pt_enable_fast_path.exit ], [ false, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  ret i1 %.0
}

declare i32 @g_hash_table_size(ptr noundef) local_unnamed_addr #4

declare i32 @g_hash_table_replace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtd_generate_page_request_event(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.MSIMessage, align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2144 ; 3 uses
  %i.b = and i32 %1, 3
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.val5.i = load i32, ptr %i.a, align 1          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3824
  %.val.i = load i32, ptr %i.c, align 1
  %i.d = xor i32 %.val.i, -1
  %i.e = and i32 %.val5.i, %i.d
  %i.f = or i32 %.val5.i, 1073741824
  store i32 %i.f, ptr %i.a, align 1
  %.not5 = icmp sgt i32 %i.e, -1
  br i1 %.not5, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %.val5.i, -1073741825
  store i32 %i.g, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !annotation !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %.val.i.i = load i32, ptr %i.i, align 1
  %i.j = zext i32 %.val.i.i to i64                ; 2 uses
  store i64 %i.j, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2148
  %.val.i6.i = load i32, ptr %i.k, align 1        ; 2 uses
  store i32 %.val.i6.i, ptr %i.h, align 8
  %i.l = zext i32 %.val.i6.i to i64
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %vtd_generate_interrupt.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.n = load i16, ptr @_TRACE_VTD_IRQ_GENERATE_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.n, 0
  br i1 %.not2.i.i, label %vtd_generate_interrupt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not3.i.i = icmp eq i32 %i.p, 0
  br i1 %.not3.i.i, label %vtd_generate_interrupt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i64 noundef %i.j, i64 noundef range(i64 0, 4294967296) %i.l) #17
  br label %vtd_generate_interrupt.exit

vtd_generate_interrupt.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.q = tail call ptr @apic_get_class(ptr noundef null) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull %2) #17, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %vtd_generate_interrupt.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -22, 1) i32 @vtd_pri_perform_implicit_invalidation(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.VTDIOTLBPageInvInfo, align 8 ; 8 uses
  %3 = alloca %struct.VTDContextEntry, align 8    ; 5 uses
  %4 = alloca %struct.VTDPASIDEntry, align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.b = load ptr, ptr %i.a, align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !annotation !14
  %i.c = load ptr, ptr %0, align 16
  %i.d = tail call i32 @pci_bus_num(ptr noundef %i.c) #17
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 8
  %i.h = call i32 @vtd_dev_to_context_entry(ptr noundef %i.b, i8 noundef zeroext %i.e, i8 noundef zeroext %i.g, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %.val = load i64, ptr %3, align 8
  %i.k = call fastcc i32 @vtd_ce_get_pasid_entry(ptr noundef %i.b, i64 %.val, ptr noundef nonnull %4, i32 noundef %i.j)
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %4, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i32 %i.m, 6
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %cond = icmp eq i32 %i.o, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i16                    ; 3 uses
  %i.s = load i32, ptr %i.i, align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 0, ptr %2, align 8, !annotation !14
  store i16 %i.r, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.s, ptr %i.t, align 4
end_hunk_0
