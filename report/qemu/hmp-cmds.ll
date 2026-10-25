Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hmp-cmds?download=true
inline.NumInlined: 39
inline.NumDeleted: 21
begin_hunk_0_@mon_get_cpu_sync:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = load atomic ptr, ptr @cpus_queue monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !16
  %.not24 = icmp eq ptr %i.m, null
  br i1 %.not24, label %bb.h, label %.thread27

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.608, ptr noundef nonnull @.str.10, i32 noundef 533, ptr noundef nonnull @__PRETTY_FUNCTION__.mon_get_cpu_sync) #18
  unreachable

.thread27:                                        ; preds = %bb.d, %bb.g
  %.130 = phi ptr [ %i.m, %bb.g ], [ %i.c, %bb.d ] ; 3 uses
  br i1 %1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread27
  tail call void @cpu_synchronize_state(ptr noundef nonnull %.130) #15
  br label %bb.j

bb.j:                                             ; preds = %.thread27, %bb.i, %.thread
  %.0 = phi ptr [ null, %.thread ], [ %.130, %bb.i ], [ %.130, %.thread27 ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @mon_get_cpu_env(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc ptr @mon_get_cpu_sync(ptr noundef %0, i1 noundef zeroext true) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16496
  %spec.select = select i1 %.not, ptr null, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @monitor_get_cpu_index(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc ptr @mon_get_cpu_sync(ptr noundef %0, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.c = load i32, ptr %i.b, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hmp_info_registers(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = tail call zeroext i1 @qdict_get_try_bool(ptr noundef %1, ptr noundef nonnull @.str.61, i1 noundef zeroext false) #15
  %i.b = tail call i64 @qdict_get_try_int(ptr noundef %1, ptr noundef nonnull @.str.62, i64 noundef -1) #15
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @cpus_queue monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !18
  %.not2427 = icmp eq ptr %i.d, null
  br i1 %.not2427, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.028 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.028, i64 688
  %i.f = load i32, ptr %i.e, align 16
  %i.g = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %i.f) #15 ; 0 uses
  tail call void @cpu_dump_state(ptr noundef nonnull %.028, ptr noundef null, i32 noundef 655360) #15
  %i.h = getelementptr inbounds nuw i8, ptr %.028, i64 552
  %i.i = load atomic ptr, ptr %i.h monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !19
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %.loopexit, label %.lr.ph, !llvm.loop !17

bb.c:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.c, -1
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @qemu_get_cpu(i32 noundef %i.c) #15 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.f

.thread:                                          ; preds = %bb.c
  %i.l = tail call fastcc ptr @mon_get_cpu_sync(ptr noundef %0, i1 noundef zeroext true) ; 2 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %.thread26, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %i.c) #15 ; 0 uses
  br label %.loopexit

.thread26:                                        ; preds = %.thread
  %i.n = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.65) #15 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %.thread, %bb.d
  %i.o = phi ptr [ %i.l, %.thread ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 688
  %i.q = load i32, ptr %i.p, align 16
  %i.r = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %i.q) #15 ; 0 uses
  tail call void @cpu_dump_state(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 655360) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.f, %bb.e, %.thread26
  ret void
}

declare void @cpu_dump_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hmp_memory_dump(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = tail call i64 @qdict_get_int(ptr noundef %1, ptr noundef nonnull @.str.66) #15
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i64 @qdict_get_int(ptr noundef %1, ptr noundef nonnull @.str.42) #15
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call i64 @qdict_get_int(ptr noundef %1, ptr noundef nonnull @.str.50) #15
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i64 @qdict_get_int(ptr noundef %1, ptr noundef nonnull @.str.52) #15
  tail call fastcc void @memory_dump(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.f, i64 noundef %i.g, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @memory_dump(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = tail call fastcc ptr @mon_get_cpu_sync(ptr noundef %0, i1 noundef zeroext true) ; 4 uses
  br i1 %5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @target_long_bits() #15
  %i.d = lshr i32 %i.c, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 8, %bb.a ]
  %i.f = tail call zeroext i1 @target_big_endian() #15 ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  %i.g = icmp ne i32 %2, 105                      ; 2 uses
  %or.cond = and i1 %i.g, %5
  %or.cond92 = or i1 %or.cond, %.not
  br i1 %or.cond92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.609) #15 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @monitor_disas(ptr noundef %0, ptr noundef %i.b, i64 noundef %4, i32 noundef %1, i1 noundef zeroext %5) #15
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.i = mul i32 %3, %1                           ; 2 uses
  %i.j = icmp eq i32 %3, 1
  %. = select i1 %i.j, i32 8, i32 16
  switch i32 %2, label %bb.i [
    i32 111, label %bb.h
    i32 99, label %bb.k
    i32 117, label %bb.j
    i32 100, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = shl i32 %3, 3
  %i.l = or disjoint i32 %i.k, 2
  %i.m = sdiv i32 %i.l, 3
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.n = shl i32 %3, 3
  %i.o = ashr exact i32 %i.n, 2
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.g
  %i.p = mul i32 %3, 80
  %i.q = add i32 %i.p, 32
  %i.r = sdiv i32 %i.q, 33
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.h
  %.087 = phi i32 [ %i.o, %bb.i ], [ %i.m, %bb.h ], [ %i.r, %bb.j ], [ 0, %bb.g ] ; 8 uses
  %.0 = phi i32 [ %3, %bb.i ], [ %3, %bb.h ], [ %3, %bb.j ], [ 1, %bb.g ] ; 4 uses
  %i.s = icmp sgt i32 %i.i, 0
  br i1 %i.s, label %.lr.ph106, label %.loopexit

.lr.ph106:                                        ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.u = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0)
  %i.v = icmp eq i32 %i.u, 1
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0, i1 true)
  %6 = select i1 %i.f, ptr @ldl_be_p, ptr @ldl_le_p
  %7 = select i1 %i.f, ptr @lduw_be_p, ptr @lduw_le_p
  %8 = select i1 %i.f, ptr @ldq_be_p, ptr @ldq_le_p
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph106, %._crit_edge
  %.081101 = phi i64 [ %4, %.lr.ph106 ], [ %i.bg, %._crit_edge ] ; 4 uses
  %.086100 = phi i32 [ %i.i, %.lr.ph106 ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.x = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.610, i32 noundef %i.e, i64 noundef %.081101) #15 ; 0 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %.086100, i32 %.) ; 6 uses
  br i1 %5, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not, label %bb.n, label %address_space_read.exit

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.t, align 16
  br label %address_space_read.exit

address_space_read.exit:                          ; preds = %bb.n, %bb.m
  %i.z = phi ptr [ %i.y, %bb.n ], [ @address_space_memory, %bb.m ]
  %i.aa = zext nneg i32 %spec.select to i64
  %i.ab = call i32 @address_space_read_full(ptr noundef %i.z, i64 noundef %.081101, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 1, 17) %i.aa) #15
  %.not91 = icmp eq i32 %i.ab, 0
  br i1 %.not91, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %address_space_read.exit
  %i.ac = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.611) #15 ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.l
  %i.ad = zext nneg i32 %spec.select to i64
  %i.ae = call i32 @cpu_memory_rw_debug(ptr noundef %i.b, i64 noundef %.081101, ptr noundef nonnull %i.a, i64 noundef %i.ad, i1 noundef zeroext false) #15
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.ag = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.611) #15 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.p, %address_space_read.exit
  br i1 %i.v, label %.split.us, label %.lr.ph.split

.split.us:                                        ; preds = %.lr.ph, %bb.ab
  %.08899.us = phi i32 [ %i.ar, %bb.ab ], [ 0, %.lr.ph ] ; 2 uses
  %i.ah = sext i32 %.08899.us to i64
  %i.ai = getelementptr inbounds i8, ptr %i.a, i64 %i.ah ; 4 uses
  switch i32 %i.w, label %bb.u [
    i32 3, label %bb.t
    i32 1, label %bb.s
    i32 2, label %bb.r
  ]

bb.r:                                             ; preds = %.split.us
  %9 = call i32 %6(ptr noundef nonnull %i.ai) #15, !callees !22
  %i.aj = zext i32 %9 to i64
  br label %bb.v

bb.s:                                             ; preds = %.split.us
  %10 = call i32 %7(ptr noundef nonnull %i.ai) #15, !callees !23
  %11 = sext i32 %10 to i64
  br label %bb.v

bb.t:                                             ; preds = %.split.us
  %12 = call i64 %8(ptr noundef nonnull %i.ai) #15, !callees !24
  br label %bb.v

bb.u:                                             ; preds = %.split.us
  %.val93.us = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %.val93.us to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.085.us = phi i64 [ %i.ak, %bb.u ], [ %12, %bb.t ], [ %11, %bb.s ], [ %i.aj, %bb.r ] ; 5 uses
  %i.al = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.612) #15 ; 0 uses
  switch i32 %2, label %bb.ab [
    i32 111, label %bb.aa
    i32 120, label %bb.z
    i32 117, label %bb.y
    i32 100, label %bb.x
    i32 99, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.am = trunc i64 %.085.us to i32
  call void @monitor_printc(ptr noundef %0, i32 noundef %i.am) #15
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.an = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.616, i32 noundef %.087, i64 noundef %.085.us) #15 ; 0 uses
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  %i.ao = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.615, i32 noundef %.087, i64 noundef %.085.us) #15 ; 0 uses
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.ap = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.614, i32 noundef %.087, i64 noundef %.085.us) #15 ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.aq = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.613, i32 noundef %.087, i64 noundef %.085.us) #15 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.ar = add i32 %.08899.us, %.0                 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %spec.select
  br i1 %i.as, label %.split.us, label %._crit_edge, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ah
  %.08899 = phi i32 [ %i.bc, %bb.ah ], [ 0, %.lr.ph ] ; 2 uses
  %i.at = sext i32 %.08899 to i64
  %i.au = getelementptr inbounds i8, ptr %i.a, i64 %i.at
  %.val93 = load i8, ptr %i.au, align 1           ; 2 uses
  %i.av = zext i8 %.val93 to i64                  ; 4 uses
  %i.aw = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.612) #15 ; 0 uses
  switch i32 %2, label %bb.ah [
    i32 111, label %bb.ac
    i32 120, label %bb.ad
    i32 117, label %bb.ae
    i32 100, label %bb.af
    i32 99, label %bb.ag
  ]

bb.ac:                                            ; preds = %.lr.ph.split
  %i.ax = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.613, i32 noundef %.087, i64 noundef %i.av) #15 ; 0 uses
  br label %bb.ah

bb.ad:                                            ; preds = %.lr.ph.split
  %i.ay = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.614, i32 noundef %.087, i64 noundef %i.av) #15 ; 0 uses
  br label %bb.ah

bb.ae:                                            ; preds = %.lr.ph.split
  %i.az = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.615, i32 noundef %.087, i64 noundef %i.av) #15 ; 0 uses
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.split
  %i.ba = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.616, i32 noundef %.087, i64 noundef %i.av) #15 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split
  %i.bb = zext i8 %.val93 to i32
  call void @monitor_printc(ptr noundef %0, i32 noundef %i.bb) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %.lr.ph.split
  %i.bc = add i32 %.08899, %.0                    ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %spec.select
  br i1 %i.bd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.ah, %bb.ab
  %i.be = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.48) #15 ; 0 uses
  %i.bf = zext nneg i32 %spec.select to i64
  %i.bg = add i64 %.081101, %i.bf
  %i.bh = sub nsw i32 %.086100, %spec.select      ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %._crit_edge, %bb.k, %bb.o, %bb.q, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hmp_physical_memory_dump(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = tail call i64 @qdict_get_int(ptr noundef %1, ptr noundef nonnull @.str.66) #15
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i64 @qdict_get_int(ptr noundef %1, ptr noundef nonnull @.str.42) #15
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call i64 @qdict_get_int(ptr noundef %1, ptr noundef nonnull @.str.50) #15
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i64 @qdict_get_int(ptr noundef %1, ptr noundef nonnull @.str.52) #15
  tail call fastcc void @memory_dump(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.f, i64 noundef %i.g, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @gpa2hva(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.MemoryRegionSection, align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, i8 0, i64 64, i1 false), !annotation !10
  %i.a = tail call ptr @get_system_memory() #15
  call void @memory_region_find(ptr dead_on_unwind nonnull writable sret(%struct.MemoryRegionSection) align 16 %4, ptr noundef %i.a, i64 noundef %1, i64 noundef %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16             ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef 723, ptr noundef nonnull @__func__.gpa2hva, ptr noundef nonnull @.str.67, i64 noundef %1) #15
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 41
  %.val = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 45
  %i.g = load i8, ptr %i.f, align 1, !range !8, !noundef !9
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %memory_region_is_romd.exit, label %memory_region_is_romd.exit.thread

memory_region_is_romd.exit:                       ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load i8, ptr %i.i, align 8, !range !8, !noundef !9
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %memory_region_is_romd.exit.thread

memory_region_is_romd.exit.thread:                ; preds = %bb.d, %memory_region_is_romd.exit
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef 729, ptr noundef nonnull @__func__.gpa2hva, ptr noundef nonnull @.str.68, i64 noundef %1) #15
  %i.l = load ptr, ptr %i.b, align 16
  call void @memory_region_unref(ptr noundef %i.l) #15
  br label %bb.h

bb.e:                                             ; preds = %memory_region_is_romd.exit, %bb.c
  %i.m = zext i64 %2 to i128
  %i.n = load i128, ptr %4, align 16
  %i.o = icmp slt i128 %i.n, %i.m
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef 737, ptr noundef nonnull @__func__.gpa2hva, ptr noundef nonnull @.str.69, i64 noundef %1) #15
  %i.p = load ptr, ptr %i.b, align 16
  call void @memory_region_unref(ptr noundef %i.p) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = load i64, ptr %i.s, align 16
  %i.u = call ptr @qemu_map_ram_ptr(ptr noundef %i.r, i64 noundef %i.t) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %memory_region_is_romd.exit.thread, %bb.b
  %.0 = phi ptr [ null, %bb.f ], [ %i.u, %bb.g ], [ null, %memory_region_is_romd.exit.thread ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @memory_region_find(ptr dead_on_unwind writable sret(%struct.MemoryRegionSection) align 16, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @get_system_memory() local_unnamed_addr #5

declare void @memory_region_unref(ptr noundef) local_unnamed_addr #5

declare ptr @qemu_map_ram_ptr(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hmp_gpa2hva(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call i64 @qdict_get_int(ptr noundef %1, ptr noundef nonnull @.str.52) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.d = call ptr @gpa2hva(ptr noundef nonnull %i.b, i64 noundef %i.c, i64 noundef 1, ptr noundef nonnull %i.a)
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @error_report_err(ptr noundef nonnull %i.e) #15
  br label %bb.d
end_hunk_0
begin_hunk_1_@hmp_trace_event
declare void @hmp_trace_event(ptr noundef, ptr noundef) #5

declare void @trace_event_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_savevm(ptr noundef, ptr noundef) #5

declare void @hmp_loadvm(ptr noundef, ptr noundef) #5

declare void @loadvm_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_delvm(ptr noundef, ptr noundef) #5

declare void @delvm_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_one_insn_per_tb(ptr noundef, ptr noundef) #5

declare void @hmp_system_wakeup(ptr noundef, ptr noundef) #5

declare void @hmp_sendkey(ptr noundef, ptr noundef) #5

declare void @sendkey_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_system_reset(ptr noundef, ptr noundef) #5

declare void @hmp_system_powerdown(ptr noundef, ptr noundef) #5

declare void @hmp_device_add(ptr noundef, ptr noundef) #5

declare void @device_add_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_device_del(ptr noundef, ptr noundef) #5

declare void @device_del_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_mouse_move(ptr noundef, ptr noundef) #5

declare void @hmp_mouse_button(ptr noundef, ptr noundef) #5

declare void @hmp_mouse_set(ptr noundef, ptr noundef) #5

declare void @hmp_wavcapture(ptr noundef, ptr noundef) #5

declare void @hmp_stopcapture(ptr noundef, ptr noundef) #5

declare void @hmp_memsave(ptr noundef, ptr noundef) #5

declare void @hmp_pmemsave(ptr noundef, ptr noundef) #5

declare void @hmp_nmi(ptr noundef, ptr noundef) #5

declare void @hmp_ringbuf_write(ptr noundef, ptr noundef) #5

declare void @ringbuf_write_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_ringbuf_read(ptr noundef, ptr noundef) #5

declare void @hmp_announce_self(ptr noundef, ptr noundef) #5

declare void @hmp_migrate(ptr noundef, ptr noundef) #5

declare void @hmp_migrate_cancel(ptr noundef, ptr noundef) #5

declare void @hmp_migrate_continue(ptr noundef, ptr noundef) #5

declare void @hmp_migrate_incoming(ptr noundef, ptr noundef) #5

declare void @hmp_migrate_recover(ptr noundef, ptr noundef) #5

declare void @hmp_migrate_pause(ptr noundef, ptr noundef) #5

declare void @hmp_migrate_set_capability(ptr noundef, ptr noundef) #5

declare void @migrate_set_capability_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_migrate_set_parameter(ptr noundef, ptr noundef) #5

declare void @migrate_set_parameter_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_migrate_start_postcopy(ptr noundef, ptr noundef) #5

declare void @hmp_x_colo_lost_heartbeat(ptr noundef, ptr noundef) #5

declare void @hmp_client_migrate_info(ptr noundef, ptr noundef) #5

declare void @hmp_dump_guest_memory(ptr noundef, ptr noundef) #5

declare void @hmp_dump_skeys(ptr noundef, ptr noundef) #5

declare void @hmp_migrationmode(ptr noundef, ptr noundef) #5

declare void @hmp_snapshot_blkdev(ptr noundef, ptr noundef) #5

declare void @hmp_snapshot_blkdev_internal(ptr noundef, ptr noundef) #5

declare void @hmp_snapshot_delete_blkdev_internal(ptr noundef, ptr noundef) #5

declare void @hmp_drive_mirror(ptr noundef, ptr noundef) #5

declare void @hmp_drive_backup(ptr noundef, ptr noundef) #5

declare void @hmp_drive_add(ptr noundef, ptr noundef) #5

declare void @hmp_pcie_aer_inject_error(ptr noundef, ptr noundef) #5

declare void @hmp_netdev_add(ptr noundef, ptr noundef) #5

declare void @netdev_add_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_netdev_del(ptr noundef, ptr noundef) #5

declare void @netdev_del_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_object_add(ptr noundef, ptr noundef) #5

declare void @object_add_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_object_del(ptr noundef, ptr noundef) #5

declare void @object_del_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_balloon(ptr noundef, ptr noundef) #5

declare void @hmp_set_link(ptr noundef, ptr noundef) #5

declare void @set_link_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_watchdog_action(ptr noundef, ptr noundef) #5

declare void @watchdog_action_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_nbd_server_start(ptr noundef, ptr noundef) #5

declare void @hmp_nbd_server_add(ptr noundef, ptr noundef) #5

declare void @hmp_nbd_server_remove(ptr noundef, ptr noundef) #5

declare void @hmp_nbd_server_stop(ptr noundef, ptr noundef) #5

declare void @hmp_mce(ptr noundef, ptr noundef) #5

declare void @hmp_block_set_io_throttle(ptr noundef, ptr noundef) #5

declare void @hmp_set_password(ptr noundef, ptr noundef) #5

declare void @hmp_expire_password(ptr noundef, ptr noundef) #5

declare void @hmp_chardev_add(ptr noundef, ptr noundef) #5

declare void @chardev_add_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_chardev_change(ptr noundef, ptr noundef) #5

declare void @hmp_chardev_remove(ptr noundef, ptr noundef) #5

declare void @chardev_remove_completion(ptr noundef, i32 noundef, ptr noundef) #5

declare void @hmp_chardev_send_break(ptr noundef, ptr noundef) #5

declare void @hmp_qemu_io(ptr noundef, ptr noundef) #5

declare void @hmp_qom_list(ptr noundef, ptr noundef) #5

declare void @hmp_qom_get(ptr noundef, ptr noundef) #5

declare void @hmp_qom_set(ptr noundef, ptr noundef) #5

declare void @hmp_replay_break(ptr noundef, ptr noundef) #5

declare void @hmp_replay_delete_break(ptr noundef, ptr noundef) #5

declare void @hmp_replay_seek(ptr noundef, ptr noundef) #5

declare void @hmp_calc_dirty_rate(ptr noundef, ptr noundef) #5

declare void @hmp_set_vcpu_dirty_limit(ptr noundef, ptr noundef) #5

declare void @hmp_cancel_vcpu_dirty_limit(ptr noundef, ptr noundef) #5

declare void @hmp_xen_event_inject(ptr noundef, ptr noundef) #5

declare void @hmp_xen_event_list(ptr noundef, ptr noundef) #5

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @object_resolve_path_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare void @cpu_synchronize_state(ptr noundef) local_unnamed_addr #5

declare i32 @target_long_bits() local_unnamed_addr #5

declare zeroext i1 @target_big_endian() local_unnamed_addr #5

declare void @monitor_disas(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare i32 @cpu_memory_rw_debug(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 65536) i32 @lduw_be_p(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %.val = load i16, ptr %0, align 1
  %i.a = tail call i16 @llvm.bswap.i16(i16 %.val)
  %i.b = zext i16 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 65536) i32 @lduw_le_p(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %.val = load i16, ptr %0, align 1
  %i.a = zext i16 %.val to i32
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @ldl_be_p(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %0, align 1
  %i.a = tail call i32 @llvm.bswap.i32(i32 %.val)
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @ldl_le_p(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %0, align 1
  ret i32 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i64 @ldq_be_p(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %.val = load i64, ptr %0, align 1
  %i.a = tail call i64 @llvm.bswap.i64(i64 %.val)
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i64 @ldq_le_p(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %.val = load i64, ptr %0, align 1
  ret i64 %.val
}

declare i32 @address_space_read_full(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #2

declare void @error_setg_file_open_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

declare i64 @pread64(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"auto-init"}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = !{i64 2153337360}
!15 = !{i64 2153341755}
!16 = !{i64 2153346139}
!17 = distinct !{!17, !7}
!18 = !{i64 2153351080}
!19 = !{i64 2153355304}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = !{ptr @ldl_be_p, ptr @ldl_le_p}
!23 = !{ptr @lduw_be_p, ptr @lduw_le_p}
!24 = !{ptr @ldq_be_p, ptr @ldq_le_p}
end_hunk_1
