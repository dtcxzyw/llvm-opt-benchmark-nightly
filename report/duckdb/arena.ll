inline.NumInlined: 376
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@duckdb_je_arena_cache_bin_fill_small:bb.a
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store ptr %i.ed, ptr %i.eg, align 8, !tbaa !120
  %i.eh = load ptr, ptr %i.dv, align 8, !tbaa !120
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store ptr %i.cg, ptr %i.ei, align 8, !tbaa !120
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ax, align 8, !tbaa !127
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

bb.r:                                             ; preds = %bb.m
  call void @duckdb_je_edata_heap_remove(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.cg) #18
  %i.ej = load i64, ptr %i.az, align 8, !tbaa !156
  %i.ek = add i64 %i.ej, -1
  store i64 %i.ek, ptr %i.az, align 8, !tbaa !156
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit

duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit: ; preds = %bb.l, %bb.n, %.thread.i.i.i.i, %bb.q, %bb.r
  %i.el = load i64, ptr %i.ba, align 8, !tbaa !137
  %i.em = add i64 %i.el, -1
  store i64 %i.em, ptr %i.ba, align 8, !tbaa !137
  %i.en = icmp ult i32 %i.cd, 8
  br i1 %i.en, label %bb.s, label %bb.t

bb.s:                                             ; preds = %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit
  %i.eo = zext nneg i32 %i.cd to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.eo
  store ptr %i.cg, ptr %i.ep, align 8, !tbaa !157
  %i.eq = add nuw nsw i32 %i.cd, 1
  br label %arena_dalloc_bin_locked_step.exit

bb.t:                                             ; preds = %duckdb_je_arena_dalloc_bin_locked_handle_newly_empty.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 3 uses
  store ptr %i.cg, ptr %i.er, align 8, !tbaa !120
  %i.es = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 4 uses
  store ptr %i.cg, ptr %i.es, align 8, !tbaa !120
  %i.et = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %edata_list_active_append.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 48 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !120
  store ptr %i.ew, ptr %i.er, align 8, !tbaa !120
  store ptr %i.cg, ptr %i.ev, align 8, !tbaa !120
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !120
  store ptr %i.ez, ptr %i.es, align 8, !tbaa !120
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !120
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store ptr %i.et, ptr %i.fb, align 8, !tbaa !120
  %i.fc = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  store ptr %i.cg, ptr %i.fd, align 8, !tbaa !120
  %.pre.i = load ptr, ptr %i.er, align 8, !tbaa !120
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %bb.t, %bb.u
  %i.fe = phi ptr [ %.pre.i, %bb.u ], [ %i.cg, %bb.t ]
  store ptr %i.fe, ptr %i.ar, align 8, !tbaa !127
  br label %arena_dalloc_bin_locked_step.exit

bb.v:                                             ; preds = %bb.j
  %i.ff = icmp eq i32 %i.cz, 1
  br i1 %i.ff, label %bb.w, label %arena_dalloc_bin_locked_step.exit

bb.w:                                             ; preds = %bb.v
  %i.fg = load ptr, ptr %i.av, align 8, !tbaa !135
  %.not.i97 = icmp eq ptr %i.cg, %i.fg
  br i1 %.not.i97, label %arena_dalloc_bin_locked_step.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i = load i32, ptr %i.aw, align 8, !tbaa !115
  %i.fh = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.fi = icmp ult i32 %.val.i, %i.fh
  br i1 %i.fi, label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.cg
  br i1 %i.fk, label %bb.z, label %.thread.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !120 ; 2 uses
  store ptr %i.fm, ptr %i.ax, align 8, !tbaa !127
  %i.fn = icmp eq ptr %i.fm, %i.cg
  br i1 %i.fn, label %bb.aa, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.z, %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !120
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !120
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !120
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store ptr %i.fr, ptr %i.fu, align 8, !tbaa !120
  %i.fv = load ptr, ptr %i.fs, align 8, !tbaa !120 ; 2 uses
  %i.fw = load ptr, ptr %i.fo, align 8, !tbaa !120
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store ptr %i.fv, ptr %i.fx, align 8, !tbaa !120
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !120
  store ptr %i.fz, ptr %i.fs, align 8, !tbaa !120
  %i.ga = load ptr, ptr %i.fo, align 8, !tbaa !120 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !120
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store ptr %i.ga, ptr %i.gd, align 8, !tbaa !120
  %i.ge = load ptr, ptr %i.fs, align 8, !tbaa !120
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  store ptr %i.cg, ptr %i.gf, align 8, !tbaa !120
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.ax, align 8, !tbaa !127
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit

duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit: ; preds = %bb.x, %.thread.i.i.i, %bb.aa
  call fastcc void @arena_bin_lower_slab(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.cg, ptr noundef nonnull %.0.i.i)
  br label %arena_dalloc_bin_locked_step.exit

arena_dalloc_bin_locked_step.exit:                ; preds = %bb.s, %edata_list_active_append.exit, %bb.v, %bb.w, %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit
  %i.gg = phi i32 [ %i.eq, %bb.s ], [ %i.cd, %edata_list_active_append.exit ], [ %i.cd, %bb.v ], [ %i.cd, %bb.w ], [ %i.cd, %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit ] ; 2 uses
  %i.gh = add nuw i64 %.0.i96161, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gh, %i.bs
  br i1 %exitcond.not, label %._crit_edge164, label %bb.j

arena_bin_flush_batch_after_lock.exit:            ; preds = %._crit_edge164, %bb.h, %malloc_mutex_lock.exit
  %i.gi = icmp ult i16 %.081, %4
  br i1 %i.gi, label %.lr.ph169, label %.thread140.thread

.lr.ph169:                                        ; preds = %arena_bin_flush_batch_after_lock.exit, %bb.ah
  %.1168 = phi i1 [ %.2, %bb.ah ], [ %.073, %arena_bin_flush_batch_after_lock.exit ] ; 3 uses
  %.175167 = phi ptr [ %.276, %bb.ah ], [ %.074, %arena_bin_flush_batch_after_lock.exit ] ; 4 uses
  %.182166 = phi i16 [ %.283, %bb.ah ], [ %.081, %arena_bin_flush_batch_after_lock.exit ] ; 7 uses
  %i.gj = zext i16 %.182166 to i32
  %i.gk = load ptr, ptr %i.av, align 8, !tbaa !135 ; 12 uses
  %.not = icmp eq ptr %i.gk, null
  br i1 %.not, label %arena_bin_slabs_full_insert.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph169
  %.val105 = load i64, ptr %i.gk, align 8, !tbaa !124 ; 2 uses
  %i.gl = lshr i64 %.val105, 28
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = and i32 %i.gm, 1023                     ; 2 uses
  %.not88 = icmp eq i32 %i.gn, 0
  br i1 %.not88, label %bb.ac, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.ab
  %i.go = sub nsw i32 %i.be, %i.gj
  %i.gp = call i32 @llvm.umin.i32(i32 %i.go, i32 %i.gn) ; 5 uses
  %i.gq = zext i16 %.182166 to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gq ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 64 ; 4 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = getelementptr i8, ptr %i.gk, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge47.i, %.preheader.lr.ph.i
  %.052.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge47.i ] ; 2 uses
  %.02751.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.lcssa262, %._crit_edge47.i ] ; 5 uses
  %.03750.i = phi i64 [ %i.gt, %.preheader.lr.ph.i ], [ %.lcssa263, %._crit_edge47.i ] ; 2 uses
  %i.gv = icmp eq i64 %.03750.i, 0
  br i1 %i.gv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.139.i = phi i32 [ %i.gw, %.lr.ph.i ], [ %.052.i, %.preheader.i ]
  %i.gw = add i32 %.139.i, 1                      ; 3 uses
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !10 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.138.lcssa.i = phi i64 [ %.03750.i, %.preheader.i ], [ %i.gz, %.lr.ph.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.052.i, %.preheader.i ], [ %i.gw, %.lr.ph.i ] ; 4 uses
  %i.hb = shl i32 %.1.lcssa.i, 6
  %i.hc = zext i32 %i.hb to i64                   ; 3 uses
  %.val.i114 = load ptr, ptr %i.gu, align 8, !tbaa !122
  %i.hd = ptrtoint ptr %.val.i114 to i64          ; 3 uses
  %i.he = load i64, ptr %i.g, align 8, !tbaa !158 ; 3 uses
  %.not41.i = icmp eq i32 %i.gp, %.02751.i
  br i1 %.not41.i, label %._crit_edge47.thread.i, label %.lr.ph46.preheader.i

._crit_edge47.thread.i:                           ; preds = %._crit_edge.i
  %i.hf = zext i32 %.1.lcssa.i to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hf
  store i64 %.138.lcssa.i, ptr %i.hg, align 8, !tbaa !10
  br label %arena_slab_reg_alloc_batch.exit

.lr.ph46.preheader.i:                             ; preds = %._crit_edge.i
  %i.hh = sub i32 %i.gp, %.02751.i
  %i.hi = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %.138.lcssa.i)
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.hh, i32 %i.hj) ; 3 uses
  %.029.i = zext nneg i32 %spec.select.i to i64   ; 2 uses
  %lcmp.mod.not = trunc i32 %spec.select.i to i1
  br i1 %lcmp.mod.not, label %.lr.ph46.i.prol, label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.preheader.i
  %i.hk = add nsw i64 %.029.i, -1
  %i.hl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.138.lcssa.i, i1 true) ; 2 uses
  %i.hm = shl nuw i64 1, %i.hl
  %i.hn = xor i64 %i.hm, %.138.lcssa.i            ; 2 uses
  %i.ho = or disjoint i64 %i.hl, %i.hc
  %i.hp = mul i64 %i.ho, %i.he
  %i.hq = add i64 %i.hp, %i.hd
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = zext i32 %.02751.i to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hs
  store ptr %i.hr, ptr %i.ht, align 8, !tbaa !103
  %i.hu = add i32 %.02751.i, 1                    ; 2 uses
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.preheader.i
  %.lcssa263.unr = phi i64 [ poison, %.lr.ph46.preheader.i ], [ %i.hn, %.lr.ph46.i.prol ]
  %.lcssa262.unr = phi i32 [ poison, %.lr.ph46.preheader.i ], [ %i.hu, %.lr.ph46.i.prol ]
  %.12844.i.unr = phi i32 [ %.02751.i, %.lr.ph46.preheader.i ], [ %i.hu, %.lr.ph46.i.prol ]
  %.13043.i.unr = phi i64 [ %.029.i, %.lr.ph46.preheader.i ], [ %i.hk, %.lr.ph46.i.prol ]
  %.242.i.unr = phi i64 [ %.138.lcssa.i, %.lr.ph46.preheader.i ], [ %i.hn, %.lr.ph46.i.prol ]
  %i.hv = icmp eq i32 %spec.select.i, 1
  br i1 %i.hv, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.12844.i = phi i32 [ %i.is, %.lr.ph46.i ], [ %.12844.i.unr, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.13043.i = phi i64 [ %i.ih, %.lr.ph46.i ], [ %.13043.i.unr, %.lr.ph46.i.prol.loopexit ]
  %.242.i = phi i64 [ %i.il, %.lr.ph46.i ], [ %.242.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %i.hw = icmp ne i64 %.242.i, 0
  call void @llvm.assume(i1 %i.hw)
  %i.hx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.242.i, i1 true) ; 2 uses
  %i.hy = shl nuw i64 1, %i.hx                    ; 2 uses
  %i.hz = xor i64 %i.hy, %.242.i                  ; 2 uses
  %i.ia = or disjoint i64 %i.hx, %i.hc
  %i.ib = mul i64 %i.ia, %i.he
  %i.ic = add i64 %i.ib, %i.hd
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = zext i32 %.12844.i to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ie
  store ptr %i.id, ptr %i.if, align 8, !tbaa !103
  %i.ig = add i32 %.12844.i, 1
  %i.ih = add nsw i64 %.13043.i, -2               ; 2 uses
  %i.ii = icmp ne i64 %i.hy, %.242.i
  call void @llvm.assume(i1 %i.ii)
  %i.ij = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hz, i1 true) ; 2 uses
  %i.ik = shl nuw i64 1, %i.ij
  %i.il = xor i64 %i.ik, %i.hz                    ; 2 uses
  %i.im = or disjoint i64 %i.ij, %i.hc
  %i.in = mul i64 %i.im, %i.he
  %i.io = add i64 %i.in, %i.hd
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = zext i32 %i.ig to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.iq
  store ptr %i.ip, ptr %i.ir, align 8, !tbaa !103
  %i.is = add i32 %.12844.i, 2                    ; 2 uses
  %.not.i115.1 = icmp eq i64 %i.ih, 0
  br i1 %.not.i115.1, label %._crit_edge47.i, label %.lr.ph46.i

._crit_edge47.i:                                  ; preds = %.lr.ph46.i, %.lr.ph46.i.prol.loopexit
  %.lcssa263 = phi i64 [ %.lcssa263.unr, %.lr.ph46.i.prol.loopexit ], [ %i.il, %.lr.ph46.i ] ; 2 uses
  %.lcssa262 = phi i32 [ %.lcssa262.unr, %.lr.ph46.i.prol.loopexit ], [ %i.is, %.lr.ph46.i ] ; 2 uses
  %i.it = zext i32 %.1.lcssa.i to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.it
  store i64 %.lcssa263, ptr %i.iu, align 8, !tbaa !10
  %i.iv = icmp ult i32 %.lcssa262, %i.gp
  br i1 %i.iv, label %.preheader.i, label %arena_slab_reg_alloc_batch.exit

arena_slab_reg_alloc_batch.exit:                  ; preds = %._crit_edge47.i, %._crit_edge47.thread.i
  %i.iw = zext nneg i32 %i.gp to i64
  %i.ix = shl nuw nsw i64 %i.iw, 28
  %i.iy = sub i64 %.val105, %i.ix
  store i64 %i.iy, ptr %i.gk, align 8, !tbaa !124
  %i.iz = trunc nuw nsw i32 %i.gp to i16
  %i.ja = add i16 %.182166, %i.iz
  br label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %.val.i117 = load i32, ptr %i.aw, align 8, !tbaa !115
  %i.jb = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.jc = icmp ult i32 %.val.i117, %i.jb
  br i1 %i.jc, label %arena_bin_slabs_full_insert.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gk, i64 40 ; 3 uses
  store ptr %i.gk, ptr %i.jd, align 8, !tbaa !120
  %i.je = getelementptr inbounds nuw i8, ptr %i.gk, i64 48 ; 4 uses
  store ptr %i.gk, ptr %i.je, align 8, !tbaa !120
  %i.jf = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %edata_list_active_append.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !120
  store ptr %i.ji, ptr %i.jd, align 8, !tbaa !120
  %i.jj = load ptr, ptr %i.ax, align 8, !tbaa !127
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  store ptr %i.gk, ptr %i.jk, align 8, !tbaa !120
  %i.jl = load ptr, ptr %i.je, align 8, !tbaa !120
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !120
  store ptr %i.jn, ptr %i.je, align 8, !tbaa !120
  %i.jo = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !120
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  store ptr %i.jo, ptr %i.jr, align 8, !tbaa !120
  %i.js = load ptr, ptr %i.je, align 8, !tbaa !120
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store ptr %i.gk, ptr %i.jt, align 8, !tbaa !120
  %.pre.i.i.i = load ptr, ptr %i.jd, align 8, !tbaa !120
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.ae, %bb.ad
  %i.ju = phi ptr [ %.pre.i.i.i, %bb.ae ], [ %i.gk, %bb.ad ]
  store ptr %i.ju, ptr %i.ax, align 8, !tbaa !127
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %.lr.ph169, %edata_list_active_append.exit.i.i, %bb.ac
  %i.jv = call ptr @duckdb_je_edata_heap_remove_first(ptr noundef nonnull %i.ay) #18 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.af, label %arena_bin_refill_slabcur_no_fresh_slab.exit

arena_bin_refill_slabcur_no_fresh_slab.exit:      ; preds = %arena_bin_slabs_full_insert.exit.i
  %i.jx = load i64, ptr %i.bf, align 8, !tbaa !159
  %i.jy = add i64 %i.jx, 1
  store i64 %i.jy, ptr %i.bf, align 8, !tbaa !159
  %i.jz = load i64, ptr %i.az, align 8, !tbaa !156
  %i.ka = add i64 %i.jz, -1
  store i64 %i.ka, ptr %i.az, align 8, !tbaa !156
  store ptr %i.jv, ptr %i.av, align 8, !tbaa !135
  br label %bb.ah

bb.af:                                            ; preds = %arena_bin_slabs_full_insert.exit.i
  store ptr null, ptr %i.av, align 8, !tbaa !135
  %.not89 = icmp eq ptr %.175167, null
  br i1 %.not89, label %.thread140, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kb = load i64, ptr %i.bg, align 8, !tbaa !160
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.bg, align 8, !tbaa !160
  %i.kd = load i64, ptr %i.ba, align 8, !tbaa !137
  %i.ke = add i64 %i.kd, 1
  store i64 %i.ke, ptr %i.ba, align 8, !tbaa !137
  store ptr %.175167, ptr %i.av, align 8, !tbaa !135
  br label %bb.ah

bb.ah:                                            ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit, %bb.ag, %arena_slab_reg_alloc_batch.exit
  %.283 = phi i16 [ %i.ja, %arena_slab_reg_alloc_batch.exit ], [ %.182166, %bb.ag ], [ %.182166, %arena_bin_refill_slabcur_no_fresh_slab.exit ] ; 3 uses
  %.276 = phi ptr [ %.175167, %arena_slab_reg_alloc_batch.exit ], [ null, %bb.ag ], [ %.175167, %arena_bin_refill_slabcur_no_fresh_slab.exit ] ; 2 uses
  %.2 = phi i1 [ true, %arena_slab_reg_alloc_batch.exit ], [ %.1168, %bb.ag ], [ %.1168, %arena_bin_refill_slabcur_no_fresh_slab.exit ]
  %i.kf = icmp ult i16 %.283, %4
  br i1 %i.kf, label %.lr.ph169, label %.thread140.thread

.thread140:                                       ; preds = %bb.af
  br i1 %.1168, label %.critedge, label %.thread140.thread

.thread140.thread:                                ; preds = %arena_bin_flush_batch_after_lock.exit, %.thread140, %bb.ah
  %.3240 = phi ptr [ %.276, %bb.ah ], [ %.074, %arena_bin_flush_batch_after_lock.exit ], [ null, %.thread140 ] ; 2 uses
  %.182.lcssa239 = phi i16 [ %.283, %bb.ah ], [ %.081, %arena_bin_flush_batch_after_lock.exit ], [ %.182166, %.thread140 ] ; 2 uses
  %i.kg = zext i16 %.182.lcssa239 to i64          ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !125
  %i.kj = add i64 %i.ki, %i.kg
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !125
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !161
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 128 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !162
  %i.ko = add i64 %i.kn, %i.kl
  store i64 %i.ko, ptr %i.km, align 8, !tbaa !162
  %i.kp = load i64, ptr %i.bi, align 8, !tbaa !136
  %i.kq = add i64 %i.kp, %i.kg                    ; 2 uses
  store i64 %i.kq, ptr %i.bi, align 8, !tbaa !136
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 144 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !163
  %i.kt = add i64 %i.ks, 1
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !163
  store i64 0, ptr %i.kk, align 8, !tbaa !161
  %i.ku = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %.not.i92 = icmp ult i32 %3, %i.ku
  br i1 %.not.i92, label %bb.ai, label %arena_bin_flush_batch_before_unlock.exit93

bb.ai:                                            ; preds = %.thread140.thread
  %i.kv = load i64, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.kw = load i64, ptr %i.bh, align 8, !tbaa !126
  %i.kx = add i64 %i.kw, %i.kv
  store i64 %i.kx, ptr %i.bh, align 8, !tbaa !126
  %i.ky = sub i64 %i.kq, %i.kv
  store i64 %i.ky, ptr %i.bi, align 8, !tbaa !136
  br label %arena_bin_flush_batch_before_unlock.exit93

arena_bin_flush_batch_before_unlock.exit93:       ; preds = %.thread140.thread, %bb.ai
  store atomic i8 0, ptr %i.ai monotonic, align 8
  %i.kz = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #18 ; 0 uses
  %i.la = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.lb = icmp ult i32 %3, %i.la
  br i1 %i.lb, label %bb.aj, label %arena_bin_flush_batch_after_unlock.exit95
end_hunk_0
begin_hunk_1_@duckdb_je_arena_cache_bin_fill_small:bb.a

bb.bl:                                            ; preds = %bb.bk
  %i.rv = load i64, ptr %i.ro, align 8, !tbaa !10
  %i.rw = mul i64 %i.rv, 6364136223846793005
  %i.rx = add i64 %i.rw, 1442695040888963407      ; 2 uses
  store i64 %i.rx, ptr %i.ro, align 8, !tbaa !10
  %i.ry = lshr i64 %i.rx, 58
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !166
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.ry
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !120
  %i.se = zext i8 %i.sd to i64
  %i.sf = mul nsw i64 %i.se, %i.sb
  %i.sg = udiv i64 %i.sf, 61
  %i.sh = trunc i64 %i.sg to i32
  store i32 %i.sh, ptr %i.rn, align 8, !tbaa !164
  call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.bj, %ticker_geom_ticks.exit, %cache_bin_finish_fill.exit, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 78960
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !12
  %i.d = tail call ptr @duckdb_je_base_ehooks_get(ptr noundef %i.c) #18
  %i.e = load i64, ptr @duckdb_je_opt_san_guard_small, align 8, !tbaa !10
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %san_slab_extent_decide_guard.exit, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.g = icmp eq ptr %0, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %i.j = icmp ne ptr %i.i, @duckdb_je_ehooks_default_extent_hooks
  %or.cond.i = or i1 %i.g, %i.j
  br i1 %or.cond.i, label %san_slab_extent_decide_guard.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %i.m = icmp eq i64 %i.l, 1                      ; 2 uses
  %i.n = load i64, ptr @duckdb_je_opt_san_guard_small, align 8
  %i.o = add i64 %i.l, -1
  %.sink.i = select i1 %i.m, i64 %i.n, i64 %i.o
  store i64 %.sink.i, ptr %i.k, align 8, !tbaa !10
  br label %san_slab_extent_decide_guard.exit

san_slab_extent_decide_guard.exit:                ; preds = %tsdn_witness_tsdp_get.exit, %bb.a, %.sink.split.i
  %.1.i = phi i1 [ false, %tsdn_witness_tsdp_get.exit ], [ false, %bb.a ], [ %i.m, %.sink.split.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 10664
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !167
  %i.s = call ptr @duckdb_je_pa_alloc(ptr noundef %0, ptr noundef nonnull %i.p, i64 noundef %i.r, i64 noundef 4096, i1 noundef zeroext true, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext %.1.i, ptr noundef nonnull %i.a) #18 ; 5 uses
  %i.t = load i8, ptr %i.a, align 1, !tbaa !118, !range !113, !noundef !114
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %san_slab_extent_decide_guard.exit
  call void @duckdb_je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %san_slab_extent_decide_guard.exit
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !144
  %i.z = load i64, ptr %i.s, align 8, !tbaa !124
  %i.aa = and i64 %i.z, -17591917608961
  %i.ab = zext i32 %3 to i64
  %i.ac = shl i64 %i.ab, 38
  %i.ad = zext i32 %i.y to i64
  %i.ae = shl nuw nsw i64 %i.ad, 28
  %i.af = or i64 %i.ae, %i.ac
  %i.ag = or i64 %i.af, %i.aa
  store i64 %i.ag, ptr %i.s, align 8, !tbaa !124
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @duckdb_je_bitmap_init(ptr noundef nonnull %i.w, ptr noundef nonnull %i.ah, i1 noundef zeroext false) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %i.s
}

; Function Attrs: nounwind uwtable
define i64 @duckdb_je_arena_fill_small_fresh(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.a ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !144
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !158
  %i.g = getelementptr i8, ptr %1, i64 78952
  %.val = load i32, ptr %i.g, align 8, !tbaa !115
  %i.h = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.i = icmp ult i32 %.val, %i.h                 ; 2 uses
  %i.j = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.j, label %duckdb_je_arena_bin_choose.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !142
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %duckdb_je_arena_bin_choose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.a
  %i.p = load i8, ptr %i.o, align 1, !tbaa !120
  %i.q = zext i8 %i.p to i32
  br label %duckdb_je_arena_bin_choose.exit

duckdb_je_arena_bin_choose.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.a
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 2 uses
  %i.v = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.w = icmp ult i32 %2, %i.v
  %i.x = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.y = getelementptr inbounds nuw [648 x i8], ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.u, i64 %i.x
  %.0.i.i = select i1 %i.w, ptr %i.y, ptr %i.z    ; 13 uses
  %.not98 = icmp eq i64 %4, 0
  br i1 %.not98, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %duckdb_je_arena_bin_choose.exit, %edata_list_active_append.exit
  %.05989 = phi i64 [ %i.co, %edata_list_active_append.exit ], [ 0, %duckdb_je_arena_bin_choose.exit ] ; 4 uses
  %.06088 = phi i64 [ %i.ab, %edata_list_active_append.exit ], [ 0, %duckdb_je_arena_bin_choose.exit ] ; 2 uses
  %.sroa.0.087 = phi ptr [ %.sroa.0.1, %edata_list_active_append.exit ], [ null, %duckdb_je_arena_bin_choose.exit ] ; 5 uses
  %i.aa = tail call fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %.0.i, ptr noundef nonnull %i.b) ; 13 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ab = add i64 %.06088, 1                      ; 2 uses
  %i.ac = sub i64 %4, %.05989                     ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.e) ; 5 uses
  %i.ad = trunc nuw i64 %spec.select to i32       ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05989 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 4 uses
  %.not54.i = icmp eq i64 %spec.select, 0
  br i1 %.not54.i, label %arena_slab_reg_alloc_batch.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ah = getelementptr i8, ptr %i.aa, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge47.i, %.preheader.lr.ph.i
  %.052.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge47.i ] ; 2 uses
  %.02751.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.lcssa125, %._crit_edge47.i ] ; 5 uses
  %.03750.i = phi i64 [ %i.ag, %.preheader.lr.ph.i ], [ %.lcssa126, %._crit_edge47.i ] ; 2 uses
  %i.ai = icmp eq i64 %.03750.i, 0
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.139.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %.052.i, %.preheader.i ]
  %i.aj = add i32 %.139.i, 1                      ; 3 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.138.lcssa.i = phi i64 [ %.03750.i, %.preheader.i ], [ %i.am, %.lr.ph.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.052.i, %.preheader.i ], [ %i.aj, %.lr.ph.i ] ; 4 uses
  %i.ao = shl i32 %.1.lcssa.i, 6
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %.val.i = load ptr, ptr %i.ah, align 8, !tbaa !122
  %i.aq = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !158 ; 3 uses
  %.not41.i = icmp eq i32 %.02751.i, %i.ad
  br i1 %.not41.i, label %._crit_edge47.thread.i, label %.lr.ph46.preheader.i

._crit_edge47.thread.i:                           ; preds = %._crit_edge.i
  %i.as = zext i32 %.1.lcssa.i to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.as
  store i64 %.138.lcssa.i, ptr %i.at, align 8, !tbaa !10
  br label %arena_slab_reg_alloc_batch.exit

.lr.ph46.preheader.i:                             ; preds = %._crit_edge.i
  %i.au = sub i32 %i.ad, %.02751.i
  %i.av = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %.138.lcssa.i)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.aw) ; 3 uses
  %.029.i = zext nneg i32 %spec.select.i to i64   ; 2 uses
  %lcmp.mod.not = trunc i32 %spec.select.i to i1
  br i1 %lcmp.mod.not, label %.lr.ph46.i.prol, label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.preheader.i
  %i.ax = add nsw i64 %.029.i, -1
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.138.lcssa.i, i1 true) ; 2 uses
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = xor i64 %i.az, %.138.lcssa.i            ; 2 uses
  %i.bb = or disjoint i64 %i.ay, %i.ap
  %i.bc = mul i64 %i.bb, %i.ar
  %i.bd = add i64 %i.bc, %i.aq
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = zext i32 %.02751.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bf
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !103
  %i.bh = add i32 %.02751.i, 1                    ; 2 uses
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.preheader.i
  %.lcssa126.unr = phi i64 [ poison, %.lr.ph46.preheader.i ], [ %i.ba, %.lr.ph46.i.prol ]
  %.lcssa125.unr = phi i32 [ poison, %.lr.ph46.preheader.i ], [ %i.bh, %.lr.ph46.i.prol ]
  %.12844.i.unr = phi i32 [ %.02751.i, %.lr.ph46.preheader.i ], [ %i.bh, %.lr.ph46.i.prol ]
  %.13043.i.unr = phi i64 [ %.029.i, %.lr.ph46.preheader.i ], [ %i.ax, %.lr.ph46.i.prol ]
  %.242.i.unr = phi i64 [ %.138.lcssa.i, %.lr.ph46.preheader.i ], [ %i.ba, %.lr.ph46.i.prol ]
  %i.bi = icmp eq i32 %spec.select.i, 1
  br i1 %i.bi, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.12844.i = phi i32 [ %i.cf, %.lr.ph46.i ], [ %.12844.i.unr, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.13043.i = phi i64 [ %i.bu, %.lr.ph46.i ], [ %.13043.i.unr, %.lr.ph46.i.prol.loopexit ]
  %.242.i = phi i64 [ %i.by, %.lr.ph46.i ], [ %.242.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %i.bj = icmp ne i64 %.242.i, 0
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.242.i, i1 true) ; 2 uses
  %i.bl = shl nuw i64 1, %i.bk                    ; 2 uses
  %i.bm = xor i64 %i.bl, %.242.i                  ; 2 uses
  %i.bn = or disjoint i64 %i.bk, %i.ap
  %i.bo = mul i64 %i.bn, %i.ar
  %i.bp = add i64 %i.bo, %i.aq
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = zext i32 %.12844.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.br
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !103
  %i.bt = add i32 %.12844.i, 1
  %i.bu = add nsw i64 %.13043.i, -2               ; 2 uses
  %i.bv = icmp ne i64 %i.bl, %.242.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bm, i1 true) ; 2 uses
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = xor i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = or disjoint i64 %i.bw, %i.ap
  %i.ca = mul i64 %i.bz, %i.ar
  %i.cb = add i64 %i.ca, %i.aq
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = zext i32 %i.bt to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !103
  %i.cf = add i32 %.12844.i, 2                    ; 2 uses
  %.not.i.1 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.1, label %._crit_edge47.i, label %.lr.ph46.i

._crit_edge47.i:                                  ; preds = %.lr.ph46.i, %.lr.ph46.i.prol.loopexit
  %.lcssa126 = phi i64 [ %.lcssa126.unr, %.lr.ph46.i.prol.loopexit ], [ %i.by, %.lr.ph46.i ] ; 2 uses
  %.lcssa125 = phi i32 [ %.lcssa125.unr, %.lr.ph46.i.prol.loopexit ], [ %i.cf, %.lr.ph46.i ] ; 2 uses
  %i.cg = zext i32 %.1.lcssa.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cg
  store i64 %.lcssa126, ptr %i.ch, align 8, !tbaa !10
  %i.ci = icmp ult i32 %.lcssa125, %i.ad
  br i1 %i.ci, label %.preheader.i, label %arena_slab_reg_alloc_batch.exit

arena_slab_reg_alloc_batch.exit:                  ; preds = %._crit_edge47.i, %bb.d, %._crit_edge47.thread.i
  %i.cj = shl nuw nsw i64 %spec.select, 28
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !124
  %i.cl = sub i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.aa, align 8, !tbaa !124
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %arena_slab_reg_alloc_batch.exit
  %i.cm = load ptr, ptr %i.ae, align 8, !tbaa !103
  %i.cn = mul i64 %spec.select, %i.f
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cm, i8 0, i64 %i.cn, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %arena_slab_reg_alloc_batch.exit
  %i.co = add i64 %spec.select, %.05989           ; 3 uses
  %.not81 = icmp ult i64 %i.ac, %i.e              ; 2 uses
  %brmerge = select i1 %.not81, i1 true, i1 %i.i
  %.mux = select i1 %.not81, ptr %i.aa, ptr null
  br i1 %brmerge, label %edata_list_active_append.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 3 uses
  store ptr %i.aa, ptr %i.cp, align 8, !tbaa !120
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 4 uses
  store ptr %i.aa, ptr %i.cq, align 8, !tbaa !120
  %i.cr = icmp eq ptr %.sroa.0.087, null
  br i1 %i.cr, label %edata_list_active_append.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 48 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !120
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !120
  store ptr %i.aa, ptr %i.cs, align 8, !tbaa !120
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !120
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !120
  store ptr %i.cw, ptr %i.cq, align 8, !tbaa !120
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !120
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store ptr %.sroa.0.087, ptr %i.cy, align 8, !tbaa !120
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !120
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr %i.aa, ptr %i.da, align 8, !tbaa !120
  %.pre.i = load ptr, ptr %i.cp, align 8, !tbaa !120
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.1 = phi ptr [ %.sroa.0.087, %bb.f ], [ %.pre.i, %bb.h ], [ %i.aa, %bb.g ] ; 2 uses
  %.1 = phi ptr [ %.mux, %bb.f ], [ null, %bb.h ], [ null, %bb.g ]
  %i.db = icmp ult i64 %i.co, %4
  br i1 %i.db, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %edata_list_active_append.exit, %duckdb_je_arena_bin_choose.exit
  %.sroa.0.0.lcssa = phi ptr [ null, %duckdb_je_arena_bin_choose.exit ], [ %.sroa.0.1, %edata_list_active_append.exit ], [ %.sroa.0.087, %.lr.ph ] ; 4 uses
  %.060.lcssa = phi i64 [ 0, %duckdb_je_arena_bin_choose.exit ], [ %i.ab, %edata_list_active_append.exit ], [ %.06088, %.lr.ph ] ; 2 uses
  %.059.lcssa = phi i64 [ 0, %duckdb_je_arena_bin_choose.exit ], [ %i.co, %edata_list_active_append.exit ], [ %.05989, %.lr.ph ] ; 3 uses
  %.2 = phi ptr [ null, %duckdb_je_arena_bin_choose.exit ], [ %.1, %edata_list_active_append.exit ], [ null, %.lr.ph ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72 ; 2 uses
  %i.dd = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.dc) #18
  %.not.i68 = icmp eq i32 %i.dd, 0
  br i1 %.not.i68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i.i) #18
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store atomic i8 1, ptr %i.de monotonic, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !72
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.dj, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %i.di, align 8, !tbaa !74
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !75
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !75
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.j, %bb.k
  %.not66 = icmp eq ptr %.2, null
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %malloc_mutex_lock.exit
  tail call fastcc void @arena_bin_lower_slab(ptr noundef %1, ptr noundef nonnull %.2, ptr noundef nonnull %.0.i.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %malloc_mutex_lock.exit
  br i1 %i.i, label %edata_list_active_concat.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 248 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !127 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.sroa.0.0.lcssa, ptr %i.dn, align 8, !tbaa !127
  br label %edata_list_active_concat.exit

bb.p:                                             ; preds = %bb.n
  %i.dq = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %i.dq, label %edata_list_active_concat.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !120
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 48 ; 4 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !120
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !120
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !120 ; 2 uses
  %i.dx = load ptr, ptr %i.dn, align 8, !tbaa !127
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !120
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !120
  store ptr %i.ea, ptr %i.dt, align 8, !tbaa !120
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !127 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !120
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store ptr %i.eb, ptr %i.ee, align 8, !tbaa !120
  %i.ef = load ptr, ptr %i.dt, align 8, !tbaa !120
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
end_hunk_1
begin_hunk_2_@duckdb_je_arena_malloc_hard:bb.a
  %i.dc = add i64 %i.db, -268435456
  store i64 %i.dc, ptr %i.bp, align 8, !tbaa !124
  br label %bb.ab

bb.ab:                                            ; preds = %arena_bin_malloc_with_fresh_slab.exit.i, %malloc_mutex_lock.exit55.i, %malloc_mutex_lock.exit.i
  %.048.i = phi ptr [ null, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bp, %malloc_mutex_lock.exit55.i ], [ null, %malloc_mutex_lock.exit.i ] ; 2 uses
  %.0.i17 = phi ptr [ %i.da, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bx, %malloc_mutex_lock.exit55.i ], [ %i.bk, %malloc_mutex_lock.exit.i ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 112 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !125
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !125
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 128 ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.dg, align 8, !tbaa !10
  %i.di = add <2 x i64> %i.dh, splat (i64 1)
  store <2 x i64> %i.di, ptr %i.dg, align 8, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store atomic i8 0, ptr %i.dj monotonic, align 8
  %i.dk = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.az) #18 ; 0 uses
  %.not.i18 = icmp eq ptr %.048.i, null
  br i1 %.not.i18, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !118
  %i.dl = getelementptr inbounds nuw i8, ptr %.014202327, i64 10664
  call void @duckdb_je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.dl, ptr noundef nonnull %.048.i, ptr noundef nonnull %i.a) #18
  %i.dm = load i8, ptr %i.a, align 1, !tbaa !118, !range !113, !noundef !114
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ad, label %duckdb_je_arena_slab_dalloc.exit.i

bb.ad:                                            ; preds = %bb.ac
  call void @duckdb_je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %.014202327)
  br label %duckdb_je_arena_slab_dalloc.exit.i

duckdb_je_arena_slab_dalloc.exit.i:               ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ae

bb.ae:                                            ; preds = %duckdb_je_arena_slab_dalloc.exit.i, %bb.ab
  br i1 %4, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i17, i8 0, i64 %i.ao, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.b, label %arena_malloc_small.exit, label %bb.ah, !prof !121

bb.ah:                                            ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !120
  %i.ds = load i32, ptr %i.do, align 4, !tbaa !164 ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.do, align 4, !tbaa !164
  %i.du = icmp slt i32 %i.ds, 1
  br i1 %i.du, label %bb.ai, label %arena_malloc_small.exit, !prof !121

bb.ai:                                            ; preds = %bb.ah
  %i.dv = icmp sgt i8 %i.dr, 0
  br i1 %i.dv, label %ticker_geom_ticks.exit.i, label %bb.aj

ticker_geom_ticks.exit.i:                         ; preds = %bb.ai
  store i32 0, ptr %i.do, align 4, !tbaa !164
  br label %arena_malloc_small.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dw = load i64, ptr %i.dp, align 8, !tbaa !10
  %i.dx = mul i64 %i.dw, 6364136223846793005
  %i.dy = add i64 %i.dx, 1442695040888963407      ; 2 uses
  store i64 %i.dy, ptr %i.dp, align 8, !tbaa !10
  %i.dz = lshr i64 %i.dy, 58
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !166
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.dz
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !120
  %i.ef = zext i8 %i.ee to i64
  %i.eg = mul nsw i64 %i.ef, %i.ec
  %i.eh = udiv i64 %i.eg, 61
  %i.ei = trunc i64 %i.eh to i32
  store i32 %i.ei, ptr %i.do, align 8, !tbaa !164
  call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.014202327, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_malloc_small.exit

bb.ak:                                            ; preds = %.thread, %bb.n
  %.0142022 = phi ptr [ %.014.ph, %.thread ], [ %.014, %bb.n ]
  %i.ej = zext i32 %3 to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !10
  %i.em = tail call ptr @duckdb_je_large_malloc(ptr noundef %0, ptr noundef nonnull %.0142022, i64 noundef %i.el, i1 noundef zeroext %4) #18
  br label %arena_malloc_small.exit

arena_malloc_small.exit:                          ; preds = %bb.aj, %ticker_geom_ticks.exit.i, %bb.ah, %bb.ag, %bb.z, %arena_choose_maybe_huge.exit, %bb.ak
  %.0 = phi ptr [ %i.em, %bb.ak ], [ null, %arena_choose_maybe_huge.exit ], [ null, %bb.z ], [ %.0.i17, %ticker_geom_ticks.exit.i ], [ %.0.i17, %bb.aj ], [ %.0.i17, %bb.ag ], [ %.0.i17, %bb.ah ]
  ret ptr %.0
}

declare ptr @duckdb_je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  br i1 %5, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 4097
  br i1 %i.b, label %bb.c, label %bb.d, !prof !119

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %2, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !120
  %i.g = zext i8 %i.f to i32
  br label %sz_size2index.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.h, label %sz_size2index.exit, label %bb.e, !prof !121

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %2, 1
  %i.j = add i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.j, i1 true) ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %i.n = ashr exact i64 -1152921504606846976, %i.k
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %i.n, %i.o
  %i.q = lshr i64 %i.p, %i.m
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  %i.t = shl nuw nsw i32 %i.l, 2
  %reass.sub = sub nsw i32 %i.s, %i.t
  %i.u = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.c ], [ %i.u, %bb.e ], [ 232, %bb.d ] ; 5 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !121

bb.f:                                             ; preds = %sz_size2index.exit
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 9 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !90   ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !174 ; 2 uses
  %i.ae = trunc i64 %i.aa to i16
  %.not.i22 = icmp eq i16 %i.ad, %i.ae
  br i1 %.not.i22, label %bb.h, label %bb.g, !prof !121

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !90
  br label %cache_bin_alloc_impl.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !96
  %.not21.i = icmp eq i16 %i.ag, %i.ad
  br i1 %.not21.i, label %cache_bin_alloc_impl.exit, label %bb.i, !prof !121

bb.i:                                             ; preds = %bb.h
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !90
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ai, ptr %i.ac, align 8, !tbaa !174
  br label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit:                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.aj = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.j, !prof !121

bb.j:                                             ; preds = %cache_bin_alloc_impl.exit
  %.val = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.al = icmp eq ptr %.val, @duckdb_je_disabled_bin
  br i1 %i.al, label %bb.k, label %bb.l, !prof !121

bb.k:                                             ; preds = %bb.j
  %i.am = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.aj, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit, %bb.k
  %.0.i21.ph = phi ptr [ %i.am, %bb.k ], [ null, %cache_bin_alloc_impl.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %arena_malloc.exit

bb.l:                                             ; preds = %bb.j
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %i.x, i32 noundef %.0.i, i1 noundef zeroext true) #18
  %i.an = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.aj, ptr noundef nonnull %6, ptr noundef nonnull %i.x, i32 noundef %.0.i, ptr noundef nonnull %i.a) #18
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !118, !range !113, !noundef !114
  %7 = trunc nuw i8 %i.ao to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %7, label %cache_bin_alloc_impl.exit.thread, label %arena_malloc.exit

cache_bin_alloc_impl.exit.thread:                 ; preds = %bb.i, %bb.g, %bb.l
  %.132.i = phi ptr [ %i.an, %bb.l ], [ %i.z, %bb.g ], [ %i.z, %bb.i ] ; 2 uses
  br i1 %4, label %bb.m, label %bb.n, !prof !121

bb.m:                                             ; preds = %cache_bin_alloc_impl.exit.thread
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.w
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !10
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i, i8 0, i64 %i.aq, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %cache_bin_alloc_impl.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !161
  br label %arena_malloc.exit

.critedge.i:                                      ; preds = %sz_size2index.exit
  %i.au = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %arena_malloc.exit

bb.o:                                             ; preds = %bb.a
  %i.av = icmp ult i64 %3, 65
  br i1 %i.av, label %bb.p, label %bb.q, !prof !119

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call ptr @duckdb_je_large_malloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %4) #18
  br label %arena_malloc.exit

bb.q:                                             ; preds = %bb.o
  %i.ax = tail call ptr @duckdb_je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #18
  br label %arena_malloc.exit

arena_malloc.exit:                                ; preds = %.critedge.i, %.thread, %bb.l, %bb.n, %bb.q, %bb.p
  %.0 = phi ptr [ %i.ax, %bb.q ], [ %i.aw, %bb.p ], [ %i.au, %.critedge.i ], [ %.132.i, %bb.n ], [ null, %bb.l ], [ %.0.i21.ph, %.thread ]
  ret ptr %.0
}

declare ptr @duckdb_je_large_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_dalloc_bin_locked_handle_newly_empty(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = icmp eq ptr %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !135
  br label %arena_dissociate_bin_slab.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %2, align 8, !tbaa !124
  %i.d = lshr i64 %.val.i, 20
  %i.e = and i64 %i.d, 255
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !144
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 78952
  %.val10.i = load i32, ptr %i.j, align 8, !tbaa !115
  %i.k = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.l = icmp ult i32 %.val10.i, %i.k
  br i1 %i.l, label %arena_dissociate_bin_slab.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !127  ; 2 uses
  %i.o = icmp eq ptr %i.n, %2
  br i1 %i.o, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120  ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !127
  %i.r = icmp eq ptr %i.q, %2
  br i1 %i.r, label %bb.g, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !120
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !120  ; 2 uses
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !120
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !120
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !120
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !120
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %2, ptr %i.aj, align 8, !tbaa !120
  br label %arena_dissociate_bin_slab.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !127
  br label %arena_dissociate_bin_slab.exit

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 232
  tail call void @duckdb_je_edata_heap_remove(ptr noundef nonnull %i.ak, ptr noundef nonnull %2) #18
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !156
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !156
  br label %arena_dissociate_bin_slab.exit

arena_dissociate_bin_slab.exit:                   ; preds = %bb.b, %bb.d, %.thread.i.i.i, %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !137
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !137
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 78952
  %.val = load i32, ptr %i.a, align 8, !tbaa !115
  %i.b = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.c = icmp ult i32 %.val, %i.b
  br i1 %i.c, label %arena_bin_slabs_full_remove.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127  ; 2 uses
  %i.f = icmp eq ptr %i.e, %2
  br i1 %i.f, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !120  ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !127
  %i.i = icmp eq ptr %i.h, %2
  br i1 %i.i, label %bb.d, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.m, ptr %i.p, align 8, !tbaa !120
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !120  ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.q, ptr %i.s, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120
  store ptr %i.u, ptr %i.n, align 8, !tbaa !120
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !120  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !120
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !120
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %2, ptr %i.aa, align 8, !tbaa !120
  br label %arena_bin_slabs_full_remove.exit

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !127
  br label %arena_bin_slabs_full_remove.exit

arena_bin_slabs_full_remove.exit:                 ; preds = %bb.a, %.thread.i.i, %bb.d
  tail call fastcc void @arena_bin_lower_slab(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !prof !121

bb.b:                                             ; preds = %bb.a
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %2) #18
  br label %tsdn_rtree_ctx.exit
end_hunk_2
begin_hunk_3_@duckdb_je_arena_ralloc:bb.a
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !120
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit:                              ; preds = %bb.g
  %i.ag = shl nuw nsw i64 %i.x, 1
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ah, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ai
  %i.aj = lshr i64 1152921504606846975, %i.ai
  %i.ak = add nuw nsw i64 %i.x, %i.aj
  %i.al = and i64 %i.ak, %notmask.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit, %bb.h
  %.0.i24.i = phi i64 [ %i.af, %bb.h ], [ %i.al, %sz_s2u_compute.exit ] ; 2 uses
  %i.am = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.am, label %sz_s2u.exit, label %.thread87

bb.i:                                             ; preds = %bb.f
  %i.an = icmp ugt i64 %5, 8070450532247928832
  br i1 %i.an, label %arena_sdalloc.exit, label %bb.j, !prof !179

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i64 %4, 16385
  br i1 %i.ao, label %.thread87, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ugt i64 %4, 8070450532247928832
  br i1 %i.ap, label %sz_s2u_compute.exit65, label %bb.l, !prof !121

bb.l:                                             ; preds = %bb.k
  %i.aq = shl nuw i64 %4, 1
  %i.ar = add i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ar, i1 true) ; 2 uses
  %notmask.i63 = ashr exact i64 -1152921504606846976, %i.as
  %i.at = lshr i64 1152921504606846975, %i.as
  %i.au = add nuw nsw i64 %4, %i.at
  %i.av = and i64 %i.au, %notmask.i63
  br label %sz_s2u_compute.exit65

sz_s2u_compute.exit65:                            ; preds = %bb.k, %bb.l
  %.0.i64 = phi i64 [ %i.av, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.aw = icmp ult i64 %.0.i64, %4
  br i1 %i.aw, label %arena_sdalloc.exit, label %.thread87

.thread87:                                        ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit65, %bb.j
  %.0.i61 = phi i64 [ %.0.i64, %sz_s2u_compute.exit65 ], [ 16384, %bb.j ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ax = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !10
  %i.ay = add nuw nsw i64 %5, 4095
  %i.az = and i64 %i.ay, 9223372036854771712
  %i.ba = add nsw i64 %i.az, -4096
  %i.bb = add nuw i64 %i.ba, %.0.i61
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = icmp ult i64 %i.bc, %.0.i61
  %..0.i = select i1 %i.bd, i64 0, i64 %.0.i61
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %.thread87, %sz_s2u.exit25.i, %bb.c, %bb.e
  %i.be = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %..0.i, %.thread87 ] ; 24 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = icmp samesign ugt i64 %4, 8070450532247928832
  %i.bh = or i1 %i.bg, %i.bf
  br i1 %i.bh, label %arena_sdalloc.exit, label %bb.m, !prof !180

bb.m:                                             ; preds = %sz_s2u.exit
  br i1 %7, label %bb.n, label %bb.p, !prof !119

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.bi = call zeroext i1 @duckdb_je_arena_ralloc_no_move(ptr noundef %0, ptr noundef %2, i64 noundef %3, i64 noundef %i.be, i64 noundef 0, i1 noundef zeroext %6, ptr noundef nonnull %i.b)
  br i1 %i.bi, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i8, ptr %9, align 8, !tbaa !181, !range !113, !noundef !114
  %i.bk = xor i8 %i.bj, 1
  %not. = zext nneg i8 %i.bk to i32
  %i.bl = ptrtoint ptr %2 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  tail call void @duckdb_je_hook_invoke_expand(i32 noundef %not., ptr noundef %2, i64 noundef %3, i64 noundef %i.be, i64 noundef %i.bl, ptr noundef nonnull %i.bm) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %arena_sdalloc.exit

.critedge:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.m
  %i.bn = icmp ugt i64 %3, 16383
  %i.bo = icmp ugt i64 %i.be, 16383
  %or.cond = and i1 %i.bn, %i.bo
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = tail call ptr @duckdb_je_large_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.be, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %8, ptr noundef %9) #18
  br label %arena_sdalloc.exit

bb.r:                                             ; preds = %bb.p
  br i1 %i.c, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp ult i64 %i.be, 4097                ; 2 uses
  br i1 %i.bq, label %bb.t, label %bb.u, !prof !119

bb.t:                                             ; preds = %bb.s
  %i.br = add nuw nsw i64 %i.be, 7
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !120
  %i.bv = zext i8 %i.bu to i32
  br label %sz_size2index.exit.i84

bb.u:                                             ; preds = %bb.s
  %i.bw = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.bw, label %sz_size2index.exit.i84, label %bb.v, !prof !121

bb.v:                                             ; preds = %bb.u
  %i.bx = shl nuw i64 %i.be, 1
  %i.by = add i64 %i.bx, -1
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.by, i1 true) ; 3 uses
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = sub nuw nsw i64 60, %i.bz
  %i.cc = ashr exact i64 -1152921504606846976, %i.bz
  %i.cd = add nsw i64 %i.be, -1
  %i.ce = and i64 %i.cc, %i.cd
  %i.cf = lshr i64 %i.ce, %i.cb
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 3
  %i.ci = shl nuw nsw i32 %i.ca, 2
  %reass.sub = sub nsw i32 %i.ch, %i.ci
  %i.cj = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i84

sz_size2index.exit.i84:                           ; preds = %bb.v, %bb.u, %bb.t
  %.0.i.i = phi i32 [ %i.bv, %bb.t ], [ %i.cj, %bb.v ], [ 232, %bb.u ] ; 8 uses
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.w, !prof !121

bb.w:                                             ; preds = %sz_size2index.exit.i84
  br i1 %7, label %bb.x, label %bb.ag, !prof !119

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cl = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.cl ; 9 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !90 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !103 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !174 ; 2 uses
  %i.ct = trunc i64 %i.cp to i16
  %.not.i25.i = icmp eq i16 %i.cs, %i.ct
  br i1 %.not.i25.i, label %bb.z, label %bb.y, !prof !121

bb.y:                                             ; preds = %bb.x
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !90
  br label %cache_bin_alloc_impl.exit.thread.i

bb.z:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !96
  %.not21.i.i = icmp eq i16 %i.cv, %i.cs
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.aa, !prof !121

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !90
  %i.cw = ptrtoint ptr %i.cq to i64
  %i.cx = trunc i64 %i.cw to i16
  store i16 %i.cx, ptr %i.cr, align 8, !tbaa !174
  br label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cy = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.thread.i, label %bb.ab, !prof !121

bb.ab:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val.i = load ptr, ptr %i.cm, align 8, !tbaa !90
  %i.da = icmp eq ptr %.val.i, @duckdb_je_disabled_bin
  br i1 %i.da, label %bb.ac, label %bb.ad, !prof !121

bb.ac:                                            ; preds = %bb.ab
  %i.db = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.cy, i64 noundef range(i64 1, 0) %i.be, i32 noundef %.0.i.i, i1 noundef zeroext %6, i1 noundef zeroext true)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %cache_bin_alloc_impl.exit.i
  %.0.i23.ph.i = phi ptr [ %i.db, %bb.ac ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %arena_ralloc_move_helper.exit

bb.ad:                                            ; preds = %bb.ab
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.cm, i32 noundef %.0.i.i, i1 noundef zeroext true) #18
  %i.dc = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.cy, ptr noundef nonnull %8, ptr noundef nonnull %i.cm, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #18
  %i.dd = load i8, ptr %i.a, align 1, !tbaa !118, !range !113, !noundef !114
  %12 = trunc nuw i8 %i.dd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %12, label %cache_bin_alloc_impl.exit.thread.i, label %arena_sdalloc.exit

cache_bin_alloc_impl.exit.thread.i:               ; preds = %bb.ad, %bb.aa, %bb.y
  %.132.i.i = phi ptr [ %i.dc, %bb.ad ], [ %i.co, %bb.y ], [ %i.co, %bb.aa ] ; 2 uses
  br i1 %6, label %bb.ae, label %bb.af, !prof !121

bb.ae:                                            ; preds = %cache_bin_alloc_impl.exit.thread.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.cl
  %i.df = load i64, ptr %i.de, align 8, !tbaa !10
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.df, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %cache_bin_alloc_impl.exit.thread.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !161
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !161
  br label %arena_ralloc_move_helper.exit

bb.ag:                                            ; preds = %bb.w
  %i.dj = load ptr, ptr %8, align 8, !tbaa !183
  %i.dk = getelementptr i8, ptr %i.dj, i64 48
  %.val44.i = load i32, ptr %i.dk, align 8, !tbaa !185
  %i.dl = icmp ult i32 %.0.i.i, %.val44.i
  br i1 %i.dl, label %bb.ah, label %.critedge.i.i, !prof !119

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dn = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dn ; 7 uses
  %.val39.i = load ptr, ptr %i.do, align 8, !tbaa !90 ; 4 uses
  %.not.i = icmp eq ptr %.val39.i, @duckdb_je_disabled_bin
  br i1 %.not.i, label %.critedge.i.i, label %bb.ai, !prof !121

bb.ai:                                            ; preds = %bb.ah
  %i.dp = load ptr, ptr %.val39.i, align 8, !tbaa !103 ; 2 uses
  %i.dq = ptrtoint ptr %.val39.i to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %.val39.i, i64 8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !174 ; 2 uses
  %i.du = trunc i64 %i.dq to i16
  %.not.i27.i = icmp eq i16 %i.dt, %i.du
  br i1 %.not.i27.i, label %bb.ak, label %bb.aj, !prof !121

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.dr, ptr %i.do, align 8, !tbaa !90
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.dw = load i16, ptr %i.dv, align 4, !tbaa !96
  %.not21.i29.i = icmp eq i16 %i.dw, %i.dt
  br i1 %.not21.i29.i, label %cache_bin_alloc_impl.exit30.i, label %bb.al, !prof !121

bb.al:                                            ; preds = %bb.ak
  store ptr %i.dr, ptr %i.do, align 8, !tbaa !90
  %i.dx = ptrtoint ptr %i.dr to i64
  %i.dy = trunc i64 %i.dx to i16
  store i16 %i.dy, ptr %i.ds, align 8, !tbaa !174
  br label %bb.aq

cache_bin_alloc_impl.exit30.i:                    ; preds = %bb.ak
  %i.dz = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %arena_sdalloc.exit, label %bb.am, !prof !121

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit30.i
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.do, i32 noundef %.0.i.i, i1 noundef zeroext false) #18
  br i1 %i.bq, label %bb.an, label %bb.ao, !prof !119

bb.an:                                            ; preds = %bb.am
  %i.eb = add nuw nsw i64 %i.be, 7
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !120
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !10
  br label %sz_s2u.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ei = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.ei, label %sz_s2u.exit.i.i, label %bb.ap, !prof !121

bb.ap:                                            ; preds = %bb.ao
  %i.ej = shl nuw i64 %i.be, 1
  %i.ek = add i64 %i.ej, -1
  %i.el = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ek, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.el
  %i.em = lshr i64 1152921504606846975, %i.el
  %i.en = add nuw nsw i64 %i.em, %i.be
  %i.eo = and i64 %i.en, %notmask.i.i
  br label %sz_s2u.exit.i.i

sz_s2u.exit.i.i:                                  ; preds = %bb.ap, %bb.ao, %bb.an
  %.0.i.i.i = phi i64 [ %i.eh, %bb.an ], [ %i.eo, %bb.ap ], [ 0, %bb.ao ]
  %i.ep = tail call ptr @duckdb_je_large_malloc(ptr noundef %0, ptr noundef nonnull %i.dz, i64 noundef %.0.i.i.i, i1 noundef zeroext %6) #18
  br label %arena_ralloc_move_helper.exit

bb.aq:                                            ; preds = %bb.al, %bb.aj
  br i1 %6, label %bb.ar, label %bb.as, !prof !121

bb.ar:                                            ; preds = %bb.aq
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.dn
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dp, i8 0, i64 %i.er, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !161
  %i.eu = add i64 %i.et, 1
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !161
  br label %arena_ralloc_move_helper.exit

.critedge.i.i:                                    ; preds = %bb.ah, %bb.ag, %sz_size2index.exit.i84
  %i.ev = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %i.be, i32 noundef %.0.i.i, i1 noundef zeroext %6, i1 noundef zeroext %7)
  br label %arena_ralloc_move_helper.exit

bb.at:                                            ; preds = %bb.r
  %i.ew = icmp ult i64 %i.be, 14337
  %i.ex = icmp samesign ult i64 %5, 4097
  %or.cond.i.i = and i1 %i.ex, %i.ew
  br i1 %or.cond.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ey = add nsw i64 %5, -1
  %i.ez = add nuw nsw i64 %i.ey, %i.be
  %i.fa = sub nsw i64 0, %5
  %i.fb = and i64 %i.ez, %i.fa                    ; 4 uses
  %i.fc = icmp samesign ult i64 %i.fb, 4097
  br i1 %i.fc, label %bb.av, label %sz_s2u_compute.exit34.i, !prof !119

bb.av:                                            ; preds = %bb.au
  %i.fd = add nuw nsw i64 %i.fb, 7
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !120
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !10
  br label %sz_s2u.exit25.i.i

sz_s2u_compute.exit34.i:                          ; preds = %bb.au
  %i.fk = shl nuw nsw i64 %i.fb, 1
  %i.fl = add nsw i64 %i.fk, -1
  %i.fm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.fl, i1 true) ; 2 uses
  %notmask.i32.i = ashr exact i64 -1152921504606846976, %i.fm
  %i.fn = lshr i64 1152921504606846975, %i.fm
  %i.fo = add nuw nsw i64 %i.fn, %i.fb
  %i.fp = and i64 %i.fo, %notmask.i32.i
  br label %sz_s2u.exit25.i.i

sz_s2u.exit25.i.i:                                ; preds = %sz_s2u_compute.exit34.i, %bb.av
  %.0.i24.i.i = phi i64 [ %i.fj, %bb.av ], [ %i.fp, %sz_s2u_compute.exit34.i ] ; 2 uses
  %i.fq = icmp ult i64 %.0.i24.i.i, 16384
  br i1 %i.fq, label %sz_sa2u.exit.i, label %.thread58.i

bb.aw:                                            ; preds = %bb.at
  %i.fr = icmp ult i64 %i.be, 16385
  br i1 %i.fr, label %.thread58.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fs = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.fs, label %arena_sdalloc.exit, label %sz_s2u_compute.exit37.i, !prof !121

sz_s2u_compute.exit37.i:                          ; preds = %bb.ax
  %i.ft = shl nuw i64 %i.be, 1
  %i.fu = add i64 %i.ft, -1
  %i.fv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.fu, i1 true) ; 2 uses
  %notmask.i35.i = ashr exact i64 -1152921504606846976, %i.fv
  %i.fw = lshr i64 1152921504606846975, %i.fv
  %i.fx = add nuw nsw i64 %i.fw, %i.be
  %i.fy = and i64 %i.fx, %notmask.i35.i           ; 2 uses
  %i.fz = icmp samesign ult i64 %i.fy, %i.be
  br i1 %i.fz, label %arena_sdalloc.exit, label %.thread58.i

.thread58.i:                                      ; preds = %sz_s2u_compute.exit37.i, %bb.aw, %sz_s2u.exit25.i.i
  %.0.i22.i82 = phi i64 [ %i.fy, %sz_s2u_compute.exit37.i ], [ 16384, %bb.aw ], [ 16384, %sz_s2u.exit25.i.i ] ; 3 uses
  %i.ga = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !10
  %i.gb = add nuw nsw i64 %5, 4095
  %i.gc = and i64 %i.gb, 9223372036854771712
  %i.gd = add nsw i64 %i.gc, -4096
  %i.ge = add nuw i64 %i.gd, %.0.i22.i82
  %i.gf = add i64 %i.ge, %i.ga
  %i.gg = icmp ult i64 %i.gf, %.0.i22.i82
  %..0.i.i = select i1 %i.gg, i64 0, i64 %.0.i22.i82
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread58.i, %sz_s2u.exit25.i.i
  %.018.i.i = phi i64 [ %..0.i.i, %.thread58.i ], [ %.0.i24.i.i, %sz_s2u.exit25.i.i ] ; 2 uses
  %i.gh = add nsw i64 %.018.i.i, -8070450532247928833
  %i.gi = icmp ult i64 %i.gh, -8070450532247928832
  br i1 %i.gi, label %arena_sdalloc.exit, label %ipallocztm_explicit_slab.exit.i, !prof !180

ipallocztm_explicit_slab.exit.i:                  ; preds = %sz_sa2u.exit.i
  %i.gj = tail call ptr @duckdb_je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 8070450532247928833) %.018.i.i, i64 noundef range(i64 1, 0) %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef %8)
  br label %arena_ralloc_move_helper.exit

arena_ralloc_move_helper.exit:                    ; preds = %.thread.i, %bb.af, %sz_s2u.exit.i.i, %bb.as, %.critedge.i.i, %ipallocztm_explicit_slab.exit.i
  %.0.i83 = phi ptr [ %i.ep, %sz_s2u.exit.i.i ], [ %i.gj, %ipallocztm_explicit_slab.exit.i ], [ %i.ev, %.critedge.i.i ], [ %.0.i23.ph.i, %.thread.i ], [ %.132.i.i, %bb.af ], [ %i.dp, %bb.as ] ; 13 uses
end_hunk_3
