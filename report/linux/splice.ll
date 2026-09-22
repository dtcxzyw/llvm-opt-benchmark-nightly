Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/splice?download=true
inline.NumInlined: 214
inline.NumDeleted: 94
begin_hunk_0_@iter_file_splice_write:bb.a
  %i.br = sub i64 %i.bq, %.0121.lcssa
  call void @iov_iter_bvec(ptr noundef nonnull %7, i32 noundef 1, ptr noundef %.1109, i64 noundef %.0124.lcssa, i64 noundef %i.br) #11
  %i.bs = load i32, ptr %i.x, align 4
  %i.bt = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !20
  %i.bu = inttoptr i64 %i.bt to ptr               ; 4 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 2376
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge
  %i.bx = getelementptr i8, ptr %i.bu, i64 1092
  %.val14.i.i.i = load i32, ptr %i.bx, align 4    ; 3 uses
  %i.by = icmp eq i32 %.val14.i.i.i, 5
  br i1 %i.by, label %.sink.split.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = add i32 %.val14.i.i.i, -1
  %or.cond.i.i.i.i.i = icmp ult i32 %i.bz, 2
  %i.ca = icmp eq i32 %.val14.i.i.i, 6
  %.0.i.i.i.i.i = or i1 %i.ca, %or.cond.i.i.i.i.i
  %..i.i.i.i = select i1 %.0.i.i.i.i.i, i32 8192, i32 16384
  br label %.sink.split.i.i.i

bb.l:                                             ; preds = %.critedge
  %i.cb = getelementptr i8, ptr %i.bw, i64 12
  %i.cc = load i16, ptr %i.cb, align 4            ; 2 uses
  %i.cd = icmp ult i16 %i.cc, 8192
  br i1 %i.cd, label %bb.m, label %init_sync_kiocb.exit

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr i8, ptr %i.bu, i64 1092
  %.val.i.i.i = load i32, ptr %i.ce, align 4      ; 3 uses
  %i.cf = icmp eq i32 %.val.i.i.i, 5
  br i1 %i.cf, label %.sink.split.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = add i32 %.val.i.i.i, -1
  %or.cond.i.i18.i.i.i = icmp ult i32 %i.cg, 2
  %i.ch = icmp eq i32 %.val.i.i.i, 6
  %.0.i.i19.i.i.i = or i1 %i.ch, %or.cond.i.i18.i.i.i
  %..i20.i.i.i = select i1 %.0.i.i19.i.i.i, i32 8192, i32 16384
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.0.i21.sink.i.i.i = phi i32 [ %..i.i.i.i, %bb.k ], [ 24576, %bb.j ], [ 24576, %bb.m ], [ %..i20.i.i.i, %bb.n ]
  %i.ci = getelementptr i8, ptr %i.bu, i64 108
  %.val15.i.i.i = load i32, ptr %i.ci, align 4
  %i.cj = add i32 %.val15.i.i.i, -100
  %i.ck = sdiv i32 %i.cj, 5                       ; 2 uses
  %or.cond5.i.i.i.i = icmp ugt i32 %i.ck, 7
  %i.cl = or disjoint i32 %i.ck, %.0.i21.sink.i.i.i
  %i.cm = trunc nuw i32 %i.cl to i16
  %.0.i.i.i.i = select i1 %or.cond5.i.i.i.i, i16 -8192, i16 %i.cm
  br label %init_sync_kiocb.exit

init_sync_kiocb.exit:                             ; preds = %bb.l, %.sink.split.i.i.i
  %.010.in.i.i.i = phi i16 [ %i.cc, %bb.l ], [ %.0.i.i.i.i, %.sink.split.i.i.i ]
  store ptr %1, ptr %6, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i32 %i.bs, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i16 %.010.in.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 4
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 1
  store ptr null, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.cn = load i64, ptr %i.e, align 8
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.co = load ptr, ptr %i.l, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call i64 %i.cq(ptr noundef nonnull %6, ptr noundef nonnull %7) #11 ; 8 uses
  %i.cs = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  store i64 %i.cs, ptr %i.e, align 8
  %i.ct = icmp slt i64 %i.cr, 1
  br i1 %i.ct, label %.thread169, label %bb.o

bb.o:                                             ; preds = %init_sync_kiocb.exit
  %i.cu = load i64, ptr %5, align 8               ; 4 uses
  %i.cv = sub i64 %i.cu, %.0121.lcssa
  %i.cw = icmp ugt i64 %i.cr, %i.cv
  br i1 %i.cw, label %bb.p, label %bb.q, !prof !19

bb.p:                                             ; preds = %bb.o
  %i.cx = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str, i32 742, i32 2323, i64 16) #10, !srcloc !61
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cx, i64 noundef %i.cr, i64 noundef %i.cu, i64 noundef %.0121.lcssa) #11
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !62
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cy = load i64, ptr %i.h, align 8
  %i.cz = add i64 %i.cy, %i.cr
  store i64 %i.cz, ptr %i.h, align 8
  %i.da = sub i64 %i.cu, %i.cr
  store i64 %i.da, ptr %5, align 8
  store i64 %i.cs, ptr %2, align 8
  %i.db = load i32, ptr %i.u, align 4
  %.promoted = load i8, ptr %i.i, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.s
  %.3114193 = phi i64 [ %i.cr, %bb.q ], [ %i.dp, %bb.s ] ; 3 uses
  %.1119192 = phi i32 [ %i.db, %bb.q ], [ %i.du, %bb.s ] ; 2 uses
  %i.dc = phi i8 [ %.promoted, %bb.q ], [ %spec.select199, %bb.s ] ; 2 uses
  %.val = load i32, ptr %i.v, align 4
  %.val146 = load ptr, ptr %i.w, align 8
  %i.dd = add i32 %.val, -1
  %i.de = and i32 %i.dd, %.1119192
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr [40 x i8], ptr %.val146, i64 %i.df ; 4 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 12     ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4            ; 2 uses
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %.not140 = icmp slt i64 %.3114193, %i.dj
  br i1 %.not140, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  %i.dk = getelementptr i8, ptr %i.dg, i64 8      ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = trunc nuw i64 %.3114193 to i32          ; 2 uses
  %i.dn = add i32 %i.dl, %i.dm
  store i32 %i.dn, ptr %i.dk, align 8
  %i.do = sub i32 %i.di, %i.dm
  store i32 %i.do, ptr %i.dh, align 4
  br label %.loopexit225

bb.s:                                             ; preds = %bb.r
  %i.dp = sub nuw nsw i64 %.3114193, %i.dj        ; 2 uses
  store i32 0, ptr %i.dh, align 4
  %i.dq = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  store ptr null, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef %0, ptr noundef %i.dg) #11, !inline_history !0
  %i.du = add i32 %.1119192, 1                    ; 2 uses
  store i32 %i.du, ptr %i.u, align 4
  %i.dv = load i32, ptr %i.y, align 4
  %.not141 = icmp eq i32 %i.dv, 0
  %spec.select199 = select i1 %.not141, i8 %i.dc, i8 1 ; 2 uses
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %.loopexit225, label %bb.r, !llvm.loop !59

.thread169:                                       ; preds = %_kzalloc_noprof.exit156, %init_sync_kiocb.exit, %bb.d, %bb.h
  %.5.ph = phi i64 [ %spec.store.select, %bb.h ], [ %i.ac, %bb.d ], [ -12, %_kzalloc_noprof.exit156 ], [ %i.cr, %init_sync_kiocb.exit ]
  %.2110.ph = phi ptr [ %.1109, %bb.h ], [ %.0108195, %bb.d ], [ null, %_kzalloc_noprof.exit156 ], [ %.1109, %init_sync_kiocb.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.loopexit

.loopexit225:                                     ; preds = %bb.s, %.thread
  %i.dw = phi i8 [ %i.dc, %.thread ], [ %spec.select199, %bb.s ]
  store i8 %i.dw, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.not137 = icmp eq i64 %i.cu, %i.cr
  br i1 %.not137, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %.loopexit225, %bb.b, %.thread169
  %.6 = phi i64 [ %.5.ph, %.thread169 ], [ 0, %bb.b ], [ 0, %.loopexit225 ]
  %.3 = phi ptr [ %.2110.ph, %.thread169 ], [ %i.s, %bb.b ], [ %.1109, %.loopexit225 ]
  call void @kfree(ptr noundef %.3) #11
  %.val149 = load i8, ptr %i.i, align 8, !range !23, !noundef !24
  %i.dx = trunc nuw i8 %.val149 to i1
  br i1 %i.dx, label %bb.t, label %splice_from_pipe_end.exit

bb.t:                                             ; preds = %.loopexit
  call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !25
  %i.dy = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.dz = load volatile ptr, ptr %i.dy, align 8
  %.not3.i.i = icmp eq ptr %i.dz, %i.dy
  br i1 %.not3.i.i, label %wakeup_pipe_writers.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = getelementptr i8, ptr %0, i64 48
  %i.eb = call i32 @__wake_up(ptr noundef %i.ea, i32 noundef 1, i32 noundef 1, ptr noundef null) #11 ; 0 uses
  br label %wakeup_pipe_writers.exit.i

wakeup_pipe_writers.exit.i:                       ; preds = %bb.u, %bb.t
  %i.ec = getelementptr i8, ptr %0, i64 144
  call void @kill_fasync(ptr noundef %i.ec, i32 noundef 29, i32 noundef 2) #11
  br label %splice_from_pipe_end.exit

splice_from_pipe_end.exit:                        ; preds = %.loopexit, %wakeup_pipe_writers.exit.i
  call void @pipe_unlock(ptr noundef %0) #11
  %i.ed = load i64, ptr %i.h, align 8             ; 2 uses
  %.not144 = icmp eq i64 %i.ed, 0
  %spec.select = select i1 %.not144, i64 %.6, i64 %i.ed
  br label %bb.v

bb.v:                                             ; preds = %_kzalloc_noprof.exit, %bb.a, %splice_from_pipe_end.exit
  %.0 = phi i64 [ -22, %bb.a ], [ -12, %_kzalloc_noprof.exit ], [ %spec.select, %splice_from_pipe_end.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @splice_to_socket(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
  %6 = alloca [16 x %struct.bio_vec], align 16    ; 5 uses
  %7 = alloca %struct.msghdr, align 8             ; 6 uses
  %8 = tail call ptr @sock_from_file(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %6, i8 0, i64 256, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, i8 0, i64 96, i1 false)
  tail call void @pipe_lock(ptr noundef %0) #11
  %.not213 = icmp eq i64 %3, 0
  br i1 %.not213, label %.thread267, label %.lr.ph218

.lr.ph218:                                        ; preds = %5
  %9 = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !20
  %10 = inttoptr i64 %9 to ptr                    ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 72         ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 76         ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.d = and i32 %4, 2
  %.not133 = icmp ne i32 %i.d, 0
  %i.e = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = getelementptr i8, ptr %0, i64 144
  %i.h = getelementptr i8, ptr %0, i64 84         ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 3 uses
  %i.k = and i32 %4, 4
  %.not124 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not124, i32 134217728, i32 134250496 ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = getelementptr i8, ptr %0, i64 100
  br label %test_tsk_thread_flag.exit.i

test_tsk_thread_flag.exit.i:                      ; preds = %bb.u, %.lr.ph218
  %.089216 = phi i64 [ %3, %.lr.ph218 ], [ %i.ck, %bb.u ] ; 3 uses
  %.092215 = phi i64 [ 0, %.lr.ph218 ], [ %i.cj, %bb.u ] ; 8 uses
  %.095214 = phi i8 [ 0, %.lr.ph218 ], [ %.499, %bb.u ] ; 7 uses
  %i.o = load volatile i64, ptr %10, align 8
  %i.p = and i64 %i.o, 4
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %signal_pending.exit, label %.thread170, !prof !26

signal_pending.exit:                              ; preds = %test_tsk_thread_flag.exit.i
  %i.q = load volatile i64, ptr %10, align 8
  %i.r = and i64 %i.q, 2
  %.not120 = icmp eq i64 %i.r, 0
  br i1 %.not120, label %.preheader176, label %.thread170

.preheader176:                                    ; preds = %signal_pending.exit
  %.val143191 = load i32, ptr %i.a, align 8       ; 2 uses
  %.val144192 = load i32, ptr %i.b, align 4       ; 2 uses
  %.not.i.i193 = icmp eq i32 %.val143191, %.val144192
  br i1 %.not.i.i193, label %.lr.ph.a, label %.preheader

.lr.ph.a:                                         ; preds = %.preheader176
  %.not132 = icmp ne i64 %.092215, 0
  %i.s = load i32, ptr %i.c, align 8
  %.not131.peel = icmp eq i32 %i.s, 0
  %or.cond137.not234.peel = select i1 %.not131.peel, i1 true, i1 %.not132 ; 2 uses
  %brmerge.peel = or i1 %or.cond137.not234.peel, %.not133
  br i1 %brmerge.peel, label %.thread170.split.loop.exit300, label %test_tsk_thread_flag.exit.i146.peel

test_tsk_thread_flag.exit.i146.peel:              ; preds = %.lr.ph.a
  %i.t = load volatile i64, ptr %10, align 8
  %i.u = and i64 %i.t, 4
  %.not.i147.peel = icmp eq i64 %i.u, 0
  br i1 %.not.i147.peel, label %signal_pending.exit152.peel, label %.thread170, !prof !26

signal_pending.exit152.peel:                      ; preds = %test_tsk_thread_flag.exit.i146.peel
  %i.v = load volatile i64, ptr %10, align 8
  %i.w = and i64 %i.v, 2
  %.not134.peel = icmp eq i64 %i.w, 0
  br i1 %.not134.peel, label %bb.a, label %.thread170

bb.a:                                             ; preds = %signal_pending.exit152.peel
  %i.x = trunc nuw i8 %.095214 to i1
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !25
  %i.y = load volatile ptr, ptr %i.e, align 8
  %.not3.i.peel = icmp eq ptr %i.y, %i.e
  br i1 %.not3.i.peel, label %wakeup_pipe_writers.exit.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = call i32 @__wake_up(ptr noundef %i.f, i32 noundef 1, i32 noundef 1, ptr noundef null) #11 ; 0 uses
  br label %wakeup_pipe_writers.exit.peel

wakeup_pipe_writers.exit.peel:                    ; preds = %bb.c, %bb.b
  call void @kill_fasync(ptr noundef %i.g, i32 noundef 29, i32 noundef 2) #11
  br label %bb.d

bb.d:                                             ; preds = %wakeup_pipe_writers.exit.peel, %bb.a
  call void @pipe_wait_readable(ptr noundef %0) #11
  %.val143.peel = load i32, ptr %i.a, align 8     ; 2 uses
  %.val144.peel = load i32, ptr %i.b, align 4     ; 2 uses
  %.not.i.i.peel = icmp eq i32 %.val143.peel, %.val144.peel
  br i1 %.not.i.i.peel, label %.peel.next, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d, %.preheader176
  %.196.lcssa = phi i8 [ %.095214, %.preheader176 ], [ 0, %bb.d ], [ 0, %bb.e ] ; 5 uses
  %.val143.lcssa = phi i32 [ %.val143191, %.preheader176 ], [ %.val143.peel, %bb.d ], [ %.val143, %bb.e ] ; 3 uses
  %.val144.lcssa = phi i32 [ %.val144192, %.preheader176 ], [ %.val144.peel, %bb.d ], [ %.val144, %bb.e ] ; 2 uses
  %.not.i153197 = icmp eq i32 %.val143.lcssa, %.val144.lcssa
  br i1 %.not.i153197, label %.thread170, label %.lr.ph202

.peel.next:                                       ; preds = %bb.d, %bb.e
  %i.aa = load i32, ptr %i.c, align 8
  %.not131 = icmp eq i32 %i.aa, 0
  br i1 %.not131, label %.thread267, label %test_tsk_thread_flag.exit.i146

test_tsk_thread_flag.exit.i146:                   ; preds = %.peel.next
  %i.ab = load volatile i64, ptr %10, align 8
  %i.ac = and i64 %i.ab, 4
  %.not.i147 = icmp eq i64 %i.ac, 0
  br i1 %.not.i147, label %signal_pending.exit152, label %.thread267, !prof !26

signal_pending.exit152:                           ; preds = %test_tsk_thread_flag.exit.i146
  %i.ad = load volatile i64, ptr %10, align 8
  %i.ae = and i64 %i.ad, 2
  %.not134 = icmp eq i64 %i.ae, 0
  br i1 %.not134, label %bb.e, label %.thread267

bb.e:                                             ; preds = %signal_pending.exit152
  call void @pipe_wait_readable(ptr noundef %0) #11
  %.val143 = load i32, ptr %i.a, align 8          ; 2 uses
  %.val144 = load i32, ptr %i.b, align 4          ; 2 uses
  %.not.i.i = icmp eq i32 %.val143, %.val144
  br i1 %.not.i.i, label %.peel.next, label %.preheader, !llvm.loop !63

.lr.ph202:                                        ; preds = %.preheader, %bb.h
  %.2201 = phi i64 [ %.3, %bb.h ], [ -512, %.preheader ]
  %.0103200 = phi i64 [ %.1104, %bb.h ], [ %.089216, %.preheader ] ; 4 uses
  %.0106199 = phi i32 [ %.1107, %bb.h ], [ 0, %.preheader ] ; 4 uses
  %.0109198 = phi i32 [ %.1110, %bb.h ], [ %.val144.lcssa, %.preheader ] ; 4 uses
  %.val141 = load i32, ptr %i.h, align 4
  %.val142 = load ptr, ptr %i.i, align 8
  %i.af = add i32 %.val141, -1
  %i.ag = and i32 %i.af, %.0109198
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr [40 x i8], ptr %.val142, i64 %i.ah ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 12
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %.not121 = icmp eq i32 %i.ak, 0
  br i1 %.not121, label %bb.h, label %bb.f, !llvm.loop !64

bb.f:                                             ; preds = %.lr.ph202
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i154 = icmp eq ptr %i.an, null
  br i1 %.not.i154, label %pipe_buf_confirm.exit.thread, label %pipe_buf_confirm.exit

pipe_buf_confirm.exit:                            ; preds = %bb.f
  %i.ao = call i32 %i.an(ptr noundef %0, ptr noundef %i.ai) #11, !inline_history !1 ; 3 uses
  %.not122 = icmp eq i32 %i.ao, 0
  br i1 %.not122, label %pipe_buf_confirm.exit.thread, label %bb.g, !prof !27

bb.g:                                             ; preds = %pipe_buf_confirm.exit
  %i.ap = icmp eq i32 %i.ao, -61
  %narrow = select i1 %i.ap, i32 0, i32 %i.ao
  %spec.store.select = sext i32 %narrow to i64
  br label %.thread

pipe_buf_confirm.exit.thread:                     ; preds = %bb.f, %pipe_buf_confirm.exit
  %i.aq = zext i32 %i.ak to i64
  %i.ar = call i64 @llvm.umin.i64(i64 %.0103200, i64 %i.aq) ; 2 uses
  %i.as = add i32 %.0106199, 1                    ; 3 uses
  %i.at = zext i32 %.0106199 to i64
  %i.au = getelementptr [16 x i8], ptr %6, i64 %i.at ; 3 uses
  %i.av = load ptr, ptr %i.ai, align 8
  %i.aw = trunc nuw i64 %i.ar to i32
  %i.ax = getelementptr i8, ptr %i.ai, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  store ptr %i.av, ptr %i.au, align 16
  %i.az = getelementptr i8, ptr %i.au, i64 8
  store i32 %i.aw, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.au, i64 12
  store i32 %i.ay, ptr %i.ba, align 4
  %i.bb = sub nuw i64 %.0103200, %i.ar            ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = icmp ugt i32 %i.as, 15
  %or.cond = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph202, %pipe_buf_confirm.exit.thread
  %.1107 = phi i32 [ %i.as, %pipe_buf_confirm.exit.thread ], [ %.0106199, %.lr.ph202 ] ; 2 uses
  %.1104 = phi i64 [ %i.bb, %pipe_buf_confirm.exit.thread ], [ %.0103200, %.lr.ph202 ] ; 2 uses
  %.3 = phi i64 [ 0, %pipe_buf_confirm.exit.thread ], [ %.2201, %.lr.ph202 ] ; 2 uses
  %.1110 = add i32 %.0109198, 1                   ; 2 uses
  %.not.i153 = icmp eq i32 %.val143.lcssa, %.1110
  br i1 %.not.i153, label %.thread, label %.lr.ph202

.thread:                                          ; preds = %bb.h, %pipe_buf_confirm.exit.thread, %bb.g
  %.0109189 = phi i32 [ %.0109198, %bb.g ], [ %.0109198, %pipe_buf_confirm.exit.thread ], [ %.val143.lcssa, %bb.h ]
  %.2108 = phi i32 [ %.0106199, %bb.g ], [ %i.as, %pipe_buf_confirm.exit.thread ], [ %.1107, %bb.h ] ; 2 uses
  %.2105 = phi i64 [ %.0103200, %bb.g ], [ %i.bb, %pipe_buf_confirm.exit.thread ], [ %.1104, %bb.h ] ; 2 uses
  %.4 = phi i64 [ %spec.store.select, %bb.g ], [ 0, %pipe_buf_confirm.exit.thread ], [ %.3, %bb.h ]
  %.not123 = icmp eq i32 %.2108, 0
  br i1 %.not123, label %.thread170, label %bb.i

bb.i:                                             ; preds = %.thread
  store i32 %spec.select, ptr %i.j, align 4
  %.not125 = icmp eq i64 %.2105, 0
  br i1 %.not125, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.a, align 8
  %.not126 = icmp eq i32 %i.be, %.0109189
  br i1 %.not126, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 134250496, ptr %i.j, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bf = phi i32 [ 134250496, %bb.k ], [ %spec.select, %bb.j ], [ %spec.select, %bb.i ]
  %i.bg = load i32, ptr %i.l, align 8
  %i.bh = and i32 %i.bg, 2048
  %.not127 = icmp eq i32 %i.bh, 0
  br i1 %.not127, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = or disjoint i32 %i.bf, 64
  store i32 %i.bi, ptr %i.j, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = zext i32 %.2108 to i64
  %i.bk = sub i64 %.089216, %.2105
  call void @iov_iter_bvec(ptr noundef nonnull %i.m, i32 noundef 1, ptr noundef nonnull %6, i64 noundef %i.bj, i64 noundef %i.bk) #11
  %i.bl = call i32 @sock_sendmsg(ptr noundef %8, ptr noundef nonnull %7) #11 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 4 uses
  %i.bn = icmp slt i32 %i.bl, 1
  br i1 %i.bn, label %.thread170, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.b, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.r
  %.5212 = phi i64 [ %i.bm, %bb.o ], [ %i.cc, %bb.r ] ; 2 uses
  %.3112211 = phi i32 [ %i.bo, %bb.o ], [ %.4113, %bb.r ] ; 3 uses
  %.val = load i32, ptr %i.h, align 4
  %.val140 = load ptr, ptr %i.i, align 8
  %i.bp = add i32 %.val, -1
  %i.bq = and i32 %i.bp, %.3112211
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr [40 x i8], ptr %.val140, i64 %i.br ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 12     ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4            ; 3 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = call i64 @llvm.umin.i64(i64 %.5212, i64 %i.bv) ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bs, i64 8      ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = trunc nuw i64 %i.bw to i32              ; 3 uses
  %i.ca = add i32 %i.by, %i.bz
  store i32 %i.ca, ptr %i.bx, align 8
  %i.cb = sub nuw i32 %i.bu, %i.bz
  store i32 %i.cb, ptr %i.bt, align 4
  %i.cc = sub nuw nsw i64 %.5212, %i.bw           ; 3 uses
  %.not130 = icmp eq i32 %i.bu, %i.bz
  br i1 %.not130, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  store ptr null, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef %0, ptr noundef %i.bs) #11, !inline_history !0
  %i.ch = add i32 %.3112211, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4113 = phi i32 [ %.3112211, %bb.p ], [ %i.ch, %bb.q ] ; 3 uses
  %i.ci = icmp sgt i64 %i.cc, 0
  br i1 %i.ci, label %bb.p, label %bb.s, !llvm.loop !65

bb.s:                                             ; preds = %bb.r
  %i.cj = add i64 %.092215, %i.bm                 ; 2 uses
  %i.ck = sub i64 %.089216, %i.bm                 ; 2 uses
  %i.cl = load i32, ptr %i.b, align 4
  %.not128 = icmp eq i32 %.4113, %i.cl
  br i1 %.not128, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %.4113, ptr %i.b, align 4
  %i.cm = load i32, ptr %i.n, align 4
  %.not129 = icmp eq i32 %i.cm, 0
  %spec.select136 = select i1 %.not129, i8 %.196.lcssa, i8 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.499 = phi i8 [ %spec.select136, %bb.t ], [ %.196.lcssa, %bb.s ] ; 2 uses
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %.thread170, label %test_tsk_thread_flag.exit.i

.thread267:                                       ; preds = %signal_pending.exit152, %test_tsk_thread_flag.exit.i146, %.peel.next, %5
  %.7.ph = phi i64 [ 0, %5 ], [ -512, %signal_pending.exit152 ], [ -512, %test_tsk_thread_flag.exit.i146 ], [ 0, %.peel.next ]
  call void @pipe_unlock(ptr noundef %0) #11
  br label %bb.y

.thread170.split.loop.exit300:                    ; preds = %.lr.ph.a
  %.mux.peel.le = select i1 %or.cond137.not234.peel, i64 0, i64 -11
  br label %.thread170

.thread170:                                       ; preds = %signal_pending.exit152.peel, %test_tsk_thread_flag.exit.i146.peel, %test_tsk_thread_flag.exit.i, %bb.n, %.thread, %signal_pending.exit, %bb.u, %.preheader, %.thread170.split.loop.exit300
  %.5100 = phi i8 [ %.095214, %.thread170.split.loop.exit300 ], [ %.095214, %test_tsk_thread_flag.exit.i ], [ %.196.lcssa, %.preheader ], [ %.196.lcssa, %.thread ], [ %.095214, %signal_pending.exit ], [ %.499, %bb.u ], [ %.196.lcssa, %bb.n ], [ %.095214, %test_tsk_thread_flag.exit.i146.peel ], [ %.095214, %signal_pending.exit152.peel ]
  %.294 = phi i64 [ %.092215, %.thread170.split.loop.exit300 ], [ %.092215, %test_tsk_thread_flag.exit.i ], [ %.092215, %.preheader ], [ %.092215, %.thread ], [ %.092215, %signal_pending.exit ], [ %i.cj, %bb.u ], [ %.092215, %bb.n ], [ 0, %test_tsk_thread_flag.exit.i146.peel ], [ 0, %signal_pending.exit152.peel ]
  %.7 = phi i64 [ %.mux.peel.le, %.thread170.split.loop.exit300 ], [ -512, %test_tsk_thread_flag.exit.i ], [ -512, %.preheader ], [ %.4, %.thread ], [ -512, %signal_pending.exit ], [ %i.cc, %bb.u ], [ %i.bm, %bb.n ], [ -512, %test_tsk_thread_flag.exit.i146.peel ], [ -512, %signal_pending.exit152.peel ]
  %.294.fr = freeze i64 %.294                     ; 2 uses
  call void @pipe_unlock(ptr noundef %0) #11
  %i.cn = trunc nuw i8 %.5100 to i1
  br i1 %i.cn, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.thread170
  call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !25
  %11 = getelementptr i8, ptr %0, i64 56          ; 2 uses
  %i.co = load volatile ptr, ptr %11, align 8
  %.not3.i156 = icmp eq ptr %i.co, %11
  br i1 %.not3.i156, label %wakeup_pipe_writers.exit157, label %bb.w

bb.w:                                             ; preds = %bb.v
  %12 = getelementptr i8, ptr %0, i64 48
  %i.cp = call i32 @__wake_up(ptr noundef %12, i32 noundef 1, i32 noundef 1, ptr noundef null) #11 ; 0 uses
  br label %wakeup_pipe_writers.exit157

wakeup_pipe_writers.exit157:                      ; preds = %bb.v, %bb.w
  %13 = getelementptr i8, ptr %0, i64 144
  call void @kill_fasync(ptr noundef %13, i32 noundef 29, i32 noundef 2) #11
  br label %bb.x

bb.x:                                             ; preds = %wakeup_pipe_writers.exit157, %.thread170
  %.not135 = icmp eq i64 %.294.fr, 0
  %spec.select312 = select i1 %.not135, i64 %.7, i64 %.294.fr
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread267
  %i.cq = phi i64 [ %spec.select312, %bb.x ], [ %.7.ph, %.thread267 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i64 %i.cq
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @sock_from_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pipe_wait_readable(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sock_sendmsg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @vfs_splice_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @rw_verify_area(i32 noundef 0, ptr noundef %0, ptr noundef %1, i64 noundef %3) #11 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.a to i64
  br label %do_splice_read.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %do_splice_read.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  %.not30.i = icmp eq i64 %3, 0
  br i1 %.not30.i, label %do_splice_read.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %2, i64 80
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %2, i64 72
  %.val.i = load i32, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %2, i64 76
  %.val33.i = load i32, ptr %i.j, align 4
  %.neg.i = sub i32 %i.h, %.val.i
  %i.k = add i32 %.neg.i, %.val33.i
  %i.l = shl i32 %i.k, 12
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.m) ; 2 uses
  %i.o = icmp samesign ugt i64 %i.n, 2147479552
  br i1 %i.o, label %bb.f, label %bb.g, !prof !19

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.027.i = phi i64 [ 2147479552, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 184
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not31.i = icmp eq ptr %i.s, null
  br i1 %.not31.i, label %do_splice_read.exit, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %0, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 16384
  %.not32.i = icmp eq i32 %i.v, 0
  br i1 %.not32.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i64 @copy_splice_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.027.i, i32 poison) #15
  br label %do_splice_read.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call i64 %i.s(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.027.i, i32 noundef %4) #11, !inline_history !2
  br label %do_splice_read.exit

do_splice_read.exit:                              ; preds = %bb.j, %bb.i, %bb.g, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ -9, %bb.c ], [ 0, %bb.d ], [ %i.w, %bb.i ], [ %i.x, %bb.j ], [ -22, %bb.g ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rw_verify_area(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @splice_direct_to_actor(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %file_accessed.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !20
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 2792     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not83 = icmp eq ptr %i.h, null
  br i1 %.not83, label %bb.c, label %bb.e, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @alloc_pipe_info() #11     ; 4 uses
  %.not84 = icmp eq ptr %i.i, null
  br i1 %.not84, label %file_accessed.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 92
  store i32 1, ptr %i.j, align 4
  store ptr %i.i, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.071 = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.b ] ; 9 uses
  %i.k = load i64, ptr %1, align 8                ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 12         ; 4 uses
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = and i32 %i.m, -7
  %i.o = and i32 %i.m, 4                          ; 2 uses
  %i.p = or disjoint i32 %i.n, 4
  store i32 %i.p, ptr %i.l, align 4
  %i.q = getelementptr i8, ptr %.071, i64 72      ; 3 uses
  %.071.val = load i32, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %.071, i64 76      ; 3 uses
  %.071.val91 = load i32, ptr %i.r, align 4
  %.not.i.i = icmp eq i32 %.071.val, %.071.val91
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "712: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 712b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 712) #10, !srcloc !68
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str, i32 1078, i32 2307, i64 16) #10, !srcloc !69
  tail call void asm sideeffect "713: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 713b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 713) #10, !srcloc !70
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not85121 = icmp eq i64 %i.k, 0
  br i1 %.not85121, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.s = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.t = getelementptr i8, ptr %.071, i64 80
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = getelementptr i8, ptr %0, i64 40
  %i.w = icmp ne i32 %i.o, 0
  %.pre = load i64, ptr %i.s, align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.t
  %i.x = phi i64 [ %.pre, %.lr.ph ], [ %i.av, %bb.t ] ; 3 uses
  %.074123 = phi i64 [ %i.k, %.lr.ph ], [ %i.ay, %bb.t ] ; 3 uses
  %.075122 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.t ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %i.x, ptr %i.a, align 8
  %i.y = load i32, ptr %i.b, align 4
  %i.z = and i32 %i.y, 1
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %do_splice_read.exit.thread.thread, label %bb.i, !prof !19

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.t, align 8
  %.val.i = load i32, ptr %i.q, align 8
  %.val33.i = load i32, ptr %i.r, align 4
  %.neg.i = sub i32 %i.aa, %.val.i
  %i.ab = add i32 %.neg.i, %.val33.i
  %i.ac = shl i32 %i.ab, 12
  %i.ad = zext i32 %i.ac to i64
  %i.ae = call i64 @llvm.umin.i64(i64 %.074123, i64 %i.ad) ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ae, 2147479552
  br i1 %i.af, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.027.i = phi i64 [ 2147479552, %bb.j ], [ %i.ae, %bb.i ] ; 2 uses
  %i.ag = load ptr, ptr %i.u, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not31.i = icmp eq ptr %i.ai, null
  br i1 %.not31.i, label %do_splice_read.exit.thread.thread, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %i.v, align 8
  %i.ak = and i32 %i.aj, 16384
  %.not32.i = icmp eq i32 %i.ak, 0
  br i1 %.not32.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = call i64 @copy_splice_read(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %.071, i64 noundef %.027.i, i32 poison) #15
  br label %do_splice_read.exit

bb.n:                                             ; preds = %bb.l
  %i.am = call i64 %i.ai(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %.071, i64 noundef %.027.i, i32 noundef %i.m) #11, !inline_history !2
  br label %do_splice_read.exit

do_splice_read.exit:                              ; preds = %bb.m, %bb.n
  %.0.i = phi i64 [ %i.al, %bb.m ], [ %i.am, %bb.n ] ; 6 uses
  %i.an = icmp slt i64 %.0.i, 1
  br i1 %i.an, label %do_splice_read.exit.thread, label %bb.o, !prof !71
end_hunk_0
