Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vhost?download=true
inline.NumInlined: 182
inline.NumDeleted: 88
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@vhost_sync_dirty_bitmap:bb.a
  %.not114 = icmp eq i32 %i.y, 0
  br i1 %.not114, label %.loopexit104, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.z = phi ptr [ %i.aj, %.lr.ph ], [ %i.x, %.preheader ]
  %.088107 = phi i32 [ %i.ai, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = sext i32 %.088107 to i64
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.ad, -1
  %i.ah = add i64 %i.ag, %i.af
  tail call fastcc void @vhost_dev_sync_region(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.h, i64 noundef %i.n, i64 noundef %i.ad, i64 noundef %i.ah)
  %i.ai = add nuw i32 %.088107, 1                 ; 2 uses
  %i.aj = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph, label %.loopexit104, !llvm.loop !57

.loopexit104:                                     ; preds = %.lr.ph, %.preheader, %vhost_dev_should_log.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %.not115 = icmp eq i32 %i.an, 0
  br i1 %.not115, label %.critedge, label %.lr.ph113

.lr.ph113:                                        ; preds = %.loopexit104
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph113, %.loopexit
  %.189112 = phi i32 [ 0, %.lr.ph113 ], [ %i.ck, %.loopexit ] ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = sext i32 %.189112 to i64
  %i.ar = getelementptr inbounds [128 x i8], ptr %i.ap, i64 %i.aq ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.av = load i32, ptr %i.au, align 8
  %.not94 = icmp eq i32 %i.av, 0
  br i1 %.not94, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i97 = icmp eq ptr %i.aw, null
  br i1 %.not.i97, label %vhost_dev_has_iommu.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = call zeroext i1 @virtio_bus_device_iommu_enabled(ptr noundef nonnull %i.aw) #15
  br i1 %i.ax, label %vhost_dev_has_iommu.exit, label %.vhost_dev_has_iommu.exit.thread_crit_edge

.vhost_dev_has_iommu.exit.thread_crit_edge:       ; preds = %bb.m
  %.pre = load i64, ptr %i.as, align 8
  br label %vhost_dev_has_iommu.exit.thread

vhost_dev_has_iommu.exit:                         ; preds = %bb.m
  %i.ay = getelementptr i8, ptr %i.aw, i64 168
  %.val.i = load i64, ptr %i.ay, align 8
  %i.az = and i64 %.val.i, 8589934592
  %.not102 = icmp eq i64 %i.az, 0
  %.pre118 = load i64, ptr %i.as, align 8         ; 2 uses
  br i1 %.not102, label %vhost_dev_has_iommu.exit.thread, label %bb.n

bb.n:                                             ; preds = %vhost_dev_has_iommu.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %.not95108 = icmp eq i32 %i.bb, 0
  br i1 %.not95108, label %.loopexit, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %bb.n
  %i.bc = zext i32 %i.bb to i64
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %bb.v
  %.092110 = phi i64 [ %i.cc, %bb.v ], [ %i.bc, %.lr.ph111.preheader ] ; 2 uses
  %.093109 = phi i64 [ %i.cd, %bb.v ], [ %.pre118, %.lr.ph111.preheader ] ; 4 uses
  %i.bd = call ptr @get_ptr_rcu_reader() #15      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4
  %.not.i98 = icmp eq i32 %i.bf, 0
  br i1 %.not.i98, label %bb.o, label %rcu_read_lock.exit

bb.o:                                             ; preds = %.lr.ph111
  %i.bh = load atomic i64, ptr @rcu_gp_ctr monotonic, align 8
  %i.bi = and i64 %i.bh, 4294967295
  store atomic i64 %i.bi, ptr %i.bd monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  fence seq_cst
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %.lr.ph111, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 488
  %i.bl = load ptr, ptr %i.bk, align 8
  call void @address_space_get_iotlb_entry(ptr dead_on_unwind nonnull writable sret(%struct.IOMMUTLBEntry) align 8 %3, ptr noundef %i.bl, i64 noundef %.093109, i1 noundef zeroext true, i64 4294967296) #15
  %.sroa.028.0.copyload = load ptr, ptr %3, align 8
  %.sroa.529.0.copyload = load i64, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bm = call ptr @get_ptr_rcu_reader() #15      ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %.not.i99 = icmp eq i32 %i.bo, 0
  br i1 %.not.i99, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rcu_read_lock.exit
  call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.rcu_read_unlock) #16
  unreachable

bb.q:                                             ; preds = %rcu_read_lock.exit
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4
  %.not8.i = icmp eq i32 %i.bp, 0
  br i1 %.not8.i, label %bb.r, label %rcu_read_unlock.exit

bb.r:                                             ; preds = %bb.q
  store atomic i64 0, ptr %i.bm release, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !16
  fence seq_cst
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.br = load atomic i8, ptr %i.bq monotonic, align 8, !range !17, !noundef !18
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.s, label %rcu_read_unlock.exit, !prof !12

bb.s:                                             ; preds = %bb.r
  store atomic i8 0, ptr %i.bq monotonic, align 8
  call void @qemu_event_set(ptr noundef nonnull @rcu_gp_event) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %bb.q, %bb.r, %bb.s
  %.not96 = icmp eq ptr %.sroa.028.0.copyload, null
  br i1 %.not96, label %bb.t, label %bb.v

bb.t:                                             ; preds = %rcu_read_unlock.exit
  %i.bt = load i32, ptr @qemu_loglevel, align 4
  %i.bu = and i32 %i.bt, 2048
  %.not103 = icmp eq i32 %i.bu, 0
  br i1 %.not103, label %.critedge, label %bb.u, !prof !14

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.97, i64 noundef %.093109) #15
  br label %.critedge

bb.v:                                             ; preds = %rcu_read_unlock.exit
  %i.bv = and i64 %.sroa.6.0.copyload, %.093109   ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.529.0.copyload    ; 2 uses
  %i.bx = sub i64 %.sroa.6.0.copyload, %i.bv
  %i.by = add nsw i64 %.092110, -1
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.by) ; 2 uses
  %i.ca = add nuw i64 %i.bz, 1                    ; 2 uses
  %i.cb = add i64 %i.bz, %i.bw
  call fastcc void @vhost_dev_sync_region(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.h, i64 noundef %i.n, i64 noundef %i.bw, i64 noundef %i.cb)
  %i.cc = sub nuw i64 %.092110, %i.ca             ; 2 uses
  %i.cd = add i64 %i.ca, %.093109
  %.not95 = icmp eq i64 %i.cc, 0
  br i1 %.not95, label %.loopexit, label %.lr.ph111, !llvm.loop !58

vhost_dev_has_iommu.exit.thread:                  ; preds = %.vhost_dev_has_iommu.exit.thread_crit_edge, %bb.l, %vhost_dev_has_iommu.exit
  %i.ce = phi i64 [ %.pre, %.vhost_dev_has_iommu.exit.thread_crit_edge ], [ %i.at, %bb.l ], [ %.pre118, %vhost_dev_has_iommu.exit ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add i64 %i.ce, -1
  %i.cj = add i64 %i.ci, %i.ch
  call fastcc void @vhost_dev_sync_region(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.h, i64 noundef %i.n, i64 noundef %i.ce, i64 noundef %i.cj)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.n, %bb.k, %vhost_dev_has_iommu.exit.thread
  %i.ck = add nuw i32 %.189112, 1                 ; 2 uses
  %i.cl = load i32, ptr %i.am, align 8
  %i.cm = icmp ult i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.j, label %.critedge, !llvm.loop !59

.critedge:                                        ; preds = %.loopexit, %.loopexit104, %bb.t, %bb.u, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vhost_dev_sync_region(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call i64 @llvm.umax.i64(i64 %2, i64 %4) ; 3 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %3, i64 %5) ; 2 uses
  %i.g = lshr i64 %i.e, 18                        ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 3                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.i = lshr i64 %i.f, 18                        ; 2 uses
  %.idx59 = shl nuw nsw i64 %i.i, 3               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx59
  %i.k = and i64 %i.e, -262144
  %i.l = icmp ult i64 %i.f, %i.e
  br i1 %i.l, label %.loopexit52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ult i64 %i.i, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.10, i32 noundef 102, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_dev_sync_region) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ult i64 %i.g, %i.n
  br i1 %i.p, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %.not60 = icmp samesign ugt i64 %.idx, %.idx59
  br i1 %.not60, label %.loopexit52, label %.lr.ph58

.lr.ph58:                                         ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.10, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_dev_sync_region) #16
  unreachable

bb.f:                                             ; preds = %.lr.ph58, %.loopexit
  %.057 = phi ptr [ %i.h, %.lr.ph58 ], [ %i.ag, %.loopexit ] ; 4 uses
  %.04855 = phi i64 [ %i.k, %.lr.ph58 ], [ %.1, %.loopexit ] ; 2 uses
  %i.t = load i64, ptr %.057, align 8
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = atomicrmw xchg ptr %.057, i64 0 seq_cst, align 8 ; 2 uses
  %.not5153 = icmp eq i64 %i.u, 0
  br i1 %.not5153, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.04954 = phi i64 [ %i.af, %.lr.ph ], [ %i.u, %bb.g ] ; 2 uses
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.04954, i1 true) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 12
  %i.x = or disjoint i64 %i.w, %.04855
  %i.y = load i64, ptr %i.q, align 8
  %i.z = sub i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.r, align 16
  %i.ab = add i64 %i.z, %i.aa
  %i.ac = load ptr, ptr %i.s, align 16
  tail call void @memory_region_set_dirty(ptr noundef %i.ac, i64 noundef %i.ab, i64 noundef 4096) #15
  %i.ad = shl nuw i64 1, %i.v
  %i.ae = xor i64 %i.ad, -1
  %i.af = and i64 %.04954, %i.ae                  ; 2 uses
  %.not51 = icmp eq i64 %i.af, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph, !llvm.loop !60

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.f
  %.1 = add i64 %.04855, 262144
  %i.ag = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.ah = icmp ult ptr %.057, %i.j
  br i1 %i.ah, label %bb.f, label %.loopexit52, !llvm.loop !61

.loopexit52:                                      ; preds = %.loopexit, %.preheader, %bb.a
  ret void
}

declare void @memory_region_set_dirty(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @vhost_dev_set_log(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @vhost_dev_set_features(ptr noundef %0, i1 noundef zeroext %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %vhost_dev_elect_mem_logger.exit, label %.preheader42

.preheader42:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not51 = icmp eq i32 %i.d, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.047 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.d ] ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %i.f, align 4
  %i.l = add i32 %i.k, %.047
  %i.m = tail call i32 %i.j(ptr noundef nonnull %0, i32 noundef %i.l) #15 ; 2 uses
  %i.n = load ptr, ptr %0, align 8
  %i.o = tail call i64 @virtio_queue_get_desc_addr(ptr noundef %i.n, i32 noundef %i.m) #15
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = sext i32 %.047 to i64
  %i.r = getelementptr inbounds [128 x i8], ptr %i.p, i64 %i.q
  %i.s = tail call fastcc i32 @vhost_virtqueue_set_addr(ptr noundef nonnull %0, ptr noundef %i.r, i32 noundef %i.m, i1 noundef zeroext %1) ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.u = icmp sgt i32 %.047, -1
  br i1 %i.u, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 505
  br label %bb.t

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = add nuw i32 %.047, 1                     ; 2 uses
  %i.x = load i32, ptr %i.c, align 8
  %i.y = icmp ult i32 %i.w, %i.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.d, %.preheader42
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.10, i32 noundef 162, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_dev_elect_mem_logger) #16
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.ab = load i32, ptr %i.aa, align 8            ; 3 uses
  %.not35.i = icmp eq i32 %i.ab, 0
  br i1 %.not35.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.10, i32 noundef 165, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_dev_elect_mem_logger) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp ult i32 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.10, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_dev_elect_mem_logger) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not36.i = icmp eq ptr %i.af, null             ; 2 uses
  br i1 %1, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  br i1 %.not36.i, label %bb.l, label %vhost_dev_elect_mem_logger.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = zext nneg i32 %i.ab to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @vhost_log_devs, i64 %i.ag ; 6 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.ad, align 8
  store ptr %0, ptr %i.ah, align 8
  store ptr %i.ah, ptr %i.ae, align 8
  br label %vhost_dev_elect_mem_logger.exit

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 568
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  store ptr %i.al, ptr %i.ad, align 8
  %.not37.i = icmp eq ptr %i.al, null
  br i1 %.not37.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 568
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 576
  store ptr %i.ad, ptr %i.ap, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aq = load ptr, ptr %i.ah, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 568
  store ptr %0, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.ah, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 568
  store ptr %i.at, ptr %i.ae, align 8
  br label %vhost_dev_elect_mem_logger.exit

.critedge.i:                                      ; preds = %bb.j
  br i1 %.not36.i, label %vhost_dev_elect_mem_logger.exit, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.au = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not39.i = icmp eq ptr %i.au, null
  br i1 %.not39.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 576
  store ptr %i.af, ptr %i.av, align 8
  %.pre.i = load ptr, ptr %i.ad, align 8
  %.pre40.i = load ptr, ptr %i.ae, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aw = phi ptr [ %.pre40.i, %bb.r ], [ %i.af, %bb.q ]
  %i.ax = phi ptr [ %.pre.i, %bb.r ], [ null, %bb.q ]
  store ptr %i.ax, ptr %i.aw, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %vhost_dev_elect_mem_logger.exit

bb.t:                                             ; preds = %.lr.ph49, %bb.v
  %indvars.iv54 = phi i64 [ %indvars.iv, %.lr.ph49 ], [ %indvars.iv.next55, %bb.v ] ; 4 uses
  %i.ay = load ptr, ptr %i.e, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 256
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i32, ptr %i.f, align 4
  %i.bc = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.bd = add i32 %i.bb, %i.bc
  %i.be = tail call i32 %i.ba(ptr noundef nonnull %0, i32 noundef %i.bd) #15 ; 2 uses
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = tail call i64 @virtio_queue_get_desc_addr(ptr noundef %i.bf, i32 noundef %i.be) #15
  %.not41 = icmp eq i64 %i.bg, 0
  br i1 %.not41, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr %i.g, align 8
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.bh, i64 %indvars.iv54
  %i.bj = load i8, ptr %i.v, align 1, !range !17, !noundef !18
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = tail call fastcc i32 @vhost_virtqueue_set_addr(ptr noundef nonnull %0, ptr noundef %i.bi, i32 noundef %i.be, i1 noundef zeroext %i.bk) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, -1
  %i.bm = icmp sgt i64 %indvars.iv54, 0
  br i1 %i.bm, label %bb.t, label %._crit_edge50, !llvm.loop !63

._crit_edge50:                                    ; preds = %bb.v, %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 505
  %i.bo = load i8, ptr %i.bn, align 1, !range !17, !noundef !18
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = tail call fastcc i32 @vhost_dev_set_features(ptr noundef nonnull %0, i1 noundef zeroext %i.bp) ; 0 uses
  br label %vhost_dev_elect_mem_logger.exit

vhost_dev_elect_mem_logger.exit:                  ; preds = %bb.s, %.critedge.i, %bb.p, %bb.m, %bb.k, %._crit_edge50, %bb.a
  %.039 = phi i32 [ %i.s, %._crit_edge50 ], [ %i.a, %bb.a ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %.critedge.i ], [ 0, %bb.s ]
  ret i32 %.039
end_hunk_0
