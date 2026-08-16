inline.NumInlined: 134
inline.NumDeleted: 57
begin_hunk_0_@vfio_listener_begin:bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.e(ptr noundef nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vfio_listener_commit(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -48 ; 2 uses
  %i.b = tail call ptr @object_get_class(ptr noundef nonnull %i.a) #14
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 59, ptr noundef nonnull @__func__.VFIO_IOMMU_GET_CLASS) #14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.e(ptr noundef nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vfio_listener_region_add(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -48
  tail call void @vfio_container_region_add(ptr noundef nonnull %i.a, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vfio_listener_region_del(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.IOMMUTLBEntry, align 8      ; 8 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.c = load i8, ptr %i.b, align 8, !range !9, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = tail call fastcc zeroext i1 @vfio_listener_valid_section(ptr noundef %1, i1 noundef zeroext %i.d, ptr noundef nonnull @.str.41)
  br i1 %i.e, label %bb.b, label %vfio_get_section_iova_range.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 16             ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.b
  %.tr.i = phi ptr [ %i.g, %bb.b ], [ %i.i, %tailrecurse.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.i, i64 160
  %i.i = load ptr, ptr %i.h, align 16             ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %memory_region_get_iommu.exit, label %tailrecurse.i

memory_region_get_iommu.exit:                     ; preds = %tailrecurse.i
  %i.j = getelementptr inbounds nuw i8, ptr %.tr.i, i64 50
  %i.k = load i8, ptr %i.j, align 2, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %memory_region_get_iommu.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i68 = icmp eq i32 %i.o, 0
  br i1 %.not.i68, label %trace_vfio_listener_region_del_iommu.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.p = load i16, ptr @_TRACE_VFIO_LISTENER_REGION_DEL_IOMMU_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.p, 0
  br i1 %.not1.i, label %trace_vfio_listener_region_del_iommu.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 32768
  %.not2.i = icmp eq i32 %i.r, 0
  br i1 %.not2.i, label %trace_vfio_listener_region_del_iommu.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.43, ptr noundef %i.n) #14
  br label %trace_vfio_listener_region_del_iommu.exit

trace_vfio_listener_region_del_iommu.exit:        ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.05296 = load ptr, ptr %i.s, align 8           ; 2 uses
  %.not5897 = icmp eq ptr %.05296, null
  br i1 %.not5897, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %trace_vfio_listener_region_del_iommu.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %.05298 = phi ptr [ %.05296, %.lr.ph ], [ %.052, %bb.k ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05298, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.v, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.14, i32 noundef 42, ptr noundef nonnull @__func__.MEMORY_REGION) #14
  %i.x = load ptr, ptr %i.f, align 16             ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.05298, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = load i64, ptr %i.t, align 16
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.05298, i64 24
  tail call void @memory_region_unregister_iommu_notifier(ptr noundef %i.x, ptr noundef nonnull %i.ad) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %.05298, i64 88 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not59 = icmp eq ptr %i.af, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.05298, i64 96
  %.pre102 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not59, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store ptr %.pre102, ptr %i.ag, align 8
  %.pre = load ptr, ptr %i.ae, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.j
  %i.ah = phi ptr [ %.pre, %bb.j ], [ null, %bb.i ]
  store ptr %i.ah, ptr %.pre102, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  tail call void @g_free(ptr noundef nonnull %.05298) #14
  br label %.loopexit

bb.k:                                             ; preds = %bb.g, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.05298, i64 88
  %.052 = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not58 = icmp eq ptr %.052, null
  br i1 %.not58, label %.loopexit, label %bb.g, !llvm.loop !18

.loopexit:                                        ; preds = %bb.k, %trace_vfio_listener_region_del_iommu.exit, %._crit_edge, %memory_region_get_iommu.exit
  %.val66 = load i128, ptr %1, align 16
  %i.aj = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %.val67 = load i64, ptr %i.aj, align 8          ; 2 uses
  %i.ak = tail call i32 @getpagesize() #15
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = add i64 %.val67, -1
  %i.an = add i64 %i.am, %i.al
  %i.ao = sub nsw i64 0, %i.al                    ; 2 uses
  %i.ap = and i64 %i.an, %i.ao                    ; 7 uses
  %i.aq = zext i64 %.val67 to i128
  %i.ar = add i128 %.val66, %i.aq
  %i.as = sext i64 %i.ao to i128
  %i.at = and i128 %i.ar, %i.as                   ; 4 uses
  %i.au = zext i64 %i.ap to i128                  ; 2 uses
  %.not1.i69 = icmp sgt i128 %i.at, %i.au
  br i1 %.not1.i69, label %bb.l, label %vfio_get_section_iova_range.exit

bb.l:                                             ; preds = %.loopexit
  %i.av = icmp samesign ult i128 %i.at, 18446744073709551617
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aw = trunc i128 %i.at to i64
  %i.ax = add i64 %i.aw, -1
  %i.ay = sub nsw i128 %i.at, %i.au               ; 5 uses
  %i.az = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i71 = icmp eq i32 %i.az, 0
  br i1 %.not.i71, label %trace_vfio_listener_region_del.exit, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.ba = load i16, ptr @_TRACE_VFIO_LISTENER_REGION_DEL_DSTATE, align 2
  %.not2.i72 = icmp eq i16 %i.ba, 0
  br i1 %.not2.i72, label %trace_vfio_listener_region_del.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr @qemu_loglevel, align 4
  %i.bc = and i32 %i.bb, 32768
  %.not3.i = icmp eq i32 %i.bc, 0
  br i1 %.not3.i, label %trace_vfio_listener_region_del.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, i64 noundef %i.ap, i64 noundef %i.ax) #14
  br label %trace_vfio_listener_region_del.exit

trace_vfio_listener_region_del.exit:              ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %i.bd = load ptr, ptr %i.f, align 16
  %i.be = tail call zeroext i1 @memory_region_is_ram_device(ptr noundef %i.bd) #14
  br i1 %i.be, label %bb.r, label %bb.u

bb.r:                                             ; preds = %trace_vfio_listener_region_del.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %3 = add i64 %i.bg, -1
  %4 = xor i64 %i.bg, -1
  %5 = and i64 %3, %4                             ; 2 uses
  %i.bh = and i64 %5, %i.ap
  %.not60 = icmp eq i64 %i.bh, 0
  br i1 %.not60, label %bb.s, label %.critedge65

bb.s:                                             ; preds = %bb.r
  %i.bi = icmp ult i128 %i.ay, 18446744073709551616
  br i1 %i.bi, label %int128_get64.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #13
  unreachable

int128_get64.exit:                                ; preds = %bb.s
  %i.bj = trunc nuw i128 %i.ay to i64
  %i.bk = and i64 %5, %i.bj
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.critedge.thread, label %.critedge65

.critedge.thread:                                 ; preds = %int128_get64.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  br label %bb.ad

bb.u:                                             ; preds = %trace_vfio_listener_region_del.exit
  %i.bm = load ptr, ptr %i.f, align 16
  %i.bn = tail call ptr @memory_region_get_ram_discard_manager(ptr noundef %i.bm) #14
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %i.f, align 16
  %i.bp = tail call ptr @memory_region_get_ram_discard_manager(ptr noundef %i.bo) #14
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.022.i = load ptr, ptr %i.bq, align 8          ; 2 uses
  %.not23.i = icmp eq ptr %.022.i, null
  br i1 %.not23.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.br = load ptr, ptr %i.f, align 16
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i
  %.024.i = phi ptr [ %.022.i, %.lr.ph.i ], [ %.0.i, %bb.y ] ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bt, %i.br
  br i1 %i.bu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %.024.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.aj, align 8
  %i.by = icmp eq i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %.024.i, i64 80
  %.0.i = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not.i73 = icmp eq ptr %.0.i, null
  br i1 %.not.i73, label %.critedge.i, label %bb.w, !llvm.loop !19

.critedge.i:                                      ; preds = %bb.y, %bb.v
  tail call void (ptr, ...) @hw_error(ptr noundef nonnull @.str.46) #13
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %.024.i, i64 40
  tail call void @ram_discard_manager_unregister_listener(ptr noundef %i.bp, ptr noundef nonnull %i.ca) #14
  %i.cb = getelementptr inbounds nuw i8, ptr %.024.i, i64 80 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.cc, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.024.i, i64 88
  %.pre26.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  br i1 %.not20.i, label %vfio_ram_discard_unregister_listener.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store ptr %.pre26.i, ptr %i.cd, align 8
  %.pre.i = load ptr, ptr %i.cb, align 8
  br label %vfio_ram_discard_unregister_listener.exit

vfio_ram_discard_unregister_listener.exit:        ; preds = %bb.z, %bb.aa
  %i.ce = phi ptr [ %.pre.i, %bb.aa ], [ null, %bb.z ]
  store ptr %i.ce, ptr %.pre26.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  tail call void @g_free(ptr noundef nonnull %.024.i) #14
  br label %.critedge65

.critedge:                                        ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.cf = icmp eq i128 %i.ay, 18446744073709551616
  br i1 %i.cf, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.critedge
  %.not61 = icmp eq i64 %i.ap, 0
  br i1 %.not61, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2, i32 noundef 727, ptr noundef nonnull @__PRETTY_FUNCTION__.vfio_listener_region_del) #13
  unreachable

bb.ad:                                            ; preds = %bb.ab, %.critedge.thread, %.critedge
  %i.cg = phi i1 [ false, %.critedge.thread ], [ false, %.critedge ], [ true, %bb.ab ]
  %.054 = phi i128 [ %i.ay, %.critedge.thread ], [ %i.ay, %.critedge ], [ 0, %bb.ab ] ; 2 uses
  %i.ch = load i32, ptr @global_dirty_tracking, align 4
  %.not62 = icmp eq i32 %i.ch, 0
  br i1 %.not62, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = load ptr, ptr %i.f, align 16            ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 41
  %.val = load i8, ptr %i.cj, align 1, !range !9, !noundef !10
  %i.ck = trunc nuw i8 %.val to i1
  br i1 %i.ck, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cm = load i8, ptr %i.cl, align 16, !range !9, !noundef !10
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ap, ptr %i.co, align 8
  %i.cp = tail call i64 @memory_region_get_ram_addr(ptr noundef nonnull %i.ci) #14
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cr = load i64, ptr %i.cq, align 16
  %i.cs = add i64 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.cs, ptr %i.ct, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.0 = phi ptr [ null, %bb.af ], [ %2, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ad ]
  %i.cu = icmp ult i128 %.054, 18446744073709551616
  br i1 %i.cu, label %int128_get64.exit74, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #13
  unreachable

int128_get64.exit74:                              ; preds = %bb.ah
  %i.cv = trunc nuw i128 %.054 to i64             ; 2 uses
  %i.cw = call i32 @vfio_container_dma_unmap(ptr noundef nonnull %i.a, i64 noundef %i.ap, i64 noundef %i.cv, ptr noundef %.0, i1 noundef zeroext %i.cg) #14 ; 3 uses
  %.not63 = icmp eq i32 %i.cw, 0
  br i1 %.not63, label %bb.aj, label %int128_get64.exit75

int128_get64.exit75:                              ; preds = %int128_get64.exit74
  %i.cx = sub i32 0, %i.cw
  %i.cy = call ptr @strerror(i32 noundef %i.cx) #14
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a, i64 noundef %i.ap, i64 noundef %i.cv, i32 noundef %i.cw, ptr noundef %i.cy) #14
  br label %bb.aj

bb.aj:                                            ; preds = %int128_get64.exit75, %int128_get64.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %.critedge65

.critedge65:                                      ; preds = %vfio_ram_discard_unregister_listener.exit, %bb.r, %bb.aj, %int128_get64.exit
  %i.cz = load ptr, ptr %i.f, align 16
  call void @memory_region_unref(ptr noundef %i.cz) #14
  call void @vfio_container_del_section_window(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #14
  br label %vfio_get_section_iova_range.exit

vfio_get_section_iova_range.exit:                 ; preds = %.loopexit, %bb.a, %.critedge65
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vfio_listener_log_sync(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.vfio_giommu_dirty_notifier, align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i8, ptr %i.d, align 16, !range !9, !noundef !10
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %vfio_listener_skipped_section.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 16             ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 41
  %.val.i = load i8, ptr %i.i, align 1, !range !9, !noundef !10
  %i.j = trunc nuw i8 %.val.i to i1
  br i1 %i.j, label %bb.c, label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.b, %tailrecurse.i.i
  %.tr.i.i = phi ptr [ %i.l, %tailrecurse.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 160
  %i.l = load ptr, ptr %i.k, align 16             ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %memory_region_get_iommu.exit.i, label %tailrecurse.i.i

memory_region_get_iommu.exit.i:                   ; preds = %tailrecurse.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 50
  %i.n = load i8, ptr %i.m, align 2, !range !9, !noundef !10
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %vfio_listener_skipped_section.exit.thread

bb.c:                                             ; preds = %memory_region_get_iommu.exit.i, %bb.b
  %i.p = tail call zeroext i1 @memory_region_is_protected(ptr noundef nonnull %i.h) #14
  br i1 %i.p, label %vfio_listener_skipped_section.exit.thread, label %vfio_listener_skipped_section.exit

vfio_listener_skipped_section.exit:               ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %vfio_listener_skipped_section.exit.thread, label %bb.d

bb.d:                                             ; preds = %vfio_listener_skipped_section.exit
  %i.t = tail call zeroext i1 @vfio_container_dirty_tracking_is_started(ptr noundef nonnull %i.c) #14
end_hunk_0
