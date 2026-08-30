Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_make_descriptor:bb.a
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ax = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit.i

bb.r:                                             ; preds = %bb.p
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit.i

GC_lock.exit.i:                                   ; preds = %bb.r, %bb.q, %bb.n, %bb.m
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 424), align 8 ; 2 uses
  %i.az = add i64 %i.ay, %i.as
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 416), align 8 ; 2 uses
  %.not4753.i = icmp ult i64 %i.az, %i.ba
  br i1 %.not4753.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ah, %GC_lock.exit.i
  %.lcssa.i = phi i64 [ %i.ay, %GC_lock.exit.i ], [ %.pre.i, %bb.ah ] ; 6 uses
  %i.bb = add nsw i64 %i.as, -1                   ; 6 uses
  %.not57.i = icmp eq i64 %i.bb, 0
  br i1 %.not57.i, label %._crit_edge.i, label %.lr.ph55.i.preheader

.lr.ph55.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i64 %i.bb, 1
  %i.bc = icmp eq i64 %i.as, 2
  br i1 %i.bc, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.i.preheader.new

.lr.ph55.i.preheader.new:                         ; preds = %.lr.ph55.i.preheader
  %unroll_iter = and i64 %i.bb, -2
  br label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %GC_lock.exit.i, %bb.ah
  %i.bd = phi i64 [ %i.bv, %bb.ah ], [ %i.ba, %GC_lock.exit.i ] ; 3 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph.i
  store ptr @GC_push_typed_structures_proc, ptr @GC_push_typed_structures, align 8
  %.b45.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b45.i, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bf = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph.i
  %.b44.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b44.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bh = shl i64 %i.bd, 1                        ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 72057594037927935
  br i1 %i.bi, label %.critedge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t, %bb.s
  %.036.i = phi i64 [ %i.bh, %bb.w ], [ 100, %bb.t ], [ 100, %bb.s ] ; 3 uses
  %i.bj = shl nuw nsw i64 %.036.i, 4
  %i.bk = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.bj, i32 noundef 0) #53 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.critedge.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.b43.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b43.i, label %bb.z, label %GC_lock.exit51.i

bb.z:                                             ; preds = %bb.y
  %i.bm = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not48.i = icmp eq i32 %i.bm, 0
  br i1 %.not48.i, label %GC_lock.exit51.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = load i32, ptr @GC_nprocs, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i50.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i50.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bq = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit51.i

bb.ad:                                            ; preds = %bb.ab
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit51.i

GC_lock.exit51.i:                                 ; preds = %bb.ad, %bb.ac, %bb.z, %bb.y
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 416), align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.bd, %i.br
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 424), align 8 ; 4 uses
  br i1 %i.bs, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %GC_lock.exit51.i
  %.not49.i = icmp eq i64 %.pre.i, 0
  br i1 %.not49.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.bu = shl i64 %.pre.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.bt, i64 %i.bu, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i64 %.036.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 416), align 8
  store ptr %i.bk, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %GC_lock.exit51.i
  %i.bv = phi i64 [ %i.br, %GC_lock.exit51.i ], [ %.036.i, %bb.ag ] ; 2 uses
  %i.bw = add i64 %.pre.i, %i.as
  %.not47.i = icmp ult i64 %i.bw, %i.bv
  br i1 %.not47.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !136

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.i.preheader.new
  %.03754.i = phi i64 [ 0, %.lr.ph55.i.preheader.new ], [ %i.co, %.lr.ph55.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph55.i.preheader.new ], [ %niter.next.1, %.lr.ph55.i ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03754.i
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.ca = add i64 %.03754.i, %.lcssa.i            ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.ca
  store i64 %i.by, ptr %i.cb, align 8
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 1, ptr %i.ce, align 8
  %i.cf = or disjoint i64 %.03754.i, 1            ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cj = add i64 %i.cf, %.lcssa.i                ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cj
  store i64 %i.ch, ptr %i.ck, align 8
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 1, ptr %i.cn, align 8
  %i.co = add nuw nsw i64 %.03754.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph55.i, !llvm.loop !137

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph55.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph55.i.epil.preheader

.lr.ph55.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph55.i.preheader
  %.03754.i.epil.init = phi i64 [ 0, %.lr.ph55.i.preheader ], [ %i.co, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod100 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03754.i.epil.init
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cs = add i64 %.03754.i.epil.init, %.lcssa.i  ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cs
  store i64 %i.cq, ptr %i.ct, align 8
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 1, ptr %i.cw, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph55.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = and i64 %i.ar, -64
  %i.da = sub i64 %i.cz, %.041.in93
  %i.db = lshr i64 -1, %i.da
  %i.dc = and i64 %i.cy, %i.db
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.de = add i64 %.lcssa.i, %i.bb                ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  store i64 %i.dc, ptr %i.df, align 8
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 0, ptr %i.di, align 8
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 424), align 8
  %i.dk = add i64 %i.dj, %i.as
  store i64 %i.dk, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 424), align 8
  %.b.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b.i, label %bb.ai, label %GC_add_ext_descriptor.exit

bb.ai:                                            ; preds = %._crit_edge.i
  %i.dl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_add_ext_descriptor.exit

GC_add_ext_descriptor.exit:                       ; preds = %._crit_edge.i, %bb.ai
  %.not52 = icmp eq i64 %.lcssa.i, -1
  br i1 %.not52, label %.critedge.thread, label %bb.aj

bb.aj:                                            ; preds = %GC_add_ext_descriptor.exit
  %i.dm = load i32, ptr @GC_typed_mark_proc_index, align 4
  %2 = zext nneg i32 %i.dm to i64
  %i.dn = shl i64 %.lcssa.i, 8
  %i.do = shl nuw nsw i64 %2, 2
  %i.dp = or i64 %i.dn, %i.do
  %i.dq = or disjoint i64 %i.dp, 2
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %bb.w, %bb.x, %bb.i, %.critedge.preheader, %._crit_edge70.loopexit, %bb.aj, %GC_add_ext_descriptor.exit, %._crit_edge
  %.2 = phi i64 [ %i.t, %._crit_edge ], [ %i.t, %GC_add_ext_descriptor.exit ], [ %i.aq, %._crit_edge70.loopexit ], [ %i.dq, %bb.aj ], [ %i.t, %bb.w ], [ 8, %.critedge.preheader ], [ 0, %bb.i ], [ %i.t, %bb.x ], [ 0, %bb.j ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_init_explicit_typing() unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @GC_generic_malloc_inner(i64 noundef 1032, i32 noundef 0) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %GC_new_free_list_inner.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.c(ptr noundef nonnull @.str.104) #45, !inline_history !4
  tail call void @abort() #48
  unreachable

GC_new_free_list_inner.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.a, i8 0, i64 1032, i1 false)
  %i.d = load i32, ptr @GC_n_kinds, align 4       ; 4 uses
  %i.e = icmp ult i32 %i.d, 16
  br i1 %i.e, label %GC_new_kind_inner.exit, label %bb.c

bb.c:                                             ; preds = %GC_new_free_list_inner.exit
  %i.f = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.f(ptr noundef nonnull @.str.105) #45, !inline_history !5
  tail call void @abort() #48
  unreachable

GC_new_kind_inner.exit:                           ; preds = %GC_new_free_list_inner.exit
  %i.g = add nuw nsw i32 %i.d, 1
  store i32 %i.g, ptr @GC_n_kinds, align 4
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.h ; 7 uses
  store ptr %i.a, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 -5, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 1, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 0, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %i.o, align 8
  store i32 %i.d, ptr @GC_explicit_kind, align 4
  %i.p = load i32, ptr @GC_n_mark_procs, align 4  ; 6 uses
  %i.q = icmp ult i32 %i.p, 64
  br i1 %i.q, label %GC_new_proc_inner.exit, label %bb.d

bb.d:                                             ; preds = %GC_new_kind_inner.exit
  %i.r = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.r(ptr noundef nonnull @.str.106) #45, !inline_history !138
  tail call void @abort() #48
  unreachable

GC_new_proc_inner.exit:                           ; preds = %GC_new_kind_inner.exit
  %i.s = add nuw nsw i32 %i.p, 1                  ; 3 uses
  store i32 %i.s, ptr @GC_n_mark_procs, align 4
  %i.t = zext nneg i32 %i.p to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448), i64 %i.t
  store ptr @GC_typed_mark_proc, ptr %i.u, align 8
  store i32 %i.p, ptr @GC_typed_mark_proc_index, align 4
  %.not = icmp eq i32 %i.p, 63
  br i1 %.not, label %bb.e, label %GC_new_proc_inner.exit5

bb.e:                                             ; preds = %GC_new_proc_inner.exit
  %i.v = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.v(ptr noundef nonnull @.str.106) #45, !inline_history !138
  tail call void @abort() #48
  unreachable

GC_new_proc_inner.exit5:                          ; preds = %GC_new_proc_inner.exit
  %i.w = add nuw nsw i32 %i.p, 2
  store i32 %i.w, ptr @GC_n_mark_procs, align 4
  %i.x = zext nneg i32 %i.s to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448), i64 %i.x
  store ptr @GC_array_mark_proc, ptr %i.y, align 8
  store i32 %i.s, ptr @GC_array_mark_proc_index, align 4
  %i.z = tail call fastcc ptr @GC_generic_malloc_inner(i64 noundef 1032, i32 noundef 0) ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %GC_new_free_list_inner.exit6

bb.f:                                             ; preds = %GC_new_proc_inner.exit5
  %i.ab = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ab(ptr noundef nonnull @.str.104) #45, !inline_history !4
  tail call void @abort() #48
  unreachable

GC_new_free_list_inner.exit6:                     ; preds = %GC_new_proc_inner.exit5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.z, i8 0, i64 1032, i1 false)
  %i.ac = load i32, ptr @GC_n_kinds, align 4      ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 16
  br i1 %i.ad, label %GC_new_kind_inner.exit7, label %bb.g

bb.g:                                             ; preds = %GC_new_free_list_inner.exit6
  %i.ae = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ae(ptr noundef nonnull @.str.105) #45, !inline_history !5
  tail call void @abort() #48
  unreachable

GC_new_kind_inner.exit7:                          ; preds = %GC_new_free_list_inner.exit6
  %i.af = load i32, ptr @GC_array_mark_proc_index, align 4
  %0 = zext nneg i32 %i.af to i64
  %i.ag = shl nuw nsw i64 %0, 2
  %i.ah = or disjoint i64 %i.ag, 2
  %i.ai = add nuw nsw i32 %i.ac, 1
  store i32 %i.ai, ptr @GC_n_kinds, align 4
  %i.aj = zext nneg i32 %i.ac to i64
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.aj ; 7 uses
  store ptr %i.z, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.ah, ptr %i.am, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store i32 1, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i32 0, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr null, ptr %i.aq, align 8
  store i32 %i.ac, ptr @GC_array_kind, align 4
  store i64 1, ptr @GC_bm_table, align 16
  store i64 -9223372036854775807, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 8), align 8
  store i64 -4611686018427387903, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 16), align 16
  store i64 -2305843009213693951, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 24), align 8
  store i64 -1152921504606846975, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 32), align 16
  store i64 -576460752303423487, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 40), align 8
  store i64 -288230376151711743, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 48), align 16
  store i64 -144115188075855871, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 56), align 8
  store i64 -72057594037927935, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 64), align 16
  store i64 -36028797018963967, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 72), align 8
  store i64 -18014398509481983, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 80), align 16
  store i64 -9007199254740991, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 88), align 8
  store i64 -4503599627370495, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 96), align 16
  store i64 -2251799813685247, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 104), align 8
  store i64 -1125899906842623, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 112), align 16
  store i64 -562949953421311, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 120), align 8
  store i64 -281474976710655, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 128), align 16
  store i64 -140737488355327, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 136), align 8
  store i64 -70368744177663, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 144), align 16
  store i64 -35184372088831, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 152), align 8
  store i64 -17592186044415, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 160), align 16
  store i64 -8796093022207, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 168), align 8
  store i64 -4398046511103, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 176), align 16
  store i64 -2199023255551, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 184), align 8
  store i64 -1099511627775, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 192), align 16
  store i64 -549755813887, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 200), align 8
  store i64 -274877906943, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 208), align 16
  store i64 -137438953471, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 216), align 8
  store i64 -68719476735, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 224), align 16
  store i64 -34359738367, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 232), align 8
  store i64 -17179869183, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 240), align 16
  store i64 -8589934591, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 248), align 8
  ret void
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_malloc_explicitly_typed(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.011 = phi i64 [ 1, %bb.b ], [ %0, %bb.a ]     ; 2 uses
  %i.b = load i32, ptr @GC_all_interior_pointers, align 4
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, -9
  %i.e = icmp ult i64 %.011, %i.d
  %reass.sub = add i64 %.011, 8
  %i.f = sub i64 %reass.sub, %i.c
  %i.g = select i1 %i.e, i64 %i.f, i64 -1, !prof !6
  %i.h = load i32, ptr @GC_explicit_kind, align 4
  %i.i = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.g, i32 noundef %i.h) #53 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = lshr i64 %i.k, 22                        ; 2 uses
  %i.m = and i64 %i.l, 2047
  %i.n = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.m
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.in.i.i = phi ptr [ %i.n, %bb.d ], [ %i.u, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp ne i64 %i.q, %i.l
  %i.s = icmp ne ptr %.0.i.i, %i.o
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.t, label %bb.e, label %GC_size.exit, !llvm.loop !13

GC_size.exit:                                     ; preds = %bb.e
  %i.v = lshr i64 %i.k, 12
  %i.w = and i64 %i.v, 1023
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 2305843009213693950
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  store atomic volatile i64 %1, ptr %i.ae release, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %GC_size.exit
  ret ptr %i.i
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_malloc_explicitly_typed_ignore_off_page(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.031 = phi i64 [ 1, %bb.b ], [ %0, %bb.a ]     ; 2 uses
  %i.b = load i32, ptr @GC_all_interior_pointers, align 4
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = add nsw i64 %i.c, -9
  %i.e = icmp ult i64 %.031, %i.d
  %reass.sub = add i64 %.031, 8
  %i.f = sub i64 %reass.sub, %i.c
  %i.g = select i1 %i.e, i64 %i.f, i64 -1, !prof !6 ; 5 uses
  %i.h = icmp ult i64 %i.g, 2048
  br i1 %i.h, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i64 2048, %i.c
  %.not = icmp ugt i64 %i.g, %i.i
  br i1 %.not, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.b38 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b38, label %bb.f, label %GC_lock.exit

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not39 = icmp eq i32 %i.j, 0
  br i1 %.not39, label %GC_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr @GC_nprocs, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit

bb.j:                                             ; preds = %bb.h
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %i.g
  %i.p = load i64, ptr %i.o, align 8              ; 4 uses
  %i.q = load i32, ptr @GC_explicit_kind, align 4 ; 2 uses
  %2 = zext nneg i32 %i.q to i64
  %i.r = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %2
  %i.s = load ptr, ptr %i.r, align 16
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.k, label %bb.p, !prof !9

bb.k:                                             ; preds = %GC_lock.exit
  %.b37 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b37, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  %.pre = load i32, ptr @GC_explicit_kind, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = phi i32 [ %.pre, %bb.l ], [ %i.q, %bb.k ]
  %i.y = tail call noalias ptr @GC_generic_malloc_ignore_off_page(i64 noundef %i.g, i32 noundef %i.x) #53 ; 4 uses
  %i.z = tail call ptr @GC_clear_stack(ptr noundef %i.y) ; 0 uses
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ac = lshr i64 %i.ab, 22                      ; 2 uses
  %i.ad = and i64 %i.ac, 2047
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ad
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.0.in.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.al, %bb.o ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp ne i64 %i.ah, %i.ac
  %i.aj = icmp ne ptr %.0.i.i, %i.af
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ak, label %bb.o, label %GC_size.exit, !llvm.loop !13

GC_size.exit:                                     ; preds = %bb.o
  %i.am = lshr i64 %i.ab, 12
  %i.an = and i64 %i.am, 1023
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = lshr i64 %i.ar, 4
  br label %bb.u

bb.p:                                             ; preds = %GC_lock.exit
  %i.at = load ptr, ptr %i.u, align 8
  store ptr %i.at, ptr %i.t, align 8
  store ptr null, ptr %i.u, align 8
  %i.au = shl i64 %i.p, 4
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.aw = add i64 %i.av, %i.au
  store i64 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %bb.d
  %i.ay = load i32, ptr @GC_explicit_kind, align 4
  %i.az = tail call noalias ptr @GC_generic_malloc_ignore_off_page(i64 noundef %i.g, i32 noundef %i.ay) #53 ; 4 uses
  %i.ba = tail call ptr @GC_clear_stack(ptr noundef %i.az) ; 0 uses
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bd = lshr i64 %i.bc, 22                      ; 2 uses
  %i.be = and i64 %i.bd, 2047
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.be
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.0.in.i.i40 = phi ptr [ %i.bf, %bb.s ], [ %i.bm, %bb.t ]
  %.0.i.i41 = load ptr, ptr %.0.in.i.i40, align 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 8208
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp ne i64 %i.bi, %i.bd
  %i.bk = icmp ne ptr %.0.i.i41, %i.bg
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 8216
  br i1 %i.bl, label %bb.t, label %GC_size.exit44, !llvm.loop !13

GC_size.exit44:                                   ; preds = %bb.t
  %i.bn = lshr i64 %i.bc, 12
  %i.bo = and i64 %i.bn, 1023
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i41, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = lshr i64 %i.bs, 4
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.q, %GC_size.exit, %GC_size.exit44
  %.230 = phi ptr [ %i.az, %GC_size.exit44 ], [ %i.u, %bb.p ], [ %i.y, %GC_size.exit ], [ %i.u, %bb.q ] ; 2 uses
  %.2 = phi i64 [ %i.bt, %GC_size.exit44 ], [ %i.p, %bb.p ], [ %i.as, %GC_size.exit ], [ %i.p, %bb.q ]
  %.idx = shl i64 %.2, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.230, i64 %.idx
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8
  store atomic volatile i64 %1, ptr %i.bv release, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.r, %bb.u
  %.1 = phi ptr [ %.230, %bb.u ], [ null, %bb.r ], [ null, %bb.m ]
  ret ptr %.1
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define noalias ptr @GC_calloc_explicitly_typed(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.LeafDescriptor, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.c = icmp eq i64 %1, 0
  %i.d = icmp eq i64 %0, 0
  %i.e = or i1 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.045 = phi i64 [ 1, %bb.b ], [ %0, %bb.a ]     ; 4 uses
  %.043 = phi i64 [ 1, %bb.b ], [ %1, %bb.a ]     ; 4 uses
  %i.f = or i64 %.043, %.045
  %i.g = icmp ugt i64 %i.f, 4294967295
  br i1 %i.g, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.043, i64 %.045)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %.b1.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b1.i, label %bb.f, label %GC_lock.exit.thread.i

GC_lock.exit.thread.i:                            ; preds = %bb.e
  %i.h = load ptr, ptr @GC_oom_fn, align 8
  br label %GC_get_oom_fn.exit

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %GC_lock.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr @GC_nprocs, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit.i

bb.j:                                             ; preds = %bb.h
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit.i

GC_lock.exit.i:                                   ; preds = %bb.j, %bb.i, %bb.f
  %.b.pr.i = load i1, ptr @GC_need_to_lock, align 4
  %i.n = load ptr, ptr @GC_oom_fn, align 8        ; 2 uses
  br i1 %.b.pr.i, label %bb.k, label %GC_get_oom_fn.exit

bb.k:                                             ; preds = %GC_lock.exit.i
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_get_oom_fn.exit

GC_get_oom_fn.exit:                               ; preds = %GC_lock.exit.thread.i, %GC_lock.exit.i, %bb.k
  %i.p = phi ptr [ %i.h, %GC_lock.exit.thread.i ], [ %i.n, %bb.k ], [ %i.n, %GC_lock.exit.i ]
  %i.q = tail call ptr %i.p(i64 noundef -1) #45
  br label %GC_malloc_explicitly_typed.exit

bb.l:                                             ; preds = %bb.d, %bb.c
  %i.r = call fastcc i32 @GC_make_array_descriptor(i64 noundef %.045, i64 noundef %.043, i64 noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %3) ; 2 uses
  %i.s = mul i64 %.043, %.045                     ; 5 uses
  switch i32 %i.r, label %default.unreachable76 [
    i32 -1, label %bb.m
    i32 0, label %bb.t
    i32 1, label %bb.z
    i32 2, label %bb.y
  ]

end_hunk_0
begin_hunk_1_@GC_remove_protection:bb.a
  %i.i = inttoptr i64 %i.h to ptr                 ; 5 uses
  %i.j = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %1 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, -1
  %i.m = add i64 %i.l, %i.f
  %i.n = and i64 %i.m, %i.g                       ; 4 uses
  %i.o = icmp ugt i64 %i.n, %i.h
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.not31.not = icmp eq i32 %2, 0
  br i1 %.not31.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.p = phi i64 [ %i.y, %.lr.ph.split.us ], [ %i.h, %.lr.ph ] ; 2 uses
  %.037.us = phi ptr [ %i.x, %.lr.ph.split.us ], [ %i.i, %.lr.ph ]
  %i.q = lshr i64 %i.p, 12
  %i.r = lshr i64 %i.p, 18
  %i.s = and i64 %i.r, 4095
  %i.t = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.s
  %i.u = and i64 %i.q, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = atomicrmw volatile or ptr %i.t, i64 %i.v monotonic, align 8 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.037.us, i64 4096 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = icmp ugt i64 %i.n, %i.y
  br i1 %i.z, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !344

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %i.aa = phi i64 [ %i.ak, %bb.d ], [ %i.h, %.lr.ph ] ; 2 uses
  %.037 = phi ptr [ %i.aj, %bb.d ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.ab = icmp uge ptr %.037, %0
  %.not32 = icmp ult ptr %.037, %i.j
  %or.cond34 = and i1 %.not32, %i.ab
  br i1 %or.cond34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.ac = lshr i64 %i.aa, 12
  %i.ad = lshr i64 %i.aa, 18
  %i.ae = and i64 %i.ad, 4095
  %i.af = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.ae
  %i.ag = and i64 %i.ac, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = atomicrmw volatile or ptr %i.af, i64 %i.ah monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.037, i64 4096 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = icmp ugt i64 %i.n, %i.ak
  br i1 %i.al, label %.lr.ph.split, label %._crit_edge, !llvm.loop !344

._crit_edge:                                      ; preds = %bb.d, %.lr.ph.split.us, %bb.b
  %i.am = sub i64 %i.n, %i.h                      ; 3 uses
  %i.an = load i32, ptr @GC_pages_executable, align 4
  %.not = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not, i32 3, i32 7
  %i.ap = tail call i32 @mprotect(ptr noundef %i.i, i64 noundef %i.am, i32 noundef %i.ao) #45
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ar = load i32, ptr @GC_pages_executable, align 4
  %.not30 = icmp eq i32 %i.ar, 0
  %i.as = tail call ptr @__errno_location() #51
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.158, ptr noundef %i.i, i64 noundef %i.am, i32 noundef %i.at)
  %i.au = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.au(ptr noundef nonnull @.str.159) #45
  tail call void @abort() #48
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.160, ptr noundef %i.i, i64 noundef %i.am, i32 noundef %i.at)
  %i.av = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.av(ptr noundef nonnull @.str.161) #45
  tail call void @abort() #48
  unreachable

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @GC_typed_mark_proc(ptr noundef %0, ptr nofree noundef writeonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address) %2, i64 noundef %3) #2 {
bb.a:
  %4 = alloca [8 x %struct.hce], align 16         ; 4 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %3
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr @GC_greatest_plausible_heap_addr, align 8
  %i.e = load ptr, ptr @GC_least_plausible_heap_addr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %.not46 = icmp eq i64 %i.c, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.03449 = phi ptr [ %0, %.lr.ph ], [ %i.v, %.critedge ] ; 2 uses
  %.03548 = phi i64 [ %i.c, %.lr.ph ], [ %i.u, %.critedge ] ; 2 uses
  %.03647 = phi ptr [ %1, %.lr.ph ], [ %.2, %.critedge ] ; 4 uses
  %i.h = and i64 %.03548, 1
  %.not43 = icmp eq i64 %i.h, 0
  br i1 %.not43, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %.03449, align 8           ; 4 uses
  %.not44 = icmp ult i64 %i.i, %i.f
  %.not45 = icmp ugt i64 %i.i, %i.g
  %or.cond = select i1 %.not44, i1 true, i1 %.not45
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = lshr i64 %i.i, 12                        ; 2 uses
  %i.l = and i64 %i.k, 7
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.l ; 3 uses
  %i.n = load i64, ptr %i.m, align 16
  %i.o = icmp eq i64 %i.n, %i.k
  br i1 %i.o, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = call fastcc ptr @GC_header_cache_miss(ptr noundef %i.j, ptr noundef %i.m) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.q, %bb.e ], [ %i.r, %bb.f ]
  %i.t = tail call fastcc ptr @GC_push_contents_hdr(ptr noundef %i.j, ptr noundef %.03647, ptr noundef %2, ptr noundef %.1, i32 noundef 1)
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.b, %bb.c
  %.2 = phi ptr [ %.03647, %bb.c ], [ %.03647, %bb.b ], [ %i.t, %bb.g ], [ %.03647, %bb.f ] ; 2 uses
  %i.u = lshr i64 %.03548, 1                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03449, i64 8
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !345

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.w = phi ptr [ %i.a, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.036.lcssa = phi ptr [ %1, %bb.a ], [ %.2, %._crit_edge.loopexit ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %3
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8
  %.not41 = icmp eq i32 %i.z, 0
  br i1 %.not41, label %bb.n, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %.036.lcssa, i64 16 ; 2 uses
  %.not42 = icmp ult ptr %i.aa, %2
  br i1 %.not42, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %i.ab = load i32, ptr @GC_parallel, align 4
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = load i32, ptr @GC_print_stats, align 4
  %.not1.i = icmp eq i32 %i.ac, 0
  br i1 %.not1.i, label %GC_signal_mark_stack_overflow.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.141, i64 noundef %i.ad)
  br label %GC_signal_mark_stack_overflow.exit

GC_signal_mark_stack_overflow.exit:               ; preds = %bb.k, %bb.l
  %i.ae = getelementptr inbounds i8, ptr %.036.lcssa, i64 -8176
  br label %bb.m

bb.m:                                             ; preds = %GC_signal_mark_stack_overflow.exit, %bb.h
  %.3 = phi ptr [ %i.ae, %GC_signal_mark_stack_overflow.exit ], [ %i.aa, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.af, ptr %.3, align 8
  %i.ag = shl i64 %3, 6
  %i.ah = add i64 %i.ag, 64
  %i.ai = load i32, ptr @GC_typed_mark_proc_index, align 4
  %5 = zext nneg i32 %i.ai to i64
  %i.aj = or i64 %i.ah, %5
  %i.ak = shl i64 %i.aj, 2
  %i.al = or disjoint i64 %i.ak, 2
  %i.am = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store i64 %i.al, ptr %i.am, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.4 = phi ptr [ %.3, %bb.m ], [ %.036.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @GC_array_mark_proc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.b, label %GC_find_header.exit, !llvm.loop !13

GC_find_header.exit:                              ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -8       ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.c

bb.c:                                             ; preds = %GC_find_header.exit
  %i.w = inttoptr i64 %i.u to ptr
  %i.x = getelementptr inbounds i8, ptr %2, i64 -16
  %i.y = tail call fastcc ptr @GC_push_complex_descriptor(ptr noundef nonnull %0, ptr noundef nonnull %i.w, ptr noundef %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq ptr %1, null
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ab(ptr noundef nonnull @.str.228) #45
  tail call void @abort() #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad
  %i.af = icmp eq ptr %i.ae, %2
  br i1 %i.af, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f, %bb.g
  %.sink36 = phi ptr [ %1, %bb.f ], [ %1, %bb.g ], [ %i.y, %bb.c ] ; 2 uses
  %.sink34 = phi ptr [ %0, %bb.f ], [ %0, %bb.g ], [ %i.t, %bb.c ]
  %.sink = phi i64 [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ 8, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink36, i64 16 ; 2 uses
  store ptr %.sink34, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink36, i64 24
  store i64 %.sink, ptr %i.ah, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %GC_find_header.exit
  %.026 = phi ptr [ %1, %GC_find_header.exit ], [ %i.ag, %.sink.split ]
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_push_complex_descriptor(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.g, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.az, %bb.g ]  ; 5 uses
  %.tr55 = phi ptr [ %1, %bb.a ], [ %i.bb, %bb.g ] ; 8 uses
  %.tr56 = phi ptr [ %2, %bb.a ], [ %i.ax, %bb.g ] ; 7 uses
  %i.a = load i64, ptr %.tr55, align 8
  switch i64 %i.a, label %bb.h [
    i64 1, label %bb.b
    i64 2, label %bb.d
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr55, i64 24
  %i.c = load i64, ptr %i.b, align 8              ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr55, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = ptrtoint ptr %3 to i64
  %i.g = ptrtoint ptr %.tr56 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  %.not = icmp sgt i64 %i.i, %i.e
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.tr55, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 9 uses
  %.not80 = icmp eq i64 %i.e, 0
  br i1 %.not80, label %.loopexit, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.e, 7                     ; 3 uses
  %i.l = icmp ult i64 %i.e, 8
  br i1 %i.l, label %.lr.ph77.epil.preheader, label %.lr.ph77.preheader.new

.lr.ph77.preheader.new:                           ; preds = %.lr.ph77.preheader
  %unroll_iter = and i64 %i.e, -8
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77, %.lr.ph77.preheader.new
  %.04675 = phi ptr [ %.tr, %.lr.ph77.preheader.new ], [ %i.aj, %.lr.ph77 ] ; 2 uses
  %.05074 = phi ptr [ %.tr56, %.lr.ph77.preheader.new ], [ %i.ah, %.lr.ph77 ] ; 16 uses
  %niter = phi i64 [ 0, %.lr.ph77.preheader.new ], [ %niter.next.7, %.lr.ph77 ]
  %i.m = getelementptr inbounds nuw i8, ptr %.05074, i64 16
  store ptr %.04675, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.05074, i64 24
  store i64 %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.04675, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05074, i64 32
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.05074, i64 40
  store i64 %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05074, i64 48
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.05074, i64 56
  store i64 %i.c, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.k ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05074, i64 64
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.05074, i64 72
  store i64 %i.c, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.k ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05074, i64 80
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.05074, i64 88
  store i64 %i.c, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.k ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05074, i64 96
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.05074, i64 104
  store i64 %i.c, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.k ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05074, i64 112
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.05074, i64 120
  store i64 %i.c, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.k ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05074, i64 128 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.05074, i64 136
  store i64 %i.c, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.k ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph77, !llvm.loop !346

bb.d:                                             ; preds = %tailrecurse
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr55, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.tr55, i64 8
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.al)
  %.not79 = icmp eq i64 %i.an, 0
  br i1 %.not79, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.171 = phi i64 [ %i.as, %bb.e ], [ 0, %bb.d ]
  %.14770 = phi ptr [ %i.ar, %bb.e ], [ %.tr, %bb.d ] ; 2 uses
  %.15169 = phi ptr [ %i.ap, %bb.e ], [ %.tr56, %bb.d ]
  %i.ap = tail call fastcc ptr @GC_push_complex_descriptor(ptr noundef %.14770, ptr noundef %i.al, ptr noundef %.15169, ptr noundef %3) ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
end_hunk_1
