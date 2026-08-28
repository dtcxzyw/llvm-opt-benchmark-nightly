Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pid_namespace?download=true
inline.NumInlined: 59
inline.NumDeleted: 36
begin_hunk_0_@pidns_install:bb.a
  %.not10.i.i.i.i = icmp sgt i32 %i.ar, -1
  br i1 %.not10.i.i.i.i, label %get_pid_ns.exit, label %.sink.split.i.i.i.i, !prof !12

.sink.split.i.i.i.i:                              ; preds = %bb.l, %bb.k
  %.sink.i.i.i.i = phi i32 [ 2, %bb.k ], [ 1, %bb.l ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i) #12
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %put_pid_ns.exit, %bb.j, %bb.l, %.sink.split.i.i.i.i
  store ptr %i.f, ptr %i.aa, align 8
  br label %pidns_is_ancestor.exit.thread

pidns_is_ancestor.exit.thread:                    ; preds = %bb.c, %pidns_is_ancestor.exit, %bb.a, %bb.b, %get_pid_ns.exit
  %.0 = phi i32 [ 0, %get_pid_ns.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -22, %pidns_is_ancestor.exit ], [ -22, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal ptr @pidns_owner(ptr nofree noundef readonly captures(none) %0) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -56
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pidns_get_parent(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !13
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call ptr @task_active_pid_ns(ptr noundef %i.b) #12
  %i.d = getelementptr i8, ptr %0, i64 -72
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.09 = phi ptr [ %i.h, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.09, %i.c
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.09, i64 184
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %i.e, i64 256      ; 3 uses
  %i.j = getelementptr i8, ptr %i.e, i64 352
  %i.k = load i64, ptr %i.j, align 32
  %i.l = icmp ult i64 %i.k, 9
  br i1 %i.l, label %get_pid_ns.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 1, ptr elementtype(i32) %i.i) #11, !srcloc !10 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.n = add i32 %i.m, 1
  %i.o = or i32 %i.n, %i.m
  %.not10.i.i.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not10.i.i.i.i, label %get_pid_ns.exit, label %.sink.split.i.i.i.i, !prof !12

.sink.split.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]
  tail call void @refcount_warn_saturate(ptr noundef %i.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %bb.c, %bb.e, %.sink.split.i.i.i.i
  %i.p = getelementptr i8, ptr %i.e, i64 256
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %get_pid_ns.exit
  %.07 = phi ptr [ %i.p, %get_pid_ns.exit ], [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %bb.b ]
  ret ptr %.07
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pidns_for_children_get(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2272       ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.a) #12
  %i.b = getelementptr i8, ptr %0, i64 2088
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %get_pid_ns.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %get_pid_ns.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 256      ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 352
  %i.h = load i64, ptr %i.g, align 32
  %i.i = icmp ult i64 %i.h, 9
  br i1 %i.i, label %get_pid_ns.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #11, !srcloc !10 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.k = add i32 %i.j, 1
  %i.l = or i32 %i.k, %i.j
  %.not10.i.i.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not10.i.i.i.i, label %get_pid_ns.exit, label %.sink.split.i.i.i.i, !prof !12

.sink.split.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]
  tail call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef %.sink.i.i.i.i) #12
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %.sink.split.i.i.i.i, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.e ], [ %i.e, %.sink.split.i.i.i.i ] ; 2 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.a) #12
  %.not8 = icmp eq ptr %.0, null
  %i.m = getelementptr i8, ptr %.0, i64 256
  %i.n = select i1 %.not8, ptr null, ptr %i.m
  ret ptr %i.n
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @pid_namespaces_init() #7 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.kmem_cache_args, align 8    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store i32 64, ptr %0, align 8
  %i.a = call ptr @__kmem_cache_create_args(ptr noundef nonnull @.str.3, i32 noundef 576, ptr noundef nonnull %0, i32 noundef 256) #12
  store ptr %i.a, ptr @pid_ns_cachep, align 8
  %i.b = call ptr @register_sysctl_sz(ptr noundef nonnull @.str.4, ptr noundef nonnull @pid_ns_ctl_table_vm, i64 noundef 1) #12 ; 0 uses
  %i.c = call i64 @__ns_tree_gen_id(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_pid_ns, i64 256), i64 noundef 4) #12 ; 0 uses
  call void @__ns_tree_add_raw(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_pid_ns, i64 256), ptr noundef nonnull @pid_ns_tree) #12
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc_noprof(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ns_common_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @register_pidns_sysctls(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroy_pid_namespace_work(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -512
  br label %bb.b

bb.b:                                             ; preds = %__ns_ref_put.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.c, %__ns_ref_put.exit ] ; 5 uses
  %i.b = getelementptr i8, ptr %.0, i64 184
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr i8, ptr %.0, i64 256       ; 2 uses
  tail call void @__ns_tree_remove(ptr noundef %i.d, ptr noundef nonnull @pid_ns_tree) #12
  tail call void @unregister_pidns_sysctls(ptr noundef %.0) #12
  tail call void @__ns_common_free(ptr noundef %i.d) #12
  tail call void @idr_destroy(ptr noundef %.0) #12
  %i.e = getelementptr i8, ptr %.0, i64 24
  tail call void @call_rcu(ptr noundef %i.e, ptr noundef nonnull @delayed_free_pidns) #12
  %.not = icmp eq ptr %i.c, @init_pid_ns
  %.not10 = icmp eq ptr %i.c, null
  %or.cond = or i1 %.not, %.not10
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 352
  %i.g = load i64, ptr %i.f, align 32
  %i.h = icmp ult i64 %i.g, 9
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.c, i64 256      ; 3 uses
  %i.j = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 -1, ptr elementtype(i32) %i.i) #11, !srcloc !10 ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %__ns_ref_put.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %i.j, 1
  br i1 %i.l, label %bb.f, label %.critedge, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @refcount_warn_saturate(ptr noundef %i.i, i32 noundef 3) #12
  br label %.critedge

__ns_ref_put.exit:                                ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  br label %bb.b, !llvm.loop !25

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.f, %bb.e
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ns_common_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @inc_ucount(ptr noundef, i32, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__kmem_cache_create_args(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ns_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unregister_pidns_sysctls(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delayed_free_pidns(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -24
  %i.b = getelementptr i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 16
  tail call void @dec_ucount(ptr noundef %i.c, i32 noundef 1) #12
  %i.d = load ptr, ptr @pid_ns_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.d, ptr noundef %i.a) #12
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__ns_tree_gen_id(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ns_tree_add_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @register_sysctl_sz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pid_mfd_noexec_dointvec_minmax(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.ctl_table, align 8          ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !13
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @task_active_pid_ns(ptr noundef %i.d) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = icmp ne i32 %1, 0                        ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.e, i64 200
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i1 @ns_capable(ptr noundef %i.h, i32 noundef 21) #12
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.j = getelementptr i8, ptr %i.e, i64 184
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not15.i = icmp eq ptr %i.k, null
  br i1 %.not15.i, label %pidns_memfd_noexec_scope.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.017.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.k, %bb.c ] ; 2 uses
  %.01416.i = phi i32 [ %i.n, %.lr.ph.i ], [ 0, %bb.c ]
  %i.l = getelementptr i8, ptr %.017.i, i64 44
  %i.m = load volatile i32, ptr %i.l, align 4
  %i.n = tail call i32 @llvm.smax.i32(i32 %.01416.i, i32 %i.m) ; 2 uses
  %i.o = getelementptr i8, ptr %.017.i, i64 184
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %pidns_memfd_noexec_scope.exit, label %.lr.ph.i, !llvm.loop !16

pidns_memfd_noexec_scope.exit:                    ; preds = %.lr.ph.i, %bb.c
  %.014.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.n, %.lr.ph.i ] ; 2 uses
  store i32 %.014.lcssa.i, ptr %i.b, align 4
  %i.q = getelementptr i8, ptr %i.e, i64 44       ; 2 uses
  %i.r = load volatile i32, ptr %i.q, align 4
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.014.lcssa.i)
  store i32 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.b, ptr %i.u, align 8
  %i.v = call i32 @proc_dointvec_minmax(ptr noundef nonnull %5, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %or.cond = and i1 %i.f, %i.w
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %pidns_memfd_noexec_scope.exit
  %i.x = load i32, ptr %i.a, align 4
  store volatile i32 %i.x, ptr %i.q, align 4
  br label %bb.e

bb.e:                                             ; preds = %pidns_memfd_noexec_scope.exit, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ %i.v, %pidns_memfd_noexec_scope.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone noreturn null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind "no-builtin-wcslen" }
attributes #13 = { nounwind memory(none) }
attributes #14 = { noredzone "no-builtin-wcslen" }
attributes #15 = { noredzone noreturn nounwind "no-builtin-wcslen" }

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
!10 = !{i64 2148213102, i64 2148213141, i64 2148213162, i64 2148213199, i64 2148213222, i64 2148213231}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i64 2149675727}
!14 = !{!"auto-init"}
!15 = !{i64 2855}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i64 2150830338}
!19 = distinct !{!19, !17}
!20 = !{i64 2149170510, i64 2149170549, i64 2149170570, i64 2149170607, i64 2149170630, i64 2149170501}
!21 = distinct !{!21, !17}
!22 = !{i64 2148822247, i64 2148822287, i64 2148822404, i64 2148822425, i64 2148822468, i64 2148822483, i64 2148822516, i64 2148822550, i64 2148822574}
!23 = !{i64 2158448635}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
end_hunk_0
