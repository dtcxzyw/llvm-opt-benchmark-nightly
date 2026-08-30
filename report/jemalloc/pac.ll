Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/pac?download=true
inline.NumInlined: 84
inline.NumDeleted: 50
begin_hunk_0_@je_pac_retain_grow_limit_get_set:bb.a
  %i.n = and i32 %i.m, 3
  %i.o = shl nuw nsw i32 %i.g, 2
  %i.p = add nsw i32 %i.o, -1
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %i.r = icmp ult i32 %i.q, 199
  br i1 %i.r, label %sz_psz2ind.exit.thread, label %bb.j

sz_psz2ind.exit.thread:                           ; preds = %bb.b, %sz_psz2ind.exit, %bb.a
  %.015 = phi i32 [ %i.q, %sz_psz2ind.exit ], [ 0, %bb.a ], [ 198, %bb.b ]
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
  %i.x = load i64, ptr %i.w, align 8, !tbaa !55
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 58440 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.aa, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.z, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 58432 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !60
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !60
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %.not18 = icmp eq ptr %2, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 58388
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !63
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !61
  store i64 %i.ai, ptr %2, align 8, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %malloc_mutex_lock.exit
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 58388
  store i32 %.015, ptr %i.aj, align 4, !tbaa !63
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !64, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i64 %7, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.q, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  store i8 1, ptr %i.a, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store atomic i8 0, ptr %i.e monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #9 ; 0 uses
  %i.h = getelementptr i8, ptr %1, i64 58360      ; 2 uses
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !20
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
  store ptr %i.j, ptr %i.l, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 4 uses
  store ptr %i.j, ptr %i.m, align 8, !tbaa !65
  %i.n = icmp eq ptr %.sroa.0.0, null
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 72 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65
  store ptr %i.p, ptr %i.l, align 8, !tbaa !65
  store ptr %i.j, ptr %i.o, align 8, !tbaa !65
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65
  store ptr %i.s, ptr %i.m, align 8, !tbaa !65
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %.sroa.0.0, ptr %i.u, align 8, !tbaa !65
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr %i.j, ptr %i.w, align 8, !tbaa !65
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %.pre.i.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.j, i64 16
  %.val17.i = load i64, ptr %i.y, align 8, !tbaa !65
  %i.z = lshr i64 %.val17.i, 12
  %i.aa = add i64 %i.z, %.01520.i                 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %7
  br i1 %i.ab, label %bb.b, label %pac_stash_decayed.exit.thread

pac_stash_decayed.exit:                           ; preds = %bb.b
  %.not = icmp eq i64 %.01520.i, 0
  br i1 %.not, label %bb.m, label %pac_stash_decayed.exit.thread

pac_stash_decayed.exit.thread:                    ; preds = %bb.e, %pac_stash_decayed.exit
  %.sroa.0.128 = phi ptr [ %.sroa.0.0, %pac_stash_decayed.exit ], [ %i.x, %bb.e ] ; 3 uses
  %.val.i21 = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.ac = tail call ptr @je_base_ehooks_get(ptr noundef %.val.i21) #9 ; 5 uses
  br i1 %5, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %pac_stash_decayed.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 60536
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8
  %.not1.i = icmp eq i64 %i.ae, 0
  br i1 %.not1.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 19424
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !66
  %i.ah = icmp eq i32 %i.ag, 2
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f, %pac_stash_decayed.exit.thread
  %.not58.i = phi i1 [ true, %bb.f ], [ false, %bb.g ], [ true, %pac_stash_decayed.exit.thread ]
  %i.ai = phi i1 [ true, %bb.f ], [ %i.ah, %bb.g ], [ true, %pac_stash_decayed.exit.thread ]
  %i.aj = load i64, ptr @je_opt_process_madvise_max_batch, align 8, !tbaa !61
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
  %.06.us.i = phi i64 [ %i.bm, %edata_list_inactive_remove.exit.us.i ], [ 0, %.lr.ph.i ]
  %.0535.us.i = phi i64 [ %i.bn, %edata_list_inactive_remove.exit.us.i ], [ 0, %.lr.ph.i ]
  %.0564.us.i = phi i64 [ %i.bl, %edata_list_inactive_remove.exit.us.i ], [ 0, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 3 uses
  %i.au = icmp eq ptr %i.at, %i.ar
  br i1 %i.au, label %edata_list_inactive_remove.exit.us.i, label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %.lr.ph.split.us.preheader.i
  %.phi.trans.insert22.i = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %.pre23.i = load ptr, ptr %.phi.trans.insert22.i, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 72 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %.pre23.i, ptr %i.ax, align 8, !tbaa !65
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !65 ; 2 uses
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  store ptr %i.bc, ptr %i.av, align 8, !tbaa !65
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !65
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store ptr %i.ar, ptr %i.bi, align 8, !tbaa !65
  br label %edata_list_inactive_remove.exit.us.i

edata_list_inactive_remove.exit.us.i:             ; preds = %.lr.ph.split.us.preheader.i, %.thread.i.us.i
  %.sroa.0.3 = phi ptr [ %i.at, %.thread.i.us.i ], [ null, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ar, i64 16
  %.054.val.us.i = load i64, ptr %i.bj, align 8, !tbaa !65
  %i.bk = lshr i64 %.054.val.us.i, 12             ; 2 uses
  %i.bl = add i64 %.0564.us.i, 1                  ; 2 uses
  %i.bm = add i64 %i.bk, %.06.us.i                ; 2 uses
  tail call void @je_extent_dalloc_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull %i.ar) #9
  %i.bn = add i64 %i.bk, %.0535.us.i              ; 2 uses
  %.not.us.i = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.us.i, label %pac_decay_stashed.exit, label %.lr.ph.split.us.preheader.i, !llvm.loop !67

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i, %bb.l
  %i.bo = phi ptr [ %.sroa.0.2, %bb.l ], [ %.sroa.0.128, %.lr.ph.i ] ; 8 uses
  %.06.i = phi i64 [ %i.cj, %bb.l ], [ 0, %.lr.ph.i ]
  %.0535.i = phi i64 [ %.1.i, %bb.l ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0564.i = phi i64 [ %i.ci, %bb.l ], [ 0, %.lr.ph.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !65 ; 3 uses
  %i.br = icmp eq ptr %i.bq, %i.bo
  br i1 %i.br, label %edata_list_inactive_remove.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.split.preheader.i
  %.phi.trans.insert18.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %.pre19.i = load ptr, ptr %.phi.trans.insert18.i, align 8, !tbaa !65
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 72 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  store ptr %.pre19.i, ptr %i.bu, align 8, !tbaa !65
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !65 ; 2 uses
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !65
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !65
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !65 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !65
  %i.ce = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  store ptr %i.bo, ptr %i.cf, align 8, !tbaa !65
  br label %edata_list_inactive_remove.exit.i

edata_list_inactive_remove.exit.i:                ; preds = %.lr.ph.split.preheader.i, %.thread.i.i
  %.sroa.0.2 = phi ptr [ %i.bq, %.thread.i.i ], [ null, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bo, i64 16
  %.054.val.i = load i64, ptr %i.cg, align 8, !tbaa !65 ; 2 uses
  %i.ch = lshr i64 %.054.val.i, 12                ; 2 uses
  %i.ci = add i64 %.0564.i, 1                     ; 2 uses
  %i.cj = add i64 %i.ch, %.06.i                   ; 2 uses
  %i.ck = load i32, ptr %i.ap, align 8, !tbaa !66
  %.not12.i = icmp eq i32 %i.ck, 1
  br i1 %.not12.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %edata_list_inactive_remove.exit.i
  %i.cl = and i64 %.054.val.i, -4096
  %i.cm = tail call zeroext i1 @je_extent_purge_lazy_wrapper(ptr noundef %0, ptr noundef %i.ac, ptr noundef nonnull %i.bo, i64 noundef 0, i64 noundef %i.cl) #9
  br i1 %i.cm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @je_ecache_dalloc(ptr noundef %0, ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bo) #9
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %edata_list_inactive_remove.exit.i
  tail call void @je_extent_dalloc_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull %i.bo) #9
  %i.cn = add i64 %i.ch, %.0535.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i64 [ %i.cn, %bb.k ], [ %.0535.i, %bb.j ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i, label %pac_decay_stashed.exit, label %.lr.ph.split.preheader.i, !llvm.loop !67

pac_decay_stashed.exit:                           ; preds = %bb.l, %edata_list_inactive_remove.exit.us.i, %.critedge.i
  %.056.lcssa.i = phi i64 [ 0, %.critedge.i ], [ %i.bl, %edata_list_inactive_remove.exit.us.i ], [ %i.ci, %bb.l ]
  %.053.lcssa.i = phi i64 [ 0, %.critedge.i ], [ %i.bn, %edata_list_inactive_remove.exit.us.i ], [ %.1.i, %bb.l ]
  %.0.lcssa.i = phi i64 [ 0, %.critedge.i ], [ %i.bm, %edata_list_inactive_remove.exit.us.i ], [ %i.cj, %bb.l ]
  %i.co = atomicrmw add ptr %3, i64 1 monotonic, align 8 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = atomicrmw add ptr %i.cp, i64 %.056.lcssa.i monotonic, align 8 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = atomicrmw add ptr %i.cr, i64 %.0.lcssa.i monotonic, align 8 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 62208
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !39
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cw = shl i64 %.053.lcssa.i, 12
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
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !55
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.dd, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %0, ptr %i.dc, align 8, !tbaa !59
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !60
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !60
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.o, %bb.p
  store i8 0, ptr %i.a, align 8, !tbaa !64
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
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 9768
  %i.m = call i64 @je_eset_npages_get(ptr noundef nonnull %i.l) #9
  %i.n = add i64 %i.m, %i.k                       ; 3 uses
  %i.o = call zeroext i1 @je_decay_maybe_advance_epoch(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef %i.n) #9 ; 2 uses
  %i.p = icmp eq i32 %5, 0
  %i.q = icmp eq i32 %5, 2
  %or.cond = and i1 %i.q, %i.o
  %or.cond29 = select i1 %i.p, i1 true, i1 %or.cond
  br i1 %or.cond29, label %bb.e, label %pac_decay_try_purge.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %2, i64 160
  %.val = load i64, ptr %i.r, align 8, !tbaa !69  ; 3 uses
  %i.s = icmp ugt i64 %i.n, %.val
  br i1 %i.s, label %bb.f, label %pac_decay_try_purge.exit

bb.f:                                             ; preds = %bb.e
  %i.t = sub nuw i64 %i.n, %.val
  call fastcc void @pac_decay_to_limit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, i1 noundef zeroext false, i64 noundef %.val, i64 noundef %i.t)
  br label %pac_decay_try_purge.exit

pac_decay_try_purge.exit:                         ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %pac_decay_try_purge.exit
  %.0 = phi i1 [ %i.o, %pac_decay_try_purge.exit ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare void @je_nstime_init_update(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @je_decay_maybe_advance_epoch(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pac_decay_ms_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.nstime_t, align 8           ; 4 uses
  %i.a = icmp eq i32 %2, 1                        ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 62208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %.sink13.i = select i1 %i.a, i64 40, i64 19480
  %.sink12.v.i = select i1 %i.a, i64 58632, i64 60416
  %.sink12.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink12.v.i ; 9 uses
  %.sink.idx.i = select i1 %i.a, i64 0, i64 24
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink.idx.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sink13.i
  %i.e = tail call zeroext i1 @je_decay_ms_valid(i64 noundef %3) #9 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 72 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.f) #9
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.c

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 64
  store atomic i8 1, ptr %i.h monotonic, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %.sink12.i) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %malloc_mutex_trylock_final.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 56 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.m, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.l, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !60
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @je_nstime_init_update(ptr noundef nonnull %5) #9
  call void @je_decay_reinit(ptr noundef nonnull %.sink12.i, ptr noundef nonnull %5, i64 noundef %3) #9
  %i.q = call zeroext i1 @je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %.sink12.i, ptr noundef %.sink.i, ptr noundef nonnull %i.d, i32 noundef %4) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 64
  store atomic i8 0, ptr %i.r monotonic, align 8
  %i.s = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %malloc_mutex_lock.exit
  %.0 = xor i1 %i.e, true
  ret i1 %.0
}

declare zeroext i1 @je_decay_ms_valid(i64 noundef) local_unnamed_addr #2

declare void @je_decay_reinit(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i64 @je_pac_decay_ms_get(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = select i1 %i.a, i64 58752, i64 60536
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_pac_reset(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_pac_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 58360
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = tail call ptr @je_base_ehooks_get(ptr noundef %.val) #9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 38920 ; 2 uses
  %i.d = tail call ptr @je_ecache_evict(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.b, ptr noundef nonnull %i.c, i64 noundef 0) #9 ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.f, %.lr.ph ], [ %i.d, %bb.a ]
  tail call void @je_extent_destroy_wrapper(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.b, ptr noundef nonnull %i.e) #9
  %i.f = tail call ptr @je_ecache_evict(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.b, ptr noundef nonnull %i.c, i64 noundef 0) #9 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare ptr @je_ecache_evict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @je_extent_destroy_wrapper(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pac_alloc_real(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = tail call ptr @je_ecache_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #9 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.thread88

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60536
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %.not93 = icmp eq i64 %i.e, 0
  br i1 %.not93, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 19480
  %i.g = tail call ptr @je_ecache_alloc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.f, ptr noundef null, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.066 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.h = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !46, !range !47, !noundef !48
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp eq ptr %.066, null
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.k, label %pac_alloc_retained_batched_size.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw i64 %3, 1
  %i.m = add i64 %i.l, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.m, i1 true)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = xor i32 %i.o, 63                         ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = icmp samesign ult i32 %i.p, 7
  %i.s = add nsw i64 %i.q, -3
  %notmask.i.i = shl nsw i64 -1, %i.s
  %i.t = xor i64 %notmask.i.i, -1
  %i.u = select i1 %i.r, i64 15, i64 %i.t         ; 2 uses
  %i.v = add nuw i64 %i.u, %3
  %i.w = xor i64 %i.u, -1
  %i.x = and i64 %i.v, %i.w
  %i.y = add nuw nsw i64 %3, 2097151
  %i.z = and i64 %i.y, 9223372036852678656
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.z)
  br label %pac_alloc_retained_batched_size.exit

pac_alloc_retained_batched_size.exit:             ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.aa, %bb.f ], [ %3, %bb.e ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 38920 ; 2 uses
  %i.ac = tail call ptr @je_ecache_alloc_grow(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.ab, ptr noundef null, i64 noundef %.0.i, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #9 ; 5 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %pac_alloc_retained_batched_size.exit
  %i.ad = icmp ugt i64 %.0.i, %3
  br i1 %i.ad, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ae = sub nuw i64 %.0.i, %3
  %i.af = tail call ptr @je_extent_split_wrapper(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.ac, i64 noundef %3, i64 noundef %i.ae, i1 noundef zeroext false) #9 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @je_ecache_dalloc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #9
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @je_ecache_dalloc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.af) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g, %pac_alloc_retained_batched_size.exit
  %.268.a = phi ptr [ null, %pac_alloc_retained_batched_size.exit ], [ %i.ac, %bb.g ], [ null, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.not78 = icmp eq ptr %.268.a, null
  %spec.select = select i1 %.not78, i64 0, i64 %.0.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.167 = phi i64 [ %spec.select, %bb.k ], [ 0, %bb.d ] ; 2 uses
  %.3 = phi ptr [ %.268.a, %bb.k ], [ %.066, %bb.d ] ; 2 uses
  %i.ah = icmp eq ptr %.3, null
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 38920
  %i.aj = tail call ptr @je_ecache_alloc_grow(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.ai, ptr noundef null, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #9 ; 2 uses
  %.not79 = icmp eq ptr %i.aj, null
  %spec.select82 = select i1 %.not79, i64 %.167, i64 %3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.268 = phi i64 [ %.167, %bb.l ], [ %spec.select82, %bb.m ] ; 2 uses
  %.4 = phi ptr [ %.3, %bb.l ], [ %i.aj, %bb.m ]  ; 2 uses
  %.not80 = icmp eq i64 %.268, 0
  br i1 %.not80, label %.thread88, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 62208
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = atomicrmw add ptr %i.am, i64 %.268 monotonic, align 8 ; 0 uses
  br label %.thread88

.thread88:                                        ; preds = %bb.a, %bb.o, %bb.n
  %.492 = phi ptr [ %.4, %bb.n ], [ %.4, %bb.o ], [ %i.b, %bb.a ]
  ret ptr %.492
}

declare ptr @je_ecache_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @je_ecache_alloc_grow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @je_extent_split_wrapper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @je_ecache_dalloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

declare ptr @je_san_bump_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @je_san_guard_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @je_extent_merge_wrapper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_extent_dalloc_wrapper(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_san_unguard_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @je_decay_ns_until_purge(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #7

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

declare zeroext i1 @je_extent_purge_lazy_wrapper(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @je_eset_npages_get(ptr noundef) local_unnamed_addr #2

declare ptr @je_base_ehooks_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 0}
!13 = !{!"ehooks_s", !9, i64 0, !14, i64 8}
!14 = !{!"", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!17, !19, i64 112}
!17 = !{!"san_bump_alloc_s", !18, i64 0, !19, i64 112}
!18 = !{!"malloc_mutex_s", !10, i64 0}
!19 = !{!"p1 _ZTS7edata_s", !15, i64 0}
!20 = !{!21, !30, i64 58360}
!21 = !{!"pac_s", !22, i64 0, !23, i64 40, !23, i64 19480, !23, i64 38920, !30, i64 58360, !31, i64 58368, !32, i64 58376, !33, i64 58384, !18, i64 58392, !17, i64 58504, !27, i64 58624, !34, i64 58632, !34, i64 60416, !35, i64 62200, !36, i64 62208, !27, i64 62216}
!22 = !{!"pai_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!23 = !{!"ecache_s", !18, i64 0, !24, i64 112, !24, i64 9768, !9, i64 19424, !9, i64 19428, !29, i64 19432}
!24 = !{!"eset_s", !10, i64 0, !10, i64 32, !10, i64 6432, !25, i64 9632, !27, i64 9640, !9, i64 9648}
!25 = !{!"", !26, i64 0}
!26 = !{!"", !19, i64 0}
!27 = !{!"", !28, i64 0}
!28 = !{!"long", !10, i64 0}
!29 = !{!"_Bool", !10, i64 0}
!30 = !{!"p1 _ZTS6base_s", !15, i64 0}
!31 = !{!"p1 _ZTS6emap_s", !15, i64 0}
!32 = !{!"p1 _ZTS13edata_cache_s", !15, i64 0}
!33 = !{!"exp_grow_s", !9, i64 0, !9, i64 4}
!34 = !{!"decay_s", !18, i64 0, !29, i64 112, !27, i64 120, !27, i64 128, !27, i64 136, !28, i64 144, !27, i64 152, !28, i64 160, !28, i64 168, !10, i64 176, !28, i64 1776}
!35 = !{!"p1 _ZTS14malloc_mutex_s", !15, i64 0}
!36 = !{!"p1 _ZTS11pac_stats_s", !15, i64 0}
!37 = !{!21, !31, i64 58368}
!38 = !{!21, !32, i64 58376}
!39 = !{!21, !36, i64 62208}
!40 = !{!21, !35, i64 62200}
!41 = !{!21, !15, i64 0}
!42 = !{!21, !15, i64 8}
!43 = !{!21, !15, i64 16}
!44 = !{!21, !15, i64 24}
!45 = !{!21, !15, i64 32}
!46 = !{!29, !29, i64 0}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!50, !15, i64 64}
!50 = !{!"extent_hooks_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64}
!51 = !{!50, !15, i64 56}
!52 = !{!53, !28, i64 0}
!53 = !{!"edata_s", !28, i64 0, !15, i64 8, !10, i64 16, !54, i64 24, !28, i64 32, !10, i64 40, !10, i64 64}
!54 = !{!"p1 _ZTS8hpdata_s", !15, i64 0}
!55 = !{!56, !28, i64 56}
!56 = !{!"", !27, i64 0, !27, i64 8, !28, i64 16, !28, i64 24, !9, i64 32, !57, i64 36, !28, i64 40, !58, i64 48, !28, i64 56}
!57 = !{!"", !9, i64 0}
!58 = !{!"p1 _ZTS6tsdn_s", !15, i64 0}
!59 = !{!56, !58, i64 48}
!60 = !{!56, !28, i64 40}
!61 = !{!28, !28, i64 0}
!62 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!63 = !{!21, !9, i64 58388}
!64 = !{!34, !29, i64 112}
!65 = !{!10, !10, i64 0}
!66 = !{!23, !9, i64 19424}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!34, !28, i64 160}
!70 = distinct !{!70, !68}
end_hunk_0
