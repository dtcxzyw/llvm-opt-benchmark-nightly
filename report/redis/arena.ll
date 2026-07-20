inline.NumInlined: 316
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_base_delete
declare void @je_base_delete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @je_arena_bin_choose(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !131
  %i.i = zext i8 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.0, ptr %3, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %2 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = zext i32 %i.m to i64
  %i.o = add i64 %i.n, %i.j
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = zext nneg i32 %.0 to i64
  %i.r = getelementptr inbounds nuw [224 x i8], ptr %i.p, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_cache_bin_fill_small(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = zext i32 %4 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.b ; 2 uses
  %i.d = trunc i32 %5 to i16
  %.val = load ptr, ptr %2, align 8, !tbaa !85
  %i.e = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val80 = load i16, ptr %i.e, align 4, !tbaa !90
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = trunc i64 %i.f to i16
  %i.h = sub i16 %.val80, %i.g
  %i.i = zext i16 %i.h to i64
  %i.j = add i64 %i.i, %i.f
  %i.k = inttoptr i64 %i.j to ptr
  %.mask = and i32 %5, 65535
  %i.l = zext nneg i32 %.mask to i64
  %i.m = sub nsw i64 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  %i.o = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.o, label %je_arena_bin_choose.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %je_arena_bin_choose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.b
  %i.u = load i8, ptr %i.t, align 1, !tbaa !131
  %i.v = zext i8 %i.u to i32
  br label %je_arena_bin_choose.exit

je_arena_bin_choose.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.w = ptrtoint ptr %1 to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.b
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = zext i32 %i.y to i64
  %i.aa = add i64 %i.z, %i.w
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = zext nneg i32 %.0.i to i64
  %i.ad = getelementptr inbounds nuw [224 x i8], ptr %i.ab, i64 %i.ac ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 104 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 4 uses
  %i.ak = getelementptr i8, ptr %1, i64 78928
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 216 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 168 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 160 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 176 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %je_arena_bin_choose.exit
  %.071 = phi i32 [ 0, %je_arena_bin_choose.exit ], [ %.172103, %.critedge ] ; 3 uses
  %.064 = phi ptr [ null, %je_arena_bin_choose.exit ], [ %i.fi, %.critedge ] ; 2 uses
  %.063 = phi i1 [ true, %je_arena_bin_choose.exit ], [ false, %.critedge ]
  %i.ar = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ae) #16
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ad) #16
  store atomic i8 1, ptr %i.af monotonic, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ag, align 8, !tbaa !74
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.au, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.ah, align 8, !tbaa !76
  %i.av = load i64, ptr %i.ai, align 8, !tbaa !77
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.ai, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.g
  %i.ax = icmp ult i32 %.071, %5
  br i1 %i.ax, label %.lr.ph, label %.thread90.thread

.lr.ph:                                           ; preds = %malloc_mutex_lock.exit, %bb.n
  %.1105 = phi i1 [ %.2, %bb.n ], [ %.063, %malloc_mutex_lock.exit ] ; 3 uses
  %.165104 = phi ptr [ %.266, %bb.n ], [ %.064, %malloc_mutex_lock.exit ] ; 4 uses
  %.172103 = phi i32 [ %.273, %bb.n ], [ %.071, %malloc_mutex_lock.exit ] ; 7 uses
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !146 ; 12 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %arena_bin_slabs_full_insert.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.val82 = load i64, ptr %i.ay, align 8, !tbaa !135 ; 2 uses
  %i.az = lshr i64 %.val82, 28
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 1023                     ; 2 uses
  %.not77 = icmp eq i32 %i.bb, 0
  br i1 %.not77, label %bb.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.bc = sub i32 %5, %.172103
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.bb) ; 5 uses
  %i.be = zext i32 %.172103 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 4 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !14
  %i.bi = getelementptr i8, ptr %i.ay, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge47.i, %.preheader.lr.ph.i
  %.052.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge47.i ] ; 2 uses
  %.02751.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.lcssa149, %._crit_edge47.i ] ; 5 uses
  %.03750.i = phi i64 [ %i.bh, %.preheader.lr.ph.i ], [ %.lcssa150, %._crit_edge47.i ] ; 2 uses
  %i.bj = icmp eq i64 %.03750.i, 0
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.139.i = phi i32 [ %i.bk, %.lr.ph.i ], [ %.052.i, %.preheader.i ]
  %i.bk = add i32 %.139.i, 1                      ; 3 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.138.lcssa.i = phi i64 [ %.03750.i, %.preheader.i ], [ %i.bn, %.lr.ph.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.052.i, %.preheader.i ], [ %i.bk, %.lr.ph.i ] ; 4 uses
  %i.bp = shl i32 %.1.lcssa.i, 6
  %i.bq = zext i32 %i.bp to i64                   ; 3 uses
  %.val.i = load ptr, ptr %i.bi, align 8, !tbaa !133
  %i.br = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !163 ; 3 uses
  %.not41.i = icmp eq i32 %i.bd, %.02751.i
  br i1 %.not41.i, label %._crit_edge47.thread.i, label %.lr.ph46.preheader.i

._crit_edge47.thread.i:                           ; preds = %._crit_edge.i
  %i.bt = zext i32 %.1.lcssa.i to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bt
  store i64 %.138.lcssa.i, ptr %i.bu, align 8, !tbaa !14
  br label %arena_slab_reg_alloc_batch.exit

.lr.ph46.preheader.i:                             ; preds = %._crit_edge.i
  %i.bv = sub i32 %i.bd, %.02751.i
  %i.bw = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %.138.lcssa.i)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 %i.bx) ; 3 uses
  %.029.i = zext nneg i32 %spec.select.i to i64   ; 2 uses
  %lcmp.mod.not = trunc i32 %spec.select.i to i1
  br i1 %lcmp.mod.not, label %.lr.ph46.i.prol, label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.preheader.i
  %i.by = add nsw i64 %.029.i, -1
  %i.bz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.138.lcssa.i, i1 true) ; 2 uses
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = xor i64 %i.ca, %.138.lcssa.i            ; 2 uses
  %i.cc = or disjoint i64 %i.bz, %i.bq
  %i.cd = mul i64 %i.cc, %i.bs
  %i.ce = add i64 %i.cd, %i.br
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = zext i32 %.02751.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !116
  %i.ci = add i32 %.02751.i, 1                    ; 2 uses
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.preheader.i
  %.lcssa150.unr = phi i64 [ poison, %.lr.ph46.preheader.i ], [ %i.cb, %.lr.ph46.i.prol ]
  %.lcssa149.unr = phi i32 [ poison, %.lr.ph46.preheader.i ], [ %i.ci, %.lr.ph46.i.prol ]
  %.12844.i.unr = phi i32 [ %.02751.i, %.lr.ph46.preheader.i ], [ %i.ci, %.lr.ph46.i.prol ]
  %.13043.i.unr = phi i64 [ %.029.i, %.lr.ph46.preheader.i ], [ %i.by, %.lr.ph46.i.prol ]
  %.242.i.unr = phi i64 [ %.138.lcssa.i, %.lr.ph46.preheader.i ], [ %i.cb, %.lr.ph46.i.prol ]
  %i.cj = icmp eq i32 %spec.select.i, 1
  br i1 %i.cj, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.12844.i = phi i32 [ %i.dg, %.lr.ph46.i ], [ %.12844.i.unr, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.13043.i = phi i64 [ %i.cv, %.lr.ph46.i ], [ %.13043.i.unr, %.lr.ph46.i.prol.loopexit ]
  %.242.i = phi i64 [ %i.cz, %.lr.ph46.i ], [ %.242.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %i.ck = icmp ne i64 %.242.i, 0
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.242.i, i1 true) ; 2 uses
  %i.cm = shl nuw i64 1, %i.cl                    ; 2 uses
  %i.cn = xor i64 %i.cm, %.242.i                  ; 2 uses
  %i.co = or disjoint i64 %i.cl, %i.bq
  %i.cp = mul i64 %i.co, %i.bs
  %i.cq = add i64 %i.cp, %i.br
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = zext i32 %.12844.i to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !116
  %i.cu = add i32 %.12844.i, 1
  %i.cv = add nsw i64 %.13043.i, -2               ; 2 uses
  %i.cw = icmp ne i64 %i.cm, %.242.i
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cn, i1 true) ; 2 uses
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = xor i64 %i.cy, %i.cn                    ; 2 uses
  %i.da = or disjoint i64 %i.cx, %i.bq
  %i.db = mul i64 %i.da, %i.bs
  %i.dc = add i64 %i.db, %i.br
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = zext i32 %i.cu to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !116
  %i.dg = add i32 %.12844.i, 2                    ; 2 uses
  %.not.i84.1 = icmp eq i64 %i.cv, 0
  br i1 %.not.i84.1, label %._crit_edge47.i, label %.lr.ph46.i, !llvm.loop !164

._crit_edge47.i:                                  ; preds = %.lr.ph46.i, %.lr.ph46.i.prol.loopexit
  %.lcssa150 = phi i64 [ %.lcssa150.unr, %.lr.ph46.i.prol.loopexit ], [ %i.cz, %.lr.ph46.i ] ; 2 uses
  %.lcssa149 = phi i32 [ %.lcssa149.unr, %.lr.ph46.i.prol.loopexit ], [ %i.dg, %.lr.ph46.i ] ; 2 uses
  %i.dh = zext i32 %.1.lcssa.i to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.dh
  store i64 %.lcssa150, ptr %i.di, align 8, !tbaa !14
  %i.dj = icmp ult i32 %.lcssa149, %i.bd
  br i1 %i.dj, label %.preheader.i, label %arena_slab_reg_alloc_batch.exit, !llvm.loop !165

arena_slab_reg_alloc_batch.exit:                  ; preds = %._crit_edge47.i, %._crit_edge47.thread.i
  %i.dk = zext nneg i32 %i.bd to i64
  %i.dl = shl nuw nsw i64 %i.dk, 28
  %i.dm = sub i64 %.val82, %i.dl
  store i64 %i.dm, ptr %i.ay, align 8, !tbaa !135
  %i.dn = add i32 %i.bd, %.172103
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %.val.i86 = load i32, ptr %i.ak, align 8, !tbaa !126
  %i.do = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.dp = icmp ult i32 %.val.i86, %i.do
  br i1 %i.dp, label %arena_bin_slabs_full_insert.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 3 uses
  store ptr %i.ay, ptr %i.dq, align 8, !tbaa !131
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 4 uses
  store ptr %i.ay, ptr %i.dr, align 8, !tbaa !131
  %i.ds = load ptr, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %edata_list_active_append.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !131
  store ptr %i.dv, ptr %i.dq, align 8, !tbaa !131
  %i.dw = load ptr, ptr %i.al, align 8, !tbaa !136
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store ptr %i.ay, ptr %i.dx, align 8, !tbaa !131
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !131
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !131
  store ptr %i.ea, ptr %i.dr, align 8, !tbaa !131
  %i.eb = load ptr, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !131
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store ptr %i.eb, ptr %i.ee, align 8, !tbaa !131
  %i.ef = load ptr, ptr %i.dr, align 8, !tbaa !131
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store ptr %i.ay, ptr %i.eg, align 8, !tbaa !131
  %.pre.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !131
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.k, %bb.j
  %i.eh = phi ptr [ %.pre.i.i.i, %bb.k ], [ %i.ay, %bb.j ]
  store ptr %i.eh, ptr %i.al, align 8, !tbaa !136
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %.lr.ph, %edata_list_active_append.exit.i.i, %bb.i
  %i.ei = tail call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.am) #16 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.l, label %arena_bin_refill_slabcur_no_fresh_slab.exit

arena_bin_refill_slabcur_no_fresh_slab.exit:      ; preds = %arena_bin_slabs_full_insert.exit.i
  %i.ek = load i64, ptr %i.an, align 8, !tbaa !166
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.an, align 8, !tbaa !166
  %i.em = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.en = add i64 %i.em, -1
  store i64 %i.en, ptr %i.ao, align 8, !tbaa !167
  store ptr %i.ei, ptr %i.aj, align 8, !tbaa !146
  br label %bb.n, !llvm.loop !168

bb.l:                                             ; preds = %arena_bin_slabs_full_insert.exit.i
  store ptr null, ptr %i.aj, align 8, !tbaa !146
  %.not78 = icmp eq ptr %.165104, null
  br i1 %.not78, label %.thread90, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eo = load i64, ptr %i.ap, align 8, !tbaa !169
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.ap, align 8, !tbaa !169
  %i.eq = load i64, ptr %i.aq, align 8, !tbaa !152
  %i.er = add i64 %i.eq, 1
  store i64 %i.er, ptr %i.aq, align 8, !tbaa !152
  store ptr %.165104, ptr %i.aj, align 8, !tbaa !146
  br label %bb.n, !llvm.loop !168

bb.n:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit, %bb.m, %arena_slab_reg_alloc_batch.exit
  %.273 = phi i32 [ %i.dn, %arena_slab_reg_alloc_batch.exit ], [ %.172103, %bb.m ], [ %.172103, %arena_bin_refill_slabcur_no_fresh_slab.exit ] ; 3 uses
  %.266 = phi ptr [ %.165104, %arena_slab_reg_alloc_batch.exit ], [ null, %bb.m ], [ %.165104, %arena_bin_refill_slabcur_no_fresh_slab.exit ] ; 2 uses
  %.2 = phi i1 [ true, %arena_slab_reg_alloc_batch.exit ], [ %.1105, %bb.m ], [ %.1105, %arena_bin_refill_slabcur_no_fresh_slab.exit ]
  %i.es = icmp ult i32 %.273, %5
  br i1 %i.es, label %.lr.ph, label %.thread90.thread

.thread90:                                        ; preds = %bb.l
  br i1 %.1105, label %.critedge, label %.thread90.thread

.thread90.thread:                                 ; preds = %malloc_mutex_lock.exit, %.thread90, %bb.n
  %.3130 = phi ptr [ %.266, %bb.n ], [ %.064, %malloc_mutex_lock.exit ], [ null, %.thread90 ] ; 2 uses
  %.172.lcssa129 = phi i32 [ %.273, %bb.n ], [ %.071, %malloc_mutex_lock.exit ], [ %.172103, %.thread90 ] ; 3 uses
  %i.et = zext i32 %.172.lcssa129 to i64          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ad, i64 112 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !170
  %i.ew = add i64 %i.ev, %i.et
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !170
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !171
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ad, i64 128 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !172
  %i.fb = add i64 %i.fa, %i.ey
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !172
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ad, i64 136 ; 2 uses
  %i.fd = load <2 x i64>, ptr %i.fc, align 8, !tbaa !14
  %i.fe = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.et, i64 0
  %i.ff = add <2 x i64> %i.fd, %i.fe
  store <2 x i64> %i.ff, ptr %i.fc, align 8, !tbaa !14
  store i64 0, ptr %i.ex, align 8, !tbaa !171
  store atomic i8 0, ptr %i.af monotonic, align 8
  %i.fg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ae) #16 ; 0 uses
  %.not79 = icmp eq ptr %.3130, null
  br i1 %.not79, label %bb.q, label %bb.o

.critedge:                                        ; preds = %.thread90
  store atomic i8 0, ptr %i.af monotonic, align 8
  %i.fh = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ae) #16 ; 0 uses
  %i.fi = tail call fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef %.0.i, ptr noundef nonnull %i.c)
  br label %bb.d

bb.o:                                             ; preds = %.thread90.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !tbaa !129
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 10648
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.fj, ptr noundef nonnull %.3130, ptr noundef nonnull %i.a) #16
  %i.fk = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.p, label %je_arena_slab_dalloc.exit

bb.p:                                             ; preds = %bb.o
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %1)
end_hunk_0
begin_hunk_1_@je_arena_cache_bin_fill_small:bb.a
  %i.gd = icmp slt i32 %i.gb, 1
  br i1 %i.gd, label %bb.t, label %arena_decay_ticks.exit, !prof !132

bb.t:                                             ; preds = %bb.s
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !14
  %i.gg = mul i64 %i.gf, 6364136223846793005
  %i.gh = add i64 %i.gg, 1442695040888963407      ; 2 uses
  store i64 %i.gh, ptr %i.ge, align 8, !tbaa !14
  %i.gi = lshr i64 %i.gh, 58
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !175
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.gi
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !131
  %i.go = zext i8 %i.gn to i64
  %i.gp = mul nsw i64 %i.go, %i.gl
  %i.gq = udiv i64 %i.gp, 61
  %i.gr = trunc i64 %i.gq to i32
  store i32 %i.gr, ptr %i.ga, align 8, !tbaa !173
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.s, %cache_bin_finish_fill.exit, %bb.t
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 78936
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call ptr @je_base_ehooks_get(ptr noundef %i.c) #16
  %i.e = load i64, ptr @je_opt_san_guard_small, align 8, !tbaa !14
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %san_slab_extent_decide_guard.exit, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.g = icmp eq ptr %0, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %i.j = icmp ne ptr %i.i, @je_ehooks_default_extent_hooks
  %or.cond.i = or i1 %i.g, %i.j
  br i1 %or.cond.i, label %san_slab_extent_decide_guard.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = icmp eq i64 %i.l, 1                      ; 2 uses
  %i.n = load i64, ptr @je_opt_san_guard_small, align 8
  %i.o = add i64 %i.l, -1
  %.sink.i = select i1 %i.m, i64 %i.n, i64 %i.o
  store i64 %.sink.i, ptr %i.k, align 8, !tbaa !14
  br label %san_slab_extent_decide_guard.exit

san_slab_extent_decide_guard.exit:                ; preds = %tsdn_witness_tsdp_get.exit, %bb.a, %.sink.split.i
  %.1.i = phi i1 [ false, %tsdn_witness_tsdp_get.exit ], [ false, %bb.a ], [ %i.m, %.sink.split.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 10648
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !176
  %i.s = call ptr @je_pa_alloc(ptr noundef %0, ptr noundef nonnull %i.p, i64 noundef %i.r, i64 noundef 4096, i1 noundef zeroext true, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext %.1.i, ptr noundef nonnull %i.a) #16 ; 5 uses
  %i.t = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %san_slab_extent_decide_guard.exit
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %san_slab_extent_decide_guard.exit
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !177
  %i.z = load i64, ptr %i.s, align 8, !tbaa !135
  %i.aa = and i64 %i.z, -17591917608961
  %i.ab = zext i32 %3 to i64
  %i.ac = shl i64 %i.ab, 38
  %i.ad = zext i32 %i.y to i64
  %i.ae = shl nuw nsw i64 %i.ad, 28
  %i.af = or i64 %i.ae, %i.ac
  %i.ag = or i64 %i.af, %i.aa
  store i64 %i.ag, ptr %i.s, align 8, !tbaa !135
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @je_bitmap_init(ptr noundef nonnull %i.w, ptr noundef nonnull %i.ah, i1 noundef zeroext false) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.s
}

; Function Attrs: nounwind uwtable
define hidden i64 @je_arena_fill_small_fresh(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.a ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !177
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !163
  %i.g = getelementptr i8, ptr %1, i64 78928
  %.val = load i32, ptr %i.g, align 8, !tbaa !126
  %i.h = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.i = icmp ult i32 %.val, %i.h                 ; 2 uses
  %i.j = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.j, label %je_arena_bin_choose.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !160
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %je_arena_bin_choose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.a
  %i.p = load i8, ptr %i.o, align 1, !tbaa !131
  %i.q = zext i8 %i.p to i32
  br label %je_arena_bin_choose.exit

je_arena_bin_choose.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.r = ptrtoint ptr %1 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.a
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = zext i32 %i.t to i64
  %i.v = add i64 %i.u, %i.r
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext nneg i32 %.0.i to i64
  %i.y = getelementptr inbounds nuw [224 x i8], ptr %i.w, i64 %i.x ; 13 uses
  %.not92 = icmp eq i64 %4, 0
  br i1 %.not92, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %je_arena_bin_choose.exit, %edata_list_active_append.exit
  %.05983 = phi i64 [ %i.cn, %edata_list_active_append.exit ], [ 0, %je_arena_bin_choose.exit ] ; 4 uses
  %.06082 = phi i64 [ %i.aa, %edata_list_active_append.exit ], [ 0, %je_arena_bin_choose.exit ] ; 2 uses
  %.sroa.0.081 = phi ptr [ %.sroa.0.1, %edata_list_active_append.exit ], [ null, %je_arena_bin_choose.exit ] ; 5 uses
  %i.z = tail call fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %.0.i, ptr noundef nonnull %i.b) ; 13 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aa = add i64 %.06082, 1                      ; 2 uses
  %i.ab = sub i64 %4, %.05983                     ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.e) ; 5 uses
  %i.ac = trunc nuw i64 %spec.select to i32       ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05983 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 4 uses
  %.not54.i = icmp eq i64 %spec.select, 0
  br i1 %.not54.i, label %arena_slab_reg_alloc_batch.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ag = getelementptr i8, ptr %i.z, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge47.i, %.preheader.lr.ph.i
  %.052.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge47.i ] ; 2 uses
  %.02751.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.lcssa119, %._crit_edge47.i ] ; 5 uses
  %.03750.i = phi i64 [ %i.af, %.preheader.lr.ph.i ], [ %.lcssa120, %._crit_edge47.i ] ; 2 uses
  %i.ah = icmp eq i64 %.03750.i, 0
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.139.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %.052.i, %.preheader.i ]
  %i.ai = add i32 %.139.i, 1                      ; 3 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.138.lcssa.i = phi i64 [ %.03750.i, %.preheader.i ], [ %i.al, %.lr.ph.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.052.i, %.preheader.i ], [ %i.ai, %.lr.ph.i ] ; 4 uses
  %i.an = shl i32 %.1.lcssa.i, 6
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !133
  %i.ap = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !163 ; 3 uses
  %.not41.i = icmp eq i32 %.02751.i, %i.ac
  br i1 %.not41.i, label %._crit_edge47.thread.i, label %.lr.ph46.preheader.i

._crit_edge47.thread.i:                           ; preds = %._crit_edge.i
  %i.ar = zext i32 %.1.lcssa.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ar
  store i64 %.138.lcssa.i, ptr %i.as, align 8, !tbaa !14
  br label %arena_slab_reg_alloc_batch.exit

.lr.ph46.preheader.i:                             ; preds = %._crit_edge.i
  %i.at = sub i32 %i.ac, %.02751.i
  %i.au = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %.138.lcssa.i)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.at, i32 %i.av) ; 3 uses
  %.029.i = zext nneg i32 %spec.select.i to i64   ; 2 uses
  %lcmp.mod.not = trunc i32 %spec.select.i to i1
  br i1 %lcmp.mod.not, label %.lr.ph46.i.prol, label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.preheader.i
  %i.aw = add nsw i64 %.029.i, -1
  %i.ax = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.138.lcssa.i, i1 true) ; 2 uses
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = xor i64 %i.ay, %.138.lcssa.i            ; 2 uses
  %i.ba = or disjoint i64 %i.ax, %i.ao
  %i.bb = mul i64 %i.ba, %i.aq
  %i.bc = add i64 %i.bb, %i.ap
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = zext i32 %.02751.i to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.be
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !116
  %i.bg = add i32 %.02751.i, 1                    ; 2 uses
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.preheader.i
  %.lcssa120.unr = phi i64 [ poison, %.lr.ph46.preheader.i ], [ %i.az, %.lr.ph46.i.prol ]
  %.lcssa119.unr = phi i32 [ poison, %.lr.ph46.preheader.i ], [ %i.bg, %.lr.ph46.i.prol ]
  %.12844.i.unr = phi i32 [ %.02751.i, %.lr.ph46.preheader.i ], [ %i.bg, %.lr.ph46.i.prol ]
  %.13043.i.unr = phi i64 [ %.029.i, %.lr.ph46.preheader.i ], [ %i.aw, %.lr.ph46.i.prol ]
  %.242.i.unr = phi i64 [ %.138.lcssa.i, %.lr.ph46.preheader.i ], [ %i.az, %.lr.ph46.i.prol ]
  %i.bh = icmp eq i32 %spec.select.i, 1
  br i1 %i.bh, label %._crit_edge47.i, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.12844.i = phi i32 [ %i.ce, %.lr.ph46.i ], [ %.12844.i.unr, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.13043.i = phi i64 [ %i.bt, %.lr.ph46.i ], [ %.13043.i.unr, %.lr.ph46.i.prol.loopexit ]
  %.242.i = phi i64 [ %i.bx, %.lr.ph46.i ], [ %.242.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %i.bi = icmp ne i64 %.242.i, 0
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.242.i, i1 true) ; 2 uses
  %i.bk = shl nuw i64 1, %i.bj                    ; 2 uses
  %i.bl = xor i64 %i.bk, %.242.i                  ; 2 uses
  %i.bm = or disjoint i64 %i.bj, %i.ao
  %i.bn = mul i64 %i.bm, %i.aq
  %i.bo = add i64 %i.bn, %i.ap
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = zext i32 %.12844.i to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bq
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !116
  %i.bs = add i32 %.12844.i, 1
  %i.bt = add nsw i64 %.13043.i, -2               ; 2 uses
  %i.bu = icmp ne i64 %i.bk, %.242.i
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true) ; 2 uses
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = xor i64 %i.bw, %i.bl                    ; 2 uses
  %i.by = or disjoint i64 %i.bv, %i.ao
  %i.bz = mul i64 %i.by, %i.aq
  %i.ca = add i64 %i.bz, %i.ap
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = zext i32 %i.bs to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cc
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !116
  %i.ce = add i32 %.12844.i, 2                    ; 2 uses
  %.not.i.1 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.1, label %._crit_edge47.i, label %.lr.ph46.i, !llvm.loop !164

._crit_edge47.i:                                  ; preds = %.lr.ph46.i, %.lr.ph46.i.prol.loopexit
  %.lcssa120 = phi i64 [ %.lcssa120.unr, %.lr.ph46.i.prol.loopexit ], [ %i.bx, %.lr.ph46.i ] ; 2 uses
  %.lcssa119 = phi i32 [ %.lcssa119.unr, %.lr.ph46.i.prol.loopexit ], [ %i.ce, %.lr.ph46.i ] ; 2 uses
  %i.cf = zext i32 %.1.lcssa.i to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cf
  store i64 %.lcssa120, ptr %i.cg, align 8, !tbaa !14
  %i.ch = icmp ult i32 %.lcssa119, %i.ac
  br i1 %i.ch, label %.preheader.i, label %arena_slab_reg_alloc_batch.exit, !llvm.loop !165

arena_slab_reg_alloc_batch.exit:                  ; preds = %._crit_edge47.i, %bb.d, %._crit_edge47.thread.i
  %i.ci = shl nuw nsw i64 %spec.select, 28
  %i.cj = load i64, ptr %i.z, align 8, !tbaa !135
  %i.ck = sub i64 %i.cj, %i.ci
  store i64 %i.ck, ptr %i.z, align 8, !tbaa !135
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %arena_slab_reg_alloc_batch.exit
  %i.cl = load ptr, ptr %i.ad, align 8, !tbaa !116
  %i.cm = mul i64 %spec.select, %i.f
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cl, i8 0, i64 %i.cm, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %arena_slab_reg_alloc_batch.exit
  %i.cn = add i64 %spec.select, %.05983           ; 3 uses
  %.not75 = icmp ult i64 %i.ab, %i.e              ; 2 uses
  %brmerge = select i1 %.not75, i1 true, i1 %i.i
  %.mux = select i1 %.not75, ptr %i.z, ptr null
  br i1 %brmerge, label %edata_list_active_append.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 3 uses
  store ptr %i.z, ptr %i.co, align 8, !tbaa !131
  %i.cp = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 4 uses
  store ptr %i.z, ptr %i.cp, align 8, !tbaa !131
  %i.cq = icmp eq ptr %.sroa.0.081, null
  br i1 %i.cq, label %edata_list_active_append.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 48 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !131
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !131
  store ptr %i.z, ptr %i.cr, align 8, !tbaa !131
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !131
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !131
  store ptr %i.cv, ptr %i.cp, align 8, !tbaa !131
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !131
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store ptr %.sroa.0.081, ptr %i.cx, align 8, !tbaa !131
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !131
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store ptr %i.z, ptr %i.cz, align 8, !tbaa !131
  %.pre.i = load ptr, ptr %i.co, align 8, !tbaa !131
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.1 = phi ptr [ %.sroa.0.081, %bb.f ], [ %.pre.i, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %.1 = phi ptr [ %.mux, %bb.f ], [ null, %bb.h ], [ null, %bb.g ]
  %i.da = icmp ult i64 %i.cn, %4
  br i1 %i.da, label %.lr.ph, label %.critedge, !llvm.loop !178

.critedge:                                        ; preds = %.lr.ph, %edata_list_active_append.exit, %je_arena_bin_choose.exit
  %.sroa.0.0.lcssa = phi ptr [ null, %je_arena_bin_choose.exit ], [ %.sroa.0.1, %edata_list_active_append.exit ], [ %.sroa.0.081, %.lr.ph ] ; 4 uses
  %.060.lcssa = phi i64 [ 0, %je_arena_bin_choose.exit ], [ %i.aa, %edata_list_active_append.exit ], [ %.06082, %.lr.ph ] ; 2 uses
  %.059.lcssa = phi i64 [ 0, %je_arena_bin_choose.exit ], [ %i.cn, %edata_list_active_append.exit ], [ %.05983, %.lr.ph ] ; 3 uses
  %.2 = phi ptr [ null, %je_arena_bin_choose.exit ], [ %.1, %edata_list_active_append.exit ], [ null, %.lr.ph ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.dc = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.db) #16
  %.not.i68 = icmp eq i32 %i.dc, 0
  br i1 %.not.i68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.y) #16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store atomic i8 1, ptr %i.dd monotonic, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %i.de = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !74
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !74
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.di, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %i.dh, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !77
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.j, %bb.k
  %.not66 = icmp eq ptr %.2, null
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %malloc_mutex_lock.exit
  tail call fastcc void @arena_bin_lower_slab(ptr noundef %1, ptr noundef nonnull %.2, ptr noundef nonnull %i.y)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %malloc_mutex_lock.exit
  br i1 %i.i, label %edata_list_active_concat.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 216 ; 4 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !136 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.sroa.0.0.lcssa, ptr %i.dm, align 8, !tbaa !136
  br label %edata_list_active_concat.exit

bb.p:                                             ; preds = %bb.n
  %i.dp = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %i.dp, label %edata_list_active_concat.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !131
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 48 ; 4 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !131
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store ptr %i.dr, ptr %i.du, align 8, !tbaa !131
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !131 ; 2 uses
  %i.dw = load ptr, ptr %i.dm, align 8, !tbaa !136
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !131
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !131
  store ptr %i.dz, ptr %i.ds, align 8, !tbaa !131
  %i.ea = load ptr, ptr %i.dm, align 8, !tbaa !136 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !131
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store ptr %i.ea, ptr %i.ed, align 8, !tbaa !131
  %i.ee = load ptr, ptr %i.ds, align 8, !tbaa !131
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
end_hunk_1
begin_hunk_2_@je_arena_malloc_hard:bb.a
  %i.cj = shl nuw i64 1, %i.ce
  %i.ck = xor i64 %i.cj, %i.ci
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !14
  %i.cl = getelementptr i8, ptr %i.bd, i64 8
  %.val.i.i.i = load ptr, ptr %i.cl, align 8, !tbaa !133
  %i.cm = ptrtoint ptr %.val.i.i.i to i64
  %i.cn = load i64, ptr %i.ba, align 8, !tbaa !163
  %i.co = mul i64 %i.cn, %i.cf
  %i.cp = add i64 %i.co, %i.cm
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.bd, align 8, !tbaa !135
  %i.cs = add i64 %i.cr, -268435456
  store i64 %i.cs, ptr %i.bd, align 8, !tbaa !135
  br label %bb.u

bb.u:                                             ; preds = %arena_bin_malloc_with_fresh_slab.exit.i, %malloc_mutex_lock.exit55.i, %malloc_mutex_lock.exit.i
  %.048.i = phi ptr [ null, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bd, %malloc_mutex_lock.exit55.i ], [ null, %malloc_mutex_lock.exit.i ] ; 2 uses
  %.0.i15 = phi ptr [ %i.cq, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bl, %malloc_mutex_lock.exit55.i ], [ %i.ay, %malloc_mutex_lock.exit.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !170
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !170
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.cw, align 8, !tbaa !14
  %i.cy = add <2 x i64> %i.cx, splat (i64 1)
  store <2 x i64> %i.cy, ptr %i.cw, align 8, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store atomic i8 0, ptr %i.cz monotonic, align 8
  %i.da = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #16 ; 0 uses
  %.not.i16 = icmp eq ptr %.048.i, null
  br i1 %.not.i16, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !tbaa !129
  %i.db = getelementptr inbounds nuw i8, ptr %.014202428, i64 10648
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.db, ptr noundef nonnull %.048.i, ptr noundef nonnull %i.a) #16
  %i.dc = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.w, label %je_arena_slab_dalloc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %.014202428)
  br label %je_arena_slab_dalloc.exit.i

je_arena_slab_dalloc.exit.i:                      ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.x

bb.x:                                             ; preds = %je_arena_slab_dalloc.exit.i, %bb.u
  br i1 %4, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i15, i8 0, i64 %i.ad, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.b, label %arena_malloc_small.exit, label %bb.aa, !prof !132

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !173 ; 2 uses
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !173
  %i.dh = icmp slt i32 %i.df, 1
  br i1 %i.dh, label %bb.ab, label %arena_malloc_small.exit, !prof !132

bb.ab:                                            ; preds = %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !14
  %i.dk = mul i64 %i.dj, 6364136223846793005
  %i.dl = add i64 %i.dk, 1442695040888963407      ; 2 uses
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !14
  %i.dm = lshr i64 %i.dl, 58
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !175
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !131
  %i.ds = zext i8 %i.dr to i64
  %i.dt = mul nsw i64 %i.ds, %i.dp
  %i.du = udiv i64 %i.dt, 61
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.de, align 8, !tbaa !173
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.014202428, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_malloc_small.exit

bb.ac:                                            ; preds = %.thread21, %bb.g
  %.0142023 = phi ptr [ %1, %.thread21 ], [ %.014, %bb.g ]
  %i.dw = zext i32 %3 to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !14
  %i.dz = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef nonnull %.0142023, i64 noundef %i.dy, i1 noundef zeroext %4) #16
  br label %arena_malloc_small.exit

arena_malloc_small.exit:                          ; preds = %bb.ab, %bb.aa, %bb.z, %bb.s, %arena_choose_maybe_huge.exit, %bb.ac
  %.0 = phi ptr [ %i.dz, %bb.ac ], [ null, %arena_choose_maybe_huge.exit ], [ null, %bb.s ], [ %.0.i15, %bb.aa ], [ %.0.i15, %bb.z ], [ %.0.i15, %bb.ab ]
  ret ptr %.0
}

declare ptr @je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = icmp ult i64 %2, 14337
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %2, 4097
  br i1 %i.c, label %bb.c, label %sz_size2index_compute.exit, !prof !130

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw nsw i64 %2, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !131
  %i.h = zext i8 %i.g to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit:                       ; preds = %bb.b
  %i.i = shl nuw nsw i64 %2, 1
  %i.j = add nsw i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.j, i1 true) ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %i.n = ashr exact i64 -1152921504606846976, %i.k
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %i.n, %i.o
  %i.q = lshr i64 %i.p, %i.m
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  %i.t = shl nuw nsw i32 %i.l, 2
  %reass.sub = sub nsw i32 %i.s, %i.t
  %i.u = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.c, %sz_size2index_compute.exit
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %i.u, %sz_size2index_compute.exit ] ; 5 uses
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %bb.m, label %bb.d, !prof !132

bb.d:                                             ; preds = %sz_size2index.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = zext nneg i32 %.0.i to i64               ; 3 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85   ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !182 ; 2 uses
  %i.ae = trunc i64 %i.aa to i16
  %.not.i22 = icmp eq i16 %i.ad, %i.ae
  br i1 %.not.i22, label %bb.f, label %bb.e, !prof !132

bb.e:                                             ; preds = %bb.d
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !85
  br label %cache_bin_alloc_impl.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !90
  %.not21.i = icmp eq i16 %i.ag, %i.ad
  br i1 %.not21.i, label %cache_bin_alloc_impl.exit, label %bb.g, !prof !132

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !85
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ai, ptr %i.ac, align 8, !tbaa !182
  br label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit:                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.aj = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.h, !prof !132

bb.h:                                             ; preds = %cache_bin_alloc_impl.exit
  %i.al = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.w
  %.val = load i16, ptr %i.am, align 2, !tbaa !91
  %i.an = icmp eq i16 %.val, 0
  br i1 %i.an, label %bb.i, label %bb.j, !prof !132

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.aj, i64 noundef range(i64 0, 14337) %2, i32 noundef %.0.i, i1 noundef zeroext %4)
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit, %bb.i
  %.0.i20.ph = phi ptr [ %i.ao, %bb.i ], [ null, %cache_bin_alloc_impl.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %arena_malloc.exit

bb.j:                                             ; preds = %bb.h
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %i.x, i32 noundef %.0.i, i1 noundef zeroext true) #16
  %i.ap = call ptr @je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.aj, ptr noundef nonnull %5, ptr noundef nonnull %i.x, i32 noundef %.0.i, ptr noundef nonnull %i.a) #16
  %i.aq = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %6 = trunc nuw i8 %i.aq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %6, label %cache_bin_alloc_impl.exit.thread, label %arena_malloc.exit

cache_bin_alloc_impl.exit.thread:                 ; preds = %bb.g, %bb.e, %bb.j
  %.131.i = phi ptr [ %i.ap, %bb.j ], [ %i.z, %bb.e ], [ %i.z, %bb.g ] ; 2 uses
  br i1 %4, label %bb.k, label %bb.l, !prof !132

bb.k:                                             ; preds = %cache_bin_alloc_impl.exit.thread
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.w
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i, i8 0, i64 %i.as, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %cache_bin_alloc_impl.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !171
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !171
  br label %arena_malloc.exit

bb.m:                                             ; preds = %sz_size2index.exit
  %i.aw = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4)
  br label %arena_malloc.exit

bb.n:                                             ; preds = %bb.a
  %i.ax = icmp ult i64 %3, 65
  br i1 %i.ax, label %bb.o, label %bb.p, !prof !130

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %4) #16
  br label %arena_malloc.exit

bb.p:                                             ; preds = %bb.n
  %i.az = tail call ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #16
  br label %arena_malloc.exit

arena_malloc.exit:                                ; preds = %bb.m, %.thread, %bb.j, %bb.l, %bb.o, %bb.p
  %.0 = phi ptr [ %i.az, %bb.p ], [ %i.ay, %bb.o ], [ %i.aw, %bb.m ], [ %.0.i20.ph, %.thread ], [ %.131.i, %bb.l ], [ null, %bb.j ]
  ret ptr %.0
}

declare ptr @je_large_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @je_arena_prof_promote(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @je_arena_dalloc_promoted(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #8 {
bb.a:
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_dalloc_bin_locked_handle_newly_empty(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = icmp eq ptr %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !146
  br label %arena_dissociate_bin_slab.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %2, align 8, !tbaa !135
  %i.d = lshr i64 %.val.i, 20
  %i.e = and i64 %i.d, 255
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !177
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 78928
  %.val10.i = load i32, ptr %i.j, align 8, !tbaa !126
  %i.k = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.l = icmp ult i32 %.val10.i, %i.k
  br i1 %i.l, label %arena_dissociate_bin_slab.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !136  ; 2 uses
  %i.o = icmp eq ptr %i.n, %2
  br i1 %i.o, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !131  ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !136
  %i.r = icmp eq ptr %i.q, %2
  br i1 %i.r, label %bb.g, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !131
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !131
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !131
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !131  ; 2 uses
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !131
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !131
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !131
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !131 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !131
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !131
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %2, ptr %i.aj, align 8, !tbaa !131
  br label %arena_dissociate_bin_slab.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !136
  br label %arena_dissociate_bin_slab.exit

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 200
  tail call void @je_edata_heap_remove(ptr noundef nonnull %i.ak, ptr noundef nonnull %2) #16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !167
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !167
  br label %arena_dissociate_bin_slab.exit

arena_dissociate_bin_slab.exit:                   ; preds = %bb.b, %bb.d, %.thread.i.i.i, %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !152
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !152
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_dalloc_bin_locked_handle_newly_nonempty(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 78928
  %.val = load i32, ptr %i.a, align 8, !tbaa !126
  %i.b = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.c = icmp ult i32 %.val, %i.b
  br i1 %i.c, label %arena_bin_slabs_full_remove.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 2 uses
  %i.f = icmp eq ptr %i.e, %2
  br i1 %i.f, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131  ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !136
  %i.i = icmp eq ptr %i.h, %2
  br i1 %i.i, label %bb.d, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.m, ptr %i.p, align 8, !tbaa !131
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !131  ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.q, ptr %i.s, align 8, !tbaa !131
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131
  store ptr %i.u, ptr %i.n, align 8, !tbaa !131
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !131  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !131
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %2, ptr %i.aa, align 8, !tbaa !131
  br label %arena_bin_slabs_full_remove.exit

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !136
  br label %arena_bin_slabs_full_remove.exit

arena_bin_slabs_full_remove.exit:                 ; preds = %bb.a, %.thread.i.i, %bb.d
  tail call fastcc void @arena_bin_lower_slab(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_2
begin_hunk_3_@je_arena_ralloc:bb.a
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit:                              ; preds = %bb.g
  %i.ag = shl nuw nsw i64 %i.x, 1
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ah, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ai
  %i.aj = lshr i64 1152921504606846975, %i.ai
  %i.ak = add nuw nsw i64 %i.x, %i.aj
  %i.al = and i64 %i.ak, %notmask.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit, %bb.h
  %.0.i24.i = phi i64 [ %i.af, %bb.h ], [ %i.al, %sz_s2u_compute.exit ] ; 2 uses
  %i.am = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.am, label %sz_s2u.exit, label %.thread78

bb.i:                                             ; preds = %bb.f
  %i.an = icmp ugt i64 %5, 8070450532247928832
  br i1 %i.an, label %arena_sdalloc.exit, label %bb.j, !prof !190

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i64 %4, 16385
  br i1 %i.ao, label %.thread78, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ugt i64 %4, 8070450532247928832
  br i1 %i.ap, label %sz_s2u_compute.exit64, label %bb.l, !prof !132

bb.l:                                             ; preds = %bb.k
  %i.aq = shl nuw i64 %4, 1
  %i.ar = add i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ar, i1 true) ; 2 uses
  %notmask.i62 = ashr exact i64 -1152921504606846976, %i.as
  %i.at = lshr i64 1152921504606846975, %i.as
  %i.au = add nuw nsw i64 %4, %i.at
  %i.av = and i64 %i.au, %notmask.i62
  br label %sz_s2u_compute.exit64

sz_s2u_compute.exit64:                            ; preds = %bb.k, %bb.l
  %.0.i63 = phi i64 [ %i.av, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.aw = icmp ult i64 %.0.i63, %4
  br i1 %i.aw, label %arena_sdalloc.exit, label %.thread78

.thread78:                                        ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit64, %bb.j
  %.0.i60 = phi i64 [ %.0.i63, %sz_s2u_compute.exit64 ], [ 16384, %bb.j ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ax = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14
  %i.ay = add nuw nsw i64 %5, 4095
  %i.az = and i64 %i.ay, 9223372036854771712
  %i.ba = add nsw i64 %i.az, -4096
  %i.bb = add nuw i64 %i.ba, %.0.i60
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = icmp ult i64 %i.bc, %.0.i60
  %..0.i = select i1 %i.bd, i64 0, i64 %.0.i60
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %.thread78, %sz_s2u.exit25.i, %bb.c, %bb.e
  %i.be = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %..0.i, %.thread78 ] ; 24 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = icmp samesign ugt i64 %4, 8070450532247928832
  %i.bh = or i1 %i.bg, %i.bf
  br i1 %i.bh, label %arena_sdalloc.exit, label %bb.m, !prof !191

bb.m:                                             ; preds = %sz_s2u.exit
  %i.bi = icmp ult i64 %i.be, 14337               ; 3 uses
  br i1 %i.bi, label %bb.n, label %bb.p, !prof !130

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bj = call zeroext i1 @je_arena_ralloc_no_move(ptr noundef %0, ptr noundef %2, i64 noundef %3, i64 noundef %i.be, i64 noundef 0, i1 noundef zeroext %6, ptr noundef nonnull %i.b)
  br i1 %i.bj, label %.thread79, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load i8, ptr %8, align 8, !tbaa !192, !range !124, !noundef !125
  %i.bl = xor i8 %i.bk, 1
  %not. = zext nneg i8 %i.bl to i32
  %i.bm = ptrtoint ptr %2 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  tail call void @je_hook_invoke_expand(i32 noundef %not., ptr noundef %2, i64 noundef %3, i64 noundef %i.be, i64 noundef %i.bm, ptr noundef nonnull %i.bn) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %arena_sdalloc.exit

.thread79:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.bo = icmp ugt i64 %3, 16383
  %i.bp = icmp ugt i64 %i.be, 16383
  %or.cond = and i1 %i.bo, %i.bp
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = tail call ptr @je_large_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.be, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8) #16
  br label %arena_sdalloc.exit

bb.r:                                             ; preds = %.thread79, %bb.p
  br i1 %i.c, label %bb.s, label %bb.ar

bb.s:                                             ; preds = %bb.r
  %i.br = icmp ult i64 %i.be, 4097
  br i1 %i.br, label %bb.t, label %bb.u, !prof !130

bb.t:                                             ; preds = %bb.s
  %i.bs = add nuw nsw i64 %i.be, 7
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !131
  %i.bw = zext i8 %i.bv to i32
  br label %sz_size2index.exit.i75

bb.u:                                             ; preds = %bb.s
  %i.bx = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.bx, label %sz_size2index.exit.i75, label %bb.v, !prof !132

bb.v:                                             ; preds = %bb.u
  %i.by = shl nuw i64 %i.be, 1
  %i.bz = add i64 %i.by, -1
  %i.ca = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.bz, i1 true) ; 3 uses
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = sub nuw nsw i64 60, %i.ca
  %i.cd = ashr exact i64 -1152921504606846976, %i.ca
  %i.ce = add nsw i64 %i.be, -1
  %i.cf = and i64 %i.cd, %i.ce
  %i.cg = lshr i64 %i.cf, %i.cc
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 3
  %i.cj = shl nuw nsw i32 %i.cb, 2
  %reass.sub = sub nsw i32 %i.ci, %i.cj
  %i.ck = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i75

sz_size2index.exit.i75:                           ; preds = %bb.v, %bb.u, %bb.t
  %.0.i.i = phi i32 [ %i.bw, %bb.t ], [ %i.ck, %bb.v ], [ 235, %bb.u ] ; 7 uses
  %.not.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i, label %bb.aq, label %bb.w, !prof !132

bb.w:                                             ; preds = %sz_size2index.exit.i75
  br i1 %i.bi, label %bb.x, label %bb.ag, !prof !130

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = zext nneg i32 %.0.i.i to i64            ; 3 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cm ; 8 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !85 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !116 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !182 ; 2 uses
  %i.cu = trunc i64 %i.cq to i16
  %.not.i23.i = icmp eq i16 %i.ct, %i.cu
  br i1 %.not.i23.i, label %bb.z, label %bb.y, !prof !132

bb.y:                                             ; preds = %bb.x
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !85
  br label %cache_bin_alloc_impl.exit.thread.i

bb.z:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cw = load i16, ptr %i.cv, align 4, !tbaa !90
  %.not21.i.i = icmp eq i16 %i.cw, %i.ct
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.aa, !prof !132

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !85
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = trunc i64 %i.cx to i16
  store i16 %i.cy, ptr %i.cs, align 8, !tbaa !182
  br label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cz = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.thread.i, label %bb.ab, !prof !132

bb.ab:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.db = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !183
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.cm
  %.val.i = load i16, ptr %i.dc, align 2, !tbaa !91
  %i.dd = icmp eq i16 %.val.i, 0
  br i1 %i.dd, label %bb.ac, label %bb.ad, !prof !132

bb.ac:                                            ; preds = %bb.ab
  %i.de = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.cz, i64 noundef range(i64 1, 14337) %i.be, i32 noundef %.0.i.i, i1 noundef zeroext %6)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %cache_bin_alloc_impl.exit.i
  %.0.i21.ph.i = phi ptr [ %i.de, %bb.ac ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %arena_ralloc_move_helper.exit

bb.ad:                                            ; preds = %bb.ab
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.cn, i32 noundef %.0.i.i, i1 noundef zeroext true) #16
  %i.df = call ptr @je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.cz, ptr noundef nonnull %7, ptr noundef nonnull %i.cn, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #16
  %i.dg = load i8, ptr %i.a, align 1, !tbaa !129, !range !124, !noundef !125
  %11 = trunc nuw i8 %i.dg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %11, label %cache_bin_alloc_impl.exit.thread.i, label %arena_sdalloc.exit

cache_bin_alloc_impl.exit.thread.i:               ; preds = %bb.ad, %bb.aa, %bb.y
  %.131.i.i = phi ptr [ %i.df, %bb.ad ], [ %i.cp, %bb.y ], [ %i.cp, %bb.aa ] ; 2 uses
  br i1 %6, label %bb.ae, label %bb.af, !prof !132

bb.ae:                                            ; preds = %cache_bin_alloc_impl.exit.thread.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cm
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.di, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %cache_bin_alloc_impl.exit.thread.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !171
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !171
  br label %arena_ralloc_move_helper.exit

bb.ag:                                            ; preds = %bb.w
  %i.dm = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !14
  %.not24.i.i = icmp ugt i64 %i.be, %i.dm
  br i1 %.not24.i.i, label %bb.aq, label %bb.ah, !prof !132

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.do = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.do ; 7 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !85 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !116 ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dv = load i16, ptr %i.du, align 8, !tbaa !182 ; 2 uses
  %i.dw = trunc i64 %i.ds to i16
  %.not.i25.i = icmp eq i16 %i.dv, %i.dw
  br i1 %.not.i25.i, label %bb.aj, label %bb.ai, !prof !132

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.dt, ptr %i.dp, align 8, !tbaa !85
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dy = load i16, ptr %i.dx, align 4, !tbaa !90
  %.not21.i27.i = icmp eq i16 %i.dy, %i.dv
  br i1 %.not21.i27.i, label %cache_bin_alloc_impl.exit28.i, label %bb.ak, !prof !132

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.dt, ptr %i.dp, align 8, !tbaa !85
  %i.dz = ptrtoint ptr %i.dt to i64
  %i.ea = trunc i64 %i.dz to i16
  store i16 %i.ea, ptr %i.du, align 8, !tbaa !182
  br label %bb.an

cache_bin_alloc_impl.exit28.i:                    ; preds = %bb.aj
  %i.eb = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %arena_sdalloc.exit, label %bb.al, !prof !132

bb.al:                                            ; preds = %cache_bin_alloc_impl.exit28.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.dp, i32 noundef %.0.i.i, i1 noundef zeroext false) #16
  %i.ed = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.ed, label %sz_s2u_compute.exit.i, label %bb.am, !prof !132

bb.am:                                            ; preds = %bb.al
  %i.ee = shl nuw i64 %i.be, 1
  %i.ef = add i64 %i.ee, -1
  %i.eg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ef, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.eg
  %i.eh = lshr i64 1152921504606846975, %i.eg
  %i.ei = add nuw nsw i64 %i.eh, %i.be
  %i.ej = and i64 %i.ei, %notmask.i.i
  br label %sz_s2u_compute.exit.i

sz_s2u_compute.exit.i:                            ; preds = %bb.am, %bb.al
  %.0.i29.i = phi i64 [ %i.ej, %bb.am ], [ 0, %bb.al ]
  %i.ek = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef nonnull %i.eb, i64 noundef %.0.i29.i, i1 noundef zeroext %6) #16
  br label %arena_ralloc_move_helper.exit

bb.an:                                            ; preds = %bb.ak, %bb.ai
  br i1 %6, label %bb.ao, label %bb.ap, !prof !132

bb.ao:                                            ; preds = %bb.an
  %i.el = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.do
  %i.em = load i64, ptr %i.el, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dr, i8 0, i64 %i.em, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !171
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !171
  br label %arena_ralloc_move_helper.exit

bb.aq:                                            ; preds = %bb.ag, %sz_size2index.exit.i75
  %i.eq = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %i.be, i32 noundef %.0.i.i, i1 noundef zeroext %6)
  br label %arena_ralloc_move_helper.exit

bb.ar:                                            ; preds = %bb.r
  %i.er = icmp samesign ult i64 %5, 4097
  %or.cond.i.i = and i1 %i.er, %i.bi
  br i1 %or.cond.i.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.es = add nsw i64 %5, -1
  %i.et = add nuw nsw i64 %i.es, %i.be
  %i.eu = sub nsw i64 0, %5
  %i.ev = and i64 %i.et, %i.eu                    ; 4 uses
  %i.ew = icmp samesign ult i64 %i.ev, 4097
  br i1 %i.ew, label %bb.at, label %sz_s2u_compute.exit32.i, !prof !130

bb.at:                                            ; preds = %bb.as
  %i.ex = add nuw nsw i64 %i.ev, 7
  %i.ey = lshr i64 %i.ex, 3
  %i.ez = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !131
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !14
  br label %sz_s2u.exit25.i.i

sz_s2u_compute.exit32.i:                          ; preds = %bb.as
  %i.fe = shl nuw nsw i64 %i.ev, 1
  %i.ff = add nsw i64 %i.fe, -1
  %i.fg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.ff, i1 true) ; 2 uses
  %notmask.i30.i = ashr exact i64 -1152921504606846976, %i.fg
  %i.fh = lshr i64 1152921504606846975, %i.fg
  %i.fi = add nuw nsw i64 %i.fh, %i.ev
  %i.fj = and i64 %i.fi, %notmask.i30.i
  br label %sz_s2u.exit25.i.i

sz_s2u.exit25.i.i:                                ; preds = %sz_s2u_compute.exit32.i, %bb.at
  %.0.i24.i.i = phi i64 [ %i.fd, %bb.at ], [ %i.fj, %sz_s2u_compute.exit32.i ] ; 2 uses
  %i.fk = icmp ult i64 %.0.i24.i.i, 16384
  br i1 %i.fk, label %sz_sa2u.exit.i, label %.thread49.i

bb.au:                                            ; preds = %bb.ar
  %i.fl = icmp ult i64 %i.be, 16385
  br i1 %i.fl, label %.thread49.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fm = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.fm, label %arena_sdalloc.exit, label %sz_s2u_compute.exit35.i, !prof !132

sz_s2u_compute.exit35.i:                          ; preds = %bb.av
  %i.fn = shl nuw i64 %i.be, 1
  %i.fo = add i64 %i.fn, -1
  %i.fp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2305843009213693952) %i.fo, i1 true) ; 2 uses
  %notmask.i33.i = ashr exact i64 -1152921504606846976, %i.fp
  %i.fq = lshr i64 1152921504606846975, %i.fp
  %i.fr = add nuw nsw i64 %i.fq, %i.be
  %i.fs = and i64 %i.fr, %notmask.i33.i           ; 2 uses
  %i.ft = icmp samesign ult i64 %i.fs, %i.be
  br i1 %i.ft, label %arena_sdalloc.exit, label %.thread49.i

.thread49.i:                                      ; preds = %sz_s2u_compute.exit35.i, %bb.au, %sz_s2u.exit25.i.i
  %.0.i20.i = phi i64 [ %i.fs, %sz_s2u_compute.exit35.i ], [ 16384, %bb.au ], [ 16384, %sz_s2u.exit25.i.i ] ; 3 uses
  %i.fu = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14
  %i.fv = add nuw nsw i64 %5, 4095
  %i.fw = and i64 %i.fv, 9223372036854771712
  %i.fx = add nsw i64 %i.fw, -4096
  %i.fy = add nuw i64 %i.fx, %.0.i20.i
  %i.fz = add i64 %i.fy, %i.fu
  %i.ga = icmp ult i64 %i.fz, %.0.i20.i
  %..0.i.i = select i1 %i.ga, i64 0, i64 %.0.i20.i
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread49.i, %sz_s2u.exit25.i.i
  %.018.i.i = phi i64 [ %..0.i.i, %.thread49.i ], [ %.0.i24.i.i, %sz_s2u.exit25.i.i ] ; 2 uses
  %i.gb = add nsw i64 %.018.i.i, -8070450532247928833
  %i.gc = icmp ult i64 %i.gb, -8070450532247928832
  br i1 %i.gc, label %arena_sdalloc.exit, label %ipallocztm.exit.i, !prof !191

ipallocztm.exit.i:                                ; preds = %sz_sa2u.exit.i
  %i.gd = tail call ptr @je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 8070450532247928833) %.018.i.i, i64 noundef range(i64 1, 0) %5, i1 noundef zeroext %6, ptr noundef %7)
  br label %arena_ralloc_move_helper.exit

arena_ralloc_move_helper.exit:                    ; preds = %.thread.i, %bb.af, %sz_s2u_compute.exit.i, %bb.ap, %bb.aq, %ipallocztm.exit.i
  %.0.i74 = phi ptr [ %i.ek, %sz_s2u_compute.exit.i ], [ %i.gd, %ipallocztm.exit.i ], [ %i.eq, %bb.aq ], [ %.0.i21.ph.i, %.thread.i ], [ %.131.i.i, %bb.af ], [ %i.dr, %bb.ap ] ; 13 uses
  %i.ge = icmp eq ptr %.0.i74, null
  br i1 %i.ge, label %arena_sdalloc.exit, label %isdalloct.exit

isdalloct.exit:                                   ; preds = %arena_ralloc_move_helper.exit
  %i.gf = load i8, ptr %8, align 8, !tbaa !192, !range !124, !noundef !125
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = select i1 %i.gg, i32 7, i32 8
  %i.gi = ptrtoint ptr %.0.i74 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @je_hook_invoke_alloc(i32 noundef %i.gh, ptr noundef nonnull %.0.i74, i64 noundef %i.gi, ptr noundef nonnull %i.gj) #16
  %i.gk = load i8, ptr %8, align 8, !tbaa !192, !range !124, !noundef !125
  %i.gl = trunc nuw i8 %i.gk to i1
  %i.gm = select i1 %i.gl, i32 3, i32 4
  call void @je_hook_invoke_dalloc(i32 noundef %i.gm, ptr noundef %2, ptr noundef nonnull %i.gj) #16
  %i.gn = call i64 @llvm.umin.i64(i64 %i.be, i64 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i74, ptr align 1 %2, i64 %i.gn, i1 false)
  %i.go = icmp eq ptr %0, null
  %i.gp = icmp eq ptr %7, null
  br i1 %i.gp, label %bb.aw, label %bb.ax, !prof !132

end_hunk_3
begin_hunk_4_@arena_decay_impl:bb.a
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond = and i1 %i.aa, %i.af
  %or.cond.not = xor i1 %or.cond, true
  %or.cond3 = or i1 %5, %or.cond.not
  br i1 %or.cond3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %1, i64 78928
  %.val35 = load i32, ptr %i.ag, align 8, !tbaa !126
  tail call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val35, ptr noundef nonnull %2, i64 noundef %.0)
  br label %bb.n

bb.n:                                             ; preds = %malloc_mutex_trylock.exit, %bb.l, %bb.m, %malloc_mutex_lock.exit
  %.033 = phi i1 [ false, %malloc_mutex_lock.exit ], [ true, %malloc_mutex_trylock.exit ], [ false, %bb.m ], [ false, %bb.l ]
  ret i1 %.033
}

declare void @je_pac_decay_all(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @je_pac_maybe_decay_purge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @je_pac_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @je_eset_npages_get(ptr noundef) local_unnamed_addr #3

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #3

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @je_edata_heap_remove_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_prepare_base_deletion_sync(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.g, %0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  store atomic i8 0, ptr %i.k monotonic, align 8
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  store atomic i8 1, ptr %i.m monotonic, align 1
  %i.n = load i32, ptr %3, align 4, !tbaa !7      ; 2 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  store ptr %1, ptr %i.q, align 8, !tbaa !157
  %i.r = icmp eq i32 %i.o, 32
  br i1 %i.r, label %.lr.ph.i, label %arena_prepare_base_deletion_sync_finish.exit

.lr.ph.i:                                         ; preds = %bb.e, %malloc_mutex_lock.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %malloc_mutex_lock.exit.i ], [ 0, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.u) #16
  %.not.i.i14 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.t) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store atomic i8 1, ptr %i.w monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !74
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.ab, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !157 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store atomic i8 0, ptr %i.ag monotonic, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #16 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %arena_prepare_base_deletion_sync_finish.exit, label %.lr.ph.i, !llvm.loop !158

arena_prepare_base_deletion_sync_finish.exit:     ; preds = %malloc_mutex_lock.exit.i, %bb.e
  %.0 = phi i32 [ %i.o, %bb.e ], [ 0, %malloc_mutex_lock.exit.i ]
  store i32 %.0, ptr %3, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %arena_prepare_base_deletion_sync_finish.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

declare void @je_bitmap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #14 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !131
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !132

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #16
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !160  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !132

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #16 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !129, !range !124, !noundef !125
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !211  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.037.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.037.i, i64 78928 ; 2 uses
  %.037.val48.i = load i32, ptr %i.s, align 8, !tbaa !126
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 3 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %i.w = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.w, 1
  %.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.x = icmp ult i32 %.037.val48.i, %.0.i.i
  br i1 %i.x, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !199
  %.not45.i = icmp eq ptr %i.z, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call i32 @sched_getcpu() #16       ; 3 uses
  %i.ab = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.ae = lshr i32 %i.ad, 1                       ; 2 uses
  %i.af = icmp ult i32 %i.aa, %i.ae
  %i.ag = select i1 %i.af, i32 0, i32 %i.ae
  %spec.select.i.i = sub nuw i32 %i.aa, %i.ag
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i47.i = phi i32 [ %i.aa, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.037.val.i = load i32, ptr %i.s, align 8, !tbaa !126
  %.not46.i = icmp eq i32 %.037.val.i, %.0.i47.i
  br i1 %.not46.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !160 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 78928
  %.val.i.i = load i32, ptr %i.ai, align 8, !tbaa !126
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i47.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = zext i32 %.0.i47.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.aj
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.q, label %arena_get.exit.i.i, !prof !132

bb.q:                                             ; preds = %bb.p
  %i.an = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i47.i, ptr noundef nonnull @je_arena_config_default) #16
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.an, %bb.q ], [ %i.al, %bb.p ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef %.0.i18.i.i) #16
  %i.ao = load i8, ptr %0, align 8, !tbaa !129, !range !124, !noundef !125
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.r, label %percpu_arena_update.exit.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.aq, ptr noundef %.0.i18.i.i) #16
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.r, %arena_get.exit.i.i, %bb.o
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !160
  br label %bb.s

bb.s:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.as, %percpu_arena_update.exit.i ], [ %.037.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.at, align 8, !tbaa !199
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.s
  %.0.i = phi ptr [ %1, %bb.a ], [ %.037.i, %percpu_arena_ind_limit.exit.i ], [ %.037.i, %bb.k ], [ %.1.i, %bb.s ], [ %.037.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.0.i
}

declare ptr @je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #11

declare void @je_arena_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %arena_bin_slabs_full_insert.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.b, align 8, !tbaa !135
  %i.d = and i64 %.val, 274609471488
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 78928
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !126
  %i.g = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.h = icmp ult i32 %.val.i, %i.g
  br i1 %i.h, label %arena_bin_slabs_full_insert.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !131
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  store ptr %i.b, ptr %i.k, align 8, !tbaa !131
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %edata_list_active_append.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !131
  store ptr %i.o, ptr %i.j, align 8, !tbaa !131
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !136
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.b, ptr %i.q, align 8, !tbaa !131
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !131
  store ptr %i.t, ptr %i.k, align 8, !tbaa !131
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr %i.u, ptr %i.x, align 8, !tbaa !131
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.b, ptr %i.z, align 8, !tbaa !131
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !131
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.b, %bb.d ]
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !136
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %bb.a, %edata_list_active_append.exit.i.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ac = tail call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.ab) #16 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, label %arena_bin_refill_slabcur_no_fresh_slab.exit

arena_bin_refill_slabcur_no_fresh_slab.exit.thread: ; preds = %arena_bin_slabs_full_insert.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !146
  br label %bb.g

arena_bin_refill_slabcur_no_fresh_slab.exit:      ; preds = %arena_bin_slabs_full_insert.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !166
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !166
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !167
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !167
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !146
  br label %bb.f

bb.f:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit, %bb.b
  %i.ak = phi ptr [ %i.ac, %arena_bin_refill_slabcur_no_fresh_slab.exit ], [ %i.b, %bb.b ] ; 4 uses
  %i.al = zext i32 %2 to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 3 uses
  %.0101.i.i = load i64, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ao = icmp eq i64 %.0101.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i, label %arena_slab_reg_alloc.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.02.i.i = phi i32 [ %i.ap, %.lr.ph.i.i ], [ 0, %bb.f ]
  %i.ap = add i32 %.02.i.i, 1                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  %.010.i.i = load i64, ptr %i.ar, align 8, !tbaa !14 ; 2 uses
  %i.as = icmp eq i64 %.010.i.i, 0
  br i1 %i.as, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !181

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.at = shl i32 %i.ap, 6
  %i.au = zext i32 %i.at to i64
  br label %arena_slab_reg_alloc.exit

arena_slab_reg_alloc.exit:                        ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.au, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.010.lcssa.i.i = phi i64 [ %.0101.i.i, %bb.f ], [ %.010.i.i, %._crit_edge.loopexit.i.i ]
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i.i, i1 true) ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, %.0.lcssa.i.i
  %i.ax = lshr exact i64 %.0.lcssa.i.i, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.ba = shl nuw i64 1, %i.av
  %i.bb = xor i64 %i.ba, %i.az
end_hunk_4
