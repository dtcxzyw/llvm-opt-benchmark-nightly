Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cls_api?download=true
inline.NumInlined: 443
inline.NumDeleted: 177
begin_hunk_0_@tcf_get_next_chain:bb.a
  %.not3143.i = icmp eq ptr %.0.i, null
  br i1 %.not3143.i, label %__tcf_get_next_chain.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.144.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %i.k, %bb.f ] ; 5 uses
  %i.g = getelementptr i8, ptr %.144.i, i64 60
  %.1.val.i = load i32, ptr %i.g, align 4         ; 2 uses
  %i.h = getelementptr i8, ptr %.144.i, i64 64
  %.1.val35.i = load i32, ptr %i.h, align 8
  %i.i = icmp eq i32 %.1.val.i, %.1.val35.i
  br i1 %i.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.144.i, i64 32
  %.val.i = load ptr, ptr %i.j, align 8           ; 2 uses
  %.not39.i = icmp eq ptr %.val.i, %i.f
  %i.k = getelementptr i8, ptr %.val.i, i64 -32   ; 2 uses
  %.not3155.i = icmp eq ptr %i.k, null
  %.not31.i = or i1 %.not39.i, %.not3155.i
  br i1 %.not31.i, label %__tcf_get_next_chain.exit, label %bb.e, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.144.i, i64 60
  %i.m = add i32 %.1.val.i, 1
  store i32 %i.m, ptr %i.l, align 4
  br label %__tcf_get_next_chain.exit

__tcf_get_next_chain.exit:                        ; preds = %bb.f, %bb.d, %.critedge.i
  %.141.i = phi ptr [ %.144.i, %.critedge.i ], [ null, %bb.d ], [ null, %bb.f ] ; 2 uses
  tail call void @mutex_unlock(ptr noundef %i.a) #14
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %__tcf_get_next_chain.exit.thread7, %__tcf_get_next_chain.exit
  %.141.i9 = phi ptr [ null, %__tcf_get_next_chain.exit.thread7 ], [ %.141.i, %__tcf_get_next_chain.exit ]
  tail call fastcc void @__tcf_chain_put(ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false) #16, !srcloc !28
  br label %bb.h

bb.h:                                             ; preds = %__tcf_get_next_chain.exit.thread, %bb.g, %__tcf_get_next_chain.exit
  %.141.i6 = phi ptr [ null, %__tcf_get_next_chain.exit.thread ], [ %.141.i9, %bb.g ], [ %.141.i, %__tcf_get_next_chain.exit ]
  ret ptr %.141.i6
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @tcf_get_next_proto(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @__tcf_get_next_proto(ptr noundef %0, ptr noundef %1) #16, !srcloc !29
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %tcf_proto_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 64         ; 3 uses
  %i.c = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b, i32 -1, ptr elementtype(i32) %i.b) #15, !srcloc !30 ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.c, 1
  br i1 %i.e, label %bb.d, label %tcf_proto_put.exit, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @refcount_warn_saturate(ptr noundef %i.b, i32 noundef 3) #14
  br label %tcf_proto_put.exit

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !32
  tail call fastcc void @tcf_proto_destroy(ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null) #16, !srcloc !33
  br label %tcf_proto_put.exit

tcf_proto_put.exit:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @__tcf_get_next_proto(ptr noundef %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @rtnl_is_locked() #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.1, i32 1113, i32 2323, i64 16) #15, !srcloc !68
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.b, ptr noundef nonnull @.str.1, i32 noundef 1113) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @mutex_lock(ptr noundef %0) #14
  %.not26 = icmp eq ptr %1, null
  br i1 %.not26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %0, i64 24
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %1, i64 56         ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.d) #14
  %i.e = getelementptr i8, ptr %1, i64 60
  %i.f = load i8, ptr %i.e, align 4, !range !26, !noundef !27
  %i.g = trunc nuw i8 %i.f to i1
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #14
  br i1 %i.g, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %1, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, 1
  %i.k = getelementptr i8, ptr %0, i64 24
  %.038 = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not2739 = icmp eq ptr %.038, null
  br i1 %.not2739, label %tcf_proto_get.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %.040 = phi ptr [ %.0, %bb.h ], [ %.038, %bb.f ] ; 4 uses
  %i.l = getelementptr i8, ptr %.040, i64 60
  %i.m = load i8, ptr %i.l, align 4, !range !26, !noundef !27
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.o = getelementptr i8, ptr %.040, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %.not28 = icmp ult i32 %i.p, %i.j
  br i1 %.not28, label %bb.h, label %.thread33

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.0 = load ptr, ptr %.040, align 8              ; 2 uses
  %.not27 = icmp eq ptr %.0, null
  br i1 %.not27, label %tcf_proto_get.exit, label %.lr.ph, !llvm.loop !67

bb.i:                                             ; preds = %bb.e, %bb.d
  %.1.in = phi ptr [ %i.c, %bb.d ], [ %1, %bb.e ]
  %.1 = load ptr, ptr %.1.in, align 8             ; 2 uses
  %.not29 = icmp eq ptr %.1, null
  br i1 %.not29, label %tcf_proto_get.exit, label %.thread33

.thread33:                                        ; preds = %bb.g, %bb.i
  %.136 = phi ptr [ %.1, %bb.i ], [ %.040, %bb.g ] ; 3 uses
  %i.q = getelementptr i8, ptr %.136, i64 64      ; 3 uses
  %i.r = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.q, i32 1, ptr elementtype(i32) %i.q) #15, !srcloc !30 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.j, !prof !31

bb.j:                                             ; preds = %.thread33
  %i.s = add i32 %i.r, 1
  %i.t = or i32 %i.s, %i.r
  %.not10.i.i.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not10.i.i.i.i, label %tcf_proto_get.exit, label %.sink.split.i.i.i.i, !prof !34

.sink.split.i.i.i.i:                              ; preds = %bb.j, %.thread33
  %.sink.i.i.i.i = phi i32 [ 2, %.thread33 ], [ 1, %bb.j ]
  tail call void @refcount_warn_saturate(ptr noundef %i.q, i32 noundef %.sink.i.i.i.i) #14
  br label %tcf_proto_get.exit

tcf_proto_get.exit:                               ; preds = %bb.h, %bb.f, %.sink.split.i.i.i.i, %bb.j, %bb.i
  %.132 = phi ptr [ %.136, %.sink.split.i.i.i.i ], [ null, %bb.i ], [ %.136, %bb.j ], [ null, %bb.f ], [ null, %bb.h ]
  tail call void @mutex_unlock(ptr noundef %0) #14
  ret ptr %.132
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tcf_proto_put(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #15, !srcloc !30 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.c, label %refcount_dec_and_test.exit.thread, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef 3) #14
  br label %refcount_dec_and_test.exit.thread

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !32
  tail call fastcc void @tcf_proto_destroy(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext true, ptr noundef %2) #16, !srcloc !33
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit.thread:                ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local void @tcf_block_netif_keep_dst(ptr nofree noundef captures(address) initializes((152, 153)) %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152        ; 2 uses
  store i8 1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %.012 = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not13 = icmp eq ptr %.012, %i.b
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tcf_block_owner_netif_keep_dst.exit
  %.val = phi i8 [ %.val16, %tcf_block_owner_netif_keep_dst.exit ], [ 1, %bb.a ] ; 2 uses
  %.014 = phi ptr [ %.0, %tcf_block_owner_netif_keep_dst.exit ], [ %.012, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.014, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc nuw i8 %.val to i1
  %i.f = add i32 %i.d, -3
  %i.g = icmp ult i32 %i.f, -2
  %or.cond3.i = and i1 %i.g, %i.e
  br i1 %or.cond3.i, label %bb.b, label %tcf_block_owner_netif_keep_dst.exit

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.014, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 64
  %.val.i = load ptr, ptr %i.j, align 64
  %.val.val.i = load ptr, ptr %.val.i, align 64   ; 2 uses
  %i.k = load i64, ptr %.val.val.i, align 64
  %i.l = and i64 %i.k, -131105
  store i64 %i.l, ptr %.val.val.i, align 64
  %.val.pre = load i8, ptr %i.a, align 8, !range !26
  br label %tcf_block_owner_netif_keep_dst.exit

tcf_block_owner_netif_keep_dst.exit:              ; preds = %.lr.ph, %bb.b
  %.val16 = phi i8 [ %.val, %.lr.ph ], [ %.val.pre, %bb.b ]
  %.0 = load ptr, ptr %.014, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %tcf_block_owner_netif_keep_dst.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @tcf_block_get_ext(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64         ; 3 uses
  %.val = load ptr, ptr %i.a, align 64
  %.val.val = load ptr, ptr %.val, align 64       ; 3 uses
  %i.b = getelementptr i8, ptr %.val.val, i64 264
  %.val72.val.val = load ptr, ptr %i.b, align 8   ; 3 uses
  %i.c = getelementptr i8, ptr %2, i64 24         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @tcf_block_refcnt_get(ptr noundef %.val72.val.val, i32 noundef %i.d) #16, !srcloc !72 ; 2 uses
  %.not65 = icmp eq ptr %i.e, null
  br i1 %.not65, label %thread-pre-split, label %bb.g

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i32, ptr %i.c, align 8
  br label %.thread

.thread:                                          ; preds = %bb.a, %thread-pre-split
  %.val73 = phi i32 [ %.pr, %thread-pre-split ], [ 0, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 88), align 8
  %i.g = tail call noalias align 8 dereferenceable_or_null(1264) ptr @__kmalloc_cache_noprof(ptr noundef %i.f, i32 noundef 3520, i64 noundef range(i64 8, 40449) 1264) #17 ; 25 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_block_create.__msg) #14
  %.not29.i = icmp eq ptr %3, null
  br i1 %.not29.i, label %tcf_block_create.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @tcf_block_create.__msg, ptr %3, align 8
  br label %tcf_block_create.exit.thread

bb.e:                                             ; preds = %.thread
  %i.h = getelementptr i8, ptr %i.g, i64 16
  tail call void @mutex_init_generic(ptr noundef %i.h) #14
  %i.i = getelementptr i8, ptr %i.g, i64 1240
  tail call void @mutex_init_generic(ptr noundef %i.i) #14
  %i.j = getelementptr i8, ptr %i.g, i64 88
  tail call void @__init_rwsem(ptr noundef %i.j, ptr noundef nonnull @.str.10, ptr noundef nonnull @tcf_block_create.__key.9) #14
  %i.k = getelementptr i8, ptr %i.g, i64 120      ; 3 uses
  store volatile ptr %i.k, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.g, i64 128
  store volatile ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 40       ; 3 uses
  store volatile ptr %i.m, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.g, i64 48
  store volatile ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.g, i64 136      ; 3 uses
  store volatile ptr %i.o, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.g, i64 144
  store volatile ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.g, i64 184      ; 3 uses
  store volatile ptr %i.q, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.g, i64 192
  store volatile ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.g, i64 64
  store volatile i32 1, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.g, i64 72
  store ptr %.val72.val.val, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.g, i64 56       ; 3 uses
  store i32 %.val73, ptr %i.u, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %.not30.i = icmp eq i32 %.val73, 0
  br i1 %.not30.i, label %tcf_block_create.exit, label %tcf_block_create.exit.thread111

tcf_block_create.exit:                            ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.g, i64 80
  store ptr %1, ptr %i.v, align 8
  %i.w = icmp ugt ptr %i.g, inttoptr (i64 -4096 to ptr)
  br i1 %i.w, label %tcf_block_create.exit.thread, label %bb.g

tcf_block_create.exit.thread111:                  ; preds = %bb.e
  %i.x = icmp ugt ptr %i.g, inttoptr (i64 -4096 to ptr)
  br i1 %i.x, label %tcf_block_create.exit.thread, label %.thread112

tcf_block_create.exit.thread:                     ; preds = %tcf_block_create.exit.thread111, %bb.c, %bb.d, %tcf_block_create.exit
  %.0.i87 = phi ptr [ %i.g, %tcf_block_create.exit ], [ inttoptr (i64 -12 to ptr), %bb.d ], [ inttoptr (i64 -12 to ptr), %bb.c ], [ %i.g, %tcf_block_create.exit.thread111 ]
  %i.y = ptrtoint ptr %.0.i87 to i64
  %i.z = trunc i64 %i.y to i32
  br label %bb.ag

.thread112:                                       ; preds = %tcf_block_create.exit.thread111
  %i.aa = load i32, ptr @tcf_net_id, align 4
  tail call void @__rcu_read_lock() #14
  %i.ab = getelementptr i8, ptr %.val72.val.val, i64 2984
  %i.ac = load volatile ptr, ptr %i.ab, align 8
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  tail call void @__rcu_read_unlock() #14
  tail call void @idr_preload(i32 noundef 3264) #14
  tail call void @_raw_spin_lock(ptr noundef %i.af) #14
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.u, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call i32 @idr_alloc_u32(ptr noundef %i.ag, ptr noundef nonnull %i.g, ptr noundef %i.u, i64 noundef %i.ai, i32 noundef 10240) #14 ; 2 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.af) #14
  %i.ak = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #18, !srcloc !73 ; 0 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !74
  %i.al = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #15, !srcloc !75 ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  tail call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %bb.f, label %tcf_block_insert.exit, !prof !31

bb.f:                                             ; preds = %.thread112
  %i.ao = tail call i64 @llvm.read_register.i64(metadata !13)
  %i.ap = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.ao) #15, !srcloc !76
  tail call void @llvm.write_register.i64(metadata !13, i64 %i.ap)
  br label %tcf_block_insert.exit

tcf_block_insert.exit:                            ; preds = %.thread112, %bb.f
  %.not66 = icmp eq i32 %i.aj, 0
  br i1 %.not66, label %bb.g, label %tcf_block_owner_add.exit

bb.g:                                             ; preds = %tcf_block_create.exit, %tcf_block_insert.exit, %bb.b
  %.155 = phi ptr [ %i.e, %bb.b ], [ %i.g, %tcf_block_insert.exit ], [ %i.g, %tcf_block_create.exit ] ; 19 uses
  %i.aq = load i32, ptr %2, align 8
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.as = tail call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.ar, i32 noundef 3264, i64 noundef 32) #17 ; 7 uses
  %.not.i75 = icmp eq ptr %i.as, null
  br i1 %.not.i75, label %tcf_block_owner_add.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store ptr %1, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.as, i64 24
  store i32 %i.aq, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %.155, i64 136    ; 6 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store ptr %i.as, ptr %i.ax, align 8
  store ptr %i.aw, ptr %i.as, align 8
  %i.ay = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.av, ptr %i.ay, align 8
  store volatile ptr %i.as, ptr %i.av, align 8
  %i.az = load i32, ptr %2, align 8
  %i.ba = getelementptr i8, ptr %.155, i64 152
  %.155.val = load i8, ptr %i.ba, align 8, !range !26, !noundef !27
  %i.bb = trunc nuw i8 %.155.val to i1
  %i.bc = add i32 %i.az, -3
  %i.bd = icmp ult i32 %i.bc, -2
  %or.cond3.i = and i1 %i.bd, %i.bb
  br i1 %or.cond3.i, label %bb.i, label %tcf_block_owner_netif_keep_dst.exit

bb.i:                                             ; preds = %bb.h
  %.val.i = load ptr, ptr %i.a, align 64
  %.val.val.i = load ptr, ptr %.val.i, align 64   ; 2 uses
  %i.be = load i64, ptr %.val.val.i, align 64
  %i.bf = and i64 %i.be, -131105
  store i64 %i.bf, ptr %.val.val.i, align 64
  br label %tcf_block_owner_netif_keep_dst.exit

tcf_block_owner_netif_keep_dst.exit:              ; preds = %bb.h, %bb.i
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.bh = tail call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.bg, i32 noundef 3264, i64 noundef 32) #17 ; 11 uses
  %.not.i77 = icmp eq ptr %i.bh, null
  br i1 %.not.i77, label %bb.j, label %bb.l

bb.j:                                             ; preds = %tcf_block_owner_netif_keep_dst.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_chain0_head_change_cb_add.__msg) #14
  %.not38.i = icmp eq ptr %3, null
  br i1 %.not38.i, label %tcf_chain0_head_change_cb_add.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @tcf_chain0_head_change_cb_add.__msg, ptr %3, align 8
  br label %tcf_chain0_head_change_cb_add.exit

bb.l:                                             ; preds = %tcf_block_owner_netif_keep_dst.exit
  %i.bi = getelementptr i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %2, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.bh, i64 24     ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %.155, i64 16     ; 5 uses
  tail call void @mutex_lock(ptr noundef %i.bo) #14
  %i.bp = getelementptr i8, ptr %.155, i64 176
  %i.bq = load ptr, ptr %i.bp, align 8            ; 6 uses
  %.not39.i = icmp eq ptr %i.bq, null
  br i1 %.not39.i, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %bb.l
  %i.br = getelementptr i8, ptr %.155, i64 184    ; 3 uses
end_hunk_0
