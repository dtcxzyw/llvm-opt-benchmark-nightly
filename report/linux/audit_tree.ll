inline.NumInlined: 195
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@audit_remove_tree_rule:bb.a
  %i.n = getelementptr i8, ptr %i.b, i64 72       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.q, align 8
  store volatile ptr %i.p, ptr %i.o, align 8
  store volatile ptr %i.m, ptr %i.m, align 8
  store volatile ptr %i.m, ptr %i.n, align 8
  store i32 1, ptr %i.j, align 4
  %i.r = getelementptr i8, ptr %i.b, i64 48       ; 4 uses
  %i.s = getelementptr i8, ptr %i.b, i64 56       ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %i.v, align 8
  store volatile ptr %i.u, ptr %i.t, align 8
  %i.w = load ptr, ptr @prune_list, align 8       ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.r, ptr %i.x, align 8
  store ptr %i.w, ptr %i.r, align 8
  store ptr @prune_list, ptr %i.s, align 8
  store volatile ptr %i.r, ptr @prune_list, align 8
  store ptr null, ptr %i.a, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hash_lock) #16
  %i.y = load ptr, ptr @prune_thread, align 8
  %i.z = tail call i32 @wake_up_process(ptr noundef %i.y) #16 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hash_lock) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @audit_trim_trees() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.list_head, align 8          ; 12 uses
  %1 = alloca %struct.path, align 8               ; 6 uses
  %2 = alloca [16 x %struct.path], align 16       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  tail call void @mutex_lock(ptr noundef nonnull @audit_filter_mutex) #16
  %i.a = load ptr, ptr @tree_list, align 8        ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr @tree_list, ptr %i.c, align 8
  store volatile ptr %0, ptr @tree_list, align 8
  %.not40 = icmp eq ptr %i.a, @tree_list
  br i1 %.not40, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.a, %put_tree.exit
  %i.d = phi ptr [ %.pr, %put_tree.exit ], [ %i.a, %bb.a ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %2, i8 0, i64 256, i1 false), !annotation !19
  %i.e = getelementptr i8, ptr %i.d, i64 -48      ; 9 uses
  %i.f = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 1, ptr elementtype(i32) %i.e) #15, !srcloc !11 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.b, !prof !12

bb.b:                                             ; preds = %.lr.ph42
  %i.g = add i32 %i.f, 1
  %i.h = or i32 %i.g, %i.f
  %.not10.i.i.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not10.i.i.i.i, label %get_tree.exit, label %.sink.split.i.i.i.i, !prof !20

.sink.split.i.i.i.i:                              ; preds = %bb.b, %.lr.ph42
  %.sink.i.i.i.i = phi i32 [ 2, %.lr.ph42 ], [ 1, %bb.b ]
  call void @refcount_warn_saturate(ptr noundef %i.e, i32 noundef %.sink.i.i.i.i) #16
  br label %get_tree.exit

get_tree.exit:                                    ; preds = %bb.b, %.sink.split.i.i.i.i
  %i.i = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8
  store volatile ptr %i.j, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store ptr %0, ptr %i.m, align 8
  store ptr %i.l, ptr %0, align 8
  store ptr %i.d, ptr %i.c, align 8
  store volatile ptr %0, ptr %i.d, align 8
  call void @mutex_unlock(ptr noundef nonnull @audit_filter_mutex) #16
  %i.n = getelementptr i8, ptr %i.d, i64 48
  %i.o = call i32 @kern_path(ptr noundef %i.n, i32 noundef 0, ptr noundef nonnull %1) #16
  %.not30 = icmp eq i32 %i.o, 0
  br i1 %.not30, label %bb.c, label %bb.h

bb.c:                                             ; preds = %get_tree.exit
  %i.p = call ptr @collect_paths(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 16) #16 ; 4 uses
  call void @path_put(ptr noundef nonnull %1) #16
  %i.q = icmp ugt ptr %i.p, inttoptr (i64 -4096 to ptr)
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_raw_spin_lock(ptr noundef nonnull @hash_lock) #16
  %i.r = getelementptr i8, ptr %i.d, i64 -32      ; 3 uses
  %.037 = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not3438 = icmp eq ptr %.037, %i.r
  br i1 %.not3438, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.p, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.loopexit
  %.039 = phi ptr [ %.037, %.lr.ph ], [ %.0, %.loopexit ] ; 3 uses
  %i.t = getelementptr i8, ptr %.039, i64 24      ; 3 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = or i32 %i.u, -2147483648
  store i32 %i.v, ptr %i.t, align 8
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not3235 = icmp eq ptr %i.w, null
  br i1 %.not3235, label %.loopexit, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.e
  %i.x = and i32 %i.u, 2147483647                 ; 2 uses
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr [32 x i8], ptr %.039, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -64
  %i.ac = load i64, ptr %i.ab, align 8
  br label %.critedge

bb.f:                                             ; preds = %.critedge
  %i.ad = getelementptr i8, ptr %.02836, i64 16
  %i.ae = getelementptr i8, ptr %.02836, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.af, null
  br i1 %.not32, label %.loopexit, label %.critedge, !llvm.loop !21

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.f
  %i.ag = phi ptr [ %i.w, %.critedge.lr.ph ], [ %i.af, %bb.f ]
  %.02836 = phi ptr [ %i.p, %.critedge.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 528
  %i.ak = ptrtoint ptr %i.aj to i64
  %.not33 = icmp eq i64 %i.ac, %i.ak
  br i1 %.not33, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.critedge
  store i32 %i.x, ptr %i.t, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.g
  %.0 = load ptr, ptr %.039, align 8              ; 2 uses
  %.not34 = icmp eq ptr %.0, %i.r
  br i1 %.not34, label %._crit_edge, label %bb.e, !llvm.loop !22

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  call void @_raw_spin_unlock(ptr noundef nonnull @hash_lock) #16
  call fastcc void @trim_marked(ptr noundef %i.e) #17, !srcloc !23
  call void @drop_collected_paths(ptr noundef %i.p, ptr noundef nonnull %2) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %get_tree.exit, %._crit_edge
  %i.al = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 -1, ptr elementtype(i32) %i.e) #15, !srcloc !11 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %refcount_dec_and_test.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = icmp slt i32 %i.al, 1
  br i1 %i.an, label %bb.j, label %put_tree.exit, !prof !12

bb.j:                                             ; preds = %bb.i
  call void @refcount_warn_saturate(ptr noundef %i.e, i32 noundef 3) #16
  br label %put_tree.exit

refcount_dec_and_test.exit.i:                     ; preds = %bb.h
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %put_tree.exit, label %bb.k

bb.k:                                             ; preds = %refcount_dec_and_test.exit.i
  %i.ao = getelementptr i8, ptr %i.d, i64 32
  call void @kvfree_call_rcu(ptr noundef %i.ao, ptr noundef nonnull %i.e) #16
  br label %put_tree.exit

put_tree.exit:                                    ; preds = %bb.i, %bb.j, %refcount_dec_and_test.exit.i, %bb.k
  call void @mutex_lock(ptr noundef nonnull @audit_filter_mutex) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.pr = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %.pr, @tree_list
  br i1 %.not, label %._crit_edge43.loopexit, label %.lr.ph42, !llvm.loop !24

._crit_edge43.loopexit:                           ; preds = %put_tree.exit
  %.pre = load ptr, ptr %i.c, align 8
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %bb.a
  %i.ap = phi ptr [ @tree_list, %bb.a ], [ %.pre, %._crit_edge43.loopexit ] ; 2 uses
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @tree_list, i64 8), align 8
  store volatile ptr @tree_list, ptr %i.ap, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.c, align 8
  call void @mutex_unlock(ptr noundef nonnull @audit_filter_mutex) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @collect_paths(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @trim_marked(ptr noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_spin_lock(ptr noundef nonnull @hash_lock) #16
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hash_lock) #16
  br label %prune_one.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not2125 = icmp eq ptr %i.d, %i.c
  br i1 %.not2125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.026 = phi ptr [ %i.e, %bb.e ], [ %i.d, %bb.c ] ; 9 uses
  %i.e = load ptr, ptr %.026, align 8             ; 4 uses
  %i.f = getelementptr i8, ptr %.026, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %.not24 = icmp sgt i32 %i.g, -1
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.026, i64 8       ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store volatile ptr %i.e, ptr %i.i, align 8
  store volatile ptr %.026, ptr %.026, align 8
  store volatile ptr %.026, ptr %i.h, align 8
  %i.k = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %.026, ptr %i.l, align 8
  store ptr %i.k, ptr %.026, align 8
  store ptr %i.c, ptr %i.h, align 8
  store volatile ptr %.026, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.not21 = icmp eq ptr %i.e, %i.c
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.e, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hash_lock) #16
  tail call fastcc void @prune_tree_chunks(ptr noundef %0, i1 noundef zeroext true) #17, !srcloc !26
  tail call void @_raw_spin_lock(ptr noundef nonnull @hash_lock) #16
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %bb.f, label %bb.k

bb.f:                                             ; preds = %._crit_edge
  %i.o = load i32, ptr %i.a, align 4
  %.not23 = icmp eq i32 %i.o, 0
  br i1 %.not23, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.a, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hash_lock) #16
  tail call void @mutex_lock(ptr noundef nonnull @audit_filter_mutex) #16
  %i.p = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !27
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 2192
  %i.s = load ptr, ptr %i.r, align 16
  tail call fastcc void @kill_rules(ptr noundef %i.s, ptr noundef %0) #17, !srcloc !28
  %i.t = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.u = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.x, align 8
  store volatile ptr %i.w, ptr %i.v, align 8
  store volatile ptr %i.t, ptr %i.t, align 8
  store volatile ptr %i.t, ptr %i.u, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @audit_filter_mutex) #16
  tail call fastcc void @prune_tree_chunks(ptr noundef %0, i1 noundef zeroext false) #17, !srcloc !29
  %i.y = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 -1, ptr elementtype(i32) %0) #15, !srcloc !11 ; 2 uses
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %refcount_dec_and_test.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.y, 1
  br i1 %i.aa, label %bb.i, label %prune_one.exit, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #16
  br label %prune_one.exit

refcount_dec_and_test.exit.i.i:                   ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %prune_one.exit, label %bb.j

bb.j:                                             ; preds = %refcount_dec_and_test.exit.i.i
  %i.ab = getelementptr i8, ptr %0, i64 80
  tail call void @kvfree_call_rcu(ptr noundef %i.ab, ptr noundef nonnull %0) #16
  br label %prune_one.exit

bb.k:                                             ; preds = %bb.f, %._crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hash_lock) #16
  br label %prune_one.exit

prune_one.exit:                                   ; preds = %bb.j, %refcount_dec_and_test.exit.i.i, %bb.i, %bb.h, %bb.k, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drop_collected_paths(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @put_tree(ptr noundef %0) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 -1, ptr elementtype(i32) %0) #15, !srcloc !11 ; 2 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %refcount_dec_and_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, 1
  br i1 %i.c, label %bb.c, label %refcount_dec_and_test.exit.thread, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #16
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit:                       ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %refcount_dec_and_test.exit.thread, label %bb.d

bb.d:                                             ; preds = %refcount_dec_and_test.exit
  %i.d = getelementptr i8, ptr %0, i64 80
  tail call void @kvfree_call_rcu(ptr noundef %i.d, ptr noundef nonnull %0) #16
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit.thread:                ; preds = %bb.c, %bb.b, %bb.d, %refcount_dec_and_test.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @audit_make_tree(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %.not = icmp eq i8 %i.a, 47
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not13 = icmp eq i32 %i.c, 4
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne i32 %i.c, 7
  %i.e = icmp ne i32 %2, 0
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old1.not = icmp eq i32 %2, 0
  br i1 %.old1.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 304
  %i.g = load ptr, ptr %i.f, align 8
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
end_hunk_0
