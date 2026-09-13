Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_make_descriptor:bb.a
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
  br i1 %.not47.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !157

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
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph55.i, !llvm.loop !158

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
  %i.dn = sext i32 %i.dm to i64
  %i.do = shl i64 %.lcssa.i, 8
  %i.dp = shl nsw i64 %i.dn, 2
  %i.dq = or i64 %i.do, %i.dp
  %i.dr = or disjoint i64 %i.dq, 2
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %bb.w, %bb.x, %bb.i, %.critedge.preheader, %._crit_edge70.loopexit, %bb.aj, %GC_add_ext_descriptor.exit, %._crit_edge
  %.2 = phi i64 [ %i.t, %._crit_edge ], [ %i.t, %GC_add_ext_descriptor.exit ], [ %i.t, %bb.w ], [ %i.dr, %bb.aj ], [ 8, %.critedge.preheader ], [ %i.aq, %._crit_edge70.loopexit ], [ 0, %bb.i ], [ %i.t, %bb.x ], [ 0, %bb.j ]
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
  tail call void %i.c(ptr noundef nonnull @.str.104) #45, !inline_history !45
  tail call void @abort() #48
  unreachable

GC_new_free_list_inner.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.a, i8 0, i64 1032, i1 false)
  %i.d = load i32, ptr @GC_n_kinds, align 4       ; 4 uses
  %i.e = icmp ult i32 %i.d, 16
  br i1 %i.e, label %GC_new_kind_inner.exit, label %bb.c

bb.c:                                             ; preds = %GC_new_free_list_inner.exit
  %i.f = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.f(ptr noundef nonnull @.str.105) #45, !inline_history !46
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
  tail call void %i.r(ptr noundef nonnull @.str.106) #45, !inline_history !60
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
  tail call void %i.v(ptr noundef nonnull @.str.106) #45, !inline_history !60
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
  tail call void %i.ab(ptr noundef nonnull @.str.104) #45, !inline_history !45
  tail call void @abort() #48
  unreachable

GC_new_free_list_inner.exit6:                     ; preds = %GC_new_proc_inner.exit5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.z, i8 0, i64 1032, i1 false)
  %i.ac = load i32, ptr @GC_n_kinds, align 4      ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 16
  br i1 %i.ad, label %GC_new_kind_inner.exit7, label %bb.g

bb.g:                                             ; preds = %GC_new_free_list_inner.exit6
  %i.ae = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ae(ptr noundef nonnull @.str.105) #45, !inline_history !46
  tail call void @abort() #48
  unreachable

GC_new_kind_inner.exit7:                          ; preds = %GC_new_free_list_inner.exit6
  %i.af = load i32, ptr @GC_array_mark_proc_index, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = or disjoint i64 %i.ah, 2
  %i.aj = add nuw nsw i32 %i.ac, 1
  store i32 %i.aj, ptr @GC_n_kinds, align 4
  %i.ak = zext nneg i32 %i.ac to i64
  %i.al = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.ak ; 7 uses
  store ptr %i.z, ptr %i.al, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.ai, ptr %i.an, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i32 1, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 0, ptr %i.aq, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr null, ptr %i.ar, align 8
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
  br i1 %i.a, label %bb.b, label %bb.c, !prof !48

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
  %i.g = select i1 %i.e, i64 %i.f, i64 -1, !prof !47
  %i.h = load i32, ptr @GC_explicit_kind, align 4
  %i.i = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.g, i32 noundef %i.h) #53 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.d, !prof !48

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
end_hunk_0
