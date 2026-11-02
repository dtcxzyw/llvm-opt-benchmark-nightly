Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp_fastopen?download=true
inline.NumInlined: 125
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tcp_fastopen_init_key_once
define dso_local void @tcp_fastopen_init_key_once(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  tail call void @__rcu_read_lock() #7
  %i.b = getelementptr i8, ptr %0, i64 1608       ; 3 uses
  %i.c = load volatile ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_unlock() #7
  br label %tcp_fastopen_reset_cipher.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !13
  tail call void @__rcu_read_unlock() #7
  call void @get_random_bytes(ptr noundef nonnull %i.a, i64 noundef 16) #7
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.e = call noalias align 8 dereferenceable_or_null(56) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3264, i64 noundef 56) #9 ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %tcp_fastopen_reset_cipher.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val53.i = load i64, ptr %i.a, align 16
  store i64 %.val53.i, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val52.i = load i64, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 8
  store i64 %.val52.i, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.e, i64 32
  store i32 1, ptr %i.h, align 8
  %i.i = call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.b, ptr nonnull %i.e, ptr elementtype(ptr) %i.b) #8, !srcloc !14 ; 2 uses
  %.not50.i = icmp eq ptr %i.i, null
  br i1 %.not50.i, label %tcp_fastopen_reset_cipher.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 40
  call void @call_rcu(ptr noundef %i.j, ptr noundef @tcp_fastopen_ctx_free) #7
  br label %tcp_fastopen_reset_cipher.exit

tcp_fastopen_reset_cipher.exit:                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @tcp_fastopen_reset_cipher(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.b = tail call noalias align 8 dereferenceable_or_null(56) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3264, i64 noundef 56) #9 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val53 = load i64, ptr %2, align 1
  store i64 %.val53, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val52 = load i64, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %i.b, i64 8
  store i64 %.val52, ptr %i.d, align 8
  %.not48 = icmp eq ptr %3, null
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val51 = load i64, ptr %3, align 1
  %i.e = getelementptr i8, ptr %i.b, i64 16
  store i64 %.val51, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %i.b, i64 24
  store i64 %.val, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ 2, %bb.c ], [ 1, %bb.b ]
  %i.h = getelementptr i8, ptr %i.b, i64 32
  store i32 %.sink, ptr %i.h, align 8
  %.not49 = icmp eq ptr %1, null
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %1, i64 1088       ; 2 uses
  %i.j = tail call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.i, ptr nonnull %i.b, ptr elementtype(ptr) %i.i) #8, !srcloc !20
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 1608       ; 2 uses
  %i.l = tail call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.k, ptr nonnull %i.b, ptr elementtype(ptr) %i.k) #8, !srcloc !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.j, %bb.e ], [ %i.l, %bb.f ]  ; 2 uses
  %.not50 = icmp eq ptr %.0, null
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %.0, i64 40
  tail call void @call_rcu(ptr noundef %i.m, ptr noundef @tcp_fastopen_ctx_free) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.g, %bb.h
  %.044 = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ -12, %bb.a ]
  ret i32 %.044
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_fastopen_destroy_cipher(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1088
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 40
  tail call void @call_rcu(ptr noundef %i.c, ptr noundef @tcp_fastopen_ctx_free) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tcp_fastopen_ctx_free(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -40
  tail call void @kfree_sensitive(ptr noundef %i.a) #7
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_fastopen_ctx_destroy(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1608       ; 2 uses
  %i.b = tail call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.a, ptr null, ptr elementtype(ptr) %i.a) #8, !srcloc !21 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 40
  tail call void @call_rcu(ptr noundef %i.c, ptr noundef @tcp_fastopen_ctx_free) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @tcp_fastopen_get_cipher(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #7
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 1088
  %i.b = load volatile ptr, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1608
  %i.d = load volatile ptr, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.c ]  ; 5 uses
  %.not26 = icmp eq ptr %.0, null
  br i1 %.not26, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %.0, i64 32
  %.0.val = load i32, ptr %i.e, align 8           ; 7 uses
  %i.f = icmp sgt i32 %.0.val, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %.0.val to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %.0.val, 1
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.h = getelementptr [16 x i8], ptr %.0, i64 %indvars.iv ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %3 = shl nuw i64 %indvars.iv, 1
  %4 = and i64 %3, 4294967292
  %i.j = getelementptr [8 x i8], ptr %2, i64 %4   ; 2 uses
  store i64 %i.i, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.j, i64 8
  store i64 %i.l, ptr %i.m, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %.0, i64 %indvars.iv.next ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %5 = shl nuw i64 %indvars.iv.next, 1
  %6 = and i64 %5, 4294967294
  %i.p = getelementptr [8 x i8], ptr %2, i64 %6   ; 2 uses
  store i64 %i.o, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.p, i64 8
  store i64 %i.r, ptr %i.s, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !22

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i32 %.0.val to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.t = getelementptr [16 x i8], ptr %.0, i64 %indvars.iv.epil.init ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.v = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %2, i64 %i.w ; 2 uses
  store i64 %i.u, ptr %i.x, align 1
  %i.y = getelementptr i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  store i64 %i.z, ptr %i.aa, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.d
  %.022 = phi i32 [ 0, %bb.d ], [ %.0.val, %bb.e ], [ %.0.val, %.loopexit.loopexit.unr-lcssa ], [ %.0.val, %.lr.ph.epil.preheader ]
  tail call void @__rcu_read_unlock() #7
  ret i32 %.022
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_fastopen_add_skb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %0, i64 1704       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2080) #7 ; 22 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 88       ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %skb_dst_drop.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.h, 1
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.e, label %refdst_drop.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %i.h to ptr
  tail call void @dst_release(ptr noundef nonnull %i.j) #7
  br label %refdst_drop.exit.i.i

refdst_drop.exit.i.i:                             ; preds = %bb.e, %bb.d
  store i64 0, ptr %i.g, align 8
  br label %skb_dst_drop.exit.i

skb_dst_drop.exit.i:                              ; preds = %refdst_drop.exit.i.i, %bb.c
  %i.k = getelementptr i8, ptr %i.f, i64 127
  %.val.i.i.i = load i8, ptr %i.k, align 1
  %i.l = trunc i8 %.val.i.i.i to i1
  br i1 %i.l, label %bb.f, label %tcp_cleanup_skb.exit

bb.f:                                             ; preds = %skb_dst_drop.exit.i
  tail call void @__skb_ext_del(ptr noundef nonnull %i.f, i32 noundef 0) #7
  br label %tcp_cleanup_skb.exit

tcp_cleanup_skb.exit:                             ; preds = %skb_dst_drop.exit.i, %bb.f
  %i.m = getelementptr i8, ptr %0, i64 1788       ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.f, i64 192
  %.val.i = load i32, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.f, i64 200      ; 3 uses
  %.val13.i = load ptr, ptr %i.o, align 8
  %i.p = zext i32 %.val.i to i64
  %i.q = getelementptr i8, ptr %.val13.i, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 6
  %i.s = load i16, ptr %i.r, align 2
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.s, i16 1)
  %i.t = zext i16 %narrow.i to i32                ; 2 uses
  store volatile i32 %i.t, ptr %i.m, align 4
  %i.u = getelementptr i8, ptr %i.f, i64 112      ; 4 uses
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr i8, ptr %i.f, i64 182      ; 2 uses
  %.val14.i = load i16, ptr %i.w, align 2
  %.val15.i = load ptr, ptr %i.o, align 8
  %i.x = zext i16 %.val14.i to i64
  %i.y = getelementptr i8, ptr %.val15.i, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 12
  %.val2.i.i = load i16, ptr %i.z, align 4
  %i.aa = lshr i16 %.val2.i.i, 2
  %i.ab = and i16 %i.aa, 60                       ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i32              ; 2 uses
  %i.ad = icmp ugt i32 %i.v, %i.ac
  br i1 %i.ad, label %bb.g, label %tcp_segs_in.exit

bb.g:                                             ; preds = %tcp_cleanup_skb.exit
  %i.ae = getelementptr i8, ptr %0, i64 1808      ; 2 uses
  %i.af = load i32, ptr %i.ae, align 16
  %i.ag = add i32 %i.af, %i.t
  store volatile i32 %i.ag, ptr %i.ae, align 16
  %.val.pre = load i16, ptr %i.w, align 2
  %.val29.pre = load ptr, ptr %i.o, align 8
  %.phi.trans.insert = zext i16 %.val.pre to i64
  %.phi.trans.insert33 = getelementptr i8, ptr %.val29.pre, i64 %.phi.trans.insert
  %.phi.trans.insert34 = getelementptr i8, ptr %.phi.trans.insert33, i64 12
  %.val2.i.pre = load i16, ptr %.phi.trans.insert34, align 4
  %.pre = load i32, ptr %i.u, align 8
  %.pre36 = lshr i16 %.val2.i.pre, 2
  %.pre38 = and i16 %.pre36, 60                   ; 2 uses
  %.pre40 = zext nneg i16 %.pre38 to i32
  br label %tcp_segs_in.exit

tcp_segs_in.exit:                                 ; preds = %tcp_cleanup_skb.exit, %bb.g
  %.pre-phi41 = phi i32 [ %i.ac, %tcp_cleanup_skb.exit ], [ %.pre40, %bb.g ]
  %.pre-phi39 = phi i16 [ %i.ab, %tcp_cleanup_skb.exit ], [ %.pre38, %bb.g ]
  %i.ah = phi i32 [ %i.v, %tcp_cleanup_skb.exit ], [ %.pre, %bb.g ]
  %i.ai = sub i32 %i.ah, %.pre-phi41              ; 2 uses
  store i32 %i.ai, ptr %i.u, align 8
  %i.aj = getelementptr i8, ptr %i.f, i64 116
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.h, label %__skb_pull.exit, !prof !11

bb.h:                                             ; preds = %tcp_segs_in.exit
  tail call void asm sideeffect "572: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 572b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 572) #8, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 2847, i32 0, i64 16) #8, !srcloc !25
  unreachable

__skb_pull.exit:                                  ; preds = %tcp_segs_in.exit
  %i.am = getelementptr i8, ptr %i.f, i64 208     ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = zext nneg i16 %.pre-phi39 to i64
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao
  store ptr %i.ap, ptr %i.am, align 8
  %i.aq = getelementptr i8, ptr %i.f, i64 216     ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8
  tail call void @sk_forced_mem_schedule(ptr noundef %0, i32 noundef %i.ar) #7
  %i.as = getelementptr i8, ptr %i.f, i64 96      ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.at, null
  br i1 %.not.i.i30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %__skb_pull.exit
  tail call void %i.at(ptr noundef nonnull %i.f) #7, !inline_history !23
  br label %skb_orphan.exit.i

bb.j:                                             ; preds = %__skb_pull.exit
  %i.au = getelementptr i8, ptr %i.f, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %.not6.i.i = icmp eq ptr %i.av, null
  br i1 %.not6.i.i, label %skb_orphan.exit.i, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "577: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 577b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 577) #8, !srcloc !26
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 3396, i32 0, i64 16) #8, !srcloc !27
  unreachable

skb_orphan.exit.i:                                ; preds = %bb.j, %bb.i
  %i.aw = getelementptr i8, ptr %i.f, i64 24
  store ptr %0, ptr %i.aw, align 8
  store ptr @sock_rfree, ptr %i.as, align 8
  %i.ax = load i32, ptr %i.aq, align 8
  %i.ay = getelementptr i8, ptr %0, i64 192       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ay, i32 %i.ax, ptr elementtype(i32) %i.ay) #8, !srcloc !28
  %i.az = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %.val.i.i, i64 248
  %.val.val.i.i = load ptr, ptr %i.ba, align 8
  %.not.i8.i = icmp eq ptr %.val.val.i.i, null
  br i1 %.not.i8.i, label %skb_set_owner_r.exit, label %bb.l

bb.l:                                             ; preds = %skb_orphan.exit.i
  %i.bb = load i32, ptr %i.aq, align 8
  %i.bc = getelementptr i8, ptr %0, i64 348       ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sub i32 %i.bd, %i.bb
  store volatile i32 %i.be, ptr %i.bc, align 4
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %skb_orphan.exit.i, %bb.l
  %i.bf = getelementptr i8, ptr %i.f, i64 40      ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = add i32 %i.bg, 1
end_hunk_0
