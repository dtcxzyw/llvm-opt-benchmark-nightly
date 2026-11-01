Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/scsi_lib?download=true
inline.NumInlined: 375
inline.NumDeleted: 133
begin_hunk_0_@scsi_vpd_lun_id:bb.a
  %.07191 = phi i8 [ 0, %.lr.ph ], [ %.2, %designator_prio.exit.thread ] ; 12 uses
  %.07290 = phi i8 [ 0, %.lr.ph ], [ %.4, %designator_prio.exit.thread ] ; 12 uses
  %.07589 = phi i32 [ -22, %.lr.ph ], [ %.277, %designator_prio.exit.thread ] ; 12 uses
  %.07887 = phi ptr [ %i.e, %.lr.ph ], [ %i.bb, %designator_prio.exit.thread ] ; 9 uses
  %i.n = getelementptr i8, ptr %.07887, i64 1
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = and i32 %i.p, 48
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %designator_prio.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.07887, i64 3
  %i.s = load i8, ptr %i.r, align 1               ; 13 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %designator_prio.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = and i32 %i.p, 15
  switch i32 %i.u, label %designator_prio.exit.thread [
    i32 8, label %designator_prio.exit
    i32 3, label %bb.g
    i32 2, label %bb.h
    i32 1, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %.07887, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %i.x = lshr i8 %i.w, 4
  %switch.tableidx = add nsw i8 %i.x, -3          ; 2 uses
  %i.y = icmp ult i8 %switch.tableidx, 4
  br i1 %i.y, label %switch.lookup, label %designator_prio.exit.thread

bb.h:                                             ; preds = %bb.f
  switch i8 %i.s, label %designator_prio.exit.thread [
    i8 16, label %designator_prio.exit
    i8 12, label %bb.i
    i8 8, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %designator_prio.exit

bb.j:                                             ; preds = %bb.h
  br label %designator_prio.exit

bb.k:                                             ; preds = %bb.f
  br label %designator_prio.exit

switch.lookup:                                    ; preds = %bb.g
  %i.z = shl nuw nsw i8 %switch.tableidx, 3
  %switch.shiftamt = zext nneg i8 %i.z to i32
  %switch.downshift = lshr i32 134546433, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %designator_prio.exit

designator_prio.exit:                             ; preds = %switch.lookup, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i8 [ 1, %bb.k ], [ %switch.masked, %switch.lookup ], [ 6, %bb.i ], [ 3, %bb.j ], [ 9, %bb.f ], [ 7, %bb.h ] ; 10 uses
  %i.aa = icmp ugt i8 %.07191, %.0.i
  br i1 %i.aa, label %designator_prio.exit.thread, label %bb.l

bb.l:                                             ; preds = %designator_prio.exit
  %i.ab = and i8 %i.o, 15
  switch i8 %i.ab, label %designator_prio.exit.thread [
    i8 1, label %bb.m
    i8 2, label %bb.o
    i8 3, label %bb.s
    i8 8, label %bb.v
  ]

bb.m:                                             ; preds = %bb.l
  %i.ac = icmp ugt i8 %.07290, %i.s
  br i1 %i.ac, label %designator_prio.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = zext i8 %i.s to i64
  %i.ae = add nuw nsw i64 %i.ad, 4
  %i.af = icmp ugt i64 %i.ae, %2
  %.173 = select i1 %i.af, i8 %i.m, i8 %i.s       ; 2 uses
  %i.ag = getelementptr i8, ptr %.07887, i64 4
  %i.ah = zext i8 %.173 to i32
  %i.ai = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.7, i32 noundef %i.ah, ptr noundef %i.ag) #16
  br label %designator_prio.exit.thread

bb.o:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %.07887, i64 4    ; 3 uses
  switch i8 %i.s, label %designator_prio.exit.thread [
    i8 8, label %bb.p
    i8 12, label %bb.q
    i8 16, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.ak = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.8, ptr noundef %i.aj) #16
  br label %designator_prio.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.al = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.9, ptr noundef %i.aj) #16
  br label %designator_prio.exit.thread

bb.r:                                             ; preds = %bb.o
  %i.am = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.10, ptr noundef %i.aj) #16
  br label %designator_prio.exit.thread

bb.s:                                             ; preds = %bb.l
  %i.an = getelementptr i8, ptr %.07887, i64 4    ; 2 uses
  switch i8 %i.s, label %designator_prio.exit.thread [
    i8 8, label %bb.t
    i8 16, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ao = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.11, ptr noundef %i.an) #16
  br label %designator_prio.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.ap = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.12, ptr noundef %i.an) #16
  br label %designator_prio.exit.thread

bb.v:                                             ; preds = %bb.l
  %i.aq = icmp ugt i8 %.07290, %i.s
  br i1 %i.aq, label %designator_prio.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = zext i8 %i.s to i64                     ; 2 uses
  %i.as = icmp ult i64 %2, %i.ar
  br i1 %i.as, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.at = icmp samesign ugt i8 %.07191, 2
  br i1 %i.at, label %designator_prio.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0 = phi i8 [ 2, %bb.x ], [ %.0.i, %bb.w ]
  %i.au = zext i8 %i.s to i32
  %i.av = getelementptr i8, ptr %.07887, i64 4
  %.not84 = icmp ugt i64 %2, %i.ar
  %.274 = select i1 %.not84, i8 %i.s, i8 %i.l     ; 2 uses
  %i.aw = zext i8 %.274 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.av, i64 %i.aw, i1 false)
  br label %designator_prio.exit.thread

designator_prio.exit.thread:                      ; preds = %bb.g, %bb.f, %bb.h, %bb.e, %bb.d, %bb.n, %bb.y, %bb.m, %bb.o, %bb.r, %bb.q, %bb.p, %bb.s, %bb.u, %bb.t, %bb.v, %bb.x, %bb.l, %designator_prio.exit
  %.277 = phi i32 [ %.07589, %designator_prio.exit ], [ %.07589, %bb.l ], [ %.07589, %bb.m ], [ %i.ai, %bb.n ], [ %.07589, %bb.o ], [ %i.ak, %bb.p ], [ %i.al, %bb.q ], [ %i.am, %bb.r ], [ %.07589, %bb.s ], [ %i.ao, %bb.t ], [ %i.ap, %bb.u ], [ %.07589, %bb.v ], [ %.07589, %bb.x ], [ %i.au, %bb.y ], [ %.07589, %bb.d ], [ %.07589, %bb.e ], [ %.07589, %bb.h ], [ %.07589, %bb.g ], [ %.07589, %bb.f ] ; 2 uses
  %.4 = phi i8 [ %.07290, %designator_prio.exit ], [ %.07290, %bb.l ], [ %.07290, %bb.m ], [ %.173, %bb.n ], [ %i.s, %bb.o ], [ 8, %bb.p ], [ 12, %bb.q ], [ 16, %bb.r ], [ %i.s, %bb.s ], [ 8, %bb.t ], [ 16, %bb.u ], [ %.07290, %bb.v ], [ %.07290, %bb.x ], [ %.274, %bb.y ], [ %.07290, %bb.d ], [ %.07290, %bb.e ], [ %.07290, %bb.h ], [ %.07290, %bb.g ], [ %.07290, %bb.f ]
  %.2 = phi i8 [ %.07191, %designator_prio.exit ], [ %.07191, %bb.l ], [ %.07191, %bb.m ], [ %.0.i, %bb.n ], [ %.0.i, %bb.o ], [ %.0.i, %bb.p ], [ %.0.i, %bb.q ], [ %.0.i, %bb.r ], [ %.0.i, %bb.s ], [ %.0.i, %bb.t ], [ %.0.i, %bb.u ], [ %.07191, %bb.v ], [ %.07191, %bb.x ], [ %.0, %bb.y ], [ %.07191, %bb.d ], [ %.07191, %bb.e ], [ %.07191, %bb.h ], [ %.07191, %bb.g ], [ %.07191, %bb.f ]
  %i.ax = getelementptr i8, ptr %.07887, i64 3
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr i8, ptr %.07887, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 4      ; 2 uses
  %i.bc = load i32, ptr %i.f, align 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %i.d, i64 %i.bd
  %i.bf = icmp ult ptr %i.bb, %i.be
  br i1 %i.bf, label %bb.d, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %designator_prio.exit.thread, %bb.c, %bb.b, %bb.a
  %.070 = phi i32 [ -6, %bb.a ], [ -22, %bb.b ], [ -22, %bb.c ], [ %.277, %designator_prio.exit.thread ]
  tail call void @__rcu_read_unlock() #16
  ret i32 %.070
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @scsi_vpd_lun_serial(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #16
  %i.a = getelementptr i8, ptr %0, i64 272
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = add i32 %i.d, -4                         ; 3 uses
  %i.f = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = add i32 %i.d, -5
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.02531 = phi ptr [ %i.q, %bb.c ], [ %i.f, %.lr.ph.preheader ] ; 5 uses
  %.02630 = phi i32 [ %i.p, %bb.c ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %i.k = load i8, ptr %.02531, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr @_ctype, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 32
  %.not28 = icmp eq i8 %i.o, 0
  br i1 %.not28, label %.lr.ph37, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.p = add nsw i32 %.02630, -1
  %i.q = getelementptr i8, ptr %.02531, i64 1
  %i.r = icmp sgt i32 %.02630, 1
  br i1 %i.r, label %.lr.ph, label %.critedge2, !llvm.loop !120

.lr.ph37:                                         ; preds = %.lr.ph, %bb.d
  %.136 = phi i32 [ %4, %bb.d ], [ %.02630, %.lr.ph ] ; 4 uses
  %3 = zext nneg i32 %.136 to i64
  %i.s = getelementptr i8, ptr %.02531, i64 %3
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr i8, ptr @_ctype, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 32
  %.not29 = icmp eq i8 %i.y, 0
  br i1 %.not29, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %.lr.ph37
  %4 = add nsw i32 %.136, -1
  %i.z = icmp sgt i32 %.136, 1
  br i1 %i.z, label %.lr.ph37, label %.critedge2, !llvm.loop !121

.critedge2:                                       ; preds = %bb.c, %.lr.ph37, %bb.d, %bb.b
  %.025.lcssa45 = phi ptr [ %.02531, %.lr.ph37 ], [ %i.f, %bb.b ], [ %.02531, %bb.d ], [ %scevgep, %bb.c ]
  %.1.lcssa = phi i32 [ %.136, %.lr.ph37 ], [ %i.e, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.aa = add i32 %.1.lcssa, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp ult i64 %2, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %i.ad = sext i32 %.1.lcssa to i64               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %.025.lcssa45, i64 %i.ad, i1 false)
  %i.ae = getelementptr i8, ptr %1, i64 %i.ad
  store i8 0, ptr %i.ae, align 1
  br label %bb.f

bb.f:                                             ; preds = %.critedge2, %bb.a, %bb.e
  %.0 = phi i32 [ -6, %bb.a ], [ %.1.lcssa, %bb.e ], [ -22, %.critedge2 ]
  tail call void @__rcu_read_unlock() #16
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -11, 65536) i32 @scsi_vpd_tpg_id(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #16
  %i.a = getelementptr i8, ptr %0, i64 264
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_unlock() #16
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 20
  %i.d = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.c, i64 %i.g     ; 2 uses
  %i.i = icmp ult ptr %i.d, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.02332 = phi ptr [ %i.w, %bb.f ], [ %i.d, %bb.c ] ; 5 uses
  %.02431 = phi i32 [ %.1, %bb.f ], [ -1, %bb.c ] ; 2 uses
  %.02530 = phi i32 [ %.126, %bb.f ], [ -11, %bb.c ] ; 2 uses
  %i.j = getelementptr i8, ptr %.02332, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 15
  switch i8 %i.l, label %bb.f [
    i8 4, label %bb.d
    i8 5, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %.02332, i64 6
  %.val29 = load i16, ptr %i.m, align 1
  %i.n = tail call i16 @llvm.bswap.i16(i16 %.val29)
  %i.o = zext i16 %i.n to i32
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %.02332, i64 6
  %.val = load i16, ptr %i.p, align 1
  %i.q = tail call i16 @llvm.bswap.i16(i16 %.val)
  %i.r = zext i16 %i.q to i32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e, %bb.d
  %.126 = phi i32 [ %.02530, %.lr.ph ], [ %.02530, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.02431, %.lr.ph ], [ %i.o, %bb.d ], [ %.02431, %bb.e ] ; 2 uses
  %i.s = getelementptr i8, ptr %.02332, i64 3
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr i8, ptr %.02332, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 4        ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.h
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.025.lcssa = phi i32 [ -11, %bb.c ], [ %.126, %bb.f ] ; 3 uses
  %.024.lcssa = phi i32 [ -1, %bb.c ], [ %.1, %bb.f ] ; 2 uses
  tail call void @__rcu_read_unlock() #16
  %i.y = icmp sgt i32 %.025.lcssa, -1
  %i.z = icmp ne ptr %1, null
  %or.cond = and i1 %i.z, %i.y
  %i.aa = icmp ne i32 %.024.lcssa, -1
  %or.cond3 = select i1 %or.cond, i1 %i.aa, i1 false
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  store i32 %.024.lcssa, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.b
  %.0 = phi i32 [ -6, %bb.b ], [ %.025.lcssa, %bb.g ], [ %.025.lcssa, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @scsi_build_sense(ptr nofree noundef captures(none) initializes((288, 292)) %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @scsi_build_sense_buffer(i32 noundef %1, ptr noundef %i.b, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #16
  %i.c = getelementptr i8, ptr %0, i64 288
  store i32 2, ptr %i.c, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_build_sense_buffer(i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__kmem_cache_create_args(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @scsi_command_normalize_sense(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_host_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_eh_wakeup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_kick_requeue_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__starget_for_each_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scsi_kick_sdev_queue(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @blk_mq_run_hw_queues(ptr noundef %i.b, i1 noundef zeroext true) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_print_sense(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_disk_randomness(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kblockd_schedule_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_delay_kick_requeue_list(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_print_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_eh_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scsi_complete(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
end_hunk_0
