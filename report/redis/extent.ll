inline.NumInlined: 275
inline.NumDeleted: 91
begin_hunk_0_@extent_recycle:tsdn_witness_tsdp_get.exit
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.s, label %extents_abandon_vm.exit.i

bb.s:                                             ; preds = %.thread38.i
  %i.bv = tail call fastcc zeroext i1 @extent_purge_lazy_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %.1142841.i, i64 noundef 0, i64 noundef %i.bn)
  br i1 %i.bv, label %bb.t, label %extents_abandon_vm.exit.i

bb.t:                                             ; preds = %bb.s
  %.val.i.i = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.bw = and i64 %.val.i.i, -4096
  %i.bx = tail call fastcc zeroext i1 @extent_purge_forced_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %.1142841.i, i64 noundef 0, i64 noundef %i.bw) ; 0 uses
  br label %extents_abandon_vm.exit.i

extents_abandon_vm.exit.i:                        ; preds = %bb.t, %bb.s, %.thread38.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 58392
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !49
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.bz, ptr noundef nonnull %.1142841.i) #9
  %i.ca = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #9
  %.not.i41.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i41.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %extents_abandon_vm.exit.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  store atomic i8 1, ptr %i.bk monotonic, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %extents_abandon_vm.exit.i
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !13
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.d, align 8, !tbaa !13
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !20
  %.not.i.i42.i = icmp eq ptr %i.cd, %0
  br i1 %.not.i.i42.i, label %extent_recycle_split.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %0, ptr %i.g, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !21
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !21
  br label %extent_recycle_split.exit.thread

extent_recycle_split.exit.thread:                 ; preds = %bb.v, %bb.w, %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.ch monotonic, align 8
  %i.ci = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.ah

bb.x:                                             ; preds = %bb.q, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.cj monotonic, align 8
  %i.ck = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.cl = load i8, ptr %8, align 1, !tbaa !11, !range !42, !noundef !43
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %.val20.i = load i64, ptr %.043.i, align 8, !tbaa !47
  %i.cn = and i64 %.val20.i, 8192
  %.not21.i = icmp eq i64 %i.cn, 0
  br i1 %.not21.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr i8, ptr %.043.i, i64 16
  %.val17.i = load i64, ptr %i.co, align 8, !tbaa !40
  %i.cp = and i64 %.val17.i, -4096
  %i.cq = tail call fastcc zeroext i1 @extent_commit_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %.043.i, i64 noundef 0, i64 noundef %i.cp) ; 2 uses
  %.not.i50 = xor i1 %7, true
  %brmerge.i = or i1 %i.cq, %.not.i50
  br i1 %brmerge.i, label %je_extent_commit_zero.exit, label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.x
  br i1 %7, label %bb.ab, label %je_extent_commit_zero.exit.thread

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.val19.i = load i64, ptr %.043.i, align 8, !tbaa !47
  %i.cr = and i64 %.val19.i, 32768
  %.not22.i = icmp eq i64 %i.cr, 0
  br i1 %.not22.i, label %bb.ac, label %je_extent_commit_zero.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cs = getelementptr i8, ptr %.043.i, i64 8
  %.val18.i = load ptr, ptr %i.cs, align 8, !tbaa !44
  %i.ct = ptrtoint ptr %.val18.i to i64
  %i.cu = and i64 %i.ct, -4096
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  %i.cw = getelementptr i8, ptr %.043.i, i64 16
  %.val.i49 = load i64, ptr %i.cw, align 8, !tbaa !40
  %i.cx = and i64 %.val.i49, -4096                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = load atomic ptr, ptr %i.cy acquire, align 8
  %i.da = icmp eq ptr %i.cz, @je_ehooks_default_extent_hooks
  br i1 %i.da, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @je_ehooks_default_zero_impl(ptr noundef %i.cv, i64 noundef range(i64 0, -4095) %i.cx) #9
  br label %je_extent_commit_zero.exit.thread

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr align 4096 %i.cv, i8 0, i64 range(i64 0, -4095) %i.cx, i1 false)
  br label %je_extent_commit_zero.exit.thread

je_extent_commit_zero.exit:                       ; preds = %bb.z
  br i1 %i.cq, label %bb.af, label %je_extent_commit_zero.exit.thread

bb.af:                                            ; preds = %je_extent_commit_zero.exit
  tail call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %.043.i)
  br label %bb.ah

je_extent_commit_zero.exit.thread:                ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.aa, %je_extent_commit_zero.exit
  %.val = load i64, ptr %.043.i, align 8, !tbaa !47
  %i.db = and i64 %.val, 8192
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %je_extent_commit_zero.exit.thread
  store i8 1, ptr %8, align 1, !tbaa !11
  br label %bb.ah

bb.ah:                                            ; preds = %extent_recycle_split.exit.thread, %je_extent_commit_zero.exit.thread, %bb.ag, %bb.af, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %extent_recycle_split.exit.thread ], [ null, %bb.af ], [ %.043.i, %bb.ag ], [ %.043.i, %je_extent_commit_zero.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden ptr @je_ecache_alloc_grow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = icmp eq ptr %0, null                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i8 1, ptr %i.c, align 1, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 58472 ; 5 uses
  %i.f = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.e) #9
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 58408
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.g) #9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 1, ptr %i.h monotonic, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tsdn_witness_tsdp_get.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 58464 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 58456 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.m, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 58448 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 38936 ; 6 uses
  %i.r = call fastcc ptr @extent_recycle(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.q, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull %i.c, i1 noundef zeroext %8) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.d, label %extent_alloc_retained.exit.thread28

extent_alloc_retained.exit.thread28:              ; preds = %malloc_mutex_lock.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.s monotonic, align 8
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.at

bb.d:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.u = load i8, ptr @je_opt_retain, align 1, !tbaa !11, !range !42, !noundef !43
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = icmp eq ptr %4, null                     ; 2 uses
  %or.cond.i = and i1 %i.w, %i.v
  %or.cond.not.i = xor i1 %or.cond.i, true
  %or.cond3.i = or i1 %8, %or.cond.not.i
  br i1 %or.cond3.i, label %extent_alloc_retained.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.x = add i64 %6, 4095
  %i.y = and i64 %i.x, -4096                      ; 2 uses
  %i.z = add i64 %5, -4096
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %5
  br i1 %i.ab, label %extent_alloc_retained.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 58400 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !50 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %9 = trunc i64 %indvars.iv.i.i to i32           ; 2 uses
  %10 = add i32 %i.ad, %9
  %.pn.i.i.i = zext i32 %10 to i64
  %storemerge.in.i.i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %.pn.i.i.i
  %storemerge.i.i.i = load i64, ptr %storemerge.in.i.i.i, align 8, !tbaa !51 ; 4 uses
  %i.ae = icmp ult i64 %storemerge.i.i.i, %i.aa
  br i1 %i.ae, label %bb.h, label %exp_grow_size_prepare.exit.i.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %i.af = add i32 %i.ad, %indvars.i.i
  %i.ag = icmp ugt i32 %i.af, 197
  br i1 %i.ag, label %extent_alloc_retained.exit, label %bb.g, !llvm.loop !52

exp_grow_size_prepare.exit.i.i:                   ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 58392 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.aj = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef %i.ai) #9 ; 14 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %extent_alloc_retained.exit, label %bb.i

bb.i:                                             ; preds = %exp_grow_size_prepare.exit.i.i
  store i8 0, ptr %i.a, align 1, !tbaa !11
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 3 uses
  %i.an = icmp eq ptr %i.am, @je_ehooks_default_extent_hooks
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val26.i.i.i = load i32, ptr %2, align 8, !tbaa !54
  %i.ao = call ptr @je_ehooks_default_alloc_impl(ptr noundef %0, ptr noundef null, i64 noundef %storemerge.i.i.i, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val26.i.i.i) #9
  br label %ehooks_alloc.exit.i.i

bb.k:                                             ; preds = %bb.i
  br i1 %i.d, label %bb.l, label %tsd_fetch_impl.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 832
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %tsd_fetch_impl.exit.i.i.i.i, label %bb.m, !prof !57

bb.m:                                             ; preds = %bb.l
  %i.as = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ap, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i.i.i

tsd_fetch_impl.exit.i.i.i.i:                      ; preds = %bb.m, %bb.l, %bb.k
  %i.at = phi ptr [ %i.ap, %bb.l ], [ %i.as, %bb.m ], [ %0, %bb.k ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 832
  %i.av = load i8, ptr %i.au, align 8, !tbaa !40
  %i.aw = icmp eq i8 %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !40
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !40
  br i1 %i.aw, label %bb.n, label %ehooks_pre_reentrancy.exit.i.i.i

bb.n:                                             ; preds = %tsd_fetch_impl.exit.i.i.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.at) #9
  br label %ehooks_pre_reentrancy.exit.i.i.i

ehooks_pre_reentrancy.exit.i.i.i:                 ; preds = %bb.n, %tsd_fetch_impl.exit.i.i.i.i
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !58
  %.val.i.i.i = load i32, ptr %2, align 8, !tbaa !54
  %i.bb = call ptr %i.ba(ptr noundef nonnull %i.am, ptr noundef null, i64 noundef %storemerge.i.i.i, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val.i.i.i) #9, !inline_history !60 ; 2 uses
  br i1 %i.d, label %bb.o, label %tsd_fetch_impl.exit.i27.i.i.i

bb.o:                                             ; preds = %ehooks_pre_reentrancy.exit.i.i.i
  %i.bc = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 832
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !40
  %.not.i.i28.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i28.i.i.i, label %tsd_fetch_impl.exit.i27.i.i.i, label %bb.p, !prof !57

bb.p:                                             ; preds = %bb.o
  %i.bf = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.bc, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i27.i.i.i

tsd_fetch_impl.exit.i27.i.i.i:                    ; preds = %bb.p, %bb.o, %ehooks_pre_reentrancy.exit.i.i.i
  %i.bg = phi ptr [ %i.bc, %bb.o ], [ %i.bf, %bb.p ], [ %0, %ehooks_pre_reentrancy.exit.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !40
  %i.bj = add i8 %i.bi, -1                        ; 2 uses
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !40
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.q, label %ehooks_alloc.exit.i.i

bb.q:                                             ; preds = %tsd_fetch_impl.exit.i27.i.i.i
  call void @je_tsd_slow_update(ptr noundef nonnull %i.bg) #9
  br label %ehooks_alloc.exit.i.i

ehooks_alloc.exit.i.i:                            ; preds = %bb.q, %tsd_fetch_impl.exit.i27.i.i.i, %bb.j
  %.0.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %i.bb, %tsd_fetch_impl.exit.i27.i.i.i ], [ %i.bb, %bb.q ] ; 2 uses
  %i.bl = icmp eq ptr %.0.i.i.i, null
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %ehooks_alloc.exit.i.i
  %i.bm = load ptr, ptr %i.ah, align 8, !tbaa !49
  call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.bm, ptr noundef nonnull %i.aj) #9
  br label %extent_alloc_retained.exit

bb.s:                                             ; preds = %ehooks_alloc.exit.i.i
  %i.bn = getelementptr i8, ptr %1, i64 58364
  %.val79.i.i = load i32, ptr %i.bn, align 4, !tbaa !61
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 62232
  %i.bp = atomicrmw add ptr %i.bo, i64 1 monotonic, align 8
  %i.bq = load i8, ptr %i.a, align 1, !tbaa !11, !range !42, !noundef !43
  %i.br = load i8, ptr %i.b, align 1, !tbaa !11, !range !42, !noundef !43
  %i.bs = load i64, ptr %i.aj, align 8, !tbaa !47
  %i.bt = and i64 %i.bs, -17592454479872
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %.0.i.i.i, ptr %i.bu, align 8, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !40
  %i.bx = and i64 %i.bw, 4095
  %i.by = or i64 %i.bx, %storemerge.i.i.i
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %i.bp, ptr %i.bz, align 8, !tbaa !62
  %i.ca = and i32 %.val79.i.i, -268431361
  %.masked.masked.i.i.i = zext i32 %i.ca to i64
  %i.cb = zext nneg i8 %i.bq to i64
  %i.cc = shl nuw nsw i64 %i.cb, 15
  %i.cd = zext nneg i8 %i.br to i64
  %i.ce = shl nuw nsw i64 %i.cd, 13
  %i.cf = or disjoint i64 %i.cc, %.masked.masked.i.i.i
  %i.cg = or disjoint i64 %i.cf, %i.ce
  %i.ch = or i64 %i.bt, %i.cg
  %i.ci = or i64 %i.ch, 17592432459776
  store i64 %i.ci, ptr %i.aj, align 8, !tbaa !47
  %i.cj = getelementptr i8, ptr %1, i64 58384     ; 2 uses
  %.val80.i.i = load ptr, ptr %i.cj, align 8, !tbaa !22
  %i.ck = call zeroext i1 @je_emap_register_boundary(ptr noundef %0, ptr noundef %.val80.i.i, ptr noundef nonnull %i.aj, i32 noundef 235, i1 noundef zeroext false) #9
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr %i.ah, align 8, !tbaa !49
  call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.cl, ptr noundef nonnull %i.aj) #9
  br label %extent_alloc_retained.exit

bb.u:                                             ; preds = %bb.s
  %.val77.i.i = load i64, ptr %i.aj, align 8, !tbaa !47
  %i.cm = and i64 %.val77.i.i, 8192
  %.not138.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not138.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.c, align 1, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.val49.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.cn = ptrtoint ptr %.val49.i.i.i to i64
  %i.co = and i64 %i.cn, -4096                    ; 3 uses
  %i.cp = add i64 %6, -1
  %i.cq = add i64 %i.cp, %i.co
  %i.cr = sub i64 0, %i.y
  %i.cs = and i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = sub i64 %i.cs, %i.co                    ; 3 uses
  %.val47.i.i.i = load i64, ptr %i.bv, align 8, !tbaa !40
  %i.cu = and i64 %.val47.i.i.i, -4096            ; 2 uses
  %i.cv = add i64 %i.ct, %5
  %i.cw = icmp ult i64 %i.cu, %i.cv
  br i1 %i.cw, label %extent_alloc_retained.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = sub i64 %i.cu, %i.ct                    ; 3 uses
  %i.cy = sub i64 %i.cx, %5
  %.not.i.i32.i = icmp eq i64 %i.cs, %i.co
  br i1 %.not.i.i32.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = call fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %i.aj, i64 noundef %i.ct, i64 noundef %i.cx) ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.thread134.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0148.i.i = phi ptr [ %i.aj, %bb.x ], [ %i.cz, %bb.y ] ; 11 uses
  %.0147.i.i = phi ptr [ null, %bb.x ], [ %i.aj, %bb.y ] ; 4 uses
  %.not46.i.i.i = icmp eq i64 %i.cx, %5
  br i1 %.not46.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = call fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %.0148.i.i, i64 noundef %5, i64 noundef %i.cy) ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %extent_split_interior.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1110.ph.i.i = phi ptr [ %i.db, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %.not71.i.i = icmp eq ptr %.0147.i.i, null
  br i1 %.not71.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.0147.i.i)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not72.i.i = icmp eq ptr %.1110.ph.i.i, null
  br i1 %.not72.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.1110.ph.i.i)
  br label %bb.ag

extent_split_interior.exit.i.i:                   ; preds = %bb.aa
  %.not.i33.i = icmp eq ptr %.0147.i.i, null
  br i1 %.not.i33.i, label %.thread134.i.i, label %bb.af

bb.af:                                            ; preds = %extent_split_interior.exit.i.i
  call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.0147.i.i)
  br label %.thread134.i.i

.thread134.i.i:                                   ; preds = %bb.af, %extent_split_interior.exit.i.i, %bb.y
  %.1108125137.i.i = phi ptr [ %i.aj, %bb.y ], [ %.0148.i.i, %bb.af ], [ %.0148.i.i, %extent_split_interior.exit.i.i ] ; 2 uses
  %.val78.i.i = load ptr, ptr %i.cj, align 8, !tbaa !22
  call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %.val78.i.i, ptr noundef nonnull %.1108125137.i.i) #9
  call fastcc void @extents_abandon_vm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.1108125137.i.i)
  br label %extent_alloc_retained.exit

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.dd = load i8, ptr %i.c, align 1, !tbaa !11, !range !42, !noundef !43
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %.val76.i.i = load i64, ptr %.0148.i.i, align 8, !tbaa !47
  %i.df = and i64 %.val76.i.i, 8192
  %.not139.i.i = icmp eq i64 %i.df, 0
  br i1 %.not139.i.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dg = getelementptr i8, ptr %.0148.i.i, i64 16
  %.val73.i.i = load i64, ptr %i.dg, align 8, !tbaa !40
  %i.dh = and i64 %.val73.i.i, -4096
  %i.di = call fastcc zeroext i1 @extent_commit_impl(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %.0148.i.i, i64 noundef 0, i64 noundef %i.dh)
  br i1 %i.di, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.0148.i.i)
  br label %extent_alloc_retained.exit

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.dj = load i32, ptr %i.ac, align 8, !tbaa !50
  %i.dk = add i32 %9, 1
  %i.dl = add i32 %i.dk, %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 58404
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !63
  %storemerge.i81.i.i = call i32 @llvm.umin.i32(i32 %i.dl, i32 %i.dn)
  store i32 %storemerge.i81.i.i, ptr %i.ac, align 8, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.do monotonic, align 8
  %i.dp = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br i1 %7, label %bb.al, label %extent_alloc_retained.exit.thread30

bb.al:                                            ; preds = %bb.ak
  %.val75.i.i = load i64, ptr %.0148.i.i, align 8, !tbaa !47
  %i.dq = and i64 %.val75.i.i, 32768
  %.not140.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not140.i.i, label %bb.am, label %extent_alloc_retained.exit.thread30

bb.am:                                            ; preds = %bb.al
  %i.dr = getelementptr i8, ptr %.0148.i.i, i64 8
  %.val74.i.i = load ptr, ptr %i.dr, align 8, !tbaa !44
  %i.ds = ptrtoint ptr %.val74.i.i to i64
  %i.dt = and i64 %i.ds, -4096
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  %i.dv = getelementptr i8, ptr %.0148.i.i, i64 16
  %.val.i.i = load i64, ptr %i.dv, align 8, !tbaa !40
  %i.dw = and i64 %.val.i.i, -4096                ; 2 uses
  %i.dx = load atomic ptr, ptr %i.al acquire, align 8
  %i.dy = icmp eq ptr %i.dx, @je_ehooks_default_extent_hooks
  br i1 %i.dy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @je_ehooks_default_zero_impl(ptr noundef %i.du, i64 noundef range(i64 0, -4095) %i.dw) #9
  br label %extent_alloc_retained.exit.thread30

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr align 4096 %i.du, i8 0, i64 range(i64 0, -4095) %i.dw, i1 false)
  br label %extent_alloc_retained.exit.thread30

extent_alloc_retained.exit.thread:                ; preds = %bb.d
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.dz monotonic, align 8
  %i.ea = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.ap

extent_alloc_retained.exit.thread30:              ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

extent_alloc_retained.exit:                       ; preds = %bb.h, %bb.e, %exp_grow_size_prepare.exit.i.i, %bb.r, %bb.t, %bb.w, %.thread134.i.i, %bb.aj
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.eb monotonic, align 8
  %i.ec = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.ap:                                            ; preds = %extent_alloc_retained.exit, %extent_alloc_retained.exit.thread
  %i.ed = load i8, ptr @je_opt_retain, align 1, !tbaa !11, !range !42, !noundef !43
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = icmp ne ptr %4, null
  %or.cond = and i1 %i.ef, %i.ee
  %brmerge = or i1 %8, %or.cond
  br i1 %brmerge, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.w, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eg = getelementptr i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.eg, align 8, !tbaa !44
  %i.eh = getelementptr i8, ptr %4, i64 16
  %.val26 = load i64, ptr %i.eh, align 8, !tbaa !40
  %i.ei = ptrtoint ptr %.val to i64
  %i.ej = and i64 %i.ei, -4096
  %i.ek = and i64 %.val26, -4096
  %i.el = add i64 %i.ek, %i.ej
  %i.em = inttoptr i64 %i.el to ptr
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.en = phi ptr [ %i.em, %bb.ar ], [ null, %bb.aq ]
  %i.eo = call ptr @je_extent_alloc_wrapper(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.en, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull %i.c, i1 zeroext poison)
  br label %bb.at

bb.at:                                            ; preds = %extent_alloc_retained.exit.thread30, %extent_alloc_retained.exit.thread28, %bb.ap, %bb.as
  %.023 = phi ptr [ %.0148.i.i, %extent_alloc_retained.exit.thread30 ], [ null, %bb.ap ], [ %i.eo, %bb.as ], [ %i.r, %extent_alloc_retained.exit.thread28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_extent_alloc_wrapper(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %7, i1 zeroext %8) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = zext i1 %6 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !11
  %i.c = icmp eq ptr %0, null                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 58392 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef %i.e) #9 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.h = add i64 %5, 4095
  %i.i = and i64 %i.h, -4096                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 3 uses
  %i.l = icmp eq ptr %i.k, @je_ehooks_default_extent_hooks
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val26.i = load i32, ptr %2, align 8, !tbaa !54
  %i.m = call ptr @je_ehooks_default_alloc_impl(ptr noundef %0, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, -4095) %i.i, ptr noundef nonnull %i.a, ptr noundef %7, i32 noundef %.val26.i) #9
  br label %ehooks_alloc.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %tsd_fetch_impl.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 832
  %i.p = load i8, ptr %i.o, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.n, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 832
  %i.t = load i8, ptr %i.s, align 8, !tbaa !40
  %i.u = icmp eq i8 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40
  %i.x = add i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 1, !tbaa !40
  br i1 %i.u, label %bb.f, label %ehooks_pre_reentrancy.exit.i

bb.f:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.r) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !58
  %.val.i = load i32, ptr %2, align 8, !tbaa !54
  %i.z = call ptr %i.y(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, -4095) %i.i, ptr noundef nonnull %i.a, ptr noundef %7, i32 noundef %.val.i) #9, !inline_history !64 ; 2 uses
  br i1 %i.c, label %bb.g, label %tsd_fetch_impl.exit.i27.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.aa = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 832
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !40
  %.not.i.i28.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i28.i, label %tsd_fetch_impl.exit.i27.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.ad = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.aa, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i27.i

tsd_fetch_impl.exit.i27.i:                        ; preds = %bb.h, %bb.g, %ehooks_pre_reentrancy.exit.i
  %i.ae = phi ptr [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !40
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %ehooks_alloc.exit

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i27.i
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ae) #9
  br label %ehooks_alloc.exit

ehooks_alloc.exit:                                ; preds = %bb.b, %tsd_fetch_impl.exit.i27.i, %bb.i
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.z, %tsd_fetch_impl.exit.i27.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.aj = icmp eq ptr %.0.i, null
  br i1 %i.aj, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %ehooks_alloc.exit
  %i.ak = getelementptr i8, ptr %1, i64 19484
  %.val33 = load i32, ptr %i.ak, align 4, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 62232
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = load i8, ptr %i.a, align 1, !tbaa !11, !range !42, !noundef !43
  %i.ao = load i8, ptr %7, align 1, !tbaa !11, !range !42, !noundef !43
  %i.ap = load i8, ptr @je_opt_retain, align 1, !tbaa !11, !range !42, !noundef !43
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !47
  %i.ar = and i64 %i.aq, -17592454479872
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.0.i, ptr %i.as, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !40
  %i.av = and i64 %i.au, 4095
  %i.aw = or i64 %i.av, %4
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.am, ptr %i.ax, align 8, !tbaa !62
  %i.ay = and i32 %.val33, -268431361
end_hunk_0
