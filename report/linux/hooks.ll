Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hooks?download=true
inline.NumInlined: 696
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@selinux_lsm_notifier_avc_callback:bb.a
bb.a:
  %i.a = icmp eq i32 %0, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @call_blocking_lsm_notifier(i32 noundef 0, ptr noundef null) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @selinux_audit_rule_avc_callback(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_binder_set_context_mgr(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 1992
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 128
  %.val.i = load ptr, ptr %i.e, align 8
  %i.f = load i32, ptr @selinux_blob_sizes, align 4
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr i8, ptr %.val.i, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val, i64 %i.g
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call i32 @avc_has_perm(i32 noundef %i.j, i32 noundef %i.n, i16 noundef zeroext 56, i32 noundef 4, ptr noundef null) #25
  ret i32 %i.o
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_binder_transaction(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 1992
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 128
  %.val.i = load ptr, ptr %i.e, align 8
  %i.f = load i32, ptr @selinux_blob_sizes, align 4
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr i8, ptr %.val.i, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 128
  %.val14 = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val14, i64 %i.g
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 128
  %.val = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val, i64 %i.g
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %.not = icmp eq i32 %i.j, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call i32 @avc_has_perm(i32 noundef %i.j, i32 noundef %i.n, i16 noundef zeroext 56, i32 noundef 1, ptr noundef null) #25 ; 2 uses
  %.not13 = icmp eq i32 %i.s, 0
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call i32 @avc_has_perm(i32 noundef %i.n, i32 noundef %i.r, i16 noundef zeroext 56, i32 noundef 2, ptr noundef null) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.t, %bb.c ], [ %i.s, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_binder_transfer_binder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %.val2 = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr i8, ptr %.val2, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr i8, ptr %1, i64 128
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val, i64 %i.c
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @avc_has_perm(i32 noundef %i.f, i32 noundef %i.j, i16 noundef zeroext 56, i32 noundef 8, ptr noundef null) #25
  ret i32 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_binder_transfer_file(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.common_audit_data, align 8  ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 128
  %.val21 = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %.val21, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr i8, ptr %2, i64 112
  %.val22 = load ptr, ptr %i.g, align 8
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 4), align 4
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr i8, ptr %.val22, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 64
  %i.l = getelementptr i8, ptr %2, i64 72
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !10
  store i8 1, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.o = load i32, ptr %i.j, align 4              ; 2 uses
  %.not = icmp eq i32 %i.f, %i.o
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = call i32 @avc_has_perm(i32 noundef %i.f, i32 noundef %i.o, i16 noundef zeroext 9, i32 noundef 1, ptr noundef nonnull %3) #25 ; 2 uses
  %.not19 = icmp eq i32 %i.p, 0
  br i1 %.not19, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr i8, ptr %i.m, i64 48
  %.val = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.r = getelementptr i8, ptr %.val, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 512
  %.not20 = icmp eq i32 %i.t, 0
  br i1 %.not20, label %bb.d, label %bb.j, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %.val, i64 56
  %.val9.i = load ptr, ptr %i.u, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %.val9.i, null
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 16), align 4
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %.val9.i, i64 %i.w
  %.0.i.i = select i1 %.not.i.i, ptr null, ptr %i.x, !prof !16 ; 3 uses
  %i.y = getelementptr i8, ptr %.0.i.i, i64 34
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %backing_inode_security.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @selinux_state, i64 1), align 1, !range !13, !noundef !14
  %i.ac = trunc nuw i8 %i.ab to i1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !15
  br i1 %i.ac, label %bb.f, label %backing_inode_security.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = call i32 @__SCT__might_resched() #25    ; 0 uses
  %i.ae = call fastcc i32 @inode_doinit_with_dentry(ptr noundef %.val, ptr noundef %i.m) #27, !srcloc !18 ; 0 uses
  br label %backing_inode_security.exit

backing_inode_security.exit:                      ; preds = %bb.d, %bb.e, %bb.f
  %i.af = getelementptr i8, ptr %.0.i.i, i64 28
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr i8, ptr %.0.i.i, i64 32
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = shl i32 %i.ak, 1
  %spec.select.i = and i32 %i.al, 2               ; 3 uses
  %i.am = and i32 %i.ak, 2
  %.not7.i = icmp eq i32 %i.am, 0
  br i1 %.not7.i, label %file_to_av.exit, label %bb.g

bb.g:                                             ; preds = %backing_inode_security.exit
  %i.an = getelementptr i8, ptr %2, i64 40
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 1024
  %.not8.i = icmp eq i32 %i.ap, 0
  br i1 %.not8.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = or disjoint i32 %spec.select.i, 512
  br label %file_to_av.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = or disjoint i32 %spec.select.i, 4
  br label %file_to_av.exit

file_to_av.exit:                                  ; preds = %backing_inode_security.exit, %bb.h, %bb.i
  %.1.i = phi i32 [ %i.aq, %bb.h ], [ %i.ar, %bb.i ], [ %spec.select.i, %backing_inode_security.exit ]
  %spec.store.select.i = call range(i32 1, 515) i32 @llvm.umax.i32(i32 %.1.i, i32 1)
  %i.as = call i32 @avc_has_perm(i32 noundef %i.f, i32 noundef %i.ag, i16 noundef zeroext %i.ai, i32 noundef %spec.store.select.i, ptr noundef nonnull %3) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %file_to_av.exit
  %.0 = phi i32 [ %i.as, %file_to_av.exit ], [ %i.p, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_ptrace_access_check(ptr nofree noundef captures(address) %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 1992
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 128
  %.val.i = load ptr, ptr %i.e, align 8
  %i.f = load i32, ptr @selinux_blob_sizes, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %.val.i, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  tail call void @__rcu_read_lock() #25
  %i.k = getelementptr i8, ptr %0, i64 1984
  %i.l = load volatile ptr, ptr %i.k, align 64
  %i.m = getelementptr i8, ptr %i.l, i64 128
  %.val.i6 = load ptr, ptr %i.m, align 8
  %i.n = load i32, ptr @selinux_blob_sizes, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %.val.i6, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  tail call void @__rcu_read_unlock() #25
  %i.s = and i32 %1, 1
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 @avc_has_perm(i32 noundef %i.j, i32 noundef %i.r, i16 noundef zeroext 7, i32 noundef 2, ptr noundef null) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = tail call i32 @avc_has_perm(i32 noundef %i.j, i32 noundef %i.r, i16 noundef zeroext 2, i32 noundef 128, ptr noundef null) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.t, %bb.b ], [ %i.u, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_ptrace_traceme(ptr nofree noundef captures(address) %0) #1 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #25
  %i.a = getelementptr i8, ptr %0, i64 1984
  %i.b = load volatile ptr, ptr %i.a, align 64
  %i.c = getelementptr i8, ptr %i.b, i64 128
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = load i32, ptr @selinux_blob_sizes, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %.val.i, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4
  tail call void @__rcu_read_unlock() #25
  %i.i = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.j = inttoptr i64 %i.i to ptr
  tail call void @__rcu_read_lock() #25
  %i.k = getelementptr i8, ptr %i.j, i64 1984
  %i.l = load volatile ptr, ptr %i.k, align 64
  %i.m = getelementptr i8, ptr %i.l, i64 128
  %.val.i1 = load ptr, ptr %i.m, align 8
  %i.n = load i32, ptr @selinux_blob_sizes, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %.val.i1, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  tail call void @__rcu_read_unlock() #25
  %i.s = tail call i32 @avc_has_perm(i32 noundef %i.h, i32 noundef %i.r, i16 noundef zeroext 2, i32 noundef 128, ptr noundef null) #25
  ret i32 %i.s
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_capget(ptr nofree noundef captures(address) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 1992
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 128
  %.val.i = load ptr, ptr %i.e, align 8
  %i.f = load i32, ptr @selinux_blob_sizes, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %.val.i, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  tail call void @__rcu_read_lock() #25
  %i.k = getelementptr i8, ptr %0, i64 1984
  %i.l = load volatile ptr, ptr %i.k, align 64
  %i.m = getelementptr i8, ptr %i.l, i64 128
  %.val.i1 = load ptr, ptr %i.m, align 8
  %i.n = load i32, ptr @selinux_blob_sizes, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %.val.i1, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  tail call void @__rcu_read_unlock() #25
  %i.s = tail call i32 @avc_has_perm(i32 noundef %i.j, i32 noundef %i.r, i16 noundef zeroext 2, i32 noundef 8192, ptr noundef null) #25
  ret i32 %i.s
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_capset(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %.val2 = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr i8, ptr %.val2, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val, i64 %i.c
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @avc_has_perm(i32 noundef %i.f, i32 noundef %i.j, i16 noundef zeroext 2, i32 noundef 16384, ptr noundef null) #25
  ret i32 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_capable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, i32 noundef %2, i32 noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.common_audit_data, align 8  ; 6 uses
  %5 = alloca %struct.av_decision, align 4        ; 8 uses
  %i.a = icmp eq ptr %1, @init_user_ns            ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.c = load i32, ptr @selinux_blob_sizes, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr i8, ptr %.val, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %i.h = and i32 %2, 31
  %i.i = shl nuw i32 1, %i.h                      ; 7 uses
  store i8 3, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.j, align 8
  %i.k = ashr i32 %2, 5
  %.sink.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sink.i.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  switch i32 %i.k, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = select i1 %i.a, i16 5, i16 57
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = select i1 %i.a, i16 53, i16 58
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %2) #26 ; 0 uses
  br label %cred_has_capability.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %.022.i = phi i16 [ %i.l, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false), !annotation !10
  %i.o = call i32 @avc_has_perm_noaudit(i32 noundef %i.g, i32 noundef %i.g, i16 noundef zeroext %.022.i, i32 noundef %i.i, i32 noundef 0, ptr noundef nonnull %5) #25 ; 3 uses
  %i.p = and i32 %3, 2
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %avc_audit.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 2
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %avc_audit.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %5, align 4                ; 2 uses
  %i.u = xor i32 %i.t, -1
  %i.v = and i32 %i.i, %i.u                       ; 2 uses
  %i.w = and i32 %i.t, %i.i
  %.not20.i.i.not.i = icmp eq i32 %i.w, 0
  br i1 %.not20.i.i.not.i, label %avc_audit_required.exit.i.i, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  %.not21.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not21.i.i.i, label %avc_audit_required.exit.i.i, label %avc_audit.exit.i

avc_audit_required.exit.i.i:                      ; preds = %bb.h, %bb.g
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %bb.g ], [ %.sink.i.sroa.gep1.i, %bb.h ]
end_hunk_0
begin_hunk_1_@selinux_file_fcntl:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !10
  %i.an = getelementptr i8, ptr %i.d, i64 128
  %.val.i.i11 = load ptr, ptr %i.an, align 8
  %i.ao = load i32, ptr @selinux_blob_sizes, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %.val.i.i11, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 112
  %.val39.i.i12 = load ptr, ptr %i.at, align 8
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 4), align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %.val39.i.i12, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  store i8 12, ptr %4, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.ay, align 8
  %.not.i.i14 = icmp eq i32 %i.as, %i.ax
  br i1 %.not.i.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = call i32 @avc_has_perm(i32 noundef %i.as, i32 noundef %i.ax, i16 noundef zeroext 9, i32 noundef 1, ptr noundef nonnull %4) #25 ; 2 uses
  %.not34.i.i15 = icmp eq i32 %i.az, 0
  br i1 %.not34.i.i15, label %bb.i, label %file_has_perm.exit17

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %file_has_perm.exit17

file_has_perm.exit17:                             ; preds = %bb.h, %bb.i
  %.1.i.i16 = phi i32 [ 0, %bb.i ], [ %i.az, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.n

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !10
  %i.ba = getelementptr i8, ptr %i.d, i64 128     ; 2 uses
  %.val.i.i18 = load ptr, ptr %i.ba, align 8
  %i.bb = load i32, ptr @selinux_blob_sizes, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %.val.i.i18, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 112
  %.val39.i.i19 = load ptr, ptr %i.bg, align 8
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 4), align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %.val39.i.i19, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = getelementptr i8, ptr %0, i64 32
  %.val38.i.i20 = load ptr, ptr %i.bl, align 8    ; 2 uses
  store i8 12, ptr %3, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.bm, align 8
  %.not.i.i21 = icmp eq i32 %i.bf, %i.bk
  br i1 %.not.i.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = call i32 @avc_has_perm(i32 noundef %i.bf, i32 noundef %i.bk, i16 noundef zeroext 9, i32 noundef 1, ptr noundef nonnull %3) #25 ; 2 uses
  %.not34.i.i22 = icmp eq i32 %i.bn, 0
  br i1 %.not34.i.i22, label %bb.l, label %file_has_perm.exit29

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bo = getelementptr i8, ptr %.val38.i.i20, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = and i32 %i.bp, 512
  %.not.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i24, label %bb.m, label %file_has_perm.exit29, !prof !17

bb.m:                                             ; preds = %bb.l
  %.val8.i.i.i25 = load ptr, ptr %i.ba, align 8
  %i.br = load i32, ptr @selinux_blob_sizes, align 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr i8, ptr %.val8.i.i.i25, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr i8, ptr %.val38.i.i20, i64 56
  %.val.i.i.i26 = load ptr, ptr %i.bw, align 8    ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %.val.i.i.i26, null
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 16), align 4
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %.val.i.i.i26, i64 %i.by
  %.0.i.i.i.i28 = select i1 %.not.i.i.i.i27, ptr null, ptr %i.bz, !prof !16 ; 2 uses
  %i.ca = getelementptr i8, ptr %.0.i.i.i.i28, i64 28
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr i8, ptr %.0.i.i.i.i28, i64 32
  %i.cd = load i16, ptr %i.cc, align 8
  %i.ce = call i32 @avc_has_perm(i32 noundef %i.bv, i32 noundef %i.cb, i16 noundef zeroext %i.cd, i32 noundef range(i32 0, 536870920) 64, ptr noundef nonnull %3) #25
  br label %file_has_perm.exit29

file_has_perm.exit29:                             ; preds = %bb.k, %bb.l, %bb.m
  %.1.i.i23 = phi i32 [ %i.ce, %bb.m ], [ 0, %bb.l ], [ %i.bn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.n

bb.n:                                             ; preds = %file_has_perm.exit29, %file_has_perm.exit17, %file_has_perm.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.1.i.i16, %file_has_perm.exit17 ], [ %.1.i.i, %file_has_perm.exit ], [ %.1.i.i23, %file_has_perm.exit29 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal void @selinux_file_set_fowner(ptr nofree noundef readonly captures(none) %0) #13 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 4), align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %.val, i64 %i.c
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 1992
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 128
  %.val.i = load ptr, ptr %i.i, align 8
  %i.j = load i32, ptr @selinux_blob_sizes, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %.val.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %i.d, i64 4
  store i32 %i.n, ptr %i.o, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_file_send_sigiotask(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #25
  %i.a = getelementptr i8, ptr %0, i64 1984
  %i.b = load volatile ptr, ptr %i.a, align 64
  %i.c = getelementptr i8, ptr %i.b, i64 128
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = load i32, ptr @selinux_blob_sizes, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %.val.i, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4
  tail call void @__rcu_read_unlock() #25
  %i.i = load ptr, ptr %1, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 112
  %.val = load ptr, ptr %i.j, align 8
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 4), align 4
  switch i32 %2, label %signal_to_av.exit [
    i32 19, label %bb.c
    i32 17, label %signal_to_av.exit.fold.split
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %signal_to_av.exit

bb.c:                                             ; preds = %bb.a
  br label %signal_to_av.exit

signal_to_av.exit.fold.split:                     ; preds = %bb.a
  br label %signal_to_av.exit

signal_to_av.exit:                                ; preds = %bb.a, %signal_to_av.exit.fold.split, %bb.c, %bb.b
  %.0 = phi i32 [ 64, %bb.a ], [ 4, %signal_to_av.exit.fold.split ], [ 16, %bb.c ], [ 8, %bb.b ]
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %.val, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call i32 @avc_has_perm(i32 noundef %i.o, i32 noundef %i.h, i16 noundef zeroext 2, i32 noundef %.0, ptr noundef null) #25
  ret i32 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_file_receive(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.common_audit_data, align 8  ; 7 uses
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 1992
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = shl i32 %i.f, 1
  %spec.select.i = and i32 %i.g, 2                ; 3 uses
  %i.h = and i32 %i.f, 2
  %.not7.i = icmp eq i32 %i.h, 0
  br i1 %.not7.i, label %file_to_av.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 1024
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = or disjoint i32 %spec.select.i, 512
  br label %file_to_av.exit

bb.d:                                             ; preds = %bb.b
  %i.m = or disjoint i32 %spec.select.i, 4
  br label %file_to_av.exit

file_to_av.exit:                                  ; preds = %bb.a, %bb.c, %bb.d
  %.1.i = phi i32 [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %spec.select.i, %bb.a ]
  %spec.store.select.i = tail call range(i32 1, 515) i32 @llvm.umax.i32(i32 %.1.i, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !10
  %i.n = getelementptr i8, ptr %i.d, i64 128      ; 2 uses
  %.val.i.i = load ptr, ptr %i.n, align 8
  %i.o = load i32, ptr @selinux_blob_sizes, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr i8, ptr %.val.i.i, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 112
  %.val39.i.i = load ptr, ptr %i.t, align 8
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 4), align 4
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %.val39.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 32
  %.val38.i.i = load ptr, ptr %i.y, align 8       ; 2 uses
  store i8 12, ptr %1, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.z, align 8
  %.not.i.i = icmp eq i32 %i.s, %i.x
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %file_to_av.exit
  %i.aa = call i32 @avc_has_perm(i32 noundef %i.s, i32 noundef %i.x, i16 noundef zeroext 9, i32 noundef 1, ptr noundef nonnull %1) #25 ; 2 uses
  %.not34.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not34.i.i, label %bb.f, label %file_has_perm.exit

bb.f:                                             ; preds = %bb.e, %file_to_av.exit
  %i.ab = getelementptr i8, ptr %.val38.i.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 512
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.g, label %file_has_perm.exit, !prof !17

bb.g:                                             ; preds = %bb.f
  %.val8.i.i.i = load ptr, ptr %i.n, align 8
  %i.ae = load i32, ptr @selinux_blob_sizes, align 4
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %.val8.i.i.i, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr i8, ptr %.val38.i.i, i64 56
  %.val.i.i.i = load ptr, ptr %i.aj, align 8      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 16), align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %.val.i.i.i, i64 %i.al
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.am, !prof !16 ; 2 uses
  %i.an = getelementptr i8, ptr %.0.i.i.i.i, i64 28
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr i8, ptr %.0.i.i.i.i, i64 32
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = call i32 @avc_has_perm(i32 noundef %i.ai, i32 noundef %i.ao, i16 noundef zeroext %i.aq, i32 noundef range(i32 0, 536870920) %spec.store.select.i, ptr noundef nonnull %1) #25
  br label %file_has_perm.exit

file_has_perm.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.1.i.i = phi i32 [ %i.ar, %bb.g ], [ 0, %bb.f ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i32 %.1.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_file_open(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.common_audit_data, align 8  ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val8 = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 4), align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %.val8, i64 %i.c   ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.f = getelementptr i8, ptr %.val, i64 56
  %.val.i = load ptr, ptr %i.f, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 16), align 4
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %.val.i, i64 %i.h
  %.0.i.i = select i1 %.not.i.i, ptr null, ptr %i.i, !prof !16 ; 2 uses
  %i.j = getelementptr i8, ptr %.0.i.i, i64 34
  %i.k = load i8, ptr %i.j, align 2
  %i.l = icmp eq i8 %i.k, 1
  br i1 %i.l, label %inode_security.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @selinux_state, i64 1), align 1, !range !13, !noundef !14
  %i.n = trunc nuw i8 %i.m to i1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !15
  br i1 %i.n, label %bb.c, label %inode_security.exit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @__SCT__might_resched() #25 ; 0 uses
  %i.p = tail call fastcc i32 @inode_doinit_with_dentry(ptr noundef %.val, ptr noundef null) #27, !srcloc !18 ; 0 uses
  br label %inode_security.exit

inode_security.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  %i.q = getelementptr i8, ptr %.0.i.i, i64 28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %i.d, i64 8
  store i32 %i.r, ptr %i.s, align 4
  %i.t = tail call i32 @avc_policy_seqno() #25
  %i.u = getelementptr i8, ptr %i.d, i64 12
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = shl i32 %i.y, 1
  %spec.select.i.i = and i32 %i.z, 2              ; 3 uses
  %i.aa = and i32 %i.y, 2
  %.not7.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not7.i.i, label %file_to_av.exit.i, label %bb.d

bb.d:                                             ; preds = %inode_security.exit
  %i.ab = getelementptr i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 1024
  %.not8.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not8.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = or disjoint i32 %spec.select.i.i, 512
  br label %file_to_av.exit.i

bb.f:                                             ; preds = %bb.d
  %i.af = or disjoint i32 %spec.select.i.i, 4
  br label %file_to_av.exit.i

file_to_av.exit.i:                                ; preds = %bb.f, %bb.e, %inode_security.exit
  %.1.i.i = phi i32 [ %i.ae, %bb.e ], [ %i.af, %bb.f ], [ %spec.select.i.i, %inode_security.exit ]
  %spec.store.select.i.i = tail call range(i32 1, 515) i32 @llvm.umax.i32(i32 %.1.i.i, i32 1) ; 3 uses
  %.val.i9 = load ptr, ptr %i.e, align 8          ; 3 uses
  %i.ag = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @selinux_state, i64 3), align 1, !range !13, !noundef !14
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %open_file_to_av.exit

bb.g:                                             ; preds = %file_to_av.exit.i
  %i.ai = getelementptr i8, ptr %.val.i9, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 96
  %i.al = load i64, ptr %i.ak, align 32
  %.not.i = icmp eq i64 %i.al, 1397703499
  %i.am = or disjoint i32 %spec.store.select.i.i, 262144
  %spec.select.i = select i1 %.not.i, i32 %spec.store.select.i.i, i32 %i.am
  br label %open_file_to_av.exit

open_file_to_av.exit:                             ; preds = %file_to_av.exit.i, %bb.g
  %.0.i = phi i32 [ %spec.store.select.i.i, %file_to_av.exit.i ], [ %spec.select.i, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !10
  store i8 12, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val.i9, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 512
  %.not.i.i11 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i11, label %bb.h, label %file_path_has_perm.exit, !prof !17

bb.h:                                             ; preds = %open_file_to_av.exit
  %i.ar = getelementptr i8, ptr %i.w, i64 128
  %.val8.i.i = load ptr, ptr %i.ar, align 8
  %i.as = load i32, ptr @selinux_blob_sizes, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr i8, ptr %.val8.i.i, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr i8, ptr %.val.i9, i64 56
  %.val.i.i = load ptr, ptr %i.ax, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 16), align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %.val.i.i, i64 %i.az
  %.0.i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.ba, !prof !16 ; 2 uses
  %i.bb = getelementptr i8, ptr %.0.i.i.i, i64 28
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = call i32 @avc_has_perm(i32 noundef %i.aw, i32 noundef %i.bc, i16 noundef zeroext %i.be, i32 noundef range(i32 0, 263168) %.0.i, ptr noundef nonnull %1) #25
  br label %file_path_has_perm.exit

file_path_has_perm.exit:                          ; preds = %open_file_to_av.exit, %bb.h
  %.0.i.i12 = phi i32 [ %i.bf, %bb.h ], [ 0, %open_file_to_av.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i32 %.0.i.i12
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_task_alloc(ptr nofree noundef readonly captures(none) %0, i64 %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1992
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 128
  %.val.i = load ptr, ptr %i.e, align 8
  %i.f = load i32, ptr @selinux_blob_sizes, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %.val.i, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr i8, ptr %i.b, i64 2968
  %.val4 = load ptr, ptr %i.k, align 8
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 44), align 4
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr i8, ptr %.val4, i64 %i.m
  %i.o = getelementptr i8, ptr %0, i64 2968
  %.val = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(112) %i.p, ptr noundef align 4 dereferenceable(112) %i.n, i64 112, i1 false)
  %i.q = tail call i32 @avc_has_perm(i32 noundef %i.j, i32 noundef %i.j, i16 noundef zeroext 2, i32 noundef 1, ptr noundef null) #25
  ret i32 %i.q
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @selinux_cred_prepare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #14 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %.val4 = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr i8, ptr %.val4, i64 %i.c
  %i.e = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(24) %i.f, ptr noundef align 4 dereferenceable(24) %i.d, i64 24, i1 false)
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal void @selinux_cred_transfer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %.val4 = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr i8, ptr %.val4, i64 %i.c
  %i.e = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(24) %i.f, ptr noundef align 4 dereferenceable(24) %i.d, i64 24, i1 false)
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal void @selinux_cred_getsecid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %.val, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  store i32 %i.f, ptr %1, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal void @selinux_cred_getlsmprop(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %.val, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  store i32 %i.f, ptr %1, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_kernel_act_as(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 1992
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 128
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %.val.i, i64 %i.c
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call i32 @avc_has_perm(i32 noundef %i.k, i32 noundef %1, i16 noundef zeroext 54, i32 noundef 1, ptr noundef null) #25 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %.val, i64 %i.c    ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  store i32 %1, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %i.n, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %i.n, i64 16
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.n, i64 20
  store i32 0, ptr %i.r, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.l
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @selinux_kernel_create_files_as(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 56
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 16), align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %.val.i, i64 %i.c
  %.0.i.i = select i1 %.not.i.i, ptr null, ptr %i.d, !prof !16 ; 2 uses
  %i.e = getelementptr i8, ptr %.0.i.i, i64 34
  %i.f = load i8, ptr %i.e, align 2
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %inode_security.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @selinux_state, i64 1), align 1, !range !13, !noundef !14
  %i.i = trunc nuw i8 %i.h to i1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !15
  br i1 %i.i, label %bb.c, label %inode_security.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @__SCT__might_resched() #25 ; 0 uses
end_hunk_1
begin_hunk_2_@selinux_sk_alloc_security:bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 20), align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %.val, i64 %i.c    ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 20
  store i32 3, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %i.d, i64 16
  store i32 3, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 24
  store i16 15, ptr %i.g, align 8
  tail call void @selinux_netlbl_sk_security_reset(ptr noundef %i.d) #25
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @selinux_tun_dev_alloc_security(ptr nofree noundef writeonly captures(none) %0) #15 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 52), align 4
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 1992
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 128
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = load i32, ptr @selinux_blob_sizes, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %.val.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4
  store i32 %i.m, ptr %i.c, align 4
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @selinux_key_alloc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #14 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val7 = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 32), align 4
  %i.c = getelementptr i8, ptr %1, i64 128
  %.val = load ptr, ptr %i.c, align 8
  %i.d = load i32, ptr @selinux_blob_sizes, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %.val, i64 %i.e    ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ %i.j, %bb.b ], [ %i.h, %bb.a ]
  %i.k = zext i32 %i.b to i64
  %i.l = getelementptr i8, ptr %.val7, i64 %i.k
  store i32 %storemerge, ptr %i.l, align 4
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @selinux_audit_rule_init(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @selinux_perf_event_alloc(ptr nofree noundef readonly captures(none) %0) #13 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 40), align 4
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %i.f = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 1992
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 128
  %.val.i = load ptr, ptr %i.j, align 8
  %i.k = load i32, ptr @selinux_blob_sizes, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %.val.i, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4
  store i32 %i.o, ptr %i.e, align 4
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @avc_has_perm_noaudit(i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @slow_avc_audit(i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @selinux_nlmsg_lookup(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_get_allow_unknown() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @avc_has_extended_perms(i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ptrace_parent_sid() unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #25
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #28, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 16
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %ptrace_parent.exit.thread, label %ptrace_parent.exit, !prof !17

ptrace_parent.exit:                               ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 1552
  %i.f = load volatile ptr, ptr %i.e, align 16    ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %ptrace_parent.exit.thread, label %bb.b

bb.b:                                             ; preds = %ptrace_parent.exit
  tail call void @__rcu_read_lock() #25
  %i.g = getelementptr i8, ptr %i.f, i64 1984
  %i.h = load volatile ptr, ptr %i.g, align 64
  %i.i = getelementptr i8, ptr %i.h, i64 128
  %.val.i = load ptr, ptr %i.i, align 8
  %i.j = load i32, ptr @selinux_blob_sizes, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %.val.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4
  tail call void @__rcu_read_unlock() #25
  br label %ptrace_parent.exit.thread

ptrace_parent.exit.thread:                        ; preds = %bb.a, %bb.b, %ptrace_parent.exit
  %.0 = phi i32 [ %i.n, %bb.b ], [ 0, %ptrace_parent.exit ], [ 0, %bb.a ]
  tail call void @__rcu_read_unlock() #25
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @mnt_may_suid(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_bounded_transition(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @update_rlimit_cpu(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @get_current_tty() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @no_tty() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @iterate_fd(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @match_file(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.common_audit_data, align 8  ; 9 uses
  %i.a = getelementptr i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = shl i32 %i.b, 1
  %spec.select.i = and i32 %i.c, 2                ; 3 uses
  %i.d = and i32 %i.b, 2
  %.not7.i = icmp eq i32 %i.d, 0
  br i1 %.not7.i, label %file_to_av.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 1024
  %.not8.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i32 %spec.select.i, 512
  br label %file_to_av.exit

bb.d:                                             ; preds = %bb.b
  %i.i = or disjoint i32 %spec.select.i, 4
  br label %file_to_av.exit

file_to_av.exit:                                  ; preds = %bb.a, %bb.c, %bb.d
  %.1.i = phi i32 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %spec.select.i, %bb.a ]
  %spec.store.select.i = tail call range(i32 1, 515) i32 @llvm.umax.i32(i32 %.1.i, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !10
  %i.j = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %.val.i.i = load ptr, ptr %i.j, align 8
  %i.k = load i32, ptr @selinux_blob_sizes, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %.val.i.i, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 112
  %.val39.i.i = load ptr, ptr %i.p, align 8
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 4), align 4
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %.val39.i.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 32
  %.val38.i.i = load ptr, ptr %i.u, align 8       ; 2 uses
  store i8 12, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.v, align 8
  %.not.i.i = icmp eq i32 %i.o, %i.t
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %file_to_av.exit
  %i.w = call i32 @avc_has_perm(i32 noundef %i.o, i32 noundef %i.t, i16 noundef zeroext 9, i32 noundef 1, ptr noundef nonnull %3) #25
  %.not34.i.i = icmp eq i32 %i.w, 0
  br i1 %.not34.i.i, label %bb.f, label %file_has_perm.exit.thread6

file_has_perm.exit.thread6:                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.x = add i32 %2, 1
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %file_to_av.exit
  %i.y = getelementptr i8, ptr %.val38.i.i, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 512
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %file_has_perm.exit, label %file_has_perm.exit.thread, !prof !17

file_has_perm.exit.thread:                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.g

file_has_perm.exit:                               ; preds = %bb.f
  %.val8.i.i.i = load ptr, ptr %i.j, align 8
  %i.ab = load i32, ptr @selinux_blob_sizes, align 4
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %.val8.i.i.i, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr i8, ptr %.val38.i.i, i64 56
  %.val.i.i.i = load ptr, ptr %i.ag, align 8      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 16), align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %.val.i.i.i, i64 %i.ai
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.aj, !prof !16 ; 2 uses
  %i.ak = getelementptr i8, ptr %.0.i.i.i.i, i64 28
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr i8, ptr %.0.i.i.i.i, i64 32
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = call i32 @avc_has_perm(i32 noundef %i.af, i32 noundef %i.al, i16 noundef zeroext %i.an, i32 noundef range(i32 0, 536870920) %spec.store.select.i, ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.fr = freeze i32 %i.ao
  %.not = icmp eq i32 %.fr, 0
  %i.ap = add i32 %2, 1
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %file_has_perm.exit.thread, %file_has_perm.exit
  br label %bb.h

bb.h:                                             ; preds = %file_has_perm.exit.thread6, %file_has_perm.exit, %bb.g
  %i.aq = phi i32 [ 0, %bb.g ], [ %i.ap, %file_has_perm.exit ], [ %i.x, %file_has_perm.exit.thread6 ]
  ret i32 %i.aq
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @replace_fd(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @file_has_perm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 536870920) %2) unnamed_addr #18 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.common_audit_data, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !10
  %i.a = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %.val.i, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 112
  %.val39.i = load ptr, ptr %i.g, align 8
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 4), align 4
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr i8, ptr %.val39.i, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 32
  %.val38.i = load ptr, ptr %i.l, align 8         ; 2 uses
  store i8 12, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.f, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = call i32 @avc_has_perm(i32 noundef %i.f, i32 noundef %i.k, i16 noundef zeroext 9, i32 noundef 1, ptr noundef nonnull %3) #25 ; 2 uses
  %.not34.i = icmp eq i32 %i.n, 0
  br i1 %.not34.i, label %bb.c, label %__file_has_perm.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not35.i = icmp eq i32 %2, 0
  br i1 %.not35.i, label %__file_has_perm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.val38.i, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 512
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %__file_has_perm.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  %.val8.i.i = load ptr, ptr %i.a, align 8
  %i.r = load i32, ptr @selinux_blob_sizes, align 4
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %.val8.i.i, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr i8, ptr %.val38.i, i64 56
  %.val.i.i = load ptr, ptr %i.w, align 8         ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 16), align 4
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %.val.i.i, i64 %i.y
  %.0.i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.z, !prof !16 ; 2 uses
  %i.aa = getelementptr i8, ptr %.0.i.i.i, i64 28
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = call i32 @avc_has_perm(i32 noundef %i.v, i32 noundef %i.ab, i16 noundef zeroext %i.ad, i32 noundef range(i32 0, 536870920) %2, ptr noundef nonnull %3) #25
  br label %__file_has_perm.exit

__file_has_perm.exit:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.1.i = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.b ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %.1.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__file_has_perm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 536870920) %2, i1 noundef zeroext %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.common_audit_data, align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !10
  %i.a = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %.val = load ptr, ptr %i.a, align 8
  %i.b = load i32, ptr @selinux_blob_sizes, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %.val, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 16777216
  %.not.not = icmp eq i32 %i.i, 0
  br i1 %.not.not, label %bb.c, label %.critedge, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "1356: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1356b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1356) #24, !srcloc !98
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.31, ptr nonnull @.str.44, i32 1763, i32 2305, i64 16) #24, !srcloc !99
  tail call void asm sideeffect "1357: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1357b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1357) #24, !srcloc !100
  br label %.critedge37

.critedge:                                        ; preds = %bb.b
  %i.j = tail call ptr @backing_file_security(ptr noundef %1) #25
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @selinux_blob_sizes, i64 8), align 4
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %i.j, i64 %i.l
  %i.n = tail call ptr @backing_file_user_path(ptr noundef %1) #25 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 48
  %.val40 = load ptr, ptr %i.r, align 8
  store i8 1, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  br label %bb.e

end_hunk_2
