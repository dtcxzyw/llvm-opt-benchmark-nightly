Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/remap_range?download=true
inline.NumInlined: 107
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vfs_dedupe_file_range_one:bb.a
  %.not.i = icmp sgt i64 %i.a, -1
  br i1 %.not.i, label %bb.d, label %remap_verify_area.exit.thread, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.b = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1, i64 %4)
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %remap_verify_area.exit.thread, label %remap_verify_area.exit, !prof !12

remap_verify_area.exit:                           ; preds = %bb.d
  %i.d = tail call i32 @security_file_permission(ptr noundef %0, i32 noundef 4) #9 ; 2 uses
  %.not38 = icmp eq i32 %i.d, 0
  br i1 %.not38, label %bb.e, label %remap_verify_area.exit.thread

remap_verify_area.exit.thread:                    ; preds = %bb.d, %bb.c, %remap_verify_area.exit
  %.0.i52 = phi i32 [ %i.d, %remap_verify_area.exit ], [ -22, %bb.c ], [ -22, %bb.d ]
  %i.e = sext i32 %.0.i52 to i64
  br label %bb.q

bb.e:                                             ; preds = %remap_verify_area.exit
  %i.f = or i64 %4, %3
  %.not.i45 = icmp sgt i64 %i.f, -1
  br i1 %.not.i45, label %bb.f, label %remap_verify_area.exit47.thread, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.g = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %3, i64 %4)
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %remap_verify_area.exit47.thread, label %remap_verify_area.exit47, !prof !12

remap_verify_area.exit47:                         ; preds = %bb.f
  %i.i = tail call i32 @security_file_permission(ptr noundef %2, i32 noundef 2) #9 ; 2 uses
  %.not39 = icmp eq i32 %i.i, 0
  br i1 %.not39, label %bb.g, label %remap_verify_area.exit47.thread

remap_verify_area.exit47.thread:                  ; preds = %bb.f, %bb.e, %remap_verify_area.exit47
  %.0.i4655 = phi i32 [ %i.i, %remap_verify_area.exit47 ], [ -22, %bb.e ], [ -22, %bb.f ]
  %i.j = sext i32 %.0.i4655 to i64
  br label %bb.q

bb.g:                                             ; preds = %remap_verify_area.exit47
  %i.k = tail call i32 @mnt_want_write_file(ptr noundef %2) #9 ; 2 uses
  %.not40 = icmp eq i32 %i.k, 0
  br i1 %.not40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = sext i32 %i.k to i64
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %i.p = load volatile ptr, ptr %i.o, align 8     ; 2 uses
  %i.q = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8           ; 3 uses
  %i.r = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %i.r, label %may_dedupe_file.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr i8, ptr %2, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 2
  %.not.i48 = icmp eq i32 %i.u, 0
  br i1 %.not.i48, label %bb.k, label %may_dedupe_file.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr i8, ptr %.val.i, i64 24
  %.val11.i = load i32, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %.val.i, i64 40
  %.val12.i = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val12.i, i64 1088
  %.val12.val.i = load ptr, ptr %i.x, align 64
  %i.y = tail call i32 @make_vfsuid(ptr noundef %i.p, ptr noundef %.val12.val.i, i32 %.val11.i) #9 ; 2 uses
  %i.z = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #12, !srcloc !14
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr i8, ptr %i.aa, i64 1992
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 8
  %i.ae = icmp ne i32 %i.y, -1
  %i.af = icmp eq i32 %i.y, %.sroa.0.0.copyload.i
  %spec.select.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %spec.select.i.i, label %may_dedupe_file.exit.thread, label %may_dedupe_file.exit

may_dedupe_file.exit:                             ; preds = %bb.k
  %i.ag = tail call i32 @inode_permission(ptr noundef %i.p, ptr noundef %.val.i, i32 noundef 2) #9
  %.not10.i = icmp eq i32 %i.ag, 0
  br i1 %.not10.i, label %may_dedupe_file.exit.thread, label %bb.p

may_dedupe_file.exit.thread:                      ; preds = %bb.k, %bb.j, %bb.i, %may_dedupe_file.exit
  %i.ah = getelementptr i8, ptr %0, i64 32
  %.val44 = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %.val44, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %.val43 = load ptr, ptr %i.q, align 8           ; 2 uses
  %i.ak = getelementptr i8, ptr %.val43, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %.not41 = icmp eq ptr %i.aj, %i.al
  br i1 %.not41, label %bb.l, label %bb.p

bb.l:                                             ; preds = %may_dedupe_file.exit.thread
  %i.am = load i16, ptr %.val43, align 8
  %i.an = and i16 %i.am, -4096
  %i.ao = icmp eq i16 %i.an, 16384
  br i1 %i.ao, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 232
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not42 = icmp eq ptr %i.as, null
  br i1 %.not42, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = icmp eq i64 %4, 0
  br i1 %i.at, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = or i32 %5, 1
  %i.av = tail call i64 %i.as(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %i.au) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %may_dedupe_file.exit.thread, %may_dedupe_file.exit, %bb.o
  %.032 = phi i64 [ -18, %may_dedupe_file.exit.thread ], [ -21, %bb.l ], [ -1, %may_dedupe_file.exit ], [ %i.av, %bb.o ], [ -22, %bb.m ], [ 0, %bb.n ]
  tail call void @mnt_drop_write_file(ptr noundef %2) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h, %remap_verify_area.exit47.thread, %remap_verify_area.exit.thread
  %.0 = phi i64 [ %i.e, %remap_verify_area.exit.thread ], [ %i.j, %remap_verify_area.exit47.thread ], [ %i.l, %bb.h ], [ %.032, %bb.p ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @vfs_dedupe_file_range(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load i16, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %remap_verify_area.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 18
  %i.h = load i16, ptr %i.g, align 2
  %.not60 = icmp eq i16 %i.h, 0
  br i1 %.not60, label %bb.c, label %remap_verify_area.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %.not61 = icmp eq i32 %i.j, 0
  br i1 %.not61, label %bb.d, label %remap_verify_area.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %1, align 8                ; 4 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = load i16, ptr %.val, align 8             ; 2 uses
  %i.o = and i16 %i.n, -4096
  %i.p = icmp eq i16 %i.o, 16384
  br i1 %i.p, label %remap_verify_area.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp slt i16 %i.n, -28672
  br i1 %i.q, label %bb.f, label %remap_verify_area.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 232
  %i.u = load ptr, ptr %i.t, align 8
  %.not62 = icmp eq ptr %i.u, null
  br i1 %.not62, label %remap_verify_area.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = or i64 %i.m, %i.k
  %.not.i = icmp sgt i64 %i.v, -1
  br i1 %.not.i, label %bb.h, label %remap_verify_area.exit.thread, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.w = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.k, i64 %i.m)
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %remap_verify_area.exit.thread, label %remap_verify_area.exit, !prof !12

remap_verify_area.exit:                           ; preds = %bb.h
  %i.y = tail call i32 @security_file_permission(ptr noundef %0, i32 noundef 4) #9 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %remap_verify_area.exit.thread, label %bb.i

bb.i:                                             ; preds = %remap_verify_area.exit
  %i.aa = add nuw i64 %i.m, %i.k
  %i.ab = getelementptr i8, ptr %.val, i64 80
  %i.ac = load volatile i64, ptr %i.ab, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !13
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %remap_verify_area.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1073741824) ; 2 uses
  %i.af = zext i16 %i.c to i32
  %.not77 = icmp eq i16 %i.c, 0
  br i1 %.not77, label %remap_verify_area.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %1, i64 24        ; 5 uses
  %wide.trip.count = zext i16 %i.c to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ah = icmp ult i16 %i.c, 4
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.k ]
  %i.ai = getelementptr [32 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 24
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr [32 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.al, i64 56
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr [32 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 80
  store i64 0, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 88
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr [32 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 112
  store i64 0, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 120
  store i32 0, ptr %i.at, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph74.preheader.unr-lcssa, label %bb.k, !llvm.loop !38

.lr.ph74.preheader.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph74.preheader.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.lr.ph74.preheader.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.au = getelementptr [32 x i8], ptr %i.ag, i64 %indvars.iv.epil ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store i64 0, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 24
  store i32 0, ptr %i.aw, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph74.preheader, label %bb.l, !llvm.loop !39

.lr.ph74.preheader:                               ; preds = %bb.l, %.lr.ph74.preheader.unr-lcssa
  %i.ax = getelementptr i8, ptr %1, i64 24
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %fdput.exit
  %.05372 = phi ptr [ %i.cb, %fdput.exit ], [ %i.ax, %.lr.ph74.preheader ] ; 9 uses
  %.171 = phi i32 [ %i.ca, %fdput.exit ], [ 0, %.lr.ph74.preheader ]
  %i.ay = load i64, ptr %.05372, align 8
  %i.az = trunc i64 %i.ay to i32
  %i.ba = tail call i64 @fdget(i32 noundef %i.az) #9 ; 4 uses
  %.not.i65 = icmp eq i64 %i.ba, 0
  br i1 %.not.i65, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph74
  %i.bb = getelementptr i8, ptr %.05372, i64 24
  store i32 -9, ptr %i.bb, align 8
  br label %task_sigpending.exit.i

bb.n:                                             ; preds = %.lr.ph74
  %i.bc = getelementptr i8, ptr %.05372, i64 28
  %i.bd = load i32, ptr %i.bc, align 4
  %.not63 = icmp eq i32 %i.bd, 0
  br i1 %.not63, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr i8, ptr %.05372, i64 24
  store i32 -22, ptr %i.be, align 8
  br label %task_sigpending.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bf = and i64 %i.ba, -4
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr i8, ptr %.05372, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = tail call i64 @vfs_dedupe_file_range_one(ptr noundef %0, i64 noundef %i.k, ptr noundef %i.bg, i64 noundef %i.bi, i64 noundef %i.ae, i32 noundef 2) #11 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, -52
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr i8, ptr %.05372, i64 24
  store i32 1, ptr %i.bl, align 8
  br label %task_sigpending.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bm = icmp slt i64 %i.bj, 0
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bj to i32
  %i.bo = getelementptr i8, ptr %.05372, i64 24
  store i32 %i.bn, ptr %i.bo, align 8
  br label %task_sigpending.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr i8, ptr %.05372, i64 16
  store i64 %i.ae, ptr %i.bp, align 8
  br label %task_sigpending.exit.i

task_sigpending.exit.i:                           ; preds = %bb.q, %bb.t, %bb.s, %bb.o, %bb.m
  %i.bq = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #12, !srcloc !14
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load volatile i64, ptr %i.br, align 8
  %i.bt = and i64 %i.bs, 2
  %.not.i66 = icmp eq i64 %i.bt, 0
  br i1 %.not.i66, label %fatal_signal_pending.exit, label %bb.u

bb.u:                                             ; preds = %task_sigpending.exit.i
  %i.bu = getelementptr i8, ptr %i.br, i64 2152
  %.val.i = load i64, ptr %i.bu, align 8
  %i.bv = and i64 %.val.i, 256
  %i.bw = icmp eq i64 %i.bv, 0
  br label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i, %bb.u
  %.not64 = phi i1 [ true, %task_sigpending.exit.i ], [ %i.bw, %bb.u ]
  %i.bx = and i64 %i.ba, 1
  %.not.i67 = icmp eq i64 %i.bx, 0
  br i1 %.not.i67, label %fdput.exit, label %bb.v, !prof !11

bb.v:                                             ; preds = %fatal_signal_pending.exit
  %i.by = and i64 %i.ba, -4
  %i.bz = inttoptr i64 %i.by to ptr
  tail call void @fput(ptr noundef %i.bz) #9
  br label %fdput.exit

fdput.exit:                                       ; preds = %fatal_signal_pending.exit, %bb.v
  %i.ca = add nuw nsw i32 %.171, 1                ; 2 uses
  %i.cb = getelementptr i8, ptr %.05372, i64 32
  %i.cc = icmp samesign ult i32 %i.ca, %i.af
  %or.cond = select i1 %.not64, i1 %i.cc, i1 false
  br i1 %or.cond, label %.lr.ph74, label %remap_verify_area.exit.thread, !llvm.loop !40

remap_verify_area.exit.thread:                    ; preds = %fdput.exit, %bb.j, %bb.h, %bb.g, %bb.i, %remap_verify_area.exit, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ -22, %bb.b ], [ -95, %bb.f ], [ %i.y, %remap_verify_area.exit ], [ -22, %bb.i ], [ -22, %bb.e ], [ -21, %bb.d ], [ -22, %bb.c ], [ -22, %bb.g ], [ -22, %bb.h ], [ 0, %bb.j ], [ 0, %fdput.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @generic_write_check_limits(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @read_cache_folio(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7
end_hunk_0
