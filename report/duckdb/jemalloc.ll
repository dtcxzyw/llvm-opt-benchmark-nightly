Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/jemalloc?download=true
inline.NumInlined: 639
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@duckdb_je_batch_alloc:bb.a
tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.d = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #21 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %tsd_fetch_impl.exit.thread, !prof !10

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i132152 = phi ptr [ %i.d, %tsd_fetch_impl.exit ], [ %i.a, %bb.a ] ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.i = and i32 %3, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 5 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %2, 4097
  br i1 %i.n, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw nsw i64 %2, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24
  br label %aligned_usize_get.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.v, label %.critedge, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %2, 1
  %i.x = add i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.y
  %i.z = lshr i64 1152921504606846975, %i.y
  %i.aa = add nuw nsw i64 %2, %i.z
  %i.ab = and i64 %i.aa, %notmask.i
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %2, 14337
  %i.ad = icmp ult i64 %i.l, 4097
  %or.cond.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %2, -1
  %i.af = add nsw i64 %i.ae, %i.l
  %i.ag = sub nsw i64 0, %i.l
  %i.ah = and i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp samesign ult i64 %i.ah, 4097
  br i1 %i.ai, label %bb.i, label %sz_s2u_compute.exit.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw nsw i64 %i.ah, 6
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !24
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.h
  %i.aq = shl nuw nsw i64 %i.ah, 1
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ar, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.as
  %i.at = lshr i64 1152921504606846975, %i.as
  %i.au = add nuw nsw i64 %i.ah, %i.at
  %i.av = and i64 %i.au, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.i
  %.0.i24.i = phi i64 [ %i.ap, %bb.i ], [ %i.av, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.aw = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.aw, label %aligned_usize_get.exit, label %.thread153

bb.j:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.l, 8070450532247928832
  br i1 %i.ax, label %.critedge, label %bb.k, !prof !119

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp ult i64 %2, 16385
  br i1 %i.ay, label %.thread153, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.az, label %sz_s2u_compute.exit29.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.ba = shl nuw i64 %2, 1
  %i.bb = add i64 %i.ba, -1
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bb, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.bc
  %i.bd = lshr i64 1152921504606846975, %i.bc
  %i.be = add nuw nsw i64 %2, %i.bd
  %i.bf = and i64 %i.be, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.m, %bb.l
  %.0.i28.i = phi i64 [ %i.bf, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.bg = icmp ult i64 %.0.i28.i, %2
  br i1 %i.bg, label %.critedge, label %.thread153

.thread153:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.k
  %.0.i134 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bh = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !24
  %i.bi = add nuw i64 %i.k, 4094
  %i.bj = and i64 %i.bi, 9223372036854771712
  %i.bk = add nsw i64 %i.bj, -4096
  %i.bl = add i64 %i.bk, %.0.i134
  %i.bm = add i64 %i.bl, %i.bh
  %i.bn = icmp ult i64 %i.bm, %.0.i134
  %..0.i = select i1 %i.bn, i64 0, i64 %.0.i134
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread153, %sz_s2u.exit25.i, %bb.d, %bb.f
  %storemerge.i = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ %..0.i, %.thread153 ] ; 15 uses
  %i.bo = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.bo, -8070450532247928832
  br i1 %spec.select.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %aligned_usize_get.exit
  %i.bp = icmp samesign ult i64 %storemerge.i, 4097
  br i1 %i.bp, label %bb.o, label %sz_size2index_compute.exit, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bq = add nuw nsw i64 %storemerge.i, 7
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !12
  %i.bu = zext i8 %i.bt to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit:                       ; preds = %bb.n
  %i.bv = shl nuw i64 %storemerge.i, 1
  %i.bw = add i64 %i.bv, -1
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bw, i1 true) ; 3 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = sub nuw nsw i64 60, %i.bx
  %i.ca = ashr exact i64 -1152921504606846976, %i.bx
  %i.cb = add nsw i64 %storemerge.i, -1
  %i.cc = and i64 %i.ca, %i.cb
  %i.cd = lshr i64 %i.cc, %i.bz
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 3
  %i.cg = shl nuw nsw i32 %i.by, 2
  %reass.sub = sub nsw i32 %i.cf, %i.cg
  %i.ch = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.o, %sz_size2index_compute.exit
  %.0.i125 = phi i32 [ %i.bu, %bb.o ], [ %i.ch, %sz_size2index_compute.exit ] ; 4 uses
  %i.ci = and i32 %3, 64
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = load i8, ptr @duckdb_je_opt_zero, align 1, !range !95
  %i.cl = trunc nuw i8 %i.ck to i1
  %.0.i123 = or i1 %i.cj, %i.cl                   ; 2 uses
  %i.cm = zext nneg i32 %.0.i125 to i64           ; 2 uses
  %i.cn = icmp samesign ugt i32 %.0.i125, 35      ; 2 uses
  br i1 %i.cn, label %bb.q, label %bb.p, !prof !9

bb.p:                                             ; preds = %sz_size2index.exit
  %i.co = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !159
  %i.cr = zext i32 %i.cq to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %sz_size2index.exit
  %.098 = phi i64 [ %i.cr, %bb.p ], [ 0, %sz_size2index.exit ] ; 2 uses
  %.not.i = icmp ult i32 %3, 1048576
  %i.cs = lshr i32 %3, 20
  %i.ct = add nsw i32 %i.cs, -1                   ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 144
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 256 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 864 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 296
  %i.da = and i32 %3, 1048320                     ; 2 uses
  %i.db = lshr exact i32 %i.da, 8
  %i.dc = add nsw i32 %i.db, -2                   ; 3 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 832 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i132152, i64 840
  %5 = insertelement <2 x ptr> poison, ptr %i.de, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.dg, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %i.dh, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %i.dj, i64 1
  br label %bb.r

bb.r:                                             ; preds = %select.unfold, %bb.q
  %.0146 = phi ptr [ null, %bb.q ], [ %.5, %select.unfold ] ; 3 uses
  %.0103 = phi i64 [ 0, %bb.q ], [ %.6, %select.unfold ] ; 8 uses
  %.099 = phi ptr [ null, %bb.q ], [ %.3102, %select.unfold ] ; 9 uses
  %9 = icmp ult i64 %.0103, %1
  br i1 %9, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dk = sub nuw i64 %1, %.0103                  ; 6 uses
  %.not = icmp ult i64 %i.dk, %.098
  %or.cond = select i1 %i.cn, i1 true, i1 %.not, !prof !160
  br i1 %or.cond, label %bb.ae, label %bb.t, !prof !160

bb.t:                                             ; preds = %bb.s
  %i.dl = icmp eq ptr %.0146, null
  br i1 %i.dl, label %bb.u, label %arena_get_from_ind.exit.thread168

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i, label %mallocx_arena_get.exit.thread, label %mallocx_arena_get.exit, !prof !11

mallocx_arena_get.exit:                           ; preds = %bb.u
  %i.dm = load atomic ptr, ptr %i.cv acquire, align 8 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %arena_get.exit, label %arena_get_from_ind.exit.thread168, !prof !9

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.do = call ptr @duckdb_je_arena_init(ptr noundef nonnull %.0.i132152, i32 noundef %i.ct, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !0 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.v, label %arena_get_from_ind.exit.thread168, !prof !10

bb.v:                                             ; preds = %arena_get.exit
  %i.dq = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !8
  %.not.i127 = icmp ult i32 %i.ct, %i.dq
  br i1 %.not.i127, label %mallocx_arena_get.exit.thread, label %.critedge

mallocx_arena_get.exit.thread:                    ; preds = %bb.v, %bb.u
  %i.dr = load i8, ptr %i.f, align 1, !tbaa !12
  %i.ds = icmp sgt i8 %i.dr, 0
  br i1 %i.ds, label %bb.w, label %bb.y, !prof !9

bb.w:                                             ; preds = %mallocx_arena_get.exit.thread
  %i.dt = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.x, label %arena_get_from_ind.exit.thread168, !prof !9

bb.x:                                             ; preds = %bb.w
  %i.dv = call ptr @duckdb_je_arena_init(ptr noundef nonnull %.0.i132152, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !0
  br label %arena_get_from_ind.exit

bb.y:                                             ; preds = %mallocx_arena_get.exit.thread
  %i.dw = load ptr, ptr %i.cw, align 8, !tbaa !33 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.z, label %arena_get_from_ind.exit.thread168, !prof !9

bb.z:                                             ; preds = %bb.y
  %i.dy = call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %.0.i132152, i1 noundef zeroext false) ; 7 uses
  %i.dz = load i8, ptr %.0.i132152, align 8, !tbaa !94, !range !95, !noundef !96
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.aa, label %arena_get_from_ind.exit

bb.aa:                                            ; preds = %bb.z
  %i.eb = load ptr, ptr %i.cz, align 8, !tbaa !134 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.eb, null
  br i1 %.not30.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not31.i.i = icmp eq ptr %i.eb, %i.dy
  br i1 %.not31.i.i, label %arena_get_from_ind.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %.0.i132152, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy, ptr noundef %i.dy) #21
  br label %arena_get_from_ind.exit

bb.ad:                                            ; preds = %bb.aa
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %.0.i132152, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy, ptr noundef %i.dy) #21
  br label %arena_get_from_ind.exit

arena_get_from_ind.exit:                          ; preds = %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.ad
  %.1147 = phi ptr [ %i.dy, %bb.z ], [ %i.dy, %bb.ab ], [ %i.dy, %bb.ac ], [ %i.dy, %bb.ad ], [ %i.dv, %bb.x ] ; 2 uses
  %.not195 = icmp eq ptr %.1147, null
  br i1 %.not195, label %select.unfold, label %arena_get_from_ind.exit.thread168

arena_get_from_ind.exit.thread168:                ; preds = %mallocx_arena_get.exit, %bb.y, %bb.w, %arena_get.exit, %arena_get_from_ind.exit, %bb.t
  %.3148 = phi ptr [ %.1147, %arena_get_from_ind.exit ], [ %.0146, %bb.t ], [ %i.dw, %bb.y ], [ %i.dt, %bb.w ], [ %i.do, %arena_get.exit ], [ %i.dm, %mallocx_arena_get.exit ] ; 2 uses
  %i.ec = urem i64 %i.dk, %.098
  %i.ed = sub nuw i64 %i.dk, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0103
  %i.ef = call i64 @duckdb_je_arena_fill_small_fresh(ptr noundef nonnull %.0.i132152, ptr noundef nonnull %.3148, i32 noundef %.0.i125, ptr noundef %i.ee, i64 noundef %i.ed, i1 noundef zeroext %.0.i123) #21 ; 2 uses
  %i.eg = add i64 %i.ef, %.0103
  br label %bb.ae

bb.ae:                                            ; preds = %arena_get_from_ind.exit.thread168, %bb.s
  %.4 = phi ptr [ %.0146, %bb.s ], [ %.3148, %arena_get_from_ind.exit.thread168 ] ; 2 uses
  %.1104 = phi i64 [ %.0103, %bb.s ], [ %i.eg, %arena_get_from_ind.exit.thread168 ] ; 8 uses
  %.095 = phi i64 [ 0, %bb.s ], [ %i.ef, %arena_get_from_ind.exit.thread168 ] ; 9 uses
  switch i32 %i.da, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %.critedge119
  ], !prof !128

mallocx_tcache_get.exit:                          ; preds = %bb.ae
  switch i32 %i.dc, label %bb.af [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %.critedge119
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %bb.ae, %mallocx_tcache_get.exit
  %i.eh = load i8, ptr %.0.i132152, align 1, !tbaa !94, !range !95, !noundef !96
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %tcache_get_from_ind.exit.thread177, label %.critedge119

bb.af:                                            ; preds = %mallocx_tcache_get.exit
  %i.ej = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !130
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.dd ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !12 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.el to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.ag
    i64 1, label %bb.ah
  ], !prof !131

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.178, i32 noundef range(i32 0, -2) %i.dc) #21
  call void @abort() #22
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.em = call ptr @duckdb_je_tcache_create_explicit(ptr noundef nonnull %.0.i132152) #21 ; 2 uses
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !12
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.ah, %bb.af
  %i.en = phi ptr [ %i.em, %bb.ah ], [ %i.el, %bb.af ] ; 2 uses
  %.not113 = icmp eq ptr %i.en, null
  br i1 %.not113, label %.critedge119, label %tcache_get_from_ind.exit.thread177, !prof !83

tcache_get_from_ind.exit.thread177:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit
  %.0.i180 = phi ptr [ %i.en, %tcache_get_from_ind.exit ], [ %i.cy, %mallocx_tcache_get.exit.thread ] ; 2 uses
  %i.eo = load ptr, ptr %.0.i180, align 8, !tbaa !99
  %i.ep = getelementptr i8, ptr %i.eo, i64 48
  %.val136 = load i32, ptr %i.ep, align 8, !tbaa !106
  %i.eq = icmp ult i32 %.0.i125, %.val136
  br i1 %i.eq, label %bb.ai, label %.critedge119, !prof !11

bb.ai:                                            ; preds = %tcache_get_from_ind.exit.thread177
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i180, i64 8
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.cm ; 2 uses
  %.val = load ptr, ptr %i.es, align 8, !tbaa !90
  %i.et = icmp ne ptr %.val, @duckdb_je_disabled_bin
  %i.eu = icmp ult i64 %.095, %i.dk
  %or.cond120 = select i1 %i.et, i1 %i.eu, i1 false, !prof !13
  br i1 %or.cond120, label %bb.aj, label %.critedge119, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.ev = icmp eq ptr %.099, null
  %.1100 = select i1 %i.ev, ptr %i.es, ptr %.099  ; 7 uses
  %i.ew = sub nuw i64 %i.dk, %.095
  %i.ex = getelementptr [8 x i8], ptr %0, i64 %.1104 ; 10 uses
  %.1100.val = load ptr, ptr %.1100, align 8, !tbaa !90 ; 2 uses
  %i.ey = getelementptr i8, ptr %.1100, i64 20    ; 2 uses
  %.1100.val138 = load i16, ptr %i.ey, align 4, !tbaa !93
  %i.ez = ptrtoint ptr %.1100.val to i64
  %i.fa = trunc i64 %i.ez to i16
  %i.fb = sub i16 %.1100.val138, %i.fa
  %i.fc = lshr i16 %i.fb, 3
  %i.fd = zext nneg i16 %i.fc to i64
  %spec.select.i128196 = call i64 @llvm.umin.i64(i64 %i.ew, i64 %i.fd) ; 9 uses
  %i.fe = shl nuw nsw i64 %spec.select.i128196, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ex, ptr align 8 %.1100.val, i64 %i.fe, i1 false)
  %i.ff = load ptr, ptr %.1100, align 8, !tbaa !90
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %spec.select.i128196 ; 2 uses
  store ptr %i.fg, ptr %.1100, align 8, !tbaa !90
  %.val3.i = load i16, ptr %i.ey, align 4, !tbaa !93 ; 2 uses
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = trunc i64 %i.fh to i16                  ; 2 uses
  %i.fj = sub i16 %.val3.i, %i.fi
  %i.fk = lshr i16 %i.fj, 3
  %i.fl = getelementptr i8, ptr %.1100, i64 16    ; 2 uses
  %.val4.i = load i16, ptr %i.fl, align 8, !tbaa !92
  %i.fm = sub i16 %.val3.i, %.val4.i
  %i.fn = lshr i16 %i.fm, 3
  %i.fo = icmp samesign ult i16 %i.fk, %i.fn
  br i1 %i.fo, label %bb.ak, label %cache_bin_low_water_adjust.exit

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.fi, ptr %i.fl, align 8, !tbaa !92
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %bb.aj, %bb.ak
  %i.fp = getelementptr inbounds nuw i8, ptr %.1100, i64 8 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !97
  %i.fr = add i64 %i.fq, %spec.select.i128196
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !97
  %i.fs = icmp ne i64 %spec.select.i128196, 0
  %or.cond198 = and i1 %.0.i123, %i.fs
  br i1 %or.cond198, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i128196, 7     ; 3 uses
  %i.ft = icmp samesign ult i64 %spec.select.i128196, 8
  br i1 %i.ft, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i128196, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0197 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gr, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.fu = getelementptr [8 x i8], ptr %i.ex, i64 %.0197
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 %storemerge.i, i1 false)
  %i.fw = getelementptr [8 x i8], ptr %i.ex, i64 %.0197
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.fy, i8 0, i64 %storemerge.i, i1 false)
  %i.fz = getelementptr [8 x i8], ptr %i.ex, i64 %.0197
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gb, i8 0, i64 %storemerge.i, i1 false)
  %i.gc = getelementptr [8 x i8], ptr %i.ex, i64 %.0197
  %i.gd = getelementptr i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %storemerge.i, i1 false)
  %i.gf = getelementptr [8 x i8], ptr %i.ex, i64 %.0197
  %i.gg = getelementptr i8, ptr %i.gf, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gh, i8 0, i64 %storemerge.i, i1 false)
  %i.gi = getelementptr [8 x i8], ptr %i.ex, i64 %.0197
  %i.gj = getelementptr i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gk, i8 0, i64 %storemerge.i, i1 false)
  %i.gl = getelementptr [8 x i8], ptr %i.ex, i64 %.0197
  %i.gm = getelementptr i8, ptr %i.gl, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gn, i8 0, i64 %storemerge.i, i1 false)
  %i.go = getelementptr [8 x i8], ptr %i.ex, i64 %.0197
  %i.gp = getelementptr i8, ptr %i.go, i64 56
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gq, i8 0, i64 %storemerge.i, i1 false)
  %i.gr = add nuw nsw i64 %.0197, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0197.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gr, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod218 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0197.epil = phi i64 [ %i.gu, %.lr.ph.epil ], [ %.0197.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gs = getelementptr [8 x i8], ptr %i.ex, i64 %.0197.epil
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr align 1 %i.gt, i8 0, i64 %storemerge.i, i1 false)
  %i.gu = add nuw nsw i64 %.0197.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !158

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gv = add i64 %spec.select.i128196, %.095
  %i.gw = add i64 %spec.select.i128196, %.1104
  br label %.critedge119

.critedge119:                                     ; preds = %bb.ae, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit.thread177, %tcache_get_from_ind.exit, %.loopexit, %bb.ai
  %.2105 = phi i64 [ %i.gw, %.loopexit ], [ %.1104, %tcache_get_from_ind.exit.thread177 ], [ %.1104, %bb.ai ], [ %.1104, %tcache_get_from_ind.exit ], [ %.1104, %mallocx_tcache_get.exit ], [ %.1104, %mallocx_tcache_get.exit.thread ], [ %.1104, %bb.ae ] ; 4 uses
  %.2101 = phi ptr [ %.1100, %.loopexit ], [ %.099, %tcache_get_from_ind.exit.thread177 ], [ %.099, %bb.ai ], [ %.099, %tcache_get_from_ind.exit ], [ %.099, %mallocx_tcache_get.exit ], [ %.099, %mallocx_tcache_get.exit.thread ], [ %.099, %bb.ae ] ; 2 uses
  %.196 = phi i64 [ %i.gv, %.loopexit ], [ %.095, %tcache_get_from_ind.exit.thread177 ], [ %.095, %bb.ai ], [ %.095, %tcache_get_from_ind.exit ], [ %.095, %mallocx_tcache_get.exit ], [ %.095, %mallocx_tcache_get.exit.thread ], [ %.095, %bb.ae ] ; 2 uses
  %i.gx = mul i64 %.196, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 1, ptr %4, align 8, !tbaa !110
  store <2 x ptr> %6, ptr %i.df, align 8, !tbaa !162
  store <2 x ptr> %8, ptr %i.di, align 8, !tbaa !162
  %i.gy = load i64, ptr %i.de, align 8, !tbaa !24 ; 2 uses
  %i.gz = add i64 %i.gy, %i.gx
  store i64 %i.gz, ptr %i.de, align 8, !tbaa !24
  %i.ha = load i64, ptr %i.dh, align 8, !tbaa !24
  %i.hb = sub i64 %i.ha, %i.gy
  %i.hc = icmp ult i64 %i.gx, %i.hb
  br i1 %i.hc, label %te_event_advance.exit, label %bb.al, !prof !11

bb.al:                                            ; preds = %.critedge119
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i132152, ptr noundef nonnull %4) #21
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %.critedge119, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.hd = icmp ult i64 %.196, %i.dk
  br i1 %i.hd, label %bb.am, label %select.unfold

bb.am:                                            ; preds = %te_event_advance.exit
  %i.he = call noalias ptr @duckdb_je_mallocx(i64 noundef %2, i32 noundef %3) #24 ; 2 uses
  %.not115 = icmp eq ptr %i.he, null
  br i1 %.not115, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hf = add i64 %.2105, 1
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2105
  store ptr %i.he, ptr %i.hg, align 8, !tbaa !91
  br label %select.unfold

select.unfold:                                    ; preds = %bb.an, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5 = phi ptr [ %.4, %bb.an ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %.6 = phi i64 [ %i.hf, %bb.an ], [ %.2105, %te_event_advance.exit ], [ %.0103, %arena_get_from_ind.exit ] ; 2 uses
  %.3102 = phi ptr [ %.2101, %bb.an ], [ %.2101, %te_event_advance.exit ], [ %.099, %arena_get_from_ind.exit ]
  %10 = phi i1 [ true, %bb.an ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  br i1 %10, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.am, %bb.v, %select.unfold, %bb.r, %sz_s2u_compute.exit29.i, %bb.j, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.7 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit29.i ], [ %.2105, %bb.am ], [ %.0103, %bb.v ], [ %.6, %select.unfold ], [ %.0103, %bb.r ]
  ret i64 %.7
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #11 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !0
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %arena_choose_impl.exit, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !94, !range !95, !noundef !96
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %arena_choose_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 2 uses
  %.not30.i = icmp eq ptr %i.p, null
  br i1 %.not30.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not31.i = icmp eq ptr %i.p, %i.j
  br i1 %.not31.i, label %arena_choose_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #21
  br label %arena_choose_impl.exit

bb.j:                                             ; preds = %bb.g
  tail call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #21
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.025.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.j ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.025.i
}

declare i64 @duckdb_je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal void @jemalloc_constructor() #2 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 84) #21 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  %i.c = trunc i64 %i.a to i32
  %i.d = select i1 %i.b, i32 1, i32 %i.c          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (...) @duckdb_malloc_ncpus() #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %.0 = zext i32 %.0.in to i64                    ; 2 uses
  %i.g = icmp eq i32 %.0.in, 0
  %spec.store.select = select i1 %i.g, i64 1, i64 %.0
  %i.h = lshr i64 %.0, 4
  %spec.store.select1 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @duckdb_je_JE_MALLOC_CONF_BUFFER, i64 noundef 200, ptr noundef nonnull @.str.78, i64 noundef 1000, i64 noundef 1000, i64 noundef %spec.store.select, i64 noundef %spec.store.select1) #21 ; 0 uses
  store ptr @duckdb_je_JE_MALLOC_CONF_BUFFER, ptr @duckdb_je_malloc_conf, align 8, !tbaa !136
  %i.j = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %malloc_init.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc zeroext i1 @malloc_init_hard() ; 0 uses
  br label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.d, %bb.c
  ret void
}

declare i32 @duckdb_malloc_ncpus(...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @duckdb_je_jemalloc_prefork() #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 19 uses
  %i.e = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 2624
  tail call void @duckdb_je_witness_prefork(ptr noundef nonnull %i.f) #21
  tail call void @duckdb_je_ctl_prefork(ptr noundef %.0.i) #21
  tail call void @duckdb_je_tcache_prefork(ptr noundef %.0.i) #21
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %.0.i, ptr noundef nonnull @duckdb_je_arenas_lock) #21
  tail call void @duckdb_je_background_thread_prefork0(ptr noundef %.0.i) #21
  tail call void @duckdb_je_prof_prefork0(ptr noundef %.0.i) #21
  tail call void @duckdb_je_background_thread_prefork1(ptr noundef %.0.i) #21
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03541 = phi i32 [ %i.j, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !9

arena_get.exit:                                   ; preds = %bb.c
  switch i32 %.03541, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork0(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

bb.e:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork1(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

bb.f:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork2(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

bb.g:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork3(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

bb.h:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork4(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

bb.i:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork5(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

bb.j:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork6(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

bb.k:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork7(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

bb.l:                                             ; preds = %arena_get.exit
  tail call void @duckdb_je_arena_prefork8(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

default.unreachable:                              ; preds = %arena_get.exit
  unreachable

end_hunk_0
