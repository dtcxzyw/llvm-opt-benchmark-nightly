Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/namespace?download=true
inline.NumInlined: 881
inline.NumDeleted: 273
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__se_sys_fsmount:bb.a
  %.5.i.i = or disjoint i32 %.4.i.i, %i.t         ; 2 uses
  store i32 %.5.i.i, ptr %i.a, align 4
  %i.v = and i32 %i.d, 112
  switch i32 %i.v, label %__do_sys_fsmount.exit [
    i32 32, label %bb.g
    i32 16, label %.sink.split.i
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  %.sink165.i = phi i32 [ 32, %bb.f ], [ 8, %bb.e ]
  %i.w = or disjoint i32 %.sink165.i, %.5.i.i
  store i32 %i.w, ptr %i.a, align 4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i, %bb.e
  %i.x = tail call i64 @fdget(i32 noundef %i.b) #27 ; 3 uses
  %.not.i85.i = icmp eq i64 %i.x, 0
  br i1 %.not.i85.i, label %__do_sys_fsmount.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = and i64 %i.x, -4
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not71.i = icmp eq ptr %i.ab, @fscontext_fops
  br i1 %.not71.i, label %class_mutex_intr_constructor.exit.i, label %class_mutex_intr_destructor.exit.i

class_mutex_intr_constructor.exit.i:              ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.z, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 8 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8      ; 3 uses
  %i.af = tail call i32 @mutex_lock_interruptible(ptr noundef %i.ae) #27 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, null
  %i.ah = icmp eq i32 %i.af, 0
  %or.cond.i.i = select i1 %i.ag, i1 true, i1 %i.ah
  %i.ai = sext i32 %i.af to i64
  %i.aj = inttoptr i64 %i.ai to ptr
  %.sroa.0.0.i.i = select i1 %or.cond.i.i, ptr %i.ae, ptr %i.aj ; 3 uses
  %i.ak = ptrtoint ptr %.sroa.0.0.i.i to i64      ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i, null
  %spec.store.select.i.i = select i1 %.not.i.i, i64 -16, i64 %i.ak ; 2 uses
  %i.al = icmp ult i64 %spec.store.select.i.i, -4095
  br i1 %i.al, label %bb.i, label %bb.ae

bb.i:                                             ; preds = %class_mutex_intr_constructor.exit.i
  %i.am = getelementptr i8, ptr %i.ad, i64 56     ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not73.i = icmp eq ptr %i.an, null
  br i1 %.not73.i, label %bb.ae, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.an, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call fastcc zeroext i1 @mount_too_revealing(ptr noundef %i.ap, ptr noundef nonnull %i.a) #30, !srcloc !170
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %i.ad, i64 96
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %i.as, ptr noundef nonnull @.str.23, i8 noundef zeroext 101, ptr noundef nonnull @.str.24) #27
  br label %bb.ae

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr i8, ptr %i.ad, i64 140
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 65280
  %.not74.i = icmp eq i32 %i.av, 512
  br i1 %.not74.i, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr i8, ptr %i.ad, i64 128
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, 64
  %.not75.i = icmp eq i32 %i.ay, 0
  br i1 %.not75.i, label %warn_mandlock.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.b.i.i = load i1, ptr @warn_mandlock.__already_done, align 1
  br i1 %.b.i.i, label %warn_mandlock.exit.i, label %bb.o, !prof !44

bb.o:                                             ; preds = %bb.n
  store i1 true, ptr @warn_mandlock.__already_done, align 1
  %i.az = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #33 ; 0 uses
  br label %warn_mandlock.exit.i

warn_mandlock.exit.i:                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ba = tail call ptr @vfs_create_mount(ptr noundef %i.ad) #30 ; 7 uses
  %i.bb = icmp ugt ptr %i.ba, inttoptr (i64 -4096 to ptr)
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %warn_mandlock.exit.i
  %i.bc = ptrtoint ptr %i.ba to i64
  br label %bb.ae

bb.q:                                             ; preds = %warn_mandlock.exit.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 80
  %i.bg = load i64, ptr %i.bf, align 16
  %i.bh = and i64 %i.bg, 2147483648
  %.not76.i = icmp eq i64 %i.bh, 0
  br i1 %.not76.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @mntput(ptr noundef %i.ba) #30
  br label %bb.ae

bb.s:                                             ; preds = %bb.q
  %i.bi = load i32, ptr %i.a, align 4
  %i.bj = getelementptr i8, ptr %i.ba, i64 16
  store i32 %i.bi, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i86.i = icmp eq ptr %i.bk, null
  br i1 %.not.i86.i, label %dget.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr i8, ptr %i.bk, i64 128
  tail call void @lockref_get(ptr noundef %i.bl) #27
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %bb.t, %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bk, ptr %i.bm, align 8
  store ptr %i.ba, ptr %3, align 8
  tail call void @vfs_clean_context(ptr noundef %i.ad) #27
  br i1 %.not69.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %dget.exit.i
  %i.bn = shl nuw nsw i32 %i.c, 19
  %i.bo = and i32 %i.bn, 524288
  %i.bp = tail call i32 @get_unused_fd_flags(i32 noundef %i.bo) #27 ; 7 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %bb.v, label %class_fd_prepare_lock_err.exit.thread.i, !prof !44

bb.v:                                             ; preds = %bb.u
  %i.br = call fastcc ptr @open_new_namespace(ptr noundef nonnull %3, i32 noundef 2) #30, !srcloc !171 ; 5 uses
  %i.bs = icmp ugt ptr %i.br, inttoptr (i64 -4096 to ptr)
  br i1 %i.bs, label %class_fd_prepare_lock_err.exit.i, label %bb.w, !prof !41

bb.w:                                             ; preds = %bb.v
  %.not9.i.i = icmp eq ptr %i.br, null
  br i1 %.not9.i.i, label %class_fd_prepare_lock_err.exit.thread.i, label %class_fd_prepare_lock_err.exit.thread123.i, !prof !41

class_fd_prepare_lock_err.exit.i:                 ; preds = %bb.v
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = trunc i64 %i.bt to i32                  ; 2 uses
  %.not80.i = icmp eq i32 %i.bu, 0
  br i1 %.not80.i, label %class_fd_prepare_lock_err.exit.thread123.i, label %class_fd_prepare_lock_err.exit.thread.i, !prof !65

class_fd_prepare_lock_err.exit.thread123.i:       ; preds = %class_fd_prepare_lock_err.exit.i, %bb.w
  tail call void @fd_install(i32 noundef %i.bp, ptr noundef %i.br) #27
  br label %class_fd_prepare_lock_err.exit.thread.i

class_fd_prepare_lock_err.exit.thread.i:          ; preds = %class_fd_prepare_lock_err.exit.thread123.i, %class_fd_prepare_lock_err.exit.i, %bb.w, %bb.u
  %.sroa.5.0.i = phi i32 [ -9, %class_fd_prepare_lock_err.exit.thread123.i ], [ %i.bp, %class_fd_prepare_lock_err.exit.i ], [ %i.bp, %bb.u ], [ %i.bp, %bb.w ]
  %.sroa.10.0.i = phi ptr [ null, %class_fd_prepare_lock_err.exit.thread123.i ], [ %i.br, %class_fd_prepare_lock_err.exit.i ], [ null, %bb.u ], [ null, %bb.w ]
  %.066.i = phi i32 [ %i.bp, %class_fd_prepare_lock_err.exit.thread123.i ], [ %i.bu, %class_fd_prepare_lock_err.exit.i ], [ %i.bp, %bb.u ], [ -12, %bb.w ]
  tail call fastcc void @class_fd_prepare_destructor(i32 %.sroa.5.0.i, ptr %.sroa.10.0.i) #30
  %i.bv = sext i32 %.066.i to i64
  br label %bb.ae

bb.x:                                             ; preds = %dget.exit.i
  %i.bw = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !66
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr i8, ptr %i.bx, i64 2088
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 288
  %i.cd = load ptr, ptr %i.cc, align 32
  %i.ce = tail call fastcc ptr @alloc_mnt_ns(ptr noundef %i.cd, i1 noundef zeroext true) #30, !srcloc !172 ; 5 uses
  %i.cf = icmp ugt ptr %i.ce, inttoptr (i64 -4096 to ptr)
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = ptrtoint ptr %i.ce to i64
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.ch = getelementptr i8, ptr %i.ba, i64 -32    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ce, i64 256
  store ptr %i.ch, ptr %i.ci, align 64
  %i.cj = getelementptr i8, ptr %i.ce, i64 368
  store i32 1, ptr %i.cj, align 16
  tail call fastcc void @mnt_add_to_ns(ptr noundef %i.ce, ptr noundef %i.ch) #30, !srcloc !173
  %i.ck = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i88.i = icmp eq ptr %i.ck, null
  br i1 %.not.i88.i, label %mntget.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = getelementptr i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cm, ptr elementtype(i32) %i.cm) #29, !srcloc !57
  br label %mntget.exit.i

mntget.exit.i:                                    ; preds = %bb.aa, %bb.z
  %.not77.i = icmp eq i32 %i.c, 0
  %4 = select i1 %.not77.i, i32 0, i32 524288
  %i.cn = tail call i32 @get_unused_fd_flags(i32 noundef %4) #27 ; 5 uses
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.ab, label %class_fd_prepare_lock_err.exit93.thread.i, !prof !44

bb.ab:                                            ; preds = %mntget.exit.i
  %i.cp = getelementptr i8, ptr %i.ad, i64 80
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call ptr @dentry_open(ptr noundef nonnull %3, i32 noundef 2097152, ptr noundef %i.cq) #27 ; 6 uses
  %i.cs = icmp ugt ptr %i.cr, inttoptr (i64 -4096 to ptr)
  br i1 %i.cs, label %class_fd_prepare_lock_err.exit93.i, label %bb.ac, !prof !41

bb.ac:                                            ; preds = %bb.ab
  %.not9.i91.i = icmp eq ptr %i.cr, null
  br i1 %.not9.i91.i, label %class_fd_prepare_lock_err.exit93.thread.i, label %class_fd_prepare_lock_err.exit93.thread137.i, !prof !41

class_fd_prepare_lock_err.exit93.i:               ; preds = %bb.ab
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = trunc i64 %i.ct to i32                  ; 2 uses
  %.not78.i = icmp eq i32 %i.cu, 0
  br i1 %.not78.i, label %class_fd_prepare_lock_err.exit93.thread137.i, label %class_fd_prepare_lock_err.exit93.thread.i

class_fd_prepare_lock_err.exit93.thread.i:        ; preds = %class_fd_prepare_lock_err.exit93.i, %bb.ac, %mntget.exit.i
  %.0.i90136.i = phi i32 [ %i.cu, %class_fd_prepare_lock_err.exit93.i ], [ %i.cn, %mntget.exit.i ], [ -12, %bb.ac ]
  %.sroa.9.0130135.i = phi ptr [ %i.cr, %class_fd_prepare_lock_err.exit93.i ], [ null, %mntget.exit.i ], [ null, %bb.ac ]
  %i.cv = load ptr, ptr %3, align 8
  call void @dissolve_on_fput(ptr noundef %i.cv) #30
  br label %bb.ad

class_fd_prepare_lock_err.exit93.thread137.i:     ; preds = %class_fd_prepare_lock_err.exit93.i, %bb.ac
  %i.cw = getelementptr i8, ptr %i.cr, i64 4      ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = or i32 %i.cx, 268435456
  store i32 %i.cy, ptr %i.cw, align 4
  call void @fd_install(i32 noundef %i.cn, ptr noundef %i.cr) #27
  br label %bb.ad

bb.ad:                                            ; preds = %class_fd_prepare_lock_err.exit93.thread137.i, %class_fd_prepare_lock_err.exit93.thread.i
  %.sroa.6.0.i = phi i32 [ -9, %class_fd_prepare_lock_err.exit93.thread137.i ], [ %i.cn, %class_fd_prepare_lock_err.exit93.thread.i ]
  %.sroa.11.0.i = phi ptr [ null, %class_fd_prepare_lock_err.exit93.thread137.i ], [ %.sroa.9.0130135.i, %class_fd_prepare_lock_err.exit93.thread.i ]
  %.0.in.i = phi i32 [ %i.cn, %class_fd_prepare_lock_err.exit93.thread137.i ], [ %.0.i90136.i, %class_fd_prepare_lock_err.exit93.thread.i ]
  %.0.i = sext i32 %.0.in.i to i64
  call fastcc void @class_fd_prepare_destructor(i32 %.sroa.6.0.i, ptr %.sroa.11.0.i) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y, %class_fd_prepare_lock_err.exit.thread.i, %bb.r, %bb.p, %bb.l, %bb.k, %bb.i, %class_mutex_intr_constructor.exit.i
  %.1.i = phi i64 [ -16, %bb.l ], [ -1, %bb.k ], [ -22, %bb.i ], [ %i.bc, %bb.p ], [ -22, %bb.r ], [ %i.bv, %class_fd_prepare_lock_err.exit.thread.i ], [ %i.cg, %bb.y ], [ %.0.i, %bb.ad ], [ %spec.store.select.i.i, %class_mutex_intr_constructor.exit.i ] ; 2 uses
  %i.cz = add i64 %i.ak, 4095
  %i.da = icmp ult i64 %i.cz, 4096
  br i1 %i.da, label %class_mutex_intr_destructor.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @mutex_unlock(ptr noundef %.sroa.0.0.i.i) #27
  br label %class_mutex_intr_destructor.exit.i

class_mutex_intr_destructor.exit.i:               ; preds = %bb.af, %bb.ae, %bb.h
  %.2.i = phi i64 [ -22, %bb.h ], [ %.1.i, %bb.af ], [ %.1.i, %bb.ae ] ; 2 uses
  %i.db = and i64 %i.x, 1
  %.not.i94.i = icmp eq i64 %i.db, 0
  br i1 %.not.i94.i, label %__do_sys_fsmount.exit, label %bb.ag, !prof !82

bb.ag:                                            ; preds = %class_mutex_intr_destructor.exit.i
  call void @fput(ptr noundef %i.z) #27
  br label %__do_sys_fsmount.exit

__do_sys_fsmount.exit:                            ; preds = %bb.a, %bb.c, %.critedge.i, %bb.d, %bb.e, %bb.g, %class_mutex_intr_destructor.exit.i, %bb.ag
  %.3.i = phi i64 [ -22, %bb.a ], [ -1, %.critedge.i ], [ -22, %bb.d ], [ -22, %bb.e ], [ -1, %bb.c ], [ %.2.i, %bb.ag ], [ %.2.i, %class_mutex_intr_destructor.exit.i ], [ -9, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @path_put(ptr noundef nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i64 %.3.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__ia32_sys_fsmount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = tail call fastcc i64 @__se_sys_fsmount(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i) #30, !srcloc !174
  ret i64 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_move_mount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call fastcc i64 @__se_sys_move_mount(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j) #30, !srcloc !175
  ret i64 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_move_mount(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.path, align 8               ; 9 uses
  %6 = alloca %struct.path, align 8               ; 6 uses
  %i.a = trunc i64 %0 to i32                      ; 3 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = trunc i64 %2 to i32                      ; 3 uses
  %i.d = inttoptr i64 %3 to ptr                   ; 2 uses
  %i.e = trunc i64 %4 to i32                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.f = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !66
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 2088
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 288
  %i.m = load ptr, ptr %i.l, align 32
  %i.n = tail call zeroext i1 @ns_capable(ptr noundef %i.m, i32 noundef 21) #27
  br i1 %i.n, label %bb.b, label %__do_sys_move_mount.exit

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %i.e, -888
  %.not.i = icmp ne i32 %i.o, 0
  %i.p = and i32 %i.e, 768
  %i.q = icmp eq i32 %i.p, 768
  %or.cond63.i = or i1 %.not.i, %i.q
  br i1 %or.cond63.i, label %__do_sys_move_mount.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i32 %i.e, 7
  %spec.select.i = and i32 %i.r, 2
  %i.s = lshr i32 %i.e, 9
  %.1.i = or disjoint i32 %spec.select.i, %i.s    ; 2 uses
  %i.t = and i32 %i.e, 64
  %.not.i.not.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.not.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @getname_flags(ptr noundef %i.d, i32 noundef 0) #27
  br label %getname_maybe_null.exit.i

bb.e:                                             ; preds = %bb.c
  %.not5.i.i = icmp eq i64 %3, 0
  br i1 %.not5.i.i, label %getname_maybe_null.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @__getname_maybe_null(ptr noundef nonnull %i.d) #27
  br label %getname_maybe_null.exit.i

getname_maybe_null.exit.i:                        ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ %i.u, %bb.d ], [ null, %bb.e ] ; 3 uses
  %i.w = icmp eq ptr %.0.i.i, null
  %i.x = icmp sgt i32 %i.c, -1
  %or.cond.i = and i1 %i.x, %i.w
  br i1 %or.cond.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %getname_maybe_null.exit.i
  %i.y = tail call i64 @fdget_raw(i32 noundef range(i32 0, -2147483648) %i.c) #27 ; 3 uses
  %.not.i66.i = icmp eq i64 %i.y, 0
  br i1 %.not.i66.i, label %fdput.exit76.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = and i64 %i.y, -4
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  call void @path_get(ptr noundef nonnull %5) #27
  %i.ac = and i64 %i.y, 1
  %.not.i67.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i67.i, label %fdput.exit.i, label %bb.i, !prof !44

bb.i:                                             ; preds = %bb.h
  call void @fput(ptr noundef %i.aa) #27
  br label %fdput.exit.i

bb.j:                                             ; preds = %getname_maybe_null.exit.i
  %i.ad = lshr i32 %i.e, 4
  %.lobit.i = and i32 %i.ad, 1
  %i.ae = lshr i32 %i.e, 3
  %i.af = and i32 %i.ae, 4
  %.141.i = or disjoint i32 %.lobit.i, %i.af
  %i.ag = call i32 @filename_lookup(i32 noundef %i.c, ptr noundef %.0.i.i, i32 noundef %.141.i, ptr noundef nonnull %5, ptr noundef null) #27 ; 2 uses
  %.not55.i = icmp eq i32 %i.ag, 0
  br i1 %.not55.i, label %fdput.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = sext i32 %i.ag to i64
  br label %fdput.exit76.i

fdput.exit.i:                                     ; preds = %bb.j, %bb.i, %bb.h
end_hunk_0
