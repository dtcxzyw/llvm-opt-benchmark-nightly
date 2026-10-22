Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_mark_local:bb.a

bb.u:                                             ; preds = %bb.t
  %i.ap = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ap(ptr noundef nonnull @.str.145) #43, !inline_history !289
  tail call void @abort() #46
  unreachable

.critedge.loopexit:                               ; preds = %bb.m
  %i.aq = add i32 %i.ae, 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.p
  %i.ar = phi i32 [ %i.aq, %.critedge.loopexit ], [ 1, %bb.p ]
  store i32 %i.ar, ptr @GC_active_count, align 4
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #43
  %.not.i38 = icmp eq i32 %i.as, 0
  br i1 %.not.i38, label %GC_release_mark_lock.exit.backedge, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.at = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.at(ptr noundef nonnull @.str.347) #43, !inline_history !19
  tail call void @abort() #46
  unreachable

bb.w:                                             ; preds = %bb.i
  %i.au = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #43
  %.not.i40 = icmp eq i32 %i.au, 0
  br i1 %.not.i40, label %GC_release_mark_lock.exit41, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.av(ptr noundef nonnull @.str.347) #43, !inline_history !19
  tail call void @abort() #46
  unreachable

bb.y:                                             ; preds = %bb.h
  %i.aw = inttoptr i64 %i.r to ptr
  %i.ax = sub nuw i64 %i.r, %.pre-phi
  %i.ay = ashr exact i64 %i.ax, 4
  %i.az = add nsw i64 %i.ay, 1
  br label %GC_release_mark_lock.exit41

GC_release_mark_lock.exit41:                      ; preds = %bb.w, %bb.y
  %.024 = phi ptr [ %i.aw, %bb.y ], [ %i.t, %bb.w ] ; 2 uses
  %.023 = phi i64 [ %i.az, %bb.y ], [ %i.x, %bb.w ]
  %i.ba = icmp ult i64 %.023, 10
  %spec.store.select = select i1 %i.ba, i32 1, i32 5
  %.not31.i = icmp ugt ptr %.1, %.024
  br i1 %.not31.i, label %GC_steal_mark_stack.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_release_mark_lock.exit41, %bb.ab
  %.029.i = phi ptr [ %i.bm, %bb.ab ], [ %.1, %GC_release_mark_lock.exit41 ] ; 3 uses
  %.02328.i = phi ptr [ %.1.i, %bb.ab ], [ %i.g, %GC_release_mark_lock.exit41 ] ; 3 uses
  %.02427.i = phi i32 [ %.125.i, %bb.ab ], [ 0, %GC_release_mark_lock.exit41 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.029.i, i64 8 ; 2 uses
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 4 uses
  %.not.i42 = icmp eq i64 %i.bc, 0
  br i1 %.not.i42, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  store atomic volatile i64 0, ptr %i.bb release, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.02328.i, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02328.i, i64 24
  store i64 %i.bc, ptr %i.be, align 8
  %i.bf = load ptr, ptr %.029.i, align 8
  store ptr %i.bf, ptr %i.bd, align 8
  %i.bg = add nuw nsw i32 %.02427.i, 1            ; 2 uses
  %i.bh = and i64 %i.bc, 3
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = lshr i64 %i.bc, 8
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = add i32 %i.bg, %i.bk
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph.i
  %.125.i = phi i32 [ %i.bl, %bb.aa ], [ %i.bg, %bb.z ], [ %.02427.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi ptr [ %i.bd, %bb.aa ], [ %i.bd, %bb.z ], [ %.02328.i, %.lr.ph.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.029.i, i64 16 ; 3 uses
  %i.bn = icmp ule ptr %i.bm, %.024
  %i.bo = icmp ule i32 %.125.i, %spec.store.select
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph.i, label %GC_steal_mark_stack.exit, !llvm.loop !292

GC_steal_mark_stack.exit:                         ; preds = %bb.ab, %GC_release_mark_lock.exit41
  %.023.lcssa.i = phi ptr [ %i.g, %GC_release_mark_lock.exit41 ], [ %.1.i, %bb.ab ]
  %.0.lcssa.i = phi ptr [ %.1, %GC_release_mark_lock.exit41 ], [ %i.bm, %bb.ab ] ; 3 uses
  %i.bq = tail call fastcc ptr @GC_mark_from(ptr noundef %.023.lcssa.i, ptr noundef %0, ptr noundef nonnull %i.h) ; 2 uses
  %i.br = icmp ult ptr %i.bq, %0
  br i1 %i.br, label %GC_release_mark_lock.exit.backedge, label %.lr.ph

GC_release_mark_lock.exit.backedge:               ; preds = %bb.av, %GC_steal_mark_stack.exit, %GC_release_mark_lock.exit.i46, %.critedge
  %.053.be = phi ptr [ %.1, %.critedge ], [ %.0.lcssa.i, %GC_release_mark_lock.exit.i46 ], [ %.0.lcssa.i, %GC_steal_mark_stack.exit ], [ %.0.lcssa.i, %bb.av ]
  br label %GC_release_mark_lock.exit

.lr.ph:                                           ; preds = %GC_steal_mark_stack.exit, %bb.av
  %i.bs = phi ptr [ %i.ec, %bb.av ], [ %i.bq, %GC_steal_mark_stack.exit ] ; 5 uses
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = sub i64 %i.bt, %i.i                     ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 32752
  br i1 %i.bv, label %.loopexit39.i, label %bb.aj

.loopexit39.i:                                    ; preds = %.lr.ph
  %i.bw = ashr exact i64 %i.bu, 4
  %i.bx = add nsw i64 %i.bw, 1                    ; 3 uses
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.by = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 4
  %i.cf = add nsw i64 %i.ce, %i.bx
  %i.cg = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %.loopexit39.i
  %i.ci = load i32, ptr @GC_print_stats, align 4
  %.not.i48 = icmp eq i32 %i.ci, 0
  br i1 %.not.i48, label %bb.ae, label %bb.ad, !prof !47

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.148)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.ag

bb.af:                                            ; preds = %.loopexit39.i
  %i.cj = shl i64 %i.bx, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr nonnull align 8 %0, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bx
  %i.cl = ptrtoint ptr %i.ck to i64
  store atomic volatile i64 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160) release, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #43
  %.not.i.i45 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i45, label %GC_release_mark_lock.exit.i46, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cn(ptr noundef nonnull @.str.347) #43, !inline_history !293
  tail call void @abort() #46
  unreachable

GC_release_mark_lock.exit.i46:                    ; preds = %bb.ag
  %i.co = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @mark_cv) #43
  %.not.i13.i47 = icmp eq i32 %i.co, 0
  br i1 %.not.i13.i47, label %GC_release_mark_lock.exit.backedge, label %bb.ai

bb.ai:                                            ; preds = %GC_release_mark_lock.exit.i46
  %i.cp = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cp(ptr noundef nonnull @.str.145) #43, !inline_history !294
  tail call void @abort() #46
  unreachable

bb.aj:                                            ; preds = %.lr.ph
  %i.cq = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160) monotonic, align 8
  %i.cr = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 216) monotonic, align 8
  %i.cs = icmp ult i64 %i.cq, %i.cr
  %i.ct = icmp ugt ptr %i.bs, %i.j
  %or.cond.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond.i, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.cu = load i32, ptr @GC_active_count, align 4
  %i.cv = load i32, ptr @GC_helper_count, align 4
  %i.cw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #43
  %.not.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i, label %has_inactive_helpers.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cx = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cx(ptr noundef nonnull @.str.347) #43, !inline_history !295
  tail call void @abort() #46
  unreachable

has_inactive_helpers.exit.i:                      ; preds = %bb.ak
  %.not.i43 = icmp ult i32 %i.cu, %i.cv
  br i1 %.not.i43, label %bb.am, label %bb.av

bb.am:                                            ; preds = %has_inactive_helpers.exit.i
  %i.cy = lshr i64 %i.bu, 5                       ; 3 uses
  %.idx = shl nuw nsw i64 %i.cy, 4                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %GC_return_mark_stack.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = add nsw i64 %.idx, -16
  %i.dc = ashr exact i64 %i.db, 4
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 3 uses
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @mark_mutex)
  %i.de = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 4
  %i.dl = add nsw i64 %i.dk, %i.dd
  %i.dm = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.dn = icmp ugt i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.do = load i32, ptr @GC_print_stats, align 4
  %.not.i44 = icmp eq i32 %i.do, 0
  br i1 %.not.i44, label %bb.aq, label %bb.ap, !prof !47

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.148)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.dp = shl nuw nsw i64 %i.dd, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.dp, i1 false)
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dd
  %i.dr = ptrtoint ptr %i.dq to i64
  store atomic volatile i64 %i.dr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160) release, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ds = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mark_mutex) #43
  %.not.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i, label %GC_release_mark_lock.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.dt(ptr noundef nonnull @.str.347) #43, !inline_history !293
  tail call void @abort() #46
  unreachable

GC_release_mark_lock.exit.i:                      ; preds = %bb.as
  %i.du = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @mark_cv) #43
  %.not.i13.i = icmp eq i32 %i.du, 0
  br i1 %.not.i13.i, label %GC_return_mark_stack.exit, label %bb.au

bb.au:                                            ; preds = %GC_release_mark_lock.exit.i
  %i.dv = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.dv(ptr noundef nonnull @.str.145) #43, !inline_history !294
  tail call void @abort() #46
  unreachable

GC_return_mark_stack.exit:                        ; preds = %bb.am, %GC_release_mark_lock.exit.i
  %i.dw = ptrtoint ptr %i.cz to i64
  %i.dx = sub i64 %i.bt, %i.dw
  %i.dy = and i64 %i.dx, -16
  %i.dz = add i64 %i.dy, 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.cz, i64 %i.dz, i1 false)
  %i.ea = sub nsw i64 0, %i.cy
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.ea
  br label %bb.av

bb.av:                                            ; preds = %GC_return_mark_stack.exit, %has_inactive_helpers.exit.i, %bb.aj
  %.2.i = phi ptr [ %i.eb, %GC_return_mark_stack.exit ], [ %i.bs, %has_inactive_helpers.exit.i ], [ %i.bs, %bb.aj ]
  %i.ec = tail call fastcc ptr @GC_mark_from(ptr noundef %.2.i, ptr noundef nonnull %0, ptr noundef nonnull %i.h) ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %0
  br i1 %i.ed, label %GC_release_mark_lock.exit.backedge, label %.lr.ph

bb.aw:                                            ; preds = %bb.t, %bb.s
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_scratch_alloc(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8 ; 2 uses
  %i.b = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 15) ; 2 uses
  %i.c = and i64 %i.b, -16                        ; 8 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %.not33 = icmp ugt i64 %i.c, %i.g
  br i1 %.not33, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = icmp ugt i64 %i.b, 65535
  br i1 %i.h, label %bb.b, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.p, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.c
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  br label %bb.g

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %i.j = load i64, ptr @GC_page_size, align 8     ; 3 uses
  %notsub = add nsw i64 %i.j, -1
  %i.k = icmp ult i64 %notsub, -65537
  %i.l = add nsw i64 %i.j, 65535
  %i.m = select i1 %i.k, i64 %i.l, i64 -1, !prof !47
  %i.n = sub i64 0, %i.j
  %i.o = and i64 %i.m, %i.n                       ; 4 uses
  %i.p = tail call ptr @GC_unix_get_mem(i64 noundef %i.o) ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.f, !prof !48

bb.b:                                             ; preds = %.lr.ph
  %i.r = load i64, ptr @GC_page_size, align 8     ; 2 uses
  %i.s = sub nsw i64 0, %i.r                      ; 2 uses
  %i.t = icmp ult i64 %i.c, %i.s
  %i.u = add i64 %i.c, -1
  %i.v = add i64 %i.u, %i.r
  %i.w = select i1 %i.t, i64 %i.v, i64 -1, !prof !47
  %i.x = and i64 %i.w, %i.s                       ; 2 uses
  %i.y = tail call ptr @GC_unix_get_mem(i64 noundef %i.x) ; 2 uses
  %.not30 = icmp eq ptr %i.y, null
  br i1 %.not30, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.aa = add i64 %i.z, %i.x
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.split
  %i.ab = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.ab(ptr noundef nonnull @.str.153, i64 noundef %i.c) #43
  %i.ac = load i64, ptr @GC_page_size, align 8    ; 2 uses
  %i.ad = sub nsw i64 0, %i.ac                    ; 2 uses
  %i.ae = icmp ult i64 %i.c, %i.ad
  %i.af = add nsw i64 %i.c, -1
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = select i1 %i.ae, i64 %i.ag, i64 -1, !prof !47
  %i.ai = and i64 %i.ah, %i.ad                    ; 2 uses
  %i.aj = tail call ptr @GC_unix_get_mem(i64 noundef %i.ai) ; 2 uses
  %.not29 = icmp eq ptr %i.aj, null
  br i1 %.not29, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.al = add i64 %i.ak, %i.ai
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.an = add i64 %i.am, %i.o
  store i64 %i.an, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %.not = icmp ugt i64 %i.c, %i.o
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %._crit_edge
  %.026 = phi ptr [ %.0.lcssa, %._crit_edge ], [ null, %bb.b ], [ %i.y, %bb.c ], [ %i.aj, %bb.e ], [ null, %bb.d ]
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_add_to_heap(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.ac, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.df, %bb.ac ] ; 5 uses
  %.tr57 = phi i64 [ %1, %bb.a ], [ %i.db, %bb.ac ] ; 4 uses
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8 ; 3 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 256), align 8
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %tailrecurse
  %.not = icmp eq i64 %i.a, 0
  %i.d = shl i64 %i.a, 1
  %i.e = select i1 %.not, i64 32, i64 %i.d        ; 2 uses
  %i.f = shl i64 %i.e, 4
  %i.g = tail call fastcc ptr @GC_scratch_alloc(i64 noundef %i.f) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8
  %i.j = add i64 %i.i, 32                         ; 2 uses
  %i.k = shl i64 %i.j, 4
  %i.l = tail call fastcc ptr @GC_scratch_alloc(i64 noundef %i.k) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.n(ptr noundef nonnull @.str.155) #43
  tail call void @abort() #46
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.038 = phi i64 [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.0 = phi ptr [ %i.l, %bb.c ], [ %i.g, %bb.b ]  ; 2 uses
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 256), align 8 ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92664), align 8 ; 3 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8 ; 2 uses
  %.not52 = icmp eq i64 %i.q, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = shl i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %.038, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 256), align 8
  store ptr %.0, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92664), align 8
  %i.s = load i32, ptr @GC_print_stats, align 4
  %.not53 = icmp eq i32 %i.s, 0
  br i1 %.not53, label %bb.i, label %bb.h, !prof !47

end_hunk_0
