Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/audit_tree?download=true
inline.NumInlined: 195
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@audit_put_chunk:bb.a
  tail call void @llvm.assume(i1 %i.c)
  %i.d = trunc nuw i8 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %free_chunk.exit

.lr.ph.i:                                         ; preds = %bb.b, %put_tree.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %put_tree.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr [32 x i8], ptr %0, i64 %indvars.iv.i
  %i.i = getelementptr i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %put_tree.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.j, i32 -1, ptr nonnull elementtype(i32) %i.j) #15, !srcloc !13 ; 2 uses
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.k, 1
  br i1 %i.m, label %bb.e, label %put_tree.exit.i, !prof !14

bb.e:                                             ; preds = %bb.d
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.j, i32 noundef 3) #16
  br label %put_tree.exit.i

bb.f:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
  %i.n = getelementptr i8, ptr %i.j, i64 80
  tail call void @kvfree_call_rcu(ptr noundef %i.n, ptr noundef nonnull %i.j) #16
  br label %put_tree.exit.i

put_tree.exit.i:                                  ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = load i32, ptr %i.e, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.q, label %.lr.ph.i, label %free_chunk.exit, !llvm.loop !0

free_chunk.exit:                                  ; preds = %put_tree.exit.i, %bb.b
  tail call void @kfree(ptr noundef %0) #16
  br label %bb.g

bb.g:                                             ; preds = %free_chunk.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @audit_tree_lookup(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 528
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = lshr i64 %i.b, 6
  %i.d = and i64 %i.c, 127
  %i.e = getelementptr [16 x i8], ptr @chunk_hash_heads, i64 %i.d ; 3 uses
  %i.f = load volatile ptr, ptr %i.e, align 16    ; 2 uses
  %.not19 = icmp eq ptr %i.f, %i.e
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.01720 = phi ptr [ %i.k, %bb.c ], [ %i.f, %bb.a ] ; 4 uses
  %i.g = getelementptr i8, ptr %.01720, i64 16
  %i.h = load volatile i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, %i.b
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %.01720, i64 56    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.j, ptr elementtype(i64) %i.j) #15, !srcloc !25
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.k = load volatile ptr, ptr %.01720, align 8  ; 2 uses
  %.not = icmp eq ptr %i.k, %i.e
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !24

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ %.01720, %bb.b ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local noundef zeroext i1 @audit_tree_match(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.d = getelementptr [32 x i8], ptr %0, i64 %indvars.iv
  %i.e = getelementptr i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, %1                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.g, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @audit_remove_tree_rule(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_lock(ptr noundef @hash_lock) #16
  %i.c = getelementptr i8, ptr %0, i64 336        ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 344        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.g, align 8
  store volatile ptr %i.f, ptr %i.e, align 8
  store volatile ptr %i.c, ptr %i.c, align 8
  store volatile ptr %i.c, ptr %i.d, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.i = load volatile ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %i.i, %i.h
  br i1 %.not14, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 8
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 64       ; 4 uses
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
  tail call void @_raw_spin_unlock(ptr noundef @hash_lock) #16
  %i.y = load ptr, ptr @prune_thread, align 8
  %i.z = tail call i32 @wake_up_process(ptr noundef %i.y) #16 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8
  tail call void @_raw_spin_unlock(ptr noundef @hash_lock) #16
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
  tail call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  %i.a = load ptr, ptr @tree_list, align 8        ; 5 uses
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %2, i8 0, i64 256, i1 false), !annotation !17
  %i.e = getelementptr i8, ptr %i.d, i64 -48      ; 9 uses
  %i.f = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 1, ptr elementtype(i32) %i.e) #15, !srcloc !13 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %.lr.ph42
  %i.g = add i32 %i.f, 1
  %i.h = or i32 %i.g, %i.f
  %.not10.i.i.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not10.i.i.i.i, label %get_tree.exit, label %.sink.split.i.i.i.i, !prof !18

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
  call void @mutex_unlock(ptr noundef @audit_filter_mutex) #16
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
  call void @_raw_spin_lock(ptr noundef @hash_lock) #16
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
  br i1 %.not32, label %.loopexit, label %.critedge, !llvm.loop !27

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
  br i1 %.not34, label %._crit_edge, label %bb.e, !llvm.loop !28

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  call void @_raw_spin_unlock(ptr noundef @hash_lock) #16
  call fastcc void @trim_marked(ptr noundef %i.e) #17, !srcloc !30
  call void @drop_collected_paths(ptr noundef %i.p, ptr noundef nonnull %2) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %get_tree.exit, %._crit_edge
  %i.al = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 -1, ptr elementtype(i32) %i.e) #15, !srcloc !13 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %refcount_dec_and_test.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = icmp slt i32 %i.al, 1
  br i1 %i.an, label %bb.j, label %put_tree.exit, !prof !14

bb.j:                                             ; preds = %bb.i
  call void @refcount_warn_saturate(ptr noundef %i.e, i32 noundef 3) #16
  br label %put_tree.exit

refcount_dec_and_test.exit.i:                     ; preds = %bb.h
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %put_tree.exit, label %bb.k

bb.k:                                             ; preds = %refcount_dec_and_test.exit.i
  %i.ao = getelementptr i8, ptr %i.d, i64 32
  call void @kvfree_call_rcu(ptr noundef %i.ao, ptr noundef nonnull %i.e) #16
  br label %put_tree.exit

put_tree.exit:                                    ; preds = %bb.i, %bb.j, %refcount_dec_and_test.exit.i, %bb.k
  call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.pr = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %.pr, @tree_list
  br i1 %.not, label %._crit_edge43.loopexit, label %.lr.ph42, !llvm.loop !29

._crit_edge43.loopexit:                           ; preds = %put_tree.exit
  %.pre = load ptr, ptr %i.c, align 8
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %bb.a
  %i.ap = phi ptr [ @tree_list, %bb.a ], [ %.pre, %._crit_edge43.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %i.a, %bb.a ], [ %.pr, %._crit_edge43.loopexit ] ; 2 uses
  %3 = getelementptr i8, ptr %.lcssa, i64 8
  store ptr %i.ap, ptr %3, align 8
  store volatile ptr %.lcssa, ptr %i.ap, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.c, align 8
  call void @mutex_unlock(ptr noundef @audit_filter_mutex) #16
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
  tail call void @_raw_spin_lock(ptr noundef @hash_lock) #16
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_unlock(ptr noundef @hash_lock) #16
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
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.e, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef @hash_lock) #16
  tail call fastcc void @prune_tree_chunks(ptr noundef %0, i1 noundef zeroext true) #17, !srcloc !32
  tail call void @_raw_spin_lock(ptr noundef @hash_lock) #16
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
  tail call void @_raw_spin_unlock(ptr noundef @hash_lock) #16
  tail call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  %i.p = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #18, !srcloc !19
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 2192
  %i.s = load ptr, ptr %i.r, align 16
  tail call fastcc void @kill_rules(ptr noundef %i.s, ptr noundef %0) #17, !srcloc !33
  %i.t = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.u = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.x, align 8
  store volatile ptr %i.w, ptr %i.v, align 8
  store volatile ptr %i.t, ptr %i.t, align 8
  store volatile ptr %i.t, ptr %i.u, align 8
  tail call void @mutex_unlock(ptr noundef @audit_filter_mutex) #16
  tail call fastcc void @prune_tree_chunks(ptr noundef %0, i1 noundef zeroext false) #17, !srcloc !20
  %i.y = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 -1, ptr elementtype(i32) %0) #15, !srcloc !13 ; 2 uses
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %refcount_dec_and_test.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.y, 1
  br i1 %i.aa, label %bb.i, label %prune_one.exit, !prof !14

bb.i:                                             ; preds = %bb.h
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #16
  br label %prune_one.exit

refcount_dec_and_test.exit.i.i:                   ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %prune_one.exit, label %bb.j

bb.j:                                             ; preds = %refcount_dec_and_test.exit.i.i
  %i.ab = getelementptr i8, ptr %0, i64 80
  tail call void @kvfree_call_rcu(ptr noundef %i.ab, ptr noundef nonnull %0) #16
  br label %prune_one.exit

bb.k:                                             ; preds = %bb.f, %._crit_edge
  tail call void @_raw_spin_unlock(ptr noundef @hash_lock) #16
  br label %prune_one.exit

prune_one.exit:                                   ; preds = %bb.j, %refcount_dec_and_test.exit.i.i, %bb.i, %bb.h, %bb.k, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drop_collected_paths(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @put_tree(ptr noundef %0) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 -1, ptr elementtype(i32) %0) #15, !srcloc !13 ; 2 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %refcount_dec_and_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, 1
  br i1 %i.c, label %bb.c, label %refcount_dec_and_test.exit.thread, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #16
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit:                       ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
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
  %i.h = getelementptr i8, ptr %0, i64 312
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_0
begin_hunk_1_@audit_tag_tree:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %6, i8 0, i64 256, i1 false), !annotation !17
  %i.a = call i32 @kern_path(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5) #16 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.b = call ptr @collect_paths(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 16) #16 ; 5 uses
  call void @path_put(ptr noundef nonnull %5) #16
  %i.c = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = trunc i64 %i.d to i32
  br label %bb.ae

bb.d:                                             ; preds = %bb.b
  %i.f = call i32 @kern_path(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #16 ; 2 uses
  %.not53 = icmp eq i32 %i.f, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @drop_collected_paths(ptr noundef %i.b, ptr noundef nonnull %6) #16
  br label %bb.ae

bb.f:                                             ; preds = %bb.d
  call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  %i.g = load ptr, ptr @tree_list, align 8        ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr @tree_list, ptr %i.i, align 8
  store volatile ptr %3, ptr @tree_list, align 8
  store ptr %2, ptr %i.h, align 8
  store ptr %i.g, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %3, ptr %i.j, align 8
  store volatile ptr %2, ptr %3, align 8
  %.not5484 = icmp eq ptr %i.g, @tree_list
  br i1 %.not5484, label %.loopexit, label %.lr.ph

thread-pre-split:                                 ; preds = %put_tree.exit, %bb.t, %bb.u, %refcount_dec_and_test.exit.i65, %bb.v
  %.pr = load ptr, ptr %2, align 8                ; 2 uses
  %.not54 = icmp eq ptr %.pr, @tree_list
  br i1 %.not54, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %thread-pre-split
  %i.k = phi ptr [ %.pr, %thread-pre-split ], [ %i.g, %bb.f ] ; 14 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -48      ; 19 uses
  %i.m = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.l, i32 1, ptr elementtype(i32) %i.l) #15, !srcloc !13 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.g, !prof !14

bb.g:                                             ; preds = %.lr.ph
  %i.n = add i32 %i.m, 1
  %i.o = or i32 %i.n, %i.m
  %.not10.i.i.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not10.i.i.i.i, label %get_tree.exit, label %.sink.split.i.i.i.i, !prof !18

.sink.split.i.i.i.i:                              ; preds = %bb.g, %.lr.ph
  %.sink.i.i.i.i = phi i32 [ 2, %.lr.ph ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %i.l, i32 noundef %.sink.i.i.i.i) #16
  br label %get_tree.exit

get_tree.exit:                                    ; preds = %bb.g, %.sink.split.i.i.i.i
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.q = load ptr, ptr %2, align 8                ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store volatile ptr %i.q, ptr %i.p, align 8
  %i.s = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  store ptr %2, ptr %i.t, align 8
  store ptr %i.s, ptr %2, align 8
  store ptr %i.k, ptr %i.j, align 8
  store volatile ptr %2, ptr %i.k, align 8
  call void @mutex_unlock(ptr noundef @audit_filter_mutex) #16
  %i.u = getelementptr i8, ptr %i.k, i64 48
  %i.v = call i32 @kern_path(ptr noundef %i.u, i32 noundef 0, ptr noundef nonnull %5) #16
  %.not55 = icmp eq i32 %i.v, 0
  br i1 %.not55, label %bb.h, label %.critedge

bb.h:                                             ; preds = %get_tree.exit
  %i.w = call zeroext i1 @path_is_under(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  call void @path_put(ptr noundef nonnull %5) #16
  br i1 %i.w, label %bb.l, label %.critedge

.critedge:                                        ; preds = %get_tree.exit, %bb.h
  %i.x = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.l, i32 -1, ptr elementtype(i32) %i.l) #15, !srcloc !13 ; 2 uses
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %refcount_dec_and_test.exit.i, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.z = icmp slt i32 %i.x, 1
  br i1 %i.z, label %bb.j, label %put_tree.exit, !prof !14

bb.j:                                             ; preds = %bb.i
  call void @refcount_warn_saturate(ptr noundef %i.l, i32 noundef 3) #16
  br label %put_tree.exit

refcount_dec_and_test.exit.i:                     ; preds = %.critedge
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %put_tree.exit, label %bb.k

bb.k:                                             ; preds = %refcount_dec_and_test.exit.i
  %i.aa = getelementptr i8, ptr %i.k, i64 32
  call void @kvfree_call_rcu(ptr noundef %i.aa, ptr noundef nonnull %i.l) #16
  br label %put_tree.exit

put_tree.exit:                                    ; preds = %bb.i, %bb.j, %refcount_dec_and_test.exit.i, %bb.k
  call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  br label %thread-pre-split, !llvm.loop !50

bb.l:                                             ; preds = %bb.h
  %i.ab = call fastcc i32 @tag_mounts(ptr noundef %i.b, ptr noundef %i.l) #17, !srcloc !53 ; 2 uses
  %.not57 = icmp eq i32 %i.ab, 0
  br i1 %.not57, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.l, i32 -1, ptr elementtype(i32) %i.l) #15, !srcloc !13 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %refcount_dec_and_test.exit.i62, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp slt i32 %i.ac, 1
  br i1 %i.ae, label %bb.o, label %put_tree.exit67, !prof !14

bb.o:                                             ; preds = %bb.n
  call void @refcount_warn_saturate(ptr noundef %i.l, i32 noundef 3) #16
  br label %put_tree.exit67

refcount_dec_and_test.exit.i62:                   ; preds = %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
  %.not.i63 = icmp eq ptr %i.l, null
  br i1 %.not.i63, label %put_tree.exit67, label %bb.p

bb.p:                                             ; preds = %refcount_dec_and_test.exit.i62
  %i.af = getelementptr i8, ptr %i.k, i64 32
  call void @kvfree_call_rcu(ptr noundef %i.af, ptr noundef nonnull %i.l) #16
  br label %put_tree.exit67

bb.q:                                             ; preds = %bb.l
  call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  call void @_raw_spin_lock(ptr noundef @hash_lock) #16
  %i.ag = getelementptr i8, ptr %i.k, i64 -44
  %i.ah = load i32, ptr %i.ag, align 4
  %.not58 = icmp eq i32 %i.ah, 0
  br i1 %.not58, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr i8, ptr %i.k, i64 8       ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  store volatile ptr %i.ak, ptr %i.aj, align 8
  %i.am = load ptr, ptr @tree_list, align 8       ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store ptr %i.k, ptr %i.an, align 8
  store ptr %i.am, ptr %i.k, align 8
  store ptr @tree_list, ptr %i.ai, align 8
  store volatile ptr %i.k, ptr @tree_list, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @_raw_spin_unlock(ptr noundef @hash_lock) #16
  %i.ao = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.l, i32 -1, ptr elementtype(i32) %i.l) #15, !srcloc !13 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %refcount_dec_and_test.exit.i65, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = icmp slt i32 %i.ao, 1
  br i1 %i.aq, label %bb.u, label %thread-pre-split, !prof !14

bb.u:                                             ; preds = %bb.t
  call void @refcount_warn_saturate(ptr noundef %i.l, i32 noundef 3) #16
  br label %thread-pre-split

refcount_dec_and_test.exit.i65:                   ; preds = %bb.s
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
  %.not.i66 = icmp eq ptr %i.l, null
  br i1 %.not.i66, label %thread-pre-split, label %bb.v

bb.v:                                             ; preds = %refcount_dec_and_test.exit.i65
  %i.ar = getelementptr i8, ptr %i.k, i64 32
  call void @kvfree_call_rcu(ptr noundef %i.ar, ptr noundef nonnull %i.l) #16
  br label %thread-pre-split

put_tree.exit67:                                  ; preds = %bb.p, %refcount_dec_and_test.exit.i62, %bb.o, %bb.n
  call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  br label %.loopexit

.loopexit:                                        ; preds = %thread-pre-split, %bb.f, %put_tree.exit67
  %.2 = phi i32 [ %i.ab, %put_tree.exit67 ], [ 0, %bb.f ], [ 0, %thread-pre-split ] ; 2 uses
  %i.as = load ptr, ptr %i.i, align 8             ; 3 uses
  %.not5989 = icmp eq ptr %i.as, @tree_list
  br i1 %.not5989, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %.loopexit
  %.not60 = icmp eq i32 %.2, 0
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph91, %put_tree.exit75
  %i.at = phi ptr [ %i.as, %.lr.ph91 ], [ %i.bm, %put_tree.exit75 ] ; 8 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -48    ; 9 uses
  %i.av = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.au, i32 1, ptr elementtype(i32) %i.au) #15, !srcloc !13 ; 3 uses
  %.not.i.i.i.i68 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i68, label %.sink.split.i.i.i.i70, label %bb.x, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.aw = add i32 %i.av, 1
  %i.ax = or i32 %i.aw, %i.av
  %.not10.i.i.i.i69 = icmp sgt i32 %i.ax, -1
  br i1 %.not10.i.i.i.i69, label %get_tree.exit72, label %.sink.split.i.i.i.i70, !prof !18

.sink.split.i.i.i.i70:                            ; preds = %bb.x, %bb.w
  %.sink.i.i.i.i71 = phi i32 [ 2, %bb.w ], [ 1, %bb.x ]
  call void @refcount_warn_saturate(ptr noundef %i.au, i32 noundef %.sink.i.i.i.i71) #16
  br label %get_tree.exit72

get_tree.exit72:                                  ; preds = %bb.x, %.sink.split.i.i.i.i70
  %i.ay = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.az, ptr %i.bb, align 8
  store volatile ptr %i.ba, ptr %i.az, align 8
  %i.bc = load ptr, ptr %3, align 8               ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.at, ptr %i.bd, align 8
  store ptr %i.bc, ptr %i.at, align 8
  store ptr %3, ptr %i.ay, align 8
  store volatile ptr %i.at, ptr %3, align 8
  call void @mutex_unlock(ptr noundef @audit_filter_mutex) #16
  br i1 %.not60, label %bb.y, label %bb.z

bb.y:                                             ; preds = %get_tree.exit72
  call void @_raw_spin_lock(ptr noundef @hash_lock) #16
  %i.be = getelementptr i8, ptr %i.at, i64 -32    ; 3 uses
  %.04485 = load ptr, ptr %i.be, align 8          ; 2 uses
  %.not7986 = icmp eq ptr %.04485, %i.be
  br i1 %.not7986, label %._crit_edge, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.y, %.lr.ph88
  %.04487 = phi ptr [ %.044, %.lr.ph88 ], [ %.04485, %bb.y ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.04487, i64 24   ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = and i32 %i.bg, 2147483647
  store i32 %i.bh, ptr %i.bf, align 8
  %.044 = load ptr, ptr %.04487, align 8          ; 2 uses
  %.not79 = icmp eq ptr %.044, %i.be
  br i1 %.not79, label %._crit_edge, label %.lr.ph88, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph88, %bb.y
  call void @_raw_spin_unlock(ptr noundef @hash_lock) #16
  br label %bb.aa

bb.z:                                             ; preds = %get_tree.exit72
  call fastcc void @trim_marked(ptr noundef %i.au) #17, !srcloc !54
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.bi = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.au, i32 -1, ptr elementtype(i32) %i.au) #15, !srcloc !13 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %refcount_dec_and_test.exit.i73, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = icmp slt i32 %i.bi, 1
  br i1 %i.bk, label %bb.ac, label %put_tree.exit75, !prof !14

bb.ac:                                            ; preds = %bb.ab
  call void @refcount_warn_saturate(ptr noundef %i.au, i32 noundef 3) #16
  br label %put_tree.exit75

refcount_dec_and_test.exit.i73:                   ; preds = %bb.aa
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
  %.not.i74 = icmp eq ptr %i.au, null
  br i1 %.not.i74, label %put_tree.exit75, label %bb.ad

bb.ad:                                            ; preds = %refcount_dec_and_test.exit.i73
  %i.bl = getelementptr i8, ptr %i.at, i64 32
  call void @kvfree_call_rcu(ptr noundef %i.bl, ptr noundef nonnull %i.au) #16
  br label %put_tree.exit75

put_tree.exit75:                                  ; preds = %bb.ab, %bb.ac, %refcount_dec_and_test.exit.i73, %bb.ad
  call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  %i.bm = load ptr, ptr %i.i, align 8             ; 3 uses
  %.not59 = icmp eq ptr %i.bm, @tree_list
  br i1 %.not59, label %._crit_edge92, label %bb.w, !llvm.loop !52

._crit_edge92:                                    ; preds = %put_tree.exit75, %.loopexit
  %.lcssa = phi ptr [ %i.as, %.loopexit ], [ %i.bm, %put_tree.exit75 ] ; 2 uses
  %i.bn = load ptr, ptr %3, align 8               ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  store ptr %.lcssa, ptr %i.bo, align 8
  store volatile ptr %i.bn, ptr %.lcssa, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %3, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.i, align 8
  %i.bp = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.bp, ptr %i.br, align 8
  store volatile ptr %i.bq, ptr %i.bp, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %2, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.j, align 8
  call void @mutex_unlock(ptr noundef @audit_filter_mutex) #16
  call void @path_put(ptr noundef nonnull %4) #16
  call void @drop_collected_paths(ptr noundef %i.b, ptr noundef nonnull %6) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %._crit_edge92, %bb.e, %bb.c
  %.0 = phi i32 [ %.2, %._crit_edge92 ], [ %i.e, %bb.c ], [ %i.f, %bb.e ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @path_is_under(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @audit_kill_trees(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 848        ; 4 uses
  tail call void @audit_ctl_lock() #16
  tail call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.a
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %prune_one.exit
  %i.c = phi ptr [ %i.m, %prune_one.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -48      ; 7 uses
  tail call fastcc void @kill_rules(ptr noundef %0, ptr noundef %i.d) #17, !srcloc !56
  %i.e = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.h, align 8
  store volatile ptr %i.g, ptr %i.f, align 8
  store volatile ptr %i.c, ptr %i.c, align 8
  store volatile ptr %i.c, ptr %i.e, align 8
  tail call void @mutex_unlock(ptr noundef @audit_filter_mutex) #16
  tail call fastcc void @prune_tree_chunks(ptr noundef %i.d, i1 noundef zeroext false) #17, !srcloc !20
  %i.i = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 -1, ptr elementtype(i32) %i.d) #15, !srcloc !13 ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %refcount_dec_and_test.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = icmp slt i32 %i.i, 1
  br i1 %i.k, label %bb.c, label %prune_one.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef 3) #16
  br label %prune_one.exit

refcount_dec_and_test.exit.i.i:                   ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %prune_one.exit, label %bb.d

bb.d:                                             ; preds = %refcount_dec_and_test.exit.i.i
  %i.l = getelementptr i8, ptr %i.c, i64 32
  tail call void @kvfree_call_rcu(ptr noundef %i.l, ptr noundef nonnull %i.d) #16
  br label %prune_one.exit

prune_one.exit:                                   ; preds = %bb.b, %bb.c, %refcount_dec_and_test.exit.i.i, %bb.d
  tail call void @mutex_lock(ptr noundef @audit_filter_mutex) #16
  %i.m = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %.not = icmp eq ptr %i.m, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge:                                      ; preds = %prune_one.exit, %bb.a
  tail call void @mutex_unlock(ptr noundef @audit_filter_mutex) #16
  tail call void @audit_ctl_unlock() #16
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @audit_ctl_lock() local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @kill_rules(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not31 = icmp eq ptr %i.b, %i.a
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.pn.in32 = phi ptr [ %.pn33, %bb.g ], [ %i.b, %bb.a ] ; 14 uses
  %.pn33 = load ptr, ptr %.pn.in32, align 8       ; 4 uses
  %i.c = getelementptr i8, ptr %.pn.in32, i64 -368
  %i.d = getelementptr i8, ptr %.pn.in32, i64 8   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %.pn33, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store volatile ptr %.pn33, ptr %i.e, align 8
  store volatile ptr %.pn.in32, ptr %.pn.in32, align 8
  store volatile ptr %.pn.in32, ptr %i.d, align 8
  %i.g = getelementptr i8, ptr %.pn.in32, i64 -16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i32, ptr @audit_enabled, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %audit_tree_log_remove_rule.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @audit_log_start(ptr noundef %0, i32 noundef 3264, i32 noundef 1305) #16 ; 6 uses
  %.not10.i = icmp eq ptr %i.j, null
  br i1 %.not10.i, label %audit_tree_log_remove_rule.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.j, ptr noundef @.str.5) #16
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 96
  tail call void @audit_log_untrustedstring(ptr noundef nonnull %i.j, ptr noundef %i.l) #16
  %i.m = getelementptr i8, ptr %.pn.in32, i64 -56
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @audit_log_key(ptr noundef nonnull %i.j, ptr noundef %i.n) #16
  %i.o = getelementptr i8, ptr %.pn.in32, i64 -328
  %i.p = load i32, ptr %i.o, align 8
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.j, ptr noundef @.str.6, i32 noundef %i.p) #16
  tail call void @audit_log_end(ptr noundef nonnull %i.j) #16
  br label %audit_tree_log_remove_rule.exit

audit_tree_log_remove_rule.exit:                  ; preds = %bb.b, %bb.c, %bb.d
  %i.q = getelementptr i8, ptr %.pn.in32, i64 -8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %audit_tree_log_remove_rule.exit
  tail call void @audit_remove_mark(ptr noundef nonnull %i.r) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %audit_tree_log_remove_rule.exit
  store ptr null, ptr %i.g, align 8
  %i.s = getelementptr i8, ptr %.pn.in32, i64 -360 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %i.v, align 8
  store volatile ptr %i.u, ptr %i.t, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.s, align 8
  %i.w = getelementptr i8, ptr %.pn.in32, i64 16  ; 2 uses
  %i.x = getelementptr i8, ptr %.pn.in32, i64 24  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %i.aa, align 8
  store volatile ptr %i.z, ptr %i.y, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.w, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.x, align 8
  %i.ab = getelementptr i8, ptr %.pn.in32, i64 -352
  tail call void @call_rcu(ptr noundef %i.ab, ptr noundef @audit_free_rule_rcu) #16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.not = icmp eq ptr %.pn33, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @audit_ctl_unlock() local_unnamed_addr #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @audit_tree_init() #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.kmem_cache_args, align 8    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store i32 8, ptr %0, align 8
  %i.a = call ptr @__kmem_cache_create_args(ptr noundef @.str.7, i32 noundef 80, ptr noundef nonnull %0, i32 noundef 256) #16
  store ptr %i.a, ptr @audit_tree_mark_cachep, align 8
  %i.b = call ptr @fsnotify_alloc_group(ptr noundef @audit_tree_ops, i32 noundef 0) #16 ; 2 uses
  store ptr %i.b, ptr @audit_tree_group, align 8
  %i.c = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  call void @audit_panic(ptr noundef @.str.8) #16
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
end_hunk_1
