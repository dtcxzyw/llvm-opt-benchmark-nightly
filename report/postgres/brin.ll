Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/brin?download=true
inline.NumInlined: 96
inline.NumDeleted: 45
begin_hunk_0_@brinbuild:bb.a
  %i.fi = load ptr, ptr %i.ei, align 8
  call void @tuplesort_initialize_shared(ptr noundef %i.fh, i32 noundef %i.cn, ptr noundef %i.fi) #9
  %i.fj = load ptr, ptr %i.en, align 8
  call void @shm_toc_insert(ptr noundef %i.fj, i64 noundef -5764607523034234879, ptr noundef nonnull %i.ep) #9
  %i.fk = load ptr, ptr %i.en, align 8
  call void @shm_toc_insert(ptr noundef %i.fk, i64 noundef -5764607523034234878, ptr noundef %i.fh) #9
  %i.fl = load ptr, ptr @debug_query_string, align 8
  %.not107.i = icmp eq ptr %i.fl, null
  br i1 %.not107.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fm = load ptr, ptr %i.en, align 8
  %i.fn = call ptr @shm_toc_allocate(ptr noundef %i.fm, i64 noundef %.0.i62) #9 ; 2 uses
  %i.fo = load ptr, ptr @debug_query_string, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr align 1 %i.fo, i64 %.0.i62, i1 false)
  %i.fp = load ptr, ptr %i.en, align 8
  call void @shm_toc_insert(ptr noundef %i.fp, i64 noundef -5764607523034234877, ptr noundef %i.fn) #9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fq = load ptr, ptr %i.en, align 8
  %i.fr = load i32, ptr %i.dg, align 4
  %i.fs = sext i32 %i.fr to i64
  %i.ft = call i64 @mul_size(i64 noundef 40, i64 noundef %i.fs) #9
  %i.fu = call ptr @shm_toc_allocate(ptr noundef %i.fq, i64 noundef %i.ft) #9 ; 2 uses
  %i.fv = load ptr, ptr %i.en, align 8
  call void @shm_toc_insert(ptr noundef %i.fv, i64 noundef -5764607523034234876, ptr noundef %i.fu) #9
  %i.fw = load ptr, ptr %i.en, align 8
  %i.fx = load i32, ptr %i.dg, align 4
  %i.fy = sext i32 %i.fx to i64
  %i.fz = call i64 @mul_size(i64 noundef 128, i64 noundef %i.fy) #9
  %i.ga = call ptr @shm_toc_allocate(ptr noundef %i.fw, i64 noundef %i.fz) #9 ; 2 uses
  %i.gb = load ptr, ptr %i.en, align 8
  call void @shm_toc_insert(ptr noundef %i.gb, i64 noundef -5764607523034234875, ptr noundef %i.ga) #9
  call void @LaunchParallelWorkers(ptr noundef nonnull %i.cm) #9
  store ptr %i.cm, ptr %i.cl, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cm, i64 28 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.gf = add i32 %i.gd, 1
  store i32 %i.gf, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  store ptr %i.ep, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  store ptr %i.fh, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  store ptr %.0105.i, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cl, i64 40 ; 2 uses
  store ptr %i.fu, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 2 uses
  store ptr %i.ga, ptr %i.gk, align 8
  %i.gl = load i32, ptr %i.gc, align 4
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @WaitForParallelWorkersToFinish(ptr noundef nonnull %i.cm) #9
  %i.gn = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.ac ] ; 3 uses
  %i.gr = load ptr, ptr %i.gk, align 8
  %i.gs = getelementptr inbounds nuw [128 x i8], ptr %i.gr, i64 %indvars.iv.i.i
  %i.gt = load ptr, ptr %i.gj, align 8
  %i.gu = getelementptr inbounds nuw [40 x i8], ptr %i.gt, i64 %indvars.iv.i.i
  call void @InstrAccumParallelQuery(ptr noundef %i.gs, ptr noundef %i.gu) #9
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gv = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 28
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp slt i64 %indvars.iv.next.i.i, %i.gy
  br i1 %i.gz, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !12

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ac
  %i.ha = phi ptr [ %i.gn, %bb.ac ], [ %i.gv, %.lr.ph.i.i ]
  %i.hb = load ptr, ptr %i.gi, align 8            ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.ad, label %_brin_end_parallel.exit.i

bb.ad:                                            ; preds = %._crit_edge.i.i
  call void @UnregisterSnapshot(ptr noundef nonnull %i.hb) #9
  %.pre.i.i = load ptr, ptr %i.cl, align 8
  br label %_brin_end_parallel.exit.i

_brin_end_parallel.exit.i:                        ; preds = %bb.ad, %._crit_edge.i.i
  %i.he = phi ptr [ %.pre.i.i, %bb.ad ], [ %i.ha, %._crit_edge.i.i ]
  call void @DestroyParallelContext(ptr noundef %i.he) #9
  call void @ExitParallelMode() #9
  br label %_brin_begin_parallel.exit

bb.ae:                                            ; preds = %bb.ab
  store ptr %i.cl, ptr %i.bt, align 8
  %i.hf = load i32, ptr @maintenance_work_mem, align 4
  %i.hg = load i32, ptr %i.ge, align 8
  %i.hh = sdiv i32 %i.hf, %i.hg
  %i.hi = load ptr, ptr %i.gg, align 8
  %i.hj = load ptr, ptr %i.gh, align 8
  call fastcc void @_brin_parallel_scan_and_build(ptr noundef nonnull %i.bk, ptr noundef %i.hi, ptr noundef %i.hj, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.hh)
  call void @WaitForParallelWorkersToAttach(ptr noundef nonnull %i.cm) #9
  br label %_brin_begin_parallel.exit

_brin_begin_parallel.exit:                        ; preds = %bb.ae, %_brin_end_parallel.exit.i, %bb.y, %initialize_brin_buildstate.exit
  %i.hk = load ptr, ptr %i.bt, align 8
  %.not58 = icmp eq ptr %i.hk, null
  br i1 %.not58, label %bb.ax, label %bb.af

bb.af:                                            ; preds = %_brin_begin_parallel.exit
  %i.hl = call ptr @palloc0(i64 noundef 16) #9    ; 4 uses
  store i8 0, ptr %i.hl, align 8
  %i.hm = load ptr, ptr %i.bt, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store i32 %i.ho, ptr %i.hp, align 4
  %i.hq = load ptr, ptr %i.bt, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hs, ptr %i.ht, align 8
  %i.hu = load i32, ptr @maintenance_work_mem, align 4
  %i.hv = call ptr @tuplesort_begin_index_brin(i32 noundef %i.hu, ptr noundef nonnull %i.hl, i32 noundef 0) #9
  store ptr %i.hv, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.hw = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8            ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = load i32, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 44 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af
  %i.ie = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ib, i8 1, ptr nonnull elementtype(i8) %i.ib) #9, !srcloc !9
  %.not.i.i.i = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i, label %SpinLockAcquire.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.if = call i32 @s_lock(ptr noundef nonnull %i.ib, ptr noundef nonnull @.str.18, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #9 ; 0 uses
  br label %SpinLockAcquire.exit.i.i

SpinLockAcquire.exit.i.i:                         ; preds = %bb.ah, %bb.ag
  %i.ig = load i32, ptr %i.ic, align 8
  %i.ih = icmp eq i32 %i.ig, %i.ia
  br i1 %i.ih, label %_brin_parallel_heapscan.exit.i, label %bb.ai

bb.ai:                                            ; preds = %SpinLockAcquire.exit.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !10
  store volatile i8 0, ptr %i.ib, align 4
  call void @ConditionVariableSleep(ptr noundef nonnull %i.id, i32 noundef 134217769) #9
  br label %bb.ag

_brin_parallel_heapscan.exit.i:                   ; preds = %SpinLockAcquire.exit.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 56
  %i.ij = load double, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store double %i.ij, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.im = load double, ptr %i.il, align 8
  store double %i.im, ptr %i.bl, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !10
  store volatile i8 0, ptr %i.ib, align 4
  %i.in = call zeroext i1 @ConditionVariableCancelSleep() #9 ; 0 uses
  %i.io = load double, ptr %i.ik, align 8
  %i.ip = load ptr, ptr %i.bv, align 8
  call void @tuplesort_performsort(ptr noundef %i.ip) #9
  %i.iq = load ptr, ptr %i.bq, align 8
  %i.ir = call ptr @brin_new_memtuple(ptr noundef %i.iq) #9
  %i.is = load ptr, ptr @CurrentMemoryContext, align 8
  %i.it = call ptr @AllocSetContextCreateInternal(ptr noundef %i.is, ptr noundef nonnull @.str.15, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #9 ; 3 uses
  %i.iu = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.it, ptr @CurrentMemoryContext, align 8
  %i.iv = load ptr, ptr %i.bv, align 8
  %i.iw = call ptr @tuplesort_getbrintuple(ptr noundef %i.iv, ptr noundef nonnull %i.b, i1 noundef zeroext true) #9 ; 2 uses
  %.not7882.i = icmp eq ptr %i.iw, null
  br i1 %.not7882.i, label %.outer._crit_edge.thread.i, label %.lr.ph.lr.ph.i

.outer._crit_edge.thread.i:                       ; preds = %_brin_parallel_heapscan.exit.i
  %i.ix = load ptr, ptr %i.bv, align 8
  call void @tuplesort_end(ptr noundef %i.ix) #9
  br label %.split51.i

.lr.ph.lr.ph.i:                                   ; preds = %_brin_parallel_heapscan.exit.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %brin_fill_empty_ranges.exit.i, %.lr.ph.lr.ph.i
  %i.ja = phi ptr [ %i.iw, %.lr.ph.lr.ph.i ], [ %i.lj, %brin_fill_empty_ranges.exit.i ] ; 5 uses
  %.0.ph84.i = phi ptr [ %i.ir, %.lr.ph.lr.ph.i ], [ %.1.i, %brin_fill_empty_ranges.exit.i ] ; 6 uses
  %.048.ph83.i = phi i32 [ -1, %.lr.ph.lr.ph.i ], [ %i.lh, %brin_fill_empty_ranges.exit.i ] ; 3 uses
  %i.jb = icmp eq i32 %.048.ph83.i, -1
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.ph84.i, i64 4 ; 2 uses
  br i1 %i.jb, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.al
  %5 = phi ptr [ %i.jz, %bb.al ], [ %i.ja, %.lr.ph.i ] ; 6 uses
  %6 = load i32, ptr %i.jc, align 4
  %i.jd = load i32, ptr %5, align 4
  %.not71.i.a = icmp eq i32 %6, %i.jd
  br i1 %.not71.i.a, label %bb.al, label %bb.am

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %7 = load ptr, ptr %i.bq, align 8
  %8 = call ptr @brin_deform_tuple(ptr noundef %7, ptr noundef nonnull %i.ja, ptr noundef %.0.ph84.i) #9 ; 2 uses
  %i.je = load i32, ptr %i.ja, align 4            ; 2 uses
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %brin_fill_empty_ranges.exit.i, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.lr.ph.split.i, %brin_build_empty_tuple.exit.i.i
  %.016.i.i = phi i32 [ %i.jv, %brin_build_empty_tuple.exit.i.i ], [ 0, %.lr.ph.split.i ] ; 4 uses
  %i.jg = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i64
  %i.ji = load ptr, ptr %i.bq, align 8
  %i.jj = call ptr @brin_new_memtuple(ptr noundef %i.ji) #9
  %i.jk = load ptr, ptr %i.bx, align 8
  %i.jl = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.jk, ptr @CurrentMemoryContext, align 8
  %i.jm = load ptr, ptr %i.bq, align 8
  %i.jn = call ptr @brin_form_tuple(ptr noundef %i.jm, i32 noundef %.016.i.i, ptr noundef %i.jj, ptr noundef nonnull %i.iz) #9 ; 2 uses
  store ptr %i.jn, ptr %i.by, align 8
  store ptr %i.jl, ptr @CurrentMemoryContext, align 8
  br label %brin_build_empty_tuple.exit.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i64
  store i32 %.016.i.i, ptr %i.jg, align 4
  %.pre.i.i65 = load ptr, ptr %i.by, align 8
  br label %brin_build_empty_tuple.exit.i.i

brin_build_empty_tuple.exit.i.i:                  ; preds = %bb.ak, %bb.aj
  %i.jo = phi ptr [ %i.jn, %bb.aj ], [ %.pre.i.i65, %bb.ak ]
  %i.jp = load ptr, ptr %i.bk, align 8
  %i.jq = load i32, ptr %i.bm, align 4
  %i.jr = load ptr, ptr %i.bo, align 8
  %i.js = load i64, ptr %i.iz, align 8
  %i.jt = call zeroext i16 @brin_doinsert(ptr noundef %i.jp, i32 noundef %i.jq, ptr noundef %i.jr, ptr noundef nonnull %i.iy, i32 noundef %.016.i.i, ptr noundef %i.jo, i64 noundef %i.js) #9 ; 0 uses
  %i.ju = load i32, ptr %i.bm, align 4
  %i.jv = add i32 %i.ju, %.016.i.i                ; 2 uses
  %i.jw = icmp ult i32 %i.jv, %i.je
  br i1 %i.jw, label %.lr.ph.i.i64, label %brin_fill_empty_ranges.exit.i, !llvm.loop !13

bb.al:                                            ; preds = %.lr.ph.split.us.i
  %i.jx = load ptr, ptr %i.bq, align 8
  call fastcc void @union_tuples(ptr noundef %i.jx, ptr noundef nonnull %.0.ph84.i, ptr noundef nonnull %5)
  %i.jy = load ptr, ptr %i.bv, align 8
  %i.jz = call ptr @tuplesort_getbrintuple(ptr noundef %i.jy, ptr noundef nonnull %i.b, i1 noundef zeroext true) #9 ; 2 uses
  %.not.i63 = icmp eq ptr %i.jz, null
  br i1 %.not.i63, label %.outer._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !14

bb.am:                                            ; preds = %.lr.ph.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ka = load ptr, ptr %i.bq, align 8
  %i.kb = load i32, ptr %i.jc, align 4
  %i.kc = call ptr @brin_form_tuple(ptr noundef %i.ka, i32 noundef %i.kb, ptr noundef nonnull %.0.ph84.i, ptr noundef nonnull %i.c) #9 ; 2 uses
  %i.kd = load ptr, ptr %i.bk, align 8
  %i.ke = load i32, ptr %i.bm, align 4
  %i.kf = load ptr, ptr %i.bo, align 8
  %i.kg = load i32, ptr %i.kc, align 4
  %i.kh = load i64, ptr %i.c, align 8
  %i.ki = call zeroext i16 @brin_doinsert(ptr noundef %i.kd, i32 noundef %i.ke, ptr noundef %i.kf, ptr noundef nonnull %i.iy, i32 noundef %i.kg, ptr noundef nonnull %i.kc, i64 noundef %i.kh) #9 ; 0 uses
  call void @MemoryContextReset(ptr noundef %i.it) #9
  %i.kj = load ptr, ptr %i.bq, align 8
  %i.kk = call ptr @brin_deform_tuple(ptr noundef %i.kj, ptr noundef nonnull %5, ptr noundef nonnull %.0.ph84.i) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.kl = load i32, ptr %5, align 4               ; 2 uses
  %i.km = load i32, ptr %i.bm, align 4
  %i.kn = add i32 %i.km, %.048.ph83.i             ; 2 uses
  %i.ko = icmp ult i32 %i.kn, %i.kl
  br i1 %i.ko, label %.lr.ph.i56.i, label %brin_fill_empty_ranges.exit.i

.lr.ph.i56.i:                                     ; preds = %bb.am, %brin_build_empty_tuple.exit.i59.i
  %.016.i57.i = phi i32 [ %i.le, %brin_build_empty_tuple.exit.i59.i ], [ %i.kn, %bb.am ] ; 4 uses
  %i.kp = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i56.i
  %i.kr = load ptr, ptr %i.bq, align 8
  %i.ks = call ptr @brin_new_memtuple(ptr noundef %i.kr) #9
  %i.kt = load ptr, ptr %i.bx, align 8
  %i.ku = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.kt, ptr @CurrentMemoryContext, align 8
  %i.kv = load ptr, ptr %i.bq, align 8
  %i.kw = call ptr @brin_form_tuple(ptr noundef %i.kv, i32 noundef %.016.i57.i, ptr noundef %i.ks, ptr noundef nonnull %i.iz) #9 ; 2 uses
  store ptr %i.kw, ptr %i.by, align 8
  store ptr %i.ku, ptr @CurrentMemoryContext, align 8
  br label %brin_build_empty_tuple.exit.i59.i

bb.ao:                                            ; preds = %.lr.ph.i56.i
  store i32 %.016.i57.i, ptr %i.kp, align 4
  %.pre.i58.i = load ptr, ptr %i.by, align 8
  br label %brin_build_empty_tuple.exit.i59.i

brin_build_empty_tuple.exit.i59.i:                ; preds = %bb.ao, %bb.an
  %i.kx = phi ptr [ %i.kw, %bb.an ], [ %.pre.i58.i, %bb.ao ]
  %i.ky = load ptr, ptr %i.bk, align 8
  %i.kz = load i32, ptr %i.bm, align 4
  %i.la = load ptr, ptr %i.bo, align 8
  %i.lb = load i64, ptr %i.iz, align 8
  %i.lc = call zeroext i16 @brin_doinsert(ptr noundef %i.ky, i32 noundef %i.kz, ptr noundef %i.la, ptr noundef nonnull %i.iy, i32 noundef %.016.i57.i, ptr noundef %i.kx, i64 noundef %i.lb) #9 ; 0 uses
  %i.ld = load i32, ptr %i.bm, align 4
  %i.le = add i32 %i.ld, %.016.i57.i              ; 2 uses
  %i.lf = icmp ult i32 %i.le, %i.kl
  br i1 %i.lf, label %.lr.ph.i56.i, label %brin_fill_empty_ranges.exit.i, !llvm.loop !13

brin_fill_empty_ranges.exit.i:                    ; preds = %brin_build_empty_tuple.exit.i59.i, %brin_build_empty_tuple.exit.i.i, %bb.am, %.lr.ph.split.i
  %i.lg = phi ptr [ %i.ja, %brin_build_empty_tuple.exit.i.i ], [ %i.ja, %.lr.ph.split.i ], [ %5, %bb.am ], [ %5, %brin_build_empty_tuple.exit.i59.i ]
  %.1.i = phi ptr [ %8, %brin_build_empty_tuple.exit.i.i ], [ %8, %.lr.ph.split.i ], [ %i.kk, %bb.am ], [ %i.kk, %brin_build_empty_tuple.exit.i59.i ] ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4            ; 2 uses
  %i.li = load ptr, ptr %i.bv, align 8
  %i.lj = call ptr @tuplesort_getbrintuple(ptr noundef %i.li, ptr noundef nonnull %i.b, i1 noundef zeroext true) #9 ; 2 uses
  %.not78.i = icmp eq ptr %i.lj, null
  br i1 %.not78.i, label %.outer._crit_edge.i, label %.lr.ph.i, !llvm.loop !14

.outer._crit_edge.i:                              ; preds = %brin_fill_empty_ranges.exit.i, %bb.al
  %.048.ph.lcssa.i = phi i32 [ %.048.ph83.i, %bb.al ], [ %i.lh, %brin_fill_empty_ranges.exit.i ] ; 2 uses
  %.0.ph.lcssa.i = phi ptr [ %.0.ph84.i, %bb.al ], [ %.1.i, %brin_fill_empty_ranges.exit.i ] ; 2 uses
  %i.lk = load ptr, ptr %i.bv, align 8
  call void @tuplesort_end(ptr noundef %i.lk) #9
  %.not55.i = icmp eq i32 %.048.ph.lcssa.i, -1
  br i1 %.not55.i, label %.split51.i, label %bb.as

.split51.i:                                       ; preds = %.outer._crit_edge.i, %.outer._crit_edge.thread.i
  %i.ll = load i32, ptr %i.ce, align 4            ; 2 uses
  %.not72.i = icmp eq i32 %i.ll, 0
  br i1 %.not72.i, label %_brin_parallel_merge.exit, label %.lr.ph.i61.i

.lr.ph.i61.i:                                     ; preds = %.split51.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  br label %bb.ap

bb.ap:                                            ; preds = %brin_build_empty_tuple.exit.i64.i, %.lr.ph.i61.i
  %.016.i62.i = phi i32 [ 0, %.lr.ph.i61.i ], [ %i.md, %brin_build_empty_tuple.exit.i64.i ] ; 4 uses
  %i.lo = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lq = load ptr, ptr %i.bq, align 8
  %i.lr = call ptr @brin_new_memtuple(ptr noundef %i.lq) #9
  %i.ls = load ptr, ptr %i.bx, align 8
  %i.lt = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.ls, ptr @CurrentMemoryContext, align 8
  %i.lu = load ptr, ptr %i.bq, align 8
  %i.lv = call ptr @brin_form_tuple(ptr noundef %i.lu, i32 noundef %.016.i62.i, ptr noundef %i.lr, ptr noundef nonnull %i.lm) #9 ; 2 uses
  store ptr %i.lv, ptr %i.by, align 8
  store ptr %i.lt, ptr @CurrentMemoryContext, align 8
  br label %brin_build_empty_tuple.exit.i64.i

bb.ar:                                            ; preds = %bb.ap
  store i32 %.016.i62.i, ptr %i.lo, align 4
  %.pre.i63.i = load ptr, ptr %i.by, align 8
  br label %brin_build_empty_tuple.exit.i64.i

brin_build_empty_tuple.exit.i64.i:                ; preds = %bb.ar, %bb.aq
  %i.lw = phi ptr [ %i.lv, %bb.aq ], [ %.pre.i63.i, %bb.ar ]
  %i.lx = load ptr, ptr %i.bk, align 8
  %i.ly = load i32, ptr %i.bm, align 4
  %i.lz = load ptr, ptr %i.bo, align 8
  %i.ma = load i64, ptr %i.lm, align 8
  %i.mb = call zeroext i16 @brin_doinsert(ptr noundef %i.lx, i32 noundef %i.ly, ptr noundef %i.lz, ptr noundef nonnull %i.ln, i32 noundef %.016.i62.i, ptr noundef %i.lw, i64 noundef %i.ma) #9 ; 0 uses
  %i.mc = load i32, ptr %i.bm, align 4
  %i.md = add i32 %i.mc, %.016.i62.i              ; 2 uses
  %i.me = icmp ult i32 %i.md, %i.ll
  br i1 %i.me, label %bb.ap, label %_brin_parallel_merge.exit, !llvm.loop !13

bb.as:                                            ; preds = %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.mf = load ptr, ptr %i.bq, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.ph.lcssa.i, i64 4
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = call ptr @brin_form_tuple(ptr noundef %i.mf, i32 noundef %i.mh, ptr noundef %.0.ph.lcssa.i, ptr noundef nonnull %i.d) #9 ; 3 uses
  %i.mj = load ptr, ptr %i.bk, align 8
  %i.mk = load i32, ptr %i.bm, align 4
  %i.ml = load ptr, ptr %i.bo, align 8
  %i.mm = load i32, ptr %i.mi, align 4
  %i.mn = load i64, ptr %i.d, align 8
  %i.mo = call zeroext i16 @brin_doinsert(ptr noundef %i.mj, i32 noundef %i.mk, ptr noundef %i.ml, ptr noundef nonnull %i.iy, i32 noundef %i.mm, ptr noundef nonnull %i.mi, i64 noundef %i.mn) #9 ; 0 uses
  call void @pfree(ptr noundef nonnull %i.mi) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.mp = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.mq = load i32, ptr %i.bm, align 4
  %i.mr = add i32 %i.mq, %.048.ph.lcssa.i         ; 2 uses
  %i.ms = icmp ult i32 %i.mr, %i.mp
  br i1 %i.ms, label %.lr.ph.i66.i, label %_brin_parallel_merge.exit

.lr.ph.i66.i:                                     ; preds = %bb.as, %brin_build_empty_tuple.exit.i69.i
  %.016.i67.i = phi i32 [ %i.ni, %brin_build_empty_tuple.exit.i69.i ], [ %i.mr, %bb.as ] ; 4 uses
  %i.mt = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i66.i
  %i.mv = load ptr, ptr %i.bq, align 8
  %i.mw = call ptr @brin_new_memtuple(ptr noundef %i.mv) #9
  %i.mx = load ptr, ptr %i.bx, align 8
  %i.my = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.mx, ptr @CurrentMemoryContext, align 8
  %i.mz = load ptr, ptr %i.bq, align 8
  %i.na = call ptr @brin_form_tuple(ptr noundef %i.mz, i32 noundef %.016.i67.i, ptr noundef %i.mw, ptr noundef nonnull %i.iz) #9 ; 2 uses
  store ptr %i.na, ptr %i.by, align 8
  store ptr %i.my, ptr @CurrentMemoryContext, align 8
  br label %brin_build_empty_tuple.exit.i69.i

bb.au:                                            ; preds = %.lr.ph.i66.i
  store i32 %.016.i67.i, ptr %i.mt, align 4
  %.pre.i68.i = load ptr, ptr %i.by, align 8
  br label %brin_build_empty_tuple.exit.i69.i

brin_build_empty_tuple.exit.i69.i:                ; preds = %bb.au, %bb.at
  %i.nb = phi ptr [ %i.na, %bb.at ], [ %.pre.i68.i, %bb.au ]
  %i.nc = load ptr, ptr %i.bk, align 8
  %i.nd = load i32, ptr %i.bm, align 4
  %i.ne = load ptr, ptr %i.bo, align 8
  %i.nf = load i64, ptr %i.iz, align 8
  %i.ng = call zeroext i16 @brin_doinsert(ptr noundef %i.nc, i32 noundef %i.nd, ptr noundef %i.ne, ptr noundef nonnull %i.iy, i32 noundef %.016.i67.i, ptr noundef %i.nb, i64 noundef %i.nf) #9 ; 0 uses
  %i.nh = load i32, ptr %i.bm, align 4
  %i.ni = add i32 %i.nh, %.016.i67.i              ; 2 uses
  %i.nj = icmp ult i32 %i.ni, %i.mp
  br i1 %i.nj, label %.lr.ph.i66.i, label %_brin_parallel_merge.exit, !llvm.loop !13

_brin_parallel_merge.exit:                        ; preds = %brin_build_empty_tuple.exit.i69.i, %brin_build_empty_tuple.exit.i64.i, %.split51.i, %bb.as
  store ptr %i.iu, ptr @CurrentMemoryContext, align 8
  call void @MemoryContextDelete(ptr noundef %i.it) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.nk = load ptr, ptr %i.bt, align 8            ; 7 uses
  %i.nl = load ptr, ptr %i.nk, align 8
  call void @WaitForParallelWorkersToFinish(ptr noundef %i.nl) #9
  %i.nm = load ptr, ptr %i.nk, align 8            ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 28
  %i.no = load i32, ptr %i.nn, align 4
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.lr.ph.i66, label %._crit_edge.i

.lr.ph.i66:                                       ; preds = %_brin_parallel_merge.exit
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i66
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i66 ], [ %indvars.iv.next.i, %bb.av ] ; 3 uses
  %i.ns = load ptr, ptr %i.nq, align 8
  %i.nt = getelementptr inbounds nuw [128 x i8], ptr %i.ns, i64 %indvars.iv.i
  %i.nu = load ptr, ptr %i.nr, align 8
  %i.nv = getelementptr inbounds nuw [40 x i8], ptr %i.nu, i64 %indvars.iv.i
  call void @InstrAccumParallelQuery(ptr noundef %i.nt, ptr noundef %i.nv) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.nw = load ptr, ptr %i.nk, align 8            ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 28
  %i.ny = load i32, ptr %i.nx, align 4
  %i.nz = sext i32 %i.ny to i64
  %i.oa = icmp slt i64 %indvars.iv.next.i, %i.nz
  br i1 %i.oa, label %bb.av, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %bb.av, %_brin_parallel_merge.exit
  %i.ob = phi ptr [ %i.nm, %_brin_parallel_merge.exit ], [ %i.nw, %bb.av ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.od = load ptr, ptr %i.oc, align 8            ; 2 uses
  %i.oe = load i32, ptr %i.od, align 8
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %bb.aw, label %_brin_end_parallel.exit

bb.aw:                                            ; preds = %._crit_edge.i
  call void @UnregisterSnapshot(ptr noundef nonnull %i.od) #9
  %.pre.i = load ptr, ptr %i.nk, align 8
  br label %_brin_end_parallel.exit

_brin_end_parallel.exit:                          ; preds = %._crit_edge.i, %bb.aw
  %i.og = phi ptr [ %.pre.i, %bb.aw ], [ %i.ob, %._crit_edge.i ]
  call void @DestroyParallelContext(ptr noundef %i.og) #9
  call void @ExitParallelMode() #9
  br label %brin_fill_empty_ranges.exit

bb.ax:                                            ; preds = %_brin_begin_parallel.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 280
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = call double %i.ok(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @brinbuildCallback, ptr noundef nonnull %i.bk, ptr noundef null) #9, !inline_history !0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.om = load ptr, ptr %i.bq, align 8
  %i.on = load i32, ptr %i.bn, align 8
  %i.oo = load ptr, ptr %i.bs, align 8
  %i.op = call ptr @brin_form_tuple(ptr noundef %i.om, i32 noundef %i.on, ptr noundef %i.oo, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.oq = load ptr, ptr %i.bk, align 8
  %i.or = load i32, ptr %i.bm, align 4
  %i.os = load ptr, ptr %i.bo, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.ou = load i32, ptr %i.bn, align 8
  %i.ov = load i64, ptr %i.a, align 8
  %i.ow = call zeroext i16 @brin_doinsert(ptr noundef %i.oq, i32 noundef %i.or, ptr noundef %i.os, ptr noundef nonnull %i.ot, i32 noundef %i.ou, ptr noundef %i.op, i64 noundef %i.ov) #9 ; 0 uses
  %i.ox = load double, ptr %i.bl, align 8
  %i.oy = fadd double %i.ox, 1.000000e+00
  store double %i.oy, ptr %i.bl, align 8
  call void @pfree(ptr noundef %i.op) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.oz = load i32, ptr %i.bn, align 8            ; 2 uses
  %i.pa = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.pb = icmp eq i32 %i.oz, -1
  br i1 %i.pb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pc = load i32, ptr %i.bm, align 4
  %i.pd = add i32 %i.pc, %i.oz
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
end_hunk_0
