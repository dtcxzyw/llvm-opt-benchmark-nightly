Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/jemalloc?download=true
inline.NumInlined: 517
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@je_batch_alloc:bb.a
  br i1 %.not.i123, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !17

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %tsd_fetch_impl.exit.thread, !prof !16

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i124143 = phi ptr [ %i.d, %tsd_fetch_impl.exit ], [ %i.a, %bb.a ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.b, !prof !15

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.i = and i32 %3, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 5 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %2, 4097
  br i1 %i.n, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw nsw i64 %2, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30
  br label %aligned_usize_get.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.v, label %.critedge, label %bb.f, !prof !15

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
  br i1 %i.ai, label %bb.i, label %sz_s2u_compute.exit.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw nsw i64 %i.ah, 6
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !30
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
  br i1 %i.aw, label %aligned_usize_get.exit, label %.thread144

bb.j:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.l, 8070450532247928832
  br i1 %i.ax, label %.critedge, label %bb.k, !prof !121

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp ult i64 %2, 16385
  br i1 %i.ay, label %.thread144, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.az, label %sz_s2u_compute.exit29.i, label %bb.m, !prof !15

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
  br i1 %i.bg, label %.critedge, label %.thread144

.thread144:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.k
  %.0.i126 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bh = load i64, ptr @je_sz_large_pad, align 8, !tbaa !30
  %i.bi = add nuw i64 %i.k, 4094
  %i.bj = and i64 %i.bi, 9223372036854771712
  %i.bk = add nsw i64 %i.bj, -4096
  %i.bl = add i64 %i.bk, %.0.i126
  %i.bm = add i64 %i.bl, %i.bh
  %i.bn = icmp ult i64 %i.bm, %.0.i126
  %..0.i = select i1 %i.bn, i64 0, i64 %.0.i126
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread144, %sz_s2u.exit25.i, %bb.d, %bb.f
  %storemerge.i = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ %..0.i, %.thread144 ] ; 15 uses
  %i.bo = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.bo, -8070450532247928832
  br i1 %spec.select.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %aligned_usize_get.exit
  %i.bp = icmp samesign ult i64 %storemerge.i, 4097
  br i1 %i.bp, label %bb.o, label %sz_size2index_compute.exit, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.bq = add nuw nsw i64 %storemerge.i, 7
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18
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
  %i.ch = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.o, %sz_size2index_compute.exit
  %.0.i117 = phi i32 [ %i.bu, %bb.o ], [ %i.ch, %sz_size2index_compute.exit ] ; 4 uses
  %i.ci = and i32 %3, 64
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = load i8, ptr @je_opt_zero, align 1, !range !106
  %i.cl = trunc nuw i8 %i.ck to i1
  %.0.i115 = or i1 %i.cj, %i.cl                   ; 2 uses
  %i.cm = zext nneg i32 %.0.i117 to i64           ; 3 uses
  %i.cn = icmp samesign ugt i32 %.0.i117, 38      ; 2 uses
  br i1 %i.cn, label %bb.q, label %bb.p, !prof !15

bb.p:                                             ; preds = %sz_size2index.exit
  %i.co = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !137
  %i.cr = zext i32 %i.cq to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %sz_size2index.exit
  %.093 = phi i64 [ %i.cr, %bb.p ], [ 0, %sz_size2index.exit ] ; 2 uses
  %.not.i = icmp ult i32 %3, 1048576
  %i.cs = lshr i32 %3, 20
  %i.ct = add nsw i32 %i.cs, -1                   ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cu
  %i.cw = and i32 %3, 1048320                     ; 2 uses
  %i.cx = lshr exact i32 %i.cw, 8
  %i.cy = add nsw i32 %i.cx, -2                   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 880
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cm
  %i.db = zext nneg i32 %i.cy to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 840 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i124143, i64 848
  %.not221 = icmp eq i64 %1, 0
  br i1 %.not221, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %5 = insertelement <2 x ptr> poison, ptr %i.dc, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.de, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %i.df, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %i.dh, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %select.unfold171
  %.094214 = phi ptr [ %.3, %select.unfold171 ], [ null, %bb.r ] ; 3 uses
  %.097213 = phi i64 [ %.5, %select.unfold171 ], [ 0, %bb.r ] ; 6 uses
  %.0135212 = phi ptr [ %.4139, %select.unfold171 ], [ null, %bb.r ] ; 3 uses
  %i.di = sub nuw i64 %1, %.097213                ; 6 uses
  %.not = icmp ult i64 %i.di, %.093
  %or.cond = select i1 %i.cn, i1 true, i1 %.not, !prof !167
  br i1 %or.cond, label %bb.w, label %bb.t, !prof !167

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %.0135212, null
  br i1 %i.dj, label %bb.u, label %arena_get_from_ind.exit.thread159

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i, label %arena_get_from_ind.exit, label %mallocx_arena_get.exit, !prof !17

mallocx_arena_get.exit:                           ; preds = %bb.u
  %i.dk = load atomic ptr, ptr %i.cv acquire, align 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %arena_get.exit, label %arena_get_from_ind.exit.thread159, !prof !15

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.dm = call ptr @je_arena_init(ptr noundef nonnull %.0.i124143, i32 noundef %i.ct, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.v, label %arena_get_from_ind.exit.thread159, !prof !16

bb.v:                                             ; preds = %arena_get.exit
  %i.do = load i32, ptr @je_narenas_auto, align 4, !tbaa !14
  %.not.i119 = icmp ult i32 %i.ct, %i.do
  br i1 %.not.i119, label %arena_get_from_ind.exit, label %.critedge

arena_get_from_ind.exit:                          ; preds = %bb.v, %bb.u
  %i.dp = call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i124143, ptr noundef null) ; 2 uses
  %.not191 = icmp eq ptr %i.dp, null
  br i1 %.not191, label %.critedge, label %arena_get_from_ind.exit.thread159

arena_get_from_ind.exit.thread159:                ; preds = %mallocx_arena_get.exit, %arena_get.exit, %arena_get_from_ind.exit, %bb.t
  %.3138 = phi ptr [ %i.dp, %arena_get_from_ind.exit ], [ %.0135212, %bb.t ], [ %i.dm, %arena_get.exit ], [ %i.dk, %mallocx_arena_get.exit ] ; 2 uses
  %i.dq = urem i64 %i.di, %.093
  %i.dr = sub nuw i64 %i.di, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.097213
  %i.dt = call i64 @je_arena_fill_small_fresh(ptr noundef nonnull %.0.i124143, ptr noundef nonnull %.3138, i32 noundef %.0.i117, ptr noundef %i.ds, i64 noundef %i.dr, i1 noundef zeroext %.0.i115) #20 ; 2 uses
  %i.du = add i64 %i.dt, %.097213
  br label %bb.w

bb.w:                                             ; preds = %arena_get_from_ind.exit.thread159, %bb.s
  %.4139 = phi ptr [ %.0135212, %bb.s ], [ %.3138, %arena_get_from_ind.exit.thread159 ]
  %.198 = phi i64 [ %.097213, %bb.s ], [ %i.du, %arena_get_from_ind.exit.thread159 ] ; 7 uses
  %.090 = phi i64 [ 0, %bb.s ], [ %i.dt, %arena_get_from_ind.exit.thread159 ] ; 8 uses
  %i.dv = load i32, ptr @je_nhbins, align 4, !tbaa !14
  %i.dw = icmp ult i32 %.0.i117, %i.dv
  %i.dx = icmp ult i64 %.090, %i.di
  %or.cond112 = select i1 %i.dw, i1 %i.dx, i1 false, !prof !19
  br i1 %or.cond112, label %bb.x, label %tcache_get_from_ind.exit.thread, !prof !19

bb.x:                                             ; preds = %bb.w
  %i.dy = icmp eq ptr %.094214, null
  br i1 %i.dy, label %bb.y, label %tcache_get_from_ind.exit.thread179

bb.y:                                             ; preds = %bb.x
  switch i32 %i.cw, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %tcache_get_from_ind.exit.thread
  ], !prof !131

mallocx_tcache_get.exit:                          ; preds = %bb.y
  switch i32 %i.cy, label %bb.z [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %tcache_get_from_ind.exit.thread
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %bb.y, %mallocx_tcache_get.exit
  %i.dz = load i8, ptr %.0.i124143, align 1, !tbaa !105, !range !106, !noundef !107
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %tcache_get_from_ind.exit.thread179, label %tcache_get_from_ind.exit.thread

bb.z:                                             ; preds = %mallocx_tcache_get.exit
  %i.eb = load ptr, ptr @je_tcaches, align 8, !tbaa !133
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.db ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !18 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.ed to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
  ], !prof !134

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %i.cy) #20
  call void @abort() #21
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ee = call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i124143) #20 ; 2 uses
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !18
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.ab, %bb.z
  %i.ef = phi ptr [ %i.ee, %bb.ab ], [ %i.ed, %bb.z ] ; 2 uses
  %.not107 = icmp eq ptr %i.ef, null
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.cm
  br i1 %.not107, label %tcache_get_from_ind.exit.thread, label %tcache_get_from_ind.exit.thread179

tcache_get_from_ind.exit.thread179:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit, %bb.x
  %.296.ph = phi ptr [ %.094214, %bb.x ], [ %i.eh, %tcache_get_from_ind.exit ], [ %i.da, %mallocx_tcache_get.exit.thread ] ; 7 uses
  %i.ei = sub nuw i64 %i.di, %.090
  %i.ej = getelementptr [8 x i8], ptr %0, i64 %.198 ; 10 uses
  %.296.val = load ptr, ptr %.296.ph, align 8, !tbaa !97 ; 2 uses
  %i.ek = getelementptr i8, ptr %.296.ph, i64 20  ; 2 uses
  %.296.val127 = load i16, ptr %i.ek, align 4, !tbaa !100
  %i.el = ptrtoint ptr %.296.val to i64
  %i.em = trunc i64 %i.el to i16
  %i.en = sub i16 %.296.val127, %i.em
  %i.eo = lshr i16 %i.en, 3
  %i.ep = zext nneg i16 %i.eo to i64
  %spec.select.i120192 = call i64 @llvm.umin.i64(i64 %i.ei, i64 %i.ep) ; 9 uses
  %i.eq = shl nuw nsw i64 %spec.select.i120192, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ej, ptr align 8 %.296.val, i64 %i.eq, i1 false)
  %i.er = load ptr, ptr %.296.ph, align 8, !tbaa !97
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %spec.select.i120192 ; 2 uses
  store ptr %i.es, ptr %.296.ph, align 8, !tbaa !97
  %.val3.i = load i16, ptr %i.ek, align 4, !tbaa !100 ; 2 uses
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = trunc i64 %i.et to i16                  ; 2 uses
  %i.ev = sub i16 %.val3.i, %i.eu
  %i.ew = lshr i16 %i.ev, 3
  %i.ex = getelementptr i8, ptr %.296.ph, i64 16  ; 2 uses
  %.val4.i = load i16, ptr %i.ex, align 8, !tbaa !99
  %i.ey = sub i16 %.val3.i, %.val4.i
  %i.ez = lshr i16 %i.ey, 3
  %i.fa = icmp samesign ult i16 %i.ew, %i.ez
  br i1 %i.fa, label %bb.ac, label %cache_bin_low_water_adjust.exit

bb.ac:                                            ; preds = %tcache_get_from_ind.exit.thread179
  store i16 %i.eu, ptr %i.ex, align 8, !tbaa !99
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %tcache_get_from_ind.exit.thread179, %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %.296.ph, i64 8 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !108
  %i.fd = add i64 %i.fc, %spec.select.i120192
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !108
  %i.fe = icmp ne i64 %spec.select.i120192, 0
  %or.cond194 = and i1 %.0.i115, %i.fe
  br i1 %or.cond194, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i120192, 7     ; 3 uses
  %i.ff = icmp samesign ult i64 %spec.select.i120192, 8
  br i1 %i.ff, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i120192, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0193 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gd, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.fg = getelementptr [8 x i8], ptr %i.ej, i64 %.0193
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr align 1 %i.fh, i8 0, i64 %storemerge.i, i1 false)
  %i.fi = getelementptr [8 x i8], ptr %i.ej, i64 %.0193
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr align 1 %i.fk, i8 0, i64 %storemerge.i, i1 false)
  %i.fl = getelementptr [8 x i8], ptr %i.ej, i64 %.0193
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr align 1 %i.fn, i8 0, i64 %storemerge.i, i1 false)
  %i.fo = getelementptr [8 x i8], ptr %i.ej, i64 %.0193
  %i.fp = getelementptr i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr align 1 %i.fq, i8 0, i64 %storemerge.i, i1 false)
  %i.fr = getelementptr [8 x i8], ptr %i.ej, i64 %.0193
  %i.fs = getelementptr i8, ptr %i.fr, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr align 1 %i.ft, i8 0, i64 %storemerge.i, i1 false)
  %i.fu = getelementptr [8 x i8], ptr %i.ej, i64 %.0193
  %i.fv = getelementptr i8, ptr %i.fu, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr align 1 %i.fw, i8 0, i64 %storemerge.i, i1 false)
  %i.fx = getelementptr [8 x i8], ptr %i.ej, i64 %.0193
  %i.fy = getelementptr i8, ptr %i.fx, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr align 1 %i.fz, i8 0, i64 %storemerge.i, i1 false)
  %i.ga = getelementptr [8 x i8], ptr %i.ej, i64 %.0193
  %i.gb = getelementptr i8, ptr %i.ga, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr align 1 %i.gc, i8 0, i64 %storemerge.i, i1 false)
  %i.gd = add nuw nsw i64 %.0193, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !165

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0193.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gd, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0193.epil = phi i64 [ %i.gg, %.lr.ph.epil ], [ %.0193.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ge = getelementptr [8 x i8], ptr %i.ej, i64 %.0193.epil
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr align 1 %i.gf, i8 0, i64 %storemerge.i, i1 false)
  %i.gg = add nuw nsw i64 %.0193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !166

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gh = add i64 %spec.select.i120192, %.090
  %i.gi = add i64 %spec.select.i120192, %.198
  br label %tcache_get_from_ind.exit.thread

tcache_get_from_ind.exit.thread:                  ; preds = %bb.y, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit, %.loopexit, %bb.w
  %.299 = phi i64 [ %i.gi, %.loopexit ], [ %.198, %bb.w ], [ %.198, %tcache_get_from_ind.exit ], [ %.198, %mallocx_tcache_get.exit ], [ %.198, %mallocx_tcache_get.exit.thread ], [ %.198, %bb.y ] ; 4 uses
  %.3 = phi ptr [ %.296.ph, %.loopexit ], [ %.094214, %bb.w ], [ null, %tcache_get_from_ind.exit ], [ null, %mallocx_tcache_get.exit ], [ null, %mallocx_tcache_get.exit.thread ], [ null, %bb.y ]
  %.191 = phi i64 [ %i.gh, %.loopexit ], [ %.090, %bb.w ], [ %.090, %tcache_get_from_ind.exit ], [ %.090, %mallocx_tcache_get.exit ], [ %.090, %mallocx_tcache_get.exit.thread ], [ %.090, %bb.y ] ; 2 uses
  %i.gj = mul i64 %.191, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !112
  store <2 x ptr> %6, ptr %i.dd, align 8, !tbaa !169
  store <2 x ptr> %8, ptr %i.dg, align 8, !tbaa !169
  %i.gk = load i64, ptr %i.dc, align 8, !tbaa !30 ; 2 uses
  %i.gl = add i64 %i.gk, %i.gj
  store i64 %i.gl, ptr %i.dc, align 8, !tbaa !30
  %i.gm = load i64, ptr %i.df, align 8, !tbaa !30
  %i.gn = sub i64 %i.gm, %i.gk
  %i.go = icmp ult i64 %i.gj, %i.gn
  br i1 %i.go, label %te_event_advance.exit, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %tcache_get_from_ind.exit.thread
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i124143, ptr noundef nonnull %4) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %tcache_get_from_ind.exit.thread, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.gp = icmp ult i64 %.191, %i.di
  br i1 %i.gp, label %bb.ae, label %select.unfold171

bb.ae:                                            ; preds = %te_event_advance.exit
  %i.gq = call noalias ptr @je_mallocx(i64 noundef %2, i32 noundef %3) #23 ; 2 uses
  %.not109 = icmp eq ptr %i.gq, null
  br i1 %.not109, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gr = add i64 %.299, 1
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.299
  store ptr %i.gq, ptr %i.gs, align 8, !tbaa !98
  br label %select.unfold171

select.unfold171:                                 ; preds = %bb.af, %te_event_advance.exit
  %.5 = phi i64 [ %i.gr, %bb.af ], [ %.299, %te_event_advance.exit ] ; 3 uses
  %9 = icmp ult i64 %.5, %1
  br i1 %9, label %bb.s, label %.critedge

.critedge:                                        ; preds = %select.unfold171, %bb.v, %bb.ae, %arena_get_from_ind.exit, %bb.q, %sz_s2u_compute.exit29.i, %bb.j, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.6 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit29.i ], [ 0, %bb.q ], [ %.097213, %arena_get_from_ind.exit ], [ %.299, %bb.ae ], [ %.5, %select.unfold171 ], [ %.097213, %bb.v ]
  ret i64 %.6
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #9 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !18
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !0
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !105, !range !106, !noundef !107
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !14 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.0.i, i64 78928   ; 2 uses
  %.0.val48.i = load i32, ptr %i.s, align 8, !tbaa !86
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %i.w = and i32 %i.u, 1
  %i.x = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.x, %i.w
  %.0.i47.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.y = icmp ult i32 %.0.val48.i, %.0.i47.i
  br i1 %i.y, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !171
  %.not45.i = icmp eq ptr %i.aa, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @sched_getcpu() #20       ; 3 uses
  %i.ac = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !14
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @je_ncpus, align 4, !tbaa !14
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = icmp ult i32 %i.ab, %i.af
  %i.ah = select i1 %i.ag, i32 0, i32 %i.af
  %spec.select.i.i = sub nuw i32 %i.ab, %i.ah
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.ab, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.0.val.i = load i32, ptr %i.s, align 8, !tbaa !86
  %.not46.i = icmp eq i32 %.0.val.i, %.0.i.i
  br i1 %.not46.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !39  ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 78928
  %.val.i.i = load i32, ptr %i.aj, align 8, !tbaa !86
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = zext i32 %.0.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %arena_get.exit.i.i, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef nonnull @je_arena_config_default), !inline_history !0
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.am, %bb.p ] ; 3 uses
  tail call void @je_arena_nthreads_dec(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20
  tail call void @je_arena_nthreads_inc(ptr noundef %.0.i18.i.i, i1 noundef zeroext false) #20
  store ptr %.0.i18.i.i, ptr %i.g, align 8, !tbaa !39
  %i.ap = tail call i32 @je_arena_nthreads_get(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %je_arena_migrate.exit.i.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %je_arena_migrate.exit.i.i

je_arena_migrate.exit.i.i:                        ; preds = %bb.r, %arena_get.exit.i.i
  %i.ar = load i8, ptr %0, align 8, !tbaa !105, !range !106, !noundef !107
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.s, label %percpu_arena_update.exit.i

bb.s:                                             ; preds = %je_arena_migrate.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.au, ptr noundef nonnull %i.at, ptr noundef %.0.i18.i.i) #20
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.s, %je_arena_migrate.exit.i.i, %bb.o
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !39
  br label %bb.t

bb.t:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.av, %percpu_arena_update.exit.i ], [ %.0.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.aw, align 8, !tbaa !171
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.t
  %.037.i = phi ptr [ %1, %bb.a ], [ %.0.i, %percpu_arena_ind_limit.exit.i ], [ %.0.i, %bb.k ], [ %.1.i, %bb.t ], [ %.0.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.037.i
}

declare i64 @je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal void @jemalloc_constructor() #1 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !14
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard() ; 0 uses
  br label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_prefork() #1 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !18
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 19 uses
  %i.e = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 2704
  tail call void @je_witness_prefork(ptr noundef nonnull %i.f) #20
  tail call void @je_ctl_prefork(ptr noundef %.0.i) #20
  tail call void @je_tcache_prefork(ptr noundef %.0.i) #20
  tail call void @je_malloc_mutex_prefork(ptr noundef %.0.i, ptr noundef nonnull @je_arenas_lock) #20
end_hunk_0
