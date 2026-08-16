begin_hunk_0_@fetch_pte:bb.a
  %i.h = trunc i64 %i.g to i8
  %i.i = and i8 %i.h, 7                           ; 5 uses
  %.off.i = add nsw i8 %i.i, -1
  %switch.i = icmp ult i8 %.off.i, 6
  br i1 %switch.i, label %bb.c, label %amdvi_get_top_pt_level_and_perms.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i8 %i.i, 5
  br i1 %i.j, label %amdvi_get_top_pt_level_and_perms.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %narrow.i = mul nuw nsw i8 %i.i, 9
  %narrow11.i = add nuw nsw i8 %narrow.i, 12
  %i.k = zext nneg i8 %narrow11.i to i64
  %.highbits.i = lshr i64 %1, %i.k
  %.highbits.fr.i = freeze i64 %.highbits.i
  %.not.i = icmp eq i64 %.highbits.fr.i, 0
  br i1 %.not.i, label %amdvi_get_top_pt_level_and_perms.exit, label %amdvi_get_top_pt_level_and_perms.exit.thread

amdvi_get_top_pt_level_and_perms.exit:            ; preds = %bb.c, %bb.d
  %i.l = and i64 %2, 4503599627366400
  %narrow63 = mul nuw nsw i8 %i.i, 9
  %i.m = zext nneg i8 %narrow63 to i64            ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 3
  %i.o = lshr i64 %1, %i.n
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = and i64 %i.p, 4088
  %i.r = or disjoint i64 %i.q, %i.l               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 16             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 0, ptr %i.b, align 8, !annotation !9
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !16
  fence seq_cst
  %i.w = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef range(i64 0, 4503599627370489) %i.r, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef range(i64 4, 33) 8, i1 noundef zeroext false) #12
  %.not.i43 = icmp eq i32 %i.w, 0
  br i1 %.not.i43, label %amdvi_get_pte_entry.exit, label %bb.e

bb.e:                                             ; preds = %amdvi_get_top_pt_level_and_perms.exit
  %i.x = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %amdvi_get_pte_entry.exit.thread, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.y = load i16, ptr @_TRACE_AMDVI_GET_PTE_HWERROR_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.y, 0
  br i1 %.not1.i.i, label %amdvi_get_pte_entry.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 32768
  %.not2.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not2.i.i, label %amdvi_get_pte_entry.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.108, i64 noundef range(i64 0, 4503599627370489) %i.r) #12
  br label %amdvi_get_pte_entry.exit.thread

amdvi_get_pte_entry.exit.thread:                  ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.ab = zext i8 %i.v to i64
  %i.ac = or disjoint i64 %i.ab, 4611686018427387904
  call fastcc void @amdvi_log_event(ptr noundef %i.t, i64 %i.ac, i64 0)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 824
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6 ; 2 uses
  %.val.i.i.i = load i16, ptr %i.ah, align 1
  %i.ai = or i16 %.val.i.i.i, 2048
  store i16 %i.ai, ptr %i.ah, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  store i64 -1, ptr %3, align 8
  br label %amdvi_get_top_pt_level_and_perms.exit.thread

amdvi_get_pte_entry.exit:                         ; preds = %amdvi_get_top_pt_level_and_perms.exit
  %i.aj = load i64, ptr %i.b, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  store i64 %i.aj, ptr %3, align 8
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %amdvi_get_top_pt_level_and_perms.exit.thread, label %bb.i

bb.i:                                             ; preds = %amdvi_get_pte_entry.exit
  %i.al = shl nuw nsw i64 8, %i.m
  store i64 %i.al, ptr %4, align 8
  %i.am = and i32 %i.d, 3
  %.pre = load i64, ptr %3, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %amdvi_get_pte_entry.exit51
  %i.an = phi i64 [ %.pre, %bb.i ], [ %i.bw, %amdvi_get_pte_entry.exit51 ] ; 5 uses
  %.058 = phi i8 [ %i.i, %bb.i ], [ %i.av, %amdvi_get_pte_entry.exit51 ]
  %.057 = phi i32 [ %i.am, %bb.i ], [ %i.aq, %amdvi_get_pte_entry.exit51 ]
  %i.ao = lshr i64 %i.an, 61
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = and i32 %.057, %i.ap                    ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = and i64 %i.an, 1
  %.not38 = icmp eq i64 %i.as, 0
  %or.cond = or i1 %.not38, %i.ar
  br i1 %or.cond, label %amdvi_get_top_pt_level_and_perms.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = lshr i64 %i.an, 9                       ; 3 uses
  %i.au = trunc i64 %i.at to i8
  %i.av = and i8 %i.au, 7                         ; 4 uses
  %.off = add nsw i8 %i.av, -1
  %switch = icmp ult i8 %.off, 6
  br i1 %switch, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %.not39 = icmp samesign ugt i8 %.058, %i.av
  br i1 %.not39, label %bb.m, label %amdvi_get_top_pt_level_and_perms.exit.thread

bb.m:                                             ; preds = %bb.l
  %narrow = mul nuw nsw i8 %i.av, 9
  %narrow40 = add nuw nsw i8 %narrow, 3
  %i.aw = zext nneg i8 %narrow40 to i64
  %i.ax = shl nuw nsw i64 1, %i.aw
  store i64 %i.ax, ptr %4, align 8
  %i.ay = load i64, ptr %3, align 8
  %i.az = and i64 %i.ay, 4503599627366400
  %i.ba = and i64 %i.at, 7
  %i.bb = mul nuw nsw i64 %i.ba, 9
  %i.bc = add nuw nsw i64 %i.bb, 3
  %i.bd = lshr i64 %1, %i.bc
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = and i64 %i.be, 4088
  %i.bg = or disjoint i64 %i.az, %i.bf            ; 2 uses
  %i.bh = load ptr, ptr %i.s, align 16            ; 2 uses
  %i.bi = load i8, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !annotation !9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !16
  fence seq_cst
  %i.bj = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef range(i64 0, 4503599627370489) %i.bg, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 4, 33) 8, i1 noundef zeroext false) #12
  %.not.i44 = icmp eq i32 %i.bj, 0
  br i1 %.not.i44, label %amdvi_get_pte_entry.exit51, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i45 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i45, label %amdvi_get_pte_entry.exit51.thread, label %bb.o, !prof !15

bb.o:                                             ; preds = %bb.n
  %i.bl = load i16, ptr @_TRACE_AMDVI_GET_PTE_HWERROR_DSTATE, align 2
  %.not1.i.i46 = icmp eq i16 %i.bl, 0
  br i1 %.not1.i.i46, label %amdvi_get_pte_entry.exit51.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load i32, ptr @qemu_loglevel, align 4
  %i.bn = and i32 %i.bm, 32768
  %.not2.i.i47 = icmp eq i32 %i.bn, 0
  br i1 %.not2.i.i47, label %amdvi_get_pte_entry.exit51.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.108, i64 noundef range(i64 0, 4503599627370489) %i.bg) #12
  br label %amdvi_get_pte_entry.exit51.thread

amdvi_get_pte_entry.exit51.thread:                ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %i.bo = zext i8 %i.bi to i64
  %i.bp = or disjoint i64 %i.bo, 4611686018427387904
  call fastcc void @amdvi_log_event(ptr noundef %i.bh, i64 %i.bp, i64 0)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 824
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 168
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 6 ; 2 uses
  %.val.i.i.i49 = load i16, ptr %i.bu, align 1
  %i.bv = or i16 %.val.i.i.i49, 2048
  store i16 %i.bv, ptr %i.bu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i64 -1, ptr %3, align 8
  br label %amdvi_get_top_pt_level_and_perms.exit.thread

amdvi_get_pte_entry.exit51:                       ; preds = %bb.m
  %i.bw = load i64, ptr %i.a, align 8             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i64 %i.bw, ptr %3, align 8
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %amdvi_get_top_pt_level_and_perms.exit.thread, label %bb.j, !llvm.loop !25

bb.r:                                             ; preds = %bb.k
  %i.by = and i64 %i.at, 7
  %.off41 = add nsw i64 %i.by, -1
  %switch42 = icmp ult i64 %.off41, 6
  br i1 %switch42, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.14, i32 noundef 847, ptr noundef nonnull @__PRETTY_FUNCTION__.fetch_pte) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bz = and i64 %i.an, 3584
  %i.ca = icmp eq i64 %i.bz, 3584
  br i1 %i.ca, label %large_pte_page_size.exit, label %amdvi_get_top_pt_level_and_perms.exit.thread

large_pte_page_size.exit:                         ; preds = %bb.t
  %i.cb = and i64 %i.an, -4096
  %i.cc = xor i64 %i.cb, -4096
  %5 = call range(i64 12, 65) i64 @llvm.cttz.i64(i64 %i.cc, i1 true)
  %i.cd = shl nuw i64 2, %5
  store i64 %i.cd, ptr %4, align 8
  br label %amdvi_get_top_pt_level_and_perms.exit.thread

amdvi_get_top_pt_level_and_perms.exit.thread:     ; preds = %amdvi_get_pte_entry.exit51, %bb.l, %bb.j, %bb.d, %bb.a, %bb.b, %amdvi_get_pte_entry.exit51.thread, %amdvi_get_pte_entry.exit.thread, %bb.t, %large_pte_page_size.exit, %amdvi_get_pte_entry.exit
  %.0 = phi i32 [ -4, %amdvi_get_pte_entry.exit.thread ], [ -5, %amdvi_get_pte_entry.exit51.thread ], [ -4, %amdvi_get_pte_entry.exit ], [ -4, %bb.b ], [ -4, %bb.d ], [ -4, %bb.a ], [ 0, %large_pte_page_size.exit ], [ 0, %bb.t ], [ -5, %bb.l ], [ -5, %amdvi_get_pte_entry.exit51 ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

declare ptr @iova_tree_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @iova_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @memory_region_notify_iommu(ptr noundef, i32 noundef, ptr noundef byval(%struct.IOMMUTLBEvent) align 8) local_unnamed_addr #3

declare i32 @g_hash_table_foreach_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @amdvi_iotlb_remove_by_domid(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i16, ptr %2, align 2
  %i.b = load i16, ptr %1, align 8
  %i.c = icmp eq i16 %i.b, %i.a
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @amdvi_iotlb_remove_by_devid(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i16, ptr %2, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2
  %i.d = icmp eq i16 %i.c, %i.a
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

declare i32 @g_hash_table_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @x86_iommu_iec_notify_all(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @amdvi_mem_ir_read(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2, i32 %3, i64 %4) #8 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @amdvi_mem_ir_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 %4) #2 {
bb.a:
  %5 = alloca %struct.MSIMessage, align 8         ; 6 uses
  %6 = alloca %struct.MSIMessage, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.b = add i64 %1, 4276092928
  store i64 %i.b, ptr %5, align 8
  %i.c = trunc i64 %2 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.c, ptr %i.d, align 8
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_amdvi_mem_ir_write_req.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_AMDVI_MEM_IR_WRITE_REQ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.f, 0
  br i1 %.not3.i, label %trace_amdvi_mem_ir_write_req.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not4.i = icmp eq i32 %i.h, 0
  br i1 %.not4.i, label %trace_amdvi_mem_ir_write_req.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.121, i64 noundef %1, i64 noundef %2, i32 noundef %3) #12
  br label %trace_amdvi_mem_ir_write_req.exit

trace_amdvi_mem_ir_write_req.exit:                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = and i64 %4, 4294967296
  %.not = icmp eq i64 %i.i, 0
  %i.j = lshr i64 %4, 6
  %i.k = trunc i64 %i.j to i16
  %.09 = select i1 %.not, i16 %i.k, i16 160       ; 2 uses
  %i.l = call fastcc i32 @amdvi_int_remap_msi(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef zeroext %.09)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %trace_amdvi_mem_ir_write_req.exit
  %i.n = zext i16 %.09 to i32
  %i.o = call zeroext i1 (ptr, ptr, ...) @error_report_once_cond(ptr noundef nonnull @amdvi_mem_ir_write.print_once_, ptr noundef nonnull @.str.120, i32 noundef %i.n) #12 ; 0 uses
  br label %trace_amdvi_mem_ir_write.exit

bb.f:                                             ; preds = %trace_amdvi_mem_ir_write_req.exit
  %i.p = call ptr @apic_get_class(ptr noundef null) #12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull %6) #12
  %i.s = load i64, ptr %6, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i10 = icmp eq i32 %i.w, 0
  br i1 %.not.i10, label %trace_amdvi_mem_ir_write.exit, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.x = load i16, ptr @_TRACE_AMDVI_MEM_IR_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.x, 0
  br i1 %.not2.i, label %trace_amdvi_mem_ir_write.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr @qemu_loglevel, align 4
  %i.z = and i32 %i.y, 32768
  %.not3.i11 = icmp eq i32 %i.z, 0
  br i1 %.not3.i11, label %trace_amdvi_mem_ir_write.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.154, i64 noundef %i.s, i64 noundef range(i64 0, 4294967296) %i.v) #12
  br label %trace_amdvi_mem_ir_write.exit

trace_amdvi_mem_ir_write.exit:                    ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -3, 1) i32 @amdvi_int_remap_msi(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i16 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 6 uses
  %4 = alloca %struct.X86IOMMUIrq, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.14, i32 noundef 2222, ptr noundef nonnull @__PRETTY_FUNCTION__.amdvi_int_remap_msi) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i16 %3, -1
  %spec.store.select = select i1 %i.d, i16 160, i16 %3 ; 2 uses
  %i.e = load i64, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %trace_amdvi_ir_remap_msi_req.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr @_TRACE_AMDVI_IR_REMAP_MSI_REQ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.j, 0
  br i1 %.not3.i, label %trace_amdvi_ir_remap_msi_req.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %trace_amdvi_ir_remap_msi_req.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = and i16 %spec.store.select, 255
  %i.n = zext nneg i16 %i.m to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.133, i64 noundef %i.e, i64 noundef range(i64 0, 4294967296) %i.h, i32 noundef %i.n) #12
  br label %trace_amdvi_ir_remap_msi_req.exit

trace_amdvi_ir_remap_msi_req.exit:                ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %trace_amdvi_ir_remap_msi_req.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.p = load i64, ptr %i.o, align 8
  %.not44 = icmp eq i64 %i.p, 0
  br i1 %.not44, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %trace_amdvi_ir_remap_msi_req.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef 16, i1 noundef false) #12
  br label %bb.ah

bb.i:                                             ; preds = %bb.g
  %i.q = zext i16 %spec.store.select to i32
  %i.r = call fastcc zeroext i1 @amdvi_get_dte(ptr noundef nonnull %0, i32 noundef %i.q, ptr noundef %i.a)
  br i1 %i.r, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
end_hunk_0
