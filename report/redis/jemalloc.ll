inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@je_malloc_default:bb.a
  %i.ax = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ad
  %.val = load i16, ptr %i.ay, align 2, !tbaa !102
  %i.az = icmp eq i16 %.val, 0
  br i1 %i.az, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.av, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit.i57, %bb.j
  %.0.i22.i62.ph = phi ptr [ %i.ba, %bb.j ], [ null, %cache_bin_alloc_impl.exit.i57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit70

bb.k:                                             ; preds = %bb.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aj, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.bb = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.av, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aj, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %.not260 = icmp eq i8 %i.bc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not260, label %aligned_usize_get.exit.i.thread, label %cache_bin_alloc_impl.exit.i57.thread

cache_bin_alloc_impl.exit.i57.thread:             ; preds = %bb.h, %bb.f, %bb.k
  %.131.i.i65 = phi ptr [ %i.bb, %bb.k ], [ %i.al, %bb.f ], [ %i.al, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !107
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !107
  br label %imalloc_no_sample.exit70

bb.l:                                             ; preds = %iallocztm.exit.i39
  %i.bg = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i41 = icmp ugt i64 %0, %i.bg
  br i1 %.not24.i.i41, label %bb.r, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 880
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.ad ; 7 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !98 ; 2 uses
  %i.bp = trunc i64 %i.bl to i16
  %.not.i26.i42 = icmp eq i16 %i.bo, %i.bp
  br i1 %.not.i26.i42, label %bb.o, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !92
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !99
  %.not21.i28.i55 = icmp eq i16 %i.br, %i.bo
  br i1 %.not21.i28.i55, label %cache_bin_alloc_impl.exit29.i43, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !92
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = trunc i64 %i.bs to i16
  store i16 %i.bt, ptr %i.bn, align 8, !tbaa !98
  br label %bb.q

cache_bin_alloc_impl.exit29.i43:                  ; preds = %bb.o
  %i.bu = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i77276, ptr noundef null) ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %aligned_usize_get.exit.i.thread, label %sz_s2u.exit.i48, !prof !11

sz_s2u.exit.i48:                                  ; preds = %cache_bin_alloc_impl.exit29.i43
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.bi, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.bw = shl nuw i64 %0, 1
  %i.bx = add i64 %i.bw, -1
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bx, i1 true) ; 2 uses
  %notmask.i.i45 = ashr exact i64 -1152921504606846976, %i.by
  %i.bz = lshr i64 1152921504606846975, %i.by
  %i.ca = add nuw nsw i64 %0, %i.bz
  %i.cb = and i64 %i.ca, %notmask.i.i45
  %i.cc = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.bu, i64 noundef %i.cb, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit70

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !107
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !107
  br label %imalloc_no_sample.exit70

bb.r:                                             ; preds = %bb.l
  %i.cg = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i77276, ptr noundef null, i64 noundef %0, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit70

imalloc_no_sample.exit70:                         ; preds = %bb.r, %.thread, %cache_bin_alloc_impl.exit.i57.thread, %bb.q, %sz_s2u.exit.i48
  %.0.i21.i53 = phi ptr [ %i.cg, %bb.r ], [ %.0.i22.i62.ph, %.thread ], [ %.131.i.i65, %cache_bin_alloc_impl.exit.i57.thread ], [ %i.bk, %bb.q ], [ %i.cc, %sz_s2u.exit.i48 ] ; 2 uses
  %i.ch = icmp eq ptr %.0.i21.i53, null
  br i1 %i.ch, label %aligned_usize_get.exit.i.thread, label %bb.s, !prof !108

bb.s:                                             ; preds = %imalloc_no_sample.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 840 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !112
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !113
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !114
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 848
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !115
  %i.cq = load i64, ptr %i.ci, align 8, !tbaa !27 ; 2 uses
  %i.cr = add i64 %i.cq, %i.af
  store i64 %i.cr, ptr %i.ci, align 8, !tbaa !27
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !27
  %i.ct = sub i64 %i.cs, %i.cq
  %i.cu = icmp ult i64 %i.af, %i.ct
  br i1 %i.cu, label %bb.u, label %bb.t, !prof !13

bb.t:                                             ; preds = %bb.s
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %2) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %cache_bin_alloc_impl.exit29.i43, %bb.k, %bb.c, %sz_size2index.exit.i, %imalloc_no_sample.exit70
  %.sroa.11.1 = phi i64 [ %i.af, %imalloc_no_sample.exit70 ], [ 0, %bb.c ], [ 0, %sz_size2index.exit.i ], [ %i.af, %bb.k ], [ %i.af, %cache_bin_alloc_impl.exit29.i43 ]
  %i.cv = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.cv, align 4, !tbaa !7
  br label %imalloc.exit

bb.v:                                             ; preds = %tsd_fetch_impl.exit
  %i.cw = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.x, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.cy = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.cy, label %imalloc_init_check.exit, label %bb.x, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.w
  %i.cz = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.cz, align 4, !tbaa !7
  br label %imalloc.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.da = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.db = trunc nuw i8 %i.da to i1                ; 6 uses
  %i.dc = icmp ult i64 %0, 4097
  br i1 %i.dc, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.dd = add nuw nsw i64 %0, 7
  %i.de = lshr i64 %i.dd, 3
  %i.df = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dh = zext i8 %i.dg to i32
  br label %sz_size2index.exit.i20

bb.z:                                             ; preds = %bb.x
  %i.di = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.di, label %aligned_usize_get.exit.i14.thread, label %bb.aa, !prof !11

bb.aa:                                            ; preds = %bb.z
  %i.dj = shl nuw i64 %0, 1
  %i.dk = add i64 %i.dj, -1
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dk, i1 true) ; 3 uses
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = sub nuw nsw i64 60, %i.dl
  %i.do = ashr exact i64 -1152921504606846976, %i.dl
  %i.dp = add nsw i64 %0, -1
  %i.dq = and i64 %i.do, %i.dp
  %i.dr = lshr i64 %i.dq, %i.dn
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = and i32 %i.ds, 3
  %i.du = shl nuw nsw i32 %i.dm, 2
  %reass.sub = sub nsw i32 %i.dt, %i.du
  %i.dv = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i20

sz_size2index.exit.i20:                           ; preds = %bb.aa, %bb.y
  %.0.i50.i21 = phi i32 [ %i.dh, %bb.y ], [ %i.dv, %bb.aa ] ; 7 uses
  %i.dw = icmp samesign ugt i32 %.0.i50.i21, 234
  br i1 %i.dw, label %aligned_usize_get.exit.i14.thread, label %bb.ab, !prof !117

bb.ab:                                            ; preds = %sz_size2index.exit.i20
  %i.dx = zext nneg i32 %.0.i50.i21 to i64        ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dx ; 3 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !27 ; 9 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !14
  %i.ec = icmp sgt i8 %i.eb, 0
  br i1 %i.ec, label %tcache_get_from_ind.exit.i, label %bb.ac, !prof !118

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load i8, ptr %i.g, align 1, !tbaa !104, !range !105, !noundef !106
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 872 ; 3 uses
  br i1 %i.ee, label %iallocztm.exit.i, label %iallocztm.exit.i.thread

tcache_get_from_ind.exit.i:                       ; preds = %bb.ab
  %i.eg = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %arena_get.exit112, label %iallocztm.exit.i.thread, !prof !11

arena_get.exit112:                                ; preds = %tcache_get_from_ind.exit.i
  %i.ei = tail call ptr @je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ad, label %iallocztm.exit.i.thread, !prof !12

bb.ad:                                            ; preds = %arena_get.exit112
  %i.ek = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i14.thread, label %iallocztm.exit.i.thread

iallocztm.exit.i:                                 ; preds = %bb.ac
  %i.el = icmp samesign ult i64 %0, 14337
  br i1 %i.el, label %bb.ae, label %bb.an, !prof !13

bb.ae:                                            ; preds = %iallocztm.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.dx ; 8 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !92 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !97 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.et = load i16, ptr %i.es, align 8, !tbaa !98 ; 2 uses
  %i.eu = trunc i64 %i.eq to i16
  %.not.i24.i = icmp eq i16 %i.et, %i.eu
  br i1 %.not.i24.i, label %bb.ag, label %bb.af, !prof !11

bb.af:                                            ; preds = %bb.ae
  store ptr %i.er, ptr %i.en, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ag:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ew = load i16, ptr %i.ev, align 4, !tbaa !99
  %.not21.i.i = icmp eq i16 %i.ew, %i.et
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.ah, !prof !11

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.er, ptr %i.en, align 8, !tbaa !92
  %i.ex = ptrtoint ptr %i.er to i64
  %i.ey = trunc i64 %i.ex to i16
  store i16 %i.ey, ptr %i.es, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ez = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %.thread244, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.fb = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %i.dx
  %.val105 = load i16, ptr %i.fc, align 2, !tbaa !102
  %i.fd = icmp eq i16 %.val105, 0
  br i1 %i.fd, label %bb.aj, label %bb.ak, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.fe = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ez, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0.i50.i21, i1 noundef zeroext %i.db) #20
  br label %.thread244

.thread244:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.aj
  %.0.i22.i.ph = phi ptr [ %i.fe, %bb.aj ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.ak:                                            ; preds = %bb.ai
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.en, i32 noundef %.0.i50.i21, i1 noundef zeroext true) #20
  %i.ff = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ez, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.en, i32 noundef %.0.i50.i21, ptr noundef nonnull %i.b) #20
  %i.fg = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %.not259 = icmp eq i8 %i.fg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %.not259, label %aligned_usize_get.exit.i14.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.ah, %bb.af, %bb.ak
  %.131.i.i = phi ptr [ %i.ff, %bb.ak ], [ %i.ep, %bb.af ], [ %i.ep, %bb.ah ] ; 2 uses
  br i1 %i.db, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.fh = load i64, ptr %i.dy, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.fh, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %cache_bin_alloc_impl.exit.i.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !107
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

bb.an:                                            ; preds = %iallocztm.exit.i
  %i.fl = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i = icmp ugt i64 %0, %i.fl
  br i1 %.not24.i.i, label %iallocztm.exit.i.thread, label %bb.ao, !prof !11

bb.ao:                                            ; preds = %bb.an
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.dx ; 7 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !92 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !97 ; 2 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 8, !tbaa !98 ; 2 uses
  %i.fu = trunc i64 %i.fq to i16
  %.not.i26.i = icmp eq i16 %i.ft, %i.fu
  br i1 %.not.i26.i, label %bb.aq, label %bb.ap, !prof !11

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.fr, ptr %i.fn, align 8, !tbaa !92
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  %i.fw = load i16, ptr %i.fv, align 4, !tbaa !99
  %.not21.i28.i = icmp eq i16 %i.fw, %i.ft
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.ar, !prof !11

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.fr, ptr %i.fn, align 8, !tbaa !92
  %i.fx = ptrtoint ptr %i.fr to i64
  %i.fy = trunc i64 %i.fx to i16
  store i16 %i.fy, ptr %i.fs, align 8, !tbaa !98
  br label %bb.as

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.aq
  %i.fz = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %aligned_usize_get.exit.i14.thread, label %sz_s2u.exit.i, !prof !11

sz_s2u.exit.i:                                    ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.fn, i32 noundef %.0.i50.i21, i1 noundef zeroext false) #20
  %i.gb = shl nuw i64 %0, 1
  %i.gc = add i64 %i.gb, -1
  %i.gd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gc, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gd
  %i.ge = lshr i64 1152921504606846975, %i.gd
  %i.gf = add nuw nsw i64 %0, %i.ge
  %i.gg = and i64 %i.gf, %notmask.i.i
  %i.gh = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fz, i64 noundef %i.gg, i1 noundef zeroext %i.db) #20
  br label %imalloc_no_sample.exit

bb.as:                                            ; preds = %bb.ap, %bb.ar
  br i1 %i.db, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.gi = load i64, ptr %i.dy, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fp, i8 0, i64 %i.gi, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !107
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

iallocztm.exit.i.thread:                          ; preds = %tcache_get_from_ind.exit.i, %bb.ad, %arena_get.exit112, %bb.ac, %bb.an
  %.1196.ph282 = phi ptr [ null, %bb.an ], [ %i.eg, %tcache_get_from_ind.exit.i ], [ null, %bb.ad ], [ %i.ei, %arena_get.exit112 ], [ null, %bb.ac ]
  %i.gm = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1196.ph282, i64 noundef %0, i32 noundef %.0.i50.i21, i1 noundef zeroext %i.db) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %iallocztm.exit.i.thread, %.thread244, %bb.am, %bb.au, %sz_s2u.exit.i
  %.0.i32 = phi ptr [ %i.gh, %sz_s2u.exit.i ], [ %i.gm, %iallocztm.exit.i.thread ], [ %.0.i22.i.ph, %.thread244 ], [ %.131.i.i, %bb.am ], [ %i.fp, %bb.au ] ; 4 uses
  %i.gn = icmp eq ptr %.0.i32, null
  br i1 %i.gn, label %aligned_usize_get.exit.i14.thread, label %bb.av, !prof !119

bb.av:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 840 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !112
  %i.gq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !113
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !114
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 848
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !115
  %i.gw = load i64, ptr %i.go, align 8, !tbaa !27 ; 2 uses
  %i.gx = add i64 %i.gw, %i.dz
  store i64 %i.gx, ptr %i.go, align 8, !tbaa !27
  %i.gy = load i64, ptr %i.gs, align 8, !tbaa !27
  %i.gz = sub i64 %i.gy, %i.gw
  %i.ha = icmp ult i64 %i.dz, %i.gz
  br i1 %i.ha, label %bb.ax, label %bb.aw, !prof !13

bb.aw:                                            ; preds = %bb.av
end_hunk_0
begin_hunk_1_@je_posix_memalign:bb.a
  br i1 %i.ae, label %aligned_usize_get.exit.i, label %.thread205

bb.g:                                             ; preds = %bb.d
  %i.af = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.af, label %imalloc.exit, label %bb.h, !prof !122

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp ult i64 %.016.i.i, 16385
  br i1 %i.ag, label %.thread205, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp ugt i64 %.016.i.i, 8070450532247928832
  br i1 %i.ah, label %imalloc.exit, label %sz_s2u_compute.exit29.i94, !prof !11

sz_s2u_compute.exit29.i94:                        ; preds = %bb.i
  %i.ai = shl nuw i64 %.016.i.i, 1
  %i.aj = add i64 %i.ai, -1
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.aj, i1 true) ; 2 uses
  %notmask.i27.i93 = ashr exact i64 -1152921504606846976, %i.ak
  %i.al = lshr i64 1152921504606846975, %i.ak
  %i.am = add nuw nsw i64 %.016.i.i, %i.al
  %i.an = and i64 %i.am, %notmask.i27.i93         ; 2 uses
  %i.ao = icmp samesign ult i64 %i.an, %.016.i.i
  br i1 %i.ao, label %imalloc.exit, label %.thread205

.thread205:                                       ; preds = %sz_s2u.exit25.i104, %sz_s2u_compute.exit29.i94, %bb.h
  %.0.i98 = phi i64 [ %i.an, %sz_s2u_compute.exit29.i94 ], [ 16384, %bb.h ], [ 16384, %sz_s2u.exit25.i104 ] ; 3 uses
  %i.ap = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.aq = add nuw nsw i64 %1, 4095
  %i.ar = and i64 %i.aq, 9223372036854771712
  %i.as = add nsw i64 %i.ar, -4096
  %i.at = add nuw i64 %i.as, %.0.i98
  %i.au = add i64 %i.at, %i.ap
  %i.av = icmp ult i64 %i.au, %.0.i98
  %..0.i99 = select i1 %i.av, i64 0, i64 %.0.i98
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread205, %sz_s2u.exit25.i104
  %.018.i100 = phi i64 [ %..0.i99, %.thread205 ], [ %.0.i24.i105, %sz_s2u.exit25.i104 ] ; 4 uses
  %i.aw = add nsw i64 %.018.i100, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.aw, -8070450532247928832
  br i1 %spec.select.i.i, label %imalloc.exit, label %imalloc_no_sample.exit73

imalloc_no_sample.exit73:                         ; preds = %aligned_usize_get.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 872
  %i.ay = tail call ptr @je_arena_palloc(ptr noundef nonnull %.0.i80249, ptr noundef null, i64 noundef %.018.i100, i64 noundef %1, i1 noundef zeroext false, ptr noundef nonnull %i.ax) #20 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %imalloc.exit, label %bb.j, !prof !11

bb.j:                                             ; preds = %imalloc_no_sample.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 840 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !112
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !113
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !114
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 848
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !115
  %i.bi = load i64, ptr %i.ba, align 8, !tbaa !27 ; 2 uses
  %i.bj = add i64 %i.bi, %.018.i100
  store i64 %i.bj, ptr %i.ba, align 8, !tbaa !27
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !27
  %i.bl = sub i64 %i.bk, %i.bi
  %i.bm = icmp ult i64 %.018.i100, %i.bl
  br i1 %i.bm, label %bb.l, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i80249, ptr noundef nonnull %3) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store ptr %i.ay, ptr %0, align 8, !tbaa !97
  br label %imalloc.exit

bb.m:                                             ; preds = %tsd_fetch_impl.exit
  %i.bn = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %compute_size_with_overflow.exit, label %bb.n, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.bp = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bp, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.n
  %i.bq = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.bq, align 4, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !97
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.n, %bb.m
  %i.br = icmp ult i64 %1, 8
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.bt = icmp samesign ugt i64 %i.bs, 1
  %or.cond47.i11 = select i1 %i.br, i1 true, i1 %i.bt, !prof !121
  br i1 %or.cond47.i11, label %aligned_usize_get.exit.i17.thread, label %bb.o, !prof !121

bb.o:                                             ; preds = %compute_size_with_overflow.exit
  %i.bu = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.bv = trunc nuw i8 %i.bu to i1                ; 2 uses
  %i.bw = icmp eq i64 %2, 0
  br i1 %i.bw, label %bb.p, label %bb.q, !prof !118

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.016.i.i15 = phi i64 [ 1, %bb.p ], [ %2, %bb.o ] ; 7 uses
  %i.bx = icmp ult i64 %.016.i.i15, 14337
  %i.by = icmp ult i64 %1, 4097
  %or.cond.i86 = and i1 %i.by, %i.bx
  br i1 %or.cond.i86, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bz = add nsw i64 %1, -1
  %i.ca = add nuw nsw i64 %i.bz, %.016.i.i15
  %i.cb = sub nsw i64 0, %1
  %i.cc = and i64 %i.ca, %i.cb                    ; 4 uses
  %i.cd = icmp samesign ult i64 %i.cc, 4097
  br i1 %i.cd, label %bb.s, label %sz_s2u_compute.exit.i91, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.ce = add nuw nsw i64 %i.cc, 7
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i91:                          ; preds = %bb.r
  %i.cl = shl nuw nsw i64 %i.cc, 1
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cm, i1 true) ; 2 uses
  %notmask.i.i90 = ashr exact i64 -1152921504606846976, %i.cn
  %i.co = lshr i64 1152921504606846975, %i.cn
  %i.cp = add nuw nsw i64 %i.cc, %i.co
  %i.cq = and i64 %i.cp, %notmask.i.i90
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i91, %bb.s
  %.0.i24.i = phi i64 [ %i.ck, %bb.s ], [ %i.cq, %sz_s2u_compute.exit.i91 ] ; 2 uses
  %i.cr = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.cr, label %aligned_usize_get.exit.i17, label %.thread212

bb.t:                                             ; preds = %bb.q
  %i.cs = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.cs, label %aligned_usize_get.exit.i17.thread, label %bb.u, !prof !123

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp ult i64 %.016.i.i15, 16385
  br i1 %i.ct, label %.thread212, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp ugt i64 %.016.i.i15, 8070450532247928832
  br i1 %i.cu, label %aligned_usize_get.exit.i17.thread, label %sz_s2u_compute.exit29.i, !prof !11

sz_s2u_compute.exit29.i:                          ; preds = %bb.v
  %i.cv = shl nuw i64 %.016.i.i15, 1
  %i.cw = add i64 %i.cv, -1
  %i.cx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cw, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cx
  %i.cy = lshr i64 1152921504606846975, %i.cx
  %i.cz = add nuw nsw i64 %.016.i.i15, %i.cy
  %i.da = and i64 %i.cz, %notmask.i27.i           ; 2 uses
  %i.db = icmp samesign ult i64 %i.da, %.016.i.i15
  br i1 %i.db, label %aligned_usize_get.exit.i17.thread, label %.thread212

.thread212:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.u
  %.0.i89 = phi i64 [ %i.da, %sz_s2u_compute.exit29.i ], [ 16384, %bb.u ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.dc = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.dd = add nuw nsw i64 %1, 4095
  %i.de = and i64 %i.dd, 9223372036854771712
  %i.df = add nsw i64 %i.de, -4096
  %i.dg = add nuw i64 %i.df, %.0.i89
  %i.dh = add i64 %i.dg, %i.dc
  %i.di = icmp ult i64 %i.dh, %.0.i89
  %..0.i = select i1 %i.di, i64 0, i64 %.0.i89
  br label %aligned_usize_get.exit.i17

aligned_usize_get.exit.i17:                       ; preds = %.thread212, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread212 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 5 uses
  %i.dj = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i16 = icmp ult i64 %i.dj, -8070450532247928832
  br i1 %spec.select.i.i16, label %aligned_usize_get.exit.i17.thread, label %bb.w

bb.w:                                             ; preds = %aligned_usize_get.exit.i17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !14
  %i.dm = icmp sgt i8 %i.dl, 0
  br i1 %i.dm, label %tcache_get_from_ind.exit.i, label %bb.x, !prof !118

bb.x:                                             ; preds = %bb.w
  %i.dn = load i8, ptr %i.e, align 1, !tbaa !104, !range !105, !noundef !106
  %i.do = trunc nuw i8 %i.dn to i1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 872
  %spec.select = select i1 %i.do, ptr %i.dp, ptr null
  br label %imalloc_no_sample.exit

tcache_get_from_ind.exit.i:                       ; preds = %bb.w
  %i.dq = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %arena_get.exit115, label %imalloc_no_sample.exit, !prof !11

arena_get.exit115:                                ; preds = %tcache_get_from_ind.exit.i
  %i.ds = tail call ptr @je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.y, label %imalloc_no_sample.exit, !prof !12

bb.y:                                             ; preds = %arena_get.exit115
  %i.du = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.du, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i17.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.x, %bb.y, %tcache_get_from_ind.exit.i, %arena_get.exit115
  %.0.i.i33223.ph = phi ptr [ null, %tcache_get_from_ind.exit.i ], [ null, %arena_get.exit115 ], [ %spec.select, %bb.x ], [ null, %bb.y ]
  %.1198.ph = phi ptr [ %i.dq, %tcache_get_from_ind.exit.i ], [ %i.ds, %arena_get.exit115 ], [ null, %bb.x ], [ null, %bb.y ]
  %i.dv = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1198.ph, i64 noundef %.018.i, i64 noundef %1, i1 noundef zeroext %i.bv, ptr noundef %.0.i.i33223.ph) #20 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %aligned_usize_get.exit.i17.thread, label %bb.z, !prof !124

bb.z:                                             ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !109
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !112
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !113
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !114
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !115
  %i.ef = load i64, ptr %i.dx, align 8, !tbaa !27 ; 2 uses
  %i.eg = add i64 %i.ef, %.018.i
  store i64 %i.eg, ptr %i.dx, align 8, !tbaa !27
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !27
  %i.ei = sub i64 %i.eh, %i.ef
  %i.ej = icmp ult i64 %.018.i, %i.ei
  br i1 %i.ej, label %bb.ab, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %bb.z
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %4) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.not.i21 = xor i1 %i.bv, true
  %i.ek = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.el = trunc nuw i8 %i.ek to i1
  %or.cond45.i22 = select i1 %.not.i21, i1 %i.el, i1 false, !prof !118
  br i1 %or.cond45.i22, label %bb.ac, label %bb.ad, !prof !118

bb.ac:                                            ; preds = %bb.ab
  %i.em = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.em(ptr noundef nonnull %i.dv, i64 noundef %.018.i) #20, !inline_history !120
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr %i.dv, ptr %0, align 8, !tbaa !97
  br label %aligned_usize_get.exit.i17.thread

aligned_usize_get.exit.i17.thread:                ; preds = %bb.y, %bb.v, %sz_s2u_compute.exit29.i, %bb.t, %compute_size_with_overflow.exit, %imalloc_no_sample.exit, %aligned_usize_get.exit.i17, %bb.ad
  %.0.i.ph = phi i32 [ 12, %imalloc_no_sample.exit ], [ 12, %aligned_usize_get.exit.i17 ], [ 22, %compute_size_with_overflow.exit ], [ 12, %bb.v ], [ 0, %bb.ad ], [ 12, %bb.t ], [ 12, %sz_s2u_compute.exit29.i ], [ 12, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.en = ptrtoint ptr %0 to i64
  store i64 %i.en, ptr %i.a, align 16, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.eo, align 8, !tbaa !27
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.ep, align 16, !tbaa !27
  %i.eq = load ptr, ptr %0, align 8, !tbaa !97
  %i.er = zext nneg i32 %.0.i.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 1, ptr noundef %i.eq, i64 noundef %i.er, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.i, %sz_s2u_compute.exit29.i94, %bb.g, %compute_size_with_overflow.exit32, %imalloc_no_sample.exit73, %aligned_usize_get.exit.i, %bb.l, %imalloc_init_check.exit, %aligned_usize_get.exit.i17.thread
  %.0.i236 = phi i32 [ %.0.i.ph, %aligned_usize_get.exit.i17.thread ], [ 12, %imalloc_init_check.exit ], [ 12, %aligned_usize_get.exit.i ], [ 0, %bb.l ], [ 12, %imalloc_no_sample.exit73 ], [ 22, %compute_size_with_overflow.exit32 ], [ 12, %bb.g ], [ 12, %sz_s2u_compute.exit29.i94 ], [ 12, %bb.i ]
  ret i32 %.0.i236
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @je_aligned_alloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.d = load i8, ptr %i.c, align 8, !tbaa !14
  %.not.i77 = icmp eq i8 %i.d, 0
  br i1 %.not.i77, label %compute_size_with_overflow.exit30, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.e = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false) #20 ; 12 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.f = icmp eq i8 %.pre, 0
  br i1 %i.f, label %compute_size_with_overflow.exit30, label %bb.n, !prof !90

compute_size_with_overflow.exit30:                ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i78251 = phi ptr [ %i.e, %tsd_fetch_impl.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond47.i.not = icmp eq i64 %i.g, 1
  br i1 %or.cond47.i.not, label %bb.b, label %bb.m, !prof !125

bb.b:                                             ; preds = %compute_size_with_overflow.exit30
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %bb.c, label %bb.d, !prof !118

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016.i.i = phi i64 [ 1, %bb.c ], [ %1, %bb.b ] ; 7 uses
  %i.i = icmp ult i64 %.016.i.i, 14337
  %i.j = icmp ult i64 %0, 4097
  %or.cond.i90 = and i1 %i.j, %i.i
  br i1 %or.cond.i90, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i64 %0, -1
  %i.l = add nuw nsw i64 %i.k, %.016.i.i
  %i.m = sub nsw i64 0, %0
  %i.n = and i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp samesign ult i64 %i.n, 4097
  br i1 %i.o, label %bb.f, label %sz_s2u_compute.exit.i100, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %i.n, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27
  br label %sz_s2u.exit25.i102

sz_s2u_compute.exit.i100:                         ; preds = %bb.e
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true) ; 2 uses
  %notmask.i.i99 = ashr exact i64 -1152921504606846976, %i.y
  %i.z = lshr i64 1152921504606846975, %i.y
  %i.aa = add nuw nsw i64 %i.n, %i.z
  %i.ab = and i64 %i.aa, %notmask.i.i99
  br label %sz_s2u.exit25.i102

sz_s2u.exit25.i102:                               ; preds = %sz_s2u_compute.exit.i100, %bb.f
  %.0.i24.i103 = phi i64 [ %i.v, %bb.f ], [ %i.ab, %sz_s2u_compute.exit.i100 ] ; 2 uses
  %i.ac = icmp ult i64 %.0.i24.i103, 16384
  br i1 %i.ac, label %aligned_usize_get.exit.i, label %.thread206

bb.g:                                             ; preds = %bb.d
  %i.ad = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ad, label %aligned_usize_get.exit.i.thread, label %bb.h, !prof !122

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult i64 %.016.i.i, 16385
  br i1 %i.ae, label %.thread206, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp ugt i64 %.016.i.i, 8070450532247928832
  br i1 %i.af, label %aligned_usize_get.exit.i.thread, label %sz_s2u_compute.exit29.i92, !prof !11

sz_s2u_compute.exit29.i92:                        ; preds = %bb.i
  %i.ag = shl nuw i64 %.016.i.i, 1
  %i.ah = add i64 %i.ag, -1
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ah, i1 true) ; 2 uses
  %notmask.i27.i91 = ashr exact i64 -1152921504606846976, %i.ai
  %i.aj = lshr i64 1152921504606846975, %i.ai
  %i.ak = add nuw nsw i64 %.016.i.i, %i.aj
  %i.al = and i64 %i.ak, %notmask.i27.i91         ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %.016.i.i
  br i1 %i.am, label %aligned_usize_get.exit.i.thread, label %.thread206

.thread206:                                       ; preds = %sz_s2u.exit25.i102, %sz_s2u_compute.exit29.i92, %bb.h
  %.0.i96 = phi i64 [ %i.al, %sz_s2u_compute.exit29.i92 ], [ 16384, %bb.h ], [ 16384, %sz_s2u.exit25.i102 ] ; 3 uses
  %i.an = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.ao = add nuw nsw i64 %0, 4095
  %i.ap = and i64 %i.ao, 9223372036854771712
  %i.aq = add nsw i64 %i.ap, -4096
  %i.ar = add nuw i64 %i.aq, %.0.i96
  %i.as = add i64 %i.ar, %i.an
  %i.at = icmp ult i64 %i.as, %.0.i96
  %..0.i97 = select i1 %i.at, i64 0, i64 %.0.i96
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread206, %sz_s2u.exit25.i102
  %.018.i98 = phi i64 [ %..0.i97, %.thread206 ], [ %.0.i24.i103, %sz_s2u.exit25.i102 ] ; 4 uses
  %i.au = add nsw i64 %.018.i98, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.au, -8070450532247928832
  br i1 %spec.select.i.i, label %aligned_usize_get.exit.i.thread, label %imalloc_no_sample.exit71

imalloc_no_sample.exit71:                         ; preds = %aligned_usize_get.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i78251, i64 872
  %i.aw = tail call ptr @je_arena_palloc(ptr noundef nonnull %.0.i78251, ptr noundef null, i64 noundef %.018.i98, i64 noundef %0, i1 noundef zeroext false, ptr noundef nonnull %i.av) #20 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %aligned_usize_get.exit.i.thread, label %bb.j, !prof !11

bb.j:                                             ; preds = %imalloc_no_sample.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i78251, i64 840 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i78251, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !113
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i78251, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !114
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i78251, i64 848
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !115
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !27 ; 2 uses
  %i.bh = add i64 %i.bg, %.018.i98
  store i64 %i.bh, ptr %i.ay, align 8, !tbaa !27
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !27
  %i.bj = sub i64 %i.bi, %i.bg
  %i.bk = icmp ult i64 %.018.i98, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i78251, ptr noundef nonnull %2) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %bb.i, %sz_s2u_compute.exit29.i92, %bb.g, %aligned_usize_get.exit.i, %imalloc_no_sample.exit71
  %i.bl = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.bl, align 4, !tbaa !7
  br label %imalloc.exit

bb.m:                                             ; preds = %compute_size_with_overflow.exit30
  %i.bm = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.bm, align 4, !tbaa !7
  br label %imalloc.exit

bb.n:                                             ; preds = %tsd_fetch_impl.exit
  %i.bn = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %compute_size_with_overflow.exit, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.bp = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bp, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.o
  %i.bq = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.bq, align 4, !tbaa !7
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.o, %bb.n
  %i.br = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond47.i9.not = icmp eq i64 %i.br, 1
  br i1 %or.cond47.i9.not, label %bb.p, label %bb.ae, !prof !125

bb.p:                                             ; preds = %compute_size_with_overflow.exit
  %i.bs = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.bt = trunc nuw i8 %i.bs to i1                ; 2 uses
  %i.bu = icmp eq i64 %1, 0
  br i1 %i.bu, label %bb.q, label %bb.r, !prof !118

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.016.i.i13 = phi i64 [ 1, %bb.q ], [ %1, %bb.p ] ; 7 uses
  %i.bv = icmp ult i64 %.016.i.i13, 14337
  %i.bw = icmp ult i64 %0, 4097
  %or.cond.i84 = and i1 %i.bw, %i.bv
  br i1 %or.cond.i84, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bx = add nsw i64 %0, -1
  %i.by = add nuw nsw i64 %i.bx, %.016.i.i13
  %i.bz = sub nsw i64 0, %0
  %i.ca = and i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp samesign ult i64 %i.ca, 4097
  br i1 %i.cb, label %bb.t, label %sz_s2u_compute.exit.i89, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.cc = add nuw nsw i64 %i.ca, 7
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i89:                          ; preds = %bb.s
  %i.cj = shl nuw nsw i64 %i.ca, 1
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true) ; 2 uses
  %notmask.i.i88 = ashr exact i64 -1152921504606846976, %i.cl
  %i.cm = lshr i64 1152921504606846975, %i.cl
  %i.cn = add nuw nsw i64 %i.ca, %i.cm
  %i.co = and i64 %i.cn, %notmask.i.i88
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i89, %bb.t
  %.0.i24.i = phi i64 [ %i.ci, %bb.t ], [ %i.co, %sz_s2u_compute.exit.i89 ] ; 2 uses
  %i.cp = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.cp, label %aligned_usize_get.exit.i15, label %.thread213

bb.u:                                             ; preds = %bb.r
  %i.cq = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.cq, label %aligned_usize_get.exit.i15.thread, label %bb.v, !prof !122

bb.v:                                             ; preds = %bb.u
  %i.cr = icmp ult i64 %.016.i.i13, 16385
  br i1 %i.cr, label %.thread213, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = icmp ugt i64 %.016.i.i13, 8070450532247928832
  br i1 %i.cs, label %aligned_usize_get.exit.i15.thread, label %sz_s2u_compute.exit29.i, !prof !11

sz_s2u_compute.exit29.i:                          ; preds = %bb.w
  %i.ct = shl nuw i64 %.016.i.i13, 1
  %i.cu = add i64 %i.ct, -1
  %i.cv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cu, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cv
  %i.cw = lshr i64 1152921504606846975, %i.cv
  %i.cx = add nuw nsw i64 %.016.i.i13, %i.cw
  %i.cy = and i64 %i.cx, %notmask.i27.i           ; 2 uses
  %i.cz = icmp samesign ult i64 %i.cy, %.016.i.i13
  br i1 %i.cz, label %aligned_usize_get.exit.i15.thread, label %.thread213

.thread213:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.v
  %.0.i87 = phi i64 [ %i.cy, %sz_s2u_compute.exit29.i ], [ 16384, %bb.v ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.da = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.db = add nuw nsw i64 %0, 4095
  %i.dc = and i64 %i.db, 9223372036854771712
  %i.dd = add nsw i64 %i.dc, -4096
  %i.de = add nuw i64 %i.dd, %.0.i87
  %i.df = add i64 %i.de, %i.da
  %i.dg = icmp ult i64 %i.df, %.0.i87
  %..0.i = select i1 %i.dg, i64 0, i64 %.0.i87
  br label %aligned_usize_get.exit.i15

aligned_usize_get.exit.i15:                       ; preds = %.thread213, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread213 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 5 uses
  %i.dh = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i14 = icmp ult i64 %i.dh, -8070450532247928832
  br i1 %spec.select.i.i14, label %aligned_usize_get.exit.i15.thread, label %bb.x

bb.x:                                             ; preds = %aligned_usize_get.exit.i15
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %i.dk = icmp sgt i8 %i.dj, 0
  br i1 %i.dk, label %tcache_get_from_ind.exit.i, label %bb.y, !prof !118

bb.y:                                             ; preds = %bb.x
  %i.dl = load i8, ptr %i.e, align 1, !tbaa !104, !range !105, !noundef !106
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 872
  %spec.select = select i1 %i.dm, ptr %i.dn, ptr null
  br label %imalloc_no_sample.exit

tcache_get_from_ind.exit.i:                       ; preds = %bb.x
  %i.do = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %arena_get.exit113, label %imalloc_no_sample.exit, !prof !11

arena_get.exit113:                                ; preds = %tcache_get_from_ind.exit.i
  %i.dq = tail call ptr @je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.z, label %imalloc_no_sample.exit, !prof !12

bb.z:                                             ; preds = %arena_get.exit113
  %i.ds = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i15.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.y, %bb.z, %tcache_get_from_ind.exit.i, %arena_get.exit113
  %.0.i.i31224.ph = phi ptr [ null, %tcache_get_from_ind.exit.i ], [ null, %arena_get.exit113 ], [ %spec.select, %bb.y ], [ null, %bb.z ]
  %.1196.ph = phi ptr [ %i.do, %tcache_get_from_ind.exit.i ], [ %i.dq, %arena_get.exit113 ], [ null, %bb.y ], [ null, %bb.z ]
  %i.dt = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1196.ph, i64 noundef %.018.i, i64 noundef %0, i1 noundef zeroext %i.bt, ptr noundef %.0.i.i31224.ph) #20 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %aligned_usize_get.exit.i15.thread, label %bb.aa, !prof !124

bb.aa:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !112
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !113
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !114
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !115
  %i.ed = load i64, ptr %i.dv, align 8, !tbaa !27 ; 2 uses
  %i.ee = add i64 %i.ed, %.018.i
  store i64 %i.ee, ptr %i.dv, align 8, !tbaa !27
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !27
  %i.eg = sub i64 %i.ef, %i.ed
  %i.eh = icmp ult i64 %.018.i, %i.eg
  br i1 %i.eh, label %bb.ac, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i19 = xor i1 %i.bt, true
  %i.ei = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.ej = trunc nuw i8 %i.ei to i1
  %or.cond45.i20 = select i1 %.not.i19, i1 %i.ej, i1 false, !prof !118
  br i1 %or.cond45.i20, label %bb.ad, label %bb.af, !prof !118

bb.ad:                                            ; preds = %bb.ac
  %i.ek = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.ek(ptr noundef nonnull %i.dt, i64 noundef %.018.i) #20, !inline_history !120
  br label %bb.af

aligned_usize_get.exit.i15.thread:                ; preds = %bb.z, %bb.w, %sz_s2u_compute.exit29.i, %bb.u, %aligned_usize_get.exit.i15, %imalloc_no_sample.exit
  %i.el = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.el, align 4, !tbaa !7
  br label %bb.af

bb.ae:                                            ; preds = %compute_size_with_overflow.exit
  %i.em = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.em, align 4, !tbaa !7
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %aligned_usize_get.exit.i15.thread, %bb.ae
  %.0204.ph = phi ptr [ %i.dt, %bb.ad ], [ null, %bb.ae ], [ %i.dt, %bb.ac ], [ null, %aligned_usize_get.exit.i15.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 16, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.en, align 8, !tbaa !27
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !27
  %i.eo = ptrtoint ptr %.0204.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 2, ptr noundef %.0204.ph, i64 noundef %i.eo, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.l, %aligned_usize_get.exit.i.thread, %bb.m, %imalloc_init_check.exit, %bb.af
  %.0204237 = phi ptr [ %.0204.ph, %bb.af ], [ null, %imalloc_init_check.exit ], [ null, %bb.m ], [ null, %aligned_usize_get.exit.i.thread ], [ %i.aw, %bb.l ]
  ret ptr %.0204237
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias ptr @je_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @je_calloc_internal(i64 noundef %0, i64 noundef %1, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @je_calloc_internal(i64 noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %4 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %.not.i78 = icmp eq i8 %i.f, 0
  br i1 %.not.i78, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.h = icmp eq i8 %.pre, 0
  br i1 %i.h, label %tsd_fetch_impl.exit.thread, label %bb.x, !prof !90

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i79283 = phi ptr [ %i.g, %tsd_fetch_impl.exit ], [ %i.d, %bb.a ] ; 16 uses
  %mul264 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val265 = extractvalue { i64, i1 } %mul264, 0 ; 12 uses
  %mul.ov266 = extractvalue { i64, i1 } %mul264, 1
  %i.i = icmp eq i64 %mul.val265, 0
  br i1 %i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %.not.i30 = icmp ne i64 %0, 0
  %i.j = icmp ne i64 %1, 0
  %or.cond = and i1 %.not.i30, %i.j
  br i1 %or.cond, label %aligned_usize_get.exit.i.thread, label %.thread, !prof !126

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.k = or i64 %1, %0
  %i.l = icmp ult i64 %i.k, 4294967296
  br i1 %i.l, label %compute_size_with_overflow.exit31.thread, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  br i1 %mul.ov266, label %aligned_usize_get.exit.i.thread, label %compute_size_with_overflow.exit31.thread, !prof !127

compute_size_with_overflow.exit31.thread:         ; preds = %bb.c, %bb.d
  %i.m = icmp ult i64 %mul.val265, 4097
  br i1 %i.m, label %.thread, label %bb.e, !prof !128

.thread:                                          ; preds = %bb.b, %compute_size_with_overflow.exit31.thread
  %i.n = add nuw nsw i64 %mul.val265, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = zext i8 %i.q to i32
  br label %sz_size2index.exit.i

bb.e:                                             ; preds = %compute_size_with_overflow.exit31.thread
  %i.s = icmp ugt i64 %mul.val265, 8070450532247928832
  br i1 %i.s, label %aligned_usize_get.exit.i.thread, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %mul.val265, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 3 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v
  %i.y = ashr exact i64 -1152921504606846976, %i.v
  %i.z = add nsw i64 %mul.val265, -1
  %i.aa = and i64 %i.y, %i.z
  %i.ab = lshr i64 %i.aa, %i.x
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %i.ae = shl nuw nsw i32 %i.w, 2
  %reass.sub270 = sub nsw i32 %i.ad, %i.ae
  %i.af = add nsw i32 %reass.sub270, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.f, %.thread
  %.0.i50.i = phi i32 [ %i.r, %.thread ], [ %i.af, %bb.f ] ; 7 uses
  %i.ag = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ag, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i41, !prof !91

iallocztm.exit.i41:                               ; preds = %sz_size2index.exit.i
  %i.ah = zext nneg i32 %.0.i50.i to i64          ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 872 ; 3 uses
  %i.al = icmp samesign ult i64 %mul.val265, 14337
  br i1 %i.al, label %bb.g, label %bb.n, !prof !13

bb.g:                                             ; preds = %iallocztm.exit.i41
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 880
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ah ; 8 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !92 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !97 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !98 ; 2 uses
end_hunk_1
begin_hunk_2_@je_calloc_internal:bb.a

cache_bin_alloc_impl.exit.i59.thread:             ; preds = %.cache_bin_alloc_impl.exit.i59.thread_crit_edge, %bb.j, %bb.h
  %i.bh = phi i64 [ %.pre271, %.cache_bin_alloc_impl.exit.i59.thread_crit_edge ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ]
  %.131.i.i67 = phi ptr [ %i.bf, %.cache_bin_alloc_impl.exit.i59.thread_crit_edge ], [ %i.ap, %bb.h ], [ %i.ap, %bb.j ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i67, i8 0, i64 %i.bh, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !107
  br label %imalloc_no_sample.exit72

bb.n:                                             ; preds = %iallocztm.exit.i41
  %i.bl = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i43 = icmp ugt i64 %mul.val265, %i.bl
  br i1 %.not24.i.i43, label %bb.t, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 880
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ah ; 7 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !97 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !98 ; 2 uses
  %i.bu = trunc i64 %i.bq to i16
  %.not.i26.i44 = icmp eq i16 %i.bt, %i.bu
  br i1 %.not.i26.i44, label %bb.q, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !92
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !99
  %.not21.i28.i57 = icmp eq i16 %i.bw, %i.bt
  br i1 %.not21.i28.i57, label %cache_bin_alloc_impl.exit29.i45, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !92
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = trunc i64 %i.bx to i16
  store i16 %i.by, ptr %i.bs, align 8, !tbaa !98
  br label %bb.s

cache_bin_alloc_impl.exit29.i45:                  ; preds = %bb.q
  %i.bz = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i79283, ptr noundef null) ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %aligned_usize_get.exit.i.thread, label %sz_s2u.exit.i50, !prof !11

sz_s2u.exit.i50:                                  ; preds = %cache_bin_alloc_impl.exit29.i45
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i79283, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.bn, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.cb = shl nuw i64 %mul.val265, 1
  %i.cc = add i64 %i.cb, -1
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cc, i1 true) ; 2 uses
  %notmask.i.i47 = ashr exact i64 -1152921504606846976, %i.cd
  %i.ce = lshr i64 1152921504606846975, %i.cd
  %i.cf = add nuw nsw i64 %mul.val265, %i.ce
  %i.cg = and i64 %i.cf, %notmask.i.i47
  %i.ch = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i79283, ptr noundef nonnull %i.bz, i64 noundef %i.cg, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit72

bb.s:                                             ; preds = %bb.p, %bb.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bp, i8 0, i64 %i.aj, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !107
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !107
  br label %imalloc_no_sample.exit72

bb.t:                                             ; preds = %bb.n
  %i.cl = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i79283, ptr noundef null, i64 noundef %mul.val265, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit72

imalloc_no_sample.exit72:                         ; preds = %bb.t, %.thread214, %cache_bin_alloc_impl.exit.i59.thread, %bb.s, %sz_s2u.exit.i50
  %.0.i21.i55 = phi ptr [ %i.cl, %bb.t ], [ %.0.i22.i64.ph, %.thread214 ], [ %.131.i.i67, %cache_bin_alloc_impl.exit.i59.thread ], [ %i.bp, %bb.s ], [ %i.ch, %sz_s2u.exit.i50 ] ; 2 uses
  %i.cm = icmp eq ptr %.0.i21.i55, null
  br i1 %i.cm, label %aligned_usize_get.exit.i.thread, label %bb.u, !prof !108

bb.u:                                             ; preds = %imalloc_no_sample.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 840 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !112
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !114
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 848
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !115
  %i.cv = load i64, ptr %i.cn, align 8, !tbaa !27 ; 2 uses
  %i.cw = add i64 %i.cv, %i.aj
  store i64 %i.cw, ptr %i.cn, align 8, !tbaa !27
  %i.cx = load i64, ptr %i.cr, align 8, !tbaa !27
  %i.cy = sub i64 %i.cx, %i.cv
  %i.cz = icmp ult i64 %i.aj, %i.cy
  br i1 %i.cz, label %bb.w, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i79283, ptr noundef nonnull %3) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %imalloc.exit.thread

aligned_usize_get.exit.i.thread:                  ; preds = %bb.b, %cache_bin_alloc_impl.exit29.i45, %bb.m, %bb.e, %sz_size2index.exit.i, %imalloc_no_sample.exit72, %bb.d
  %.sroa.11.1 = phi i64 [ 0, %bb.b ], [ 0, %bb.e ], [ %i.aj, %imalloc_no_sample.exit72 ], [ 0, %bb.d ], [ 0, %sz_size2index.exit.i ], [ %i.aj, %bb.m ], [ %i.aj, %cache_bin_alloc_impl.exit29.i45 ]
  %i.da = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.da, align 4, !tbaa !7
  br label %imalloc.exit.thread

bb.x:                                             ; preds = %tsd_fetch_impl.exit
  %i.db = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.z, label %bb.y, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.dd = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.dd, label %imalloc_init_check.exit, label %bb.z, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.y
  %i.de = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.de, align 4, !tbaa !7
  br label %imalloc.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 12 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %i.df = icmp eq i64 %mul.val, 0
  br i1 %i.df, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %bb.z
  %.not.i27 = icmp ne i64 %0, 0
  %i.dg = icmp ne i64 %1, 0
  %or.cond262 = and i1 %.not.i27, %i.dg
  br i1 %or.cond262, label %aligned_usize_get.exit.i16.thread, label %.thread225, !prof !129

bb.ab:                                            ; preds = %bb.z
  %i.dh = or i64 %1, %0
  %i.di = icmp ult i64 %i.dh, 4294967296
  br i1 %i.di, label %compute_size_with_overflow.exit.thread, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  br i1 %mul.ov, label %aligned_usize_get.exit.i16.thread, label %compute_size_with_overflow.exit.thread, !prof !130

compute_size_with_overflow.exit.thread:           ; preds = %bb.ab, %bb.ac
  %i.dj = icmp ult i64 %mul.val, 4097
  br i1 %i.dj, label %.thread225, label %bb.ad, !prof !131

.thread225:                                       ; preds = %bb.aa, %compute_size_with_overflow.exit.thread
  %i.dk = add nuw nsw i64 %mul.val, 7
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !14
  %i.do = zext i8 %i.dn to i32
  br label %sz_size2index.exit.i22

bb.ad:                                            ; preds = %compute_size_with_overflow.exit.thread
  %i.dp = icmp ugt i64 %mul.val, 8070450532247928832
  br i1 %i.dp, label %aligned_usize_get.exit.i16.thread, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.dq = shl nuw i64 %mul.val, 1
  %i.dr = add i64 %i.dq, -1
  %i.ds = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dr, i1 true) ; 3 uses
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = sub nuw nsw i64 60, %i.ds
  %i.dv = ashr exact i64 -1152921504606846976, %i.ds
  %i.dw = add nsw i64 %mul.val, -1
  %i.dx = and i64 %i.dv, %i.dw
  %i.dy = lshr i64 %i.dx, %i.du
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 3
  %i.eb = shl nuw nsw i32 %i.dt, 2
  %reass.sub = sub nsw i32 %i.ea, %i.eb
  %i.ec = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i22

sz_size2index.exit.i22:                           ; preds = %bb.ae, %.thread225
  %.0.i50.i23 = phi i32 [ %i.do, %.thread225 ], [ %i.ec, %bb.ae ] ; 7 uses
  %i.ed = icmp samesign ugt i32 %.0.i50.i23, 234
  br i1 %i.ed, label %aligned_usize_get.exit.i16.thread, label %bb.af, !prof !117

bb.af:                                            ; preds = %sz_size2index.exit.i22
  %i.ee = zext nneg i32 %.0.i50.i23 to i64        ; 4 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ee ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !27 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !14
  %i.ej = icmp sgt i8 %i.ei, 0
  br i1 %i.ej, label %tcache_get_from_ind.exit.i, label %bb.ag, !prof !118

bb.ag:                                            ; preds = %bb.af
  %i.ek = load i8, ptr %i.g, align 1, !tbaa !104, !range !105, !noundef !106
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 872 ; 3 uses
  br i1 %i.el, label %iallocztm.exit.i, label %iallocztm.exit.i.thread

tcache_get_from_ind.exit.i:                       ; preds = %bb.af
  %i.en = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %arena_get.exit114, label %iallocztm.exit.i.thread, !prof !11

arena_get.exit114:                                ; preds = %tcache_get_from_ind.exit.i
  %i.ep = tail call ptr @je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ah, label %iallocztm.exit.i.thread, !prof !12

bb.ah:                                            ; preds = %arena_get.exit114
  %i.er = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.er, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i16.thread, label %iallocztm.exit.i.thread

iallocztm.exit.i:                                 ; preds = %bb.ag
  %i.es = icmp samesign ult i64 %mul.val, 14337
  br i1 %i.es, label %bb.ai, label %bb.ap, !prof !13

bb.ai:                                            ; preds = %iallocztm.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.ee ; 8 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !92 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !97 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 8, !tbaa !98 ; 2 uses
  %i.fb = trunc i64 %i.ex to i16
  %.not.i24.i = icmp eq i16 %i.fa, %i.fb
  br i1 %.not.i24.i, label %bb.ak, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ak:                                            ; preds = %bb.ai
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.fd = load i16, ptr %i.fc, align 4, !tbaa !99
  %.not21.i.i = icmp eq i16 %i.fd, %i.fa
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !92
  %i.fe = ptrtoint ptr %i.ey to i64
  %i.ff = trunc i64 %i.fe to i16
  store i16 %i.ff, ptr %i.ez, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.fg = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %.thread249, label %bb.am, !prof !11

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.fi = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %i.ee
  %.val107 = load i16, ptr %i.fj, align 2, !tbaa !102
  %i.fk = icmp eq i16 %.val107, 0
  br i1 %i.fk, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.fl = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fg, i64 noundef range(i64 0, 14337) %mul.val, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #20
  br label %.thread249

.thread249:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.an
  %.0.i22.i.ph = phi ptr [ %i.fl, %bb.an ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.ao:                                            ; preds = %bb.am
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.em, ptr noundef nonnull %i.eu, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #20
  %i.fm = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.em, ptr noundef nonnull %i.eu, i32 noundef %.0.i50.i23, ptr noundef nonnull %i.b) #20
  %i.fn = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %.not263 = icmp eq i8 %i.fn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %.not263, label %aligned_usize_get.exit.i16.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.al, %bb.aj, %bb.ao
  %.131.i.i = phi ptr [ %i.fm, %bb.ao ], [ %i.ew, %bb.aj ], [ %i.ew, %bb.al ] ; 2 uses
  %i.fo = load i64, ptr %i.ef, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.fo, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !107
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

bb.ap:                                            ; preds = %iallocztm.exit.i
  %i.fs = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i = icmp ugt i64 %mul.val, %i.fs
  br i1 %.not24.i.i, label %iallocztm.exit.i.thread, label %bb.aq, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.ee ; 7 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !92 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !97 ; 2 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 8, !tbaa !98 ; 2 uses
  %i.gb = trunc i64 %i.fx to i16
  %.not.i26.i = icmp eq i16 %i.ga, %i.gb
  br i1 %.not.i26.i, label %bb.as, label %bb.ar, !prof !11

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.fy, ptr %i.fu, align 8, !tbaa !92
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  %i.gd = load i16, ptr %i.gc, align 4, !tbaa !99
  %.not21.i28.i = icmp eq i16 %i.gd, %i.ga
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.at, !prof !11

bb.at:                                            ; preds = %bb.as
  store ptr %i.fy, ptr %i.fu, align 8, !tbaa !92
  %i.ge = ptrtoint ptr %i.fy to i64
  %i.gf = trunc i64 %i.ge to i16
  store i16 %i.gf, ptr %i.fz, align 8, !tbaa !98
  br label %bb.au

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.as
  %i.gg = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %aligned_usize_get.exit.i16.thread, label %sz_s2u.exit.i, !prof !11

sz_s2u.exit.i:                                    ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.em, ptr noundef nonnull %i.fu, i32 noundef %.0.i50.i23, i1 noundef zeroext false) #20
  %i.gi = shl nuw i64 %mul.val, 1
  %i.gj = add i64 %i.gi, -1
  %i.gk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gj, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gk
  %i.gl = lshr i64 1152921504606846975, %i.gk
  %i.gm = add nuw nsw i64 %mul.val, %i.gl
  %i.gn = and i64 %i.gm, %notmask.i.i
  %i.go = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gg, i64 noundef %i.gn, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit

bb.au:                                            ; preds = %bb.ar, %bb.at
  %i.gp = load i64, ptr %i.ef, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fw, i8 0, i64 %i.gp, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !107
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr %i.gq, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

iallocztm.exit.i.thread:                          ; preds = %tcache_get_from_ind.exit.i, %bb.ah, %arena_get.exit114, %bb.ag, %bb.ap
  %.1197.ph289 = phi ptr [ null, %bb.ap ], [ %i.en, %tcache_get_from_ind.exit.i ], [ null, %bb.ah ], [ %i.ep, %arena_get.exit114 ], [ null, %bb.ag ]
  %i.gt = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1197.ph289, i64 noundef %mul.val, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %iallocztm.exit.i.thread, %.thread249, %cache_bin_alloc_impl.exit.i.thread, %bb.au, %sz_s2u.exit.i
  %.0.i34 = phi ptr [ %i.go, %sz_s2u.exit.i ], [ %i.gt, %iallocztm.exit.i.thread ], [ %.0.i22.i.ph, %.thread249 ], [ %.131.i.i, %cache_bin_alloc_impl.exit.i.thread ], [ %i.fw, %bb.au ] ; 2 uses
  %i.gu = icmp eq ptr %.0.i34, null
  br i1 %i.gu, label %aligned_usize_get.exit.i16.thread, label %bb.av, !prof !119

bb.av:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !109
  %i.gv = getelementptr inbounds nuw i8, ptr %i.g, i64 840 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !112
  %i.gx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !113
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !114
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 848
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !115
  %i.hd = load i64, ptr %i.gv, align 8, !tbaa !27 ; 2 uses
  %i.he = add i64 %i.hd, %i.eg
  store i64 %i.he, ptr %i.gv, align 8, !tbaa !27
  %i.hf = load i64, ptr %i.gz, align 8, !tbaa !27
  %i.hg = sub i64 %i.hf, %i.hd
  %i.hh = icmp ult i64 %i.eg, %i.hg
  br i1 %i.hh, label %bb.ax, label %bb.aw, !prof !13

bb.aw:                                            ; preds = %bb.av
  call void @je_te_event_trigger(ptr noundef nonnull %i.g, ptr noundef nonnull %4) #20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %imalloc.exit

aligned_usize_get.exit.i16.thread:                ; preds = %bb.aa, %cache_bin_alloc_impl.exit29.i, %bb.ao, %bb.ah, %bb.ad, %sz_size2index.exit.i22, %imalloc_no_sample.exit, %bb.ac
  %.sroa.11.3 = phi i64 [ 0, %bb.aa ], [ 0, %bb.ad ], [ %i.eg, %imalloc_no_sample.exit ], [ 0, %bb.ac ], [ 0, %sz_size2index.exit.i22 ], [ %i.eg, %bb.ah ], [ %i.eg, %bb.ao ], [ %i.eg, %cache_bin_alloc_impl.exit29.i ]
  %i.hi = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.hi, align 4, !tbaa !7
  br label %imalloc.exit
end_hunk_2
begin_hunk_3_@je_calloc_internal:bb.a
  %i.hk = ptrtoint ptr %.0205 to i64
  call void @je_hook_invoke_alloc(i32 noundef 3, ptr noundef %.0205, i64 noundef %i.hk, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %imalloc.exit.thread

imalloc.exit.thread:                              ; preds = %bb.w, %aligned_usize_get.exit.i.thread, %imalloc_init_check.exit, %imalloc.exit
  %.sroa.11.0261 = phi i64 [ %.sroa.11.0, %imalloc.exit ], [ %.sroa.11.1, %aligned_usize_get.exit.i.thread ], [ %i.aj, %bb.w ], [ 0, %imalloc_init_check.exit ]
  %.0205260 = phi ptr [ %.0205, %imalloc.exit ], [ null, %aligned_usize_get.exit.i.thread ], [ %.0.i21.i55, %bb.w ], [ null, %imalloc_init_check.exit ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %imalloc.exit.thread
  store i64 %.sroa.11.0261, ptr %2, align 8, !tbaa !27
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %imalloc.exit.thread
  ret ptr %.0205260
}

; Function Attrs: noinline nounwind uwtable
define hidden void @je_free_default(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ifree.exit20, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.d = load i8, ptr %i.c, align 8, !tbaa !14
  %.not.i45 = icmp eq i8 %i.d, 0
  br i1 %.not.i45, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.b
  %i.e = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.b, i1 noundef zeroext true) #20 ; 18 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.f = icmp eq i8 %.pre, 0
  br i1 %i.f, label %tsd_fetch_impl.exit.thread, label %bb.l, !prof !90

tsd_fetch_impl.exit.thread:                       ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0.i4688 = phi ptr [ %i.e, %tsd_fetch_impl.exit ], [ %i.b, %bb.b ] ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 872 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 448 ; 2 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.j = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %.0.i4688, ptr noundef nonnull %i.h, i64 noundef %i.i) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.j, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.j, 1
  %i.k = and i64 %.fca.0.extract.i, 4294967295    ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %.sroa.074.0.extract.trunc = trunc i64 %.fca.0.extract.i to i32 ; 3 uses
  %i.n = and i32 %.fca.1.extract.i, 256
  %.not85 = icmp eq i32 %i.n, 0
  br i1 %.not85, label %bb.g, label %bb.c, !prof !11

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 880
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 18 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !132
  %i.u = trunc i64 %i.r to i16
  %i.v = icmp eq i16 %i.t, %i.u
  br i1 %i.v, label %cache_bin_dalloc_easy.exit38, label %cache_bin_dalloc_easy.exit38.thread, !prof !11

cache_bin_dalloc_easy.exit38.thread:              ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.w, ptr %i.p, align 8, !tbaa !92
  store ptr %0, ptr %i.w, align 8, !tbaa !97
  br label %arena_dalloc.exit29

cache_bin_dalloc_easy.exit38:                     ; preds = %bb.c
  %i.x = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.k
  %.val60 = load i16, ptr %i.y, align 2, !tbaa !102 ; 2 uses
  %i.z = icmp eq i16 %.val60, 0
  br i1 %i.z, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %cache_bin_dalloc_easy.exit38
  tail call void @je_arena_dalloc_small(ptr noundef nonnull %.0.i4688, ptr noundef nonnull %0) #20
  br label %arena_dalloc.exit29

bb.e:                                             ; preds = %cache_bin_dalloc_easy.exit38
  %i.aa = zext i16 %.val60 to i32
  %i.ab = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !7
  %i.ac = lshr i32 %i.aa, %i.ab
  tail call void @je_tcache_bin_flush_small(ptr noundef nonnull %.0.i4688, ptr noundef nonnull %i.g, ptr noundef nonnull %i.p, i32 noundef %.sroa.074.0.extract.trunc, i32 noundef %i.ac) #20
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !92  ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = load i16, ptr %i.s, align 2, !tbaa !132
  %i.ag = trunc i64 %i.ae to i16
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %arena_dalloc.exit29, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !92
  store ptr %0, ptr %i.ai, align 8, !tbaa !97
  br label %arena_dalloc.exit29

bb.g:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.aj = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.ak = icmp ugt i32 %i.aj, %.sroa.074.0.extract.trunc
  br i1 %i.ak, label %bb.h, label %tsdn_rtree_ctx.exit50

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 880
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.k ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 18 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !132
  %i.ar = trunc i64 %i.ao to i16
  %i.as = icmp eq i16 %i.aq, %i.ar
  br i1 %i.as, label %cache_bin_dalloc_easy.exit12.i40, label %cache_bin_dalloc_easy.exit12.i40.thread, !prof !11

cache_bin_dalloc_easy.exit12.i40.thread:          ; preds = %bb.h
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  store ptr %i.at, ptr %i.am, align 8, !tbaa !92
  store ptr %0, ptr %i.at, align 8, !tbaa !97
  br label %arena_dalloc.exit29

cache_bin_dalloc_easy.exit12.i40:                 ; preds = %bb.h
  %i.au = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.k
  %.val = load i16, ptr %i.av, align 2, !tbaa !102
  %i.aw = zext i16 %.val to i32
  %i.ax = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !7
  %i.ay = lshr i32 %i.aw, %i.ax
  tail call void @je_tcache_bin_flush_large(ptr noundef nonnull %.0.i4688, ptr noundef nonnull %i.g, ptr noundef nonnull %i.am, i32 noundef %.sroa.074.0.extract.trunc, i32 noundef %i.ay) #20
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !92 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = load i16, ptr %i.ap, align 2, !tbaa !132
  %i.bc = trunc i64 %i.ba to i16
  %i.bd = icmp eq i16 %i.bb, %i.bc
  br i1 %i.bd, label %arena_dalloc.exit29, label %bb.i, !prof !11

bb.i:                                             ; preds = %cache_bin_dalloc_easy.exit12.i40
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 2 uses
  store ptr %i.be, ptr %i.am, align 8, !tbaa !92
  store ptr %0, ptr %i.be, align 8, !tbaa !97
  br label %arena_dalloc.exit29

tsdn_rtree_ctx.exit50:                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull %.0.i4688, ptr noundef nonnull %i.h, i64 noundef %i.i)
  %i.bf = load ptr, ptr %5, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  tail call void @je_large_dalloc(ptr noundef nonnull %.0.i4688, ptr noundef %i.bf) #20
  br label %arena_dalloc.exit29

arena_dalloc.exit29:                              ; preds = %bb.f, %bb.e, %cache_bin_dalloc_easy.exit38.thread, %bb.d, %cache_bin_dalloc_easy.exit12.i40.thread, %bb.i, %cache_bin_dalloc_easy.exit12.i40, %tsdn_rtree_ctx.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 0, ptr %2, align 8, !tbaa !109
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 856 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !112
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !113
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 864
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !115
  %i.bo = load i64, ptr %i.bg, align 8, !tbaa !27 ; 2 uses
  %i.bp = add i64 %i.bo, %i.m
  store i64 %i.bp, ptr %i.bg, align 8, !tbaa !27
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !27
  %i.br = sub i64 %i.bq, %i.bo
  %i.bs = icmp ult i64 %i.m, %i.br
  br i1 %i.bs, label %te_event_advance.exit55, label %bb.j, !prof !13

bb.j:                                             ; preds = %arena_dalloc.exit29
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i4688, ptr noundef nonnull %2) #20
  br label %te_event_advance.exit55

te_event_advance.exit55:                          ; preds = %arena_dalloc.exit29, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not.i19 = icmp eq ptr %1, null
  br i1 %.not.i19, label %ifree.exit20, label %bb.k

bb.k:                                             ; preds = %te_event_advance.exit55
  store i64 %i.m, ptr %1, align 8, !tbaa !27
  br label %ifree.exit20

bb.l:                                             ; preds = %tsd_fetch_impl.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %tcache_get_from_ind.exit, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.bw = load i8, ptr %i.e, align 1, !tbaa !104, !range !105, !noundef !106
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 872
  %spec.select = select i1 %i.bx, ptr %i.by, ptr null
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.m, %bb.l
  %.0.i = phi ptr [ null, %bb.l ], [ %spec.select, %bb.m ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bz = ptrtoint ptr %0 to i64                  ; 3 uses
  store i64 %i.bz, ptr %i.a, align 16, !tbaa !27
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !27
  call void @je_hook_invoke_dalloc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.cb = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ca, i64 noundef %i.bz) ; 2 uses
  %.fca.0.extract.i21 = extractvalue { i64, i32 } %i.cb, 0 ; 2 uses
  %.fca.1.extract.i22 = extractvalue { i64, i32 } %i.cb, 1
  %i.cc = and i64 %.fca.0.extract.i21, 4294967295 ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !27 ; 4 uses
  %i.cf = load i8, ptr @je_opt_junk_free, align 1, !range !105
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.n, label %idalloctm.exit26

bb.n:                                             ; preds = %tcache_get_from_ind.exit
  %i.ch = load ptr, ptr @je_junk_free_callback, align 8, !tbaa !97
  call void %i.ch(ptr noundef nonnull %0, i64 noundef %i.ce) #20, !inline_history !133
  br label %idalloctm.exit26

idalloctm.exit26:                                 ; preds = %bb.n, %tcache_get_from_ind.exit
  %i.ci = icmp eq ptr %.0.i, null
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %idalloctm.exit26
  call fastcc void @arena_dalloc_no_tcache(ptr noundef nonnull %i.e, ptr noundef nonnull %0)
  br label %arena_dalloc.exit

bb.p:                                             ; preds = %idalloctm.exit26
  %.sroa.070.0.extract.trunc = trunc i64 %.fca.0.extract.i21 to i32 ; 3 uses
  %i.cj = and i32 %.fca.1.extract.i22, 256
  %.not84 = icmp eq i32 %i.cj, 0
  br i1 %.not84, label %bb.u, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.cc ; 6 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 18 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !132
  %i.cq = trunc i64 %i.cn to i16
  %i.cr = icmp eq i16 %i.cp, %i.cq
  br i1 %i.cr, label %cache_bin_dalloc_easy.exit34, label %cache_bin_dalloc_easy.exit34.thread, !prof !11

cache_bin_dalloc_easy.exit34.thread:              ; preds = %bb.q
  %i.cs = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  store ptr %i.cs, ptr %i.cl, align 8, !tbaa !92
  store ptr %0, ptr %i.cs, align 8, !tbaa !97
  br label %arena_dalloc.exit

cache_bin_dalloc_easy.exit34:                     ; preds = %bb.q
  %i.ct = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cc
  %.val58 = load i16, ptr %i.cu, align 2, !tbaa !102 ; 2 uses
  %i.cv = icmp eq i16 %.val58, 0
  br i1 %i.cv, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %cache_bin_dalloc_easy.exit34
  call void @je_arena_dalloc_small(ptr noundef nonnull %i.e, ptr noundef nonnull %0) #20
  br label %arena_dalloc.exit

bb.s:                                             ; preds = %cache_bin_dalloc_easy.exit34
  %i.cw = zext i16 %.val58 to i32
  %i.cx = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !7
  %i.cy = lshr i32 %i.cw, %i.cx
  call void @je_tcache_bin_flush_small(ptr noundef nonnull %i.e, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.cl, i32 noundef %.sroa.070.0.extract.trunc, i32 noundef %i.cy) #20
  %i.cz = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 2 uses
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = load i16, ptr %i.co, align 2, !tbaa !132
  %i.dc = trunc i64 %i.da to i16
  %i.dd = icmp eq i16 %i.db, %i.dc
  br i1 %i.dd, label %arena_dalloc.exit, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 2 uses
  store ptr %i.de, ptr %i.cl, align 8, !tbaa !92
  store ptr %0, ptr %i.de, align 8, !tbaa !97
  br label %arena_dalloc.exit

bb.u:                                             ; preds = %bb.p
  %i.df = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.dg = icmp ugt i32 %i.df, %.sroa.070.0.extract.trunc
  br i1 %i.dg, label %bb.v, label %tsdn_rtree_ctx.exit

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %i.cc ; 6 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !92 ; 2 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 18 ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !132
  %i.dn = trunc i64 %i.dk to i16
  %i.do = icmp eq i16 %i.dm, %i.dn
  br i1 %i.do, label %cache_bin_dalloc_easy.exit12.i, label %cache_bin_dalloc_easy.exit12.i.thread, !prof !11

cache_bin_dalloc_easy.exit12.i.thread:            ; preds = %bb.v
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  store ptr %i.dp, ptr %i.di, align 8, !tbaa !92
  store ptr %0, ptr %i.dp, align 8, !tbaa !97
  br label %arena_dalloc.exit

cache_bin_dalloc_easy.exit12.i:                   ; preds = %bb.v
  %i.dq = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.cc
  %.val56 = load i16, ptr %i.dr, align 2, !tbaa !102
  %i.ds = zext i16 %.val56 to i32
  %i.dt = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !7
  %i.du = lshr i32 %i.ds, %i.dt
  call void @je_tcache_bin_flush_large(ptr noundef nonnull %i.e, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.di, i32 noundef %.sroa.070.0.extract.trunc, i32 noundef %i.du) #20
  %i.dv = load ptr, ptr %i.di, align 8, !tbaa !92 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = load i16, ptr %i.dl, align 2, !tbaa !132
  %i.dy = trunc i64 %i.dw to i16
  %i.dz = icmp eq i16 %i.dx, %i.dy
  br i1 %i.dz, label %arena_dalloc.exit, label %bb.w, !prof !11

bb.w:                                             ; preds = %cache_bin_dalloc_easy.exit12.i
  %i.ea = getelementptr inbounds i8, ptr %i.dv, i64 -8 ; 2 uses
  store ptr %i.ea, ptr %i.di, align 8, !tbaa !92
  store ptr %0, ptr %i.ea, align 8, !tbaa !97
  br label %arena_dalloc.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ca, i64 noundef %i.bz)
  %i.eb = load ptr, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @je_large_dalloc(ptr noundef nonnull %i.e, ptr noundef %i.eb) #20
  br label %arena_dalloc.exit

arena_dalloc.exit:                                ; preds = %bb.t, %bb.s, %cache_bin_dalloc_easy.exit34.thread, %bb.r, %cache_bin_dalloc_easy.exit12.i.thread, %bb.w, %cache_bin_dalloc_easy.exit12.i, %tsdn_rtree_ctx.exit, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 0, ptr %3, align 8, !tbaa !109
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 856 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !112
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !113
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !114
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 864
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !115
  %i.ek = load i64, ptr %i.ec, align 8, !tbaa !27 ; 2 uses
  %i.el = add i64 %i.ek, %i.ce
  store i64 %i.el, ptr %i.ec, align 8, !tbaa !27
  %i.em = load i64, ptr %i.eg, align 8, !tbaa !27
  %i.en = sub i64 %i.em, %i.ek
  %i.eo = icmp ult i64 %i.ce, %i.en
  br i1 %i.eo, label %te_event_advance.exit, label %bb.x, !prof !13

bb.x:                                             ; preds = %arena_dalloc.exit
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %arena_dalloc.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %ifree.exit, label %bb.y

bb.y:                                             ; preds = %te_event_advance.exit
  store i64 %i.ce, ptr %1, align 8, !tbaa !27
  br label %ifree.exit

ifree.exit:                                       ; preds = %te_event_advance.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %ifree.exit20

ifree.exit20:                                     ; preds = %ifree.exit, %te_event_advance.exit55, %bb.k, %bb.a
  ret void
}

declare void @je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @je_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !134
  %.not.i.i.not.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not.i, label %emap_alloc_ctx_try_lookup_fast.exit.i, label %emap_alloc_ctx_try_lookup_fast.exit.thread.i, !prof !13

end_hunk_3
begin_hunk_4_@je_memalign:bb.a

sz_s2u.exit25.i102:                               ; preds = %sz_s2u_compute.exit.i100, %bb.d
  %.0.i24.i103 = phi i64 [ %i.u, %bb.d ], [ %i.aa, %sz_s2u_compute.exit.i100 ] ; 2 uses
  %i.ab = icmp ult i64 %.0.i24.i103, 16384
  br i1 %i.ab, label %aligned_usize_get.exit.i, label %.thread206

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ac, label %imalloc.exit, label %bb.f, !prof !122

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp ult i64 %1, 16385
  br i1 %i.ad, label %.thread206, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.ae, label %sz_s2u_compute.exit29.i92, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.af = shl nuw i64 %1, 1
  %i.ag = add i64 %i.af, -1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ag, i1 true) ; 2 uses
  %notmask.i27.i91 = ashr exact i64 -1152921504606846976, %i.ah
  %i.ai = lshr i64 1152921504606846975, %i.ah
  %i.aj = add nuw nsw i64 %1, %i.ai
  %i.ak = and i64 %i.aj, %notmask.i27.i91
  br label %sz_s2u_compute.exit29.i92

sz_s2u_compute.exit29.i92:                        ; preds = %bb.h, %bb.g
  %.0.i28.i93 = phi i64 [ %i.ak, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.al = icmp ult i64 %.0.i28.i93, %1
  br i1 %i.al, label %imalloc.exit, label %.thread206

.thread206:                                       ; preds = %sz_s2u.exit25.i102, %sz_s2u_compute.exit29.i92, %bb.f
  %.0.i96 = phi i64 [ %.0.i28.i93, %sz_s2u_compute.exit29.i92 ], [ 16384, %bb.f ], [ 16384, %sz_s2u.exit25.i102 ] ; 3 uses
  %i.am = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.an = add nuw nsw i64 %0, 4095
  %i.ao = and i64 %i.an, 9223372036854771712
  %i.ap = add nsw i64 %i.ao, -4096
  %i.aq = add nuw i64 %i.ap, %.0.i96
  %i.ar = add i64 %i.aq, %i.am
  %i.as = icmp ult i64 %i.ar, %.0.i96
  %..0.i97 = select i1 %i.as, i64 0, i64 %.0.i96
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread206, %sz_s2u.exit25.i102
  %.018.i98 = phi i64 [ %..0.i97, %.thread206 ], [ %.0.i24.i103, %sz_s2u.exit25.i102 ] ; 4 uses
  %i.at = add nsw i64 %.018.i98, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.at, -8070450532247928832
  br i1 %spec.select.i.i, label %imalloc.exit, label %imalloc_no_sample.exit71

imalloc_no_sample.exit71:                         ; preds = %aligned_usize_get.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i78247, i64 872
  %i.av = tail call ptr @je_arena_palloc(ptr noundef nonnull %.0.i78247, ptr noundef null, i64 noundef %.018.i98, i64 noundef %0, i1 noundef zeroext false, ptr noundef nonnull %i.au) #20 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %imalloc.exit, label %bb.i, !prof !11

bb.i:                                             ; preds = %imalloc_no_sample.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i78247, i64 840 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !112
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i78247, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i78247, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !114
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i78247, i64 848
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !115
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %i.bg = add i64 %i.bf, %.018.i98
  store i64 %i.bg, ptr %i.ax, align 8, !tbaa !27
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !27
  %i.bi = sub i64 %i.bh, %i.bf
  %i.bj = icmp ult i64 %.018.i98, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.j, !prof !13

bb.j:                                             ; preds = %bb.i
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i78247, ptr noundef nonnull %2) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

bb.l:                                             ; preds = %tsd_fetch_impl.exit
  %i.bk = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %compute_size_with_overflow.exit, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.bm = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bm, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.m
  %i.bn = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.bn, align 4, !tbaa !7
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.m, %bb.l
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond47.i9.not = icmp eq i64 %i.bo, 1
  br i1 %or.cond47.i9.not, label %bb.n, label %aligned_usize_get.exit.i15.thread, !prof !125

bb.n:                                             ; preds = %compute_size_with_overflow.exit
  %i.bp = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %i.br = icmp ult i64 %1, 14337
  %i.bs = icmp ult i64 %0, 4097
  %or.cond.i84 = and i1 %i.bs, %i.br
  br i1 %or.cond.i84, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bt = add nsw i64 %0, -1
  %i.bu = add nuw nsw i64 %i.bt, %1
  %i.bv = sub nsw i64 0, %0
  %i.bw = and i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = icmp samesign ult i64 %i.bw, 4097
  br i1 %i.bx, label %bb.p, label %sz_s2u_compute.exit.i89, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.by = add nuw nsw i64 %i.bw, 7
  %i.bz = lshr i64 %i.by, 3
  %i.ca = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i89:                          ; preds = %bb.o
  %i.cf = shl nuw nsw i64 %i.bw, 1
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cg, i1 true) ; 2 uses
  %notmask.i.i88 = ashr exact i64 -1152921504606846976, %i.ch
  %i.ci = lshr i64 1152921504606846975, %i.ch
  %i.cj = add nuw nsw i64 %i.bw, %i.ci
  %i.ck = and i64 %i.cj, %notmask.i.i88
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i89, %bb.p
  %.0.i24.i = phi i64 [ %i.ce, %bb.p ], [ %i.ck, %sz_s2u_compute.exit.i89 ] ; 2 uses
  %i.cl = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.cl, label %aligned_usize_get.exit.i15, label %.thread212

bb.q:                                             ; preds = %bb.n
  %i.cm = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.cm, label %aligned_usize_get.exit.i15.thread, label %bb.r, !prof !122

bb.r:                                             ; preds = %bb.q
  %i.cn = icmp ult i64 %1, 16385
  br i1 %i.cn, label %.thread212, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.co, label %sz_s2u_compute.exit29.i, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.cp = shl nuw i64 %1, 1
  %i.cq = add i64 %i.cp, -1
  %i.cr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cq, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cr
  %i.cs = lshr i64 1152921504606846975, %i.cr
  %i.ct = add nuw nsw i64 %1, %i.cs
  %i.cu = and i64 %i.ct, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.t, %bb.s
  %.0.i28.i = phi i64 [ %i.cu, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.cv = icmp ult i64 %.0.i28.i, %1
  br i1 %i.cv, label %aligned_usize_get.exit.i15.thread, label %.thread212

.thread212:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.r
  %.0.i87 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.r ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.cw = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.cx = add nuw nsw i64 %0, 4095
  %i.cy = and i64 %i.cx, 9223372036854771712
  %i.cz = add nsw i64 %i.cy, -4096
  %i.da = add nuw i64 %i.cz, %.0.i87
  %i.db = add i64 %i.da, %i.cw
  %i.dc = icmp ult i64 %i.db, %.0.i87
  %..0.i = select i1 %i.dc, i64 0, i64 %.0.i87
  br label %aligned_usize_get.exit.i15

aligned_usize_get.exit.i15:                       ; preds = %.thread212, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread212 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 5 uses
  %i.dd = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i14 = icmp ult i64 %i.dd, -8070450532247928832
  br i1 %spec.select.i.i14, label %aligned_usize_get.exit.i15.thread, label %bb.u

bb.u:                                             ; preds = %aligned_usize_get.exit.i15
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !14
  %i.dg = icmp sgt i8 %i.df, 0
  br i1 %i.dg, label %tcache_get_from_ind.exit.i, label %bb.v, !prof !118

bb.v:                                             ; preds = %bb.u
  %i.dh = load i8, ptr %i.e, align 1, !tbaa !104, !range !105, !noundef !106
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 872
  %spec.select = select i1 %i.di, ptr %i.dj, ptr null
  br label %imalloc_no_sample.exit

tcache_get_from_ind.exit.i:                       ; preds = %bb.u
  %i.dk = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %arena_get.exit113, label %imalloc_no_sample.exit, !prof !11

arena_get.exit113:                                ; preds = %tcache_get_from_ind.exit.i
  %i.dm = tail call ptr @je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.w, label %imalloc_no_sample.exit, !prof !12

bb.w:                                             ; preds = %arena_get.exit113
  %i.do = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i15.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.v, %bb.w, %tcache_get_from_ind.exit.i, %arena_get.exit113
  %.0.i.i31222.ph = phi ptr [ null, %tcache_get_from_ind.exit.i ], [ null, %arena_get.exit113 ], [ %spec.select, %bb.v ], [ null, %bb.w ]
  %.1196.ph = phi ptr [ %i.dk, %tcache_get_from_ind.exit.i ], [ %i.dm, %arena_get.exit113 ], [ null, %bb.v ], [ null, %bb.w ]
  %i.dp = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1196.ph, i64 noundef %.018.i, i64 noundef %0, i1 noundef zeroext %i.bq, ptr noundef %.0.i.i31222.ph) #20 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %aligned_usize_get.exit.i15.thread, label %bb.x, !prof !124

bb.x:                                             ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !112
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !113
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !114
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !115
  %i.dz = load i64, ptr %i.dr, align 8, !tbaa !27 ; 2 uses
  %i.ea = add i64 %i.dz, %.018.i
  store i64 %i.ea, ptr %i.dr, align 8, !tbaa !27
  %i.eb = load i64, ptr %i.dv, align 8, !tbaa !27
  %i.ec = sub i64 %i.eb, %i.dz
  %i.ed = icmp ult i64 %.018.i, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.y, !prof !13

bb.y:                                             ; preds = %bb.x
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i19 = xor i1 %i.bq, true
  %i.ee = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.ef = trunc nuw i8 %i.ee to i1
  %or.cond45.i20 = select i1 %.not.i19, i1 %i.ef, i1 false, !prof !118
  br i1 %or.cond45.i20, label %bb.aa, label %aligned_usize_get.exit.i15.thread, !prof !118

bb.aa:                                            ; preds = %bb.z
  %i.eg = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.eg(ptr noundef nonnull %i.dp, i64 noundef %.018.i) #20, !inline_history !120
  br label %aligned_usize_get.exit.i15.thread

aligned_usize_get.exit.i15.thread:                ; preds = %bb.w, %sz_s2u_compute.exit29.i, %bb.q, %compute_size_with_overflow.exit, %aligned_usize_get.exit.i15, %imalloc_no_sample.exit, %bb.z, %bb.aa
  %.0204.ph = phi ptr [ null, %compute_size_with_overflow.exit ], [ %i.dp, %bb.aa ], [ null, %sz_s2u_compute.exit29.i ], [ null, %aligned_usize_get.exit.i15 ], [ null, %imalloc_no_sample.exit ], [ %i.dp, %bb.z ], [ null, %bb.q ], [ null, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 16, !tbaa !27
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.eh, align 8, !tbaa !27
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !27
  %i.ei = ptrtoint ptr %.0204.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 4, ptr noundef %.0204.ph, i64 noundef %i.ei, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %sz_s2u_compute.exit29.i92, %bb.e, %compute_size_with_overflow.exit30, %aligned_usize_get.exit.i, %imalloc_no_sample.exit71, %bb.k, %imalloc_init_check.exit, %aligned_usize_get.exit.i15.thread
  %.0204235 = phi ptr [ %.0204.ph, %aligned_usize_get.exit.i15.thread ], [ null, %imalloc_init_check.exit ], [ null, %compute_size_with_overflow.exit30 ], [ null, %aligned_usize_get.exit.i ], [ %i.av, %bb.k ], [ null, %imalloc_no_sample.exit71 ], [ null, %bb.e ], [ null, %sz_s2u_compute.exit29.i92 ]
  ret ptr %.0204235
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @je_valloc(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.d = load i8, ptr %i.c, align 8, !tbaa !14
  %.not.i75 = icmp eq i8 %i.d, 0
  br i1 %.not.i75, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.e = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false) #20 ; 12 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.f = icmp eq i8 %.pre, 0
  br i1 %i.f, label %tsd_fetch_impl.exit.thread, label %bb.j, !prof !90

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i76241 = phi ptr [ %i.e, %tsd_fetch_impl.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.g = icmp ult i64 %0, 14337
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.h = add nuw nsw i64 %0, 4095
  %i.i = and i64 %i.h, 28672                      ; 4 uses
  %i.j = icmp samesign ult i64 %i.i, 4097
  br i1 %i.j, label %bb.c, label %sz_s2u_compute.exit.i98, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = lshr exact i64 %i.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  br label %sz_s2u.exit25.i100

sz_s2u_compute.exit.i98:                          ; preds = %bb.b
  %i.q = shl nuw nsw i64 %i.i, 1
  %i.r = add nsw i64 %i.q, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.r, i1 true) ; 2 uses
  %notmask.i.i97 = ashr exact i64 -1152921504606846976, %i.s
  %i.t = lshr i64 1152921504606846975, %i.s
  %i.u = add nuw nsw i64 %i.i, %i.t
  %i.v = and i64 %i.u, %notmask.i.i97
  br label %sz_s2u.exit25.i100

sz_s2u.exit25.i100:                               ; preds = %sz_s2u_compute.exit.i98, %bb.c
  %.0.i24.i101 = phi i64 [ %i.p, %bb.c ], [ %i.v, %sz_s2u_compute.exit.i98 ] ; 2 uses
  %i.w = icmp ult i64 %.0.i24.i101, 16384
  br i1 %i.w, label %aligned_usize_get.exit.i, label %.thread

bb.d:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.x = icmp ult i64 %0, 16385
  br i1 %i.x, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.y, label %sz_s2u_compute.exit29.i90, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.z = shl nuw i64 %0, 1
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.aa, i1 true) ; 2 uses
  %notmask.i27.i89 = ashr exact i64 -1152921504606846976, %i.ab
  %i.ac = lshr i64 1152921504606846975, %i.ab
  %i.ad = add nuw nsw i64 %0, %i.ac
  %i.ae = and i64 %i.ad, %notmask.i27.i89
  br label %sz_s2u_compute.exit29.i90

sz_s2u_compute.exit29.i90:                        ; preds = %bb.f, %bb.e
  %.0.i28.i91 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.af = icmp ult i64 %.0.i28.i91, %0
  br i1 %i.af, label %imalloc.exit, label %.thread

.thread:                                          ; preds = %sz_s2u.exit25.i100, %sz_s2u_compute.exit29.i90, %bb.d
  %.0.i94 = phi i64 [ %.0.i28.i91, %sz_s2u_compute.exit29.i90 ], [ 16384, %bb.d ], [ 16384, %sz_s2u.exit25.i100 ] ; 2 uses
  %i.ag = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.ah = xor i64 %.0.i94, -1
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  %..0.i95 = select i1 %i.ai, i64 0, i64 %.0.i94
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread, %sz_s2u.exit25.i100
  %.018.i96 = phi i64 [ %..0.i95, %.thread ], [ %.0.i24.i101, %sz_s2u.exit25.i100 ] ; 4 uses
  %i.aj = add nsw i64 %.018.i96, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.aj, -8070450532247928832
  br i1 %spec.select.i.i, label %imalloc.exit, label %imalloc_no_sample.exit69

imalloc_no_sample.exit69:                         ; preds = %aligned_usize_get.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i76241, i64 872
  %i.al = tail call ptr @je_arena_palloc(ptr noundef nonnull %.0.i76241, ptr noundef null, i64 noundef %.018.i96, i64 noundef 4096, i1 noundef zeroext false, ptr noundef nonnull %i.ak) #20 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %imalloc.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %imalloc_no_sample.exit69
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i8 1, ptr %1, align 8, !tbaa !109
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i76241, i64 840 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !112
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i76241, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !113
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i76241, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i76241, i64 848
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.at, ptr %i.au, align 8, !tbaa !115
  %i.av = load i64, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %i.aw = add i64 %i.av, %.018.i96
  store i64 %i.aw, ptr %i.an, align 8, !tbaa !27
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !27
  %i.ay = sub i64 %i.ax, %i.av
  %i.az = icmp ult i64 %.018.i96, %i.ay
  br i1 %i.az, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i76241, ptr noundef nonnull %1) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %imalloc.exit

bb.j:                                             ; preds = %tsd_fetch_impl.exit
  %i.ba = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bc, label %imalloc_init_check.exit, label %bb.l, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.k
  %i.bd = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.bd, align 4, !tbaa !7
  br label %imalloc.exit

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.be = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  %i.bg = icmp ult i64 %0, 14337
  br i1 %i.bg, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bh = add nuw nsw i64 %0, 4095
  %i.bi = and i64 %i.bh, 28672                    ; 4 uses
  %i.bj = icmp samesign ult i64 %i.bi, 4097
  br i1 %i.bj, label %bb.n, label %sz_s2u_compute.exit.i87, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.bk = lshr exact i64 %i.bi, 3
  %i.bl = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i87:                          ; preds = %bb.m
  %i.bq = shl nuw nsw i64 %i.bi, 1
  %i.br = add nsw i64 %i.bq, -1
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.br, i1 true) ; 2 uses
  %notmask.i.i86 = ashr exact i64 -1152921504606846976, %i.bs
  %i.bt = lshr i64 1152921504606846975, %i.bs
  %i.bu = add nuw nsw i64 %i.bi, %i.bt
  %i.bv = and i64 %i.bu, %notmask.i.i86
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i87, %bb.n
  %.0.i24.i = phi i64 [ %i.bp, %bb.n ], [ %i.bv, %sz_s2u_compute.exit.i87 ] ; 2 uses
  %i.bw = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.bw, label %aligned_usize_get.exit.i13, label %.thread208

bb.o:                                             ; preds = %bb.l
  %i.bx = icmp ult i64 %0, 16385
  br i1 %i.bx, label %.thread208, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.by, label %sz_s2u_compute.exit29.i, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.bz = shl nuw i64 %0, 1
  %i.ca = add i64 %i.bz, -1
  %i.cb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ca, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cb
  %i.cc = lshr i64 1152921504606846975, %i.cb
  %i.cd = add nuw nsw i64 %0, %i.cc
  %i.ce = and i64 %i.cd, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.q, %bb.p
  %.0.i28.i = phi i64 [ %i.ce, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.cf = icmp ult i64 %.0.i28.i, %0
  br i1 %i.cf, label %aligned_usize_get.exit.i13.thread, label %.thread208

.thread208:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.o
  %.0.i85 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.o ], [ 16384, %sz_s2u.exit25.i ] ; 2 uses
  %i.cg = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.ch = xor i64 %.0.i85, -1
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  %..0.i = select i1 %i.ci, i64 0, i64 %.0.i85
  br label %aligned_usize_get.exit.i13

aligned_usize_get.exit.i13:                       ; preds = %.thread208, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread208 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 5 uses
  %i.cj = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i12 = icmp ult i64 %i.cj, -8070450532247928832
  br i1 %spec.select.i.i12, label %aligned_usize_get.exit.i13.thread, label %bb.r

bb.r:                                             ; preds = %aligned_usize_get.exit.i13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cm = icmp sgt i8 %i.cl, 0
  br i1 %i.cm, label %tcache_get_from_ind.exit.i, label %bb.s, !prof !118

bb.s:                                             ; preds = %bb.r
  %i.cn = load i8, ptr %i.e, align 1, !tbaa !104, !range !105, !noundef !106
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 872
  %spec.select = select i1 %i.co, ptr %i.cp, ptr null
  br label %imalloc_no_sample.exit

tcache_get_from_ind.exit.i:                       ; preds = %bb.r
  %i.cq = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %arena_get.exit111, label %imalloc_no_sample.exit, !prof !11

arena_get.exit111:                                ; preds = %tcache_get_from_ind.exit.i
  %i.cs = tail call ptr @je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.t, label %imalloc_no_sample.exit, !prof !12

bb.t:                                             ; preds = %arena_get.exit111
  %i.cu = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i13.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.s, %bb.t, %tcache_get_from_ind.exit.i, %arena_get.exit111
  %.0.i.i29218.ph = phi ptr [ null, %tcache_get_from_ind.exit.i ], [ null, %arena_get.exit111 ], [ %spec.select, %bb.s ], [ null, %bb.t ]
  %.1194.ph = phi ptr [ %i.cq, %tcache_get_from_ind.exit.i ], [ %i.cs, %arena_get.exit111 ], [ null, %bb.s ], [ null, %bb.t ]
  %i.cv = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1194.ph, i64 noundef %.018.i, i64 noundef 4096, i1 noundef zeroext %i.bf, ptr noundef %.0.i.i29218.ph) #20 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %aligned_usize_get.exit.i13.thread, label %bb.u, !prof !124

bb.u:                                             ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !112
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !113
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !114
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !115
  %i.df = load i64, ptr %i.cx, align 8, !tbaa !27 ; 2 uses
  %i.dg = add i64 %i.df, %.018.i
  store i64 %i.dg, ptr %i.cx, align 8, !tbaa !27
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !27
  %i.di = sub i64 %i.dh, %i.df
  %i.dj = icmp ult i64 %.018.i, %i.di
  br i1 %i.dj, label %bb.w, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not.i17 = xor i1 %i.bf, true
  %i.dk = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.dl = trunc nuw i8 %i.dk to i1
  %or.cond45.i18 = select i1 %.not.i17, i1 %i.dl, i1 false, !prof !118
  br i1 %or.cond45.i18, label %bb.x, label %aligned_usize_get.exit.i13.thread, !prof !118

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.dm(ptr noundef nonnull %i.cv, i64 noundef %.018.i) #20, !inline_history !120
  br label %aligned_usize_get.exit.i13.thread

aligned_usize_get.exit.i13.thread:                ; preds = %bb.t, %sz_s2u_compute.exit29.i, %aligned_usize_get.exit.i13, %imalloc_no_sample.exit, %bb.w, %bb.x
  %.0202.ph = phi ptr [ %i.cv, %bb.x ], [ null, %sz_s2u_compute.exit29.i ], [ null, %aligned_usize_get.exit.i13 ], [ null, %imalloc_no_sample.exit ], [ %i.cv, %bb.w ], [ null, %bb.t ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 16, !tbaa !27
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !27
  %i.dn = ptrtoint ptr %.0202.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 5, ptr noundef %.0202.ph, i64 noundef %i.dn, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %sz_s2u_compute.exit29.i90, %aligned_usize_get.exit.i, %imalloc_no_sample.exit69, %bb.i, %imalloc_init_check.exit, %aligned_usize_get.exit.i13.thread
  %.0202231 = phi ptr [ %.0202.ph, %aligned_usize_get.exit.i13.thread ], [ null, %imalloc_init_check.exit ], [ null, %imalloc_no_sample.exit69 ], [ null, %aligned_usize_get.exit.i ], [ %i.al, %bb.i ], [ null, %sz_s2u_compute.exit29.i90 ]
  ret ptr %.0202231
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias ptr @je_mallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %mallocx_arena_get.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = and i64 %i.f, -2                         ; 2 uses
  %i.h = trunc i32 %1 to i8
  %i.i = lshr i8 %i.h, 6
  %i.j = and i8 %i.i, 1                           ; 2 uses
  %i.k = and i32 %1, 1048320                      ; 2 uses
  switch i32 %i.k, label %bb.d [
    i32 0, label %mallocx_tcache_get.exit
    i32 256, label %bb.c
  ], !prof !142

bb.c:                                             ; preds = %bb.b
  br label %mallocx_tcache_get.exit

bb.d:                                             ; preds = %bb.b
  %i.l = lshr exact i32 %i.k, 8
  %i.m = add nsw i32 %i.l, -2
  br label %mallocx_tcache_get.exit

mallocx_tcache_get.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  %.0.i10 = phi i32 [ %i.m, %bb.d ], [ -1, %bb.c ], [ -2, %bb.b ] ; 2 uses
  %.not.i = icmp ult i32 %1, 1048576
  br i1 %.not.i, label %mallocx_arena_get.exit, label %bb.e, !prof !13

bb.e:                                             ; preds = %mallocx_tcache_get.exit
  %i.n = lshr i32 %1, 20
  %i.o = add nsw i32 %i.n, -1
  br label %mallocx_arena_get.exit

mallocx_arena_get.exit:                           ; preds = %bb.e, %mallocx_tcache_get.exit, %bb.a
  %.sroa.60.0 = phi i32 [ -1, %bb.a ], [ %i.o, %bb.e ], [ -1, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.54153.0 = phi i32 [ -2, %bb.a ], [ %.0.i10, %bb.e ], [ %.0.i10, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.42.0 = phi i8 [ 0, %bb.a ], [ %i.j, %bb.e ], [ %i.j, %mallocx_tcache_get.exit ] ; 2 uses
  %.sroa.32.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.e ], [ %i.g, %mallocx_tcache_get.exit ] ; 14 uses
  %i.p = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 832
  %i.r = load i8, ptr %i.q, align 8, !tbaa !14
  %.not.i84 = icmp eq i8 %i.r, 0
  br i1 %.not.i84, label %compute_size_with_overflow.exit37, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %mallocx_arena_get.exit
  %i.s = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.p, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.t = icmp eq i8 %.pre, 0
  br i1 %i.t, label %compute_size_with_overflow.exit37, label %bb.av, !prof !90

compute_size_with_overflow.exit37:                ; preds = %mallocx_arena_get.exit, %tsd_fetch_impl.exit
  %.0.i85314 = phi ptr [ %i.s, %tsd_fetch_impl.exit ], [ %i.p, %mallocx_arena_get.exit ] ; 17 uses
  %i.u = trunc nuw i8 %.sroa.42.0 to i1           ; 6 uses
  %i.v = icmp eq i64 %.sroa.32.0, 0               ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.j

bb.f:                                             ; preds = %compute_size_with_overflow.exit37
  %i.w = icmp ult i64 %0, 4097
  br i1 %i.w, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.x = add nuw nsw i64 %0, 7
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = zext i8 %i.aa to i32
  br label %sz_size2index.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ac, label %imalloc.exit, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.ad = shl nuw i64 %0, 1
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 3 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = sub nuw nsw i64 60, %i.af
  %i.ai = ashr exact i64 -1152921504606846976, %i.af
  %i.aj = add nsw i64 %0, -1
  %i.ak = and i64 %i.ai, %i.aj
  %i.al = lshr i64 %i.ak, %i.ah
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 3
  %i.ao = shl nuw nsw i32 %i.ag, 2
  %reass.sub295 = sub nsw i32 %i.an, %i.ao
  %i.ap = add nsw i32 %reass.sub295, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.i, %bb.g
  %.0.i50.i = phi i32 [ %i.ab, %bb.g ], [ %i.ap, %bb.i ] ; 3 uses
  %i.aq = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.aq, label %imalloc.exit, label %aligned_usize_get.exit.i.thread218, !prof !91

aligned_usize_get.exit.i.thread218:               ; preds = %sz_size2index.exit.i
  %i.ar = zext nneg i32 %.0.i50.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !27
  br label %bb.q

bb.j:                                             ; preds = %compute_size_with_overflow.exit37
  %i.au = icmp ult i64 %0, 14337
  %i.av = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i97 = and i1 %i.au, %i.av
  br i1 %or.cond.i97, label %bb.k, label %bb.m

end_hunk_4
begin_hunk_5_@je_mallocx:bb.a
imalloc_no_sample.exit78:                         ; preds = %bb.ar, %.thread234, %bb.ag, %bb.aq, %sz_s2u.exit.i56, %ipallocztm.exit83
  %.0.i46 = phi ptr [ %i.ew, %sz_s2u.exit.i56 ], [ %i.cv, %ipallocztm.exit83 ], [ %i.fc, %bb.ar ], [ %.0.i22.i70.ph, %.thread234 ], [ %.131.i.i73, %bb.ag ], [ %i.ed, %bb.aq ] ; 2 uses
  %i.fd = icmp eq ptr %.0.i46, null
  br i1 %i.fd, label %imalloc.exit, label %bb.as, !prof !146

bb.as:                                            ; preds = %imalloc_no_sample.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 840 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !112
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !113
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !114
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 848
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !115
  %i.fm = load i64, ptr %i.fe, align 8, !tbaa !27 ; 2 uses
  %i.fn = add i64 %i.fm, %.0209222
  store i64 %i.fn, ptr %i.fe, align 8, !tbaa !27
  %i.fo = load i64, ptr %i.fi, align 8, !tbaa !27
  %i.fp = sub i64 %i.fo, %i.fm
  %i.fq = icmp ult i64 %.0209222, %i.fp
  br i1 %i.fq, label %bb.au, label %bb.at, !prof !13

bb.at:                                            ; preds = %bb.as
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %2) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

bb.av:                                            ; preds = %tsd_fetch_impl.exit
  %i.fr = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %compute_size_with_overflow.exit, label %bb.aw, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.ft = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.ft, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.aw
  %i.fu = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.fu, align 4, !tbaa !7
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.av, %bb.aw
  %i.fv = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.fw = or i8 %i.fv, %.sroa.42.0
  %.0.i.i18 = icmp ne i8 %i.fw, 0                 ; 7 uses
  %i.fx = icmp eq i64 %.sroa.32.0, 0              ; 2 uses
  br i1 %i.fx, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %compute_size_with_overflow.exit
  %i.fy = icmp ult i64 %0, 4097
  br i1 %i.fy, label %bb.ay, label %bb.az, !prof !13

bb.ay:                                            ; preds = %bb.ax
  %i.fz = add nuw nsw i64 %0, 7
  %i.ga = lshr i64 %i.fz, 3
  %i.gb = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !14
  %i.gd = zext i8 %i.gc to i32
  br label %sz_size2index.exit.i28

bb.az:                                            ; preds = %bb.ax
  %i.ge = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ge, label %aligned_usize_get.exit.i22.thread, label %bb.ba, !prof !11

bb.ba:                                            ; preds = %bb.az
  %i.gf = shl nuw i64 %0, 1
  %i.gg = add i64 %i.gf, -1
  %i.gh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gg, i1 true) ; 3 uses
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = sub nuw nsw i64 60, %i.gh
  %i.gk = ashr exact i64 -1152921504606846976, %i.gh
  %i.gl = add nsw i64 %0, -1
  %i.gm = and i64 %i.gk, %i.gl
  %i.gn = lshr i64 %i.gm, %i.gj
  %i.go = trunc i64 %i.gn to i32
  %i.gp = and i32 %i.go, 3
  %i.gq = shl nuw nsw i32 %i.gi, 2
  %reass.sub = sub nsw i32 %i.gp, %i.gq
  %i.gr = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.ba, %bb.ay
  %.0.i50.i29 = phi i32 [ %i.gd, %bb.ay ], [ %i.gr, %bb.ba ] ; 3 uses
  %i.gs = icmp samesign ugt i32 %.0.i50.i29, 234
  br i1 %i.gs, label %aligned_usize_get.exit.i22.thread, label %aligned_usize_get.exit.i22.thread250, !prof !91

aligned_usize_get.exit.i22.thread250:             ; preds = %sz_size2index.exit.i28
  %i.gt = zext nneg i32 %.0.i50.i29 to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !27
  br label %bb.bi

bb.bb:                                            ; preds = %compute_size_with_overflow.exit
  %i.gw = icmp ult i64 %0, 14337
  %i.gx = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i91 = and i1 %i.gw, %i.gx
  br i1 %or.cond.i91, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.gy = add nsw i64 %0, -1
  %i.gz = add nsw i64 %i.gy, %.sroa.32.0
  %i.ha = sub nsw i64 0, %.sroa.32.0
  %i.hb = and i64 %i.gz, %i.ha                    ; 4 uses
  %i.hc = icmp samesign ult i64 %i.hb, 4097
  br i1 %i.hc, label %bb.bd, label %sz_s2u_compute.exit.i96, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.hd = add nuw nsw i64 %i.hb, 6
  %i.he = lshr i64 %i.hd, 3
  %i.hf = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !14
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i96:                          ; preds = %bb.bc
  %i.hk = shl nuw nsw i64 %i.hb, 1
  %i.hl = add nsw i64 %i.hk, -1
  %i.hm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hl, i1 true) ; 2 uses
  %notmask.i.i95 = ashr exact i64 -1152921504606846976, %i.hm
  %i.hn = lshr i64 1152921504606846975, %i.hm
  %i.ho = add nuw nsw i64 %i.hb, %i.hn
  %i.hp = and i64 %i.ho, %notmask.i.i95
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i96, %bb.bd
  %.0.i24.i = phi i64 [ %i.hj, %bb.bd ], [ %i.hp, %sz_s2u_compute.exit.i96 ] ; 2 uses
  %i.hq = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.hq, label %aligned_usize_get.exit.i22, label %.thread246

bb.be:                                            ; preds = %bb.bb
  %i.hr = icmp ugt i64 %.sroa.32.0, 8070450532247928832
  br i1 %i.hr, label %aligned_usize_get.exit.i22.thread, label %bb.bf, !prof !122

bb.bf:                                            ; preds = %bb.be
  %i.hs = icmp ult i64 %0, 16385
  br i1 %i.hs, label %.thread246, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ht = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ht, label %sz_s2u_compute.exit29.i, label %bb.bh, !prof !11

bb.bh:                                            ; preds = %bb.bg
  %i.hu = shl nuw i64 %0, 1
  %i.hv = add i64 %i.hu, -1
  %i.hw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hv, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.hw
  %i.hx = lshr i64 1152921504606846975, %i.hw
  %i.hy = add nuw nsw i64 %0, %i.hx
  %i.hz = and i64 %i.hy, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.bh, %bb.bg
  %.0.i28.i = phi i64 [ %i.hz, %bb.bh ], [ 0, %bb.bg ] ; 2 uses
  %i.ia = icmp ult i64 %.0.i28.i, %0
  br i1 %i.ia, label %aligned_usize_get.exit.i22.thread, label %.thread246

.thread246:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.bf
  %.0.i94 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.bf ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ib = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.ic = add nuw nsw i64 %.sroa.32.0, 4094
  %i.id = and i64 %i.ic, 9223372036854771712
  %i.ie = add nsw i64 %i.id, -4096
  %i.if = add i64 %i.ie, %.0.i94
  %i.ig = add i64 %i.if, %i.ib
  %i.ih = icmp ult i64 %i.ig, %.0.i94
  %..0.i = select i1 %i.ih, i64 0, i64 %.0.i94
  br label %aligned_usize_get.exit.i22

aligned_usize_get.exit.i22:                       ; preds = %.thread246, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread246 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 2 uses
  %i.ii = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i21 = icmp ult i64 %i.ii, -8070450532247928832
  br i1 %spec.select.i.i21, label %aligned_usize_get.exit.i22.thread, label %bb.bi

bb.bi:                                            ; preds = %aligned_usize_get.exit.i22.thread250, %aligned_usize_get.exit.i22
  %.0205255 = phi i32 [ %.0.i50.i29, %aligned_usize_get.exit.i22.thread250 ], [ 0, %aligned_usize_get.exit.i22 ] ; 7 uses
  %.0206254 = phi i64 [ %i.gv, %aligned_usize_get.exit.i22.thread250 ], [ %.018.i, %aligned_usize_get.exit.i22 ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !14
  %i.il = icmp sgt i8 %i.ik, 0
  br i1 %i.il, label %tcache_get_from_ind.exit.i.thread, label %bb.bj, !prof !118

bb.bj:                                            ; preds = %bb.bi
  switch i32 %.sroa.54153.0, label %bb.bl [
    i32 -2, label %bb.bk
    i32 -1, label %tcache_get_from_ind.exit.i
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.im = load i8, ptr %i.s, align 1, !tbaa !104, !range !105, !noundef !106
  %i.in = trunc nuw i8 %i.im to i1
  %i.io = getelementptr inbounds nuw i8, ptr %i.s, i64 872
  %spec.select = select i1 %i.in, ptr %i.io, ptr null
  br label %tcache_get_from_ind.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.ip = load ptr, ptr @je_tcaches, align 8, !tbaa !143
  %i.iq = zext nneg i32 %.sroa.54153.0 to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iq ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !14 ; 2 uses
  %magicptr.i89 = ptrtoint ptr %i.is to i64
  switch i64 %magicptr.i89, label %tcache_get_from_ind.exit.i [
    i64 0, label %bb.bm
    i64 1, label %bb.bn
  ], !prof !145

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %.sroa.54153.0) #20
  tail call void @abort() #21
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.it = tail call ptr @je_tcache_create_explicit(ptr noundef nonnull %i.s) #20 ; 2 uses
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !14
  br label %tcache_get_from_ind.exit.i

tcache_get_from_ind.exit.i:                       ; preds = %bb.bn, %bb.bl, %bb.bk, %bb.bj
  %.0.i.i38 = phi ptr [ %spec.select, %bb.bk ], [ null, %bb.bj ], [ %i.is, %bb.bl ], [ %i.it, %bb.bn ] ; 2 uses
  %i.iu = icmp eq i32 %.sroa.60.0, -1
  br i1 %i.iu, label %arena_get.exit120.thread, label %tcache_get_from_ind.exit.i.thread

tcache_get_from_ind.exit.i.thread:                ; preds = %bb.bi, %tcache_get_from_ind.exit.i
  %.0.i.i38269 = phi ptr [ %.0.i.i38, %tcache_get_from_ind.exit.i ], [ null, %bb.bi ] ; 3 uses
  %.sroa.60.2263266 = phi i32 [ %.sroa.60.0, %tcache_get_from_ind.exit.i ], [ 0, %bb.bi ] ; 3 uses
  %i.iv = zext nneg i32 %.sroa.60.2263266 to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.iv
  %i.ix = load atomic ptr, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %arena_get.exit120, label %arena_get.exit120.thread, !prof !11

arena_get.exit120:                                ; preds = %tcache_get_from_ind.exit.i.thread
  %i.iz = tail call ptr @je_arena_init(ptr noundef nonnull %i.s, i32 noundef %.sroa.60.2263266, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.bo, label %arena_get.exit120.thread, !prof !12

bb.bo:                                            ; preds = %arena_get.exit120
  %i.jb = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i = icmp ult i32 %.sroa.60.2263266, %i.jb
  br i1 %.not.i.i, label %arena_get.exit120.thread, label %aligned_usize_get.exit.i22.thread

arena_get.exit120.thread:                         ; preds = %bb.bo, %tcache_get_from_ind.exit.i.thread, %tcache_get_from_ind.exit.i, %arena_get.exit120
  %.0.i.i38267.ph = phi ptr [ %.0.i.i38269, %tcache_get_from_ind.exit.i.thread ], [ %.0.i.i38269, %arena_get.exit120 ], [ %.0.i.i38, %tcache_get_from_ind.exit.i ], [ %.0.i.i38269, %bb.bo ] ; 7 uses
  %.1203.ph = phi ptr [ %i.ix, %tcache_get_from_ind.exit.i.thread ], [ %i.iz, %arena_get.exit120 ], [ null, %tcache_get_from_ind.exit.i ], [ null, %bb.bo ] ; 4 uses
  br i1 %i.fx, label %iallocztm.exit.i, label %ipallocztm.exit, !prof !13

ipallocztm.exit:                                  ; preds = %arena_get.exit120.thread
  %i.jc = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.s, ptr noundef %.1203.ph, i64 noundef %.0206254, i64 noundef %.sroa.32.0, i1 noundef zeroext %.0.i.i18, ptr noundef %.0.i.i38267.ph) #20
  br label %imalloc_no_sample.exit

iallocztm.exit.i:                                 ; preds = %arena_get.exit120.thread
  %.not.i20.i = icmp eq ptr %.0.i.i38267.ph, null
  br i1 %.not.i20.i, label %bb.cj, label %bb.bp, !prof !11

bb.bp:                                            ; preds = %iallocztm.exit.i
  %i.jd = icmp samesign ult i64 %0, 14337
  br i1 %i.jd, label %bb.bq, label %bb.bz, !prof !13

bb.bq:                                            ; preds = %bb.bp
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i.i38267.ph, i64 8
  %i.jf = zext nneg i32 %.0205255 to i64          ; 3 uses
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.je, i64 %i.jf ; 8 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !92 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !97 ; 2 uses
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 2 uses
  %i.jm = load i16, ptr %i.jl, align 8, !tbaa !98 ; 2 uses
  %i.jn = trunc i64 %i.jj to i16
  %.not.i24.i = icmp eq i16 %i.jm, %i.jn
  br i1 %.not.i24.i, label %bb.bs, label %bb.br, !prof !11

bb.br:                                            ; preds = %bb.bq
  store ptr %i.jk, ptr %i.jg, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i.thread

bb.bs:                                            ; preds = %bb.bq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jg, i64 20
  %i.jp = load i16, ptr %i.jo, align 4, !tbaa !99
  %.not21.i.i = icmp eq i16 %i.jp, %i.jm
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.bt, !prof !11

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.jk, ptr %i.jg, align 8, !tbaa !92
  %i.jq = ptrtoint ptr %i.jk to i64
  %i.jr = trunc i64 %i.jq to i16
  store i16 %i.jr, ptr %i.jl, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.js = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.s, ptr noundef %.1203.ph) ; 3 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %.thread279, label %bb.bu, !prof !11

bb.bu:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.ju = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %i.jf
  %.val113 = load i16, ptr %i.jv, align 2, !tbaa !102
  %i.jw = icmp eq i16 %.val113, 0
  br i1 %i.jw, label %bb.bv, label %bb.bw, !prof !11

bb.bv:                                            ; preds = %bb.bu
  %i.jx = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.s, ptr noundef nonnull %i.js, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0205255, i1 noundef zeroext %.0.i.i18) #20
  br label %.thread279

.thread279:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.bv
  %.0.i22.i.ph = phi ptr [ %i.jx, %bb.bv ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.bw:                                            ; preds = %bb.bu
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.s, ptr noundef nonnull %.0.i.i38267.ph, ptr noundef nonnull %i.jg, i32 noundef %.0205255, i1 noundef zeroext true) #20
  %i.jy = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.s, ptr noundef nonnull %i.js, ptr noundef nonnull %.0.i.i38267.ph, ptr noundef nonnull %i.jg, i32 noundef %.0205255, ptr noundef nonnull %i.b) #20
  %i.jz = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %.not291 = icmp eq i8 %i.jz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %.not291, label %aligned_usize_get.exit.i22.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.bt, %bb.br, %bb.bw
  %.131.i.i = phi ptr [ %i.jy, %bb.bw ], [ %i.ji, %bb.br ], [ %i.ji, %bb.bt ] ; 2 uses
  br i1 %.0.i.i18, label %bb.bx, label %bb.by, !prof !11

bb.bx:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.jf
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.kb, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %cache_bin_alloc_impl.exit.i.thread
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !107
  %i.ke = add i64 %i.kd, 1
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

bb.bz:                                            ; preds = %bb.bp
  %i.kf = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i = icmp ugt i64 %0, %i.kf
  br i1 %.not24.i.i, label %bb.cj, label %bb.ca, !prof !11

bb.ca:                                            ; preds = %bb.bz
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i38267.ph, i64 8
  %i.kh = zext nneg i32 %.0205255 to i64          ; 2 uses
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.kh ; 7 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !92 ; 3 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !97 ; 2 uses
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 2 uses
  %i.ko = load i16, ptr %i.kn, align 8, !tbaa !98 ; 2 uses
  %i.kp = trunc i64 %i.kl to i16
  %.not.i26.i = icmp eq i16 %i.ko, %i.kp
  br i1 %.not.i26.i, label %bb.cc, label %bb.cb, !prof !11

bb.cb:                                            ; preds = %bb.ca
  store ptr %i.km, ptr %i.ki, align 8, !tbaa !92
  br label %bb.cg

bb.cc:                                            ; preds = %bb.ca
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  %i.kr = load i16, ptr %i.kq, align 4, !tbaa !99
  %.not21.i28.i = icmp eq i16 %i.kr, %i.ko
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.cd, !prof !11

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.km, ptr %i.ki, align 8, !tbaa !92
  %i.ks = ptrtoint ptr %i.km to i64
  %i.kt = trunc i64 %i.ks to i16
  store i16 %i.kt, ptr %i.kn, align 8, !tbaa !98
  br label %bb.cg

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.cc
  %i.ku = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.s, ptr noundef %.1203.ph) ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %aligned_usize_get.exit.i22.thread, label %bb.ce, !prof !11

bb.ce:                                            ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.s, ptr noundef nonnull %.0.i.i38267.ph, ptr noundef nonnull %i.ki, i32 noundef %.0205255, i1 noundef zeroext false) #20
  %i.kw = icmp samesign ugt i64 %0, 8070450532247928832
  br i1 %i.kw, label %sz_s2u.exit.i, label %bb.cf, !prof !11

bb.cf:                                            ; preds = %bb.ce
  %i.kx = shl nuw i64 %0, 1
  %i.ky = add i64 %i.kx, -1
  %i.kz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ky, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.kz
  %i.la = lshr i64 1152921504606846975, %i.kz
  %i.lb = add nuw nsw i64 %0, %i.la
  %i.lc = and i64 %i.lb, %notmask.i.i
  br label %sz_s2u.exit.i
end_hunk_5
begin_hunk_6_@je_realloc_internal:bb.a
  %i.bd = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.aj
  %.val = load i16, ptr %i.be, align 2, !tbaa !102
  %i.bf = icmp eq i16 %.val, 0
  br i1 %i.bf, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.bb, i64 noundef range(i64 0, 14337) %1, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit.i80, %bb.n
  %.0.i22.i85.ph = phi ptr [ %i.bg, %bb.n ], [ null, %cache_bin_alloc_impl.exit.i80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit93

bb.o:                                             ; preds = %bb.m
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ap, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.bh = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ap, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %.not284 = icmp eq i8 %i.bi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not284, label %aligned_usize_get.exit.i.thread, label %cache_bin_alloc_impl.exit.i80.thread

cache_bin_alloc_impl.exit.i80.thread:             ; preds = %bb.l, %bb.j, %bb.o
  %.131.i.i88 = phi ptr [ %i.bh, %bb.o ], [ %i.ar, %bb.j ], [ %i.ar, %bb.l ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !107
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !107
  br label %imalloc_no_sample.exit93

bb.p:                                             ; preds = %iallocztm.exit.i62
  %i.bm = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i64 = icmp ugt i64 %1, %i.bm
  br i1 %.not24.i.i64, label %bb.v, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 880
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.aj ; 7 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !92 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !97
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !98 ; 2 uses
  %i.bv = trunc i64 %i.br to i16
  %.not.i26.i65 = icmp eq i16 %i.bu, %i.bv
  br i1 %.not.i26.i65, label %bb.s, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !92
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !99
  %.not21.i28.i78 = icmp eq i16 %i.bx, %i.bu
  br i1 %.not21.i28.i78, label %cache_bin_alloc_impl.exit29.i66, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !92
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = trunc i64 %i.by to i16
  store i16 %i.bz, ptr %i.bt, align 8, !tbaa !98
  br label %bb.u

cache_bin_alloc_impl.exit29.i66:                  ; preds = %bb.s
  %i.ca = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i100304, ptr noundef null) ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %aligned_usize_get.exit.i.thread, label %sz_s2u.exit.i71, !prof !11

sz_s2u.exit.i71:                                  ; preds = %cache_bin_alloc_impl.exit29.i66
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.am, ptr noundef nonnull %i.bo, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.cc = shl nuw i64 %1, 1
  %i.cd = add i64 %i.cc, -1
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cd, i1 true) ; 2 uses
  %notmask.i.i68 = ashr exact i64 -1152921504606846976, %i.ce
  %i.cf = lshr i64 1152921504606846975, %i.ce
  %i.cg = add nuw nsw i64 %1, %i.cf
  %i.ch = and i64 %i.cg, %notmask.i.i68
  %i.ci = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.ca, i64 noundef %i.ch, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit93

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !107
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !107
  br label %imalloc_no_sample.exit93

bb.v:                                             ; preds = %bb.p
  %i.cm = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i100304, ptr noundef null, i64 noundef %1, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit93

imalloc_no_sample.exit93:                         ; preds = %bb.v, %.thread, %cache_bin_alloc_impl.exit.i80.thread, %bb.u, %sz_s2u.exit.i71
  %.0.i21.i76 = phi ptr [ %i.cm, %bb.v ], [ %.0.i22.i85.ph, %.thread ], [ %.131.i.i88, %cache_bin_alloc_impl.exit.i80.thread ], [ %i.bq, %bb.u ], [ %i.ci, %sz_s2u.exit.i71 ] ; 2 uses
  %i.cn = icmp eq ptr %.0.i21.i76, null
  br i1 %i.cn, label %aligned_usize_get.exit.i.thread, label %bb.w, !prof !108

bb.w:                                             ; preds = %imalloc_no_sample.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !109
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 840 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !112
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !114
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 848
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !115
  %i.cw = load i64, ptr %i.co, align 8, !tbaa !27 ; 2 uses
  %i.cx = add i64 %i.cw, %i.al
  store i64 %i.cx, ptr %i.co, align 8, !tbaa !27
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.cz = sub i64 %i.cy, %i.cw
  %i.da = icmp ult i64 %i.al, %i.cz
  br i1 %i.da, label %bb.y, label %bb.x, !prof !13

bb.x:                                             ; preds = %bb.w
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %4) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %cache_bin_alloc_impl.exit29.i66, %bb.o, %bb.g, %sz_size2index.exit.i, %imalloc_no_sample.exit93
  %.sroa.11.1 = phi i64 [ %i.al, %imalloc_no_sample.exit93 ], [ 0, %bb.g ], [ 0, %sz_size2index.exit.i ], [ %i.al, %bb.o ], [ %i.al, %cache_bin_alloc_impl.exit29.i66 ]
  %i.db = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.db, align 4, !tbaa !7
  br label %imalloc.exit

bb.z:                                             ; preds = %tsd_fetch_impl.exit
  %i.dc = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ab, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %bb.z
  %i.de = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.de, label %imalloc_init_check.exit, label %bb.ab, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.aa
  %i.df = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.df, align 4, !tbaa !7
  br label %imalloc.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dg = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.dh = trunc nuw i8 %i.dg to i1                ; 6 uses
  %i.di = icmp ult i64 %1, 4097
  br i1 %i.di, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.dj = add nuw nsw i64 %1, 7
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !14
  %i.dn = zext i8 %i.dm to i32
  br label %sz_size2index.exit.i43

bb.ad:                                            ; preds = %bb.ab
  %i.do = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.do, label %aligned_usize_get.exit.i37.thread, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.dp = shl nuw i64 %1, 1
  %i.dq = add i64 %i.dp, -1
  %i.dr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dq, i1 true) ; 3 uses
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = sub nuw nsw i64 60, %i.dr
  %i.du = ashr exact i64 -1152921504606846976, %i.dr
  %i.dv = add nsw i64 %1, -1
  %i.dw = and i64 %i.du, %i.dv
  %i.dx = lshr i64 %i.dw, %i.dt
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 3
  %i.ea = shl nuw nsw i32 %i.ds, 2
  %reass.sub = sub nsw i32 %i.dz, %i.ea
  %i.eb = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i43

sz_size2index.exit.i43:                           ; preds = %bb.ae, %bb.ac
  %.0.i50.i44 = phi i32 [ %i.dn, %bb.ac ], [ %i.eb, %bb.ae ] ; 7 uses
  %i.ec = icmp samesign ugt i32 %.0.i50.i44, 234
  br i1 %i.ec, label %aligned_usize_get.exit.i37.thread, label %bb.af, !prof !151

bb.af:                                            ; preds = %sz_size2index.exit.i43
  %i.ed = zext nneg i32 %.0.i50.i44 to i64        ; 4 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ed ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !27 ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !14
  %i.ei = icmp sgt i8 %i.eh, 0
  br i1 %i.ei, label %tcache_get_from_ind.exit.i, label %bb.ag, !prof !118

bb.ag:                                            ; preds = %bb.af
  %i.ej = load i8, ptr %i.m, align 1, !tbaa !104, !range !105, !noundef !106
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 872 ; 3 uses
  br i1 %i.ek, label %iallocztm.exit.i, label %iallocztm.exit.i.thread

tcache_get_from_ind.exit.i:                       ; preds = %bb.af
  %i.em = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %arena_get.exit135, label %iallocztm.exit.i.thread, !prof !11

arena_get.exit135:                                ; preds = %tcache_get_from_ind.exit.i
  %i.eo = tail call ptr @je_arena_init(ptr noundef nonnull %i.m, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ah, label %iallocztm.exit.i.thread, !prof !12

bb.ah:                                            ; preds = %arena_get.exit135
  %i.eq = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i37.thread, label %iallocztm.exit.i.thread

iallocztm.exit.i:                                 ; preds = %bb.ag
  %i.er = icmp samesign ult i64 %1, 14337
  br i1 %i.er, label %bb.ai, label %bb.ar, !prof !13

bb.ai:                                            ; preds = %iallocztm.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.ed ; 8 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !92 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !97 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 8, !tbaa !98 ; 2 uses
  %i.fa = trunc i64 %i.ew to i16
  %.not.i24.i = icmp eq i16 %i.ez, %i.fa
  br i1 %.not.i24.i, label %bb.ak, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ak:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.fc = load i16, ptr %i.fb, align 4, !tbaa !99
  %.not21.i.i = icmp eq i16 %i.fc, %i.ez
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !92
  %i.fd = ptrtoint ptr %i.ex to i64
  %i.fe = trunc i64 %i.fd to i16
  store i16 %i.fe, ptr %i.ey, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ff = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.m, ptr noundef null) ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %.thread268, label %bb.am, !prof !11

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.fh = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.ed
  %.val128 = load i16, ptr %i.fi, align 2, !tbaa !102
  %i.fj = icmp eq i16 %.val128, 0
  br i1 %i.fj, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.fk = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ff, i64 noundef range(i64 0, 14337) %1, i32 noundef %.0.i50.i44, i1 noundef zeroext %i.dh) #20
  br label %.thread268

.thread268:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.an
  %.0.i22.i.ph = phi ptr [ %i.fk, %bb.an ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.ao:                                            ; preds = %bb.am
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.m, ptr noundef nonnull %i.el, ptr noundef nonnull %i.et, i32 noundef %.0.i50.i44, i1 noundef zeroext true) #20
  %i.fl = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.el, ptr noundef nonnull %i.et, i32 noundef %.0.i50.i44, ptr noundef nonnull %i.b) #20
  %i.fm = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %.not283 = icmp eq i8 %i.fm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %.not283, label %aligned_usize_get.exit.i37.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.al, %bb.aj, %bb.ao
  %.131.i.i = phi ptr [ %i.fl, %bb.ao ], [ %i.ev, %bb.aj ], [ %i.ev, %bb.al ] ; 2 uses
  br i1 %i.dh, label %bb.ap, label %bb.aq, !prof !11

bb.ap:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.fn = load i64, ptr %i.ee, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.fn, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %cache_bin_alloc_impl.exit.i.thread
  %i.fo = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !107
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

bb.ar:                                            ; preds = %iallocztm.exit.i
  %i.fr = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i = icmp ugt i64 %1, %i.fr
  br i1 %.not24.i.i, label %iallocztm.exit.i.thread, label %bb.as, !prof !11

bb.as:                                            ; preds = %bb.ar
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.ed ; 7 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !92 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !97 ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 8, !tbaa !98 ; 2 uses
  %i.ga = trunc i64 %i.fw to i16
  %.not.i26.i = icmp eq i16 %i.fz, %i.ga
  br i1 %.not.i26.i, label %bb.au, label %bb.at, !prof !11

bb.at:                                            ; preds = %bb.as
  store ptr %i.fx, ptr %i.ft, align 8, !tbaa !92
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  %i.gc = load i16, ptr %i.gb, align 4, !tbaa !99
  %.not21.i28.i = icmp eq i16 %i.gc, %i.fz
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.av, !prof !11

bb.av:                                            ; preds = %bb.au
  store ptr %i.fx, ptr %i.ft, align 8, !tbaa !92
  %i.gd = ptrtoint ptr %i.fx to i64
  %i.ge = trunc i64 %i.gd to i16
  store i16 %i.ge, ptr %i.fy, align 8, !tbaa !98
  br label %bb.aw

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.au
  %i.gf = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.m, ptr noundef null) ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %aligned_usize_get.exit.i37.thread, label %sz_s2u.exit.i, !prof !11

sz_s2u.exit.i:                                    ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.m, ptr noundef nonnull %i.el, ptr noundef nonnull %i.ft, i32 noundef %.0.i50.i44, i1 noundef zeroext false) #20
  %i.gh = shl nuw i64 %1, 1
  %i.gi = add i64 %i.gh, -1
  %i.gj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gi, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gj
  %i.gk = lshr i64 1152921504606846975, %i.gj
  %i.gl = add nuw nsw i64 %1, %i.gk
  %i.gm = and i64 %i.gl, %notmask.i.i
  %i.gn = tail call ptr @je_large_malloc(ptr noundef nonnull %i.m, ptr noundef nonnull %i.gf, i64 noundef %i.gm, i1 noundef zeroext %i.dh) #20
  br label %imalloc_no_sample.exit

bb.aw:                                            ; preds = %bb.at, %bb.av
  br i1 %i.dh, label %bb.ax, label %bb.ay, !prof !11

bb.ax:                                            ; preds = %bb.aw
  %i.go = load i64, ptr %i.ee, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 %i.go, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !107
  %i.gr = add i64 %i.gq, 1
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

iallocztm.exit.i.thread:                          ; preds = %tcache_get_from_ind.exit.i, %bb.ah, %arena_get.exit135, %bb.ag, %bb.ar
  %.1220.ph310 = phi ptr [ null, %bb.ar ], [ %i.em, %tcache_get_from_ind.exit.i ], [ null, %bb.ah ], [ %i.eo, %arena_get.exit135 ], [ null, %bb.ag ]
  %i.gs = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.m, ptr noundef %.1220.ph310, i64 noundef %1, i32 noundef %.0.i50.i44, i1 noundef zeroext %i.dh) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %iallocztm.exit.i.thread, %.thread268, %bb.aq, %bb.ay, %sz_s2u.exit.i
  %.0.i55 = phi ptr [ %i.gn, %sz_s2u.exit.i ], [ %i.gs, %iallocztm.exit.i.thread ], [ %.0.i22.i.ph, %.thread268 ], [ %.131.i.i, %bb.aq ], [ %i.fv, %bb.ay ] ; 4 uses
  %i.gt = icmp eq ptr %.0.i55, null
  br i1 %i.gt, label %aligned_usize_get.exit.i37.thread, label %bb.az, !prof !152

bb.az:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i8 1, ptr %5, align 8, !tbaa !109
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 840 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !112
  %i.gw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !113
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !114
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 848
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !115
  %i.hc = load i64, ptr %i.gu, align 8, !tbaa !27 ; 2 uses
  %i.hd = add i64 %i.hc, %i.ef
  store i64 %i.hd, ptr %i.gu, align 8, !tbaa !27
  %i.he = load i64, ptr %i.gy, align 8, !tbaa !27
  %i.hf = sub i64 %i.he, %i.hc
  %i.hg = icmp ult i64 %i.ef, %i.hf
  br i1 %i.hg, label %bb.bb, label %bb.ba, !prof !13

bb.ba:                                            ; preds = %bb.az
end_hunk_6
begin_hunk_7_@je_sdallocx:bb.a
  store ptr %i.w, ptr %i.p, align 8, !tbaa !92
  store ptr %0, ptr %i.w, align 8, !tbaa !97
  store i64 %i.n, ptr %i.g, align 8, !tbaa !27
  br label %bb.e

.split5:                                          ; preds = %bb.b, %bb.c, %bb.d
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %free_fastpath.exit, %.split, %.split5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_je_sdallocx_noflags(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %1, 4096
  br i1 %i.b, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i64 %1, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 856 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = zext i8 %i.f to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = add i64 %i.m, %i.h                       ; 2 uses
  %.not34.i = icmp ult i64 %i.n, %i.j
  br i1 %.not34.i, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.t = load i16, ptr %i.s, align 2, !tbaa !132
  %i.u = trunc i64 %i.r to i16
  %i.v = icmp eq i16 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %free_fastpath.exit, !prof !11

free_fastpath.exit:                               ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.w, ptr %i.p, align 8, !tbaa !92
  store ptr %0, ptr %i.w, align 8, !tbaa !97
  store i64 %i.n, ptr %i.g, align 8, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  tail call void @je_sdallocx_default(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %free_fastpath.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i64 0, 8070450532247928833) i64 @je_nallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr @je_tsd_booted, align 1, !tbaa !104, !range !105, !noundef !106
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %tsdn_fetch.exit

bb.c:                                             ; preds = %malloc_init.exit
  %i.f = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.h = load i8, ptr %i.g, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false) #20 ; 0 uses
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.d, %bb.c, %malloc_init.exit
  %i.j = and i32 %1, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k                      ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 5 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.i

bb.e:                                             ; preds = %tsdn_fetch.exit
  %i.o = icmp ult i64 %0, 4097
  br i1 %i.o, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %0, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.w, label %malloc_init.exit.thread, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.x = shl nuw i64 %0, 1
  %i.y = add i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.y, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.z
  %i.aa = lshr i64 1152921504606846975, %i.z
  %i.ab = add nuw nsw i64 %0, %i.aa
  %i.ac = and i64 %i.ab, %notmask.i
  br label %aligned_usize_get.exit

bb.i:                                             ; preds = %tsdn_fetch.exit
  %i.ad = icmp ult i64 %0, 14337
  %i.ae = icmp ult i64 %i.m, 4097
  %or.cond.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i64 %0, -1
  %i.ag = add nsw i64 %i.af, %i.m
  %i.ah = sub nsw i64 0, %i.m
  %i.ai = and i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp samesign ult i64 %i.ai, 4097
  br i1 %i.aj, label %bb.k, label %sz_s2u_compute.exit.i, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.ak = add nuw nsw i64 %i.ai, 6
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i:                            ; preds = %bb.j
  %i.ar = shl nuw nsw i64 %i.ai, 1
  %i.as = add nsw i64 %i.ar, -1
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.as, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.at
  %i.au = lshr i64 1152921504606846975, %i.at
  %i.av = add nuw nsw i64 %i.ai, %i.au
  %i.aw = and i64 %i.av, %notmask.i.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i, %bb.k
  %.0.i24.i = phi i64 [ %i.aq, %bb.k ], [ %i.aw, %sz_s2u_compute.exit.i ] ; 2 uses
  %i.ax = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.ax, label %malloc_init.exit.thread, label %.thread15

bb.l:                                             ; preds = %bb.i
  %i.ay = icmp ugt i64 %i.m, 8070450532247928832
  br i1 %i.ay, label %malloc_init.exit.thread, label %bb.m, !prof !122

bb.m:                                             ; preds = %bb.l
  %i.az = icmp ult i64 %0, 16385
  br i1 %i.az, label %.thread15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ba, label %sz_s2u_compute.exit29.i, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bb = shl nuw i64 %0, 1
  %i.bc = add i64 %i.bb, -1
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bc, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.bd
  %i.be = lshr i64 1152921504606846975, %i.bd
  %i.bf = add nuw nsw i64 %0, %i.be
  %i.bg = and i64 %i.bf, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.o, %bb.n
  %.0.i28.i = phi i64 [ %i.bg, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.bh = icmp ult i64 %.0.i28.i, %0
  br i1 %i.bh, label %malloc_init.exit.thread, label %.thread15

.thread15:                                        ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.m
  %.0.i13 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.m ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bi = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.bj = add nuw i64 %i.l, 4094
  %i.bk = and i64 %i.bj, 9223372036854771712
  %i.bl = add nsw i64 %i.bk, -4096
  %i.bm = add i64 %i.bl, %.0.i13
  %i.bn = add i64 %i.bm, %i.bi
  %i.bo = icmp ult i64 %i.bn, %.0.i13
  br i1 %i.bo, label %malloc_init.exit.thread, label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread15, %bb.f, %bb.h
  %storemerge.i = phi i64 [ %.0.i13, %.thread15 ], [ %i.v, %bb.f ], [ %i.ac, %bb.h ] ; 2 uses
  %i.bp = icmp ugt i64 %storemerge.i, 8070450532247928832
  %spec.select = select i1 %i.bp, i64 0, i64 %storemerge.i, !prof !155
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %aligned_usize_get.exit, %.thread15, %sz_s2u_compute.exit29.i, %sz_s2u.exit25.i, %bb.l, %bb.g, %bb.b
  %.0 = phi i64 [ %spec.select, %aligned_usize_get.exit ], [ 0, %.thread15 ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %sz_s2u_compute.exit29.i ], [ %.0.i24.i, %sz_s2u.exit25.i ], [ 0, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @je_mallctl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i9 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @je_ctl_byname(ptr noundef %.0.i9, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #20
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @je_ctl_byname(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @je_mallctlnametomib(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i7 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @je_ctl_nametomib(ptr noundef %.0.i7, ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @je_ctl_nametomib(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @je_mallctlbymib(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i10 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @je_ctl_bymib(ptr noundef %.0.i10, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #20
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @je_ctl_bymib(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @je_malloc_stats_print(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @je_tsd_booted, align 1, !tbaa !104, !range !105, !noundef !106
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #20
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.g = call zeroext i1 @je_buf_writer_init(ptr noundef %.0.i, ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 65536) #20 ; 0 uses
  call void @je_stats_print(ptr noundef nonnull @je_buf_writer_cb, ptr noundef nonnull %3, ptr noundef %2) #20
  call void @je_buf_writer_terminate(ptr noundef %.0.i, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare zeroext i1 @je_buf_writer_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @je_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_buf_writer_cb(ptr noundef, ptr noundef) #4

declare void @je_buf_writer_terminate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @je_malloc_usable_size(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %i.a = load i8, ptr @je_tsd_booted, align 1, !tbaa !104, !range !105, !noundef !106
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #20
  br label %tsdn_fetch.exit.i

tsdn_fetch.exit.i:                                ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %je_malloc_usable_size_impl.exit, label %bb.d, !prof !11

tsdn_fetch.exit.i.thread:                         ; preds = %bb.a
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %je_malloc_usable_size_impl.exit, label %.thread, !prof !11

.thread:                                          ; preds = %tsdn_fetch.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  br label %bb.e

bb.d:                                             ; preds = %tsdn_fetch.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.i = icmp eq ptr %.0.i.i, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !90

bb.e:                                             ; preds = %.thread, %bb.d
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #20
  br label %arena_salloc.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 448
  br label %arena_salloc.exit

arena_salloc.exit:                                ; preds = %bb.e, %bb.f
  %.0.i.i46 = phi ptr [ null, %bb.e ], [ %.0.i.i, %bb.f ]
  %.0.i.i2 = phi ptr [ %1, %bb.e ], [ %i.j, %bb.f ]
  %i.k = ptrtoint ptr %0 to i64
end_hunk_7
begin_hunk_8_@je_batch_alloc:bb.a
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
  br i1 %i.bg, label %.critedge, label %.thread143

.thread143:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.k
  %.0.i127 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bh = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.bi = add nuw i64 %i.k, 4094
  %i.bj = and i64 %i.bi, 9223372036854771712
  %i.bk = add nsw i64 %i.bj, -4096
  %i.bl = add i64 %i.bk, %.0.i127
  %i.bm = add i64 %i.bl, %i.bh
  %i.bn = icmp ult i64 %i.bm, %.0.i127
  %..0.i = select i1 %i.bn, i64 0, i64 %.0.i127
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread143, %sz_s2u.exit25.i, %bb.d, %bb.f
  %storemerge.i = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ %..0.i, %.thread143 ] ; 15 uses
  %i.bo = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.bo, -8070450532247928832
  br i1 %spec.select.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %aligned_usize_get.exit
  %i.bp = icmp samesign ult i64 %storemerge.i, 4097
  br i1 %i.bp, label %bb.o, label %sz_size2index_compute.exit, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.bq = add nuw nsw i64 %storemerge.i, 7
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
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
  %.0.i118 = phi i32 [ %i.bu, %bb.o ], [ %i.ch, %sz_size2index_compute.exit ] ; 4 uses
  %i.ci = and i32 %3, 64
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.cl = trunc nuw i8 %i.ck to i1
  %.0.i116 = or i1 %i.cj, %i.cl                   ; 2 uses
  %i.cm = zext nneg i32 %.0.i118 to i64           ; 3 uses
  %i.cn = icmp samesign ugt i32 %.0.i118, 38      ; 2 uses
  br i1 %i.cn, label %bb.q, label %bb.p, !prof !11

bb.p:                                             ; preds = %sz_size2index.exit
  %i.co = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !156
  %i.cr = zext i32 %i.cq to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %sz_size2index.exit
  %.095 = phi i64 [ %i.cr, %bb.p ], [ 0, %sz_size2index.exit ] ; 2 uses
  %.not.i = icmp ult i32 %3, 1048576
  %i.cs = lshr i32 %3, 20
  %i.ct = add nsw i32 %i.cs, -1                   ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cu
  %i.cw = and i32 %3, 1048320                     ; 2 uses
  %i.cx = lshr exact i32 %i.cw, 8
  %i.cy = add nsw i32 %i.cx, -2                   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 880
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cm
  %i.db = zext nneg i32 %i.cy to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 840 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i125142, <4 x i64> <i64 840, i64 8, i64 16, i64 848>
  br label %bb.r

bb.r:                                             ; preds = %select.unfold170, %bb.q
  %.0 = phi ptr [ null, %bb.q ], [ %.5139, %select.unfold170 ] ; 3 uses
  %.090 = phi ptr [ null, %bb.q ], [ %.494, %select.unfold170 ] ; 4 uses
  %.089 = phi i64 [ 0, %bb.q ], [ %.5, %select.unfold170 ] ; 8 uses
  %i.dg = icmp ult i64 %.089, %1
  br i1 %i.dg, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dh = sub nuw i64 %1, %.089                   ; 6 uses
  %.not = icmp ult i64 %i.dh, %.095
  %or.cond = select i1 %i.cn, i1 true, i1 %.not, !prof !157
  br i1 %or.cond, label %bb.w, label %bb.t, !prof !157

bb.t:                                             ; preds = %bb.s
  %i.di = icmp eq ptr %.0, null
  br i1 %i.di, label %bb.u, label %arena_get_from_ind.exit.thread158

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i, label %arena_get_from_ind.exit, label %mallocx_arena_get.exit, !prof !13

mallocx_arena_get.exit:                           ; preds = %bb.u
  %i.dj = load atomic ptr, ptr %i.cv acquire, align 8 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %arena_get.exit, label %arena_get_from_ind.exit.thread158, !prof !11

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.dl = call ptr @je_arena_init(ptr noundef nonnull %.0.i125142, i32 noundef %i.ct, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.v, label %arena_get_from_ind.exit.thread158, !prof !12

bb.v:                                             ; preds = %arena_get.exit
  %i.dn = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i120 = icmp ult i32 %i.ct, %i.dn
  br i1 %.not.i120, label %arena_get_from_ind.exit, label %.critedge

arena_get_from_ind.exit:                          ; preds = %bb.v, %bb.u
  %i.do = call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i125142, ptr noundef null) ; 2 uses
  %.not190 = icmp eq ptr %i.do, null
  br i1 %.not190, label %select.unfold170, label %arena_get_from_ind.exit.thread158

arena_get_from_ind.exit.thread158:                ; preds = %mallocx_arena_get.exit, %arena_get.exit, %arena_get_from_ind.exit, %bb.t
  %.3138 = phi ptr [ %i.do, %arena_get_from_ind.exit ], [ %.0, %bb.t ], [ %i.dl, %arena_get.exit ], [ %i.dj, %mallocx_arena_get.exit ] ; 2 uses
  %i.dp = urem i64 %i.dh, %.095
  %i.dq = sub i64 %i.dh, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.089
  %i.ds = call i64 @je_arena_fill_small_fresh(ptr noundef nonnull %.0.i125142, ptr noundef nonnull %.3138, i32 noundef %.0.i118, ptr noundef %i.dr, i64 noundef %i.dq, i1 noundef zeroext %.0.i116) #20 ; 2 uses
  %i.dt = add i64 %i.ds, %.089
  br label %bb.w

bb.w:                                             ; preds = %arena_get_from_ind.exit.thread158, %bb.s
  %.4 = phi ptr [ %.0, %bb.s ], [ %.3138, %arena_get_from_ind.exit.thread158 ] ; 2 uses
  %.097 = phi i64 [ 0, %bb.s ], [ %i.ds, %arena_get_from_ind.exit.thread158 ] ; 8 uses
  %.1 = phi i64 [ %.089, %bb.s ], [ %i.dt, %arena_get_from_ind.exit.thread158 ] ; 7 uses
  %i.du = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.dv = icmp ult i32 %.0.i118, %i.du
  %i.dw = icmp ult i64 %.097, %i.dh
  %or.cond112 = select i1 %i.dv, i1 %i.dw, i1 false, !prof !16
  br i1 %or.cond112, label %bb.x, label %tcache_get_from_ind.exit.thread, !prof !16

bb.x:                                             ; preds = %bb.w
  %i.dx = icmp eq ptr %.090, null
  br i1 %i.dx, label %bb.y, label %tcache_get_from_ind.exit.thread178

bb.y:                                             ; preds = %bb.x
  switch i32 %i.cw, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %tcache_get_from_ind.exit.thread
  ], !prof !142

mallocx_tcache_get.exit:                          ; preds = %bb.y
  switch i32 %i.cy, label %bb.z [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %tcache_get_from_ind.exit.thread
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %bb.y, %mallocx_tcache_get.exit
  %i.dy = load i8, ptr %.0.i125142, align 1, !tbaa !104, !range !105, !noundef !106
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %tcache_get_from_ind.exit.thread178, label %tcache_get_from_ind.exit.thread

bb.z:                                             ; preds = %mallocx_tcache_get.exit
  %i.ea = load ptr, ptr @je_tcaches, align 8, !tbaa !143
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.db ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !14 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.ec to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
  ], !prof !145

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %i.cy) #20
  call void @abort() #21
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ed = call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i125142) #20 ; 2 uses
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !14
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.ab, %bb.z
  %i.ee = phi ptr [ %i.ed, %bb.ab ], [ %i.ec, %bb.z ] ; 2 uses
  %.not107 = icmp eq ptr %i.ee, null
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.cm
  br i1 %.not107, label %tcache_get_from_ind.exit.thread, label %tcache_get_from_ind.exit.thread178

tcache_get_from_ind.exit.thread178:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit, %bb.x
  %.292.ph = phi ptr [ %.090, %bb.x ], [ %i.eg, %tcache_get_from_ind.exit ], [ %i.da, %mallocx_tcache_get.exit.thread ] ; 7 uses
  %i.eh = sub i64 %i.dh, %.097
  %i.ei = getelementptr [8 x i8], ptr %0, i64 %.1 ; 10 uses
  %.292.val = load ptr, ptr %.292.ph, align 8, !tbaa !92 ; 2 uses
  %i.ej = getelementptr i8, ptr %.292.ph, i64 20  ; 2 uses
  %.292.val128 = load i16, ptr %i.ej, align 4, !tbaa !99
  %i.ek = ptrtoint ptr %.292.val to i64
  %i.el = trunc i64 %i.ek to i16
  %i.em = sub i16 %.292.val128, %i.el
  %i.en = lshr i16 %i.em, 3
  %i.eo = zext nneg i16 %i.en to i64
  %spec.select.i121191 = call i64 @llvm.umin.i64(i64 %i.eh, i64 %i.eo) ; 9 uses
  %i.ep = shl nuw nsw i64 %spec.select.i121191, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ei, ptr align 8 %.292.val, i64 %i.ep, i1 false)
  %i.eq = load ptr, ptr %.292.ph, align 8, !tbaa !92
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %spec.select.i121191 ; 2 uses
  store ptr %i.er, ptr %.292.ph, align 8, !tbaa !92
  %.val3.i = load i16, ptr %i.ej, align 4, !tbaa !99 ; 2 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = trunc i64 %i.es to i16                  ; 2 uses
  %i.eu = sub i16 %.val3.i, %i.et
  %i.ev = lshr i16 %i.eu, 3
  %i.ew = getelementptr i8, ptr %.292.ph, i64 16  ; 2 uses
  %.val4.i = load i16, ptr %i.ew, align 8, !tbaa !98
  %i.ex = sub i16 %.val3.i, %.val4.i
  %i.ey = lshr i16 %i.ex, 3
  %i.ez = icmp samesign ult i16 %i.ev, %i.ey
  br i1 %i.ez, label %bb.ac, label %cache_bin_low_water_adjust.exit

bb.ac:                                            ; preds = %tcache_get_from_ind.exit.thread178
  store i16 %i.et, ptr %i.ew, align 8, !tbaa !98
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %tcache_get_from_ind.exit.thread178, %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %.292.ph, i64 8 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !107
  %i.fc = add i64 %i.fb, %spec.select.i121191
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !107
  %i.fd = icmp ne i64 %spec.select.i121191, 0
  %or.cond193 = and i1 %.0.i116, %i.fd
  br i1 %or.cond193, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i121191, 7     ; 3 uses
  %i.fe = icmp samesign ult i64 %spec.select.i121191, 8
  br i1 %i.fe, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i121191, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.088192 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gc, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ff = getelementptr [8 x i8], ptr %i.ei, i64 %.088192
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fg, i8 0, i64 %storemerge.i, i1 false)
  %i.fh = getelementptr [8 x i8], ptr %i.ei, i64 %.088192
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fj, i8 0, i64 %storemerge.i, i1 false)
  %i.fk = getelementptr [8 x i8], ptr %i.ei, i64 %.088192
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fm, i8 0, i64 %storemerge.i, i1 false)
  %i.fn = getelementptr [8 x i8], ptr %i.ei, i64 %.088192
  %i.fo = getelementptr i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fp, i8 0, i64 %storemerge.i, i1 false)
  %i.fq = getelementptr [8 x i8], ptr %i.ei, i64 %.088192
  %i.fr = getelementptr i8, ptr %i.fq, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fs, i8 0, i64 %storemerge.i, i1 false)
  %i.ft = getelementptr [8 x i8], ptr %i.ei, i64 %.088192
  %i.fu = getelementptr i8, ptr %i.ft, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 %storemerge.i, i1 false)
  %i.fw = getelementptr [8 x i8], ptr %i.ei, i64 %.088192
  %i.fx = getelementptr i8, ptr %i.fw, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.fy, i8 0, i64 %storemerge.i, i1 false)
  %i.fz = getelementptr [8 x i8], ptr %i.ei, i64 %.088192
  %i.ga = getelementptr i8, ptr %i.fz, i64 56
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.gb, i8 0, i64 %storemerge.i, i1 false)
  %i.gc = add nuw nsw i64 %.088192, 8             ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !158

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.088192.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gc, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.088192.epil = phi i64 [ %i.gf, %.lr.ph.epil ], [ %.088192.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gd = getelementptr [8 x i8], ptr %i.ei, i64 %.088192.epil
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %storemerge.i, i1 false)
  %i.gf = add nuw nsw i64 %.088192.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !159

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gg = add i64 %spec.select.i121191, %.097
  %i.gh = add i64 %spec.select.i121191, %.1
  br label %tcache_get_from_ind.exit.thread

tcache_get_from_ind.exit.thread:                  ; preds = %bb.y, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit, %.loopexit, %bb.w
  %.198 = phi i64 [ %i.gg, %.loopexit ], [ %.097, %bb.w ], [ %.097, %tcache_get_from_ind.exit ], [ %.097, %mallocx_tcache_get.exit ], [ %.097, %mallocx_tcache_get.exit.thread ], [ %.097, %bb.y ] ; 2 uses
  %.393 = phi ptr [ %.292.ph, %.loopexit ], [ %.090, %bb.w ], [ null, %tcache_get_from_ind.exit ], [ null, %mallocx_tcache_get.exit ], [ null, %mallocx_tcache_get.exit.thread ], [ null, %bb.y ] ; 2 uses
  %.2 = phi i64 [ %i.gh, %.loopexit ], [ %.1, %bb.w ], [ %.1, %tcache_get_from_ind.exit ], [ %.1, %mallocx_tcache_get.exit ], [ %.1, %mallocx_tcache_get.exit.thread ], [ %.1, %bb.y ] ; 4 uses
  %i.gi = mul i64 %.198, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !109
  store <4 x ptr> %i.df, ptr %i.dd, align 8, !tbaa !161
  %i.gj = load i64, ptr %i.dc, align 8, !tbaa !27 ; 2 uses
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.dc, align 8, !tbaa !27
  %i.gl = load i64, ptr %i.de, align 8, !tbaa !27
  %i.gm = sub i64 %i.gl, %i.gj
  %i.gn = icmp ult i64 %i.gi, %i.gm
  br i1 %i.gn, label %te_event_advance.exit, label %bb.ad, !prof !13

bb.ad:                                            ; preds = %tcache_get_from_ind.exit.thread
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i125142, ptr noundef nonnull %4) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %tcache_get_from_ind.exit.thread, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.go = icmp ult i64 %.198, %i.dh
  br i1 %i.go, label %bb.ae, label %select.unfold170

bb.ae:                                            ; preds = %te_event_advance.exit
  %i.gp = call noalias ptr @je_mallocx(i64 noundef %2, i32 noundef %3) #23 ; 2 uses
  %.not109 = icmp eq ptr %i.gp, null
  br i1 %.not109, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gq = add i64 %.2, 1
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !97
  br label %select.unfold170

select.unfold170:                                 ; preds = %bb.af, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5139 = phi ptr [ %.4, %bb.af ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %i.gs = phi i1 [ true, %bb.af ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  %.494 = phi ptr [ %.393, %bb.af ], [ %.393, %te_event_advance.exit ], [ %.090, %arena_get_from_ind.exit ]
  %.5 = phi i64 [ %i.gq, %bb.af ], [ %.2, %te_event_advance.exit ], [ %.089, %arena_get_from_ind.exit ] ; 2 uses
  br i1 %i.gs, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.v, %select.unfold170, %bb.r, %sz_s2u_compute.exit29.i, %bb.j, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.6 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit29.i ], [ %.2, %bb.ae ], [ %.089, %bb.v ], [ %.5, %select.unfold170 ], [ %.089, %bb.r ]
  ret i64 %.6
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #9 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) ; 7 uses
  %i.k = load i8, ptr %0, align 1, !tbaa !104, !range !105, !noundef !106
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162  ; 2 uses
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
  %.037.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.037.i, i64 78928 ; 2 uses
  %.037.val48.i = load i32, ptr %i.s, align 8, !tbaa !38
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %i.w = and i32 %i.u, 1
  %i.x = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.x, %i.w
  %.0.i47.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.y = icmp ult i32 %.037.val48.i, %.0.i47.i
  br i1 %i.y, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !169
  %.not45.i = icmp eq ptr %i.aa, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @sched_getcpu() #20       ; 3 uses
  %i.ac = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = icmp ult i32 %i.ab, %i.af
  %i.ah = select i1 %i.ag, i32 0, i32 %i.af
  %spec.select.i.i = sub nuw i32 %i.ab, %i.ah
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.ab, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.037.val.i = load i32, ptr %i.s, align 8, !tbaa !38
  %.not46.i = icmp eq i32 %.037.val.i, %.0.i.i
  br i1 %.not46.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !36  ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 78928
  %.val.i.i = load i32, ptr %i.aj, align 8, !tbaa !38
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = zext i32 %.0.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %arena_get.exit.i.i, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef nonnull @je_arena_config_default), !inline_history !15
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.am, %bb.p ] ; 3 uses
  tail call void @je_arena_nthreads_dec(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20
  tail call void @je_arena_nthreads_inc(ptr noundef %.0.i18.i.i, i1 noundef zeroext false) #20
  store ptr %.0.i18.i.i, ptr %i.g, align 8, !tbaa !36
  %i.ap = tail call i32 @je_arena_nthreads_get(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %je_arena_migrate.exit.i.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %je_arena_migrate.exit.i.i

je_arena_migrate.exit.i.i:                        ; preds = %bb.r, %arena_get.exit.i.i
  %i.ar = load i8, ptr %0, align 1, !tbaa !104, !range !105, !noundef !106
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.s, label %percpu_arena_update.exit.i

bb.s:                                             ; preds = %je_arena_migrate.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.au, ptr noundef nonnull %i.at, ptr noundef %.0.i18.i.i) #20
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.s, %je_arena_migrate.exit.i.i, %bb.o
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.av, %percpu_arena_update.exit.i ], [ %.037.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.aw, align 8, !tbaa !169
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.t
  %.0.i = phi ptr [ %1, %bb.a ], [ %.037.i, %percpu_arena_ind_limit.exit.i ], [ %.037.i, %bb.k ], [ %.1.i, %bb.t ], [ %.037.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.0.i
}

declare i64 @je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal void @jemalloc_constructor() #1 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

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
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !13

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
  tail call void @je_background_thread_prefork0(ptr noundef %.0.i) #20
  tail call void @je_prof_prefork0(ptr noundef %.0.i) #20
  tail call void @je_background_thread_prefork1(ptr noundef %.0.i) #20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.e to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.041.us = phi i32 [ %i.j, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %arena_get.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %arena_get.exit.thread.us ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread.us, label %arena_get.exit.us, !prof !11

arena_get.exit.us:                                ; preds = %bb.c
  switch i32 %.041.us, label %default.unreachable [
    i32 0, label %bb.l
    i32 1, label %bb.k
    i32 2, label %bb.j
    i32 3, label %bb.i
    i32 4, label %bb.h
    i32 5, label %bb.g
    i32 6, label %bb.f
    i32 7, label %bb.e
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork8(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.e:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork7(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.f:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork6(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.g:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork5(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.h:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork4(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.i:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork3(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.j:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork2(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.k:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork1(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.l:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork0(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

arena_get.exit.thread.us:                         ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !170

._crit_edge.us:                                   ; preds = %arena_get.exit.thread.us
  %i.j = add nuw nsw i32 %.041.us, 1              ; 2 uses
  %exitcond44.not = icmp eq i32 %i.j, 9
  br i1 %exitcond44.not, label %.split.us, label %.preheader.us, !llvm.loop !171

default.unreachable:                              ; preds = %arena_get.exit.us
  unreachable

.split.us:                                        ; preds = %._crit_edge.us, %tsd_fetch_impl.exit
  tail call void @je_prof_prefork1(ptr noundef %.0.i) #20
  tail call void @je_stats_prefork(ptr noundef %.0.i) #20
  tail call void @je_tsd_prefork(ptr noundef %.0.i) #20
  ret void
}

declare void @je_witness_prefork(ptr noundef) local_unnamed_addr #4

declare void @je_ctl_prefork(ptr noundef) local_unnamed_addr #4

declare void @je_tcache_prefork(ptr noundef) local_unnamed_addr #4

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_background_thread_prefork0(ptr noundef) local_unnamed_addr #4

declare void @je_prof_prefork0(ptr noundef) local_unnamed_addr #4

declare void @je_background_thread_prefork1(ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork0(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork1(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork2(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork5(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork6(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork7(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork8(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_prof_prefork1(ptr noundef) local_unnamed_addr #4

declare void @je_stats_prefork(ptr noundef) local_unnamed_addr #4

declare void @je_tsd_prefork(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_postfork_parent() #1 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.c, 0
end_hunk_8
begin_hunk_9_@je_jemalloc_postfork_child:bb.a
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !11

arena_get.exit:                                   ; preds = %.lr.ph
  tail call void @je_arena_postfork_child(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph, %arena_get.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsd_fetch_impl.exit
  tail call void @je_prof_postfork_child(ptr noundef %.0.i) #20
  tail call void @je_background_thread_postfork_child(ptr noundef %.0.i) #20
  tail call void @je_malloc_mutex_postfork_child(ptr noundef %.0.i, ptr noundef nonnull @je_arenas_lock) #20
  tail call void @je_tcache_postfork_child(ptr noundef %.0.i) #20
  tail call void @je_ctl_postfork_child(ptr noundef %.0.i) #20
  ret void
}

declare void @je_tsd_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_witness_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_stats_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_arena_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_prof_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_background_thread_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_tcache_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_ctl_postfork_child(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @je_get_defrag_hint(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #20
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.a)
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.b, 1
  %i.c = and i32 %.fca.1.extract.i.i, 256
  %.not = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.not, label %iget_defrag_hint.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef null, ptr noundef nonnull %2, i64 noundef %i.a)
  %i.d = load ptr, ptr %3, align 8, !tbaa !17     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !23 ; 3 uses
  %i.e = and i64 %.val.i, 4095
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.e
  %i.g = load atomic ptr, ptr %i.f monotonic, align 8
  %i.h = lshr i64 %.val.i, 20
  %i.i = and i64 %i.h, 255                        ; 2 uses
  %i.j = lshr i64 %.val.i, 38
  %i.k = and i64 %i.j, 63
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.i ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = zext i32 %i.n to i64
  %i.p = add i64 %i.o, %i.l
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw [224 x i8], ptr %i.q, i64 %i.k ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.t = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.s) #20
  %.not.i4 = icmp eq i32 %i.t, 0
  br i1 %.not.i4, label %bb.c, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.b
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.r) #20
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store atomic i8 1, ptr %i.u monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %atomic_store_b.exit.i, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.y, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !34
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !174
  %.not.i = icmp eq ptr %i.d, %i.ag
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %.val3 = load i64, ptr %i.d, align 8, !tbaa !23
  %i.ah = lshr i64 %.val3, 28
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1023                     ; 2 uses
  %.not55.i = icmp eq i32 %i.aj, 0
  br i1 %.not55.i, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !85 ; 2 uses
  %.not12 = icmp eq i32 %i.al, 0
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !156 ; 3 uses
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.am = load i32, ptr %i.m, align 4, !tbaa !7
  %i.an = zext i32 %i.am to i64
  %i.ao = add i64 %i.an, %i.l
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %.pre to i64
  %wide.trip.count = zext i32 %i.al to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.050.i.lcssa = phi i64 [ 0, %.preheader ], [ %.151.i, %bb.h ] ; 2 uses
  %.047.i.lcssa = phi i64 [ 0, %.preheader ], [ %.148.i, %bb.h ]
  %i.ar = sub i32 %.pre, %i.aj
  %i.as = zext i32 %i.ar to i64
  %i.at = mul i64 %.047.i.lcssa, %i.as
  %i.au = lshr i64 %.050.i.lcssa, 3
  %i.av = add i64 %i.au, %.050.i.lcssa
  %i.aw = icmp ule i64 %i.at, %i.av
  %i.ax = zext i1 %i.aw to i32
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.047.i10 = phi i64 [ 0, %.lr.ph ], [ %.148.i, %bb.h ]
  %.050.i8 = phi i64 [ 0, %.lr.ph ], [ %.151.i, %bb.h ]
  %i.ay = getelementptr inbounds nuw [224 x i8], ptr %i.ap, i64 %indvars.iv ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !177 ; 2 uses
  %i.bb = add i64 %i.ba, %.047.i10                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 176
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !178
  %.neg.i = sub i64 %i.ba, %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !179
  %.neg56.i = mul i64 %.neg.i, %i.aq
  %i.bg = add i64 %i.bf, %.050.i8
  %i.bh = add i64 %i.bg, %.neg56.i                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !174 ; 2 uses
  %.not57.i = icmp eq ptr %i.bj, null
  br i1 %.not57.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val2 = load i64, ptr %i.bj, align 8, !tbaa !23
  %i.bk = lshr i64 %.val2, 28
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 1023
  %i.bn = sub i32 %.pre, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = sub i64 %i.bh, %i.bo
  %i.bq = add i64 %i.bb, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.151.i = phi i64 [ %i.bp, %bb.g ], [ %i.bh, %bb.f ] ; 2 uses
  %.148.i = phi i64 [ %i.bq, %bb.g ], [ %i.bb, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !180

bb.i:                                             ; preds = %._crit_edge, %bb.e, %malloc_mutex_lock.exit
  %.1.i = phi i32 [ 0, %malloc_mutex_lock.exit ], [ %i.ax, %._crit_edge ], [ 0, %bb.e ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store atomic i8 0, ptr %i.br monotonic, align 1
  %i.bs = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.s) #20 ; 0 uses
  br label %iget_defrag_hint.exit

iget_defrag_hint.exit:                            ; preds = %bb.a, %bb.i
  %.2.i = phi i32 [ %.1.i, %bb.i ], [ 0, %bb.a ]
  ret i32 %.2.i
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias ptr @je_malloc_with_usize(i64 noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %0, 4096
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @je_malloc_default(i64 noundef %0, ptr noundef %1)
  br label %je_malloc_internal.exit

bb.c:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 840 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = add i64 %i.l, %i.j                       ; 3 uses
  %.not.i.i = icmp ult i64 %i.o, %i.n
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @je_malloc_default(i64 noundef %0, ptr noundef %1)
  br label %je_malloc_internal.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.h ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97   ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !98   ; 2 uses
  %i.x = trunc i64 %i.u to i16
  %.not.i.i1.i = icmp eq i16 %i.w, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  br i1 %.not.i.i1.i, label %bb.h, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %i.r, align 8, !tbaa !92
  store i64 %i.o, ptr %i.k, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !107
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !107
  %.not41.i.i = icmp eq ptr %1, null
  br i1 %.not41.i.i, label %je_malloc_internal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.j, ptr %1, align 8, !tbaa !27
  br label %je_malloc_internal.exit

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !99
  %.not21.i.i.i = icmp eq i16 %i.ad, %i.w
  br i1 %.not21.i.i.i, label %cache_bin_alloc_impl.exit.i.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  store ptr %i.y, ptr %i.r, align 8, !tbaa !92
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = trunc i64 %i.ae to i16
  store i16 %i.af, ptr %i.v, align 8, !tbaa !98
  store i64 %i.o, ptr %i.k, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !107
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !107
  %.not40.i.i = icmp eq ptr %1, null
  br i1 %.not40.i.i, label %je_malloc_internal.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.j, ptr %1, align 8, !tbaa !27
  br label %je_malloc_internal.exit

cache_bin_alloc_impl.exit.i.i:                    ; preds = %bb.h
  %i.aj = tail call ptr @je_malloc_default(i64 noundef %0, ptr noundef %1)
  br label %je_malloc_internal.exit

je_malloc_internal.exit:                          ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.i, %bb.j, %cache_bin_alloc_impl.exit.i.i
  %.2.i.i = phi ptr [ %i.c, %bb.b ], [ %i.p, %bb.d ], [ %i.aj, %cache_bin_alloc_impl.exit.i.i ], [ %i.t, %bb.f ], [ %i.t, %bb.g ], [ %i.t, %bb.j ], [ %i.t, %bb.i ]
  ret ptr %.2.i.i
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias ptr @je_calloc_with_usize(i64 noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @je_calloc_internal(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @je_realloc_with_usize(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc ptr @je_realloc_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @je_free_with_usize(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !134
  %.not.i.i.not.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not.i, label %emap_alloc_ctx_try_lookup_fast.exit.i, label %emap_alloc_ctx_try_lookup_fast.exit.thread.i, !prof !13

emap_alloc_ctx_try_lookup_fast.exit.i:            ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !137
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !181
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %emap_alloc_ctx_try_lookup_fast.exit.thread.i, !prof !141

bb.b:                                             ; preds = %emap_alloc_ctx_try_lookup_fast.exit.i
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 856 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %i.x = add i64 %i.w, %i.s                       ; 2 uses
  %.not34.i.i = icmp ult i64 %i.x, %i.u
  br i1 %.not34.i.i, label %bb.c, label %emap_alloc_ctx_try_lookup_fast.exit.thread.i, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !92  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !132
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %emap_alloc_ctx_try_lookup_fast.exit.thread.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !92
  store ptr %0, ptr %i.ag, align 8, !tbaa !97
  store i64 %i.x, ptr %i.r, align 8, !tbaa !27
  %.not35.i.i = icmp eq ptr %1, null
  br i1 %.not35.i.i, label %je_free_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.w, ptr %1, align 8, !tbaa !27
  br label %je_free_internal.exit

emap_alloc_ctx_try_lookup_fast.exit.thread.i:     ; preds = %bb.c, %bb.b, %emap_alloc_ctx_try_lookup_fast.exit.i, %bb.a
  tail call void @je_free_default(ptr noundef %0, ptr noundef %1)
  br label %je_free_internal.exit

je_free_internal.exit:                            ; preds = %bb.d, %bb.e, %emap_alloc_ctx_try_lookup_fast.exit.thread.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @malloc_init_hard_a0() unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 64)) #20
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #20
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 104) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %atomic_store_b.exit.i, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !28
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !28
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

end_hunk_9
begin_hunk_10_@malloc_init_hard_a0_locked:bb.a
  %i.bm = call zeroext i1 (...) @je_hpa_supported() #20
  br i1 %i.bm, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !104, !range !105, !noundef !106
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = select i1 %i.bo, ptr @.str.67, ptr @.str.68
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.66, ptr noundef nonnull %i.bp) #20
  %i.bq = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !104, !range !105, !noundef !106
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.146) #20
  call void @abort() #21
  unreachable

bb.af:                                            ; preds = %bb.ad
  store i8 0, ptr @je_opt_hpa, align 1, !tbaa !104
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac, %bb.ab
  %i.bs = call ptr @je_b0get() #20
  %i.bt = load i8, ptr @je_opt_hpa, align 1, !tbaa !104, !range !105, !noundef !106
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = call zeroext i1 @je_arena_boot(ptr noundef nonnull %0, ptr noundef %i.bs, i1 noundef zeroext %i.bu) #20
  br i1 %i.bv, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = call ptr @je_b0get() #20
  %i.bx = call zeroext i1 @je_tcache_boot(ptr noundef null, ptr noundef %i.bw) #20
  br i1 %i.bx, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull @je_arenas_lock, ptr noundef nonnull @.str.69, i32 noundef 4, i32 noundef 0) #20
  br i1 %i.by, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = call zeroext i1 (...) @je_hook_boot() #20 ; 0 uses
  store i32 1, ptr @je_narenas_auto, align 4, !tbaa !7
  store i32 2, ptr @je_manual_arena_base, align 4, !tbaa !7
  store i64 0, ptr @je_arenas, align 64
  %i.ca = call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default)
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.aq, label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.aj
  %i.cc = load atomic ptr, ptr @je_arenas acquire, align 64
  store ptr %i.cc, ptr @a0, align 8, !tbaa !36
  %i.cd = load i8, ptr @je_opt_hpa, align 1, !tbaa !104, !range !105, !noundef !106
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %arena_get.exit
  %i.cf = call zeroext i1 (...) @je_hpa_supported() #20
  br i1 %i.cf, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cg = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !104, !range !105, !noundef !106
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = select i1 %i.ch, ptr @.str.67, ptr @.str.68
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.66, ptr noundef nonnull %i.ci) #20
  %i.cj = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !104, !range !105, !noundef !106
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.146) #20
  call void @abort() #21
  unreachable

bb.an:                                            ; preds = %bb.al
  store i8 0, ptr @je_opt_hpa, align 1, !tbaa !104
  br label %.thread

bb.ao:                                            ; preds = %bb.ak
  %.pre = load i8, ptr @je_opt_hpa, align 1, !tbaa !104, !range !105
  %i.cl = trunc nuw i8 %.pre to i1
  br i1 %i.cl, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) @je_opt_hpa_opts, i64 40, i1 false), !tbaa.struct !188
  %i.cm = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !105, !noundef !106
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.cm, ptr %i.cn, align 4, !tbaa !189
  %i.co = load ptr, ptr @a0, align 8, !tbaa !36
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 10648
  %i.cq = call zeroext i1 @je_pa_shard_enable_hpa(ptr noundef null, ptr noundef nonnull %i.cp, ptr noundef nonnull %1, ptr noundef nonnull @je_opt_hpa_sec_opts) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %i.cq, label %bb.aq, label %.thread

.thread:                                          ; preds = %arena_get.exit, %bb.ao, %bb.ap, %bb.an
  store i32 2, ptr @je_malloc_init_state, align 4, !tbaa !7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.ap, %.thread
  %.1 = phi i1 [ true, %bb.ap ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ false, %.thread ], [ true, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #12

declare void @je_sc_boot(ptr noundef) local_unnamed_addr #4

declare void @je_bin_shard_sizes_boot(ptr noundef) local_unnamed_addr #4

declare void @je_san_init(i64 noundef) local_unnamed_addr #4

declare void @je_sz_boot(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @je_bin_info_boot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal void @stats_print_atexit() #1 {
bb.a:
  %0 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @je_tsd_booted, align 1, !tbaa !104, !range !105, !noundef !106
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #20
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.g = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %tsdn_fetch.exit
  %wide.trip.count = zext i32 %i.g to i64
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph32.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %arena_get.exit.thread, label %arena_get.exit, !prof !11

arena_get.exit:                                   ; preds = %.lr.ph32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 10472 ; 2 uses
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #20
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %bb.d, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %arena_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 10408
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 10512
  store atomic i8 1, ptr %i.n monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %atomic_store_b.exit.i, %arena_get.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 10464 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 10456 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.s, %.0.i
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 10448 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !34
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 10392 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190  ; 2 uses
  %.not2029 = icmp eq ptr %i.x, null
  br i1 %.not2029, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %malloc_mutex_lock.exit, %select.unfold
  %.030 = phi ptr [ %i.aa, %select.unfold ], [ %i.x, %malloc_mutex_lock.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.030, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !191
  tail call void @je_tcache_stats_merge(ptr noundef %.0.i, ptr noundef %i.z, ptr noundef nonnull %i.i) #20
  %i.aa = load ptr, ptr %.030, align 8, !tbaa !192 ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !190
  %.not21 = icmp eq ptr %i.aa, %i.ab
  %.not2036 = icmp eq ptr %i.aa, null
  %.not20 = or i1 %.not21, %.not2036
  br i1 %.not20, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %malloc_mutex_lock.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 10512
  store atomic i8 0, ptr %i.ac monotonic, align 1
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #20 ; 0 uses
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph32, %select.unfold._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph32, !llvm.loop !193

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsdn_fetch.exit
  %i.ae = load i8, ptr @je_tsd_booted, align 1, !tbaa !104, !range !105, !noundef !106
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %je_malloc_stats_print.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ag = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 832
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !14
  %.not.i.i26 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i26, label %je_malloc_stats_print.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #20
  br label %je_malloc_stats_print.exit

je_malloc_stats_print.exit:                       ; preds = %._crit_edge, %bb.f, %bb.g
  %.0.i.i = phi ptr [ null, %._crit_edge ], [ %i.aj, %bb.g ], [ %i.ag, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.ak = call zeroext i1 @je_buf_writer_init(ptr noundef %.0.i.i, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 65536) #20 ; 0 uses
  call void @je_stats_print(ptr noundef nonnull @je_buf_writer_cb, ptr noundef nonnull %0, ptr noundef nonnull @je_opt_stats_print_opts) #20
  call void @je_buf_writer_terminate(ptr noundef %.0.i.i, ptr noundef nonnull %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret void
}

declare void @je_malloc_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #14

declare zeroext i1 @je_stats_boot() local_unnamed_addr #4

declare zeroext i1 @je_pages_boot() local_unnamed_addr #4

declare zeroext i1 @je_base_boot(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @je_emap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @je_b0get() local_unnamed_addr #4

declare zeroext i1 @je_extent_boot() local_unnamed_addr #4

declare zeroext i1 @je_ctl_boot() local_unnamed_addr #4

declare zeroext i1 @je_hpa_supported(...) local_unnamed_addr #4

declare void @je_malloc_printf(ptr noundef, ...) local_unnamed_addr #4

declare zeroext i1 @je_arena_boot(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare zeroext i1 @je_tcache_boot(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @je_hook_boot(...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare zeroext i1 @je_pa_shard_enable_hpa(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @malloc_conf_init_helper(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull captures(none) %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 87 uses
  %i.e = alloca ptr, align 8                      ; 103 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 70 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca ptr, align 8                      ; 4 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca ptr, align 8                      ; 4 uses
  %i.y = alloca ptr, align 8                      ; 4 uses
  %i.z = alloca ptr, align 8                      ; 4 uses
  %i.aa = alloca ptr, align 8                     ; 4 uses
  %i.ab = alloca ptr, align 8                     ; 4 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca ptr, align 8                     ; 4 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca ptr, align 8                     ; 4 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = alloca ptr, align 8                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %.not886 = xor i1 %2, true                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.oo
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.oo ] ; 6 uses
  br i1 %2, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.ap, label %bb.j [
    i32 0, label %.thread
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr @je_malloc_conf, align 8, !tbaa !184
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ar = tail call ptr @__errno_location() #22   ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = call i64 @readlink(ptr noundef nonnull @.str.138, ptr noundef %4, i64 noundef 4096) #20 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.09.i = phi i64 [ 0, %bb.f ], [ %i.at, %bb.e ]
  %i.av = getelementptr inbounds i8, ptr %4, i64 %.09.i
  store i8 0, ptr %i.av, align 1, !tbaa !14
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.aw = call ptr @secure_getenv(ptr noundef nonnull @.str.139) #20
  br label %.thread

bb.i:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr @je_malloc_conf_2_conf_harder, align 8, !tbaa !184
  br label %.thread

bb.j:                                             ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.0.i = phi ptr [ %i.ax, %bb.i ], [ %i.aq, %bb.d ], [ @.str.76, %bb.c ], [ %4, %bb.g ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %.0.i, ptr %i.ay, align 8, !tbaa !184
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !184
  br label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !184 ; 5 uses
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !184
  %i.bb = load i8, ptr @je_opt_confirm_conf, align 1, !range !105
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @malloc_conf_init_helper.opts_explain, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !184
  %.not699 = icmp eq ptr %i.ba, null
  %i.bf = select i1 %.not699, ptr @.str.76, ptr %i.ba
  %i.bg = trunc i64 %indvars.iv to i32
  %i.bh = add i32 %i.bg, 1
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.75, i32 noundef %i.bh, ptr noundef %i.be, ptr noundef nonnull %i.bf) #20
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.k
  %i.bi = phi ptr [ %.0.i, %.thread ], [ %i.ba, %bb.l ], [ %i.ba, %bb.k ] ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.oo, label %.preheader1225

.preheader1225:                                   ; preds = %bb.m
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !14
end_hunk_10
