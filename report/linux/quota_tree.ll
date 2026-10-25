Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/quota_tree?download=true
inline.NumInlined: 86
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@remove_tree:_kmalloc_noprof.exit
  tail call void @kfree(ptr noundef nonnull %i.ep) #9
  store i32 %i.az, ptr %i.eq, align 4
  %i.gt = load ptr, ptr %0, align 8
  %i.gu = load i32, ptr %i.o, align 8
  tail call void @mark_info_dirty(ptr noundef %i.gt, i32 noundef %i.gu) #9
  br label %bb.aa

bb.w:                                             ; preds = %bb.v, %_kmalloc_noprof.exit.i.i
  %.032.i.ph.i = phi i32 [ -12, %_kmalloc_noprof.exit.i.i ], [ %.0.i72.i, %bb.v ]
  %i.gv = load ptr, ptr %i.ba, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.gv, ptr noundef @__func__.free_dqentry, ptr noundef @.str.26, i32 noundef %i.az) #9
  br label %check_dquot_block_header.exit.thread.i

bb.x:                                             ; preds = %bb.o
  %i.gw = load ptr, ptr %0, align 8               ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 48
  %i.gy = load ptr, ptr %i.gx, align 16
  %i.gz = getelementptr i8, ptr %i.gy, i64 160
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = load i32, ptr %i.o, align 8
  %i.hc = zext nneg i32 %i.eg to i64
  %i.hd = shl i64 %i.co, %i.hc
  %i.he = tail call i64 %i.ha(ptr noundef %i.gw, i32 noundef %i.hb, ptr noundef nonnull %i.cj, i64 noundef %i.ds, i64 noundef %i.hd) #9, !inline_history !24 ; 4 uses
  %i.hf = load i32, ptr %i.a, align 8
  %i.hg = zext i32 %i.hf to i64
  %.not.i73.i = icmp eq i64 %i.he, %i.hg
  br i1 %.not.i73.i, label %write_blk.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.gw, ptr noundef @__func__.write_blk, ptr noundef @.str.1) #9
  %i.hh = icmp sgt i64 %i.he, -1
  %spec.store.select.i.i = select i1 %i.hh, i64 -5, i64 %i.he
  br label %write_blk.exit.i

write_blk.exit.i:                                 ; preds = %bb.y, %bb.x
  %.0.i74.i = phi i64 [ %spec.store.select.i.i, %bb.y ], [ %i.he, %bb.x ]
  %i.hi = trunc i64 %.0.i74.i to i32              ; 3 uses
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %write_blk.exit.i
  %i.hk = load ptr, ptr %i.ba, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.hk, ptr noundef @__func__.free_dqentry, ptr noundef @.str.20, i32 noundef %i.az) #9
  br label %check_dquot_block_header.exit.thread.i

bb.aa:                                            ; preds = %write_blk.exit.i, %insert_free_dqentry.exit.i, %bb.n
  %.1.i109 = phi i32 [ 0, %insert_free_dqentry.exit.i ], [ %i.hi, %write_blk.exit.i ], [ 0, %bb.n ]
  store i64 0, ptr %i.ck, align 8
  br label %check_dquot_block_header.exit.thread.i

check_dquot_block_header.exit.thread.i:           ; preds = %bb.aa, %bb.z, %bb.w, %.thread.i, %bb.l, %do_check_range.exit19.i.i, %do_check_range.exit.i.i, %bb.h, %bb.f
  %.2.i = phi i32 [ -5, %bb.f ], [ %i.dc, %bb.h ], [ %.078.i, %.thread.i ], [ %.032.i.ph.i, %bb.w ], [ %.1.i109, %bb.aa ], [ %i.hi, %bb.z ], [ -117, %do_check_range.exit19.i.i ], [ -117, %do_check_range.exit.i.i ], [ -117, %bb.l ]
  tail call void @kfree(ptr noundef nonnull %i.cj) #9
  br label %free_dqentry.exit

free_dqentry.exit:                                ; preds = %_kmalloc_noprof.exit.i, %check_dquot_block_header.exit.thread.i
  %.056.i = phi i32 [ %.2.i, %check_dquot_block_header.exit.thread.i ], [ -12, %_kmalloc_noprof.exit.i ]
  %i.hl = getelementptr i8, ptr %i.f, i64 4
  store i32 0, ptr %i.hl, align 4
  br label %bb.ac

bb.ab:                                            ; preds = %do_check_range.exit._crit_edge
  %i.hm = add nsw i32 %3, 1                       ; 2 uses
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr [4 x i8], ptr %2, i64 %i.hn
  store i32 %i.az, ptr %i.ho, align 4
  %i.hp = tail call fastcc i32 @remove_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.hm) #10, !srcloc !28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %free_dqentry.exit
  %.081 = phi i32 [ %.056.i, %free_dqentry.exit ], [ %i.hp, %bb.ab ] ; 4 uses
  %i.hq = icmp sgt i32 %.081, -1
  br i1 %i.hq, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.hr = getelementptr i8, ptr %i.f, i64 4
  %i.hs = load i32, ptr %i.hr, align 4
  %.not94 = icmp eq i32 %i.hs, 0
  br i1 %.not94, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.ht = load i64, ptr %i.ab, align 8
  %i.hu = tail call fastcc i32 @get_index(ptr noundef %0, i64 %i.ht, i32 noundef %3) #10, !srcloc !29
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr [4 x i8], ptr %i.d, i64 %i.hv
  store i32 0, ptr %i.hw, align 4
  %i.hx = load i32, ptr %i.a, align 8
  %i.hy = lshr i32 %i.hx, 2                       ; 3 uses
  %.not123 = icmp eq i32 %i.hy, 0
  br i1 %.not123, label %.sink.split, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %bb.ae
  %wide.trip.count = zext nneg i32 %i.hy to i64
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph118.preheader ], [ %indvars.iv.next, %bb.af ] ; 3 uses
  %i.hz = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ia = load i32, ptr %i.hz, align 4
  %.not95 = icmp eq i32 %i.ia, 0
  br i1 %.not95, label %bb.af, label %.critedge

bb.af:                                            ; preds = %.lr.ph118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph118, !llvm.loop !25

.critedge:                                        ; preds = %.lr.ph118
  %i.ib = trunc nuw nsw i64 %indvars.iv to i32
  %i.ic = icmp eq i32 %i.hy, %i.ib
  %.pre = load i32, ptr %i.f, align 4             ; 2 uses
  br i1 %i.ic, label %bb.ag, label %bb.ai

.sink.split:                                      ; preds = %bb.af, %bb.ae
  %.pre165 = load i32, ptr %i.f, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %.critedge
  %.pre161 = phi i32 [ %.pre, %.critedge ], [ %.pre165, %.sink.split ] ; 2 uses
  %.not96 = icmp eq i32 %.pre161, 1
  br i1 %.not96, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.id = tail call fastcc i32 @put_free_dqblk(ptr noundef %0, ptr noundef %i.d, i32 noundef %.pre161) #10, !srcloc !30 ; 0 uses
  store i32 0, ptr %i.f, align 4
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag, %.critedge
  %.pre162 = phi i32 [ 1, %bb.ag ], [ %.pre, %.critedge ]
  %i.ie = tail call fastcc i64 @write_blk(ptr noundef %0, i32 noundef %.pre162, ptr noundef %i.d) #10, !srcloc !31
  %i.if = trunc i64 %i.ie to i32                  ; 3 uses
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ih = load ptr, ptr %i.ba, align 8
  %i.ii = load i32, ptr %i.f, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.ih, ptr noundef @__func__.remove_tree, ptr noundef @.str.23, i32 noundef %i.ii) #9
  br label %bb.ak

bb.ak:                                            ; preds = %do_check_range.exit.thread, %bb.ac, %bb.ad, %bb.ai, %bb.aj, %bb.ah, %get_index.exit108, %bb.b
  %.182 = phi i32 [ %i.w, %bb.b ], [ -117, %do_check_range.exit.thread ], [ -5, %get_index.exit108 ], [ %.081, %bb.ad ], [ %.081, %bb.ah ], [ %i.if, %bb.aj ], [ %i.if, %bb.ai ], [ %.081, %bb.ac ]
  tail call void @kfree(ptr noundef nonnull %i.d) #9
  br label %bb.al

bb.al:                                            ; preds = %_kmalloc_noprof.exit, %bb.ak
  %.083 = phi i32 [ %.182, %bb.ak ], [ -12, %_kmalloc_noprof.exit ]
  ret i32 %.083
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @qtree_read_dquot(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 104        ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 96
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = getelementptr i8, ptr %i.f, i64 288
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.f, ptr noundef @__func__.qtree_read_dquot, ptr noundef @.str.3) #9
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 112        ; 4 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not55 = icmp eq i64 %i.l, 0
  br i1 %.not55, label %bb.d, label %_kmalloc_noprof.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef align 16 dereferenceable(24) @__const.find_dqentry.blks, i64 24, i1 false)
  %i.m = getelementptr i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp ugt i32 %i.n, 5
  br i1 %i.o, label %.thread, label %find_dqentry.exit

.thread:                                          ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.f, ptr noundef @__func__.find_dqentry, ptr noundef @.str.2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.f

find_dqentry.exit:                                ; preds = %bb.d
  %i.p = call fastcc i64 @find_tree_dqentry(ptr noundef readonly %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) #10, !srcloc !32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %find_dqentry.exit
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread, %bb.e
  %.0.i636568 = phi i64 [ -5, %.thread ], [ %i.p, %bb.e ]
  %i.s = load i64, ptr %i.b, align 8
  %i.t = tail call i32 @from_kqid(ptr noundef @init_user_ns, i64 %i.s) #9
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.f, ptr noundef @__func__.qtree_read_dquot, ptr noundef @.str.4, i32 noundef %i.t) #9
  %i.u = trunc i64 %.0.i636568 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i636567 = phi i32 [ %i.u, %bb.f ], [ 0, %bb.e ]
  store i64 0, ptr %i.k, align 8
  %i.v = getelementptr i8, ptr %1, i64 120        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.v, i32 8, ptr elementtype(i8) %i.v) #8, !srcloc !33
  %i.w = getelementptr i8, ptr %1, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(72) %i.w, i8 0, i64 72, i1 false)
  br label %bb.q

bb.h:                                             ; preds = %find_dqentry.exit
  store i64 %i.p, ptr %i.k, align 8
  br label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.h, %bb.c
  %i.x = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.z, i32 noundef 3264) #7 ; 5 uses
  %.not56 = icmp eq ptr %i.aa, null
  br i1 %.not56, label %bb.r, label %bb.i

bb.i:                                             ; preds = %_kmalloc_noprof.exit
  %i.ab = getelementptr i8, ptr %i.f, i64 48
  %i.ac = load ptr, ptr %i.ab, align 16
  %i.ad = getelementptr i8, ptr %i.ac, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.x, align 4
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i64, ptr %i.k, align 8
  %i.ai = tail call i64 %i.ae(ptr noundef %i.f, i32 noundef %i.d, ptr noundef nonnull %i.aa, i64 noundef %i.ag, i64 noundef %i.ah) #9
  %i.aj = trunc i64 %i.ai to i32                  ; 4 uses
  %i.ak = load i32, ptr %i.x, align 4
  %.not57 = icmp eq i32 %i.ak, %i.aj
  %i.al = getelementptr i8, ptr %1, i64 128       ; 2 uses
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp sgt i32 %i.aj, -1
  %spec.store.select = select i1 %i.am, i32 -5, i32 %i.aj
  %i.an = load i64, ptr %i.b, align 8
  %i.ao = tail call i32 @from_kqid(ptr noundef @init_user_ns, i64 %i.an) #9
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.f, ptr noundef @__func__.qtree_read_dquot, ptr noundef @.str.5, i32 noundef %i.ao) #9
  %i.ap = getelementptr i8, ptr %1, i64 120       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ap, i32 8, ptr elementtype(i8) %i.ap) #8, !srcloc !33
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(72) %i.al, i8 0, i64 72, i1 false)
  tail call void @kfree(ptr noundef nonnull %i.aa) #9
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %1, i64 88        ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.aq) #9
  %i.ar = getelementptr i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef %1, ptr noundef nonnull %i.aa) #9
  %i.av = load i64, ptr %i.al, align 8
  %.not58 = icmp eq i64 %i.av, 0
  br i1 %.not58, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %1, i64 136
  %i.ax = load i64, ptr %i.aw, align 8
  %.not59 = icmp eq i64 %i.ax, 0
  br i1 %.not59, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %1, i64 160
  %i.az = load i64, ptr %i.ay, align 8
  %.not60 = icmp eq i64 %i.az, 0
  br i1 %.not60, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %1, i64 168
  %i.bb = load i64, ptr %i.ba, align 8
  %.not61 = icmp eq i64 %i.bb, 0
  br i1 %.not61, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr i8, ptr %1, i64 120       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bc, i32 8, ptr elementtype(i8) %i.bc) #8, !srcloc !33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  tail call void @_raw_spin_unlock(ptr noundef %i.aq) #9
  tail call void @kfree(ptr noundef nonnull %i.aa) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j, %bb.g
  %.051 = phi i32 [ %spec.store.select, %bb.j ], [ %i.aj, %bb.p ], [ %.0.i636567, %bb.g ]
  %i.bd = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @dqstats, i64 144), i64 noundef 1, i32 noundef %i.bd) #9
  br label %bb.r

bb.r:                                             ; preds = %_kmalloc_noprof.exit, %bb.q, %bb.b
  %.0 = phi i32 [ %.051, %bb.q ], [ -5, %bb.b ], [ -12, %_kmalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @qtree_release_dquot(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 120
  %i.c = load volatile i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 8
  %.not12 = icmp eq i64 %i.d, 0
  br i1 %.not12, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 176
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %1, i64 144
  %i.h = load i64, ptr %i.g, align 8
  %i.i = or i64 %i.h, %i.f
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef align 16 dereferenceable(24) @__const.find_dqentry.blks, i64 24, i1 false)
  %i.j = getelementptr i8, ptr %1, i64 112
  %i.k = load i64, ptr %i.j, align 8
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %qtree_delete_dquot.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 36
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp ugt i32 %i.m, 5
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.p, ptr noundef @__func__.qtree_delete_dquot, ptr noundef @.str.2) #9
  br label %qtree_delete_dquot.exit

bb.f:                                             ; preds = %bb.d
  %i.q = call fastcc i32 @remove_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) #10, !srcloc !14
  br label %qtree_delete_dquot.exit

qtree_delete_dquot.exit:                          ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ -5, %bb.e ], [ %i.q, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %qtree_delete_dquot.exit
  %.0 = phi i32 [ %.0.i, %qtree_delete_dquot.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @qtree_get_next_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i64, ptr %1, align 4
  %i.c = tail call i32 @from_kqid(ptr noundef @init_user_ns, i64 %i.b) #9
  store i32 %i.c, ptr %i.a, align 4
  %i.d = call fastcc i32 @find_next_id(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 0) #10, !srcloc !34 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %switch.i = icmp ult i32 %i.g, 3
  br i1 %switch.i, label %make_kqid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "369: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 369b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 369) #8, !srcloc !35
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, ptr @.str.29, i32 114, i32 0, i64 16) #8, !srcloc !36
  unreachable

make_kqid.exit:                                   ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4
  %.sroa.5.0.insert.ext.i = zext nneg i32 %i.g to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.09.0.insert.ext.i = zext i32 %i.h to i64
  %.sroa.09.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.09.0.insert.ext.i
  store i64 %.sroa.09.0.insert.insert.i, ptr %1, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %make_kqid.exit
  %.0 = phi i32 [ 0, %make_kqid.exit ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
end_hunk_0
begin_hunk_1_@find_next_id:_kmalloc_noprof.exit
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %_kmalloc_noprof.exit
  %i.g = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = add i32 %i.h, -1
  %i.j = icmp ult i32 %3, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = xor i32 %3, -1
  %i.l = add i32 %i.h, %i.k                       ; 2 uses
  %i.m = add i32 %i.h, -2
  %i.n = sub i32 %i.m, %3
  %xtraiter = and i32 %i.l, 7                     ; 3 uses
  %i.o = icmp ult i32 %i.n, 7
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.l, -8
  %factor.op.mul = mul i32 %i.f, %i.f
  %factor.op.mul174 = mul i32 %factor.op.mul, %i.f
  %factor.op.mul175 = mul i32 %factor.op.mul174, %i.f
  %factor.op.mul176 = mul i32 %factor.op.mul175, %i.f
  %factor.op.mul177 = mul i32 %factor.op.mul176, %i.f
  %factor.op.mul178 = mul i32 %factor.op.mul177, %i.f
  %factor.op.mul179 = mul i32 %factor.op.mul178, %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04885 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %.reass.reass.reass.reass.reass.reass.reass, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i32 %.04885, %factor.op.mul179 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !37

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04885.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04885.epil = phi i32 [ %i.p, %.lr.ph.epil ], [ %.04885.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.p = mul i32 %.04885.epil, %i.f               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !38

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.048.lcssa = phi i32 [ 1, %.preheader ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %.lr.ph.epil ]
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = zext i32 %i.e to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.r, i1 false)
  %i.s = getelementptr i8, ptr %i.q, i64 48
  %i.t = load ptr, ptr %i.s, align 16
  %i.u = getelementptr i8, ptr %i.t, i64 152
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = zext i32 %2 to i64
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl i64 %i.y, %i.ab
  %i.ad = tail call i64 %i.v(ptr noundef %i.q, i32 noundef %i.x, ptr noundef nonnull %i.d, i64 noundef %i.r, i64 noundef %i.ac) #9, !inline_history !1 ; 4 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.af, ptr noundef @__func__.find_next_id, ptr noundef @.str.27, i32 noundef %2) #9
  br label %.thread75

bb.b:                                             ; preds = %._crit_edge
  %i.ag = load i32, ptr %1, align 4               ; 3 uses
  %.val = load i32, ptr %i.a, align 8             ; 2 uses
  %.val65 = load i32, ptr %i.g, align 4           ; 2 uses
  %i.ah = lshr i32 %.val, 2                       ; 10 uses
  %i.ai = xor i32 %3, -1
  %i.aj = add i32 %.val65, %i.ai                  ; 4 uses
  %.not1.i = icmp eq i32 %i.aj, 0
  br i1 %.not1.i, label %__get_index.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.ak = add i32 %.val65, -2
  %i.al = sub i32 %i.ak, %3
  %xtraiter157 = and i32 %i.aj, 7                 ; 2 uses
  %lcmp.mod158.not = icmp eq i32 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.03.i.prol = phi i32 [ %i.am, %.lr.ph.i.prol ], [ %i.aj, %.lr.ph.i.preheader ]
  %.072.i.prol = phi i32 [ %i.an, %.lr.ph.i.prol ], [ %i.ag, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.am = add i32 %.03.i.prol, -1                 ; 2 uses
  %i.an = udiv i32 %.072.i.prol, %i.ah            ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter157
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !39

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa153.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i.prol ]
  %.03.i.unr = phi i32 [ %i.aj, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %.072.i.unr = phi i32 [ %i.ag, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i.prol ]
  %i.ao = icmp ult i32 %i.al, 7
  br i1 %i.ao, label %__get_index.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ]
  %.072.i = phi i32 [ %i.ax, %.lr.ph.i ], [ %.072.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ap = udiv i32 %.072.i, %i.ah
  %i.aq = udiv i32 %i.ap, %i.ah
  %i.ar = udiv i32 %i.aq, %i.ah
  %i.as = udiv i32 %i.ar, %i.ah
  %i.at = udiv i32 %i.as, %i.ah
  %i.au = udiv i32 %i.at, %i.ah
  %i.av = udiv i32 %i.au, %i.ah
  %i.aw = add i32 %.03.i, -8                      ; 2 uses
  %i.ax = udiv i32 %i.av, %i.ah                   ; 2 uses
  %.not.i.7 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.7, label %__get_index.exit, label %.lr.ph.i, !llvm.loop !2

__get_index.exit:                                 ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.07.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %.lcssa153.unr, %.lr.ph.i.prol.loopexit ], [ %i.ax, %.lr.ph.i ]
  %.07.lcssa.i.fr = freeze i32 %.07.lcssa.i       ; 2 uses
  %i.ay = urem i32 %.07.lcssa.i.fr, %i.ah         ; 2 uses
  %i.az = icmp samesign ult i32 %i.ay, %i.f
  br i1 %i.az, label %.lr.ph93, label %.split.loop.exit87

.lr.ph93:                                         ; preds = %__get_index.exit
  %i.ba = getelementptr i8, ptr %0, i64 12
  %i.bb = add i32 %3, 1
  %i.bc = lshr i32 %.val, 2
  %i.bd = urem i32 %.07.lcssa.i.fr, %i.bc
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = zext nneg i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph93, %select.unfold
  %indvars.iv = phi i64 [ %i.be, %.lr.ph93 ], [ %indvars.iv.next, %select.unfold ] ; 3 uses
  %.04991 = phi i64 [ %i.ad, %.lr.ph93 ], [ %.150.ph, %select.unfold ]
  %i.bg = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4            ; 4 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bj = load i32, ptr %1, align 4
  %i.bk = add i32 %i.bj, %.048.lcssa
  store i32 %i.bk, ptr %1, align 4
  br label %select.unfold

bb.e:                                             ; preds = %bb.c
  %i.bl = load i32, ptr %i.ba, align 4
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  %i.bn = icmp ugt i32 %i.bh, %i.bm
  br i1 %i.bn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bo = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.bo, ptr noundef @__func__.do_check_range, ptr noundef @.str.17, ptr noundef @.str.11, i32 noundef %i.bh, i32 noundef 0, i32 noundef %i.bm) #9
  br label %.thread75

bb.g:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4
  %i.bq = add i32 %i.bp, -1
  %i.br = icmp eq i32 %3, %i.bq
  br i1 %i.br, label %.thread75, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = tail call fastcc i32 @find_next_id(ptr noundef %0, ptr noundef %1, i32 noundef %i.bh, i32 noundef %i.bb) #10, !srcloc !41 ; 2 uses
  %.not61 = icmp eq i32 %i.bs, -2
  br i1 %.not61, label %select.unfold, label %.split.loop.exit

select.unfold:                                    ; preds = %bb.h, %bb.d
  %.150.ph = phi i64 [ %.04991, %bb.d ], [ -2, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.bt, label %bb.c, label %.split.loop.exit87.loopexit, !llvm.loop !40

.split.loop.exit:                                 ; preds = %bb.h
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32
  %i.bv = zext i32 %i.bs to i64
  br label %.split.loop.exit87

.split.loop.exit87.loopexit:                      ; preds = %select.unfold
  %i.bw = trunc nuw i64 %indvars.iv.next to i32
  br label %.split.loop.exit87

.split.loop.exit87:                               ; preds = %.split.loop.exit87.loopexit, %__get_index.exit, %.split.loop.exit
  %.1.lcssa = phi i32 [ %i.bu, %.split.loop.exit ], [ %i.ay, %__get_index.exit ], [ %i.bw, %.split.loop.exit87.loopexit ]
  %.2 = phi i64 [ %i.bv, %.split.loop.exit ], [ %i.ad, %__get_index.exit ], [ %.150.ph, %.split.loop.exit87.loopexit ]
  %i.bx = icmp eq i32 %.1.lcssa, %i.f
  %spec.select = select i1 %i.bx, i64 -2, i64 %.2
  br label %.thread75

.thread75:                                        ; preds = %bb.g, %bb.f, %.split.loop.exit87, %bb.a
  %.3 = phi i64 [ %i.ad, %bb.a ], [ %spec.select, %.split.loop.exit87 ], [ -117, %bb.f ], [ 0, %bb.g ]
  tail call void @kfree(ptr noundef nonnull %i.d) #9
  %i.by = trunc i64 %.3 to i32
  br label %bb.i

bb.i:                                             ; preds = %_kmalloc_noprof.exit, %.thread75
  %.051 = phi i32 [ %i.by, %.thread75 ], [ -12, %_kmalloc_noprof.exit ]
  ret i32 %.051
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @do_insert_tree(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #2 align 16 prefalign(16) {
_kmalloc_noprof.exit:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 8 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.d, i32 noundef 3264) #7 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.s, label %bb.a

bb.a:                                             ; preds = %_kmalloc_noprof.exit
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr [4 x i8], ptr %2, i64 %i.f ; 6 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not95 = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %.not95, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc i32 @get_free_dqblk(ptr noundef %0) #10, !srcloc !48 ; 5 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.r, label %.preheader133

.preheader133:                                    ; preds = %bb.b
  %i.k = icmp sgt i32 %3, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader133
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.i, %i.m
  br i1 %i.n, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr i8, ptr %1, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.p, ptr noundef @__func__.do_insert_tree, ptr noundef @.str.9, i32 noundef %i.i) #9
  br label %bb.r

._crit_edge:                                      ; preds = %bb.c, %.preheader133
  store i32 %i.i, ptr %i.g, align 4
  %i.q = load i32, ptr %i.b, align 8
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.r, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = load i32, ptr %i.b, align 8
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.u, i1 false)
  %i.v = getelementptr i8, ptr %i.s, i64 48
  %i.w = load ptr, ptr %i.v, align 16
  %i.x = getelementptr i8, ptr %i.w, i64 152
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext i32 %i.h to i64
  %i.ac = getelementptr i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl i64 %i.ab, %i.ae
  %i.ag = tail call i64 %i.y(ptr noundef %i.s, i32 noundef %i.aa, ptr noundef nonnull %i.e, i64 noundef %i.u, i64 noundef %i.af) #9, !inline_history !1
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %1, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i32, ptr %i.g, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.ak, ptr noundef @__func__.do_insert_tree, ptr noundef @.str.10, i32 noundef %i.al) #9
  br label %bb.r

bb.g:                                             ; preds = %bb.e, %._crit_edge
  %i.am = getelementptr i8, ptr %1, i64 104       ; 4 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = tail call i32 @from_kqid(ptr noundef @init_user_ns, i64 %i.an) #9 ; 3 uses
  %.val.i = load i32, ptr %i.b, align 8
  %i.ap = getelementptr i8, ptr %0, i64 36        ; 6 uses
  %.val2.i = load i32, ptr %i.ap, align 4         ; 2 uses
  %i.aq = lshr i32 %.val.i, 2                     ; 10 uses
  %i.ar = xor i32 %3, -1                          ; 4 uses
  %i.as = add i32 %.val2.i, %i.ar                 ; 4 uses
  %.not1.i.i = icmp eq i32 %i.as, 0
  br i1 %.not1.i.i, label %get_index.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = add i32 %.val2.i, -2
  %i.au = sub i32 %i.at, %3
  %xtraiter = and i32 %i.as, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi i32 [ %i.av, %.lr.ph.i.i.prol ], [ %i.as, %.lr.ph.i.i.preheader ]
  %.072.i.i.prol = phi i32 [ %i.aw, %.lr.ph.i.i.prol ], [ %i.ao, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.av = add i32 %.03.i.i.prol, -1               ; 2 uses
  %i.aw = udiv i32 %.072.i.i.prol, %i.aq          ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !43

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa170.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %.03.i.i.unr = phi i32 [ %i.as, %.lr.ph.i.i.preheader ], [ %i.av, %.lr.ph.i.i.prol ]
  %.072.i.i.unr = phi i32 [ %i.ao, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i32 %i.au, 7
  br i1 %i.ax, label %get_index.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.072.i.i = phi i32 [ %i.bg, %.lr.ph.i.i ], [ %.072.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ay = udiv i32 %.072.i.i, %i.aq
  %i.az = udiv i32 %i.ay, %i.aq
  %i.ba = udiv i32 %i.az, %i.aq
  %i.bb = udiv i32 %i.ba, %i.aq
  %i.bc = udiv i32 %i.bb, %i.aq
  %i.bd = udiv i32 %i.bc, %i.aq
  %i.be = udiv i32 %i.bd, %i.aq
  %i.bf = add i32 %.03.i.i, -8                    ; 2 uses
  %i.bg = udiv i32 %i.be, %i.aq                   ; 2 uses
  %.not.i.i.7 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.7, label %get_index.exit, label %.lr.ph.i.i, !llvm.loop !2

get_index.exit:                                   ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.07.lcssa.i.i = phi i32 [ %i.ao, %bb.g ], [ %.lcssa170.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bg, %.lr.ph.i.i ]
  %i.bh = urem i32 %.07.lcssa.i.i, %i.aq
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.e, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4            ; 5 uses
  %i.bl = getelementptr i8, ptr %1, i64 96        ; 3 uses
  %i.bm = getelementptr i8, ptr %0, i64 12
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  %i.bp = icmp ugt i32 %i.bk, %i.bo
  br i1 %i.bp, label %do_check_range.exit, label %bb.h

do_check_range.exit:                              ; preds = %get_index.exit
  %i.bq = load ptr, ptr %i.bl, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.bq, ptr noundef @__func__.do_check_range, ptr noundef @.str.17, ptr noundef @.str.11, i32 noundef %i.bk, i32 noundef 0, i32 noundef %i.bo) #9
  br label %bb.r

bb.h:                                             ; preds = %get_index.exit
  %.not97 = icmp eq i32 %i.bk, 0                  ; 2 uses
  br i1 %.not97, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not98138 = icmp slt i32 %3, 0
  br i1 %.not98138, label %._crit_edge141, label %.lr.ph140

bb.i:                                             ; preds = %.lr.ph140
  %i.br = add i32 %.1139, 1                       ; 2 uses
  %.not98 = icmp sgt i32 %i.br, %3
  br i1 %.not98, label %._crit_edge141, label %.lr.ph140, !llvm.loop !44

.lr.ph140:                                        ; preds = %.preheader, %bb.i
  %.1139 = phi i32 [ %i.br, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.bs = sext i32 %.1139 to i64
  %i.bt = getelementptr [4 x i8], ptr %2, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = icmp eq i32 %i.bk, %i.bu
  br i1 %i.bv, label %bb.j, label %bb.i

bb.j:                                             ; preds = %.lr.ph140
  %i.bw = load ptr, ptr %i.bl, align 8
  %i.bx = load i32, ptr %i.g, align 4
  %i.by = load i64, ptr %i.am, align 8
  %i.bz = tail call i32 @from_kqid(ptr noundef @init_user_ns, i64 %i.by) #9 ; 3 uses
  %.val.i102 = load i32, ptr %i.b, align 8
  %.val2.i103 = load i32, ptr %i.ap, align 4      ; 2 uses
  %i.ca = lshr i32 %.val.i102, 2                  ; 10 uses
  %i.cb = add i32 %.val2.i103, %i.ar              ; 4 uses
  %.not1.i.i104 = icmp eq i32 %i.cb, 0
  br i1 %.not1.i.i104, label %get_index.exit110, label %.lr.ph.i.i105.preheader

end_hunk_1
