Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/uncore_snbep?download=true
inline.NumInlined: 201
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@skx_iio_get_topology:bb.a
  %i.r = getelementptr [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.s = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.s, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 4
  store i32 %i.k, ptr %i.v, align 4
  %i.w = shl nuw nsw i64 %indvars.iv.i, 3
  %i.x = and i64 %i.w, 4294967288
  %i.y = lshr i64 %i.j, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.z, 255
  %i.ab = load ptr, ptr %i.t, align 8
  store i32 %i.aa, ptr %i.ab, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %i.d, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i1, label %skx_iio_topology_cb.exit, !llvm.loop !64

skx_iio_topology_cb.exit:                         ; preds = %.lr.ph.i1, %bb.e, %.lr.ph.i
  %.1.i = phi i32 [ %.028.i, %.lr.ph.i ], [ 0, %bb.e ], [ 0, %.lr.ph.i1 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr @__uncore_max_dies, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %skx_pmu_get_topology.exit, !llvm.loop !4

skx_pmu_get_topology.exit:                        ; preds = %bb.d, %skx_iio_topology_cb.exit, %bb.a, %skx_msr_cpu_bus_read.exit.thread.i
  %.2.i = phi i32 [ -6, %skx_msr_cpu_bus_read.exit.thread.i ], [ -19, %bb.a ], [ %.1.i, %skx_iio_topology_cb.exit ], [ %i.k, %bb.d ]
  call void @cpus_read_unlock() #23
  ret i32 %.2.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skx_iio_set_mapping(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @pmu_set_mapping(ptr noundef %0, ptr noundef nonnull @skx_iio_mapping_group, ptr noundef nonnull @skx_iio_mapping_show, i32 noundef 0) #21, !srcloc !29
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skx_iio_cleanup_mapping(ptr nofree noundef captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @pmu_cleanup_mapping(ptr noundef %0, ptr noundef nonnull @skx_iio_mapping_group) #21, !srcloc !65
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skx_iio_enable_event(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 368
  %i.b = getelementptr i8, ptr %1, i64 400
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = load i64, ptr %i.a, align 8              ; 2 uses
  %i.f = or i64 %i.e, 4194304                     ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i64 %i.e, 32
  %i.i = trunc nuw i64 %i.h to i32
  tail call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.d, i32 %i.g, i32 %i.i) #22, !srcloc !26
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #22
          to label %wrmsrq.exit [label %bb.b], !srcloc !25

bb.b:                                             ; preds = %bb.a
  tail call void @do_trace_write_msr(i32 noundef %i.d, i64 noundef %i.f, i32 noundef 0) #23
  br label %wrmsrq.exit

wrmsrq.exit:                                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal noundef range(i64 -2147483648, 2147483648) i64 @__uncore_thresh9_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 14)) %2) #6 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) @.str.310, i64 14, i1 false)
  ret i64 13
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal noundef range(i64 -2147483648, 2147483648) i64 @__uncore_ch_mask_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 14)) %2) #6 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) @.str.313, i64 14, i1 false)
  ret i64 13
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal noundef range(i64 -2147483648, 2147483648) i64 @__uncore_fc_mask_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 14)) %2) #6 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) @.str.316, i64 14, i1 false)
  ret i64 13
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define internal zeroext i16 @skx_iio_mapping_visible(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #11 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 376
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i, label %pmu_topology.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 216
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %.val, i64 352
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %pmu_topology.exit.thread.i, label %bb.c, !llvm.loop !5

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv.i.i ; 3 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, %i.m
  br i1 %i.p, label %pmu_topology.exit.i, label %bb.b

pmu_topology.exit.i:                              ; preds = %bb.c
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %pmu_topology.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %pmu_topology.exit.i
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i32, ptr %i.r, align 4
  %.not9.i = icmp ne i32 %i.s, 0
  %.not10.i = icmp eq i32 %i.m, 0
  %or.cond.i = or i1 %.not10.i, %.not9.i
  br i1 %or.cond.i, label %pmu_topology.exit.thread.i, label %pmu_iio_mapping_visible.exit

pmu_topology.exit.thread.i:                       ; preds = %bb.b, %bb.d, %pmu_topology.exit.i, %bb.a
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = load i16, ptr %i.t, align 8
  br label %pmu_iio_mapping_visible.exit

pmu_iio_mapping_visible.exit:                     ; preds = %bb.d, %pmu_topology.exit.thread.i
  %i.v = phi i16 [ %i.u, %pmu_topology.exit.thread.i ], [ 0, %bb.d ]
  ret i16 %i.v
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @uncore_die_to_cpu(i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @uncore_die_to_segment(i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rdmsrq_on_cpu(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @pmu_set_mapping(ptr noundef %0, ptr nofree noundef writeonly captures(address) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !annotation !21
  %i.b = getelementptr i8, ptr %0, i64 12         ; 8 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %pmu_free_topology.exit, label %_kzalloc_noprof.exit.i

_kzalloc_noprof.exit.i:                           ; preds = %bb.a
  %i.d = load i32, ptr @__uncore_max_dies, align 4 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %i.f = sext i32 %i.d to i64
  %i.g = shl nsw i64 %i.f, 3
  %.0.i59.i = select i1 %i.e, i64 -1, i64 %i.g
  %i.h = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -103079215104, 103079215057) %.0.i59.i, i32 noundef 3520) #26 ; 6 uses
  %.not56.i = icmp eq ptr %i.h, null
  br i1 %.not56.i, label %pmu_free_topology.exit, label %.preheader73.i

.preheader73.i:                                   ; preds = %_kzalloc_noprof.exit.i
  %i.i = load i32, ptr @__uncore_max_dies, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph80.i, label %.loopexit

.lr.ph80.i:                                       ; preds = %.preheader73.i
  %i.k = zext nneg i32 %3 to i64
  %i.l = getelementptr [8 x i8], ptr @topology_size, i64 %i.k
  %.pre.i = load i32, ptr %i.b, align 4
  br label %_kzalloc_noprof.exit66.i

_kzalloc_noprof.exit66.i:                         ; preds = %.lr.ph80.i, %._crit_edge.i
  %i.m = phi i32 [ %.pre.i, %.lr.ph80.i ], [ %i.al, %._crit_edge.i ] ; 2 uses
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph80.i ], [ %indvars.iv.next93.i, %._crit_edge.i ] ; 4 uses
  %i.n = icmp slt i32 %i.m, 0
  %i.o = sext i32 %i.m to i64
  %i.p = shl nsw i64 %i.o, 4
  %.0.i.i = select i1 %i.n, i64 -1, i64 %i.p
  %i.q = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -103079215104, 103079215057) %.0.i.i, i32 noundef 3520) #26 ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv92.i ; 3 uses
  store ptr %i.q, ptr %i.r, align 8
  %.not57.i = icmp eq ptr %i.q, null
  br i1 %.not57.i, label %.loopexit.i, label %.preheader72.i

.preheader72.i:                                   ; preds = %_kzalloc_noprof.exit66.i
  %i.s = load i32, ptr %i.b, align 4              ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader72.i
  %i.u = load i64, ptr %i.l, align 8
  br label %bb.c

bb.b:                                             ; preds = %_kmalloc_array_noprof.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.b, align 4              ; 3 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %bb.c, label %._crit_edge.i, !llvm.loop !66

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.y = phi i32 [ %i.s, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.z, i64 %i.u) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %_kmalloc_array_noprof.exit.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  %i.ad = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.ac, i32 noundef 3520) #26
  br label %_kmalloc_array_noprof.exit.i

_kmalloc_array_noprof.exit.i:                     ; preds = %bb.d, %bb.c
  %.0.i68.i = phi ptr [ null, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = load ptr, ptr %i.r, align 8
  %i.af = getelementptr [16 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store ptr %.0.i68.i, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.r, align 8
  %i.ai = getelementptr [16 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not58.i = icmp eq ptr %i.ak, null
  br i1 %.not58.i, label %.loopexit.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %.preheader72.i
  %i.al = phi i32 [ %i.s, %.preheader72.i ], [ %i.v, %bb.b ]
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %i.am = load i32, ptr @__uncore_max_dies, align 4
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next93.i, %i.an
  br i1 %i.ao, label %_kzalloc_noprof.exit66.i, label %.loopexit, !llvm.loop !67

.loopexit.i:                                      ; preds = %_kzalloc_noprof.exit66.i, %_kmalloc_array_noprof.exit.i
  %4 = and i64 %indvars.iv92.i, 2147483648
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %.preheader.preheader.i, label %._crit_edge86.i

.preheader.preheader.i:                           ; preds = %.loopexit.i
  %i.ap = and i64 %indvars.iv92.i, 2147483647
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge84.i, %.preheader.preheader.i
  %indvars.iv98.i = phi i64 [ %i.ap, %.preheader.preheader.i ], [ %indvars.iv.next99.i, %._crit_edge84.i ] ; 4 uses
  %i.aq = load i32, ptr %i.b, align 4
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph83.i, label %._crit_edge84.i

.lr.ph83.i:                                       ; preds = %.preheader.i
  %i.as = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv98.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph83.i
  %indvars.iv95.i = phi i64 [ 0, %.lr.ph83.i ], [ %indvars.iv.next96.i, %bb.e ] ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr [16 x i8], ptr %i.at, i64 %indvars.iv95.i
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void @kfree(ptr noundef %i.aw) #23
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %i.ax = load i32, ptr %i.b, align 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next96.i, %i.ay
  br i1 %i.az, label %bb.e, label %._crit_edge84.i, !llvm.loop !68

._crit_edge84.i:                                  ; preds = %bb.e, %.preheader.i
  %i.ba = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv98.i
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void @kfree(ptr noundef %i.bb) #23
  %indvars.iv.next99.i = add nsw i64 %indvars.iv98.i, -1
  %i.bc = icmp sgt i64 %indvars.iv98.i, 0
  br i1 %i.bc, label %.preheader.i, label %._crit_edge86.i, !llvm.loop !69

._crit_edge86.i:                                  ; preds = %._crit_edge84.i, %.loopexit.i
  tail call void @kfree(ptr noundef nonnull %i.h) #23
  br label %pmu_free_topology.exit

.loopexit:                                        ; preds = %._crit_edge.i, %.preheader73.i
  %i.bd = getelementptr i8, ptr %0, i64 216       ; 6 uses
  store ptr %i.h, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %0, i64 224
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call i32 %i.bf(ptr noundef %0) #23
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %.loopexit
  %i.bi = load i32, ptr @__uncore_max_dies, align 4
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = sext i32 %i.bj to i64
  %i.bm = shl nsw i64 %i.bl, 3
  %.0.i55 = select i1 %i.bk, i64 -1, i64 %i.bm
  %i.bn = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -103079215104, 103079215057) %.0.i55, i32 noundef 3520) #26 ; 4 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %bb.i, label %_kzalloc_noprof.exit64

_kzalloc_noprof.exit64:                           ; preds = %_kzalloc_noprof.exit
  %i.bo = load i32, ptr @__uncore_max_dies, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.bp, i64 40) ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  %i.bs = extractvalue { i64, i1 } %i.bq, 0
  %.0.i = select i1 %i.br, i64 -1, i64 %i.bs
  %i.bt = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -103079215104, 103079215057) %.0.i, i32 noundef 3520) #26 ; 4 uses
  %.not53 = icmp eq ptr %i.bt, null
  br i1 %.not53, label %bb.h, label %.preheader78

.preheader78:                                     ; preds = %_kzalloc_noprof.exit64
  %i.bu = load i32, ptr @__uncore_max_dies, align 4
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader78, %bb.f
  %.085 = phi i64 [ %i.cf, %bb.f ], [ 0, %.preheader78 ] ; 6 uses
  %i.bw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.317, i64 noundef %.085) #23 ; 0 uses
  %i.bx = call noalias ptr @kstrdup(ptr noundef nonnull %i.a, i32 noundef 3264) #23 ; 2 uses
  %i.by = getelementptr [40 x i8], ptr %i.bt, i64 %.085 ; 6 uses
  store ptr %i.bx, ptr %i.by, align 8
  %.not54 = icmp eq ptr %i.bx, null
  br i1 %.not54, label %.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store i16 292, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %i.by, i64 16
  store ptr %2, ptr %i.ca, align 8
  %i.cb = getelementptr i8, ptr %i.by, i64 24
  store ptr null, ptr %i.cb, align 8
  %i.cc = inttoptr i64 %.085 to ptr
  %i.cd = getelementptr i8, ptr %i.by, i64 32
  store ptr %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %.085
  store ptr %i.by, ptr %i.ce, align 8
  %i.cf = add nuw nsw i64 %.085, 1                ; 2 uses
  %i.cg = load i32, ptr @__uncore_max_dies, align 4
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.f, %.preheader78
  %i.cj = getelementptr i8, ptr %1, i64 32
  store ptr %i.bn, ptr %i.cj, align 8
  br label %pmu_clear_mapping_attr.exit

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %.186 = phi i64 [ %i.cm, %.preheader ], [ %.085, %.lr.ph ] ; 3 uses
  %i.ck = getelementptr [40 x i8], ptr %i.bt, i64 %.186
  %i.cl = load ptr, ptr %i.ck, align 8
  call void @kfree(ptr noundef %i.cl) #23
  %i.cm = add nsw i64 %.186, -1
  %i.cn = icmp sgt i64 %.186, 0
  br i1 %i.cn, label %.preheader, label %bb.g, !llvm.loop !71

bb.g:                                             ; preds = %.preheader
  call void @kfree(ptr noundef nonnull %i.bt) #23
  br label %bb.h

bb.h:                                             ; preds = %_kzalloc_noprof.exit64, %bb.g
  call void @kfree(ptr noundef nonnull %i.bn) #23
  br label %bb.i

bb.i:                                             ; preds = %_kzalloc_noprof.exit, %.loopexit, %bb.h
  %i.co = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not.i65 = icmp eq ptr %i.co, null
  br i1 %.not.i65, label %pmu_free_topology.exit, label %.preheader13.i

.preheader13.i:                                   ; preds = %bb.i
  %i.cp = load i32, ptr @__uncore_max_dies, align 4
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.preheader.i66, label %._crit_edge16.i

.preheader.i66:                                   ; preds = %.preheader13.i, %._crit_edge.i67
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %._crit_edge.i67 ], [ 0, %.preheader13.i ] ; 3 uses
  %i.cr = load i32, ptr %i.b, align 4
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i69, label %._crit_edge.i67

.lr.ph.i69:                                       ; preds = %.preheader.i66, %.lr.ph.i69
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i71, %.lr.ph.i69 ], [ 0, %.preheader.i66 ] ; 2 uses
  %i.ct = load ptr, ptr %i.bd, align 8
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv18.i
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr [16 x i8], ptr %i.cv, i64 %indvars.iv.i70
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void @kfree(ptr noundef %i.cy) #23
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %i.cz = load i32, ptr %i.b, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next.i71, %i.da
  br i1 %i.db, label %.lr.ph.i69, label %._crit_edge.i67, !llvm.loop !6

._crit_edge.i67:                                  ; preds = %.lr.ph.i69, %.preheader.i66
  %i.dc = load ptr, ptr %i.bd, align 8
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv18.i
  %i.de = load ptr, ptr %i.dd, align 8
  call void @kfree(ptr noundef %i.de) #23
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.df = load i32, ptr @__uncore_max_dies, align 4
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next19.i, %i.dg
  br i1 %i.dh, label %.preheader.i66, label %._crit_edge16.loopexit.i, !llvm.loop !7

._crit_edge16.loopexit.i:                         ; preds = %._crit_edge.i67
  %.pre.i68 = load ptr, ptr %i.bd, align 8
  br label %._crit_edge16.i

._crit_edge16.i:                                  ; preds = %._crit_edge16.loopexit.i, %.preheader13.i
  %i.di = phi ptr [ %.pre.i68, %._crit_edge16.loopexit.i ], [ %i.co, %.preheader13.i ]
  call void @kfree(ptr noundef %i.di) #23
  store ptr null, ptr %i.bd, align 8
  br label %pmu_free_topology.exit

pmu_free_topology.exit:                           ; preds = %._crit_edge86.i, %_kzalloc_noprof.exit.i, %bb.a, %._crit_edge16.i, %bb.i
  %i.dj = getelementptr i8, ptr %0, i64 192
  %i.dk = load ptr, ptr %i.dj, align 8            ; 5 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not19.i = icmp eq ptr %i.dl, null
  br i1 %.not19.i, label %pmu_clear_mapping_attr.exit, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %pmu_free_topology.exit, %bb.j
  %i.dm = phi ptr [ %i.dq, %bb.j ], [ %i.dl, %pmu_free_topology.exit ]
  %.020.i = phi i32 [ %.121.i, %bb.j ], [ 0, %pmu_free_topology.exit ] ; 3 uses
  %i.dn = icmp eq ptr %i.dm, %1
  %.121.i = add i32 %.020.i, 1                    ; 3 uses
  %i.do = sext i32 %.121.i to i64
  %i.dp = getelementptr [8 x i8], ptr %i.dk, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8            ; 3 uses
  %.not1722.i = icmp eq ptr %i.dq, null           ; 2 uses
  br i1 %i.dn, label %.preheader.i75, label %bb.j

.preheader.i75:                                   ; preds = %.lr.ph.i72
  br i1 %.not1722.i, label %._crit_edge.i76, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.preheader.i75, %.lr.ph25.i
  %i.dr = phi ptr [ %i.dw, %.lr.ph25.i ], [ %i.dq, %.preheader.i75 ]
  %.124.i = phi i32 [ %.1.i, %.lr.ph25.i ], [ %.121.i, %.preheader.i75 ] ; 3 uses
  %.1.in23.i = phi i32 [ %.124.i, %.lr.ph25.i ], [ %.020.i, %.preheader.i75 ]
  %i.ds = sext i32 %.1.in23.i to i64
  %i.dt = getelementptr [8 x i8], ptr %i.dk, i64 %i.ds
  store ptr %i.dr, ptr %i.dt, align 8
  %.1.i = add i32 %.124.i, 1                      ; 2 uses
  %i.du = sext i32 %.1.i to i64
  %i.dv = getelementptr [8 x i8], ptr %i.dk, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not17.i = icmp eq ptr %i.dw, null
  br i1 %.not17.i, label %._crit_edge.i76, label %.lr.ph25.i, !llvm.loop !8

._crit_edge.i76:                                  ; preds = %.lr.ph25.i, %.preheader.i75
  %.1.in.lcssa.i = phi i32 [ %.020.i, %.preheader.i75 ], [ %.124.i, %.lr.ph25.i ]
  %i.dx = sext i32 %.1.in.lcssa.i to i64
  %i.dy = getelementptr [8 x i8], ptr %i.dk, i64 %i.dx
  store ptr null, ptr %i.dy, align 8
  br label %pmu_clear_mapping_attr.exit

bb.j:                                             ; preds = %.lr.ph.i72
  br i1 %.not1722.i, label %pmu_clear_mapping_attr.exit, label %.lr.ph.i72, !llvm.loop !9

pmu_clear_mapping_attr.exit:                      ; preds = %bb.j, %._crit_edge.i76, %pmu_free_topology.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef range(i64 -2147483648, 2147483648) i64 @skx_iio_mapping_show(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 376
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
end_hunk_0
