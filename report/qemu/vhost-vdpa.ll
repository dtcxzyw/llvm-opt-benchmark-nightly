Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vhost-vdpa?download=true
inline.NumInlined: 191
inline.NumDeleted: 88
begin_hunk_0_@llvm.memcpy.p0.p0.i64

declare ptr @g_ptr_array_new_full(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @vhost_svq_free(ptr noundef) #4

declare ptr @vhost_svq_new(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @g_ptr_array_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @vhost_vdpa_listener_commit(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.vhost_msg_v2, align 8       ; 6 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 72, i1 false)
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !11, !noundef !12
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 6, ptr %i.i, align 1
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_vhost_vdpa_listener_commit.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.k = load i16, ptr @_TRACE_VHOST_VDPA_LISTENER_COMMIT_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.k, 0
  br i1 %.not3.i, label %trace_vhost_vdpa_listener_commit.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %trace_vhost_vdpa_listener_commit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a, i32 noundef %i.b, i32 noundef 2, i32 noundef 6) #12
  br label %trace_vhost_vdpa_listener_commit.exit

trace_vhost_vdpa_listener_commit.exit:            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.n = call i64 @write(i32 noundef %i.b, ptr noundef nonnull %1, i64 noundef 72) #12
  %.not10 = icmp eq i64 %i.n, 72
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %trace_vhost_vdpa_listener_commit.exit
  %i.o = tail call ptr @__errno_location() #13
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = tail call ptr @strerror(i32 noundef %i.p) #12
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str, i32 noundef %i.b, i32 noundef %i.p, ptr noundef %i.q) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %trace_vhost_vdpa_listener_commit.exit
  store i8 0, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vhost_vdpa_listener_region_add(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.DMAMap, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 6 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %.neg.i = mul i64 %i.b, -4294967296             ; 2 uses
  %i.c = ashr exact i64 %.neg.i, 32               ; 3 uses
  %i.d = trunc nsw i64 %i.c to i32
  %i.e = sub i32 0, %i.d                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call fastcc zeroext i1 @vhost_vdpa_listener_skipped_section(ptr noundef %1, i64 noundef %i.g, i64 noundef %i.i, i32 noundef %i.e)
  br i1 %i.j, label %vhost_vdpa_iommu_region_add.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 16             ; 4 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.b
  %.tr.i = phi ptr [ %i.l, %bb.b ], [ %i.n, %tailrecurse.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr.i, i64 160
  %i.n = load ptr, ptr %i.m, align 16             ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %memory_region_get_iommu.exit, label %tailrecurse.i

memory_region_get_iommu.exit:                     ; preds = %tailrecurse.i
  %i.o = getelementptr inbounds nuw i8, ptr %.tr.i, i64 50
  %i.p = load i8, ptr %i.o, align 2, !range !11, !noundef !12
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.i

bb.c:                                             ; preds = %memory_region_get_iommu.exit
  %i.r = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.l, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 47, ptr noundef nonnull @__func__.IOMMU_MEMORY_REGION) #12 ; 2 uses
  %i.s = tail call noalias dereferenceable_or_null(104) ptr @g_malloc0(i64 noundef 104) #15 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 16
  %i.v = zext i64 %i.u to i128
  %i.w = load i128, ptr %1, align 16
  %i.x = add nsw i128 %i.v, -1
  %i.y = add i128 %i.x, %i.w                      ; 2 uses
  %i.z = tail call i32 @memory_region_iommu_attrs_to_index(ptr noundef %i.r, i64 4294967296) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.ac = icmp ult i128 %i.y, 18446744073709551616
  br i1 %i.ac, label %int128_get64.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #14
  unreachable

int128_get64.exit.i:                              ; preds = %bb.c
  %i.ad = load i64, ptr %i.t, align 16            ; 2 uses
  %i.ae = trunc nuw i128 %i.y to i64
  store ptr @vhost_vdpa_iommu_map_notify, ptr %i.ab, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 3, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.ad, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %i.ae, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i32 %i.z, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = sub i64 %i.ak, %i.ad
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.al, ptr %i.am, align 8
  store ptr %i.a, ptr %i.s, align 8
  %i.an = load ptr, ptr %i.k, align 16
  %i.ao = tail call i32 @memory_region_register_iommu_notifier(ptr noundef %i.an, ptr noundef nonnull %i.ab, ptr noundef null) #12
  %.not.i66 = icmp eq i32 %i.ao, 0
  br i1 %.not.i66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %int128_get64.exit.i
  tail call void @g_free(ptr noundef nonnull %i.s) #12
  br label %vhost_vdpa_iommu_region_add.exit

bb.f:                                             ; preds = %int128_get64.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 88 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8
  %.not40.i = icmp eq ptr %i.aq, null
  br i1 %.not40.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store ptr %i.ar, ptr %i.as, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.s, ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  store ptr %i.ap, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.aa, align 8
  tail call void @memory_region_iommu_replay(ptr noundef %i.au, ptr noundef nonnull %i.ab) #12
  br label %vhost_vdpa_iommu_region_add.exit

bb.i:                                             ; preds = %memory_region_get_iommu.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %sext = add i64 %.neg.i, -4294967296
  %i.ax = ashr exact i64 %sext, 32                ; 2 uses
  %i.ay = and i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 16
  %i.bb = and i64 %i.ba, %i.ax                    ; 2 uses
  %.not62 = icmp eq i64 %i.ay, %i.bb
  br i1 %.not62, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call fastcc void @trace_vhost_vdpa_listener_region_add_unaligned(ptr noundef nonnull %i.a, ptr noundef %i.bd, i64 noundef %i.ay, i64 noundef %i.bb)
  br label %vhost_vdpa_iommu_region_add.exit

bb.k:                                             ; preds = %bb.i
  %i.be = add nsw i64 %i.c, -1
  %i.bf = add i64 %i.be, %i.aw
  %i.bg = sub nsw i64 0, %i.c
  %i.bh = and i64 %i.bf, %i.bg                    ; 5 uses
  %.val = load i128, ptr %1, align 16
  %i.bi = zext i64 %i.aw to i128
  %i.bj = add i128 %.val, %i.bi
  %i.bk = sext i32 %i.e to i128
  %i.bl = and i128 %i.bj, %i.bk                   ; 4 uses
  %i.bm = zext i64 %i.bh to i128
  %.not = icmp sgt i128 %i.bl, %i.bm
  br i1 %.not, label %bb.l, label %vhost_vdpa_iommu_region_add.exit

bb.l:                                             ; preds = %bb.k
  tail call void @memory_region_ref(ptr noundef %i.l) #12
  %i.bn = load ptr, ptr %i.k, align 16
  %i.bo = tail call ptr @memory_region_get_ram_ptr(ptr noundef %i.bn) #12
  %i.bp = load i64, ptr %i.az, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %i.br = load i64, ptr %i.av, align 8
  %i.bs = sub i64 %i.bh, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs ; 2 uses
  %i.bu = icmp samesign ult i128 %i.bl, 18446744073709551616
  br i1 %i.bu, label %int128_get64.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #14
  unreachable

int128_get64.exit:                                ; preds = %bb.l
  %i.bv = trunc nuw i128 %i.bl to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 16, !range !11, !noundef !12
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i67 = icmp eq i32 %i.bz, 0
  br i1 %.not.i67, label %trace_vhost_vdpa_listener_region_add.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %int128_get64.exit
  %i.ca = load i16, ptr @_TRACE_VHOST_VDPA_LISTENER_REGION_ADD_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.ca, 0
  br i1 %.not4.i, label %trace_vhost_vdpa_listener_region_add.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = load i32, ptr @qemu_loglevel, align 4
  %i.cc = and i32 %i.cb, 32768
  %.not5.i = icmp eq i32 %i.cc, 0
  br i1 %.not5.i, label %trace_vhost_vdpa_listener_region_add.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30, ptr noundef nonnull %i.a, i64 noundef %i.bh, i64 noundef %i.bv, ptr noundef %i.bt, i32 noundef %i.by) #12
  br label %trace_vhost_vdpa_listener_region_add.exit

trace_vhost_vdpa_listener_region_add.exit:        ; preds = %int128_get64.exit, %bb.n, %bb.o, %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 2, !range !11, !noundef !12
  %i.cf = trunc nuw i8 %i.ce to i1
  %3 = trunc nuw i128 %i.bl to i64
  %4 = sub i64 %3, %i.bh                          ; 2 uses
  br i1 %i.cf, label %int128_get64.exit68, label %.int128_get64.exit69_crit_edge

int128_get64.exit68:                              ; preds = %trace_vhost_vdpa_listener_region_add.exit
  %5 = load i64, ptr %i.av, align 8               ; 2 uses
  %i.cg = add i64 %4, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.cg, ptr %i.ch, align 8
  %i.ci = load i8, ptr %i.bw, align 16, !range !11, !noundef !12
  %i.cj = shl nuw nsw i8 %i.ci, 1
  %i.ck = or disjoint i8 %i.cj, 1
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call i32 @vhost_iova_tree_map_alloc_gpa(ptr noundef %i.co, ptr noundef nonnull %2, i64 noundef %5) #12 ; 2 uses
  %.not63 = icmp eq i32 %i.cp, 0
  br i1 %.not63, label %.thread75, label %bb.q, !prof !7

bb.q:                                             ; preds = %int128_get64.exit68
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.14, i32 noundef %i.cp) #12
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp eq i64 %i.cr, %5
  br i1 %i.cs, label %.thread72, label %bb.s

.thread75:                                        ; preds = %int128_get64.exit68
  %i.ct = load i64, ptr %2, align 8
  call fastcc void @vhost_vdpa_iotlb_batch_begin_once(ptr noundef nonnull %i.a)
  br label %int128_get64.exit69

.int128_get64.exit69_crit_edge:                   ; preds = %trace_vhost_vdpa_listener_region_add.exit
  tail call fastcc void @vhost_vdpa_iotlb_batch_begin_once(ptr noundef nonnull %i.a)
  br label %int128_get64.exit69

int128_get64.exit69:                              ; preds = %.int128_get64.exit69_crit_edge, %.thread75
  %.177 = phi i64 [ %i.bh, %.int128_get64.exit69_crit_edge ], [ %i.ct, %.thread75 ]
  %i.cu = load i8, ptr %i.bw, align 16, !range !11, !noundef !12
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = call i32 @vhost_vdpa_dma_map(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef %.177, i64 noundef %4, ptr noundef %i.bt, i1 noundef zeroext %i.cv)
  %.not64 = icmp eq i32 %i.cw, 0
  br i1 %.not64, label %vhost_vdpa_iommu_region_add.exit, label %.thread72

.thread72:                                        ; preds = %int128_get64.exit69, %bb.q
  %.str.15.sink = phi ptr [ @.str.15, %bb.q ], [ @.str.16, %int128_get64.exit69 ]
  call void (ptr, ...) @error_report(ptr noundef nonnull %.str.15.sink) #12
  %i.cx = load i8, ptr %i.cd, align 2, !range !11, !noundef !12
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread72
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.da = load ptr, ptr %i.cz, align 8
  call void @vhost_iova_tree_remove_gpa(ptr noundef %i.da, ptr noundef nonnull byval(%struct.DMAMap) align 8 %2) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %.thread72, %bb.r
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.17) #12
  br label %vhost_vdpa_iommu_region_add.exit

vhost_vdpa_iommu_region_add.exit:                 ; preds = %bb.h, %bb.e, %int128_get64.exit69, %bb.k, %bb.a, %bb.s, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vhost_vdpa_listener_region_del(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.DMAMap, align 8             ; 8 uses
  %3 = alloca %struct.DMAMap, align 8             ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 8 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %.neg.i = mul i64 %i.b, -4294967296             ; 2 uses
  %i.c = ashr exact i64 %.neg.i, 32               ; 3 uses
  %i.d = trunc nsw i64 %i.c to i32
  %i.e = sub i32 0, %i.d                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call fastcc zeroext i1 @vhost_vdpa_listener_skipped_section(ptr noundef %1, i64 noundef %i.g, i64 noundef %i.i, i32 noundef %i.e)
  br i1 %i.j, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.b
  %.tr.i = phi ptr [ %i.l, %bb.b ], [ %i.n, %tailrecurse.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr.i, i64 160
  %i.n = load ptr, ptr %i.m, align 16             ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %memory_region_get_iommu.exit, label %tailrecurse.i

memory_region_get_iommu.exit:                     ; preds = %tailrecurse.i
  %i.o = getelementptr inbounds nuw i8, ptr %.tr.i, i64 50
  %i.p = load i8, ptr %i.o, align 2, !range !11, !noundef !12
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %vhost_vdpa_iommu_region_del.exit

bb.c:                                             ; preds = %memory_region_get_iommu.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.024.i = load ptr, ptr %i.r, align 8           ; 2 uses
  %.not25.i = icmp eq ptr %.024.i, null
  br i1 %.not25.i, label %vhost_vdpa_iommu_region_del.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.026.i = phi ptr [ %.024.i, %.lr.ph.i ], [ %.0.i, %bb.h ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.u, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.22, i32 noundef 42, ptr noundef nonnull @__func__.MEMORY_REGION) #12
  %i.w = load ptr, ptr %i.k, align 16             ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.026.i, i64 40
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = load i64, ptr %i.s, align 16
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.026.i, i64 24
  tail call void @memory_region_unregister_iommu_notifier(ptr noundef %i.w, ptr noundef nonnull %i.ac) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %.026.i, i64 88 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not22.i = icmp eq ptr %i.ae, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.026.i, i64 96
  %.pre29.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  br i1 %.not22.i, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store ptr %.pre29.i, ptr %i.af, align 8
  %.pre.i = load ptr, ptr %i.ad, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.ag = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.f ]
  store ptr %i.ag, ptr %.pre29.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  tail call void @g_free(ptr noundef nonnull %.026.i) #12
  br label %vhost_vdpa_iommu_region_del.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.026.i, i64 88
  %.0.i = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i75 = icmp eq ptr %.0.i, null
  br i1 %.not.i75, label %vhost_vdpa_iommu_region_del.exit, label %bb.d, !llvm.loop !24

vhost_vdpa_iommu_region_del.exit:                 ; preds = %bb.h, %._crit_edge.i, %bb.c, %memory_region_get_iommu.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %sext = add i64 %.neg.i, -4294967296
  %i.ak = ashr exact i64 %sext, 32                ; 2 uses
  %i.al = and i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 16
  %i.ao = and i64 %i.an, %i.ak                    ; 2 uses
  %.not70 = icmp eq i64 %i.al, %i.ao
  br i1 %.not70, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %vhost_vdpa_iommu_region_del.exit
  %i.ap = load ptr, ptr %i.k, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call fastcc void @trace_vhost_vdpa_listener_region_del_unaligned(ptr noundef nonnull %i.a, ptr noundef %i.ar, i64 noundef %i.al, i64 noundef %i.ao)
  br label %bb.u

bb.j:                                             ; preds = %vhost_vdpa_iommu_region_del.exit
  %i.as = add nsw i64 %i.c, -1
  %i.at = add i64 %i.as, %i.aj
  %i.au = sub nsw i64 0, %i.c
  %i.av = and i64 %i.at, %i.au                    ; 6 uses
  %.val = load i128, ptr %1, align 16
  %i.aw = zext i64 %i.aj to i128
  %i.ax = add i128 %.val, %i.aw
  %i.ay = sext i32 %i.e to i128
  %i.az = and i128 %i.ax, %i.ay                   ; 3 uses
  %i.ba = add i128 %i.az, -1                      ; 2 uses
  %i.bb = icmp ult i128 %i.ba, 18446744073709551616
  br i1 %i.bb, label %int128_get64.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #14
  unreachable

int128_get64.exit:                                ; preds = %bb.j
  %i.bc = trunc nuw i128 %i.ba to i64
  %i.bd = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i76 = icmp eq i32 %i.bd, 0
  br i1 %.not.i76, label %trace_vhost_vdpa_listener_region_del.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %int128_get64.exit
  %i.be = load i16, ptr @_TRACE_VHOST_VDPA_LISTENER_REGION_DEL_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.be, 0
  br i1 %.not2.i, label %trace_vhost_vdpa_listener_region_del.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr @qemu_loglevel, align 4
  %i.bg = and i32 %i.bf, 32768
  %.not3.i = icmp eq i32 %i.bg, 0
  br i1 %.not3.i, label %trace_vhost_vdpa_listener_region_del.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.36, ptr noundef nonnull %i.a, i64 noundef %i.av, i64 noundef %i.bc) #12
  br label %trace_vhost_vdpa_listener_region_del.exit

trace_vhost_vdpa_listener_region_del.exit:        ; preds = %int128_get64.exit, %bb.l, %bb.m, %bb.n
  %i.bh = zext i64 %i.av to i128                  ; 2 uses
  %.not = icmp samesign ugt i128 %i.az, %i.bh
  br i1 %.not, label %bb.o, label %bb.u

bb.o:                                             ; preds = %trace_vhost_vdpa_listener_region_del.exit
  %i.bi = sub nuw nsw i128 %i.az, %i.bh           ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 234
  %i.bk = load i8, ptr %i.bj, align 2, !range !11, !noundef !12
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  %i.bn = load i64, ptr %i.ai, align 8
  store i64 %i.bn, ptr %i.bm, align 8
  %i.bo = icmp samesign ult i128 %i.bi, 18446744073709551616
  br i1 %i.bo, label %int128_get64.exit77, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #14
  unreachable

int128_get64.exit77:                              ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = trunc nuw i128 %i.bi to i64             ; 2 uses
  %i.br = add i64 %i.bq, -1
  store i64 %i.br, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call ptr @vhost_iova_tree_find_gpa(ptr noundef %i.bu, ptr noundef nonnull %2) #12 ; 3 uses
  %.not71.not = icmp eq ptr %i.bv, null
  br i1 %.not71.not, label %.critedge, label %.thread

.thread:                                          ; preds = %int128_get64.exit77
  %i.bw = load i64, ptr %i.bv, align 1
  %i.bx = load ptr, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 1 dereferenceable(28) %i.bv, i64 28, i1 false)
  call void @vhost_iova_tree_remove_gpa(ptr noundef %i.bx, ptr noundef nonnull byval(%struct.DMAMap) align 8 %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call fastcc void @vhost_vdpa_iotlb_batch_begin_once(ptr noundef nonnull %i.a)
  br label %int128_get64.exit81

bb.r:                                             ; preds = %bb.o
  tail call fastcc void @vhost_vdpa_iotlb_batch_begin_once(ptr noundef nonnull %i.a)
  %i.by = icmp eq i128 %i.bi, 18446744073709551616
  br i1 %i.by, label %int128_get64.exit78, label %bb.s

int128_get64.exit78:                              ; preds = %bb.r
  %i.bz = tail call i32 @vhost_vdpa_dma_unmap(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef %i.av, i64 noundef -9223372036854775808) ; 2 uses
  %.not72 = icmp eq i32 %i.bz, 0
  br i1 %.not72, label %int128_get64.exit80, label %int128_get64.exit79

int128_get64.exit79:                              ; preds = %int128_get64.exit78
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a, i64 noundef %i.av, i64 noundef -9223372036854775808, i32 noundef %i.bz) #12
  br label %int128_get64.exit80

int128_get64.exit80:                              ; preds = %int128_get64.exit78, %int128_get64.exit79
  %i.ca = xor i64 %i.av, -9223372036854775808
  br label %int128_get64.exit81

bb.s:                                             ; preds = %bb.r
  %extract.t = trunc nuw i128 %i.bi to i64
  br label %int128_get64.exit81

int128_get64.exit81:                              ; preds = %bb.s, %.thread, %int128_get64.exit80
  %.06388.off0 = phi i64 [ %extract.t, %bb.s ], [ %i.bq, %.thread ], [ -9223372036854775808, %int128_get64.exit80 ] ; 2 uses
  %.287 = phi i64 [ %i.av, %bb.s ], [ %i.bw, %.thread ], [ %i.ca, %int128_get64.exit80 ] ; 2 uses
  %i.cb = call i32 @vhost_vdpa_dma_unmap(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef %.287, i64 noundef %.06388.off0) ; 2 uses
  %.not73 = icmp eq i32 %i.cb, 0
  br i1 %.not73, label %bb.t, label %int128_get64.exit82

int128_get64.exit82:                              ; preds = %int128_get64.exit81
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a, i64 noundef %.287, i64 noundef %.06388.off0, i32 noundef %i.cb) #12
  br label %bb.t

bb.t:                                             ; preds = %int128_get64.exit82, %int128_get64.exit81
  %i.cc = load ptr, ptr %i.k, align 16
  call void @memory_region_unref(ptr noundef %i.cc) #12
  br label %bb.u

.critedge:                                        ; preds = %int128_get64.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %trace_vhost_vdpa_listener_region_del.exit, %bb.a, %bb.t, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @vhost_vdpa_listener_skipped_section(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16             ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 41
  %.val = load i8, ptr %i.c, align 1, !range !11, !noundef !12 ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %i.b, %bb.a ], [ %i.e, %tailrecurse.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr.i, i64 160
  %i.e = load ptr, ptr %i.d, align 16             ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %memory_region_get_iommu.exit, label %tailrecurse.i

memory_region_get_iommu.exit:                     ; preds = %tailrecurse.i
  %i.f = getelementptr inbounds nuw i8, ptr %.tr.i, i64 50
  %i.g = load i8, ptr %i.f, align 2, !range !11, !noundef !12 ; 3 uses
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = tail call zeroext i1 @memory_region_is_protected(ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.j = load ptr, ptr %i.a, align 16
  %i.k = tail call zeroext i1 @memory_region_is_ram_device(ptr noundef %i.j) #12 ; 2 uses
  %i.l = or i8 %.val, %i.g
  %or.cond.not39 = icmp eq i8 %i.l, 0
  %or.cond3 = select i1 %or.cond.not39, i1 true, i1 %i.i
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.k
  br i1 %or.cond5, label %bb.b, label %bb.f

bb.b:                                             ; preds = %memory_region_get_iommu.exit
  %i.m = zext nneg i8 %.val to i32
  %i.n = zext nneg i8 %i.g to i32
  %i.o = zext i1 %i.i to i32
  %i.p = zext i1 %i.k to i32
  %i.q = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i35 = icmp eq i32 %i.q, 0
  br i1 %.not.i35, label %trace_vhost_vdpa_skipped_memory_section.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.r = load i16, ptr @_TRACE_VHOST_VDPA_SKIPPED_MEMORY_SECTION_DSTATE, align 2
  %.not7.i = icmp eq i16 %i.r, 0
  br i1 %.not7.i, label %trace_vhost_vdpa_skipped_memory_section.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr @qemu_loglevel, align 4
  %i.t = and i32 %i.s, 32768
  %.not8.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i, label %trace_vhost_vdpa_skipped_memory_section.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.20, i32 noundef range(i32 0, 2) %i.m, i32 noundef range(i32 0, 2) %i.n, i32 noundef range(i32 0, 2) %i.o, i32 noundef range(i32 0, 2) %i.p, i64 noundef %1, i64 noundef %2, i32 noundef %3) #12
  br label %trace_vhost_vdpa_skipped_memory_section.exit

bb.f:                                             ; preds = %memory_region_get_iommu.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = icmp ult i64 %i.v, %1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.18, i64 noundef %1, i64 noundef %i.v) #12
  br label %trace_vhost_vdpa_skipped_memory_section.exit

bb.h:                                             ; preds = %bb.f
  br i1 %i.h, label %trace_vhost_vdpa_skipped_memory_section.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val33 = load i128, ptr %0, align 16
  %i.x = zext i64 %i.v to i128
  %i.y = add i128 %.val33, %i.x
  %i.z = sext i32 %3 to i128
  %i.aa = and i128 %i.y, %i.z                     ; 3 uses
  %i.ab = zext i64 %2 to i128
  %i.ac = icmp sgt i128 %i.aa, %i.ab
  br i1 %i.ac, label %bb.j, label %trace_vhost_vdpa_skipped_memory_section.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp samesign ult i128 %i.aa, 18446744073709551616
  br i1 %i.ad, label %int128_get64.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #14
  unreachable

int128_get64.exit:                                ; preds = %bb.j
  %i.ae = trunc nuw i128 %i.aa to i64
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.19, i64 noundef %2, i64 noundef %i.ae) #12
  br label %trace_vhost_vdpa_skipped_memory_section.exit

trace_vhost_vdpa_skipped_memory_section.exit:     ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.h, %bb.i, %int128_get64.exit, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ], [ true, %int128_get64.exit ], [ false, %bb.i ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_vhost_vdpa_listener_region_add_unaligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_VHOST_VDPA_LISTENER_REGION_ADD_UNALIGNED_DSTATE, align 2
  %.not3 = icmp eq i16 %i.b, 0
  br i1 %.not3, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not4 = icmp eq i32 %i.d, 0
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @memory_region_ref(ptr noundef) local_unnamed_addr #4

declare ptr @memory_region_get_ram_ptr(ptr noundef) local_unnamed_addr #4

declare i32 @vhost_iova_tree_map_alloc_gpa(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vhost_vdpa_iotlb_batch_begin_once(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.vhost_msg_v2, align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = load i8, ptr %i.d, align 8, !range !11, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 72, i1 false)
  store i32 2, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 5, ptr %i.h, align 1
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %trace_vhost_vdpa_listener_begin_batch.exit.i, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr @_TRACE_VHOST_VDPA_LISTENER_BEGIN_BATCH_DSTATE, align 2
  %.not3.i.i = icmp eq i16 %i.j, 0
  br i1 %.not3.i.i, label %trace_vhost_vdpa_listener_begin_batch.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not4.i.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i.i, label %trace_vhost_vdpa_listener_begin_batch.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.33, ptr noundef nonnull %0, i32 noundef %i.g, i32 noundef 2, i32 noundef 5) #12
  br label %trace_vhost_vdpa_listener_begin_batch.exit.i

trace_vhost_vdpa_listener_begin_batch.exit.i:     ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.m = call i64 @write(i32 noundef %i.g, ptr noundef nonnull %1, i64 noundef 72) #12
  %.not.i = icmp eq i64 %i.m, 72
  br i1 %.not.i, label %vhost_vdpa_listener_begin_batch.exit, label %bb.g

bb.g:                                             ; preds = %trace_vhost_vdpa_listener_begin_batch.exit.i
  %i.n = tail call ptr @__errno_location() #13
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = tail call ptr @strerror(i32 noundef %i.o) #12
end_hunk_0
