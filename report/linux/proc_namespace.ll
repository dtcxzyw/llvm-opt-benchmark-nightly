Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/proc_namespace?download=true
inline.NumInlined: 41
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mounts_open_common:bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %.not36 = icmp eq ptr %i.f, null
  br i1 %.not36, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_raw_spin_unlock(ptr noundef %i.b) #5
  %i.g = getelementptr i8, ptr %i.a, i64 40       ; 3 uses
  %i.h = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g, i32 -1, ptr elementtype(i32) %i.g) #6, !srcloc !13 ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %i.h, 1
  br i1 %i.j, label %bb.f, label %put_task_struct.exit, !prof !14

bb.f:                                             ; preds = %bb.e
  tail call void @refcount_warn_saturate(ptr noundef %i.g, i32 noundef 3) #5
  br label %put_task_struct.exit

bb.g:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !15
  %i.k = getelementptr i8, ptr %i.a, i64 2880
  tail call void @call_rcu(ptr noundef %i.k, ptr noundef @__put_task_struct_rcu_cb) #5
  br label %put_task_struct.exit

bb.h:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.f, i64 96
  %i.m = load i64, ptr %i.l, align 32
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %get_mnt_ns.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.f, i32 1, ptr nonnull elementtype(i32) %i.f) #6, !srcloc !13 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.j, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.p = add i32 %i.o, 1
  %i.q = or i32 %i.p, %i.o
  %.not10.i.i.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not10.i.i.i.i, label %get_mnt_ns.exit, label %.sink.split.i.i.i.i, !prof !16

.sink.split.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.f, i32 noundef %.sink.i.i.i.i) #5
  br label %get_mnt_ns.exit

get_mnt_ns.exit:                                  ; preds = %bb.h, %bb.j, %.sink.split.i.i.i.i
  %i.r = getelementptr i8, ptr %i.a, i64 2056
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not37 = icmp eq ptr %i.s, null
  br i1 %.not37, label %bb.k, label %bb.o

bb.k:                                             ; preds = %get_mnt_ns.exit
  tail call void @_raw_spin_unlock(ptr noundef %i.b) #5
  %i.t = getelementptr i8, ptr %i.a, i64 40       ; 3 uses
  %i.u = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.t, i32 -1, ptr elementtype(i32) %i.t) #6, !srcloc !13 ; 2 uses
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = icmp slt i32 %i.u, 1
  br i1 %i.w, label %bb.m, label %put_task_struct.exit39, !prof !14

bb.m:                                             ; preds = %bb.l
  tail call void @refcount_warn_saturate(ptr noundef %i.t, i32 noundef 3) #5
  br label %put_task_struct.exit39

bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !15
  %i.x = getelementptr i8, ptr %i.a, i64 2880
  tail call void @call_rcu(ptr noundef %i.x, ptr noundef @__put_task_struct_rcu_cb) #5
  br label %put_task_struct.exit39

bb.o:                                             ; preds = %get_mnt_ns.exit
  %i.y = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.y) #5
  %i.z = getelementptr i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  call void @path_get(ptr noundef nonnull %2) #5
  call void @_raw_spin_unlock(ptr noundef %i.y) #5
  call void @_raw_spin_unlock(ptr noundef %i.b) #5
  %i.aa = getelementptr i8, ptr %i.a, i64 40      ; 3 uses
  %i.ab = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aa, i32 -1, ptr elementtype(i32) %i.aa) #6, !srcloc !13 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = icmp slt i32 %i.ab, 1
  br i1 %i.ad, label %bb.q, label %put_task_struct.exit40, !prof !14

bb.q:                                             ; preds = %bb.p
  call void @refcount_warn_saturate(ptr noundef %i.aa, i32 noundef 3) #5
  br label %put_task_struct.exit40

bb.r:                                             ; preds = %bb.o
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !15
  %i.ae = getelementptr i8, ptr %i.a, i64 2880
  call void @call_rcu(ptr noundef %i.ae, ptr noundef @__put_task_struct_rcu_cb) #5
  br label %put_task_struct.exit40

put_task_struct.exit40:                           ; preds = %bb.p, %bb.q, %bb.r
  %i.af = call i32 @seq_open_private(ptr noundef %0, ptr noundef @mounts_op, i32 noundef 32) #5 ; 2 uses
  %.not38 = icmp eq i32 %i.af, 0
  br i1 %.not38, label %bb.s, label %bb.t

bb.s:                                             ; preds = %put_task_struct.exit40
  %i.ag = getelementptr i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr i8, ptr %i.f, i64 336
  %i.aj = load i64, ptr %i.ai, align 16
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr i8, ptr %i.ah, i64 88
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.ah, i64 104
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  store ptr %i.f, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.ap = getelementptr i8, ptr %i.an, i64 24
  store ptr %1, ptr %i.ap, align 8
  br label %put_task_struct.exit

bb.t:                                             ; preds = %put_task_struct.exit40
  call void @path_put(ptr noundef nonnull %2) #5
  br label %put_task_struct.exit39

put_task_struct.exit39:                           ; preds = %bb.n, %bb.m, %bb.l, %bb.t
  %.0 = phi i32 [ %i.af, %bb.t ], [ -2, %bb.l ], [ -2, %bb.m ], [ -2, %bb.n ]
  call void @put_mnt_ns(ptr noundef nonnull %i.f) #5
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %bb.g, %bb.f, %bb.e, %put_task_struct.exit39, %bb.a, %bb.s
  %.029 = phi i32 [ 0, %bb.s ], [ %.0, %put_task_struct.exit39 ], [ -22, %bb.a ], [ -22, %bb.e ], [ -22, %bb.f ], [ -22, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.029
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_vfsmnt(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.path, align 8               ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store ptr %1, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 48       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = getelementptr i8, ptr %i.h, i64 128
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 %i.j(ptr noundef %0, ptr noundef %i.d) #5 ; 2 uses
  %.not34 = icmp eq i32 %i.k, 0
  br i1 %.not34, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 112
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef %i.m) #5
  tail call void @seq_escape_mem(ptr noundef %0, ptr noundef %i.m, i64 noundef %i.n, i32 noundef 8, ptr noundef @.str.4) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #5
  %i.o = getelementptr i8, ptr %i.b, i64 8
  %i.p = call i32 @seq_path_root(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.o, ptr noundef @.str) #5 ; 2 uses
  %.not35 = icmp eq i32 %i.p, 0
  br i1 %.not35, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #5
  %i.q = getelementptr i8, ptr %i.f, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = call i64 @strlen(ptr noundef %i.s) #5
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %i.s, i64 noundef %i.t, i32 noundef 8, ptr noundef @.str.4) #5
  %i.u = getelementptr i8, ptr %i.f, i64 1032     ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i38 = icmp eq ptr %i.v, null
  br i1 %.not.i38, label %show_type.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 46) #5
  %i.w = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.x = call i64 @strlen(ptr noundef %i.w) #5
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %i.w, i64 noundef %i.x, i32 noundef 8, ptr noundef @.str.4) #5
  br label %show_type.exit

show_type.exit:                                   ; preds = %bb.e, %bb.f
  %i.y = call zeroext i1 @__mnt_is_readonly(ptr noundef %1) #5
  %i.z = select i1 %i.y, ptr @.str.1, ptr @.str.2
  call void @__seq_puts(ptr noundef %0, ptr noundef nonnull %i.z) #5
  %i.aa = call fastcc i32 @show_sb_opts(ptr noundef %0, ptr noundef %i.f) #7, !srcloc !17 ; 2 uses
  %.not36 = icmp eq i32 %i.aa, 0
  br i1 %.not36, label %bb.g, label %bb.j

bb.g:                                             ; preds = %show_type.exit
  call fastcc void @show_vfsmnt_opts(ptr noundef %0, ptr noundef %1) #7, !srcloc !18
  %i.ab = load ptr, ptr %i.g, align 16
  %i.ac = getelementptr i8, ptr %i.ab, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.ad, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = call i32 %i.ad(ptr noundef %0, ptr noundef %i.ae) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.af, %bb.h ], [ 0, %bb.g ]
  %i.ag = call i32 @seq_write(ptr noundef %0, ptr noundef @.str.3, i64 noundef 5) #5 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %show_type.exit, %bb.d, %bb.b, %bb.i
  %.1 = phi i32 [ %i.k, %bb.b ], [ %i.p, %bb.d ], [ %i.aa, %show_type.exit ], [ %.0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @put_mnt_ns(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__put_task_struct_rcu_cb(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_path_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__mnt_is_readonly(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @show_sb_opts(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 80         ; 4 uses
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = and i64 %i.b, 16
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %seq_puts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.5, i64 noundef 5) #5 ; 0 uses
  %.pre = load i64, ptr %i.a, align 16
  br label %seq_puts.exit

seq_puts.exit:                                    ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = and i64 %i.e, 128
  %.not9.1 = icmp eq i64 %i.f, 0
  br i1 %.not9.1, label %seq_puts.exit.1, label %bb.c

bb.c:                                             ; preds = %seq_puts.exit
  %i.g = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.6, i64 noundef 8) #5 ; 0 uses
  %.pre12 = load i64, ptr %i.a, align 16
  br label %seq_puts.exit.1

seq_puts.exit.1:                                  ; preds = %bb.c, %seq_puts.exit
  %i.h = phi i64 [ %.pre12, %bb.c ], [ %i.e, %seq_puts.exit ] ; 2 uses
  %i.i = and i64 %i.h, 64
  %.not9.2 = icmp eq i64 %i.i, 0
  br i1 %.not9.2, label %seq_puts.exit.2, label %bb.d

bb.d:                                             ; preds = %seq_puts.exit.1
  %i.j = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.7, i64 noundef 5) #5 ; 0 uses
  %.pre14 = load i64, ptr %i.a, align 16
  br label %seq_puts.exit.2

seq_puts.exit.2:                                  ; preds = %bb.d, %seq_puts.exit.1
  %i.k = phi i64 [ %.pre14, %bb.d ], [ %i.h, %seq_puts.exit.1 ]
  %i.l = and i64 %i.k, 33554432
  %.not9.3 = icmp eq i64 %i.l, 0
  br i1 %.not9.3, label %seq_puts.exit.3, label %bb.e

bb.e:                                             ; preds = %seq_puts.exit.2
  %i.m = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.8, i64 noundef 9) #5 ; 0 uses
  br label %seq_puts.exit.3

seq_puts.exit.3:                                  ; preds = %bb.e, %seq_puts.exit.2
  %i.n = tail call i32 @security_sb_show_options(ptr noundef %0, ptr noundef %1) #5
  ret i32 %i.n
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @show_vfsmnt_opts(ptr noundef %0, ptr nofree noundef captures(address) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 7 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %seq_puts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.9, i64 noundef 7) #5 ; 0 uses
  %.pre = load i32, ptr %i.a, align 8
  br label %seq_puts.exit

seq_puts.exit:                                    ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = and i32 %i.e, 2
  %.not9.1 = icmp eq i32 %i.f, 0
  br i1 %.not9.1, label %seq_puts.exit.1, label %bb.c

bb.c:                                             ; preds = %seq_puts.exit
  %i.g = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.10, i64 noundef 6) #5 ; 0 uses
  %.pre13 = load i32, ptr %i.a, align 8
  br label %seq_puts.exit.1

seq_puts.exit.1:                                  ; preds = %bb.c, %seq_puts.exit
  %i.h = phi i32 [ %.pre13, %bb.c ], [ %i.e, %seq_puts.exit ] ; 2 uses
  %i.i = and i32 %i.h, 4
  %.not9.2 = icmp eq i32 %i.i, 0
  br i1 %.not9.2, label %seq_puts.exit.2, label %bb.d

bb.d:                                             ; preds = %seq_puts.exit.1
  %i.j = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.11, i64 noundef 7) #5 ; 0 uses
  %.pre15 = load i32, ptr %i.a, align 8
  br label %seq_puts.exit.2

seq_puts.exit.2:                                  ; preds = %bb.d, %seq_puts.exit.1
  %i.k = phi i32 [ %.pre15, %bb.d ], [ %i.h, %seq_puts.exit.1 ] ; 2 uses
  %i.l = and i32 %i.k, 8
  %.not9.3 = icmp eq i32 %i.l, 0
  br i1 %.not9.3, label %seq_puts.exit.3, label %bb.e

bb.e:                                             ; preds = %seq_puts.exit.2
  %i.m = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.12, i64 noundef 8) #5 ; 0 uses
  %.pre17 = load i32, ptr %i.a, align 8
  br label %seq_puts.exit.3

seq_puts.exit.3:                                  ; preds = %bb.e, %seq_puts.exit.2
  %i.n = phi i32 [ %.pre17, %bb.e ], [ %i.k, %seq_puts.exit.2 ] ; 2 uses
  %i.o = and i32 %i.n, 16
  %.not9.4 = icmp eq i32 %i.o, 0
  br i1 %.not9.4, label %seq_puts.exit.4, label %bb.f

bb.f:                                             ; preds = %seq_puts.exit.3
  %i.p = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.13, i64 noundef 11) #5 ; 0 uses
  %.pre19 = load i32, ptr %i.a, align 8
  br label %seq_puts.exit.4

seq_puts.exit.4:                                  ; preds = %bb.f, %seq_puts.exit.3
  %i.q = phi i32 [ %.pre19, %bb.f ], [ %i.n, %seq_puts.exit.3 ] ; 2 uses
  %i.r = and i32 %i.q, 32
  %.not9.5 = icmp eq i32 %i.r, 0
  br i1 %.not9.5, label %seq_puts.exit.5, label %bb.g

bb.g:                                             ; preds = %seq_puts.exit.4
  %i.s = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.14, i64 noundef 9) #5 ; 0 uses
  %.pre21 = load i32, ptr %i.a, align 8
  br label %seq_puts.exit.5

seq_puts.exit.5:                                  ; preds = %bb.g, %seq_puts.exit.4
  %i.t = phi i32 [ %.pre21, %bb.g ], [ %i.q, %seq_puts.exit.4 ]
  %i.u = and i32 %i.t, 128
  %.not9.6 = icmp eq i32 %i.u, 0
  br i1 %.not9.6, label %seq_puts.exit.6, label %bb.h

bb.h:                                             ; preds = %seq_puts.exit.5
  %i.v = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.15, i64 noundef 12) #5 ; 0 uses
  br label %seq_puts.exit.6

seq_puts.exit.6:                                  ; preds = %bb.h, %seq_puts.exit.5
  %i.w = getelementptr i8, ptr %1, i64 24
  %i.x = load volatile ptr, ptr %i.w, align 8
  %.not10 = icmp eq ptr %i.x, @nop_mnt_idmap
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %seq_puts.exit.6
  %i.y = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.16, i64 noundef 9) #5 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %seq_puts.exit.6
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_sb_show_options(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_mountinfo(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.path, align 8               ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 -32
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store ptr %1, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %1, align 8
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 276
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %1, i64 -16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 308
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %i.e, i64 16
  %i.o = load i32, ptr %i.n, align 16             ; 2 uses
  %i.p = lshr i32 %i.o, 20
  %i.q = and i32 %i.o, 1048575
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.17, i32 noundef %i.i, i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.q) #5
  %i.r = load ptr, ptr %1, align 8
  %i.s = tail call i32 @show_path(ptr noundef %0, ptr noundef %i.r) #5 ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #5
  %i.t = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.u = call i32 @seq_path_root(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.t, ptr noundef @.str) #5 ; 2 uses
  %.not67 = icmp eq i32 %i.u, 0
  br i1 %.not67, label %seq_puts.exit80, label %bb.p

seq_puts.exit80:                                  ; preds = %bb.b
  %i.v = getelementptr i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 64
  %.not68 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not68, ptr @.str.2, ptr @.str.1
  call void @__seq_puts(ptr noundef %0, ptr noundef nonnull %i.y) #5
  call fastcc void @show_vfsmnt_opts(ptr noundef %0, ptr noundef %1) #7, !srcloc !19
  %i.z = getelementptr i8, ptr %1, i64 272        ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 1
  %.not69 = icmp eq i32 %i.ab, 0
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %seq_puts.exit80
  %i.ac = getelementptr i8, ptr %1, i64 288
  %i.ad = load i32, ptr %i.ac, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.18, i32 noundef %i.ad) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %seq_puts.exit80
  %i.ae = getelementptr i8, ptr %1, i64 192
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not70 = icmp eq ptr %i.af, null
  br i1 %.not70, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.af, i64 320
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = call i32 @get_dominating_id(ptr noundef %i.c, ptr noundef %i.t) #5 ; 3 uses
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.19, i32 noundef %i.ah) #5
  %.not71 = icmp eq i32 %i.ai, 0
  %.not72 = icmp eq i32 %i.ai, %i.ah
  %or.cond = select i1 %.not71, i1 true, i1 %.not72
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.20, i32 noundef %i.ai) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.aj = load i32, ptr %i.z, align 8
  %i.ak = and i32 %i.aj, 2
  %.not73 = icmp eq i32 %i.ak, 0
  br i1 %.not73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = call i32 @seq_write(ptr noundef %0, ptr noundef @.str.21, i64 noundef 11) #5 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = call i32 @seq_write(ptr noundef %0, ptr noundef @.str.22, i64 noundef 3) #5 ; 0 uses
  %i.an = getelementptr i8, ptr %i.e, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = call i64 @strlen(ptr noundef %i.ap) #5
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %i.ap, i64 noundef %i.aq, i32 noundef 8, ptr noundef @.str.4) #5
  %i.ar = getelementptr i8, ptr %i.e, i64 1032    ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i81 = icmp eq ptr %i.as, null
  br i1 %.not.i81, label %show_type.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 46) #5
  %i.at = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.au = call i64 @strlen(ptr noundef %i.at) #5
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %i.at, i64 noundef %i.au, i32 noundef 8, ptr noundef @.str.4) #5
  br label %show_type.exit

show_type.exit:                                   ; preds = %bb.i, %bb.j
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #5
  %i.av = getelementptr i8, ptr %i.e, i64 48      ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 16
  %i.ax = getelementptr i8, ptr %i.aw, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not74 = icmp eq ptr %i.ay, null
  br i1 %.not74, label %bb.l, label %bb.k

bb.k:                                             ; preds = %show_type.exit
  %i.az = load ptr, ptr %1, align 8
  %i.ba = call i32 %i.ay(ptr noundef %0, ptr noundef %i.az) #5 ; 2 uses
  %.not75 = icmp eq i32 %i.ba, 0
  br i1 %.not75, label %seq_puts.exit, label %bb.p

bb.l:                                             ; preds = %show_type.exit
  %i.bb = getelementptr i8, ptr %1, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = call i64 @strlen(ptr noundef %i.bc) #5
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %i.bc, i64 noundef %i.bd, i32 noundef 8, ptr noundef @.str.4) #5
  br label %seq_puts.exit

seq_puts.exit:                                    ; preds = %bb.l, %bb.k
  %i.be = getelementptr i8, ptr %i.e, i64 80
  %.val = load i64, ptr %i.be, align 16
  %i.bf = trunc i64 %.val to i1
  %i.bg = select i1 %i.bf, ptr @.str.1, ptr @.str.2
  call void @__seq_puts(ptr noundef %0, ptr noundef nonnull %i.bg) #5
  %i.bh = call fastcc i32 @show_sb_opts(ptr noundef %0, ptr noundef %i.e) #7, !srcloc !20 ; 2 uses
  %.not76 = icmp eq i32 %i.bh, 0
  br i1 %.not76, label %bb.m, label %bb.p

bb.m:                                             ; preds = %seq_puts.exit
  %i.bi = load ptr, ptr %i.av, align 16
  %i.bj = getelementptr i8, ptr %i.bi, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not77 = icmp eq ptr %i.bk, null
  br i1 %.not77, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %1, align 8
  %i.bm = call i32 %i.bk(ptr noundef %0, ptr noundef %i.bl) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i32 [ %i.bm, %bb.n ], [ 0, %bb.m ]
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #5
  br label %bb.p

bb.p:                                             ; preds = %seq_puts.exit, %bb.k, %bb.b, %bb.a, %bb.o
  %.1 = phi i32 [ %i.s, %bb.a ], [ %i.u, %bb.b ], [ %i.ba, %bb.k ], [ %i.bh, %seq_puts.exit ], [ %.0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @show_path(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_dominating_id(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_vfsstat(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.path, align 8               ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store ptr %1, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.23, i64 noundef 7) #5 ; 0 uses
  %i.h = getelementptr i8, ptr %i.f, i64 48       ; 3 uses
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = getelementptr i8, ptr %i.i, i64 128
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 %i.k(ptr noundef %0, ptr noundef %i.d) #5 ; 2 uses
  %.not28 = icmp eq i32 %i.l, 0
  br i1 %.not28, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call i64 @strlen(ptr noundef %i.n) #5
  tail call void @seq_escape_mem(ptr noundef %0, ptr noundef %i.n, i64 noundef %i.o, i32 noundef 8, ptr noundef @.str.4) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = tail call i32 @seq_write(ptr noundef %0, ptr noundef @.str.24, i64 noundef 12) #5 ; 0 uses
  %i.q = getelementptr i8, ptr %i.b, i64 8
  %i.r = call i32 @seq_path_root(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.q, ptr noundef @.str) #5 ; 2 uses
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #5
  %i.s = call i32 @seq_write(ptr noundef %0, ptr noundef @.str.25, i64 noundef 12) #5 ; 0 uses
  %i.t = getelementptr i8, ptr %i.f, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = call i64 @strlen(ptr noundef %i.v) #5
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %i.v, i64 noundef %i.w, i32 noundef 8, ptr noundef @.str.4) #5
  %i.x = getelementptr i8, ptr %i.f, i64 1032     ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %show_type.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 46) #5
  %i.z = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.aa = call i64 @strlen(ptr noundef %i.z) #5
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %i.z, i64 noundef %i.aa, i32 noundef 8, ptr noundef @.str.4) #5
  br label %show_type.exit

show_type.exit:                                   ; preds = %bb.e, %bb.f
  %i.ab = load ptr, ptr %i.h, align 16
  %i.ac = getelementptr i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not30 = icmp eq ptr %i.ad, null
  br i1 %.not30, label %bb.h, label %bb.g

bb.g:                                             ; preds = %show_type.exit
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #5
  %i.ae = load ptr, ptr %i.h, align 16
  %i.af = getelementptr i8, ptr %i.ae, i64 144
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = call i32 %i.ag(ptr noundef %0, ptr noundef %i.ah) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %show_type.exit
  %.0 = phi i32 [ %i.ai, %bb.g ], [ 0, %show_type.exit ]
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.b, %bb.h
  %.1 = phi i32 [ %i.l, %bb.b ], [ %i.r, %bb.d ], [ %.0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.1
}

attributes #0 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { nounwind }
attributes #7 = { noredzone "no-builtin-wcslen" }

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
!10 = distinct !{null}
!11 = !{i64 2157977978}
!12 = !{!"auto-init"}
!13 = !{i64 2148068250, i64 2148068289, i64 2148068310, i64 2148068347, i64 2148068370, i64 2148068379}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{i64 2148580061}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i64 3044}
!18 = !{i64 3088}
!19 = !{i64 3894}
!20 = !{i64 4607}
end_hunk_0
