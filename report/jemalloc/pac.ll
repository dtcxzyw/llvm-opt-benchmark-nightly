Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/pac?download=true
inline.NumInlined: 84
inline.NumDeleted: 50
begin_hunk_0_@je_pac_retain_grow_limit_get_set:bb.a
  %i.d = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 false)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.f) ; 2 uses
  %i.h = icmp ult i64 %i.a, 16384
  %i.i = add nuw nsw i32 %i.g, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = select i1 %i.h, i64 12, i64 %i.j
  %i.l = lshr i64 %i.a, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 3
  %i.o = shl nuw nsw i32 %i.g, 2
  %i.p = add nsw i32 %i.o, -1
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %i.r = icmp ult i32 %i.q, 199
  br i1 %i.r, label %sz_psz2ind.exit.thread, label %bb.j

sz_psz2ind.exit.thread:                           ; preds = %bb.b, %sz_psz2ind.exit, %bb.a
  %.014 = phi i32 [ %i.q, %sz_psz2ind.exit ], [ 0, %bb.a ], [ 198, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 58464 ; 2 uses
  %i.t = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.s) #9
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.c

malloc_mutex_trylock_final.exit.i:                ; preds = %sz_psz2ind.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 58456
  store atomic i8 1, ptr %i.u monotonic, align 1
  br label %bb.d

bb.c:                                             ; preds = %sz_psz2ind.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 58392
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.v) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %malloc_mutex_trylock_final.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 58448 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !42
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 58440 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.aa, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.z, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 58432 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !44
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %.not18 = icmp eq ptr %2, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 58388
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !45
  store i64 %i.ai, ptr %2, align 8, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %malloc_mutex_lock.exit
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 58388
  store i32 %.014, ptr %i.aj, align 4, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 58456
  store atomic i8 0, ptr %i.ak monotonic, align 8
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.s) #9 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %sz_psz2ind.exit, %bb.i
  %.1 = phi i1 [ false, %bb.i ], [ true, %sz_psz2ind.exit ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @je_pac_decay_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.b = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.a) #9
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 9768
  %i.d = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.c) #9
  %i.e = add i64 %i.d, %i.b
  tail call fastcc void @pac_decay_to_limit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i64 noundef 0, i64 noundef %i.e)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pac_decay_to_limit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, i1 noundef zeroext %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 {
tsdn_witness_tsdp_get.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !66, !range !36, !noundef !37
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i64 %7, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.q, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  store i8 1, ptr %i.a, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store atomic i8 0, ptr %i.e monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #9 ; 0 uses
  %i.h = getelementptr i8, ptr %1, i64 58360      ; 2 uses
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.i = tail call ptr @je_base_ehooks_get(ptr noundef %.val.i) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.x, %bb.e ] ; 4 uses
  %.01520.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.e ] ; 2 uses
  %i.j = tail call ptr @je_ecache_evict(ptr noundef %0, ptr noundef %1, ptr noundef %i.i, ptr noundef %4, i64 noundef %6) #9 ; 9 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %pac_stash_decayed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 4 uses
  store ptr %i.j, ptr %i.m, align 8, !tbaa !67
  %i.n = icmp eq ptr %.sroa.0.0, null
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 72 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  store ptr %i.p, ptr %i.l, align 8, !tbaa !67
  store ptr %i.j, ptr %i.o, align 8, !tbaa !67
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67
  store ptr %i.s, ptr %i.m, align 8, !tbaa !67
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %.sroa.0.0, ptr %i.u, align 8, !tbaa !67
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr %i.j, ptr %i.w, align 8, !tbaa !67
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %.pre.i.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.j, i64 16
  %.val17.i = load i64, ptr %i.y, align 8, !tbaa !67
  %i.z = lshr i64 %.val17.i, 12
  %i.aa = add i64 %i.z, %.01520.i                 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %7
  br i1 %i.ab, label %bb.b, label %pac_stash_decayed.exit.thread

pac_stash_decayed.exit:                           ; preds = %bb.b
  %.not = icmp eq i64 %.01520.i, 0
  br i1 %.not, label %bb.m, label %pac_stash_decayed.exit.thread

pac_stash_decayed.exit.thread:                    ; preds = %bb.e, %pac_stash_decayed.exit
  %.sroa.0.128 = phi ptr [ %.sroa.0.0, %pac_stash_decayed.exit ], [ %i.x, %bb.e ] ; 3 uses
  %.val.i21 = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.ac = tail call ptr @je_base_ehooks_get(ptr noundef %.val.i21) #9 ; 5 uses
  br i1 %5, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %pac_stash_decayed.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 60536
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8
  %.not1.i = icmp eq i64 %i.ae, 0
  br i1 %.not1.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 19424
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !68
  %i.ah = icmp eq i32 %i.ag, 2
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f, %pac_stash_decayed.exit.thread
  %.not58.i = phi i1 [ true, %bb.f ], [ false, %bb.g ], [ true, %pac_stash_decayed.exit.thread ]
  %i.ai = phi i1 [ true, %bb.f ], [ %i.ah, %bb.g ], [ true, %pac_stash_decayed.exit.thread ]
  %i.aj = load i64, ptr @je_opt_process_madvise_max_batch, align 8, !tbaa !45
  %i.ak = icmp ne i64 %i.aj, 0
  %or.cond.i = select i1 %i.ak, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.am = load atomic ptr, ptr %i.al acquire, align 8
  %i.an = icmp eq ptr %i.am, @je_ehooks_default_extent_hooks
  br i1 %i.an, label %.critedge.i, label %ehooks_dalloc_will_fail.exit.i

ehooks_dalloc_will_fail.exit.i:                   ; preds = %bb.h
  %i.ao = load atomic ptr, ptr %i.al acquire, align 8 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %ehooks_dalloc_will_fail.exit.i, %.thread.i
  %.not3.i = icmp eq ptr %.sroa.0.128, null
  br i1 %.not3.i, label %pac_decay_stashed.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 19424
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 19480
  br i1 %.not58.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i, %edata_list_inactive_remove.exit.us.i
  %i.ar = phi ptr [ %.sroa.0.3, %edata_list_inactive_remove.exit.us.i ], [ %.sroa.0.128, %.lr.ph.i ] ; 6 uses
  %.0546.us.i = phi i64 [ %i.bm, %edata_list_inactive_remove.exit.us.i ], [ 0, %.lr.ph.i ]
  %.0555.us.i = phi i64 [ %i.bn, %edata_list_inactive_remove.exit.us.i ], [ 0, %.lr.ph.i ]
  %.0564.us.i = phi i64 [ %i.bl, %edata_list_inactive_remove.exit.us.i ], [ 0, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67 ; 3 uses
  %i.au = icmp eq ptr %i.at, %i.ar
  br i1 %i.au, label %edata_list_inactive_remove.exit.us.i, label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %.lr.ph.split.us.preheader.i
  %.phi.trans.insert22.i = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %.pre23.i = load ptr, ptr %.phi.trans.insert22.i, align 8, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 72 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %.pre23.i, ptr %i.ax, align 8, !tbaa !67
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !67 ; 2 uses
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67
  store ptr %i.bc, ptr %i.av, align 8, !tbaa !67
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !67 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !67
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store ptr %i.ar, ptr %i.bi, align 8, !tbaa !67
  br label %edata_list_inactive_remove.exit.us.i

edata_list_inactive_remove.exit.us.i:             ; preds = %.lr.ph.split.us.preheader.i, %.thread.i.us.i
  %.sroa.0.3 = phi ptr [ %i.at, %.thread.i.us.i ], [ null, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ar, i64 16
  %.0.val.us.i = load i64, ptr %i.bj, align 8, !tbaa !67
  %i.bk = lshr i64 %.0.val.us.i, 12               ; 2 uses
  %i.bl = add i64 %.0564.us.i, 1                  ; 2 uses
  %i.bm = add i64 %i.bk, %.0546.us.i              ; 2 uses
  tail call void @je_extent_dalloc_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull %i.ar) #9
  %i.bn = add i64 %i.bk, %.0555.us.i              ; 2 uses
  %.not.us.i = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.us.i, label %pac_decay_stashed.exit, label %.lr.ph.split.us.preheader.i, !llvm.loop !65

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i, %bb.l
  %i.bo = phi ptr [ %.sroa.0.2, %bb.l ], [ %.sroa.0.128, %.lr.ph.i ] ; 8 uses
  %.0546.i = phi i64 [ %i.cj, %bb.l ], [ 0, %.lr.ph.i ]
  %.0555.i = phi i64 [ %.1.i, %bb.l ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0564.i = phi i64 [ %i.ci, %bb.l ], [ 0, %.lr.ph.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !67 ; 3 uses
  %i.br = icmp eq ptr %i.bq, %i.bo
  br i1 %i.br, label %edata_list_inactive_remove.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.split.preheader.i
  %.phi.trans.insert18.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %.pre19.i = load ptr, ptr %.phi.trans.insert18.i, align 8, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 72 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  store ptr %.pre19.i, ptr %i.bu, align 8, !tbaa !67
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !67 ; 2 uses
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !67
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !67
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !67
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !67 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !67
  %i.ce = load ptr, ptr %i.bs, align 8, !tbaa !67
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  store ptr %i.bo, ptr %i.cf, align 8, !tbaa !67
  br label %edata_list_inactive_remove.exit.i

edata_list_inactive_remove.exit.i:                ; preds = %.lr.ph.split.preheader.i, %.thread.i.i
  %.sroa.0.2 = phi ptr [ %i.bq, %.thread.i.i ], [ null, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bo, i64 16
  %.0.val.i = load i64, ptr %i.cg, align 8, !tbaa !67 ; 2 uses
  %i.ch = lshr i64 %.0.val.i, 12                  ; 2 uses
  %i.ci = add i64 %.0564.i, 1                     ; 2 uses
  %i.cj = add i64 %i.ch, %.0546.i                 ; 2 uses
  %i.ck = load i32, ptr %i.ap, align 8, !tbaa !68
  %.not12.i = icmp eq i32 %i.ck, 1
  br i1 %.not12.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %edata_list_inactive_remove.exit.i
  %i.cl = and i64 %.0.val.i, -4096
  %i.cm = tail call zeroext i1 @je_extent_purge_lazy_wrapper(ptr noundef %0, ptr noundef %i.ac, ptr noundef nonnull %i.bo, i64 noundef 0, i64 noundef %i.cl) #9
  br i1 %i.cm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @je_ecache_dalloc(ptr noundef %0, ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bo) #9
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %edata_list_inactive_remove.exit.i
  tail call void @je_extent_dalloc_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull %i.bo) #9
  %i.cn = add i64 %i.ch, %.0555.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i64 [ %i.cn, %bb.k ], [ %.0555.i, %bb.j ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i, label %pac_decay_stashed.exit, label %.lr.ph.split.preheader.i, !llvm.loop !65

pac_decay_stashed.exit:                           ; preds = %bb.l, %edata_list_inactive_remove.exit.us.i, %.critedge.i
  %.056.lcssa.i = phi i64 [ 0, %.critedge.i ], [ %i.bl, %edata_list_inactive_remove.exit.us.i ], [ %i.ci, %bb.l ]
  %.055.lcssa.i = phi i64 [ 0, %.critedge.i ], [ %i.bn, %edata_list_inactive_remove.exit.us.i ], [ %.1.i, %bb.l ]
  %.054.lcssa.i = phi i64 [ 0, %.critedge.i ], [ %i.bm, %edata_list_inactive_remove.exit.us.i ], [ %i.cj, %bb.l ]
  %i.co = atomicrmw add ptr %3, i64 1 monotonic, align 8 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = atomicrmw add ptr %i.cp, i64 %.056.lcssa.i monotonic, align 8 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = atomicrmw add ptr %i.cr, i64 %.054.lcssa.i monotonic, align 8 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 62208
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cw = shl i64 %.055.lcssa.i, 12
  %i.cx = atomicrmw sub ptr %i.cv, i64 %i.cw monotonic, align 8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %pac_decay_stashed.exit, %pac_stash_decayed.exit
  %i.cy = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.f) #9
  %.not.i22 = icmp eq i32 %i.cy, 0
  br i1 %.not.i22, label %malloc_mutex_trylock_final.exit.i, label %bb.n

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.m
  store atomic i8 1, ptr %i.e monotonic, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %2) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %malloc_mutex_trylock_final.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !42
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !42
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.dd, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %0, ptr %i.dc, align 8, !tbaa !43
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !44
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !44
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.o, %bb.p
  store i8 0, ptr %i.a, align 8, !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %tsdn_witness_tsdp_get.exit, %malloc_mutex_lock.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.nstime_t, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.c = icmp slt i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.f = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.e) #9
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 9768
  %i.h = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.g) #9
  %i.i = add i64 %i.h, %i.f
  tail call fastcc void @pac_decay_to_limit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, i64 noundef 0, i64 noundef %i.i)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @je_nstime_init_update(ptr noundef nonnull %6) #9
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.k = call i64 @je_eset_npages_get(ptr noundef nonnull %i.j) #9
end_hunk_0
