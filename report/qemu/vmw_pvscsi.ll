Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vmw_pvscsi?download=true
inline.NumInlined: 216
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pvscsi_process_io:bb.a
  %.not.i.i43.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i43.i, label %.lr.ph.i.i.i, label %.critedge.thread.i.i.i, !llvm.loop !20

.critedge.thread.i.i.i:                           ; preds = %trace_pvscsi_convert_sglist.exit.i.i.i, %.preheader.i.i.i
  %.sroa.0.1.lcssa.i.i.i = phi i64 [ %.sroa.0.049.i.i.i, %.preheader.i.i.i ], [ %i.dy, %trace_pvscsi_convert_sglist.exit.i.i.i ]
  %.sroa.7.1.lcssa.i.i.i = phi i64 [ %.sroa.7.050.i.i.i, %.preheader.i.i.i ], [ %i.dz, %trace_pvscsi_convert_sglist.exit.i.i.i ] ; 2 uses
  %.sroa.11.1.lcssa.i.i.i = phi i32 [ %.sroa.11.051.i.i.i, %.preheader.i.i.i ], [ %i.ea, %trace_pvscsi_convert_sglist.exit.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi i32 [ %.053.i.i.i, %.preheader.i.i.i ], [ %i.dr, %trace_pvscsi_convert_sglist.exit.i.i.i ] ; 2 uses
  %i.eh = zext i32 %.sroa.11.1.lcssa.i.i.i to i64
  %i.ei = call i64 @llvm.umin.i64(i64 %.02052.i.i.i, i64 %i.eh) ; 4 uses
  %i.ej = trunc nuw i64 %i.ei to i32
  call void @qemu_sglist_add(ptr noundef nonnull %i.di, i64 noundef %.sroa.7.1.lcssa.i.i.i, i64 noundef %i.ei) #7
  %i.ek = sub nuw i32 %.sroa.11.1.lcssa.i.i.i, %i.ej
  %i.el = add i64 %i.ei, %.sroa.7.1.lcssa.i.i.i
  %i.em = sub nuw i64 %.02052.i.i.i, %i.ei        ; 2 uses
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = icmp ult i32 %.1.lcssa.i.i.i, 2048
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %.preheader.i.i.i, label %pvscsi_build_sglist.exit.i, !llvm.loop !21

bb.ai:                                            ; preds = %.thread.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.et = load i64, ptr %i.es, align 8
  call void @qemu_sglist_add(ptr noundef nonnull %i.di, i64 noundef %i.er, i64 noundef %i.et) #7
  br label %pvscsi_build_sglist.exit.i

pvscsi_build_sglist.exit.i:                       ; preds = %.critedge.thread.i.i.i, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %bb.ai, %bb.ab
  %i.eu = load ptr, ptr %i.av, align 8
  %i.ev = call i32 @scsi_req_enqueue(ptr noundef %i.eu) #7
  %.not31.i = icmp eq i32 %i.ev, 0
  br i1 %.not31.i, label %pvscsi_process_request_descriptor.exit.backedge, label %bb.aj

bb.aj:                                            ; preds = %pvscsi_build_sglist.exit.i
  %i.ew = load ptr, ptr %i.av, align 8
  call void @scsi_req_continue(ptr noundef %i.ew) #7
  br label %pvscsi_process_request_descriptor.exit.backedge

.loopexit:                                        ; preds = %pvscsi_ring_pop_req_descr.exit, %pvscsi_ring_pop_req_descr.exit.thread
  %i.ex = phi i64 [ %i.ac, %pvscsi_ring_pop_req_descr.exit.thread ], [ %i.af, %pvscsi_ring_pop_req_descr.exit ]
  %i.ey = load i64, ptr %i.e, align 8
  %i.ez = add i64 %i.ey, 4
  %i.fa = trunc i64 %i.ex to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.fa, ptr %i.a, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.fb = call i32 @address_space_rw(ptr noundef nonnull %i.f, i64 noundef %i.ez, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @pvscsi_on_cmd_unknown(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3260
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trace_pvscsi_on_cmd_unknown_data.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @_TRACE_PVSCSI_ON_CMD_UNKNOWN_DATA_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.d, 0
  br i1 %.not1.i, label %trace_pvscsi_on_cmd_unknown_data.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 32768
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_unknown_data.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, i32 noundef %i.b) #7
  br label %trace_pvscsi_on_cmd_unknown_data.exit

trace_pvscsi_on_cmd_unknown_data.exit:            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret i64 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @pvscsi_on_cmd_adapter_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PVSCSI_ON_CMD_ARRIVED_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #7
  br label %trace_pvscsi_on_cmd_arrived.exit

trace_pvscsi_on_cmd_arrived.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 4 uses
  %i.f = load i32, ptr %i.e, align 16
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.8, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #7
  tail call void @bus_cold_reset(ptr noundef %i.i) #7
  %i.j = load i32, ptr %i.e, align 16
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.e, align 16
  tail call void @pvscsi_process_completion_queue(ptr noundef %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %pvscsi_reset_adapter.exit, label %bb.e

bb.e:                                             ; preds = %trace_pvscsi_on_cmd_arrived.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef 457, ptr noundef nonnull @__PRETTY_FUNCTION__.pvscsi_reset_adapter) #8
  unreachable

pvscsi_reset_adapter.exit:                        ; preds = %trace_pvscsi_on_cmd_arrived.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3224
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3792
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.s, i8 noundef 0, i64 noundef 256, i1 noundef false) #7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.t, i8 noundef 0, i64 noundef 256, i1 noundef false) #7
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, i8 noundef 0, i64 noundef 128, i1 noundef false) #7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3788
  store i8 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3789
  store i8 0, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3200
  store ptr %i.l, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 2 uses
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3216
  store ptr %i.y, ptr %i.z, align 16
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @pvscsi_on_issue_scsi(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_pvscsi_on_cmd_noimpl.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PVSCSI_ON_CMD_NOIMPL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_pvscsi_on_cmd_noimpl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_noimpl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #7
  br label %trace_pvscsi_on_cmd_noimpl.exit

trace_pvscsi_on_cmd_noimpl.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret i64 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -1, 1) i64 @pvscsi_on_cmd_setup_rings(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.PVSCSICmdDescSetupRings, align 4 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3260
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.h = load i32, ptr %i.g, align 1              ; 9 uses
  store i32 %i.h, ptr %1, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %i.j = load i32, ptr %i.i, align 1              ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %i.m = load i64, ptr %i.l, align 1              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3276
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3532
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.p, ptr noundef nonnull align 1 dereferenceable(256) %i.o, i64 256, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.r, ptr noundef nonnull align 1 dereferenceable(256) %i.q, i64 256, i1 false)
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.t = load i16, ptr @_TRACE_PVSCSI_ON_CMD_ARRIVED_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.t, 0
  br i1 %.not1.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not2.i = icmp eq i32 %i.v, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.33) #7
  br label %trace_pvscsi_on_cmd_arrived.exit

trace_pvscsi_on_cmd_arrived.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.w = add i32 %i.h, -33
  %or.cond = icmp ult i32 %i.w, -32
  %i.x = add i32 %i.j, -33
  %or.cond24 = icmp ult i32 %i.x, -32
  %or.cond35 = select i1 %or.cond, i1 true, i1 %or.cond24
  br i1 %or.cond35, label %bb.t, label %bb.e

bb.e:                                             ; preds = %trace_pvscsi_on_cmd_arrived.exit
  %i.y = load i32, ptr @trace_events_enabled_count, align 4 ; 3 uses
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %pvscsi_dbg_dump_tx_rings_config.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.z = load i16, ptr @_TRACE_PVSCSI_TX_RINGS_PPN_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.z, 0
  br i1 %.not1.i.i, label %trace_pvscsi_tx_rings_ppn.exit.thread28.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr @qemu_loglevel, align 4
  %i.ab = and i32 %i.aa, 32768
  %.not2.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not2.i.i, label %trace_pvscsi_tx_rings_ppn.exit.thread28.i, label %trace_pvscsi_tx_rings_ppn.exit.i

trace_pvscsi_tx_rings_ppn.exit.i:                 ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34, i64 noundef %i.m) #7
  %.pr.pre.i = load i32, ptr @trace_events_enabled_count, align 4 ; 2 uses
  %.not.i12.i = icmp eq i32 %.pr.pre.i, 0
  br i1 %.not.i12.i, label %pvscsi_dbg_dump_tx_rings_config.exit, label %trace_pvscsi_tx_rings_ppn.exit.thread28.i, !prof !32

trace_pvscsi_tx_rings_ppn.exit.thread28.i:        ; preds = %trace_pvscsi_tx_rings_ppn.exit.i, %bb.g, %bb.f
  %.pre4045.i = phi i32 [ %i.y, %bb.f ], [ %.pr.pre.i, %trace_pvscsi_tx_rings_ppn.exit.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.ac = load i16, ptr @_TRACE_PVSCSI_TX_RINGS_NUM_PAGES_DSTATE, align 2
  %.not1.i13.i = icmp eq i16 %i.ac, 0
  br i1 %.not1.i13.i, label %.lr.ph.split.i.preheader, label %bb.h

bb.h:                                             ; preds = %trace_pvscsi_tx_rings_ppn.exit.thread28.i
  %i.ad = load i32, ptr @qemu_loglevel, align 4
  %i.ae = and i32 %i.ad, 32768
  %.not2.i14.i = icmp eq i32 %i.ae, 0
  br i1 %.not2.i14.i, label %.lr.ph.split.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35, i32 noundef %i.h) #7
  %.pre40.pre.i = load i32, ptr @trace_events_enabled_count, align 4 ; 2 uses
  %i.af = icmp eq i32 %.pre40.pre.i, 0
  br i1 %i.af, label %pvscsi_dbg_dump_tx_rings_config.exit, label %.lr.ph.split.i.preheader, !prof !32

.lr.ph.split.i.preheader:                         ; preds = %bb.h, %trace_pvscsi_tx_rings_ppn.exit.thread28.i, %.lr.ph.i
  %.ph75 = phi i32 [ %.pre4045.i, %bb.h ], [ %.pre4045.i, %trace_pvscsi_tx_rings_ppn.exit.thread28.i ], [ %.pre40.pre.i, %.lr.ph.i ] ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %trace_pvscsi_tx_rings_ppn.exit18.i
  %i.ag = phi i32 [ %i.ao, %trace_pvscsi_tx_rings_ppn.exit18.i ], [ %.ph75, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.ah = phi i32 [ %i.ap, %trace_pvscsi_tx_rings_ppn.exit18.i ], [ %.ph75, %.lr.ph.split.i.preheader ] ; 3 uses
  %.030.i = phi i32 [ %i.aq, %trace_pvscsi_tx_rings_ppn.exit18.i ], [ 0, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.ai = sext i32 %.030.i to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 4
  %.not.i15.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i15.i, label %trace_pvscsi_tx_rings_ppn.exit18.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.al = load i16, ptr @_TRACE_PVSCSI_TX_RINGS_PPN_DSTATE, align 2
  %.not1.i16.i = icmp eq i16 %i.al, 0
  br i1 %.not1.i16.i, label %trace_pvscsi_tx_rings_ppn.exit18.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr @qemu_loglevel, align 4
  %i.an = and i32 %i.am, 32768
  %.not2.i17.i = icmp eq i32 %i.an, 0
  br i1 %.not2.i17.i, label %trace_pvscsi_tx_rings_ppn.exit18.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i64 noundef %i.ak) #7
  %.pre.i = load i32, ptr @trace_events_enabled_count, align 4 ; 2 uses
  br label %trace_pvscsi_tx_rings_ppn.exit18.i

trace_pvscsi_tx_rings_ppn.exit18.i:               ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph.split.i
  %i.ao = phi i32 [ %i.ag, %.lr.ph.split.i ], [ %i.ag, %bb.i ], [ %i.ag, %bb.j ], [ %.pre.i, %bb.k ] ; 4 uses
  %i.ap = phi i32 [ 0, %.lr.ph.split.i ], [ %i.ah, %bb.i ], [ %i.ah, %bb.j ], [ %.pre.i, %bb.k ]
  %i.aq = add nuw i32 %.030.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %i.h
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %trace_pvscsi_tx_rings_ppn.exit18.i
  %.not.i19.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i19.i, label %pvscsi_dbg_dump_tx_rings_config.exit, label %bb.l, !prof !34

bb.l:                                             ; preds = %._crit_edge.i
  %i.ar = load i16, ptr @_TRACE_PVSCSI_TX_RINGS_NUM_PAGES_DSTATE, align 2
  %.not1.i20.i = icmp eq i16 %i.ar, 0
  br i1 %.not1.i20.i, label %.lr.ph32.split.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 32768
  %.not2.i21.i = icmp eq i32 %i.at, 0
  br i1 %.not2.i21.i, label %.lr.ph32.split.i.preheader, label %trace_pvscsi_tx_rings_num_pages.exit22.i

trace_pvscsi_tx_rings_num_pages.exit22.i:         ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %i.j) #7
  %.pr.pre = load i32, ptr @trace_events_enabled_count, align 4 ; 2 uses
  %i.au = icmp eq i32 %.pr.pre, 0
  br i1 %i.au, label %pvscsi_dbg_dump_tx_rings_config.exit, label %.lr.ph32.split.i.preheader, !prof !32

.lr.ph32.split.i.preheader:                       ; preds = %bb.m, %bb.l, %trace_pvscsi_tx_rings_num_pages.exit22.i
  %.ph = phi i32 [ %i.ao, %bb.m ], [ %i.ao, %bb.l ], [ %.pr.pre, %trace_pvscsi_tx_rings_num_pages.exit22.i ]
  br label %.lr.ph32.split.i

.lr.ph32.split.i:                                 ; preds = %.lr.ph32.split.i.preheader, %trace_pvscsi_tx_rings_ppn.exit26.i
  %i.av = phi i32 [ %i.bc, %trace_pvscsi_tx_rings_ppn.exit26.i ], [ %.ph, %.lr.ph32.split.i.preheader ] ; 3 uses
  %.131.i = phi i32 [ %i.bd, %trace_pvscsi_tx_rings_ppn.exit26.i ], [ 0, %.lr.ph32.split.i.preheader ] ; 2 uses
  %i.aw = sext i32 %.131.i to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 4
  %.not.i23.i = icmp eq i32 %i.av, 0
  br i1 %.not.i23.i, label %trace_pvscsi_tx_rings_ppn.exit26.i, label %bb.n, !prof !8

bb.n:                                             ; preds = %.lr.ph32.split.i
  %i.az = load i16, ptr @_TRACE_PVSCSI_TX_RINGS_PPN_DSTATE, align 2
  %.not1.i24.i = icmp eq i16 %i.az, 0
  br i1 %.not1.i24.i, label %trace_pvscsi_tx_rings_ppn.exit26.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load i32, ptr @qemu_loglevel, align 4
  %i.bb = and i32 %i.ba, 32768
  %.not2.i25.i = icmp eq i32 %i.bb, 0
  br i1 %.not2.i25.i, label %trace_pvscsi_tx_rings_ppn.exit26.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i64 noundef %i.ay) #7
  %.pre42.i = load i32, ptr @trace_events_enabled_count, align 4
  br label %trace_pvscsi_tx_rings_ppn.exit26.i

trace_pvscsi_tx_rings_ppn.exit26.i:               ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph32.split.i
  %i.bc = phi i32 [ 0, %.lr.ph32.split.i ], [ %i.av, %bb.n ], [ %i.av, %bb.o ], [ %.pre42.i, %bb.p ]
  %i.bd = add nuw i32 %.131.i, 1                  ; 2 uses
  %i.be = icmp ult i32 %i.bd, %i.j
  br i1 %i.be, label %.lr.ph32.split.i, label %pvscsi_dbg_dump_tx_rings_config.exit, !llvm.loop !25

pvscsi_dbg_dump_tx_rings_config.exit:             ; preds = %trace_pvscsi_tx_rings_ppn.exit26.i, %.lr.ph.i, %._crit_edge.i, %trace_pvscsi_tx_rings_ppn.exit.i, %bb.e, %trace_pvscsi_tx_rings_num_pages.exit22.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3792 ; 7 uses
  %i.bg = shl i64 %i.m, 12
  store i64 %i.bg, ptr %i.bf, align 8
  %i.bh = shl nuw nsw i32 %i.h, 5
  %i.bi = add nsw i32 %i.bh, -1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %pvscsi_dbg_dump_tx_rings_config.exit
  %.0.i.i = phi i32 [ %i.bj, %.preheader.i.i ], [ 0, %pvscsi_dbg_dump_tx_rings_config.exit ]
  %i.bj = add i32 %.0.i.i, 1                      ; 5 uses
  %i.bk = lshr i32 %i.bi, %i.bj
  %.not4.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not4.i.i, label %pvscsi_log2.exit.i, label %.preheader.i.i, !llvm.loop !0

pvscsi_log2.exit.i:                               ; preds = %.preheader.i.i
  %i.bl = shl nuw nsw i32 %i.j, 7
  %i.bm = add nsw i32 %i.bl, -1
  br label %.preheader.i122.i

.preheader.i122.i:                                ; preds = %.preheader.i122.i, %pvscsi_log2.exit.i
  %.0.i123.i = phi i32 [ %i.bn, %.preheader.i122.i ], [ 0, %pvscsi_log2.exit.i ]
  %i.bn = add i32 %.0.i123.i, 1                   ; 5 uses
  %i.bo = lshr i32 %i.bm, %i.bn
  %.not4.i124.i = icmp eq i32 %i.bo, 0
  br i1 %.not4.i124.i, label %.lr.ph.i27, label %.preheader.i122.i, !llvm.loop !0

.lr.ph.i27:                                       ; preds = %.preheader.i122.i
  %notmask.i = shl nsw i32 -1, %i.bj
  %i.bp = xor i32 %notmask.i, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3800
  store i32 %i.bp, ptr %i.bq, align 8
  %notmask121.i = shl nsw i32 -1, %i.bn
  %i.br = xor i32 %notmask121.i, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3804
  store i32 %i.br, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3816 ; 6 uses
  %umax42 = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1) ; 3 uses
  %min.iters.check = icmp ult i32 %i.h, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i27
  %n.vec = and i32 %umax42, 60                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = sext i32 %index to i64                  ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 4
  %wide.load60 = load <2 x i64>, ptr %i.bx, align 4
  %i.by = shl <2 x i64> %wide.load, splat (i64 12)
  %i.bz = shl <2 x i64> %wide.load60, splat (i64 12)
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x i64> %i.by, ptr %i.ca, align 8
  store <2 x i64> %i.bz, ptr %i.cb, align 8
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.cc = icmp eq i32 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.h, %n.vec
  br i1 %cmp.n, label %.lr.ph129.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i27, %middle.block
  %.0127.i.ph = phi i32 [ 0, %.lr.ph.i27 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i32 %umax42, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0127.i.prol = phi i32 [ %i.ci, %scalar.ph.prol ], [ %.0127.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cd = sext i32 %.0127.i.prol to i64           ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 4
  %i.cg = shl i64 %i.cf, 12
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cd
  store i64 %i.cg, ptr %i.ch, align 8
  %i.ci = add nuw i32 %.0127.i.prol, 1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !27

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0127.i.unr = phi i32 [ %.0127.i.ph, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %i.cj = sub nsw i32 %.0127.i.ph, %umax42
  %i.ck = icmp ugt i32 %i.cj, -4
  br i1 %i.ck, label %.lr.ph129.i, label %scalar.ph

.lr.ph129.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4072 ; 6 uses
  %umax44 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1) ; 3 uses
  %min.iters.check63 = icmp ult i32 %i.j, 6
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph129.i
  %n.vec65 = and i32 %umax44, 60                  ; 3 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i32 [ 0, %vector.ph64 ], [ %index.next70, %vector.body66 ] ; 2 uses
  %i.cm = sext i32 %index67 to i64                ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load68 = load <2 x i64>, ptr %i.cn, align 4
  %wide.load69 = load <2 x i64>, ptr %i.co, align 4
  %i.cp = shl <2 x i64> %wide.load68, splat (i64 12)
  %i.cq = shl <2 x i64> %wide.load69, splat (i64 12)
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <2 x i64> %i.cp, ptr %i.cr, align 8
  store <2 x i64> %i.cq, ptr %i.cs, align 8
  %index.next70 = add nuw i32 %index67, 4         ; 2 uses
  %i.ct = icmp eq i32 %index.next70, %n.vec65
  br i1 %i.ct, label %middle.block71, label %vector.body66, !llvm.loop !28

middle.block71:                                   ; preds = %vector.body66
  %cmp.n72 = icmp eq i32 %i.j, %n.vec65
  br i1 %cmp.n72, label %._crit_edge.i28, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %.lr.ph129.i, %middle.block71
  %.1128.i.ph = phi i32 [ 0, %.lr.ph129.i ], [ %n.vec65, %middle.block71 ] ; 3 uses
  %xtraiter77 = and i32 %umax44, 3                ; 2 uses
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %scalar.ph62.prol.loopexit, label %scalar.ph62.prol

scalar.ph62.prol:                                 ; preds = %scalar.ph62.preheader, %scalar.ph62.prol
  %.1128.i.prol = phi i32 [ %i.cz, %scalar.ph62.prol ], [ %.1128.i.ph, %scalar.ph62.preheader ] ; 2 uses
  %prol.iter79 = phi i32 [ %prol.iter79.next, %scalar.ph62.prol ], [ 0, %scalar.ph62.preheader ]
  %i.cu = sext i32 %.1128.i.prol to i64           ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 4
  %i.cx = shl i64 %i.cw, 12
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cu
  store i64 %i.cx, ptr %i.cy, align 8
  %i.cz = add nuw i32 %.1128.i.prol, 1            ; 2 uses
  %prol.iter79.next = add i32 %prol.iter79, 1     ; 2 uses
  %prol.iter79.cmp.not = icmp eq i32 %prol.iter79.next, %xtraiter77
  br i1 %prol.iter79.cmp.not, label %scalar.ph62.prol.loopexit, label %scalar.ph62.prol, !llvm.loop !29

scalar.ph62.prol.loopexit:                        ; preds = %scalar.ph62.prol, %scalar.ph62.preheader
  %.1128.i.unr = phi i32 [ %.1128.i.ph, %scalar.ph62.preheader ], [ %i.cz, %scalar.ph62.prol ]
  %i.da = sub nsw i32 %.1128.i.ph, %umax44
  %i.db = icmp ugt i32 %i.da, -4
  br i1 %i.db, label %._crit_edge.i28, label %scalar.ph62

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0127.i = phi i32 [ %i.dz, %scalar.ph ], [ %.0127.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dc = sext i32 %.0127.i to i64                ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 4
  %i.df = shl i64 %i.de, 12
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.dc
  store i64 %i.df, ptr %i.dg, align 8
  %i.dh = add nuw i32 %.0127.i, 1
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 4
  %i.dl = shl i64 %i.dk, 12
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.di
  store i64 %i.dl, ptr %i.dm, align 8
  %i.dn = add nuw i32 %.0127.i, 2
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 4
  %i.dr = shl i64 %i.dq, 12
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.do
  store i64 %i.dr, ptr %i.ds, align 8
  %i.dt = add nuw i32 %.0127.i, 3
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 4
  %i.dx = shl i64 %i.dw, 12
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.du
  store i64 %i.dx, ptr %i.dy, align 8
  %i.dz = add nuw i32 %.0127.i, 4                 ; 2 uses
  %exitcond43.not.3 = icmp eq i32 %i.h, %i.dz
  br i1 %exitcond43.not.3, label %.lr.ph129.i, label %scalar.ph, !llvm.loop !30

scalar.ph62:                                      ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62
  %.1128.i = phi i32 [ %i.ex, %scalar.ph62 ], [ %.1128.i.unr, %scalar.ph62.prol.loopexit ] ; 5 uses
  %i.ea = sext i32 %.1128.i to i64                ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 4
  %i.ed = shl i64 %i.ec, 12
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.ea
  store i64 %i.ed, ptr %i.ee, align 8
  %i.ef = add nuw i32 %.1128.i, 1
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 4
  %i.ej = shl i64 %i.ei, 12
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.eg
  store i64 %i.ej, ptr %i.ek, align 8
  %i.el = add nuw i32 %.1128.i, 2
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 4
  %i.ep = shl i64 %i.eo, 12
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.em
  store i64 %i.ep, ptr %i.eq, align 8
  %i.er = add nuw i32 %.1128.i, 3
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 4
  %i.ev = shl i64 %i.eu, 12
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.es
  store i64 %i.ev, ptr %i.ew, align 8
  %i.ex = add nuw i32 %.1128.i, 4                 ; 2 uses
  %exitcond45.not.3 = icmp eq i32 %i.j, %i.ex
  br i1 %exitcond45.not.3, label %._crit_edge.i28, label %scalar.ph62, !llvm.loop !31

._crit_edge.i28:                                  ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62, %middle.block71
  %i.ey = load i64, ptr %i.bf, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.fa = call i32 @address_space_rw(ptr noundef nonnull %i.ez, i64 noundef %i.ey, i64 4294967296, ptr noundef nonnull %i.f, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fb = load i64, ptr %i.bf, align 8
  %i.fc = add i64 %i.fb, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 0, ptr %i.e, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.fd = call i32 @address_space_rw(ptr noundef nonnull %i.ez, i64 noundef %i.fc, i64 4294967296, ptr noundef nonnull %i.e, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fe = load i64, ptr %i.bf, align 8
  %i.ff = add i64 %i.fe, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.bj, ptr %i.d, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.fg = call i32 @address_space_rw(ptr noundef nonnull %i.ez, i64 noundef %i.ff, i64 4294967296, ptr noundef nonnull %i.d, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fh = load i64, ptr %i.bf, align 8
  %i.fi = add i64 %i.fh, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.fj = call i32 @address_space_rw(ptr noundef nonnull %i.ez, i64 noundef %i.fi, i64 4294967296, ptr noundef nonnull %i.c, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fk = load i64, ptr %i.bf, align 8
  %i.fl = add i64 %i.fk, 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.fm = call i32 @address_space_rw(ptr noundef nonnull %i.ez, i64 noundef %i.fl, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fn = load i64, ptr %i.bf, align 8
  %i.fo = add i64 %i.fn, 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bn, ptr %i.a, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.fp = call i32 @address_space_rw(ptr noundef nonnull %i.ez, i64 noundef %i.fo, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i29 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i29, label %pvscsi_ring_init_data.exit, label %bb.q, !prof !8

bb.q:                                             ; preds = %._crit_edge.i28
  %i.fr = load i16, ptr @_TRACE_PVSCSI_RING_INIT_DATA_DSTATE, align 2
  %.not2.i.i30 = icmp eq i16 %i.fr, 0
  br i1 %.not2.i.i30, label %pvscsi_ring_init_data.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fs = load i32, ptr @qemu_loglevel, align 4
  %i.ft = and i32 %i.fs, 32768
  %.not3.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not3.i.i, label %pvscsi_ring_init_data.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, i32 noundef %i.bj, i32 noundef %i.bn) #7
  br label %pvscsi_ring_init_data.exit

pvscsi_ring_init_data.exit:                       ; preds = %._crit_edge.i28, %bb.q, %bb.r, %bb.s
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !36
  fence release
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 3788
  store i8 1, ptr %i.fu, align 4
  br label %bb.t

bb.t:                                             ; preds = %trace_pvscsi_on_cmd_arrived.exit, %pvscsi_ring_init_data.exit
  %.020 = phi i64 [ 0, %pvscsi_ring_init_data.exit ], [ -1, %trace_pvscsi_on_cmd_arrived.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %.020
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @pvscsi_on_cmd_reset_bus(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PVSCSI_ON_CMD_ARRIVED_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.41) #7
  br label %trace_pvscsi_on_cmd_arrived.exit

trace_pvscsi_on_cmd_arrived.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 4 uses
  %i.f = load i32, ptr %i.e, align 16
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.8, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #7
  tail call void @bus_cold_reset(ptr noundef %i.i) #7
  %i.j = load i32, ptr %i.e, align 16
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.e, align 16
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -1, 1) i64 @pvscsi_on_cmd_reset_device(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3260
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3265
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3266
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3270
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 1
  %i.b = load i32, ptr %i.a, align 1              ; 3 uses
  %.not.i = icmp eq i8 %.sroa.6.0.copyload, 0
  %i.c = load <4 x i8>, ptr %.sroa.8.0..sroa_idx, align 1
  %.fr = freeze <4 x i8> %i.c
  %.not20.i = icmp eq i8 %.sroa.12.0.copyload, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.d = icmp eq i32 %.fr.scalar, 0
  %op.rdx = select i1 %i.d, i1 %.not.i, i1 false
  %op.rdx20 = select i1 %op.rdx, i1 %.not20.i, i1 false
  br i1 %op.rdx20, label %bb.b, label %pvscsi_device_find.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3271
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1
  %i.e = icmp ne i8 %.sroa.13.0.copyload, 0
  %i.f = icmp sgt i32 %i.b, 64
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %pvscsi_device_find.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.h = zext i8 %.sroa.7.0.copyload to i32       ; 2 uses
  %i.i = tail call ptr @scsi_device_find(ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef %i.b, i32 noundef %i.h) #7
  br label %pvscsi_device_find.exit

pvscsi_device_find.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  %.014 = phi i32 [ 0, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ]
  %.0.i = phi ptr [ null, %bb.b ], [ %i.i, %bb.c ], [ null, %bb.a ] ; 3 uses
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i13 = icmp eq i32 %i.j, 0
  br i1 %.not.i13, label %trace_pvscsi_on_cmd_reset_dev.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %pvscsi_device_find.exit
  %i.k = load i16, ptr @_TRACE_PVSCSI_ON_CMD_RESET_DEV_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.k, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_reset_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not3.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i, label %trace_pvscsi_on_cmd_reset_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.42, i32 noundef %i.b, i32 noundef range(i32 0, 256) %.014, ptr noundef %.0.i) #7
  br label %trace_pvscsi_on_cmd_reset_dev.exit

trace_pvscsi_on_cmd_reset_dev.exit:               ; preds = %pvscsi_device_find.exit, %bb.d, %bb.e, %bb.f
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %trace_pvscsi_on_cmd_reset_dev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 4 uses
  %i.o = load i32, ptr %i.n, align 16
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 16
  tail call void @device_cold_reset(ptr noundef nonnull %.0.i) #7
  %i.q = load i32, ptr %i.n, align 16
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.n, align 16
  br label %bb.h

bb.h:                                             ; preds = %trace_pvscsi_on_cmd_reset_dev.exit, %bb.g
  %.0 = phi i64 [ 0, %bb.g ], [ -1, %trace_pvscsi_on_cmd_reset_dev.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @pvscsi_on_cmd_abort(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3260
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 4294967295                 ; 2 uses
  %i.d = load i32, ptr %.sroa.7.0..sroa_idx, align 1
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_pvscsi_on_cmd_abort.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_PVSCSI_ON_CMD_ABORT_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_abort.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %trace_pvscsi_on_cmd_abort.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i64 noundef range(i64 0, 4294967296) %i.c, i32 noundef %i.d) #7
  br label %trace_pvscsi_on_cmd_abort.exit

trace_pvscsi_on_cmd_abort.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %.021 = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not22 = icmp eq ptr %.021, null
  br i1 %.not22, label %.critedge19, label %.lr.ph

.lr.ph:                                           ; preds = %trace_pvscsi_on_cmd_abort.exit, %bb.e
  %.023 = phi ptr [ %.0, %bb.e ], [ %.021, %trace_pvscsi_on_cmd_abort.exit ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.023, i64 88
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, %i.c
  br i1 %i.l, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.023, i64 248
  %.0 = load ptr, ptr %i.m, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge19, label %.lr.ph, !llvm.loop !37

.critedge:                                        ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.023, i64 17
  %i.o = load i8, ptr %i.n, align 1
  %.not18 = icmp eq i8 %i.o, 0
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  tail call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.13, i32 noundef 885, ptr noundef nonnull @__PRETTY_FUNCTION__.pvscsi_on_cmd_abort) #8
  unreachable

bb.g:                                             ; preds = %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %.023, i64 236
  store i16 38, ptr %i.p, align 4
  %i.q = load ptr, ptr %.023, align 8
  tail call void @scsi_req_cancel(ptr noundef %i.q) #7
  br label %.critedge19

.critedge19:                                      ; preds = %bb.e, %trace_pvscsi_on_cmd_abort.exit, %bb.g
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @pvscsi_on_cmd_config(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_pvscsi_on_cmd_noimpl.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PVSCSI_ON_CMD_NOIMPL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_pvscsi_on_cmd_noimpl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_noimpl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.45) #7
  br label %trace_pvscsi_on_cmd_noimpl.exit

trace_pvscsi_on_cmd_noimpl.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret i64 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -1, 35) i64 @pvscsi_on_cmd_setup_msg_ring(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.PVSCSICmdDescSetupMsgRing, align 1 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3260
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.e = load i32, ptr %i.d, align 1              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.g, ptr noundef nonnull align 1 dereferenceable(128) %i.f, i64 128, i1 false)
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr @_TRACE_PVSCSI_ON_CMD_ARRIVED_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_arrived.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.46) #7
  br label %trace_pvscsi_on_cmd_arrived.exit

trace_pvscsi_on_cmd_arrived.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3790
  %i.m = load i8, ptr %i.l, align 2
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %pvscsi_ring_init_msg.exit.thread, label %bb.e

bb.e:                                             ; preds = %trace_pvscsi_on_cmd_arrived.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3788
  %i.o = load i8, ptr %i.n, align 4
  %.not14 = icmp eq i8 %i.o, 0
  br i1 %.not14, label %pvscsi_ring_init_msg.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3792 ; 3 uses
  %i.q = add i32 %i.e, -17
  %or.cond.i = icmp ult i32 %i.q, -16
  br i1 %or.cond.i, label %pvscsi_ring_init_msg.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = shl nuw nsw i32 %i.e, 5
  %i.s = add nsw i32 %i.r, -1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.g
  %.0.i.i = phi i32 [ %i.t, %.preheader.i.i ], [ 0, %bb.g ]
  %i.t = add i32 %.0.i.i, 1                       ; 5 uses
  %i.u = lshr i32 %i.s, %i.t
  %.not4.i.i = icmp eq i32 %i.u, 0
  br i1 %.not4.i.i, label %.lr.ph.i, label %.preheader.i.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i.i
  %notmask.i = shl nsw i32 -1, %i.t
  %i.v = xor i32 %notmask.i, -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3808
  store i32 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4472
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4328 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count, 28           ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %wide.load = load <2 x i64>, ptr %i.g, align 1
  %wide.load20 = load <2 x i64>, ptr %i.z, align 1
  %i.aa = shl <2 x i64> %wide.load, splat (i64 12)
  %i.ab = shl <2 x i64> %wide.load20, splat (i64 12)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4344
  store <2 x i64> %i.aa, ptr %i.y, align 8
  store <2 x i64> %i.ab, ptr %i.ac, align 8
  %i.ad = icmp eq i64 %n.vec, 4
  br i1 %i.ad, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %wide.load.1 = load <2 x i64>, ptr %i.ae, align 1
  %wide.load20.1 = load <2 x i64>, ptr %i.af, align 1
  %i.ag = shl <2 x i64> %wide.load.1, splat (i64 12)
  %i.ah = shl <2 x i64> %wide.load20.1, splat (i64 12)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4376
  store <2 x i64> %i.ag, ptr %i.ai, align 8
  store <2 x i64> %i.ah, ptr %i.aj, align 8
  %i.ak = icmp eq i64 %n.vec, 8
  br i1 %i.ak, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  %wide.load.2 = load <2 x i64>, ptr %i.al, align 1
  %wide.load20.2 = load <2 x i64>, ptr %i.am, align 1
  %i.an = shl <2 x i64> %wide.load.2, splat (i64 12)
  %i.ao = shl <2 x i64> %wide.load20.2, splat (i64 12)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4408
  store <2 x i64> %i.an, ptr %i.ap, align 8
  store <2 x i64> %i.ao, ptr %i.aq, align 8
  %i.ar = icmp eq i64 %n.vec, 12
  br i1 %i.ar, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  %wide.load.3 = load <2 x i64>, ptr %i.as, align 1
  %wide.load20.3 = load <2 x i64>, ptr %i.at, align 1
  %i.au = shl <2 x i64> %wide.load.3, splat (i64 12)
  %i.av = shl <2 x i64> %wide.load20.3, splat (i64 12)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4440
  store <2 x i64> %i.au, ptr %i.aw, align 8
  store <2 x i64> %i.av, ptr %i.ax, align 8
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = shl i64 %i.az, 12
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  store i64 %i.ba, ptr %i.bb, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i, label %scalar.ph, !llvm.loop !38

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.bc = load i64, ptr %i.p, align 8
  %i.bd = add i64 %i.bc, 128
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.bf = call i32 @address_space_rw(ptr noundef nonnull %i.be, i64 noundef %i.bd, i64 4294967296, ptr noundef nonnull %i.c, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bg = load i64, ptr %i.p, align 8
  %i.bh = add i64 %i.bg, 132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.bi = call i32 @address_space_rw(ptr noundef nonnull %i.be, i64 noundef %i.bh, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bj = load i64, ptr %i.p, align 8
  %i.bk = add i64 %i.bj, 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.t, ptr %i.a, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.bl = call i32 @address_space_rw(ptr noundef nonnull %i.be, i64 noundef %i.bk, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i, label %bb.k, label %bb.h, !prof !8

bb.h:                                             ; preds = %._crit_edge.i
  %i.bn = load i16, ptr @_TRACE_PVSCSI_RING_INIT_MSG_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not1.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr @qemu_loglevel, align 4
  %i.bp = and i32 %i.bo, 32768
  %.not2.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not2.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.47, i32 noundef %i.t) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %._crit_edge.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !39
  fence release
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3789
  store i8 1, ptr %i.bq, align 1
  br label %pvscsi_ring_init_msg.exit.thread

pvscsi_ring_init_msg.exit.thread:                 ; preds = %bb.f, %bb.e, %bb.k, %trace_pvscsi_on_cmd_arrived.exit
  %.013 = phi i64 [ -1, %trace_pvscsi_on_cmd_arrived.exit ], [ 34, %bb.e ], [ 34, %bb.k ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %.013
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @pvscsi_on_cmd_unplug(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_pvscsi_on_cmd_noimpl.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PVSCSI_ON_CMD_NOIMPL_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_pvscsi_on_cmd_noimpl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_pvscsi_on_cmd_noimpl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.48) #7
  br label %trace_pvscsi_on_cmd_noimpl.exit

trace_pvscsi_on_cmd_noimpl.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret i64 -1
}

declare void @bus_cold_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @device_cold_reset(ptr noundef) local_unnamed_addr #1

declare ptr @scsi_device_find(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @scsi_req_cancel(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @msi_enabled(ptr noundef) local_unnamed_addr #1

declare void @msi_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @pci_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_bh_schedule(ptr noundef) local_unnamed_addr #1

declare void @physical_memory_read(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pvscsi_complete_request(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.13, i32 noundef 473, ptr noundef nonnull @__PRETTY_FUNCTION__.pvscsi_complete_request) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i8, ptr %i.g, align 8
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %trace_pvscsi_complete_request.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr @_TRACE_PVSCSI_COMPLETE_REQUEST_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.j, 0
  br i1 %.not3.i, label %trace_pvscsi_complete_request.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %trace_pvscsi_complete_request.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = zext i8 %i.h to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.56, i64 noundef %i.d, i64 noundef %i.f, i32 noundef %i.m) #7
  br label %trace_pvscsi_complete_request.exit

trace_pvscsi_complete_request.exit:               ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %trace_pvscsi_complete_request.exit
  tail call void @scsi_req_unref(ptr noundef nonnull %i.n) #7
  store ptr null, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %trace_pvscsi_complete_request.exit
  store i8 1, ptr %i.a, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3200
  store ptr %i.r, ptr %i.t, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.u, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  store ptr %i.x, ptr %i.v, align 8
  store ptr %1, ptr %i.x, align 8
  store ptr %i.o, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %pvscsi_schedule_completion_processing.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.ac = load ptr, ptr %i.ab, align 16
  tail call void @qemu_bh_schedule(ptr noundef %i.ac) #7
  br label %pvscsi_schedule_completion_processing.exit

pvscsi_schedule_completion_processing.exit:       ; preds = %bb.k, %bb.l
  ret void
}

declare ptr @scsi_req_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @scsi_req_enqueue(ptr noundef) local_unnamed_addr #1

declare void @scsi_req_continue(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #5

declare void @scsi_req_unref(ptr noundef) local_unnamed_addr #1

declare void @qemu_sglist_add(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_sglist_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @msi_init(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare ptr @qdev_get_parent_bus(ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare void @physical_memory_write(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @scsi_bus_init_named(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @pvscsi_command_failed(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_pvscsi_command_complete_not_found.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.f = load i16, ptr @_TRACE_PVSCSI_COMMAND_COMPLETE_NOT_FOUND_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_pvscsi_command_complete_not_found.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @qemu_loglevel, align 4
end_hunk_0
begin_hunk_1_@pvscsi_get_sg_list:bb.a
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %trace_pvscsi_get_sg_list.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr @_TRACE_PVSCSI_GET_SG_LIST_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.h, 0
  br i1 %.not2.i, label %trace_pvscsi_get_sg_list.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 32768
  %.not3.i = icmp eq i32 %i.j, 0
  br i1 %.not3.i, label %trace_pvscsi_get_sg_list.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.69, i32 noundef %i.d, i64 noundef %i.f) #7
  br label %trace_pvscsi_get_sg_list.exit

trace_pvscsi_get_sg_list.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  ret ptr %i.k
}

declare void @qemu_sglist_destroy(ptr noundef) local_unnamed_addr #1

declare i32 @scsi_req_get_sense(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_bh_delete(ptr noundef) local_unnamed_addr #1

declare void @msi_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @pvscsi_post_load(ptr nofree readnone captures(none) %0, i32 %1) #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_pvscsi_state.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PVSCSI_STATE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_pvscsi_state.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_pvscsi_state.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.94) #7
  br label %trace_pvscsi_state.exit

trace_pvscsi_state.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @pvscsi_pre_save(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_pvscsi_state.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PVSCSI_STATE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_pvscsi_state.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_pvscsi_state.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.95) #7
  br label %trace_pvscsi_state.exit

trace_pvscsi_state.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_pvscsi_state.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef 1263, ptr noundef nonnull @__PRETTY_FUNCTION__.pvscsi_pre_save) #8
  unreachable

bb.f:                                             ; preds = %trace_pvscsi_state.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.13, i32 noundef 1264, ptr noundef nonnull @__PRETTY_FUNCTION__.pvscsi_pre_save) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pvscsi_send_msg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.PVSCSIRingMsgDesc, align 4  ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3789
  %i.e = load i8, ptr %i.d, align 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3792 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !annotation !11
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.j = call i32 @address_space_rw(ptr noundef nonnull %i.i, i64 noundef %i.h, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef 4, i1 noundef zeroext false) #7 ; 0 uses
  %i.k = load i64, ptr %i.f, align 8
  %i.l = add i64 %i.k, 132
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.m = call i32 @address_space_rw(ptr noundef nonnull %i.i, i64 noundef %i.l, i64 4294967296, ptr noundef nonnull %i.c, i64 noundef 4, i1 noundef zeroext false) #7 ; 0 uses
  %i.n = load i32, ptr %i.b, align 4
  %i.o = load i32, ptr %i.c, align 4
  %i.p = sub i32 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3808
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = add i32 %i.r, 1
  %i.t = icmp ult i32 %i.p, %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br i1 %i.t, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = trunc i32 %i.z to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4472 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = trunc i64 %i.ac to i32
  %i.af = and i32 %i.r, %i.ae                     ; 2 uses
  %i.ag = lshr i32 %i.af, 5
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4328
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = shl i32 %i.af, 7
  %i.am = and i32 %i.al, 3968
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add i64 %i.ak, %i.an                    ; 2 uses
  %i.ap = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %pvscsi_msg_ring_put.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.aq = load i16, ptr @_TRACE_PVSCSI_MSG_RING_PUT_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not1.i.i, label %pvscsi_msg_ring_put.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load i32, ptr @qemu_loglevel, align 4
  %i.as = and i32 %i.ar, 32768
  %.not2.i.i = icmp eq i32 %i.as, 0
  br i1 %.not2.i.i, label %pvscsi_msg_ring_put.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.102, i64 noundef %i.ao) #7
  br label %pvscsi_msg_ring_put.exit

pvscsi_msg_ring_put.exit:                         ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  store i32 %2, ptr %3, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.v, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.7.4..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.x, ptr %.sroa.7.4..sroa.3.0..sroa_idx.i.sroa_idx, align 4
  %.sroa.8.4..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %.sroa.8.4..sroa.3.0..sroa_idx.i.sroa_idx, align 4
  %.sroa.811.4..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %i.aa, ptr %.sroa.811.4..sroa.3.0..sroa_idx.i.sroa_idx, align 1
  %.sroa.9.4..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(114) %.sroa.9.4..sroa.3.0..sroa_idx.i.sroa_idx, i8 0, i64 114, i1 false)
  call void @physical_memory_write(i64 noundef %i.ao, ptr noundef nonnull %3, i64 noundef 128) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !40
  fence release
  %i.at = load i64, ptr %i.ab, align 8            ; 4 uses
  %i.au = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i8 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i8, label %pvscsi_ring_flush_msg.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %pvscsi_msg_ring_put.exit
  %i.av = load i16, ptr @_TRACE_PVSCSI_RING_FLUSH_MSG_DSTATE, align 2
  %.not1.i.i9 = icmp eq i16 %i.av, 0
  br i1 %.not1.i.i9, label %pvscsi_ring_flush_msg.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load i32, ptr @qemu_loglevel, align 4
  %i.ax = and i32 %i.aw, 32768
  %.not2.i.i10 = icmp eq i32 %i.ax, 0
  br i1 %.not2.i.i10, label %pvscsi_ring_flush_msg.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.103, i64 noundef %i.at) #7
  %.pre.i = load i64, ptr %i.ab, align 8
  br label %pvscsi_ring_flush_msg.exit

pvscsi_ring_flush_msg.exit:                       ; preds = %pvscsi_msg_ring_put.exit, %bb.g, %bb.h, %bb.i
  %i.ay = phi i64 [ %i.at, %pvscsi_msg_ring_put.exit ], [ %i.at, %bb.g ], [ %i.at, %bb.h ], [ %.pre.i, %bb.i ]
  %i.az = load i64, ptr %i.f, align 8
  %i.ba = add i64 %i.az, 128
  %i.bb = trunc i64 %i.ay to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bb, ptr %i.a, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  fence seq_cst
  %i.bc = call i32 @address_space_rw(ptr noundef nonnull %i.i, i64 noundef %i.ba, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef 4, i1 noundef zeroext true) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3224 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = or i64 %i.be, 4
  store i64 %i.bf, ptr %i.bd, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !41
  fence release
  call fastcc void @pvscsi_update_irq_status(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %pvscsi_ring_flush_msg.exit, %bb.b, %bb.a
  ret void
}

declare void @qdev_simple_device_unplug_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !9}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i64 2152413876}
!11 = !{!"auto-init"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !9}
!15 = !{i64 2153142118}
!16 = !{i64 2153145272}
!17 = distinct !{null, null}
!18 = distinct !{null, null}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = !{i64 2153151359}
!23 = !{!"branch_weights", i32 4001, i32 1}
!24 = distinct !{!24, !9, !33}
!25 = distinct !{!25, !9, !33}
!26 = distinct !{!26, !9, !12, !13}
!27 = distinct !{!27, !35}
!28 = distinct !{!28, !9, !12, !13}
!29 = distinct !{!29, !35}
!30 = distinct !{!30, !9, !12}
!31 = distinct !{!31, !9, !12}
!32 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!33 = !{!"llvm.loop.unswitch.partial.disable"}
!34 = !{!"branch_weights", !"expected", i32 2144624150, i32 2859498}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{i64 2153138541}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9, !13, !12}
!39 = !{i64 2153140435}
!40 = !{i64 2153143960}
!41 = !{i64 2153145404}
end_hunk_1
