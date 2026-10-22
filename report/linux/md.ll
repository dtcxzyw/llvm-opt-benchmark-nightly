Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/md?download=true
inline.NumInlined: 1946
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@bind_rdev_to_array:bb.a
bb.ac:                                            ; preds = %sysfs_get_dirent_safe.exit100
  %i.cy = call ptr @kernfs_find_and_get_ns(ptr noundef nonnull %.pr115, ptr noundef @.str.267, ptr noundef null) #29
  br label %sysfs_get_dirent_safe.exit103

sysfs_get_dirent_safe.exit103:                    ; preds = %sysfs_get_dirent_safe.exit100.thread, %sysfs_get_dirent_safe.exit100, %bb.ac
  %.0.i102 = phi ptr [ %i.cy, %bb.ac ], [ null, %sysfs_get_dirent_safe.exit100 ], [ null, %sysfs_get_dirent_safe.exit100.thread ]
  %i.cz = getelementptr i8, ptr %0, i64 296
  store ptr %.0.i102, ptr %i.cz, align 8
  %i.da = load ptr, ptr %i.f, align 8             ; 2 uses
  store ptr %i.da, ptr %0, align 8
  %i.db = getelementptr i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.db, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !149
  store volatile ptr %0, ptr %i.f, align 8
  %i.dc = getelementptr i8, ptr %i.da, i64 8
  store ptr %0, ptr %i.dc, align 8
  %i.dd = load ptr, ptr %i.b, align 8
  %i.de = getelementptr i8, ptr %1, i64 112
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call i32 @bd_link_disk_holder(ptr noundef %i.dd, ptr noundef %i.df) #29 ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.dh = getelementptr i8, ptr %1, i64 112
  %.val = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not.i104 = icmp eq ptr %.val, null
  %i.di = getelementptr i8, ptr %.val, i64 12
  %spec.select.i105 = select i1 %.not.i104, ptr @.str.73, ptr %i.di
  %i.dj = call i32 (ptr, ...) @_printk(ptr noundef @.str.293, ptr noundef nonnull %i.a, ptr noundef %spec.select.i105) #31 ; 0 uses
  call void @mddev_destroy_serial_pool(ptr noundef %1, ptr noundef %0) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.k, %rdev_read_only.exit.thread, %find_rdev.exit, %bb.ad, %sysfs_get_dirent_safe.exit103, %bb.x, %bb.u
  %.0 = phi i32 [ -30, %rdev_read_only.exit.thread ], [ -17, %find_rdev.exit ], [ %i.cm, %bb.ad ], [ 0, %sysfs_get_dirent_safe.exit103 ], [ -16, %bb.x ], [ -16, %bb.u ], [ -28, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @md_kick_rdev_from_array(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @bd_unlink_disk_holder(ptr noundef %i.d, ptr noundef %i.f) #29
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.j, align 8
  store volatile ptr %i.i, ptr %i.h, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.g, align 8
  %i.k = load ptr, ptr %i.a, align 8
  tail call void @mddev_destroy_serial_pool(ptr noundef %i.k, ptr noundef %0) #30
  store volatile ptr null, ptr %i.a, align 8
  %i.l = getelementptr i8, ptr %0, i64 128
  tail call void @sysfs_remove_link(ptr noundef %i.l, ptr noundef @.str.292) #29
  %i.m = getelementptr i8, ptr %0, i64 280        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @kernfs_put(ptr noundef %i.n) #29
  %i.o = getelementptr i8, ptr %0, i64 288
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @kernfs_put(ptr noundef %i.p) #29
  %i.q = getelementptr i8, ptr %0, i64 296
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @kernfs_put(ptr noundef %i.r) #29
  %i.s = getelementptr i8, ptr %0, i64 312
  store i32 0, ptr %i.s, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  tail call void @synchronize_rcu() #29
  %i.t = getelementptr i8, ptr %i.b, i64 1880     ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store ptr %0, ptr %i.v, align 8
  store ptr %i.u, ptr %0, align 8
  store ptr %i.t, ptr %i.g, align 8
  store volatile ptr %0, ptr %i.t, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @add_bound_rdev(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 192
  %i.d = load volatile i64, ptr %i.c, align 8
  %.in.in = and i64 %i.d, 4096
  %.in = icmp ne i64 %.in.in, 0
  %i.e = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  %or.cond5 = select i1 %i.i, i1 true, i1 %.in
  br i1 %or.cond5, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 196
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [56 x i8], ptr @super_types, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o(ptr noundef %i.b, ptr noundef null, ptr noundef %0) #29 ; 0 uses
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i32 %i.s(ptr noundef %i.b, ptr noundef %0) #29 ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.u, i64 112
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @bd_unlink_disk_holder(ptr noundef %i.w, ptr noundef %i.y) #29
  %i.z = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ac, align 8
  store volatile ptr %i.ab, ptr %i.aa, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.z, align 8
  %i.ad = load ptr, ptr %i.a, align 8
  tail call void @mddev_destroy_serial_pool(ptr noundef %i.ad, ptr noundef %0) #30
  store volatile ptr null, ptr %i.a, align 8
  %i.ae = getelementptr i8, ptr %0, i64 128
  tail call void @sysfs_remove_link(ptr noundef %i.ae, ptr noundef @.str.292) #29
  %i.af = getelementptr i8, ptr %0, i64 280       ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @kernfs_put(ptr noundef %i.ag) #29
  %i.ah = getelementptr i8, ptr %0, i64 288
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @kernfs_put(ptr noundef %i.ai) #29
  %i.aj = getelementptr i8, ptr %0, i64 296
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void @kernfs_put(ptr noundef %i.ak) #29
  %i.al = getelementptr i8, ptr %0, i64 312
  store i32 0, ptr %i.al, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  tail call void @synchronize_rcu() #29
  %i.am = getelementptr i8, ptr %i.u, i64 1880    ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store ptr %0, ptr %i.ao, align 8
  store ptr %i.an, ptr %0, align 8
  store ptr %i.am, ptr %i.z, align 8
  store volatile ptr %0, ptr %i.am, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ap = getelementptr i8, ptr %0, i64 280
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %sysfs_notify_dirent_safe.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @kernfs_notify(ptr noundef nonnull %i.aq) #29
  br label %sysfs_notify_dirent_safe.exit

sysfs_notify_dirent_safe.exit:                    ; preds = %bb.d, %bb.e
  %i.ar = getelementptr i8, ptr %i.b, i64 48      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ar, i32 1, ptr elementtype(i8) %i.ar) #28, !srcloc !26
  %i.as = getelementptr i8, ptr %i.b, i64 572
  %i.at = load i32, ptr %i.as, align 4
  %.not28 = icmp eq i32 %i.at, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sysfs_notify_dirent_safe.exit
  %i.au = getelementptr i8, ptr %i.b, i64 497     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.au, i32 2, ptr elementtype(i8) %i.au) #28, !srcloc !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %sysfs_notify_dirent_safe.exit
  %i.av = getelementptr i8, ptr %i.b, i64 496     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.av, i32 1, ptr elementtype(i8) %i.av) #28, !srcloc !26
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @md_event_count, ptr elementtype(i32) @md_event_count) #28, !srcloc !28
  %i.aw = tail call i32 @__wake_up(ptr noundef @md_event_waiters, i32 noundef 3, i32 noundef 1, ptr noundef null) #29 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.0 = phi i32 [ %i.t, %bb.c ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @md_set_array_info(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4                ; 4 uses
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %2

2:                                                ; preds = %bb.b
  %3 = zext nneg i32 %i.d to i64
  %4 = getelementptr [56 x i8], ptr @super_types, i64 %3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %2, %bb.b
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.55, i32 noundef %i.d) #31 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %2
  %i.g = getelementptr i8, ptr %0, i64 196
  store i32 %i.d, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 200
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %0, i64 204
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %1, i64 36
  %i.o = load i32, ptr %i.n, align 4
  %.not59 = icmp eq i32 %i.o, 0
  %i.p = zext i1 %.not59 to i32
  %i.q = getelementptr i8, ptr %0, i64 208
  store i32 %i.p, ptr %i.q, align 8
  %i.r = tail call i64 @ktime_get_real_seconds() #29
  %i.s = getelementptr i8, ptr %0, i64 240
  store i64 %i.r, ptr %i.s, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 196
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %0, i64 200
  store i32 90, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 204
  store i32 3, ptr %i.v, align 4
  %i.w = tail call i64 @ktime_get_real_seconds() #29
  %i.x = getelementptr i8, ptr %0, i64 240
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 256       ; 2 uses
  store i32 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %0, i64 264
  store i8 0, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %1, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 1
  %i.ag = getelementptr i8, ptr %0, i64 288
  store i64 %i.af, ptr %i.ag, align 8
  %i.ah = load i32, ptr %i.a, align 4
  %i.ai = getelementptr i8, ptr %0, i64 280
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %1, i64 44
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 1
  %i.am = zext nneg i32 %i.al to i64
  %spec.select = sub nsw i64 0, %i.am
  %i.an = getelementptr i8, ptr %0, i64 616
  store i64 %spec.select, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %1, i64 36
  %i.ap = load i32, ptr %i.ao, align 4
  %.not57 = icmp eq i32 %i.ap, 0                  ; 2 uses
  %i.aq = zext i1 %.not57 to i32
  %i.ar = getelementptr i8, ptr %0, i64 208
  store i32 %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %0, i64 212
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %1, i64 64
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr i8, ptr %0, i64 260       ; 2 uses
  %i.aw = icmp eq i32 %i.z, 0
  %spec.store.select = select i1 %i.aw, i32 -1, i32 %i.au
  store i32 %spec.store.select, ptr %i.av, align 4
  %i.ax = getelementptr i8, ptr %1, i64 68
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = ashr i32 %i.ay, 9
  %i.ba = getelementptr i8, ptr %0, i64 236       ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4
  br i1 %.not57, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr i8, ptr %0, i64 284
  store i32 27, ptr %i.bb, align 4
  %i.bc = getelementptr i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = getelementptr i8, ptr %0, i64 48        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bd, i32 1, ptr elementtype(i8) %i.bd) #28, !srcloc !26
  %i.be = getelementptr i8, ptr %0, i64 896
  store i64 8, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %0, i64 904
  store i64 120, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %0, i64 880
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %0, i64 344
  store i64 -1, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %0, i64 324
  tail call void @get_random_bytes(ptr noundef %i.bi, i64 noundef 16) #29
  %i.bj = load i32, ptr %i.aa, align 8
  %i.bk = getelementptr i8, ptr %0, i64 356
  store i32 %i.bj, ptr %i.bk, align 4
  %i.bl = load i32, ptr %i.ba, align 4
  %i.bm = getelementptr i8, ptr %0, i64 364
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = load i32, ptr %i.av, align 4
  %i.bo = getelementptr i8, ptr %0, i64 360
  store i32 %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %0, i64 352
  store i32 0, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %0, i64 368
  store i32 0, ptr %i.bq, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local void @md_set_array_sectors(ptr nofree noundef captures(none) %0, i64 noundef %1) #14 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 296
  store i64 %1, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @md_submit_bio(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i32, ptr %i.a, align 8
  %i.b = trunc i32 %.val to i1                    ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr i8, ptr %0, i64 26
  store i8 10, ptr %i.m, align 2
  tail call void @bio_endio(ptr noundef %0) #29
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.h, i64 40
  %i.o = load volatile i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 512
  %.not28 = icmp eq i64 %i.p, 0
  br i1 %.not28, label %bb.g, label %bb.e, !prof !31

bb.e:                                             ; preds = %bb.d
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 26
  store i8 10, ptr %i.q, align 2
  tail call void @bio_endio(ptr noundef %0) #29
  br label %bb.m

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.r = tail call ptr @bio_split_to_limits(ptr noundef %0) #29 ; 6 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %i.h, i64 104
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, 1
  %brmerge.not = select i1 %i.u, i1 %i.b, i1 false, !prof !150
  br i1 %brmerge.not, label %bb.i, label %bb.l, !prof !151

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.r, i64 48
  %i.w = load i32, ptr %i.v, align 8
  %.not25 = icmp ult i32 %i.w, 512
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %i.r, i64 26
  store i8 10, ptr %i.x, align 2
  br label %bb.k

end_hunk_0
