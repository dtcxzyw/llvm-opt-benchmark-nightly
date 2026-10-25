Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/process_vm_access?download=true
inline.NumInlined: 31
inline.NumDeleted: 23
begin_hunk_0_@__ia32_sys_process_vm_readv:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4294967295
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4294967295
  %i.i = getelementptr i8, ptr %0, i64 104
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 4294967295
  %i.r = trunc i64 %i.b to i32
  %i.s = inttoptr i64 %i.e to ptr
  %i.t = inttoptr i64 %i.k to ptr
  %i.u = tail call fastcc i64 @process_vm_rw(i32 noundef %i.r, ptr noundef %i.s, i64 noundef %i.h, ptr noundef %i.t, i64 noundef %i.n, i64 noundef %i.q, i32 noundef 0) #6, !srcloc !10
  ret i64 %i.u
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__x64_sys_process_vm_writev(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
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
  %i.k = getelementptr i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.b to i32
  %i.n = inttoptr i64 %i.d to ptr
  %i.o = inttoptr i64 %i.h to ptr
  %i.p = tail call fastcc i64 @process_vm_rw(i32 noundef %i.m, ptr noundef %i.n, i64 noundef %i.f, ptr noundef %i.o, i64 noundef %i.j, i64 noundef %i.l, i32 noundef 1) #6, !srcloc !11
  ret i64 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__ia32_sys_process_vm_writev(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4294967295
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4294967295
  %i.i = getelementptr i8, ptr %0, i64 104
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 4294967295
  %i.r = trunc i64 %i.b to i32
  %i.s = inttoptr i64 %i.e to ptr
  %i.t = inttoptr i64 %i.k to ptr
  %i.u = tail call fastcc i64 @process_vm_rw(i32 noundef %i.r, ptr noundef %i.s, i64 noundef %i.h, ptr noundef %i.t, i64 noundef %i.n, i64 noundef %i.q, i32 noundef 1) #6, !srcloc !11
  ret i64 %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @process_vm_rw(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [16 x ptr], align 16              ; 5 uses
  %7 = alloca [8 x %struct.iovec], align 16       ; 4 uses
  %8 = alloca [8 x %struct.iovec], align 16       ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %struct.iov_iter, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr %7, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %7, i8 0, i64 128, i1 false), !annotation !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %8, i8 0, i64 128, i1 false), !annotation !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false), !annotation !17
  %i.d = trunc i64 %2 to i32
  %i.e = call i64 @import_iovec(i32 noundef %6, ptr noundef %1, i32 noundef %i.d, i32 noundef 8, ptr noundef nonnull %i.c, ptr noundef nonnull %9) #8 ; 3 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.al, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 10 uses
  %.val = load i64, ptr %i.g, align 8
  %.not23 = icmp eq i64 %.val, 0
  br i1 %.not23, label %bb.ak, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #9, !srcloc !18
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 2
  %.not.i.i = icmp ne i32 %i.l, 0
  %i.m = call ptr @iovec_from_user(ptr noundef %3, i64 noundef %4, i64 noundef 8, ptr noundef nonnull %8, i1 noundef zeroext %.not.i.i) #8 ; 6 uses
  %i.n = icmp ugt ptr %i.m, inttoptr (i64 -4096 to ptr)
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %i.m to i64
  br label %bb.ak

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.val84.i = load i64, ptr %i.g, align 8         ; 2 uses
  %.not107.i = icmp eq i64 %4, 0
  br i1 %.not107.i, label %process_vm_rw_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.06791.i = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.07090.i = phi i64 [ %.171.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.p = getelementptr [16 x i8], ptr %i.m, i64 %.06791.i ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = add nsw i64 %i.r, -1
  %i.w = add i64 %i.v, %i.u
  %i.x = lshr i64 %i.w, 12
  %i.y = lshr i64 %i.u, 12
  %reass.sub = sub nsw i64 %i.x, %i.y
  %i.z = add nsw i64 %reass.sub, 1
  %i.aa = call i64 @llvm.umax.i64(i64 %.07090.i, i64 %i.z)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.171.i = phi i64 [ %i.aa, %bb.g ], [ %.07090.i, %.lr.ph.i ] ; 4 uses
  %i.ab = add nuw i64 %.06791.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %bb.h
  %i.ac = icmp eq i64 %.171.i, 0
  br i1 %i.ac, label %process_vm_rw_core.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ad = icmp ugt i64 %.171.i, 16
  br i1 %i.ad, label %_kmalloc_noprof.exit.i, label %bb.j

_kmalloc_noprof.exit.i:                           ; preds = %bb.i
  %i.ae = shl nsw i64 %.171.i, 3
  %i.af = call i64 @llvm.umin.i64(i64 %i.ae, i64 8192)
  %i.ag = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -36028797018963952, 36028797018963969) %i.af, i32 noundef 3264) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %process_vm_rw_core.exit, label %bb.j

bb.j:                                             ; preds = %_kmalloc_noprof.exit.i, %bb.i
  %.066.i = phi ptr [ %i.ag, %_kmalloc_noprof.exit.i ], [ %i.b, %bb.i ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false), !annotation !17
  %i.ah = call ptr @find_get_task_by_vpid(i32 noundef %0) #8 ; 4 uses
  %.not77.i = icmp eq ptr %i.ah, null
  br i1 %.not77.i, label %put_task_struct.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @mm_access(ptr noundef nonnull %i.ah, i32 noundef 18) #8 ; 9 uses
  %i.aj = icmp ugt ptr %i.ai, inttoptr (i64 -4096 to ptr)
  br i1 %i.aj, label %bb.l, label %.lr.ph103.i

.lr.ph103.i:                                      ; preds = %bb.k
  %i.ak = icmp ne i32 %6, 0                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 464    ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = icmp eq ptr %i.ai, inttoptr (i64 -13 to ptr)
  %spec.store.select.i = select i1 %i.an, i64 -1, i64 %i.am
  br label %bb.ae

bb.m:                                             ; preds = %process_vm_rw_single_vec.exit.i, %.lr.ph103.i
  %.1102.i = phi i64 [ 0, %.lr.ph103.i ], [ %i.cg, %process_vm_rw_single_vec.exit.i ] ; 2 uses
  %.068101.i = phi i64 [ 0, %.lr.ph103.i ], [ %10, %process_vm_rw_single_vec.exit.i ] ; 2 uses
  %.val83.i = load i64, ptr %i.g, align 8         ; 2 uses
  %.not78.i = icmp ne i64 %.val83.i, 0
  %.not79.i = icmp eq i64 %.068101.i, 0
  %or.cond.i = and i1 %.not79.i, %.not78.i
  br i1 %or.cond.i, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr [16 x i8], ptr %i.m, i64 %.1102.i ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64               ; 4 uses
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %process_vm_rw_single_vec.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = add i64 %i.aq, -1
  %i.av = add i64 %i.au, %i.as
  %i.aw = lshr i64 %i.av, 12
  %i.ax = lshr i64 %i.aq, 12
  %reass.sub.i.i = sub nsw i64 %i.aw, %i.ax
  %i.ay = add nsw i64 %reass.sub.i.i, 1           ; 2 uses
  %.not11.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not11.i.i, label %process_vm_rw_single_vec.exit.i, label %.lr.ph98.preheader.i

.lr.ph98.preheader.i:                             ; preds = %bb.o
  %i.az = and i64 %i.aq, 4095
  %i.ba = and i64 %i.aq, -4096
  br label %.lr.ph98.i

bb.p:                                             ; preds = %process_vm_rw_pages.exit.i.i
  %i.bb = add i64 %i.bj, %.0517.i95.i
  %i.bc = sub nuw i64 %.0498.i94.i, %spec.select65.i.i
  %.val.i.i = load i64, ptr %i.g, align 8
  %.not.i85.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i85.i, label %process_vm_rw_single_vec.exit.i, label %.lr.ph98.i, !llvm.loop !13

.lr.ph98.i:                                       ; preds = %bb.p, %.lr.ph98.preheader.i
  %.0594.i97.i = phi i64 [ 0, %bb.p ], [ %i.az, %.lr.ph98.preheader.i ] ; 5 uses
  %.0575.i96.i = phi i64 [ %i.ce, %bb.p ], [ %i.ay, %.lr.ph98.preheader.i ] ; 2 uses
  %.0517.i95.i = phi i64 [ %i.bb, %bb.p ], [ %i.ba, %.lr.ph98.preheader.i ] ; 2 uses
  %.0498.i94.i = phi i64 [ %i.bc, %bb.p ], [ %i.as, %.lr.ph98.preheader.i ] ; 2 uses
  %i.bd = call i64 @llvm.umin.i64(i64 %.0575.i96.i, i64 1024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 1, ptr %i.a, align 4
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i.i [label %bb.q], !srcloc !20

bb.q:                                             ; preds = %.lr.ph98.i
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %i.ai, i1 noundef zeroext false) #8
  br label %__mmap_lock_trace_start_locking.exit.i.i.i

__mmap_lock_trace_start_locking.exit.i.i.i:       ; preds = %bb.q, %.lr.ph98.i
  call void @down_read(ptr noundef %i.al) #8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #7
          to label %mmap_read_lock.exit.i.i [label %bb.r], !srcloc !20

bb.r:                                             ; preds = %__mmap_lock_trace_start_locking.exit.i.i.i
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %i.ai, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %mmap_read_lock.exit.i.i

mmap_read_lock.exit.i.i:                          ; preds = %bb.r, %__mmap_lock_trace_start_locking.exit.i.i.i
  %i.be = call i64 @pin_user_pages_remote(ptr noundef %i.ai, i64 noundef %.0517.i95.i, i64 noundef %i.bd, i32 noundef range(i32 0, 2) %6, ptr noundef nonnull %.066.i, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  %i.bg = load i32, ptr %i.a, align 4
  %.not64.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not64.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %mmap_read_lock.exit.i.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #7
          to label %mmap_read_unlock.exit.i.i [label %bb.t], !srcloc !20

bb.t:                                             ; preds = %bb.s
  call void @__mmap_lock_do_trace_released(ptr noundef %i.ai, i1 noundef zeroext false) #8
  br label %mmap_read_unlock.exit.i.i

mmap_read_unlock.exit.i.i:                        ; preds = %bb.t, %bb.s
  call void @up_read(ptr noundef %i.al) #8
  br label %bb.u

bb.u:                                             ; preds = %mmap_read_unlock.exit.i.i, %mmap_read_lock.exit.i.i
  %i.bh = icmp sgt i32 %i.bf, 0
  br i1 %i.bh, label %bb.v, label %.critedge67.i.i

bb.v:                                             ; preds = %bb.u
  %i.bi = and i64 %i.be, 2147483647               ; 3 uses
  %i.bj = shl nuw nsw i64 %i.bi, 12               ; 2 uses
  %i.bk = sub nsw i64 %i.bj, %.0594.i97.i
  %spec.select65.i.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 %.0498.i94.i) ; 6 uses
  %.not36.i.i.i = icmp eq i64 %spec.select65.i.i, 0
  br i1 %.not36.i.i.i, label %process_vm_rw_pages.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v
  %.val33.us.peel.i.i.i = load i64, ptr %i.g, align 8
  %.not30.us.peel.i.i.i = icmp eq i64 %.val33.us.peel.i.i.i, 0 ; 2 uses
  br i1 %i.ak, label %.lr.ph.split.preheader.i.i.i, label %.lr.ph.split.us.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  br i1 %.not30.us.peel.i.i.i, label %process_vm_rw_pages.exit.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.preheader.i.i.i
  %i.bl = load ptr, ptr %.066.i, align 8
  %i.bm = sub nuw nsw i64 4096, %.0594.i97.i
  %spec.select.peel.i.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 %spec.select65.i.i) ; 2 uses
  %i.bn = call i64 @copy_page_from_iter(ptr noundef %i.bl, i64 noundef %.0594.i97.i, i64 noundef %spec.select.peel.i.i.i, ptr noundef nonnull %9) #8 ; 2 uses
  %i.bo = icmp uge i64 %i.bn, %spec.select.peel.i.i.i
  %.val.peel.i.i.i = load i64, ptr %i.g, align 8  ; 2 uses
  %.not32.peel.i.i.i = icmp eq i64 %.val.peel.i.i.i, 0
  %or.cond = select i1 %i.bo, i1 true, i1 %.not32.peel.i.i.i
  br i1 %or.cond, label %bb.x, label %process_vm_rw_pages.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.bp = sub i64 %spec.select65.i.i, %i.bn       ; 2 uses
  %.not.peel.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.peel.i.i.i, label %process_vm_rw_pages.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.preheader.i.i.i:                  ; preds = %.lr.ph.i.i.i
  br i1 %.not30.us.peel.i.i.i, label %process_vm_rw_pages.exit.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.us.preheader.i.i.i
  %i.bq = load ptr, ptr %.066.i, align 8
  %i.br = sub nuw nsw i64 4096, %.0594.i97.i
  %spec.select.us.peel.i.i.i = call i64 @llvm.umin.i64(i64 %i.br, i64 %spec.select65.i.i) ; 2 uses
  %i.bs = call i64 @copy_page_to_iter(ptr noundef %i.bq, i64 noundef %.0594.i97.i, i64 noundef %spec.select.us.peel.i.i.i, ptr noundef nonnull %9) #8 ; 2 uses
  %i.bt = icmp uge i64 %i.bs, %spec.select.us.peel.i.i.i
  %.val.us.peel.i.i.i = load i64, ptr %i.g, align 8 ; 2 uses
  %.not32.us.peel.i.i.i = icmp eq i64 %.val.us.peel.i.i.i, 0
  %or.cond25 = select i1 %i.bt, i1 true, i1 %.not32.us.peel.i.i.i
  br i1 %or.cond25, label %bb.z, label %process_vm_rw_pages.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.bu = sub i64 %spec.select65.i.i, %i.bs       ; 2 uses
  %.not.us.peel.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.us.peel.i.i.i, label %process_vm_rw_pages.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.z, %bb.ab
  %.val33.us.i.i.i = phi i64 [ %.val.us.i.i.i, %bb.ab ], [ %.val.us.peel.i.i.i, %bb.z ]
  %.02539.us.pn.i.i.i = phi ptr [ %.02539.us.i.i.i, %bb.ab ], [ %.066.i, %bb.z ]
  %.02638.us.i.i.i = phi i64 [ %i.by, %bb.ab ], [ %i.bu, %bb.z ] ; 2 uses
  %.02539.us.i.i.i = getelementptr i8, ptr %.02539.us.pn.i.i.i, i64 8 ; 2 uses
  %.not30.us.i.i.i = icmp eq i64 %.val33.us.i.i.i, 0
  br i1 %.not30.us.i.i.i, label %process_vm_rw_pages.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.bv = load ptr, ptr %.02539.us.i.i.i, align 8
  %spec.select.us.i.i.i = call i64 @llvm.umin.i64(i64 %.02638.us.i.i.i, i64 4096) ; 2 uses
  %i.bw = call i64 @copy_page_to_iter(ptr noundef %i.bv, i64 noundef 0, i64 noundef %spec.select.us.i.i.i, ptr noundef nonnull %9) #8 ; 2 uses
  %i.bx = icmp uge i64 %i.bw, %spec.select.us.i.i.i
  %.val.us.i.i.i = load i64, ptr %i.g, align 8    ; 2 uses
  %.not32.us.i.i.i = icmp eq i64 %.val.us.i.i.i, 0
  %or.cond26 = select i1 %i.bx, i1 true, i1 %.not32.us.i.i.i
  br i1 %or.cond26, label %bb.ab, label %process_vm_rw_pages.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.by = sub i64 %.02638.us.i.i.i, %i.bw         ; 2 uses
  %.not.us.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.us.i.i.i, label %process_vm_rw_pages.exit.i.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !14

.lr.ph.split.i.i.i:                               ; preds = %bb.x, %bb.ad
  %.val33.i.i.i = phi i64 [ %.val.i.i.i, %bb.ad ], [ %.val.peel.i.i.i, %bb.x ]
  %.02539.pn.i.i.i = phi ptr [ %.02539.i.i.i, %bb.ad ], [ %.066.i, %bb.x ]
  %.02638.i.i.i = phi i64 [ %i.cc, %bb.ad ], [ %i.bp, %bb.x ] ; 2 uses
  %.02539.i.i.i = getelementptr i8, ptr %.02539.pn.i.i.i, i64 8 ; 2 uses
  %.not30.i.i.i = icmp eq i64 %.val33.i.i.i, 0
  br i1 %.not30.i.i.i, label %process_vm_rw_pages.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.i.i.i
  %i.bz = load ptr, ptr %.02539.i.i.i, align 8
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %.02638.i.i.i, i64 4096) ; 2 uses
  %i.ca = call i64 @copy_page_from_iter(ptr noundef %i.bz, i64 noundef 0, i64 noundef %spec.select.i.i.i, ptr noundef nonnull %9) #8 ; 2 uses
  %i.cb = icmp uge i64 %i.ca, %spec.select.i.i.i
  %.val.i.i.i = load i64, ptr %i.g, align 8       ; 2 uses
  %.not32.i.i.i = icmp eq i64 %.val.i.i.i, 0
  %or.cond27 = select i1 %i.cb, i1 true, i1 %.not32.i.i.i
  br i1 %or.cond27, label %bb.ad, label %process_vm_rw_pages.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cc = sub i64 %.02638.i.i.i, %i.ca            ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i, label %process_vm_rw_pages.exit.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !15

process_vm_rw_pages.exit.i.i:                     ; preds = %bb.aa, %bb.ab, %.lr.ph.split.us.i.i.i, %bb.ac, %bb.ad, %.lr.ph.split.i.i.i, %bb.y, %bb.w, %bb.z, %.lr.ph.split.us.preheader.i.i.i, %bb.x, %.lr.ph.split.preheader.i.i.i, %bb.v
  %i.cd = phi i1 [ true, %bb.v ], [ false, %bb.w ], [ true, %.lr.ph.split.us.preheader.i.i.i ], [ false, %bb.y ], [ true, %bb.z ], [ true, %bb.x ], [ true, %bb.ad ], [ true, %.lr.ph.split.preheader.i.i.i ], [ false, %bb.ac ], [ true, %.lr.ph.split.i.i.i ], [ false, %bb.aa ], [ true, %.lr.ph.split.us.i.i.i ], [ true, %bb.ab ]
  %.2.i.i.i = phi i64 [ 0, %bb.v ], [ -14, %bb.w ], [ 0, %.lr.ph.split.us.preheader.i.i.i ], [ -14, %bb.y ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.ad ], [ 0, %.lr.ph.split.preheader.i.i.i ], [ -14, %bb.ac ], [ 0, %.lr.ph.split.i.i.i ], [ -14, %bb.aa ], [ 0, %.lr.ph.split.us.i.i.i ], [ 0, %bb.ab ] ; 2 uses
  %i.ce = sub i64 %.0575.i96.i, %i.bi             ; 2 uses
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %.066.i, i64 noundef %i.bi, i1 noundef zeroext %i.ak) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.cf = icmp ne i64 %i.ce, 0
  %or.cond.i86.i = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond.i86.i, label %bb.p, label %process_vm_rw_pages.exit.i.process_vm_rw_single_vec.exit.loopexit_crit_edge.i, !llvm.loop !13

.critedge67.i.i:                                  ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %process_vm_rw_single_vec.exit.i

process_vm_rw_pages.exit.i.process_vm_rw_single_vec.exit.loopexit_crit_edge.i: ; preds = %process_vm_rw_pages.exit.i.i
  br label %process_vm_rw_single_vec.exit.i, !llvm.loop !13

process_vm_rw_single_vec.exit.i:                  ; preds = %bb.p, %process_vm_rw_pages.exit.i.process_vm_rw_single_vec.exit.loopexit_crit_edge.i, %.critedge67.i.i, %bb.o, %bb.n
  %.2.i.i = phi i64 [ 0, %bb.n ], [ 4294967282, %.critedge67.i.i ], [ 0, %bb.o ], [ %.2.i.i.i, %process_vm_rw_pages.exit.i.process_vm_rw_single_vec.exit.loopexit_crit_edge.i ], [ %.2.i.i.i, %bb.p ]
  %sext.i = shl i64 %.2.i.i, 32
  %10 = ashr exact i64 %sext.i, 32                ; 2 uses
  %i.cg = add nuw i64 %.1102.i, 1                 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %i.cg, %4
  br i1 %exitcond113.not.i, label %process_vm_rw_single_vec.exit.i..critedge.i_crit_edge, label %bb.m, !llvm.loop !16

process_vm_rw_single_vec.exit.i..critedge.i_crit_edge: ; preds = %process_vm_rw_single_vec.exit.i
  %.val.i.pre = load i64, ptr %i.g, align 8
  br label %.critedge.i, !llvm.loop !16

.critedge.i:                                      ; preds = %bb.m, %process_vm_rw_single_vec.exit.i..critedge.i_crit_edge
  %.val.i = phi i64 [ %.val.i.pre, %process_vm_rw_single_vec.exit.i..critedge.i_crit_edge ], [ %.val83.i, %bb.m ] ; 2 uses
  %.068.lcssa.ph.i = phi i64 [ %10, %process_vm_rw_single_vec.exit.i..critedge.i_crit_edge ], [ %.068101.i, %bb.m ]
  %i.ch = sub i64 %.val84.i, %.val.i
  %.not80.i = icmp eq i64 %.val84.i, %.val.i
  %spec.select.i = select i1 %.not80.i, i64 %.068.lcssa.ph.i, i64 %i.ch
  call void @mmput(ptr noundef %i.ai) #8
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge.i, %bb.l
  %.2.i = phi i64 [ %spec.store.select.i, %bb.l ], [ %spec.select.i, %.critedge.i ] ; 3 uses
  %i.ci = getelementptr i8, ptr %i.ah, i64 40     ; 3 uses
  %i.cj = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ci, i32 -1, ptr elementtype(i32) %i.ci) #7, !srcloc !22 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = icmp slt i32 %i.cj, 1
  br i1 %i.cl, label %bb.ag, label %put_task_struct.exit.i, !prof !23

bb.ag:                                            ; preds = %bb.af
  call void @refcount_warn_saturate(ptr noundef %i.ci, i32 noundef 3) #8
  br label %put_task_struct.exit.i

bb.ah:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !24
  %i.cm = getelementptr i8, ptr %i.ah, i64 2880
  call void @call_rcu(ptr noundef %i.cm, ptr noundef @__put_task_struct_rcu_cb) #8
  br label %put_task_struct.exit.i

put_task_struct.exit.i:                           ; preds = %bb.ah, %bb.ag, %bb.af, %bb.j
  %.3.i = phi i64 [ -3, %bb.j ], [ %.2.i, %bb.af ], [ %.2.i, %bb.ag ], [ %.2.i, %bb.ah ] ; 2 uses
  %.not81.i = icmp eq ptr %.066.i, %i.b
  br i1 %.not81.i, label %process_vm_rw_core.exit, label %bb.ai

bb.ai:                                            ; preds = %put_task_struct.exit.i
  call void @kfree(ptr noundef nonnull %.066.i) #8
  br label %process_vm_rw_core.exit

process_vm_rw_core.exit:                          ; preds = %bb.f, %._crit_edge.i, %_kmalloc_noprof.exit.i, %put_task_struct.exit.i, %bb.ai
  %.0.i = phi i64 [ 0, %._crit_edge.i ], [ -12, %_kmalloc_noprof.exit.i ], [ %.3.i, %bb.ai ], [ %.3.i, %put_task_struct.exit.i ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not24 = icmp eq ptr %i.m, %8
  br i1 %.not24, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %process_vm_rw_core.exit
  call void @kfree(ptr noundef %i.m) #8
  br label %bb.ak

bb.ak:                                            ; preds = %process_vm_rw_core.exit, %bb.aj, %bb.c, %bb.e
  %.0 = phi i64 [ %i.o, %bb.e ], [ %.0.i, %bb.aj ], [ %.0.i, %process_vm_rw_core.exit ], [ %i.e, %bb.c ]
  %i.cn = load ptr, ptr %i.c, align 8
  call void @kfree(ptr noundef %i.cn) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.b, %bb.a, %bb.ak
  %.019 = phi i64 [ %.0, %bb.ak ], [ -22, %bb.a ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  ret i64 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @iovec_from_user(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mm_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @pin_user_pages_remote(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_page_from_iter(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_page_to_iter(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__put_task_struct_rcu_cb(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noredzone "no-builtin-wcslen" }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 8132}
!11 = !{i64 8398}
!12 = distinct !{!12, !19}
!13 = distinct !{!13, !19}
!14 = distinct !{!14, !21}
!15 = distinct !{!15, !21}
!16 = distinct !{!16, !19}
!17 = !{!"auto-init"}
!18 = !{i64 2148203241}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{i64 2148642373, i64 2148642413, i64 2148642530, i64 2148642551, i64 2148642594, i64 2148642609, i64 2148642642, i64 2148642676, i64 2148642700}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = !{i64 2148831257, i64 2148831296, i64 2148831317, i64 2148831354, i64 2148831377, i64 2148831386}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i64 2150717862}
end_hunk_0
