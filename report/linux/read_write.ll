Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/read_write?download=true
inline.NumInlined: 308
inline.NumDeleted: 120
begin_hunk_0_@fsnotify_modify:bb.a
  %i.s = and i32 %i.r, 8192
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.i.i.i = phi i32 [ 1073741826, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %i.t = getelementptr i8, ptr %i.g, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.g, %i.u
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call i32 @__fsnotify_parent(ptr noundef %i.g, i32 noundef %.015.i.i.i, ptr noundef %i.e, i32 noundef 2) #15 ; 0 uses
  br label %fsnotify_file.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.1.i.i.i = phi i32 [ %.015.i.i.i, %bb.e ], [ 1073741826, %bb.d ]
  %i.x = tail call i32 @fsnotify(i32 noundef %.1.i.i.i, ptr noundef %i.e, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %.val.i.i.i, i32 noundef 0) #15 ; 0 uses
  br label %fsnotify_file.exit

fsnotify_file.exit:                               ; preds = %bb.a, %bb.b, %fsnotify_sb_has_watchers.exit.i.i.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__kernel_write(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.kvec, align 8               ; 5 uses
  %5 = alloca %struct.iov_iter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call i64 @llvm.umin.i64(i64 %2, i64 2147479552) ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !28
  call void @iov_iter_kvec(ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %4, i64 noundef 1, i64 noundef %i.b) #15
  %i.c = call i64 @__kernel_write_iter(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i64 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @kernel_write(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.kvec, align 8               ; 5 uses
  %5 = alloca %struct.iov_iter, align 8           ; 5 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %rw_verify_area.exit.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %rw_verify_area.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i64, ptr %3, align 8                ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.f, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val28.i = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val28.i, i64 8
  %.val28.val.i = load i32, ptr %i.e, align 8
  %i.f = and i32 %.val28.val.i, 32
  %.not32.i = icmp eq i32 %i.f, 0
  br i1 %.not32.i, label %rw_verify_area.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = sub i64 0, %i.b
  %.not26.i = icmp ult i64 %2, %i.g
  br i1 %.not26.i, label %rw_verify_area.exit, label %rw_verify_area.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.h = add nuw i64 %i.b, %2
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %rw_verify_area.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load i32, ptr %i.k, align 8
  %i.l = and i32 %.val.val.i, 32
  %.not31.i = icmp eq i32 %i.l, 0
  br i1 %.not31.i, label %rw_verify_area.exit.thread, label %rw_verify_area.exit

rw_verify_area.exit:                              ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %i.m = tail call i32 @security_file_permission(ptr noundef %0, i32 noundef 2) #15 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %rw_verify_area.exit.thread

rw_verify_area.exit.thread:                       ; preds = %bb.e, %bb.g, %bb.d, %bb.a, %rw_verify_area.exit
  %.1.i16 = phi i32 [ %i.m, %rw_verify_area.exit ], [ -75, %bb.e ], [ -22, %bb.g ], [ -22, %bb.d ], [ -22, %bb.a ]
  %i.n = sext i32 %.1.i16 to i64
  br label %file_end_write.exit

bb.h:                                             ; preds = %rw_verify_area.exit
  %i.o = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.p = load i16, ptr %.val, align 8
  %i.q = icmp slt i16 %i.p, -28672
  br i1 %i.q, label %bb.i, label %file_start_write.exit

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %.val, i64 40
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 576      ; 2 uses
  %i.u = tail call i32 @__SCT__might_resched() #15 ; 0 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !39
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !40
  %i.v = load volatile i32, ptr %i.t, align 8
  %.not.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.k, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %i.s, i64 624
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.x, ptr elementtype(i32) %i.x) #13, !srcloc !41
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.y = tail call zeroext i1 @__percpu_down_read(ptr noundef %i.t, i1 noundef zeroext false, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !42
  %i.z = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !43 ; 2 uses
  %i.aa = icmp ult i8 %i.z, 2
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = trunc nuw i8 %i.z to i1
  br i1 %i.ab, label %bb.m, label %file_start_write.exit, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.ad = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.ac) #13, !srcloc !44
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ad)
  br label %file_start_write.exit

file_start_write.exit:                            ; preds = %bb.h, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = tail call i64 @llvm.umin.i64(i64 %2, i64 2147479552) ; 2 uses
  store i64 %i.af, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !28
  call void @iov_iter_kvec(ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %4, i64 noundef 1, i64 noundef %i.af) #15
  %i.ag = call i64 @__kernel_write_iter(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3) #14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.val13 = load ptr, ptr %i.o, align 8           ; 2 uses
  %i.ah = load i16, ptr %.val13, align 8
  %i.ai = icmp slt i16 %i.ah, -28672
  br i1 %i.ai, label %bb.n, label %file_end_write.exit

bb.n:                                             ; preds = %file_start_write.exit
  %i.aj = getelementptr i8, ptr %.val13, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 576    ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !39
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !45
  %i.am = load volatile i32, ptr %i.al, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.p, !prof !29

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %i.ak, i64 624
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, ptr elementtype(i32) %i.ao) #13, !srcloc !46
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @__percpu_up_read(ptr noundef %i.al) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !47
  %i.ap = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !43 ; 2 uses
  %i.aq = icmp ult i8 %i.ap, 2
  call void @llvm.assume(i1 %i.aq)
  %i.ar = trunc nuw i8 %i.ap to i1
  br i1 %i.ar, label %bb.r, label %file_end_write.exit, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.as = call i64 @llvm.read_register.i64(metadata !0)
  %i.at = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.as) #13, !srcloc !48
  call void @llvm.write_register.i64(metadata !0, i64 %i.at)
  br label %file_end_write.exit

file_end_write.exit:                              ; preds = %bb.r, %bb.q, %file_start_write.exit, %rw_verify_area.exit.thread
  %.0 = phi i64 [ %i.n, %rw_verify_area.exit.thread ], [ %i.ag, %file_start_write.exit ], [ %i.ag, %bb.q ], [ %i.ag, %bb.r ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @vfs_write(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.kiocb, align 8              ; 11 uses
  %5 = alloca %struct.iov_iter, align 8           ; 11 uses
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %file_end_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 262144
  %.not30 = icmp eq i32 %i.d, 0
  br i1 %.not30, label %file_end_write.exit, label %__access_ok.exit

__access_ok.exit:                                 ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = add i64 %2, %i.e                         ; 2 uses
  %i.g = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #16, !srcloc !31
  %i.h = icmp ule i64 %i.f, %i.g
  %i.i = icmp uge i64 %i.f, %i.e
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %bb.c, label %file_end_write.exit, !prof !29

bb.c:                                             ; preds = %__access_ok.exit
  %i.k = icmp slt i64 %2, 0
  br i1 %i.k, label %rw_verify_area.exit.thread, label %.thread, !prof !32

.thread:                                          ; preds = %bb.c
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %rw_verify_area.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.l = load i64, ptr %3, align 8                ; 3 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.g, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 8
  %.val28.i = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val28.i, i64 8
  %.val28.val.i = load i32, ptr %i.o, align 8
  %i.p = and i32 %.val28.val.i, 32
  %.not32.i = icmp eq i32 %i.p, 0
  br i1 %.not32.i, label %rw_verify_area.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sub i64 0, %i.l
  %.not26.i = icmp ult i64 %2, %i.q
  br i1 %.not26.i, label %rw_verify_area.exit, label %rw_verify_area.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.r = add nuw i64 %i.l, %2
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %rw_verify_area.exit, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load i32, ptr %i.u, align 8
  %i.v = and i32 %.val.val.i, 32
  %.not31.i = icmp eq i32 %i.v, 0
  br i1 %.not31.i, label %rw_verify_area.exit.thread, label %rw_verify_area.exit

rw_verify_area.exit:                              ; preds = %.thread, %bb.f, %bb.g, %bb.h
  %i.w = tail call i32 @security_file_permission(ptr noundef %0, i32 noundef 2) #15 ; 2 uses
  %.not31 = icmp eq i32 %i.w, 0
  br i1 %.not31, label %bb.i, label %rw_verify_area.exit.thread

rw_verify_area.exit.thread:                       ; preds = %bb.f, %bb.h, %bb.e, %bb.c, %rw_verify_area.exit
  %.1.i41 = phi i32 [ %i.w, %rw_verify_area.exit ], [ -75, %bb.f ], [ -22, %bb.h ], [ -22, %bb.e ], [ -22, %bb.c ]
  %i.x = sext i32 %.1.i41 to i64
  br label %file_end_write.exit

bb.i:                                             ; preds = %rw_verify_area.exit
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %2, i64 2147479552) ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.z = load i16, ptr %.val, align 8
  %i.aa = icmp slt i16 %i.z, -28672
  br i1 %i.aa, label %bb.j, label %file_start_write.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %.val, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 576    ; 2 uses
  %i.ae = tail call i32 @__SCT__might_resched() #15 ; 0 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !39
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !40
  %i.af = load volatile i32, ptr %i.ad, align 8
  %.not.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.l, !prof !29

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.ac, i64 624
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah, ptr elementtype(i32) %i.ah) #13, !srcloc !41
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = tail call zeroext i1 @__percpu_down_read(ptr noundef %i.ad, i1 noundef zeroext false, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !42
  %i.aj = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !43 ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %bb.n, label %file_start_write.exit, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.am = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.an = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.am) #13, !srcloc !44
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.an)
  br label %file_start_write.exit

file_start_write.exit:                            ; preds = %bb.i, %bb.m, %bb.n
  %i.ao = getelementptr i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.ar, null
  br i1 %.not32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %file_start_write.exit
  %i.as = tail call i64 %i.ar(ptr noundef %0, ptr noundef %1, i64 noundef %spec.store.select, ptr noundef %3) #15
  br label %bb.ab

bb.p:                                             ; preds = %file_start_write.exit
  %i.at = getelementptr i8, ptr %i.ap, i64 48
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not33 = icmp eq ptr %i.au, null
  br i1 %.not33, label %.thread42, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.av = getelementptr i8, ptr %0, i64 44
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16, !srcloc !30
  %i.ay = inttoptr i64 %i.ax to ptr               ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 2376
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr i8, ptr %i.ay, i64 1092
  %.val14.i.i.i.i = load i32, ptr %i.bb, align 4  ; 3 uses
  %i.bc = icmp eq i32 %.val14.i.i.i.i, 5
  br i1 %i.bc, label %.sink.split.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = add i32 %.val14.i.i.i.i, -1
  %or.cond.i.i.i.i.i.i = icmp ult i32 %i.bd, 2
  %i.be = icmp eq i32 %.val14.i.i.i.i, 6
  %.0.i.i.i.i.i.i = or i1 %i.be, %or.cond.i.i.i.i.i.i
  %..i.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i32 8192, i32 16384
  br label %.sink.split.i.i.i.i

bb.t:                                             ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %i.ba, i64 12
  %i.bg = load i16, ptr %i.bf, align 4            ; 2 uses
  %i.bh = icmp ult i16 %i.bg, 8192
  br i1 %i.bh, label %bb.u, label %init_sync_kiocb.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr i8, ptr %i.ay, i64 1092
  %.val.i.i.i.i = load i32, ptr %i.bi, align 4    ; 3 uses
  %i.bj = icmp eq i32 %.val.i.i.i.i, 5
  br i1 %i.bj, label %.sink.split.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = add i32 %.val.i.i.i.i, -1
  %or.cond.i.i18.i.i.i.i = icmp ult i32 %i.bk, 2
  %i.bl = icmp eq i32 %.val.i.i.i.i, 6
  %.0.i.i19.i.i.i.i = or i1 %i.bl, %or.cond.i.i18.i.i.i.i
  %..i20.i.i.i.i = select i1 %.0.i.i19.i.i.i.i, i32 8192, i32 16384
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.v, %bb.u, %bb.s, %bb.r
  %.0.i21.sink.i.i.i.i = phi i32 [ %..i.i.i.i.i, %bb.s ], [ 24576, %bb.r ], [ 24576, %bb.u ], [ %..i20.i.i.i.i, %bb.v ]
  %i.bm = getelementptr i8, ptr %i.ay, i64 108
  %.val15.i.i.i.i = load i32, ptr %i.bm, align 4
  %i.bn = add i32 %.val15.i.i.i.i, -100
  %i.bo = sdiv i32 %i.bn, 5                       ; 2 uses
  %or.cond5.i.i.i.i.i = icmp ugt i32 %i.bo, 7
  %i.bp = or disjoint i32 %i.bo, %.0.i21.sink.i.i.i.i
  %i.bq = trunc nuw i32 %i.bp to i16
  %.0.i.i.i.i.i = select i1 %or.cond5.i.i.i.i.i, i16 -8192, i16 %i.bq
  br label %init_sync_kiocb.exit.i

init_sync_kiocb.exit.i:                           ; preds = %.sink.split.i.i.i.i, %bb.t
  %.010.in.i.i.i.i = phi i16 [ %i.bg, %bb.t ], [ %.0.i.i.i.i.i, %.sink.split.i.i.i.i ]
  store ptr %0, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  store i32 %i.aw, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i16 %.010.in.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 38
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 2
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 39
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 1
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %.sroa.9.0..sroa_idx.i.i, align 8
  %i.bs = icmp ne ptr %3, null                    ; 2 uses
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %init_sync_kiocb.exit.i
  %i.bt = load i64, ptr %3, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %init_sync_kiocb.exit.i
  %i.bu = phi i64 [ %i.bt, %bb.w ], [ 0, %init_sync_kiocb.exit.i ]
  store i64 %i.bu, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 5, i1 false)
  store i8 0, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i12.i, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i, align 2
  %.sroa.4.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.a, align 8
  %.sroa.6.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i14.i, align 8
  %.sroa.7.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %spec.store.select, ptr %.sroa.7.0..sroa_idx.i14.i, align 8
  %.sroa.8.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 1, ptr %.sroa.8.0..sroa_idx.i15.i, align 8
  %i.bv = call i64 %i.au(ptr noundef nonnull %4, ptr noundef nonnull %5) #15, !inline_history !49 ; 3 uses
  %i.bw = icmp eq i64 %i.bv, -529
  br i1 %i.bw, label %bb.y, label %bb.z, !prof !12

bb.y:                                             ; preds = %bb.x
  call void asm sideeffect "700: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 700b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 700) #13, !srcloc !50
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 596, i32 0, i64 16) #13, !srcloc !51
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bx = icmp sgt i64 %i.bv, 0
  %or.cond.i35 = and i1 %i.bs, %i.bx
  br i1 %or.cond.i35, label %bb.aa, label %new_sync_write.exit

bb.aa:                                            ; preds = %bb.z
  %i.by = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store i64 %i.by, ptr %3, align 8
  br label %new_sync_write.exit

new_sync_write.exit:                              ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.ab

bb.ab:                                            ; preds = %new_sync_write.exit, %bb.o
  %.0 = phi i64 [ %i.as, %bb.o ], [ %i.bv, %new_sync_write.exit ] ; 4 uses
  %i.bz = icmp sgt i64 %.0, 0
  br i1 %i.bz, label %bb.ac, label %.thread42

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load i32, ptr %i.a, align 4
  %i.cb = and i32 %i.ca, 100663296
  %i.cc = icmp eq i32 %i.cb, 33554432
  br i1 %i.cc, label %fsnotify_modify.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ce = getelementptr i8, ptr %0, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8            ; 5 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 48
  %.val.i.i.i.i36 = load ptr, ptr %i.cg, align 8  ; 3 uses
  %i.ch = getelementptr i8, ptr %.val.i.i.i.i36, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 904
  %i.ck = load volatile ptr, ptr %i.cj, align 8   ; 2 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i37, label %fsnotify_modify.exit, label %fsnotify_sb_has_watchers.exit.i.i.i.i

fsnotify_sb_has_watchers.exit.i.i.i.i:            ; preds = %bb.ad
  %i.cl = getelementptr i8, ptr %i.ck, i64 32
  %i.cm = load volatile i64, ptr %i.cl, align 8
  %.not18.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not18.i.i.i.i, label %fsnotify_modify.exit, label %bb.ae

bb.ae:                                            ; preds = %fsnotify_sb_has_watchers.exit.i.i.i.i
  %i.cn = load i16, ptr %.val.i.i.i.i36, align 8
  %i.co = and i16 %i.cn, -4096
  %i.cp = icmp eq i16 %i.co, 16384
  br i1 %i.cp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cq = load i32, ptr %i.cf, align 8
  %i.cr = and i32 %i.cq, 8192
  %.not.i.i.i.i38 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i38, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.015.i.i.i.i = phi i32 [ 1073741826, %bb.af ], [ 2, %bb.ae ] ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cf, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = icmp eq ptr %i.cf, %i.ct
  br i1 %i.cu, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cv = call i32 @__fsnotify_parent(ptr noundef %i.cf, i32 noundef %.015.i.i.i.i, ptr noundef %i.cd, i32 noundef 2) #15 ; 0 uses
  br label %fsnotify_modify.exit

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %.1.i.i.i.i = phi i32 [ %.015.i.i.i.i, %bb.ag ], [ 1073741826, %bb.af ]
  %i.cw = call i32 @fsnotify(i32 noundef %.1.i.i.i.i, ptr noundef %i.cd, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %.val.i.i.i.i36, i32 noundef 0) #15 ; 0 uses
  br label %fsnotify_modify.exit

fsnotify_modify.exit:                             ; preds = %bb.ac, %bb.ad, %fsnotify_sb_has_watchers.exit.i.i.i.i, %bb.ah, %bb.ai
  %i.cx = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16, !srcloc !30
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr i8, ptr %i.cy, i64 2416   ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = add i64 %i.da, %.0
  store i64 %i.db, ptr %i.cz, align 8
  br label %.thread42

.thread42:                                        ; preds = %bb.p, %fsnotify_modify.exit, %bb.ab
  %.044 = phi i64 [ %.0, %bb.ab ], [ %.0, %fsnotify_modify.exit ], [ -22, %bb.p ] ; 3 uses
  %i.dc = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16, !srcloc !30
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr i8, ptr %i.dd, i64 2432   ; 2 uses
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8
  %.val34 = load ptr, ptr %i.y, align 8           ; 2 uses
  %i.dh = load i16, ptr %.val34, align 8
  %i.di = icmp slt i16 %i.dh, -28672
  br i1 %i.di, label %bb.aj, label %file_end_write.exit

bb.aj:                                            ; preds = %.thread42
  %i.dj = getelementptr i8, ptr %.val34, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 576    ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !39
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !45
  %i.dm = load volatile i32, ptr %i.dl, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %bb.al, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.dn = getelementptr i8, ptr %i.dk, i64 624
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.do, ptr elementtype(i32) %i.do) #13, !srcloc !46
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @__percpu_up_read(ptr noundef %i.dl) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !47
  %i.dp = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !43 ; 2 uses
  %i.dq = icmp ult i8 %i.dp, 2
  call void @llvm.assume(i1 %i.dq)
  %i.dr = trunc nuw i8 %i.dp to i1
  br i1 %i.dr, label %bb.an, label %file_end_write.exit, !prof !12

bb.an:                                            ; preds = %bb.am
  %i.ds = call i64 @llvm.read_register.i64(metadata !0)
  %i.dt = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.ds) #13, !srcloc !48
  call void @llvm.write_register.i64(metadata !0, i64 %i.dt)
  br label %file_end_write.exit

file_end_write.exit:                              ; preds = %bb.an, %bb.am, %.thread42, %__access_ok.exit, %bb.b, %bb.a, %rw_verify_area.exit.thread
  %.027 = phi i64 [ -22, %bb.b ], [ %i.x, %rw_verify_area.exit.thread ], [ %.044, %bb.an ], [ -9, %bb.a ], [ -14, %__access_ok.exit ], [ %.044, %.thread42 ], [ %.044, %bb.am ]
  ret i64 %.027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ksys_read(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call i64 @fdget_pos(i32 noundef %0) #15 ; 4 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %fdput_pos.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !annotation !28
  %i.c = and i64 %i.b, -4
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 2097152
  %.not.i11 = icmp ne i32 %i.g, 0
  %i.h = getelementptr i8, ptr %i.d, i64 104      ; 3 uses
  %.not23 = icmp eq ptr %i.h, null
  %.not = or i1 %.not23, %.not.i11
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.c ], [ null, %bb.b ]  ; 2 uses
  %i.j = call i64 @vfs_read(ptr noundef %i.d, ptr noundef %1, i64 noundef %2, ptr noundef %.0) #14 ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  %i.l = icmp ne ptr %.0, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8
  store i64 %i.m, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.n = and i64 %i.b, 2
  %.not.i12 = icmp eq i64 %i.n, 0
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @__f_unlock_pos(ptr noundef %i.d) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = and i64 %i.b, 1
  %.not.i.i = icmp eq i64 %i.o, 0
end_hunk_0
