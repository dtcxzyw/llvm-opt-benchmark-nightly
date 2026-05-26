inline.NumInlined: 641
inline.NumDeleted: 71
begin_hunk_0_@duckdb_je_malloc_default:bb.a

cache_bin_alloc_impl.exit.i56.thread:             ; preds = %bb.h, %bb.f, %bb.k
  %.132.i.i64 = phi ptr [ %i.az, %bb.k ], [ %i.al, %bb.f ], [ %i.al, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !98
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !98
  br label %imalloc_no_sample.exit69

bb.l:                                             ; preds = %iallocztm_explicit_slab.exit.i38
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.bf = getelementptr i8, ptr %i.be, i64 48
  %.val110 = load i32, ptr %i.bf, align 8, !tbaa !101
  %i.bg = icmp ult i32 %.0.i50.i, %.val110
  br i1 %i.bg, label %bb.m, label %.critedge.i.i40, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i76284, i64 872
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.ad ; 7 uses
  %.val105 = load ptr, ptr %i.bi, align 8, !tbaa !86 ; 4 uses
  %.not268 = icmp eq ptr %.val105, @duckdb_je_disabled_bin
  br i1 %.not268, label %.critedge.i.i40, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %.val105, align 8, !tbaa !92
  %i.bk = ptrtoint ptr %.val105 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.val105, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !93 ; 2 uses
  %i.bo = trunc i64 %i.bk to i16
  %.not.i28.i44 = icmp eq i16 %i.bn, %i.bo
  br i1 %.not.i28.i44, label %bb.p, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !86
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !94
  %.not21.i30.i54 = icmp eq i16 %i.bq, %i.bn
  br i1 %.not21.i30.i54, label %cache_bin_alloc_impl.exit31.i45, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !86
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = trunc i64 %i.br to i16
  store i16 %i.bs, ptr %i.bm, align 8, !tbaa !93
  br label %bb.t

cache_bin_alloc_impl.exit31.i45:                  ; preds = %bb.p
  %i.bt = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i76284, ptr noundef null) ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %aligned_usize_get.exit.i.thread, label %bb.r, !prof !7

bb.r:                                             ; preds = %cache_bin_alloc_impl.exit31.i45
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i76284, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.bi, i32 noundef %.0.i50.i, i1 noundef zeroext false) #21
  br i1 %i.i, label %bb.s, label %sz_s2u_compute.exit.i48, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.bv = add nuw nsw i64 %0, 7
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !23
  br label %sz_s2u.exit.i50

sz_s2u_compute.exit.i48:                          ; preds = %bb.r
  %i.cc = shl nuw i64 %0, 1
  %i.cd = add i64 %i.cc, -1
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cd, i1 true) ; 2 uses
  %notmask.i.i47 = ashr exact i64 -1152921504606846976, %i.ce
  %i.cf = lshr i64 1152921504606846975, %i.ce
  %i.cg = add nuw nsw i64 %0, %i.cf
  %i.ch = and i64 %i.cg, %notmask.i.i47
  br label %sz_s2u.exit.i50

sz_s2u.exit.i50:                                  ; preds = %sz_s2u_compute.exit.i48, %bb.s
  %.0.i32.i51 = phi i64 [ %i.cb, %bb.s ], [ %i.ch, %sz_s2u_compute.exit.i48 ]
  %i.ci = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %.0.i76284, ptr noundef nonnull %i.bt, i64 noundef %.0.i32.i51, i1 noundef zeroext false) #21
  br label %imalloc_no_sample.exit69

bb.t:                                             ; preds = %bb.q, %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !98
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !98
  br label %imalloc_no_sample.exit69

.critedge.i.i40:                                  ; preds = %bb.m, %bb.l
  %i.cm = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %.0.i76284, ptr noundef null, i64 noundef %0, i32 noundef %.0.i50.i, i1 noundef zeroext false, i1 noundef zeroext false) #21
  br label %imalloc_no_sample.exit69

imalloc_no_sample.exit69:                         ; preds = %.critedge.i.i40, %.thread, %cache_bin_alloc_impl.exit.i56.thread, %bb.t, %sz_s2u.exit.i50
  %.0.i23.i42 = phi ptr [ %i.cm, %.critedge.i.i40 ], [ %.0.i24.i61.ph, %.thread ], [ %.132.i.i64, %cache_bin_alloc_impl.exit.i56.thread ], [ %i.bj, %bb.t ], [ %i.ci, %sz_s2u.exit.i50 ] ; 2 uses
  %i.cn = icmp eq ptr %.0.i23.i42, null
  br i1 %i.cn, label %aligned_usize_get.exit.i.thread, label %bb.u, !prof !108

bb.u:                                             ; preds = %imalloc_no_sample.exit69
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i8 1, ptr %1, align 8, !tbaa !109
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i76284, i64 832 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !112
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i76284, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i76284, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !114
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i76284, i64 840
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !115
  %i.cw = load i64, ptr %i.co, align 8, !tbaa !23 ; 2 uses
  %i.cx = add i64 %i.cw, %i.af
  store i64 %i.cx, ptr %i.co, align 8, !tbaa !23
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !23
  %i.cz = sub i64 %i.cy, %i.cw
  %i.da = icmp ult i64 %i.af, %i.cz
  br i1 %i.da, label %bb.w, label %bb.v, !prof !9

bb.v:                                             ; preds = %bb.u
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i76284, ptr noundef nonnull %1) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %cache_bin_alloc_impl.exit31.i45, %bb.k, %bb.c, %sz_size2index.exit.i, %imalloc_no_sample.exit69
  %i.db = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.db, align 4, !tbaa !3
  br label %imalloc.exit

bb.x:                                             ; preds = %tsd_fetch_impl.exit
  %i.dc = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.z, label %bb.y, !prof !9

bb.y:                                             ; preds = %bb.x
  %i.de = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.de, label %imalloc_init_check.exit, label %bb.z, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.y
  %i.df = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.df, align 4, !tbaa !3
  br label %imalloc.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dg = load i8, ptr @duckdb_je_opt_zero, align 1, !range !96
  %i.dh = trunc nuw i8 %i.dg to i1                ; 6 uses
  %i.di = icmp ult i64 %0, 4097                   ; 2 uses
  br i1 %i.di, label %bb.aa, label %bb.ab, !prof !9

bb.aa:                                            ; preds = %bb.z
  %i.dj = add nuw nsw i64 %0, 7
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = zext i8 %i.dm to i32
  br label %sz_size2index.exit.i19

bb.ab:                                            ; preds = %bb.z
  %i.do = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.do, label %aligned_usize_get.exit.i13.thread, label %bb.ac, !prof !7

bb.ac:                                            ; preds = %bb.ab
  %i.dp = shl nuw i64 %0, 1
  %i.dq = add i64 %i.dp, -1
  %i.dr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dq, i1 true) ; 3 uses
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = sub nuw nsw i64 60, %i.dr
  %i.du = ashr exact i64 -1152921504606846976, %i.dr
  %i.dv = add nsw i64 %0, -1
  %i.dw = and i64 %i.du, %i.dv
  %i.dx = lshr i64 %i.dw, %i.dt
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 3
  %i.ea = shl nuw nsw i32 %i.ds, 2
  %reass.sub = sub nsw i32 %i.dz, %i.ea
  %i.eb = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i19

sz_size2index.exit.i19:                           ; preds = %bb.ac, %bb.aa
  %.0.i50.i20 = phi i32 [ %i.dn, %bb.aa ], [ %i.eb, %bb.ac ] ; 8 uses
  %i.ec = icmp samesign ugt i32 %.0.i50.i20, 231
  br i1 %i.ec, label %aligned_usize_get.exit.i13.thread, label %bb.ad, !prof !117

bb.ad:                                            ; preds = %sz_size2index.exit.i19
  %i.ed = zext nneg i32 %.0.i50.i20 to i64        ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ed ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !23 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !10
  %i.ei = icmp sgt i8 %i.eh, 0
  br i1 %i.ei, label %bb.af, label %bb.ae, !prof !118

bb.ae:                                            ; preds = %bb.ad
  %i.ej = load i8, ptr %i.g, align 1, !tbaa !95, !range !96, !noundef !97
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 864 ; 4 uses
  br i1 %i.ek, label %bb.ah, label %iallocztm_explicit_slab.exit.i.thread

bb.af:                                            ; preds = %bb.ad
  %i.em = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %arena_get.exit124, label %iallocztm_explicit_slab.exit.i.thread, !prof !7

arena_get.exit124:                                ; preds = %bb.af
  %i.eo = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ag, label %iallocztm_explicit_slab.exit.i.thread, !prof !8

bb.ag:                                            ; preds = %arena_get.exit124
  %i.eq = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  %.not.i.i.not = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i13.thread, label %iallocztm_explicit_slab.exit.i.thread

iallocztm_explicit_slab.exit.i.thread:            ; preds = %bb.af, %arena_get.exit124, %bb.ae, %bb.ag
  %.1207.ph.ph = phi ptr [ null, %bb.ag ], [ null, %bb.ae ], [ %i.eo, %arena_get.exit124 ], [ %i.em, %bb.af ]
  %.ph289 = icmp ult i64 %i.ef, 14337
  br label %.critedge.i.i

bb.ah:                                            ; preds = %bb.ae
  %.ph = icmp ult i64 %i.ef, 14337
  br i1 %.ph, label %bb.ai, label %bb.ar, !prof !9

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 872
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.ed ; 9 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !86 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !92 ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !93 ; 2 uses
  %i.ez = trunc i64 %i.ev to i16
  %.not.i26.i = icmp eq i16 %i.ey, %i.ez
  br i1 %.not.i26.i, label %bb.ak, label %bb.aj, !prof !7

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ew, ptr %i.es, align 8, !tbaa !86
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ak:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  %i.fb = load i16, ptr %i.fa, align 4, !tbaa !94
  %.not21.i.i = icmp eq i16 %i.fb, %i.ey
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ew, ptr %i.es, align 8, !tbaa !86
  %i.fc = ptrtoint ptr %i.ew to i64
  %i.fd = trunc i64 %i.fc to i16
  store i16 %i.fd, ptr %i.ex, align 8, !tbaa !93
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.fe = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %.thread255, label %bb.am, !prof !7

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val106 = load ptr, ptr %i.es, align 8, !tbaa !86
  %i.fg = icmp eq ptr %.val106, @duckdb_je_disabled_bin
  br i1 %i.fg, label %bb.an, label %bb.ao, !prof !7

bb.an:                                            ; preds = %bb.am
  %i.fh = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fe, i64 noundef %0, i32 noundef %.0.i50.i20, i1 noundef zeroext %i.dh, i1 noundef zeroext true) #21
  br label %.thread255

.thread255:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.an
  %.0.i24.i.ph = phi ptr [ %i.fh, %bb.an ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %imalloc_no_sample.exit

bb.ao:                                            ; preds = %bb.am
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.el, ptr noundef nonnull %i.es, i32 noundef %.0.i50.i20, i1 noundef zeroext true) #21
  %i.fi = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fe, ptr noundef nonnull %i.el, ptr noundef nonnull %i.es, i32 noundef %.0.i50.i20, ptr noundef nonnull %i.b) #21
  %i.fj = load i8, ptr %i.b, align 1, !tbaa !95, !range !96, !noundef !97
  %.not267 = icmp eq i8 %i.fj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not267, label %aligned_usize_get.exit.i13.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.al, %bb.aj, %bb.ao
  %.132.i.i = phi ptr [ %i.fi, %bb.ao ], [ %i.eu, %bb.aj ], [ %i.eu, %bb.al ] ; 2 uses
  br i1 %i.dh, label %bb.ap, label %bb.aq, !prof !7

bb.ap:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.fk = load i64, ptr %i.ee, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.fk, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %cache_bin_alloc_impl.exit.i.thread
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !98
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !98
  br label %imalloc_no_sample.exit

bb.ar:                                            ; preds = %bb.ah
  %i.fo = load ptr, ptr %i.el, align 8, !tbaa !99
  %i.fp = getelementptr i8, ptr %i.fo, i64 48
  %.val113 = load i32, ptr %i.fp, align 8, !tbaa !101
  %i.fq = icmp ult i32 %.0.i50.i20, %.val113
  br i1 %i.fq, label %bb.as, label %.critedge.i.i, !prof !9

bb.as:                                            ; preds = %bb.ar
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 872
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %i.ed ; 7 uses
  %.val107 = load ptr, ptr %i.fs, align 8, !tbaa !86 ; 4 uses
  %.not = icmp eq ptr %.val107, @duckdb_je_disabled_bin
  br i1 %.not, label %.critedge.i.i, label %bb.at, !prof !7

bb.at:                                            ; preds = %bb.as
  %i.ft = load ptr, ptr %.val107, align 8, !tbaa !92 ; 2 uses
  %i.fu = ptrtoint ptr %.val107 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.val107, i64 8 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fx = load i16, ptr %i.fw, align 8, !tbaa !93 ; 2 uses
  %i.fy = trunc i64 %i.fu to i16
  %.not.i28.i = icmp eq i16 %i.fx, %i.fy
  br i1 %.not.i28.i, label %bb.av, label %bb.au, !prof !7

bb.au:                                            ; preds = %bb.at
  store ptr %i.fv, ptr %i.fs, align 8, !tbaa !86
  br label %bb.az

bb.av:                                            ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.ga = load i16, ptr %i.fz, align 4, !tbaa !94
  %.not21.i30.i = icmp eq i16 %i.ga, %i.fx
  br i1 %.not21.i30.i, label %cache_bin_alloc_impl.exit31.i, label %bb.aw, !prof !7

bb.aw:                                            ; preds = %bb.av
  store ptr %i.fv, ptr %i.fs, align 8, !tbaa !86
  %i.gb = ptrtoint ptr %i.fv to i64
  %i.gc = trunc i64 %i.gb to i16
  store i16 %i.gc, ptr %i.fw, align 8, !tbaa !93
  br label %bb.az

cache_bin_alloc_impl.exit31.i:                    ; preds = %bb.av
  %i.gd = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %aligned_usize_get.exit.i13.thread, label %bb.ax, !prof !7

bb.ax:                                            ; preds = %cache_bin_alloc_impl.exit31.i
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.el, ptr noundef nonnull %i.fs, i32 noundef %.0.i50.i20, i1 noundef zeroext false) #21
  br i1 %i.di, label %bb.ay, label %sz_s2u_compute.exit.i, !prof !9

bb.ay:                                            ; preds = %bb.ax
  %i.gf = add nuw nsw i64 %0, 7
  %i.gg = lshr i64 %i.gf, 3
  %i.gh = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !10
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !23
  br label %sz_s2u.exit.i

sz_s2u_compute.exit.i:                            ; preds = %bb.ax
  %i.gm = shl nuw i64 %0, 1
  %i.gn = add i64 %i.gm, -1
  %i.go = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gn, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.go
  %i.gp = lshr i64 1152921504606846975, %i.go
  %i.gq = add nuw nsw i64 %0, %i.gp
  %i.gr = and i64 %i.gq, %notmask.i.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %sz_s2u_compute.exit.i, %bb.ay
  %.0.i32.i = phi i64 [ %i.gl, %bb.ay ], [ %i.gr, %sz_s2u_compute.exit.i ]
  %i.gs = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gd, i64 noundef %.0.i32.i, i1 noundef zeroext %i.dh) #21
  br label %imalloc_no_sample.exit

bb.az:                                            ; preds = %bb.au, %bb.aw
  br i1 %i.dh, label %bb.ba, label %bb.bb, !prof !7

bb.ba:                                            ; preds = %bb.az
  %i.gt = load i64, ptr %i.ee, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ft, i8 0, i64 %i.gt, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !98
  %i.gw = add i64 %i.gv, 1
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !98
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %iallocztm_explicit_slab.exit.i.thread, %bb.as, %bb.ar
  %.ph292 = phi i1 [ %.ph289, %iallocztm_explicit_slab.exit.i.thread ], [ false, %bb.as ], [ false, %bb.ar ]
  %.1207.ph291 = phi ptr [ %.1207.ph.ph, %iallocztm_explicit_slab.exit.i.thread ], [ null, %bb.as ], [ null, %bb.ar ]
  %i.gx = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1207.ph291, i64 noundef %0, i32 noundef %.0.i50.i20, i1 noundef zeroext %i.dh, i1 noundef zeroext %.ph292) #21
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread255, %bb.aq, %bb.bb, %sz_s2u.exit.i
  %.0.i31 = phi ptr [ %i.gs, %sz_s2u.exit.i ], [ %i.gx, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread255 ], [ %.132.i.i, %bb.aq ], [ %i.ft, %bb.bb ] ; 4 uses
end_hunk_0
begin_hunk_1_@duckdb_je_posix_memalign:bb.a

bb.g:                                             ; preds = %bb.d
  %i.af = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.af, label %imalloc.exit, label %bb.h, !prof !121

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp ult i64 %.016.i.i, 16385
  br i1 %i.ag, label %.thread218, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp ugt i64 %.016.i.i, 8070450532247928832
  br i1 %i.ah, label %imalloc.exit, label %sz_s2u_compute.exit29.i95, !prof !7

sz_s2u_compute.exit29.i95:                        ; preds = %bb.i
  %i.ai = shl nuw i64 %.016.i.i, 1
  %i.aj = add i64 %i.ai, -1
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.aj, i1 true) ; 2 uses
  %notmask.i27.i94 = ashr exact i64 -1152921504606846976, %i.ak
  %i.al = lshr i64 1152921504606846975, %i.ak
  %i.am = add nuw nsw i64 %.016.i.i, %i.al
  %i.an = and i64 %i.am, %notmask.i27.i94         ; 2 uses
  %i.ao = icmp samesign ult i64 %i.an, %.016.i.i
  br i1 %i.ao, label %imalloc.exit, label %.thread218

.thread218:                                       ; preds = %sz_s2u.exit25.i105, %sz_s2u_compute.exit29.i95, %bb.h
  %.0.i99 = phi i64 [ %i.an, %sz_s2u_compute.exit29.i95 ], [ 16384, %bb.h ], [ 16384, %sz_s2u.exit25.i105 ] ; 3 uses
  %i.ap = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
  %i.aq = add nuw nsw i64 %1, 4095
  %i.ar = and i64 %i.aq, 9223372036854771712
  %i.as = add nsw i64 %i.ar, -4096
  %i.at = add nuw i64 %i.as, %.0.i99
  %i.au = add i64 %i.at, %i.ap
  %i.av = icmp ult i64 %i.au, %.0.i99
  %..0.i100 = select i1 %i.av, i64 0, i64 %.0.i99
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread218, %sz_s2u.exit25.i105
  %.018.i101 = phi i64 [ %..0.i100, %.thread218 ], [ %.0.i24.i106, %sz_s2u.exit25.i105 ] ; 5 uses
  %i.aw = add nsw i64 %.018.i101, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.aw, -8070450532247928832
  br i1 %spec.select.i.i, label %imalloc.exit, label %imalloc_no_sample.exit73

imalloc_no_sample.exit73:                         ; preds = %aligned_usize_get.exit.i
  %i.ax = icmp samesign ult i64 %.018.i101, 14337
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i80262, i64 864
  %i.az = tail call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %.0.i80262, ptr noundef null, i64 noundef %.018.i101, i64 noundef %1, i1 noundef zeroext false, i1 noundef zeroext %i.ax, ptr noundef nonnull %i.ay) #21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %imalloc.exit, label %bb.j, !prof !7

bb.j:                                             ; preds = %imalloc_no_sample.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i80262, i64 832 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !112
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i80262, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !113
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i80262, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !114
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i80262, i64 840
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !115
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %i.bk = add i64 %i.bj, %.018.i101
  store i64 %i.bk, ptr %i.bb, align 8, !tbaa !23
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.bm = sub i64 %i.bl, %i.bj
  %i.bn = icmp ult i64 %.018.i101, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i80262, ptr noundef nonnull %3) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr %i.az, ptr %0, align 8, !tbaa !92
  br label %imalloc.exit

bb.m:                                             ; preds = %tsd_fetch_impl.exit
  %i.bo = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %compute_size_with_overflow.exit, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  %i.bq = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bq, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.n
  %i.br = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.br, align 4, !tbaa !3
  store ptr null, ptr %0, align 8, !tbaa !92
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.n, %bb.m
  %i.bs = icmp ult i64 %1, 8
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.bu = icmp samesign ugt i64 %i.bt, 1
  %or.cond47.i11 = select i1 %i.bs, i1 true, i1 %i.bu, !prof !120
  br i1 %or.cond47.i11, label %aligned_usize_get.exit.i17.thread, label %bb.o, !prof !120

bb.o:                                             ; preds = %compute_size_with_overflow.exit
  %i.bv = load i8, ptr @duckdb_je_opt_zero, align 1, !range !96
  %i.bw = trunc nuw i8 %i.bv to i1                ; 2 uses
  %i.bx = icmp eq i64 %2, 0
  br i1 %i.bx, label %bb.p, label %bb.q, !prof !118

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.016.i.i15 = phi i64 [ 1, %bb.p ], [ %2, %bb.o ] ; 7 uses
  %i.by = icmp ult i64 %.016.i.i15, 14337
  %i.bz = icmp ult i64 %1, 4097
  %or.cond.i86 = and i1 %i.bz, %i.by
  br i1 %or.cond.i86, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i64 %1, -1
  %i.cb = add nuw nsw i64 %i.ca, %.016.i.i15
  %i.cc = sub nsw i64 0, %1
  %i.cd = and i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp samesign ult i64 %i.cd, 4097
  br i1 %i.ce, label %bb.s, label %sz_s2u_compute.exit.i91, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.cf = add nuw nsw i64 %i.cd, 7
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !23
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i91:                          ; preds = %bb.r
  %i.cm = shl nuw nsw i64 %i.cd, 1
  %i.cn = add nsw i64 %i.cm, -1
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cn, i1 true) ; 2 uses
  %notmask.i.i90 = ashr exact i64 -1152921504606846976, %i.co
  %i.cp = lshr i64 1152921504606846975, %i.co
  %i.cq = add nuw nsw i64 %i.cd, %i.cp
  %i.cr = and i64 %i.cq, %notmask.i.i90
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i91, %bb.s
  %.0.i24.i92 = phi i64 [ %i.cl, %bb.s ], [ %i.cr, %sz_s2u_compute.exit.i91 ] ; 2 uses
  %i.cs = icmp ult i64 %.0.i24.i92, 16384
  br i1 %i.cs, label %aligned_usize_get.exit.i17, label %.thread225

bb.t:                                             ; preds = %bb.q
  %i.ct = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.ct, label %aligned_usize_get.exit.i17.thread, label %bb.u, !prof !122

bb.u:                                             ; preds = %bb.t
  %i.cu = icmp ult i64 %.016.i.i15, 16385
  br i1 %i.cu, label %.thread225, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = icmp ugt i64 %.016.i.i15, 8070450532247928832
  br i1 %i.cv, label %aligned_usize_get.exit.i17.thread, label %sz_s2u_compute.exit29.i, !prof !7

sz_s2u_compute.exit29.i:                          ; preds = %bb.v
  %i.cw = shl nuw i64 %.016.i.i15, 1
  %i.cx = add i64 %i.cw, -1
  %i.cy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cx, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cy
  %i.cz = lshr i64 1152921504606846975, %i.cy
  %i.da = add nuw nsw i64 %.016.i.i15, %i.cz
  %i.db = and i64 %i.da, %notmask.i27.i           ; 2 uses
  %i.dc = icmp samesign ult i64 %i.db, %.016.i.i15
  br i1 %i.dc, label %aligned_usize_get.exit.i17.thread, label %.thread225

.thread225:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.u
  %.0.i89 = phi i64 [ %i.db, %sz_s2u_compute.exit29.i ], [ 16384, %bb.u ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.dd = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
  %i.de = add nuw nsw i64 %1, 4095
  %i.df = and i64 %i.de, 9223372036854771712
  %i.dg = add nsw i64 %i.df, -4096
  %i.dh = add nuw i64 %i.dg, %.0.i89
  %i.di = add i64 %i.dh, %i.dd
  %i.dj = icmp ult i64 %i.di, %.0.i89
  %..0.i = select i1 %i.dj, i64 0, i64 %.0.i89
  br label %aligned_usize_get.exit.i17

aligned_usize_get.exit.i17:                       ; preds = %.thread225, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread225 ], [ %.0.i24.i92, %sz_s2u.exit25.i ] ; 6 uses
  %i.dk = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i16 = icmp ult i64 %i.dk, -8070450532247928832
  br i1 %spec.select.i.i16, label %aligned_usize_get.exit.i17.thread, label %bb.w

bb.w:                                             ; preds = %aligned_usize_get.exit.i17
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = icmp sgt i8 %i.dm, 0
  br i1 %i.dn, label %bb.y, label %bb.x, !prof !118

bb.x:                                             ; preds = %bb.w
  %i.do = load i8, ptr %i.e, align 1, !tbaa !95, !range !96, !noundef !97
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 864
  %spec.select = select i1 %i.dp, ptr %i.dq, ptr null
  br label %imalloc_no_sample.exit

bb.y:                                             ; preds = %bb.w
  %i.dr = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %arena_get.exit128, label %imalloc_no_sample.exit, !prof !7

arena_get.exit128:                                ; preds = %bb.y
  %i.dt = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.z, label %imalloc_no_sample.exit, !prof !8

bb.z:                                             ; preds = %arena_get.exit128
  %i.dv = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  %.not.i.i.not = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i17.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.x, %bb.z, %bb.y, %arena_get.exit128
  %.0.i.i33236.ph = phi ptr [ null, %bb.y ], [ null, %arena_get.exit128 ], [ %spec.select, %bb.x ], [ null, %bb.z ]
  %.1211.ph = phi ptr [ %i.dr, %bb.y ], [ %i.dt, %arena_get.exit128 ], [ null, %bb.x ], [ null, %bb.z ]
  %.ph = icmp samesign ult i64 %.018.i, 14337
  %i.dw = tail call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1211.ph, i64 noundef %.018.i, i64 noundef %1, i1 noundef zeroext %i.bw, i1 noundef zeroext %.ph, ptr noundef %.0.i.i33236.ph) #21 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %aligned_usize_get.exit.i17.thread, label %bb.aa, !prof !123

bb.aa:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 1, ptr %4, align 8, !tbaa !109
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 832 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !112
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !113
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !114
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 840
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !115
  %i.eg = load i64, ptr %i.dy, align 8, !tbaa !23 ; 2 uses
  %i.eh = add i64 %i.eg, %.018.i
  store i64 %i.eh, ptr %i.dy, align 8, !tbaa !23
  %i.ei = load i64, ptr %i.ec, align 8, !tbaa !23
  %i.ej = sub i64 %i.ei, %i.eg
  %i.ek = icmp ult i64 %.018.i, %i.ej
  br i1 %i.ek, label %bb.ac, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %bb.aa
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %4) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i21 = xor i1 %i.bw, true
  %i.el = load i8, ptr @duckdb_je_opt_junk_alloc, align 1, !range !96
  %i.em = trunc nuw i8 %i.el to i1
  %or.cond45.i22 = select i1 %.not.i21, i1 %i.em, i1 false, !prof !118
  br i1 %or.cond45.i22, label %bb.ad, label %bb.ae, !prof !118

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dw, i8 -91, i64 %.018.i, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store ptr %i.dw, ptr %0, align 8, !tbaa !92
  br label %aligned_usize_get.exit.i17.thread

aligned_usize_get.exit.i17.thread:                ; preds = %bb.z, %bb.v, %sz_s2u_compute.exit29.i, %bb.t, %compute_size_with_overflow.exit, %imalloc_no_sample.exit, %aligned_usize_get.exit.i17, %bb.ae
  %.0.i.ph = phi i32 [ 12, %imalloc_no_sample.exit ], [ 12, %aligned_usize_get.exit.i17 ], [ 22, %compute_size_with_overflow.exit ], [ 12, %bb.v ], [ 0, %bb.ae ], [ 12, %bb.t ], [ 12, %sz_s2u_compute.exit29.i ], [ 12, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.en = ptrtoint ptr %0 to i64
  store i64 %i.en, ptr %i.a, align 16, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.eo, align 8, !tbaa !23
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.ep, align 16, !tbaa !23
  %i.eq = load ptr, ptr %0, align 8, !tbaa !92
  %i.er = zext nneg i32 %.0.i.ph to i64
  call void @duckdb_je_hook_invoke_alloc(i32 noundef 1, ptr noundef %i.eq, i64 noundef %i.er, ptr noundef nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.i, %sz_s2u_compute.exit29.i95, %bb.g, %compute_size_with_overflow.exit32, %imalloc_no_sample.exit73, %aligned_usize_get.exit.i, %bb.l, %imalloc_init_check.exit, %aligned_usize_get.exit.i17.thread
  %.0.i249 = phi i32 [ %.0.i.ph, %aligned_usize_get.exit.i17.thread ], [ 12, %imalloc_init_check.exit ], [ 12, %aligned_usize_get.exit.i ], [ 0, %bb.l ], [ 12, %imalloc_no_sample.exit73 ], [ 22, %compute_size_with_overflow.exit32 ], [ 12, %bb.g ], [ 12, %sz_s2u_compute.exit29.i95 ], [ 12, %bb.i ]
  ret i32 %.0.i249
}

; Function Attrs: nounwind allocsize(1) uwtable
define noalias ptr @duckdb_je_aligned_alloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 824
  %i.d = load i8, ptr %i.c, align 8, !tbaa !10
  %.not.i77 = icmp eq i8 %i.d, 0
  br i1 %.not.i77, label %compute_size_with_overflow.exit30, label %tsd_fetch_impl.exit, !prof !9

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.e = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false) #21 ; 12 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 824
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !10
  %i.f = icmp eq i8 %.pre, 0
  br i1 %i.f, label %compute_size_with_overflow.exit30, label %bb.n, !prof !84

compute_size_with_overflow.exit30:                ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i78264 = phi ptr [ %i.e, %tsd_fetch_impl.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond47.i.not = icmp eq i64 %i.g, 1
  br i1 %or.cond47.i.not, label %bb.b, label %bb.m, !prof !124

bb.b:                                             ; preds = %compute_size_with_overflow.exit30
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %bb.c, label %bb.d, !prof !118

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016.i.i = phi i64 [ 1, %bb.c ], [ %1, %bb.b ] ; 7 uses
  %i.i = icmp ult i64 %.016.i.i, 14337
  %i.j = icmp ult i64 %0, 4097
  %or.cond.i91 = and i1 %i.j, %i.i
  br i1 %or.cond.i91, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i64 %0, -1
  %i.l = add nuw nsw i64 %i.k, %.016.i.i
  %i.m = sub nsw i64 0, %0
  %i.n = and i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp samesign ult i64 %i.n, 4097
  br i1 %i.o, label %bb.f, label %sz_s2u_compute.exit.i101, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %i.n, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23
  br label %sz_s2u.exit25.i103

sz_s2u_compute.exit.i101:                         ; preds = %bb.e
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true) ; 2 uses
  %notmask.i.i100 = ashr exact i64 -1152921504606846976, %i.y
  %i.z = lshr i64 1152921504606846975, %i.y
  %i.aa = add nuw nsw i64 %i.n, %i.z
  %i.ab = and i64 %i.aa, %notmask.i.i100
  br label %sz_s2u.exit25.i103

sz_s2u.exit25.i103:                               ; preds = %sz_s2u_compute.exit.i101, %bb.f
  %.0.i24.i104 = phi i64 [ %i.v, %bb.f ], [ %i.ab, %sz_s2u_compute.exit.i101 ] ; 2 uses
  %i.ac = icmp ult i64 %.0.i24.i104, 16384
  br i1 %i.ac, label %aligned_usize_get.exit.i, label %.thread219

bb.g:                                             ; preds = %bb.d
  %i.ad = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ad, label %aligned_usize_get.exit.i.thread, label %bb.h, !prof !121

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult i64 %.016.i.i, 16385
  br i1 %i.ae, label %.thread219, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp ugt i64 %.016.i.i, 8070450532247928832
  br i1 %i.af, label %aligned_usize_get.exit.i.thread, label %sz_s2u_compute.exit29.i93, !prof !7

sz_s2u_compute.exit29.i93:                        ; preds = %bb.i
  %i.ag = shl nuw i64 %.016.i.i, 1
  %i.ah = add i64 %i.ag, -1
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ah, i1 true) ; 2 uses
  %notmask.i27.i92 = ashr exact i64 -1152921504606846976, %i.ai
  %i.aj = lshr i64 1152921504606846975, %i.ai
  %i.ak = add nuw nsw i64 %.016.i.i, %i.aj
  %i.al = and i64 %i.ak, %notmask.i27.i92         ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %.016.i.i
  br i1 %i.am, label %aligned_usize_get.exit.i.thread, label %.thread219

.thread219:                                       ; preds = %sz_s2u.exit25.i103, %sz_s2u_compute.exit29.i93, %bb.h
  %.0.i97 = phi i64 [ %i.al, %sz_s2u_compute.exit29.i93 ], [ 16384, %bb.h ], [ 16384, %sz_s2u.exit25.i103 ] ; 3 uses
  %i.an = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
  %i.ao = add nuw nsw i64 %0, 4095
  %i.ap = and i64 %i.ao, 9223372036854771712
  %i.aq = add nsw i64 %i.ap, -4096
  %i.ar = add nuw i64 %i.aq, %.0.i97
  %i.as = add i64 %i.ar, %i.an
  %i.at = icmp ult i64 %i.as, %.0.i97
  %..0.i98 = select i1 %i.at, i64 0, i64 %.0.i97
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread219, %sz_s2u.exit25.i103
  %.018.i99 = phi i64 [ %..0.i98, %.thread219 ], [ %.0.i24.i104, %sz_s2u.exit25.i103 ] ; 5 uses
  %i.au = add nsw i64 %.018.i99, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.au, -8070450532247928832
  br i1 %spec.select.i.i, label %aligned_usize_get.exit.i.thread, label %imalloc_no_sample.exit71

imalloc_no_sample.exit71:                         ; preds = %aligned_usize_get.exit.i
  %i.av = icmp samesign ult i64 %.018.i99, 14337
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i78264, i64 864
  %i.ax = tail call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %.0.i78264, ptr noundef null, i64 noundef %.018.i99, i64 noundef %0, i1 noundef zeroext false, i1 noundef zeroext %i.av, ptr noundef nonnull %i.aw) #21 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %aligned_usize_get.exit.i.thread, label %bb.j, !prof !7

bb.j:                                             ; preds = %imalloc_no_sample.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i78264, i64 832 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !112
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i78264, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !113
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i78264, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !114
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i78264, i64 840
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !115
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !23 ; 2 uses
  %i.bi = add i64 %i.bh, %.018.i99
  store i64 %i.bi, ptr %i.az, align 8, !tbaa !23
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.bk = sub i64 %i.bj, %i.bh
  %i.bl = icmp ult i64 %.018.i99, %i.bk
  br i1 %i.bl, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i78264, ptr noundef nonnull %2) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %bb.i, %sz_s2u_compute.exit29.i93, %bb.g, %aligned_usize_get.exit.i, %imalloc_no_sample.exit71
  %i.bm = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.bm, align 4, !tbaa !3
  br label %imalloc.exit

bb.m:                                             ; preds = %compute_size_with_overflow.exit30
  %i.bn = tail call ptr @__errno_location() #23
  store i32 22, ptr %i.bn, align 4, !tbaa !3
  br label %imalloc.exit

bb.n:                                             ; preds = %tsd_fetch_impl.exit
  %i.bo = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %compute_size_with_overflow.exit, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.bq = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bq, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.o
  %i.br = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.br, align 4, !tbaa !3
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.o, %bb.n
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %or.cond47.i9.not = icmp eq i64 %i.bs, 1
  br i1 %or.cond47.i9.not, label %bb.p, label %bb.af, !prof !124

bb.p:                                             ; preds = %compute_size_with_overflow.exit
  %i.bt = load i8, ptr @duckdb_je_opt_zero, align 1, !range !96
  %i.bu = trunc nuw i8 %i.bt to i1                ; 2 uses
  %i.bv = icmp eq i64 %1, 0
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !118

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.016.i.i13 = phi i64 [ 1, %bb.q ], [ %1, %bb.p ] ; 7 uses
  %i.bw = icmp ult i64 %.016.i.i13, 14337
  %i.bx = icmp ult i64 %0, 4097
  %or.cond.i84 = and i1 %i.bx, %i.bw
  br i1 %or.cond.i84, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.by = add nsw i64 %0, -1
  %i.bz = add nuw nsw i64 %i.by, %.016.i.i13
  %i.ca = sub nsw i64 0, %0
  %i.cb = and i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp samesign ult i64 %i.cb, 4097
  br i1 %i.cc, label %bb.t, label %sz_s2u_compute.exit.i89, !prof !9

bb.t:                                             ; preds = %bb.s
  %i.cd = add nuw nsw i64 %i.cb, 7
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !10
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !23
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i89:                          ; preds = %bb.s
  %i.ck = shl nuw nsw i64 %i.cb, 1
  %i.cl = add nsw i64 %i.ck, -1
  %i.cm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cl, i1 true) ; 2 uses
  %notmask.i.i88 = ashr exact i64 -1152921504606846976, %i.cm
  %i.cn = lshr i64 1152921504606846975, %i.cm
  %i.co = add nuw nsw i64 %i.cb, %i.cn
  %i.cp = and i64 %i.co, %notmask.i.i88
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i89, %bb.t
  %.0.i24.i90 = phi i64 [ %i.cj, %bb.t ], [ %i.cp, %sz_s2u_compute.exit.i89 ] ; 2 uses
  %i.cq = icmp ult i64 %.0.i24.i90, 16384
  br i1 %i.cq, label %aligned_usize_get.exit.i15, label %.thread226

bb.u:                                             ; preds = %bb.r
  %i.cr = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.cr, label %aligned_usize_get.exit.i15.thread, label %bb.v, !prof !121

bb.v:                                             ; preds = %bb.u
  %i.cs = icmp ult i64 %.016.i.i13, 16385
  br i1 %i.cs, label %.thread226, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = icmp ugt i64 %.016.i.i13, 8070450532247928832
  br i1 %i.ct, label %aligned_usize_get.exit.i15.thread, label %sz_s2u_compute.exit29.i, !prof !7

sz_s2u_compute.exit29.i:                          ; preds = %bb.w
  %i.cu = shl nuw i64 %.016.i.i13, 1
  %i.cv = add i64 %i.cu, -1
  %i.cw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cv, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cw
  %i.cx = lshr i64 1152921504606846975, %i.cw
  %i.cy = add nuw nsw i64 %.016.i.i13, %i.cx
  %i.cz = and i64 %i.cy, %notmask.i27.i           ; 2 uses
  %i.da = icmp samesign ult i64 %i.cz, %.016.i.i13
  br i1 %i.da, label %aligned_usize_get.exit.i15.thread, label %.thread226

.thread226:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.v
  %.0.i87 = phi i64 [ %i.cz, %sz_s2u_compute.exit29.i ], [ 16384, %bb.v ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.db = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
  %i.dc = add nuw nsw i64 %0, 4095
  %i.dd = and i64 %i.dc, 9223372036854771712
  %i.de = add nsw i64 %i.dd, -4096
  %i.df = add nuw i64 %i.de, %.0.i87
  %i.dg = add i64 %i.df, %i.db
  %i.dh = icmp ult i64 %i.dg, %.0.i87
  %..0.i = select i1 %i.dh, i64 0, i64 %.0.i87
  br label %aligned_usize_get.exit.i15

aligned_usize_get.exit.i15:                       ; preds = %.thread226, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread226 ], [ %.0.i24.i90, %sz_s2u.exit25.i ] ; 6 uses
  %i.di = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i14 = icmp ult i64 %i.di, -8070450532247928832
  br i1 %spec.select.i.i14, label %aligned_usize_get.exit.i15.thread, label %bb.x

bb.x:                                             ; preds = %aligned_usize_get.exit.i15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.dl = icmp sgt i8 %i.dk, 0
  br i1 %i.dl, label %bb.z, label %bb.y, !prof !118

bb.y:                                             ; preds = %bb.x
  %i.dm = load i8, ptr %i.e, align 1, !tbaa !95, !range !96, !noundef !97
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 864
  %spec.select = select i1 %i.dn, ptr %i.do, ptr null
  br label %imalloc_no_sample.exit

bb.z:                                             ; preds = %bb.x
  %i.dp = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %arena_get.exit126, label %imalloc_no_sample.exit, !prof !7

arena_get.exit126:                                ; preds = %bb.z
  %i.dr = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.aa, label %imalloc_no_sample.exit, !prof !8

bb.aa:                                            ; preds = %arena_get.exit126
  %i.dt = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  %.not.i.i.not = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i15.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.y, %bb.aa, %bb.z, %arena_get.exit126
  %.0.i.i31237.ph = phi ptr [ null, %bb.z ], [ null, %arena_get.exit126 ], [ %spec.select, %bb.y ], [ null, %bb.aa ]
  %.1209.ph = phi ptr [ %i.dp, %bb.z ], [ %i.dr, %arena_get.exit126 ], [ null, %bb.y ], [ null, %bb.aa ]
  %.ph = icmp samesign ult i64 %.018.i, 14337
  %i.du = tail call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1209.ph, i64 noundef %.018.i, i64 noundef %0, i1 noundef zeroext %i.bu, i1 noundef zeroext %.ph, ptr noundef %.0.i.i31237.ph) #21 ; 4 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %aligned_usize_get.exit.i15.thread, label %bb.ab, !prof !123

bb.ab:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 832 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !112
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !113
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 840
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !115
  %i.ee = load i64, ptr %i.dw, align 8, !tbaa !23 ; 2 uses
  %i.ef = add i64 %i.ee, %.018.i
  store i64 %i.ef, ptr %i.dw, align 8, !tbaa !23
  %i.eg = load i64, ptr %i.ea, align 8, !tbaa !23
  %i.eh = sub i64 %i.eg, %i.ee
  %i.ei = icmp ult i64 %.018.i, %i.eh
  br i1 %i.ei, label %bb.ad, label %bb.ac, !prof !9

bb.ac:                                            ; preds = %bb.ab
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i19 = xor i1 %i.bu, true
  %i.ej = load i8, ptr @duckdb_je_opt_junk_alloc, align 1, !range !96
  %i.ek = trunc nuw i8 %i.ej to i1
  %or.cond45.i20 = select i1 %.not.i19, i1 %i.ek, i1 false, !prof !118
  br i1 %or.cond45.i20, label %bb.ae, label %bb.ag, !prof !118

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.du, i8 -91, i64 %.018.i, i1 false)
  br label %bb.ag

aligned_usize_get.exit.i15.thread:                ; preds = %bb.aa, %bb.w, %sz_s2u_compute.exit29.i, %bb.u, %aligned_usize_get.exit.i15, %imalloc_no_sample.exit
  %i.el = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.el, align 4, !tbaa !3
  br label %bb.ag

bb.af:                                            ; preds = %compute_size_with_overflow.exit
  %i.em = tail call ptr @__errno_location() #23
  store i32 22, ptr %i.em, align 4, !tbaa !3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %aligned_usize_get.exit.i15.thread, %bb.af
  %.0217.ph = phi ptr [ %i.du, %bb.ae ], [ null, %bb.af ], [ %i.du, %bb.ad ], [ null, %aligned_usize_get.exit.i15.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %0, ptr %i.a, align 16, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.en, align 8, !tbaa !23
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !23
  %i.eo = ptrtoint ptr %.0217.ph to i64
  call void @duckdb_je_hook_invoke_alloc(i32 noundef 2, ptr noundef %.0217.ph, i64 noundef %i.eo, ptr noundef nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.l, %aligned_usize_get.exit.i.thread, %bb.m, %imalloc_init_check.exit, %bb.ag
  %.0217250 = phi ptr [ %.0217.ph, %bb.ag ], [ null, %imalloc_init_check.exit ], [ null, %bb.m ], [ null, %aligned_usize_get.exit.i.thread ], [ %i.ax, %bb.l ]
  ret ptr %.0217250
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define noalias ptr @duckdb_je_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !10
  %.not.i77 = icmp eq i8 %i.f, 0
  br i1 %.not.i77, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !9

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 824
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !10
  %i.h = icmp eq i8 %.pre, 0
  br i1 %i.h, label %tsd_fetch_impl.exit.thread, label %bb.z, !prof !84

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i78294 = phi ptr [ %i.g, %tsd_fetch_impl.exit ], [ %i.d, %bb.a ] ; 16 uses
  %mul274 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val275 = extractvalue { i64, i1 } %mul274, 0 ; 12 uses
  %mul.ov276 = extractvalue { i64, i1 } %mul274, 1
  %i.i = icmp eq i64 %mul.val275, 0
  br i1 %i.i, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %.not.i29 = icmp ne i64 %0, 0
  %i.j = icmp ne i64 %1, 0
  %or.cond = and i1 %.not.i29, %i.j
  br i1 %or.cond, label %aligned_usize_get.exit.i.thread, label %.thread, !prof !125

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.k = or i64 %1, %0
  %i.l = icmp ult i64 %i.k, 4294967296
  br i1 %i.l, label %compute_size_with_overflow.exit30.thread, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  br i1 %mul.ov276, label %aligned_usize_get.exit.i.thread, label %compute_size_with_overflow.exit30.thread, !prof !126

compute_size_with_overflow.exit30.thread:         ; preds = %bb.c, %bb.d
  %i.m = icmp ult i64 %mul.val275, 4097
  br i1 %i.m, label %.thread, label %bb.e, !prof !127

.thread:                                          ; preds = %bb.b, %compute_size_with_overflow.exit30.thread
  %i.n = add nuw nsw i64 %mul.val275, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10
  %i.r = zext i8 %i.q to i32
  br label %sz_size2index.exit.i

bb.e:                                             ; preds = %compute_size_with_overflow.exit30.thread
  %i.s = icmp ugt i64 %mul.val275, 8070450532247928832
  br i1 %i.s, label %aligned_usize_get.exit.i.thread, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %mul.val275, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 3 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v
  %i.y = ashr exact i64 -1152921504606846976, %i.v
  %i.z = add nsw i64 %mul.val275, -1
  %i.aa = and i64 %i.y, %i.z
  %i.ab = lshr i64 %i.aa, %i.x
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %i.ae = shl nuw nsw i32 %i.w, 2
  %reass.sub281 = sub nsw i32 %i.ad, %i.ae
  %i.af = add nsw i32 %reass.sub281, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.f, %.thread
  %.0.i50.i = phi i32 [ %i.r, %.thread ], [ %i.af, %bb.f ] ; 8 uses
  %i.ag = icmp samesign ugt i32 %.0.i50.i, 231
  br i1 %i.ag, label %aligned_usize_get.exit.i.thread, label %iallocztm_explicit_slab.exit.i40, !prof !85

iallocztm_explicit_slab.exit.i40:                 ; preds = %sz_size2index.exit.i
  %i.ah = zext nneg i32 %.0.i50.i to i64          ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23 ; 6 uses
  %i.ak = icmp ult i64 %i.aj, 14337
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i78294, i64 864 ; 4 uses
  br i1 %i.ak, label %bb.g, label %bb.n, !prof !9

bb.g:                                             ; preds = %iallocztm_explicit_slab.exit.i40
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i78294, i64 872
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ah ; 9 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !86 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !93 ; 2 uses
  %i.au = trunc i64 %i.aq to i16
  %.not.i26.i57 = icmp eq i16 %i.at, %i.au
  br i1 %.not.i26.i57, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !86
  br label %cache_bin_alloc_impl.exit.i58.thread
end_hunk_1
begin_hunk_2_@duckdb_je_calloc:bb.a
  br i1 %.not277, label %.critedge.i.i42, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %.val107, align 8, !tbaa !92 ; 2 uses
  %i.bp = ptrtoint ptr %.val107 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.val107, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !93 ; 2 uses
  %i.bt = trunc i64 %i.bp to i16
  %.not.i28.i46 = icmp eq i16 %i.bs, %i.bt
  br i1 %.not.i28.i46, label %bb.r, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !86
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !94
  %.not21.i30.i56 = icmp eq i16 %i.bv, %i.bs
  br i1 %.not21.i30.i56, label %cache_bin_alloc_impl.exit31.i47, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !86
  %i.bw = ptrtoint ptr %i.bq to i64
  %i.bx = trunc i64 %i.bw to i16
  store i16 %i.bx, ptr %i.br, align 8, !tbaa !93
  br label %bb.v

cache_bin_alloc_impl.exit31.i47:                  ; preds = %bb.r
  %i.by = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i78294, ptr noundef null) ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %aligned_usize_get.exit.i.thread, label %bb.t, !prof !7

bb.t:                                             ; preds = %cache_bin_alloc_impl.exit31.i47
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i78294, ptr noundef nonnull %i.al, ptr noundef nonnull %i.bn, i32 noundef %.0.i50.i, i1 noundef zeroext false) #21
  %i.ca = icmp samesign ult i64 %mul.val275, 4097
  br i1 %i.ca, label %bb.u, label %sz_s2u_compute.exit.i50, !prof !9

bb.u:                                             ; preds = %bb.t
  %i.cb = add nuw nsw i64 %mul.val275, 7
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !10
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !23
  br label %sz_s2u.exit.i52

sz_s2u_compute.exit.i50:                          ; preds = %bb.t
  %i.ci = shl nuw i64 %mul.val275, 1
  %i.cj = add i64 %i.ci, -1
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cj, i1 true) ; 2 uses
  %notmask.i.i49 = ashr exact i64 -1152921504606846976, %i.ck
  %i.cl = lshr i64 1152921504606846975, %i.ck
  %i.cm = add nuw nsw i64 %mul.val275, %i.cl
  %i.cn = and i64 %i.cm, %notmask.i.i49
  br label %sz_s2u.exit.i52

sz_s2u.exit.i52:                                  ; preds = %sz_s2u_compute.exit.i50, %bb.u
  %.0.i32.i53 = phi i64 [ %i.ch, %bb.u ], [ %i.cn, %sz_s2u_compute.exit.i50 ]
  %i.co = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %.0.i78294, ptr noundef nonnull %i.by, i64 noundef %.0.i32.i53, i1 noundef zeroext true) #21
  br label %imalloc_no_sample.exit71

bb.v:                                             ; preds = %bb.q, %bb.s
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bo, i8 0, i64 %i.aj, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !98
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !98
  br label %imalloc_no_sample.exit71

.critedge.i.i42:                                  ; preds = %bb.o, %bb.n
  %i.cs = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %.0.i78294, ptr noundef null, i64 noundef %mul.val275, i32 noundef %.0.i50.i, i1 noundef zeroext true, i1 noundef zeroext false) #21
  br label %imalloc_no_sample.exit71

imalloc_no_sample.exit71:                         ; preds = %.critedge.i.i42, %.thread226, %cache_bin_alloc_impl.exit.i58.thread, %bb.v, %sz_s2u.exit.i52
  %.0.i23.i44 = phi ptr [ %i.cs, %.critedge.i.i42 ], [ %.0.i24.i63.ph, %.thread226 ], [ %.132.i.i66, %cache_bin_alloc_impl.exit.i58.thread ], [ %i.bo, %bb.v ], [ %i.co, %sz_s2u.exit.i52 ] ; 2 uses
  %i.ct = icmp eq ptr %.0.i23.i44, null
  br i1 %i.ct, label %aligned_usize_get.exit.i.thread, label %bb.w, !prof !108

bb.w:                                             ; preds = %imalloc_no_sample.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i78294, i64 832 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !112
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i78294, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !113
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i78294, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !114
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i78294, i64 840
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.da, ptr %i.db, align 8, !tbaa !115
  %i.dc = load i64, ptr %i.cu, align 8, !tbaa !23 ; 2 uses
  %i.dd = add i64 %i.dc, %i.aj
  store i64 %i.dd, ptr %i.cu, align 8, !tbaa !23
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !23
  %i.df = sub i64 %i.de, %i.dc
  %i.dg = icmp ult i64 %i.aj, %i.df
  br i1 %i.dg, label %bb.y, label %bb.x, !prof !9

bb.x:                                             ; preds = %bb.w
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i78294, ptr noundef nonnull %2) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %imalloc.exit.thread

aligned_usize_get.exit.i.thread:                  ; preds = %bb.b, %cache_bin_alloc_impl.exit31.i47, %bb.m, %bb.e, %sz_size2index.exit.i, %imalloc_no_sample.exit71, %bb.d
  %i.dh = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.dh, align 4, !tbaa !3
  br label %imalloc.exit.thread

bb.z:                                             ; preds = %tsd_fetch_impl.exit
  %i.di = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ab, label %bb.aa, !prof !9

bb.aa:                                            ; preds = %bb.z
  %i.dk = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.dk, label %imalloc_init_check.exit, label %bb.ab, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.aa
  %i.dl = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.dl, align 4, !tbaa !3
  br label %imalloc.exit.thread

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 12 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %i.dm = icmp eq i64 %mul.val, 0
  br i1 %i.dm, label %bb.ac, label %bb.ad, !prof !7

bb.ac:                                            ; preds = %bb.ab
  %.not.i26 = icmp ne i64 %0, 0
  %i.dn = icmp ne i64 %1, 0
  %or.cond272 = and i1 %.not.i26, %i.dn
  br i1 %or.cond272, label %aligned_usize_get.exit.i15.thread, label %.thread237, !prof !128

bb.ad:                                            ; preds = %bb.ab
  %i.do = or i64 %1, %0
  %i.dp = icmp ult i64 %i.do, 4294967296
  br i1 %i.dp, label %compute_size_with_overflow.exit.thread, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %bb.ad
  br i1 %mul.ov, label %aligned_usize_get.exit.i15.thread, label %compute_size_with_overflow.exit.thread, !prof !129

compute_size_with_overflow.exit.thread:           ; preds = %bb.ad, %bb.ae
  %i.dq = icmp ult i64 %mul.val, 4097
  br i1 %i.dq, label %.thread237, label %bb.af, !prof !130

.thread237:                                       ; preds = %bb.ac, %compute_size_with_overflow.exit.thread
  %i.dr = add nuw nsw i64 %mul.val, 7
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !10
  %i.dv = zext i8 %i.du to i32
  br label %sz_size2index.exit.i21

bb.af:                                            ; preds = %compute_size_with_overflow.exit.thread
  %i.dw = icmp ugt i64 %mul.val, 8070450532247928832
  br i1 %i.dw, label %aligned_usize_get.exit.i15.thread, label %bb.ag, !prof !7

bb.ag:                                            ; preds = %bb.af
  %i.dx = shl nuw i64 %mul.val, 1
  %i.dy = add i64 %i.dx, -1
  %i.dz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dy, i1 true) ; 3 uses
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = sub nuw nsw i64 60, %i.dz
  %i.ec = ashr exact i64 -1152921504606846976, %i.dz
  %i.ed = add nsw i64 %mul.val, -1
  %i.ee = and i64 %i.ec, %i.ed
  %i.ef = lshr i64 %i.ee, %i.eb
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = and i32 %i.eg, 3
  %i.ei = shl nuw nsw i32 %i.ea, 2
  %reass.sub = sub nsw i32 %i.eh, %i.ei
  %i.ej = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i21

sz_size2index.exit.i21:                           ; preds = %bb.ag, %.thread237
  %.0.i50.i22 = phi i32 [ %i.dv, %.thread237 ], [ %i.ej, %bb.ag ] ; 8 uses
  %i.ek = icmp samesign ugt i32 %.0.i50.i22, 231
  br i1 %i.ek, label %aligned_usize_get.exit.i15.thread, label %bb.ah, !prof !117

bb.ah:                                            ; preds = %sz_size2index.exit.i21
  %i.el = zext nneg i32 %.0.i50.i22 to i64        ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.el ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !23 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !10
  %i.eq = icmp sgt i8 %i.ep, 0
  br i1 %i.eq, label %bb.aj, label %bb.ai, !prof !118

bb.ai:                                            ; preds = %bb.ah
  %i.er = load i8, ptr %i.g, align 1, !tbaa !95, !range !96, !noundef !97
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 864 ; 4 uses
  br i1 %i.es, label %bb.al, label %iallocztm_explicit_slab.exit.i.thread

bb.aj:                                            ; preds = %bb.ah
  %i.eu = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %arena_get.exit126, label %iallocztm_explicit_slab.exit.i.thread, !prof !7

arena_get.exit126:                                ; preds = %bb.aj
  %i.ew = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.ak, label %iallocztm_explicit_slab.exit.i.thread, !prof !8

bb.ak:                                            ; preds = %arena_get.exit126
  %i.ey = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  %.not.i.i.not = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i15.thread, label %iallocztm_explicit_slab.exit.i.thread

iallocztm_explicit_slab.exit.i.thread:            ; preds = %bb.aj, %arena_get.exit126, %bb.ai, %bb.ak
  %.1209.ph.ph = phi ptr [ null, %bb.ak ], [ null, %bb.ai ], [ %i.ew, %arena_get.exit126 ], [ %i.eu, %bb.aj ]
  %.ph299 = icmp ult i64 %i.en, 14337
  br label %.critedge.i.i

bb.al:                                            ; preds = %bb.ai
  %.ph = icmp ult i64 %i.en, 14337
  br i1 %.ph, label %bb.am, label %bb.at, !prof !9

bb.am:                                            ; preds = %bb.al
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 872
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %i.el ; 9 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !86 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !92 ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 8, !tbaa !93 ; 2 uses
  %i.fh = trunc i64 %i.fd to i16
  %.not.i26.i = icmp eq i16 %i.fg, %i.fh
  br i1 %.not.i26.i, label %bb.ao, label %bb.an, !prof !7

bb.an:                                            ; preds = %bb.am
  store ptr %i.fe, ptr %i.fa, align 8, !tbaa !86
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ao:                                            ; preds = %bb.am
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  %i.fj = load i16, ptr %i.fi, align 4, !tbaa !94
  %.not21.i.i = icmp eq i16 %i.fj, %i.fg
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.ap, !prof !7

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.fe, ptr %i.fa, align 8, !tbaa !86
  %i.fk = ptrtoint ptr %i.fe to i64
  %i.fl = trunc i64 %i.fk to i16
  store i16 %i.fl, ptr %i.ff, align 8, !tbaa !93
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.fm = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %.thread261, label %bb.aq, !prof !7

bb.aq:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val108 = load ptr, ptr %i.fa, align 8, !tbaa !86
  %i.fo = icmp eq ptr %.val108, @duckdb_je_disabled_bin
  br i1 %i.fo, label %bb.ar, label %bb.as, !prof !7

bb.ar:                                            ; preds = %bb.aq
  %i.fp = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fm, i64 noundef %mul.val, i32 noundef %.0.i50.i22, i1 noundef zeroext true, i1 noundef zeroext true) #21
  br label %.thread261

.thread261:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.ar
  %.0.i24.i.ph = phi ptr [ %i.fp, %bb.ar ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %imalloc_no_sample.exit

bb.as:                                            ; preds = %bb.aq
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.et, ptr noundef nonnull %i.fa, i32 noundef %.0.i50.i22, i1 noundef zeroext true) #21
  %i.fq = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.et, ptr noundef nonnull %i.fa, i32 noundef %.0.i50.i22, ptr noundef nonnull %i.b) #21
  %i.fr = load i8, ptr %i.b, align 1, !tbaa !95, !range !96, !noundef !97
  %.not273 = icmp eq i8 %i.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not273, label %aligned_usize_get.exit.i15.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.ap, %bb.an, %bb.as
  %.132.i.i = phi ptr [ %i.fq, %bb.as ], [ %i.fc, %bb.an ], [ %i.fc, %bb.ap ] ; 2 uses
  %i.fs = load i64, ptr %i.em, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.fs, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !98
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !98
  br label %imalloc_no_sample.exit

bb.at:                                            ; preds = %bb.al
  %i.fw = load ptr, ptr %i.et, align 8, !tbaa !99
  %i.fx = getelementptr i8, ptr %i.fw, i64 48
  %.val115 = load i32, ptr %i.fx, align 8, !tbaa !101
  %i.fy = icmp ult i32 %.0.i50.i22, %.val115
  br i1 %i.fy, label %bb.au, label %.critedge.i.i, !prof !9

bb.au:                                            ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 872
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %i.el ; 7 uses
  %.val109 = load ptr, ptr %i.ga, align 8, !tbaa !86 ; 4 uses
  %.not = icmp eq ptr %.val109, @duckdb_je_disabled_bin
  br i1 %.not, label %.critedge.i.i, label %bb.av, !prof !7

bb.av:                                            ; preds = %bb.au
  %i.gb = load ptr, ptr %.val109, align 8, !tbaa !92 ; 2 uses
  %i.gc = ptrtoint ptr %.val109 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.val109, i64 8 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 8, !tbaa !93 ; 2 uses
  %i.gg = trunc i64 %i.gc to i16
  %.not.i28.i = icmp eq i16 %i.gf, %i.gg
  br i1 %.not.i28.i, label %bb.ax, label %bb.aw, !prof !7

bb.aw:                                            ; preds = %bb.av
  store ptr %i.gd, ptr %i.ga, align 8, !tbaa !86
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.gi = load i16, ptr %i.gh, align 4, !tbaa !94
  %.not21.i30.i = icmp eq i16 %i.gi, %i.gf
  br i1 %.not21.i30.i, label %cache_bin_alloc_impl.exit31.i, label %bb.ay, !prof !7

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.gd, ptr %i.ga, align 8, !tbaa !86
  %i.gj = ptrtoint ptr %i.gd to i64
  %i.gk = trunc i64 %i.gj to i16
  store i16 %i.gk, ptr %i.ge, align 8, !tbaa !93
  br label %bb.bb

cache_bin_alloc_impl.exit31.i:                    ; preds = %bb.ax
  %i.gl = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %aligned_usize_get.exit.i15.thread, label %bb.az, !prof !7

bb.az:                                            ; preds = %cache_bin_alloc_impl.exit31.i
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.et, ptr noundef nonnull %i.ga, i32 noundef %.0.i50.i22, i1 noundef zeroext false) #21
  %i.gn = icmp samesign ult i64 %mul.val, 4097
  br i1 %i.gn, label %bb.ba, label %sz_s2u_compute.exit.i, !prof !9

bb.ba:                                            ; preds = %bb.az
  %i.go = add nuw nsw i64 %mul.val, 7
  %i.gp = lshr i64 %i.go, 3
  %i.gq = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !10
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !23
  br label %sz_s2u.exit.i

sz_s2u_compute.exit.i:                            ; preds = %bb.az
  %i.gv = shl nuw i64 %mul.val, 1
  %i.gw = add i64 %i.gv, -1
  %i.gx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gw, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gx
  %i.gy = lshr i64 1152921504606846975, %i.gx
  %i.gz = add nuw nsw i64 %mul.val, %i.gy
  %i.ha = and i64 %i.gz, %notmask.i.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %sz_s2u_compute.exit.i, %bb.ba
  %.0.i32.i = phi i64 [ %i.gu, %bb.ba ], [ %i.ha, %sz_s2u_compute.exit.i ]
  %i.hb = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gl, i64 noundef %.0.i32.i, i1 noundef zeroext true) #21
  br label %imalloc_no_sample.exit

bb.bb:                                            ; preds = %bb.aw, %bb.ay
  %i.hc = load i64, ptr %i.em, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.gb, i8 0, i64 %i.hc, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !98
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !98
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %iallocztm_explicit_slab.exit.i.thread, %bb.au, %bb.at
  %.ph302 = phi i1 [ %.ph299, %iallocztm_explicit_slab.exit.i.thread ], [ false, %bb.au ], [ false, %bb.at ]
  %.1209.ph301 = phi ptr [ %.1209.ph.ph, %iallocztm_explicit_slab.exit.i.thread ], [ null, %bb.au ], [ null, %bb.at ]
  %i.hg = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1209.ph301, i64 noundef %mul.val, i32 noundef %.0.i50.i22, i1 noundef zeroext true, i1 noundef zeroext %.ph302) #21
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread261, %cache_bin_alloc_impl.exit.i.thread, %bb.bb, %sz_s2u.exit.i
  %.0.i33 = phi ptr [ %i.hb, %sz_s2u.exit.i ], [ %i.hg, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread261 ], [ %.132.i.i, %cache_bin_alloc_impl.exit.i.thread ], [ %i.gb, %bb.bb ] ; 2 uses
  %i.hh = icmp eq ptr %.0.i33, null
  br i1 %i.hh, label %aligned_usize_get.exit.i15.thread, label %bb.bc, !prof !119

bb.bc:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.hi = getelementptr inbounds nuw i8, ptr %i.g, i64 832 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !112
  %i.hk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_2
begin_hunk_3_@duckdb_je_calloc:bb.a
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.be, %aligned_usize_get.exit.i15.thread
  %.0217 = phi ptr [ %.0.i33, %bb.be ], [ null, %aligned_usize_get.exit.i15.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 %0, ptr %i.c, align 16, !tbaa !23
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.hw, align 8, !tbaa !23
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !23
  %i.hx = ptrtoint ptr %.0217 to i64
  call void @duckdb_je_hook_invoke_alloc(i32 noundef 3, ptr noundef %.0217, i64 noundef %i.hx, ptr noundef nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %imalloc.exit.thread

imalloc.exit.thread:                              ; preds = %bb.y, %aligned_usize_get.exit.i.thread, %imalloc_init_check.exit, %imalloc.exit
  %.0217271 = phi ptr [ %.0217, %imalloc.exit ], [ null, %aligned_usize_get.exit.i.thread ], [ %.0.i23.i44, %bb.y ], [ null, %imalloc_init_check.exit ]
  ret ptr %.0217271
}

; Function Attrs: noinline nounwind uwtable
define void @duckdb_je_free_default(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.z, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 824
  %i.d = load i8, ptr %i.c, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !9

tsd_fetch_impl.exit:                              ; preds = %bb.b
  %i.e = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.b, i1 noundef zeroext true) #21 ; 18 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 824
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !10
  %i.f = icmp eq i8 %.pre, 0
  br i1 %i.f, label %tsd_fetch_impl.exit.thread, label %bb.l, !prof !84

tsd_fetch_impl.exit.thread:                       ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0.i3992 = phi ptr [ %i.e, %tsd_fetch_impl.exit ], [ %i.b, %bb.b ] ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i3992, i64 864 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i3992, i64 440 ; 2 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.j = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %.0.i3992, ptr noundef nonnull %i.h, i64 noundef %i.i) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.j, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.j, 1
  %i.k = and i64 %.fca.0.extract.i, 4294967295    ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.sroa.079.0.extract.trunc = trunc i64 %.fca.0.extract.i to i32 ; 3 uses
  %i.n = and i32 %.fca.1.extract.i, 256
  %.not90 = icmp eq i32 %i.n, 0
  br i1 %.not90, label %bb.g, label %bb.c, !prof !7

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i3992, i64 872
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86   ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 18 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !131
  %i.u = trunc i64 %i.r to i16
  %i.v = icmp eq i16 %i.t, %i.u
  br i1 %i.v, label %cache_bin_dalloc_easy.exit32, label %cache_bin_dalloc_easy.exit32.thread, !prof !7

cache_bin_dalloc_easy.exit32.thread:              ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.w, ptr %i.p, align 8, !tbaa !86
  store ptr %0, ptr %i.w, align 8, !tbaa !92
  br label %arena_dalloc.exit23

cache_bin_dalloc_easy.exit32:                     ; preds = %bb.c
  %i.x = icmp eq ptr %i.q, @duckdb_je_disabled_bin
  br i1 %i.x, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %cache_bin_dalloc_easy.exit32
  tail call void @duckdb_je_arena_dalloc_small(ptr noundef nonnull %.0.i3992, ptr noundef nonnull %0) #21
  br label %arena_dalloc.exit23

bb.e:                                             ; preds = %cache_bin_dalloc_easy.exit32
  %i.y = getelementptr i8, ptr %i.p, i64 22
  %.val65 = load i16, ptr %i.y, align 2, !tbaa !132
  %i.z = zext i16 %.val65 to i32
  %i.aa = load i32, ptr @duckdb_je_opt_lg_tcache_flush_small_div, align 4, !tbaa !3
  %i.ab = lshr i32 %i.z, %i.aa
  tail call void @duckdb_je_tcache_bin_flush_small(ptr noundef nonnull %.0.i3992, ptr noundef nonnull %i.g, ptr noundef nonnull %i.p, i32 noundef %.sroa.079.0.extract.trunc, i32 noundef %i.ab) #21
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !86  ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = load i16, ptr %i.s, align 2, !tbaa !131
  %i.af = trunc i64 %i.ad to i16
  %i.ag = icmp eq i16 %i.ae, %i.af
  br i1 %i.ag, label %arena_dalloc.exit23, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !86
  store ptr %0, ptr %i.ah, align 8, !tbaa !92
  br label %arena_dalloc.exit23

bb.g:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.aj = getelementptr i8, ptr %i.ai, i64 48
  %.val55 = load i32, ptr %i.aj, align 8, !tbaa !101
  %i.ak = icmp ugt i32 %.val55, %.sroa.079.0.extract.trunc
  br i1 %i.ak, label %bb.h, label %tsdn_rtree_ctx.exit43

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i3992, i64 872
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.k ; 7 uses
  %.val49 = load ptr, ptr %i.am, align 8, !tbaa !86 ; 3 uses
  %i.an = icmp eq ptr %.val49, @duckdb_je_disabled_bin
  %i.ao = getelementptr i8, ptr %i.am, i64 22
  br i1 %i.an, label %tsdn_rtree_ctx.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = ptrtoint ptr %.val49 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 18 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !131
  %i.as = trunc i64 %i.ap to i16
  %i.at = icmp eq i16 %i.ar, %i.as
  br i1 %i.at, label %cache_bin_dalloc_easy.exit12.i34, label %cache_bin_dalloc_easy.exit12.i34.thread, !prof !7

cache_bin_dalloc_easy.exit12.i34.thread:          ; preds = %bb.i
  %i.au = getelementptr inbounds i8, ptr %.val49, i64 -8 ; 2 uses
  store ptr %i.au, ptr %i.am, align 8, !tbaa !86
  store ptr %0, ptr %i.au, align 8, !tbaa !92
  br label %arena_dalloc.exit23

cache_bin_dalloc_easy.exit12.i34:                 ; preds = %bb.i
  %.val62 = load i16, ptr %i.ao, align 2, !tbaa !132
  %i.av = zext i16 %.val62 to i32
  %i.aw = load i32, ptr @duckdb_je_opt_lg_tcache_flush_large_div, align 4, !tbaa !3
  %i.ax = lshr i32 %i.av, %i.aw
  tail call void @duckdb_je_tcache_bin_flush_large(ptr noundef nonnull %.0.i3992, ptr noundef nonnull %i.g, ptr noundef nonnull %i.am, i32 noundef %.sroa.079.0.extract.trunc, i32 noundef %i.ax) #21
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !86 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = load i16, ptr %i.aq, align 2, !tbaa !131
  %i.bb = trunc i64 %i.az to i16
  %i.bc = icmp eq i16 %i.ba, %i.bb
  br i1 %i.bc, label %arena_dalloc.exit23, label %bb.j, !prof !7

bb.j:                                             ; preds = %cache_bin_dalloc_easy.exit12.i34
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 -8 ; 2 uses
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !86
  store ptr %0, ptr %i.bd, align 8, !tbaa !92
  br label %arena_dalloc.exit23

tsdn_rtree_ctx.exit43:                            ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull %.0.i3992, ptr noundef nonnull %i.h, i64 noundef %i.i)
  %i.be = load ptr, ptr %4, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  tail call void @duckdb_je_large_dalloc(ptr noundef nonnull %.0.i3992, ptr noundef %i.be) #21
  br label %arena_dalloc.exit23

arena_dalloc.exit23:                              ; preds = %bb.f, %bb.e, %cache_bin_dalloc_easy.exit32.thread, %bb.d, %cache_bin_dalloc_easy.exit12.i34.thread, %bb.j, %cache_bin_dalloc_easy.exit12.i34, %tsdn_rtree_ctx.exit43
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i8 0, ptr %1, align 8, !tbaa !109
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i3992, i64 848 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !112
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i3992, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !113
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i3992, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !114
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i3992, i64 856
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !115
  %i.bn = load i64, ptr %i.bf, align 8, !tbaa !23 ; 2 uses
  %i.bo = add i64 %i.bn, %i.m
  store i64 %i.bo, ptr %i.bf, align 8, !tbaa !23
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !23
  %i.bq = sub i64 %i.bp, %i.bn
  %i.br = icmp ult i64 %i.m, %i.bq
  br i1 %i.br, label %te_event_advance.exit48, label %bb.k, !prof !9

bb.k:                                             ; preds = %arena_dalloc.exit23
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i3992, ptr noundef nonnull %1) #21
  br label %te_event_advance.exit48

te_event_advance.exit48:                          ; preds = %arena_dalloc.exit23, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.z

bb.l:                                             ; preds = %tsd_fetch_impl.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %tcache_get_from_ind.exit, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.bv = load i8, ptr %i.e, align 1, !tbaa !95, !range !96, !noundef !97
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 864
  %spec.select = select i1 %i.bw, ptr %i.bx, ptr null
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.m, %bb.l
  %.0.i = phi ptr [ null, %bb.l ], [ %spec.select, %bb.m ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.by = ptrtoint ptr %0 to i64                  ; 3 uses
  store i64 %i.by, ptr %i.a, align 16, !tbaa !23
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !23
  call void @duckdb_je_hook_invoke_dalloc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #21
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 440 ; 2 uses
  %i.ca = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %i.e, ptr noundef nonnull %i.bz, i64 noundef %i.by) ; 2 uses
  %.fca.0.extract.i17 = extractvalue { i64, i32 } %i.ca, 0 ; 2 uses
  %.fca.1.extract.i18 = extractvalue { i64, i32 } %i.ca, 1
  %i.cb = and i64 %.fca.0.extract.i17, 4294967295 ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !23 ; 3 uses
  %i.ce = load i8, ptr @duckdb_je_opt_junk_free, align 1, !range !96
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.n, label %idalloctm.exit22

bb.n:                                             ; preds = %tcache_get_from_ind.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 90, i64 %i.cd, i1 false)
  br label %idalloctm.exit22

idalloctm.exit22:                                 ; preds = %tcache_get_from_ind.exit, %bb.n
  %i.cg = icmp eq ptr %.0.i, null
  br i1 %i.cg, label %bb.o, label %bb.p, !prof !7

bb.o:                                             ; preds = %idalloctm.exit22
  call fastcc void @arena_dalloc_no_tcache(ptr noundef nonnull %i.e, ptr noundef nonnull %0)
  br label %arena_dalloc.exit

bb.p:                                             ; preds = %idalloctm.exit22
  %.sroa.075.0.extract.trunc = trunc i64 %.fca.0.extract.i17 to i32 ; 3 uses
  %i.ch = and i32 %.fca.1.extract.i18, 256
  %.not89 = icmp eq i32 %i.ch, 0
  br i1 %.not89, label %bb.u, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cb ; 7 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !86 ; 3 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 18 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !131
  %i.co = trunc i64 %i.cl to i16
  %i.cp = icmp eq i16 %i.cn, %i.co
  br i1 %i.cp, label %cache_bin_dalloc_easy.exit28, label %cache_bin_dalloc_easy.exit28.thread, !prof !7

cache_bin_dalloc_easy.exit28.thread:              ; preds = %bb.q
  %i.cq = getelementptr inbounds i8, ptr %i.ck, i64 -8 ; 2 uses
  store ptr %i.cq, ptr %i.cj, align 8, !tbaa !86
  store ptr %0, ptr %i.cq, align 8, !tbaa !92
  br label %arena_dalloc.exit

cache_bin_dalloc_easy.exit28:                     ; preds = %bb.q
  %i.cr = icmp eq ptr %i.ck, @duckdb_je_disabled_bin
  br i1 %i.cr, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %cache_bin_dalloc_easy.exit28
  call void @duckdb_je_arena_dalloc_small(ptr noundef nonnull %i.e, ptr noundef nonnull %0) #21
  br label %arena_dalloc.exit

bb.s:                                             ; preds = %cache_bin_dalloc_easy.exit28
  %i.cs = getelementptr i8, ptr %i.cj, i64 22
  %.val64 = load i16, ptr %i.cs, align 2, !tbaa !132
  %i.ct = zext i16 %.val64 to i32
  %i.cu = load i32, ptr @duckdb_je_opt_lg_tcache_flush_small_div, align 4, !tbaa !3
  %i.cv = lshr i32 %i.ct, %i.cu
  call void @duckdb_je_tcache_bin_flush_small(ptr noundef nonnull %i.e, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.cj, i32 noundef %.sroa.075.0.extract.trunc, i32 noundef %i.cv) #21
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !86 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = load i16, ptr %i.cm, align 2, !tbaa !131
  %i.cz = trunc i64 %i.cx to i16
  %i.da = icmp eq i16 %i.cy, %i.cz
  br i1 %i.da, label %arena_dalloc.exit, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds i8, ptr %i.cw, i64 -8 ; 2 uses
  store ptr %i.db, ptr %i.cj, align 8, !tbaa !86
  store ptr %0, ptr %i.db, align 8, !tbaa !92
  br label %arena_dalloc.exit

bb.u:                                             ; preds = %bb.p
  %i.dc = load ptr, ptr %.0.i, align 8, !tbaa !99
  %i.dd = getelementptr i8, ptr %i.dc, i64 48
  %.val53 = load i32, ptr %i.dd, align 8, !tbaa !101
  %i.de = icmp ugt i32 %.val53, %.sroa.075.0.extract.trunc
  br i1 %i.de, label %bb.v, label %tsdn_rtree_ctx.exit

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.cb ; 7 uses
  %.val = load ptr, ptr %i.dg, align 8, !tbaa !86 ; 3 uses
  %i.dh = icmp eq ptr %.val, @duckdb_je_disabled_bin
  %i.di = getelementptr i8, ptr %i.dg, i64 22
  br i1 %i.dh, label %tsdn_rtree_ctx.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = ptrtoint ptr %.val to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 18 ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !131
  %i.dm = trunc i64 %i.dj to i16
  %i.dn = icmp eq i16 %i.dl, %i.dm
  br i1 %i.dn, label %cache_bin_dalloc_easy.exit12.i, label %cache_bin_dalloc_easy.exit12.i.thread, !prof !7

cache_bin_dalloc_easy.exit12.i.thread:            ; preds = %bb.w
  %i.do = getelementptr inbounds i8, ptr %.val, i64 -8 ; 2 uses
  store ptr %i.do, ptr %i.dg, align 8, !tbaa !86
  store ptr %0, ptr %i.do, align 8, !tbaa !92
  br label %arena_dalloc.exit

cache_bin_dalloc_easy.exit12.i:                   ; preds = %bb.w
  %.val63 = load i16, ptr %i.di, align 2, !tbaa !132
  %i.dp = zext i16 %.val63 to i32
  %i.dq = load i32, ptr @duckdb_je_opt_lg_tcache_flush_large_div, align 4, !tbaa !3
  %i.dr = lshr i32 %i.dp, %i.dq
  call void @duckdb_je_tcache_bin_flush_large(ptr noundef nonnull %i.e, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.dg, i32 noundef %.sroa.075.0.extract.trunc, i32 noundef %i.dr) #21
  %i.ds = load ptr, ptr %i.dg, align 8, !tbaa !86 ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = load i16, ptr %i.dk, align 2, !tbaa !131
  %i.dv = trunc i64 %i.dt to i16
  %i.dw = icmp eq i16 %i.du, %i.dv
  br i1 %i.dw, label %arena_dalloc.exit, label %bb.x, !prof !7

bb.x:                                             ; preds = %cache_bin_dalloc_easy.exit12.i
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  store ptr %i.dx, ptr %i.dg, align 8, !tbaa !86
  store ptr %0, ptr %i.dx, align 8, !tbaa !92
  br label %arena_dalloc.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bz, i64 noundef %i.by)
  %i.dy = load ptr, ptr %3, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @duckdb_je_large_dalloc(ptr noundef nonnull %i.e, ptr noundef %i.dy) #21
  br label %arena_dalloc.exit

arena_dalloc.exit:                                ; preds = %bb.t, %bb.s, %cache_bin_dalloc_easy.exit28.thread, %bb.r, %cache_bin_dalloc_easy.exit12.i.thread, %bb.x, %cache_bin_dalloc_easy.exit12.i, %tsdn_rtree_ctx.exit, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 0, ptr %2, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 848 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !112
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !113
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !114
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 856
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !115
  %i.eh = load i64, ptr %i.dz, align 8, !tbaa !23 ; 2 uses
  %i.ei = add i64 %i.eh, %i.cd
  store i64 %i.ei, ptr %i.dz, align 8, !tbaa !23
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !23
  %i.ek = sub i64 %i.ej, %i.eh
  %i.el = icmp ult i64 %i.cd, %i.ek
  br i1 %i.el, label %te_event_advance.exit, label %bb.y, !prof !9

bb.y:                                             ; preds = %arena_dalloc.exit
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #21
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %arena_dalloc.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.z

bb.z:                                             ; preds = %te_event_advance.exit48, %te_event_advance.exit, %bb.a
  ret void
}

declare void @duckdb_je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @duckdb_je_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !133
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %emap_alloc_ctx_try_lookup_fast.exit, label %emap_alloc_ctx_try_lookup_fast.exit.thread, !prof !9

emap_alloc_ctx_try_lookup_fast.exit:              ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
end_hunk_3
begin_hunk_4_@duckdb_je_valloc:bb.a

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.h = add nuw nsw i64 %0, 4095
  %i.i = and i64 %i.h, 28672                      ; 4 uses
  %i.j = icmp samesign ult i64 %i.i, 4097
  br i1 %i.j, label %bb.c, label %sz_s2u_compute.exit.i99, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.k = lshr exact i64 %i.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  br label %sz_s2u.exit25.i101

sz_s2u_compute.exit.i99:                          ; preds = %bb.b
  %i.q = shl nuw nsw i64 %i.i, 1
  %i.r = add nsw i64 %i.q, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.r, i1 true) ; 2 uses
  %notmask.i.i98 = ashr exact i64 -1152921504606846976, %i.s
  %i.t = lshr i64 1152921504606846975, %i.s
  %i.u = add nuw nsw i64 %i.i, %i.t
  %i.v = and i64 %i.u, %notmask.i.i98
  br label %sz_s2u.exit25.i101

sz_s2u.exit25.i101:                               ; preds = %sz_s2u_compute.exit.i99, %bb.c
  %.0.i24.i102 = phi i64 [ %i.p, %bb.c ], [ %i.v, %sz_s2u_compute.exit.i99 ] ; 2 uses
  %i.w = icmp ult i64 %.0.i24.i102, 16384
  br i1 %i.w, label %aligned_usize_get.exit.i, label %.thread

bb.d:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.x = icmp ult i64 %0, 16385
  br i1 %i.x, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.y, label %sz_s2u_compute.exit29.i91, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.z = shl nuw i64 %0, 1
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.aa, i1 true) ; 2 uses
  %notmask.i27.i90 = ashr exact i64 -1152921504606846976, %i.ab
  %i.ac = lshr i64 1152921504606846975, %i.ab
  %i.ad = add nuw nsw i64 %0, %i.ac
  %i.ae = and i64 %i.ad, %notmask.i27.i90
  br label %sz_s2u_compute.exit29.i91

sz_s2u_compute.exit29.i91:                        ; preds = %bb.f, %bb.e
  %.0.i28.i92 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.af = icmp ult i64 %.0.i28.i92, %0
  br i1 %i.af, label %imalloc.exit, label %.thread

.thread:                                          ; preds = %sz_s2u.exit25.i101, %sz_s2u_compute.exit29.i91, %bb.d
  %.0.i95 = phi i64 [ %.0.i28.i92, %sz_s2u_compute.exit29.i91 ], [ 16384, %bb.d ], [ 16384, %sz_s2u.exit25.i101 ] ; 2 uses
  %i.ag = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
  %i.ah = xor i64 %.0.i95, -1
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  %..0.i96 = select i1 %i.ai, i64 0, i64 %.0.i95
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread, %sz_s2u.exit25.i101
  %.018.i97 = phi i64 [ %..0.i96, %.thread ], [ %.0.i24.i102, %sz_s2u.exit25.i101 ] ; 5 uses
  %i.aj = add nsw i64 %.018.i97, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.aj, -8070450532247928832
  br i1 %spec.select.i.i, label %imalloc.exit, label %imalloc_no_sample.exit69

imalloc_no_sample.exit69:                         ; preds = %aligned_usize_get.exit.i
  %i.ak = icmp samesign ult i64 %.018.i97, 14337
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i76254, i64 864
  %i.am = tail call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %.0.i76254, ptr noundef null, i64 noundef %.018.i97, i64 noundef 4096, i1 noundef zeroext false, i1 noundef zeroext %i.ak, ptr noundef nonnull %i.al) #21 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %imalloc.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %imalloc_no_sample.exit69
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i8 1, ptr %1, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i76254, i64 832 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !112
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i76254, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !113
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i76254, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.as, ptr %i.at, align 8, !tbaa !114
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i76254, i64 840
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.au, ptr %i.av, align 8, !tbaa !115
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %i.ax = add i64 %i.aw, %.018.i97
  store i64 %i.ax, ptr %i.ao, align 8, !tbaa !23
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !23
  %i.az = sub i64 %i.ay, %i.aw
  %i.ba = icmp ult i64 %.018.i97, %i.az
  br i1 %i.ba, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i76254, ptr noundef nonnull %1) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %imalloc.exit

bb.j:                                             ; preds = %tsd_fetch_impl.exit
  %i.bb = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.bd = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bd, label %imalloc_init_check.exit, label %bb.l, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.k
  %i.be = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.be, align 4, !tbaa !3
  br label %imalloc.exit

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bf = load i8, ptr @duckdb_je_opt_zero, align 1, !range !96
  %i.bg = trunc nuw i8 %i.bf to i1                ; 2 uses
  %i.bh = icmp ult i64 %0, 14337
  br i1 %i.bh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bi = add nuw nsw i64 %0, 4095
  %i.bj = and i64 %i.bi, 28672                    ; 4 uses
  %i.bk = icmp samesign ult i64 %i.bj, 4097
  br i1 %i.bk, label %bb.n, label %sz_s2u_compute.exit.i87, !prof !9

bb.n:                                             ; preds = %bb.m
  %i.bl = lshr exact i64 %i.bj, 3
  %i.bm = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !23
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i87:                          ; preds = %bb.m
  %i.br = shl nuw nsw i64 %i.bj, 1
  %i.bs = add nsw i64 %i.br, -1
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bs, i1 true) ; 2 uses
  %notmask.i.i86 = ashr exact i64 -1152921504606846976, %i.bt
  %i.bu = lshr i64 1152921504606846975, %i.bt
  %i.bv = add nuw nsw i64 %i.bj, %i.bu
  %i.bw = and i64 %i.bv, %notmask.i.i86
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i87, %bb.n
  %.0.i24.i88 = phi i64 [ %i.bq, %bb.n ], [ %i.bw, %sz_s2u_compute.exit.i87 ] ; 2 uses
  %i.bx = icmp ult i64 %.0.i24.i88, 16384
  br i1 %i.bx, label %aligned_usize_get.exit.i13, label %.thread221

bb.o:                                             ; preds = %bb.l
  %i.by = icmp ult i64 %0, 16385
  br i1 %i.by, label %.thread221, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.bz, label %sz_s2u_compute.exit29.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.ca = shl nuw i64 %0, 1
  %i.cb = add i64 %i.ca, -1
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cb, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cc
  %i.cd = lshr i64 1152921504606846975, %i.cc
  %i.ce = add nuw nsw i64 %0, %i.cd
  %i.cf = and i64 %i.ce, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.q, %bb.p
  %.0.i28.i = phi i64 [ %i.cf, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.cg = icmp ult i64 %.0.i28.i, %0
  br i1 %i.cg, label %aligned_usize_get.exit.i13.thread, label %.thread221

.thread221:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.o
  %.0.i85 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.o ], [ 16384, %sz_s2u.exit25.i ] ; 2 uses
  %i.ch = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
  %i.ci = xor i64 %.0.i85, -1
  %i.cj = icmp ugt i64 %i.ch, %i.ci
  %..0.i = select i1 %i.cj, i64 0, i64 %.0.i85
  br label %aligned_usize_get.exit.i13

aligned_usize_get.exit.i13:                       ; preds = %.thread221, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread221 ], [ %.0.i24.i88, %sz_s2u.exit25.i ] ; 6 uses
  %i.ck = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i12 = icmp ult i64 %i.ck, -8070450532247928832
  br i1 %spec.select.i.i12, label %aligned_usize_get.exit.i13.thread, label %bb.r

bb.r:                                             ; preds = %aligned_usize_get.exit.i13
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = icmp sgt i8 %i.cm, 0
  br i1 %i.cn, label %bb.t, label %bb.s, !prof !118

bb.s:                                             ; preds = %bb.r
  %i.co = load i8, ptr %i.e, align 1, !tbaa !95, !range !96, !noundef !97
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 864
  %spec.select = select i1 %i.cp, ptr %i.cq, ptr null
  br label %imalloc_no_sample.exit

bb.t:                                             ; preds = %bb.r
  %i.cr = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %arena_get.exit124, label %imalloc_no_sample.exit, !prof !7

arena_get.exit124:                                ; preds = %bb.t
  %i.ct = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.u, label %imalloc_no_sample.exit, !prof !8

bb.u:                                             ; preds = %arena_get.exit124
  %i.cv = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  %.not.i.i.not = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i13.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.s, %bb.u, %bb.t, %arena_get.exit124
  %.0.i.i29231.ph = phi ptr [ null, %bb.t ], [ null, %arena_get.exit124 ], [ %spec.select, %bb.s ], [ null, %bb.u ]
  %.1207.ph = phi ptr [ %i.cr, %bb.t ], [ %i.ct, %arena_get.exit124 ], [ null, %bb.s ], [ null, %bb.u ]
  %.ph = icmp samesign ult i64 %.018.i, 14337
  %i.cw = tail call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1207.ph, i64 noundef %.018.i, i64 noundef 4096, i1 noundef zeroext %i.bg, i1 noundef zeroext %.ph, ptr noundef %.0.i.i29231.ph) #21 ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %aligned_usize_get.exit.i13.thread, label %bb.v, !prof !123

bb.v:                                             ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 832 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !112
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.da, ptr %i.db, align 8, !tbaa !113
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !114
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 840
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.de, ptr %i.df, align 8, !tbaa !115
  %i.dg = load i64, ptr %i.cy, align 8, !tbaa !23 ; 2 uses
  %i.dh = add i64 %i.dg, %.018.i
  store i64 %i.dh, ptr %i.cy, align 8, !tbaa !23
  %i.di = load i64, ptr %i.dc, align 8, !tbaa !23
  %i.dj = sub i64 %i.di, %i.dg
  %i.dk = icmp ult i64 %.018.i, %i.dj
  br i1 %i.dk, label %bb.x, label %bb.w, !prof !9

bb.w:                                             ; preds = %bb.v
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i17 = xor i1 %i.bg, true
  %i.dl = load i8, ptr @duckdb_je_opt_junk_alloc, align 1, !range !96
  %i.dm = trunc nuw i8 %i.dl to i1
  %or.cond45.i18 = select i1 %.not.i17, i1 %i.dm, i1 false, !prof !118
  br i1 %or.cond45.i18, label %bb.y, label %aligned_usize_get.exit.i13.thread, !prof !118

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cw, i8 -91, i64 %.018.i, i1 false)
  br label %aligned_usize_get.exit.i13.thread

aligned_usize_get.exit.i13.thread:                ; preds = %bb.u, %sz_s2u_compute.exit29.i, %aligned_usize_get.exit.i13, %imalloc_no_sample.exit, %bb.x, %bb.y
  %.0215.ph = phi ptr [ %i.cw, %bb.y ], [ null, %sz_s2u_compute.exit29.i ], [ null, %aligned_usize_get.exit.i13 ], [ null, %imalloc_no_sample.exit ], [ %i.cw, %bb.x ], [ null, %bb.u ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %0, ptr %i.a, align 16, !tbaa !23
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !23
  %i.dn = ptrtoint ptr %.0215.ph to i64
  call void @duckdb_je_hook_invoke_alloc(i32 noundef 5, ptr noundef %.0215.ph, i64 noundef %i.dn, ptr noundef nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %sz_s2u_compute.exit29.i91, %aligned_usize_get.exit.i, %imalloc_no_sample.exit69, %bb.i, %imalloc_init_check.exit, %aligned_usize_get.exit.i13.thread
  %.0215244 = phi ptr [ %.0215.ph, %aligned_usize_get.exit.i13.thread ], [ null, %imalloc_init_check.exit ], [ null, %imalloc_no_sample.exit69 ], [ null, %aligned_usize_get.exit.i ], [ %i.am, %bb.i ], [ null, %sz_s2u_compute.exit29.i91 ]
  ret ptr %.0215244
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @duckdb_je_mallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %mallocx_arena_get.exit, label %bb.b, !prof !9

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
  ], !prof !141

bb.c:                                             ; preds = %bb.b
  br label %mallocx_tcache_get.exit

bb.d:                                             ; preds = %bb.b
  %i.l = lshr exact i32 %i.k, 8
  %i.m = add nsw i32 %i.l, -2
  br label %mallocx_tcache_get.exit

mallocx_tcache_get.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  %.0.i10 = phi i32 [ %i.m, %bb.d ], [ -1, %bb.c ], [ -2, %bb.b ] ; 2 uses
  %.not.i = icmp ult i32 %1, 1048576
  br i1 %.not.i, label %mallocx_arena_get.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %mallocx_tcache_get.exit
  %i.n = lshr i32 %1, 20
  %i.o = add nsw i32 %i.n, -1
  br label %mallocx_arena_get.exit

mallocx_arena_get.exit:                           ; preds = %bb.e, %mallocx_tcache_get.exit, %bb.a
  %.sroa.60.0 = phi i32 [ -1, %bb.a ], [ %i.o, %bb.e ], [ -1, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.54166.0 = phi i32 [ -2, %bb.a ], [ %.0.i10, %bb.e ], [ %.0.i10, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.42.0 = phi i8 [ 0, %bb.a ], [ %i.j, %bb.e ], [ %i.j, %mallocx_tcache_get.exit ] ; 2 uses
  %.sroa.32.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.e ], [ %i.g, %mallocx_tcache_get.exit ] ; 14 uses
  %i.p = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 824
  %i.r = load i8, ptr %i.q, align 8, !tbaa !10
  %.not.i84 = icmp eq i8 %i.r, 0
  br i1 %.not.i84, label %compute_size_with_overflow.exit37, label %tsd_fetch_impl.exit, !prof !9

tsd_fetch_impl.exit:                              ; preds = %mallocx_arena_get.exit
  %i.s = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.p, i1 noundef zeroext false) #21 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 824
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !10
  %i.t = icmp eq i8 %.pre, 0
  br i1 %i.t, label %compute_size_with_overflow.exit37, label %bb.ax, !prof !84

compute_size_with_overflow.exit37:                ; preds = %mallocx_arena_get.exit, %tsd_fetch_impl.exit
  %.0.i85329 = phi ptr [ %i.s, %tsd_fetch_impl.exit ], [ %i.p, %mallocx_arena_get.exit ] ; 17 uses
  %i.u = trunc nuw i8 %.sroa.42.0 to i1           ; 6 uses
  %i.v = icmp eq i64 %.sroa.32.0, 0               ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.j

bb.f:                                             ; preds = %compute_size_with_overflow.exit37
  %i.w = icmp ult i64 %0, 4097
  br i1 %i.w, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.x = add nuw nsw i64 %0, 7
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = zext i8 %i.aa to i32
  br label %sz_size2index.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ac, label %imalloc.exit, label %bb.i, !prof !7

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
  %reass.sub310 = sub nsw i32 %i.an, %i.ao
  %i.ap = add nsw i32 %reass.sub310, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.i, %bb.g
  %.0.i50.i = phi i32 [ %i.ab, %bb.g ], [ %i.ap, %bb.i ] ; 3 uses
  %i.aq = icmp samesign ugt i32 %.0.i50.i, 231
  br i1 %i.aq, label %imalloc.exit, label %aligned_usize_get.exit.i.thread231, !prof !85

aligned_usize_get.exit.i.thread231:               ; preds = %sz_size2index.exit.i
  %i.ar = zext nneg i32 %.0.i50.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23
  br label %bb.q

bb.j:                                             ; preds = %compute_size_with_overflow.exit37
  %i.au = icmp ult i64 %0, 14337
  %i.av = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i98 = and i1 %i.au, %i.av
  br i1 %or.cond.i98, label %bb.k, label %bb.m

end_hunk_4
begin_hunk_5_@duckdb_je_mallocx:bb.a
  %.0.i46 = phi ptr [ %i.fd, %sz_s2u.exit.i59 ], [ %i.cw, %ipallocztm_explicit_slab.exit83 ], [ %i.fj, %.critedge.i.i49 ], [ %.0.i24.i70.ph, %.thread247 ], [ %.132.i.i73, %bb.ag ], [ %i.ec, %bb.at ] ; 2 uses
  %i.fk = icmp eq ptr %.0.i46, null
  br i1 %i.fk, label %imalloc.exit, label %bb.au, !prof !145

bb.au:                                            ; preds = %imalloc_no_sample.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i85329, i64 832 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !112
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i85329, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !113
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i85329, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !114
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i85329, i64 840
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !115
  %i.ft = load i64, ptr %i.fl, align 8, !tbaa !23 ; 2 uses
  %i.fu = add i64 %i.ft, %.0222235
  store i64 %i.fu, ptr %i.fl, align 8, !tbaa !23
  %i.fv = load i64, ptr %i.fp, align 8, !tbaa !23
  %i.fw = sub i64 %i.fv, %i.ft
  %i.fx = icmp ult i64 %.0222235, %i.fw
  br i1 %i.fx, label %bb.aw, label %bb.av, !prof !9

bb.av:                                            ; preds = %bb.au
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i85329, ptr noundef nonnull %2) #21
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %imalloc.exit

bb.ax:                                            ; preds = %tsd_fetch_impl.exit
  %i.fy = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %compute_size_with_overflow.exit, label %bb.ay, !prof !9

bb.ay:                                            ; preds = %bb.ax
  %i.ga = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.ga, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.ay
  %i.gb = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.gb, align 4, !tbaa !3
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.ax, %bb.ay
  %i.gc = load i8, ptr @duckdb_je_opt_zero, align 1, !range !96
  %i.gd = or i8 %i.gc, %.sroa.42.0
  %.0.i.i18 = icmp ne i8 %i.gd, 0                 ; 7 uses
  %i.ge = icmp eq i64 %.sroa.32.0, 0              ; 2 uses
  br i1 %i.ge, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %compute_size_with_overflow.exit
  %i.gf = icmp ult i64 %0, 4097
  br i1 %i.gf, label %bb.ba, label %bb.bb, !prof !9

bb.ba:                                            ; preds = %bb.az
  %i.gg = add nuw nsw i64 %0, 7
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !10
  %i.gk = zext i8 %i.gj to i32
  br label %sz_size2index.exit.i28

bb.bb:                                            ; preds = %bb.az
  %i.gl = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.gl, label %aligned_usize_get.exit.i22.thread, label %bb.bc, !prof !7

bb.bc:                                            ; preds = %bb.bb
  %i.gm = shl nuw i64 %0, 1
  %i.gn = add i64 %i.gm, -1
  %i.go = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gn, i1 true) ; 3 uses
  %i.gp = trunc nuw nsw i64 %i.go to i32
  %i.gq = sub nuw nsw i64 60, %i.go
  %i.gr = ashr exact i64 -1152921504606846976, %i.go
  %i.gs = add nsw i64 %0, -1
  %i.gt = and i64 %i.gr, %i.gs
  %i.gu = lshr i64 %i.gt, %i.gq
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = and i32 %i.gv, 3
  %i.gx = shl nuw nsw i32 %i.gp, 2
  %reass.sub = sub nsw i32 %i.gw, %i.gx
  %i.gy = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.bc, %bb.ba
  %.0.i50.i29 = phi i32 [ %i.gk, %bb.ba ], [ %i.gy, %bb.bc ] ; 3 uses
  %i.gz = icmp samesign ugt i32 %.0.i50.i29, 231
  br i1 %i.gz, label %aligned_usize_get.exit.i22.thread, label %aligned_usize_get.exit.i22.thread263, !prof !85

aligned_usize_get.exit.i22.thread263:             ; preds = %sz_size2index.exit.i28
  %i.ha = zext nneg i32 %.0.i50.i29 to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !23
  br label %bb.bk

bb.bd:                                            ; preds = %compute_size_with_overflow.exit
  %i.hd = icmp ult i64 %0, 14337
  %i.he = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i91 = and i1 %i.hd, %i.he
  br i1 %or.cond.i91, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.hf = add nsw i64 %0, -1
  %i.hg = add nsw i64 %i.hf, %.sroa.32.0
  %i.hh = sub nsw i64 0, %.sroa.32.0
  %i.hi = and i64 %i.hg, %i.hh                    ; 4 uses
  %i.hj = icmp samesign ult i64 %i.hi, 4097
  br i1 %i.hj, label %bb.bf, label %sz_s2u_compute.exit.i96, !prof !9

bb.bf:                                            ; preds = %bb.be
  %i.hk = add nuw nsw i64 %i.hi, 6
  %i.hl = lshr i64 %i.hk, 3
  %i.hm = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !10
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !23
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i96:                          ; preds = %bb.be
  %i.hr = shl nuw nsw i64 %i.hi, 1
  %i.hs = add nsw i64 %i.hr, -1
  %i.ht = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hs, i1 true) ; 2 uses
  %notmask.i.i95 = ashr exact i64 -1152921504606846976, %i.ht
  %i.hu = lshr i64 1152921504606846975, %i.ht
  %i.hv = add nuw nsw i64 %i.hi, %i.hu
  %i.hw = and i64 %i.hv, %notmask.i.i95
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i96, %bb.bf
  %.0.i24.i97 = phi i64 [ %i.hq, %bb.bf ], [ %i.hw, %sz_s2u_compute.exit.i96 ] ; 2 uses
  %i.hx = icmp ult i64 %.0.i24.i97, 16384
  br i1 %i.hx, label %aligned_usize_get.exit.i22, label %.thread259

bb.bg:                                            ; preds = %bb.bd
  %i.hy = icmp ugt i64 %.sroa.32.0, 8070450532247928832
  br i1 %i.hy, label %aligned_usize_get.exit.i22.thread, label %bb.bh, !prof !121

bb.bh:                                            ; preds = %bb.bg
  %i.hz = icmp ult i64 %0, 16385
  br i1 %i.hz, label %.thread259, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ia = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ia, label %sz_s2u_compute.exit29.i, label %bb.bj, !prof !7

bb.bj:                                            ; preds = %bb.bi
  %i.ib = shl nuw i64 %0, 1
  %i.ic = add i64 %i.ib, -1
  %i.id = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ic, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.id
  %i.ie = lshr i64 1152921504606846975, %i.id
  %i.if = add nuw nsw i64 %0, %i.ie
  %i.ig = and i64 %i.if, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.bj, %bb.bi
  %.0.i28.i = phi i64 [ %i.ig, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %i.ih = icmp ult i64 %.0.i28.i, %0
  br i1 %i.ih, label %aligned_usize_get.exit.i22.thread, label %.thread259

.thread259:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.bh
  %.0.i94 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.bh ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ii = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
  %i.ij = add nuw nsw i64 %.sroa.32.0, 4094
  %i.ik = and i64 %i.ij, 9223372036854771712
  %i.il = add nsw i64 %i.ik, -4096
  %i.im = add i64 %i.il, %.0.i94
  %i.in = add i64 %i.im, %i.ii
  %i.io = icmp ult i64 %i.in, %.0.i94
  %..0.i = select i1 %i.io, i64 0, i64 %.0.i94
  br label %aligned_usize_get.exit.i22

aligned_usize_get.exit.i22:                       ; preds = %.thread259, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread259 ], [ %.0.i24.i97, %sz_s2u.exit25.i ] ; 2 uses
  %i.ip = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i21 = icmp ult i64 %i.ip, -8070450532247928832
  br i1 %spec.select.i.i21, label %aligned_usize_get.exit.i22.thread, label %bb.bk

bb.bk:                                            ; preds = %aligned_usize_get.exit.i22.thread263, %aligned_usize_get.exit.i22
  %.0218268 = phi i32 [ %.0.i50.i29, %aligned_usize_get.exit.i22.thread263 ], [ 0, %aligned_usize_get.exit.i22 ] ; 8 uses
  %.0219267 = phi i64 [ %i.hc, %aligned_usize_get.exit.i22.thread263 ], [ %.018.i, %aligned_usize_get.exit.i22 ] ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !10
  %i.is = icmp sgt i8 %i.ir, 0
  %i.it = icmp ult i64 %.0219267, 14337           ; 3 uses
  br i1 %i.is, label %tcache_get_from_ind.exit.i.thread, label %bb.bl, !prof !118

bb.bl:                                            ; preds = %bb.bk
  switch i32 %.sroa.54166.0, label %bb.bn [
    i32 -2, label %bb.bm
    i32 -1, label %tcache_get_from_ind.exit.i
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.iu = load i8, ptr %i.s, align 1, !tbaa !95, !range !96, !noundef !97
  %i.iv = trunc nuw i8 %i.iu to i1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.s, i64 864
  %spec.select = select i1 %i.iv, ptr %i.iw, ptr null
  br label %tcache_get_from_ind.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.ix = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !142
  %i.iy = zext nneg i32 %.sroa.54166.0 to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iy ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !10 ; 2 uses
  %magicptr.i89 = ptrtoint ptr %i.ja to i64
  switch i64 %magicptr.i89, label %tcache_get_from_ind.exit.i [
    i64 0, label %bb.bo
    i64 1, label %bb.bp
  ], !prof !144

bb.bo:                                            ; preds = %bb.bn
  tail call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.178, i32 noundef range(i32 0, -2) %.sroa.54166.0) #21
  tail call void @abort() #22
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.jb = tail call ptr @duckdb_je_tcache_create_explicit(ptr noundef nonnull %i.s) #21 ; 2 uses
  store ptr %i.jb, ptr %i.iz, align 8, !tbaa !10
  br label %tcache_get_from_ind.exit.i

tcache_get_from_ind.exit.i:                       ; preds = %bb.bp, %bb.bn, %bb.bm, %bb.bl
  %.0.i.i38 = phi ptr [ %spec.select, %bb.bm ], [ null, %bb.bl ], [ %i.ja, %bb.bn ], [ %i.jb, %bb.bp ] ; 2 uses
  %i.jc = icmp eq i32 %.sroa.60.0, -1
  br i1 %i.jc, label %arena_get.exit133.thread, label %tcache_get_from_ind.exit.i.thread

tcache_get_from_ind.exit.i.thread:                ; preds = %bb.bk, %tcache_get_from_ind.exit.i
  %.0.i.i38282 = phi ptr [ %.0.i.i38, %tcache_get_from_ind.exit.i ], [ null, %bb.bk ] ; 3 uses
  %.sroa.60.2276279 = phi i32 [ %.sroa.60.0, %tcache_get_from_ind.exit.i ], [ 0, %bb.bk ] ; 3 uses
  %i.jd = zext nneg i32 %.sroa.60.2276279 to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.jd
  %i.jf = load atomic ptr, ptr %i.je acquire, align 8 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %arena_get.exit133, label %arena_get.exit133.thread, !prof !7

arena_get.exit133:                                ; preds = %tcache_get_from_ind.exit.i.thread
  %i.jh = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %i.s, i32 noundef %.sroa.60.2276279, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.bq, label %arena_get.exit133.thread, !prof !8

bb.bq:                                            ; preds = %arena_get.exit133
  %i.jj = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  %.not.i.i = icmp ult i32 %.sroa.60.2276279, %i.jj
  br i1 %.not.i.i, label %arena_get.exit133.thread, label %aligned_usize_get.exit.i22.thread

arena_get.exit133.thread:                         ; preds = %bb.bq, %tcache_get_from_ind.exit.i.thread, %tcache_get_from_ind.exit.i, %arena_get.exit133
  %.0.i.i38280.ph = phi ptr [ %.0.i.i38282, %tcache_get_from_ind.exit.i.thread ], [ %.0.i.i38282, %arena_get.exit133 ], [ %.0.i.i38, %tcache_get_from_ind.exit.i ], [ %.0.i.i38282, %bb.bq ] ; 8 uses
  %.1216.ph = phi ptr [ %i.jf, %tcache_get_from_ind.exit.i.thread ], [ %i.jh, %arena_get.exit133 ], [ null, %tcache_get_from_ind.exit.i ], [ null, %bb.bq ] ; 4 uses
  br i1 %i.ge, label %iallocztm_explicit_slab.exit.i, label %ipallocztm_explicit_slab.exit, !prof !9

ipallocztm_explicit_slab.exit:                    ; preds = %arena_get.exit133.thread
  %i.jk = tail call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %i.s, ptr noundef %.1216.ph, i64 noundef %.0219267, i64 noundef %.sroa.32.0, i1 noundef zeroext %.0.i.i18, i1 noundef zeroext %i.it, ptr noundef %.0.i.i38280.ph) #21
  br label %imalloc_no_sample.exit

iallocztm_explicit_slab.exit.i:                   ; preds = %arena_get.exit133.thread
  %.not.i22.i = icmp eq ptr %.0.i.i38280.ph, null
  br i1 %.not.i22.i, label %.critedge.i.i, label %bb.br, !prof !7

bb.br:                                            ; preds = %iallocztm_explicit_slab.exit.i
  br i1 %i.it, label %bb.bs, label %bb.cb, !prof !9

bb.bs:                                            ; preds = %bb.br
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i.i38280.ph, i64 8
  %i.jm = zext nneg i32 %.0218268 to i64          ; 2 uses
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.jm ; 9 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !86 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !92 ; 2 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jt = load i16, ptr %i.js, align 8, !tbaa !93 ; 2 uses
  %i.ju = trunc i64 %i.jq to i16
  %.not.i26.i = icmp eq i16 %i.jt, %i.ju
  br i1 %.not.i26.i, label %bb.bu, label %bb.bt, !prof !7

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.jr, ptr %i.jn, align 8, !tbaa !86
  br label %cache_bin_alloc_impl.exit.i.thread

bb.bu:                                            ; preds = %bb.bs
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jn, i64 20
  %i.jw = load i16, ptr %i.jv, align 4, !tbaa !94
  %.not21.i.i = icmp eq i16 %i.jw, %i.jt
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.bv, !prof !7

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.jr, ptr %i.jn, align 8, !tbaa !86
  %i.jx = ptrtoint ptr %i.jr to i64
  %i.jy = trunc i64 %i.jx to i16
  store i16 %i.jy, ptr %i.js, align 8, !tbaa !93
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.jz = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.s, ptr noundef %.1216.ph) ; 3 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %.thread292, label %bb.bw, !prof !7

bb.bw:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val115 = load ptr, ptr %i.jn, align 8, !tbaa !86
  %i.kb = icmp eq ptr %.val115, @duckdb_je_disabled_bin
  br i1 %i.kb, label %bb.bx, label %bb.by, !prof !7

bb.bx:                                            ; preds = %bb.bw
  %i.kc = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.s, ptr noundef nonnull %i.jz, i64 noundef %0, i32 noundef %.0218268, i1 noundef zeroext %.0.i.i18, i1 noundef zeroext true) #21
  br label %.thread292

.thread292:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.bx
  %.0.i24.i.ph = phi ptr [ %i.kc, %bb.bx ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %imalloc_no_sample.exit

bb.by:                                            ; preds = %bb.bw
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.s, ptr noundef nonnull %.0.i.i38280.ph, ptr noundef nonnull %i.jn, i32 noundef %.0218268, i1 noundef zeroext true) #21
  %i.kd = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef nonnull %i.s, ptr noundef nonnull %i.jz, ptr noundef nonnull %.0.i.i38280.ph, ptr noundef nonnull %i.jn, i32 noundef %.0218268, ptr noundef nonnull %i.b) #21
  %i.ke = load i8, ptr %i.b, align 1, !tbaa !95, !range !96, !noundef !97
  %.not305 = icmp eq i8 %i.ke, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not305, label %aligned_usize_get.exit.i22.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.bv, %bb.bt, %bb.by
  %.132.i.i = phi ptr [ %i.kd, %bb.by ], [ %i.jp, %bb.bt ], [ %i.jp, %bb.bv ] ; 2 uses
  br i1 %.0.i.i18, label %bb.bz, label %bb.ca, !prof !7

bb.bz:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.jm
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.kg, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %cache_bin_alloc_impl.exit.i.thread
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !98
  %i.kj = add i64 %i.ki, 1
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !98
  br label %imalloc_no_sample.exit

bb.cb:                                            ; preds = %bb.br
  %i.kk = load ptr, ptr %.0.i.i38280.ph, align 8, !tbaa !99
  %i.kl = getelementptr i8, ptr %i.kk, i64 48
  %.val122 = load i32, ptr %i.kl, align 8, !tbaa !101
  %i.km = icmp ult i32 %.0218268, %.val122
  br i1 %i.km, label %bb.cc, label %.critedge.i.i, !prof !9

bb.cc:                                            ; preds = %bb.cb
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i.i38280.ph, i64 8
  %i.ko = zext nneg i32 %.0218268 to i64          ; 2 uses
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.kn, i64 %i.ko ; 7 uses
  %.val116 = load ptr, ptr %i.kp, align 8, !tbaa !86 ; 4 uses
  %.not304 = icmp eq ptr %.val116, @duckdb_je_disabled_bin
  br i1 %.not304, label %.critedge.i.i, label %bb.cd, !prof !7

bb.cd:                                            ; preds = %bb.cc
  %i.kq = load ptr, ptr %.val116, align 8, !tbaa !92 ; 2 uses
  %i.kr = ptrtoint ptr %.val116 to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %.val116, i64 8 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %i.ku = load i16, ptr %i.kt, align 8, !tbaa !93 ; 2 uses
  %i.kv = trunc i64 %i.kr to i16
  %.not.i28.i = icmp eq i16 %i.ku, %i.kv
  br i1 %.not.i28.i, label %bb.cf, label %bb.ce, !prof !7

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.ks, ptr %i.kp, align 8, !tbaa !86
  br label %bb.cl

bb.cf:                                            ; preds = %bb.cd
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 20
  %i.kx = load i16, ptr %i.kw, align 4, !tbaa !94
  %.not21.i30.i = icmp eq i16 %i.kx, %i.ku
  br i1 %.not21.i30.i, label %cache_bin_alloc_impl.exit31.i, label %bb.cg, !prof !7

bb.cg:                                            ; preds = %bb.cf
  store ptr %i.ks, ptr %i.kp, align 8, !tbaa !86
  %i.ky = ptrtoint ptr %i.ks to i64
  %i.kz = trunc i64 %i.ky to i16
  store i16 %i.kz, ptr %i.kt, align 8, !tbaa !93
  br label %bb.cl

cache_bin_alloc_impl.exit31.i:                    ; preds = %bb.cf
  %i.la = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.s, ptr noundef %.1216.ph) ; 2 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %aligned_usize_get.exit.i22.thread, label %bb.ch, !prof !7

bb.ch:                                            ; preds = %cache_bin_alloc_impl.exit31.i
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.s, ptr noundef nonnull %.0.i.i38280.ph, ptr noundef nonnull %i.kp, i32 noundef %.0218268, i1 noundef zeroext false) #21
  %i.lc = icmp samesign ult i64 %0, 4097
  br i1 %i.lc, label %bb.ci, label %bb.cj, !prof !9

bb.ci:                                            ; preds = %bb.ch
  %i.ld = add nuw nsw i64 %0, 7
  %i.le = lshr i64 %i.ld, 3
  %i.lf = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !10
  %i.lh = zext i8 %i.lg to i64
end_hunk_5
begin_hunk_6_@duckdb_je_realloc:bb.a

cache_bin_alloc_impl.exit.i69.thread:             ; preds = %bb.l, %bb.j, %bb.o
  %.132.i.i77 = phi ptr [ %i.bf, %bb.o ], [ %i.ar, %bb.j ], [ %i.ar, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !98
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !98
  br label %imalloc_no_sample.exit82

bb.p:                                             ; preds = %iallocztm_explicit_slab.exit.i51
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.bl = getelementptr i8, ptr %i.bk, i64 48
  %.val123 = load i32, ptr %i.bl, align 8, !tbaa !101
  %i.bm = icmp ult i32 %.0.i50.i, %.val123
  br i1 %i.bm, label %bb.q, label %.critedge.i.i53, !prof !9

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i89301, i64 872
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.aj ; 7 uses
  %.val118 = load ptr, ptr %i.bo, align 8, !tbaa !86 ; 4 uses
  %.not282 = icmp eq ptr %.val118, @duckdb_je_disabled_bin
  br i1 %.not282, label %.critedge.i.i53, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %.val118, align 8, !tbaa !92
  %i.bq = ptrtoint ptr %.val118 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.val118, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %i.bu = trunc i64 %i.bq to i16
  %.not.i28.i57 = icmp eq i16 %i.bt, %i.bu
  br i1 %.not.i28.i57, label %bb.t, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !86
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !94
  %.not21.i30.i67 = icmp eq i16 %i.bw, %i.bt
  br i1 %.not21.i30.i67, label %cache_bin_alloc_impl.exit31.i58, label %bb.u, !prof !7

bb.u:                                             ; preds = %bb.t
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !86
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = trunc i64 %i.bx to i16
  store i16 %i.by, ptr %i.bs, align 8, !tbaa !93
  br label %bb.x

cache_bin_alloc_impl.exit31.i58:                  ; preds = %bb.t
  %i.bz = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i89301, ptr noundef null) ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %aligned_usize_get.exit.i.thread, label %bb.v, !prof !7

bb.v:                                             ; preds = %cache_bin_alloc_impl.exit31.i58
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i89301, ptr noundef nonnull %i.an, ptr noundef nonnull %i.bo, i32 noundef %.0.i50.i, i1 noundef zeroext false) #21
  br i1 %i.o, label %bb.w, label %sz_s2u_compute.exit.i61, !prof !9

bb.w:                                             ; preds = %bb.v
  %i.cb = add nuw nsw i64 %1, 7
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !10
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !23
  br label %sz_s2u.exit.i63

sz_s2u_compute.exit.i61:                          ; preds = %bb.v
  %i.ci = shl nuw i64 %1, 1
  %i.cj = add i64 %i.ci, -1
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cj, i1 true) ; 2 uses
  %notmask.i.i60 = ashr exact i64 -1152921504606846976, %i.ck
  %i.cl = lshr i64 1152921504606846975, %i.ck
  %i.cm = add nuw nsw i64 %1, %i.cl
  %i.cn = and i64 %i.cm, %notmask.i.i60
  br label %sz_s2u.exit.i63

sz_s2u.exit.i63:                                  ; preds = %sz_s2u_compute.exit.i61, %bb.w
  %.0.i32.i64 = phi i64 [ %i.ch, %bb.w ], [ %i.cn, %sz_s2u_compute.exit.i61 ]
  %i.co = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %.0.i89301, ptr noundef nonnull %i.bz, i64 noundef %.0.i32.i64, i1 noundef zeroext false) #21
  br label %imalloc_no_sample.exit82

bb.x:                                             ; preds = %bb.u, %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !98
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !98
  br label %imalloc_no_sample.exit82

.critedge.i.i53:                                  ; preds = %bb.q, %bb.p
  %i.cs = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %.0.i89301, ptr noundef null, i64 noundef %1, i32 noundef %.0.i50.i, i1 noundef zeroext false, i1 noundef zeroext false) #21
  br label %imalloc_no_sample.exit82

imalloc_no_sample.exit82:                         ; preds = %.critedge.i.i53, %.thread, %cache_bin_alloc_impl.exit.i69.thread, %bb.x, %sz_s2u.exit.i63
  %.0.i23.i55 = phi ptr [ %i.cs, %.critedge.i.i53 ], [ %.0.i24.i74.ph, %.thread ], [ %.132.i.i77, %cache_bin_alloc_impl.exit.i69.thread ], [ %i.bp, %bb.x ], [ %i.co, %sz_s2u.exit.i63 ] ; 2 uses
  %i.ct = icmp eq ptr %.0.i23.i55, null
  br i1 %i.ct, label %aligned_usize_get.exit.i.thread, label %bb.y, !prof !108

bb.y:                                             ; preds = %imalloc_no_sample.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i89301, i64 832 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !112
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i89301, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !113
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i89301, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !114
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i89301, i64 840
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.da, ptr %i.db, align 8, !tbaa !115
  %i.dc = load i64, ptr %i.cu, align 8, !tbaa !23 ; 2 uses
  %i.dd = add i64 %i.dc, %i.al
  store i64 %i.dd, ptr %i.cu, align 8, !tbaa !23
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !23
  %i.df = sub i64 %i.de, %i.dc
  %i.dg = icmp ult i64 %i.al, %i.df
  br i1 %i.dg, label %bb.aa, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i89301, ptr noundef nonnull %2) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %cache_bin_alloc_impl.exit31.i58, %bb.o, %bb.g, %sz_size2index.exit.i, %imalloc_no_sample.exit82
  %i.dh = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.dh, align 4, !tbaa !3
  br label %imalloc.exit

bb.ab:                                            ; preds = %tsd_fetch_impl.exit
  %i.di = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ad, label %bb.ac, !prof !9

bb.ac:                                            ; preds = %bb.ab
  %i.dk = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.dk, label %imalloc_init_check.exit, label %bb.ad, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.ac
  %i.dl = tail call ptr @__errno_location() #23
  store i32 12, ptr %i.dl, align 4, !tbaa !3
  br label %imalloc.exit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dm = load i8, ptr @duckdb_je_opt_zero, align 1, !range !96
  %i.dn = trunc nuw i8 %i.dm to i1                ; 6 uses
  %i.do = icmp ult i64 %1, 4097                   ; 2 uses
  br i1 %i.do, label %bb.ae, label %bb.af, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %i.dp = add nuw nsw i64 %1, 7
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !10
  %i.dt = zext i8 %i.ds to i32
  br label %sz_size2index.exit.i32

bb.af:                                            ; preds = %bb.ad
  %i.du = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.du, label %aligned_usize_get.exit.i26.thread, label %bb.ag, !prof !7

bb.ag:                                            ; preds = %bb.af
  %i.dv = shl nuw i64 %1, 1
  %i.dw = add i64 %i.dv, -1
  %i.dx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dw, i1 true) ; 3 uses
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = sub nuw nsw i64 60, %i.dx
  %i.ea = ashr exact i64 -1152921504606846976, %i.dx
  %i.eb = add nsw i64 %1, -1
  %i.ec = and i64 %i.ea, %i.eb
  %i.ed = lshr i64 %i.ec, %i.dz
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 3
  %i.eg = shl nuw nsw i32 %i.dy, 2
  %reass.sub = sub nsw i32 %i.ef, %i.eg
  %i.eh = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i32

sz_size2index.exit.i32:                           ; preds = %bb.ag, %bb.ae
  %.0.i50.i33 = phi i32 [ %i.dt, %bb.ae ], [ %i.eh, %bb.ag ] ; 8 uses
  %i.ei = icmp samesign ugt i32 %.0.i50.i33, 231
  br i1 %i.ei, label %aligned_usize_get.exit.i26.thread, label %bb.ah, !prof !150

bb.ah:                                            ; preds = %sz_size2index.exit.i32
  %i.ej = zext nneg i32 %.0.i50.i33 to i64        ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ej ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !23 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !10
  %i.eo = icmp sgt i8 %i.en, 0
  br i1 %i.eo, label %bb.aj, label %bb.ai, !prof !118

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load i8, ptr %i.m, align 1, !tbaa !95, !range !96, !noundef !97
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = getelementptr inbounds nuw i8, ptr %i.m, i64 864 ; 4 uses
  br i1 %i.eq, label %bb.al, label %iallocztm_explicit_slab.exit.i.thread

bb.aj:                                            ; preds = %bb.ah
  %i.es = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %arena_get.exit137, label %iallocztm_explicit_slab.exit.i.thread, !prof !7

arena_get.exit137:                                ; preds = %bb.aj
  %i.eu = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %i.m, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ak, label %iallocztm_explicit_slab.exit.i.thread, !prof !8

bb.ak:                                            ; preds = %arena_get.exit137
  %i.ew = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  %.not.i.i.not = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i26.thread, label %iallocztm_explicit_slab.exit.i.thread

iallocztm_explicit_slab.exit.i.thread:            ; preds = %bb.aj, %arena_get.exit137, %bb.ai, %bb.ak
  %.1221.ph.ph = phi ptr [ null, %bb.ak ], [ null, %bb.ai ], [ %i.eu, %arena_get.exit137 ], [ %i.es, %bb.aj ]
  %.ph306 = icmp ult i64 %i.el, 14337
  br label %.critedge.i.i

bb.al:                                            ; preds = %bb.ai
  %.ph = icmp ult i64 %i.el, 14337
  br i1 %.ph, label %bb.am, label %bb.av, !prof !9

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 872
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %i.ej ; 9 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !86 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !92 ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 8, !tbaa !93 ; 2 uses
  %i.ff = trunc i64 %i.fb to i16
  %.not.i26.i = icmp eq i16 %i.fe, %i.ff
  br i1 %.not.i26.i, label %bb.ao, label %bb.an, !prof !7

bb.an:                                            ; preds = %bb.am
  store ptr %i.fc, ptr %i.ey, align 8, !tbaa !86
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ao:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  %i.fh = load i16, ptr %i.fg, align 4, !tbaa !94
  %.not21.i.i = icmp eq i16 %i.fh, %i.fe
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.ap, !prof !7

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.fc, ptr %i.ey, align 8, !tbaa !86
  %i.fi = ptrtoint ptr %i.fc to i64
  %i.fj = trunc i64 %i.fi to i16
  store i16 %i.fj, ptr %i.fd, align 8, !tbaa !93
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.fk = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.m, ptr noundef null) ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %.thread269, label %bb.aq, !prof !7

bb.aq:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val119 = load ptr, ptr %i.ey, align 8, !tbaa !86
  %i.fm = icmp eq ptr %.val119, @duckdb_je_disabled_bin
  br i1 %i.fm, label %bb.ar, label %bb.as, !prof !7

bb.ar:                                            ; preds = %bb.aq
  %i.fn = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.m, ptr noundef nonnull %i.fk, i64 noundef %1, i32 noundef %.0.i50.i33, i1 noundef zeroext %i.dn, i1 noundef zeroext true) #21
  br label %.thread269

.thread269:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.ar
  %.0.i24.i.ph = phi ptr [ %i.fn, %bb.ar ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %imalloc_no_sample.exit

bb.as:                                            ; preds = %bb.aq
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.m, ptr noundef nonnull %i.er, ptr noundef nonnull %i.ey, i32 noundef %.0.i50.i33, i1 noundef zeroext true) #21
  %i.fo = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef nonnull %i.m, ptr noundef nonnull %i.fk, ptr noundef nonnull %i.er, ptr noundef nonnull %i.ey, i32 noundef %.0.i50.i33, ptr noundef nonnull %i.b) #21
  %i.fp = load i8, ptr %i.b, align 1, !tbaa !95, !range !96, !noundef !97
  %.not281 = icmp eq i8 %i.fp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not281, label %aligned_usize_get.exit.i26.thread, label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.ap, %bb.an, %bb.as
  %.132.i.i = phi ptr [ %i.fo, %bb.as ], [ %i.fa, %bb.an ], [ %i.fa, %bb.ap ] ; 2 uses
  br i1 %i.dn, label %bb.at, label %bb.au, !prof !7

bb.at:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.fq = load i64, ptr %i.ek, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.fq, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %cache_bin_alloc_impl.exit.i.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !98
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !98
  br label %imalloc_no_sample.exit

bb.av:                                            ; preds = %bb.al
  %i.fu = load ptr, ptr %i.er, align 8, !tbaa !99
  %i.fv = getelementptr i8, ptr %i.fu, i64 48
  %.val126 = load i32, ptr %i.fv, align 8, !tbaa !101
  %i.fw = icmp ult i32 %.0.i50.i33, %.val126
  br i1 %i.fw, label %bb.aw, label %.critedge.i.i, !prof !9

bb.aw:                                            ; preds = %bb.av
  %i.fx = getelementptr inbounds nuw i8, ptr %i.m, i64 872
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %i.ej ; 7 uses
  %.val120 = load ptr, ptr %i.fy, align 8, !tbaa !86 ; 4 uses
  %.not = icmp eq ptr %.val120, @duckdb_je_disabled_bin
  br i1 %.not, label %.critedge.i.i, label %bb.ax, !prof !7

bb.ax:                                            ; preds = %bb.aw
  %i.fz = load ptr, ptr %.val120, align 8, !tbaa !92 ; 2 uses
  %i.ga = ptrtoint ptr %.val120 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %.val120, i64 8 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 8, !tbaa !93 ; 2 uses
  %i.ge = trunc i64 %i.ga to i16
  %.not.i28.i = icmp eq i16 %i.gd, %i.ge
  br i1 %.not.i28.i, label %bb.az, label %bb.ay, !prof !7

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !86
  br label %bb.bd

bb.az:                                            ; preds = %bb.ax
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 20
  %i.gg = load i16, ptr %i.gf, align 4, !tbaa !94
  %.not21.i30.i = icmp eq i16 %i.gg, %i.gd
  br i1 %.not21.i30.i, label %cache_bin_alloc_impl.exit31.i, label %bb.ba, !prof !7

bb.ba:                                            ; preds = %bb.az
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !86
  %i.gh = ptrtoint ptr %i.gb to i64
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gc, align 8, !tbaa !93
  br label %bb.bd

cache_bin_alloc_impl.exit31.i:                    ; preds = %bb.az
  %i.gj = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.m, ptr noundef null) ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %aligned_usize_get.exit.i26.thread, label %bb.bb, !prof !7

bb.bb:                                            ; preds = %cache_bin_alloc_impl.exit31.i
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %i.m, ptr noundef nonnull %i.er, ptr noundef nonnull %i.fy, i32 noundef %.0.i50.i33, i1 noundef zeroext false) #21
  br i1 %i.do, label %bb.bc, label %sz_s2u_compute.exit.i, !prof !9

bb.bc:                                            ; preds = %bb.bb
  %i.gl = add nuw nsw i64 %1, 7
  %i.gm = lshr i64 %i.gl, 3
  %i.gn = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !10
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !23
  br label %sz_s2u.exit.i

sz_s2u_compute.exit.i:                            ; preds = %bb.bb
  %i.gs = shl nuw i64 %1, 1
  %i.gt = add i64 %i.gs, -1
  %i.gu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gt, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gu
  %i.gv = lshr i64 1152921504606846975, %i.gu
  %i.gw = add nuw nsw i64 %1, %i.gv
  %i.gx = and i64 %i.gw, %notmask.i.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %sz_s2u_compute.exit.i, %bb.bc
  %.0.i32.i = phi i64 [ %i.gr, %bb.bc ], [ %i.gx, %sz_s2u_compute.exit.i ]
  %i.gy = tail call ptr @duckdb_je_large_malloc(ptr noundef nonnull %i.m, ptr noundef nonnull %i.gj, i64 noundef %.0.i32.i, i1 noundef zeroext %i.dn) #21
  br label %imalloc_no_sample.exit

bb.bd:                                            ; preds = %bb.ay, %bb.ba
  br i1 %i.dn, label %bb.be, label %bb.bf, !prof !7

bb.be:                                            ; preds = %bb.bd
  %i.gz = load i64, ptr %i.ek, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fz, i8 0, i64 %i.gz, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !98
  %i.hc = add i64 %i.hb, 1
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !98
  br label %imalloc_no_sample.exit

.critedge.i.i:                                    ; preds = %iallocztm_explicit_slab.exit.i.thread, %bb.aw, %bb.av
  %.ph309 = phi i1 [ %.ph306, %iallocztm_explicit_slab.exit.i.thread ], [ false, %bb.aw ], [ false, %bb.av ]
  %.1221.ph308 = phi ptr [ %.1221.ph.ph, %iallocztm_explicit_slab.exit.i.thread ], [ null, %bb.aw ], [ null, %bb.av ]
  %i.hd = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef nonnull %i.m, ptr noundef %.1221.ph308, i64 noundef %1, i32 noundef %.0.i50.i33, i1 noundef zeroext %i.dn, i1 noundef zeroext %.ph309) #21
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %.critedge.i.i, %.thread269, %bb.au, %bb.bf, %sz_s2u.exit.i
  %.0.i44 = phi ptr [ %i.gy, %sz_s2u.exit.i ], [ %i.hd, %.critedge.i.i ], [ %.0.i24.i.ph, %.thread269 ], [ %.132.i.i, %bb.au ], [ %i.fz, %bb.bf ] ; 4 uses
end_hunk_6
begin_hunk_7_@duckdb_je_sdallocx_default:bb.a
  %i.hp = zext i16 %.val70 to i32
  %i.hq = load i32, ptr @duckdb_je_opt_lg_tcache_flush_large_div, align 4, !tbaa !3
  %i.hr = lshr i32 %i.hp, %i.hq
  call void @duckdb_je_tcache_bin_flush_large(ptr noundef nonnull %.0.i30, ptr noundef nonnull %.0.i105, ptr noundef nonnull %i.hg, i32 noundef %.0.i.i3595, i32 noundef %i.hr) #21
  %i.hs = load ptr, ptr %i.hg, align 8, !tbaa !86 ; 2 uses
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = load i16, ptr %i.hk, align 2, !tbaa !131
  %i.hv = trunc i64 %i.ht to i16
  %i.hw = icmp eq i16 %i.hu, %i.hv
  br i1 %i.hw, label %arena_sdalloc.exit, label %bb.ar, !prof !7

bb.ar:                                            ; preds = %cache_bin_dalloc_easy.exit12.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hs, i64 -8 ; 2 uses
  store ptr %i.hx, ptr %i.hg, align 8, !tbaa !86
  store ptr %0, ptr %i.hx, align 8, !tbaa !92
  br label %arena_sdalloc.exit

tsdn_rtree_ctx.exit52:                            ; preds = %bb.ap, %sz_size2index.exit.i.thread
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i30, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull %.0.i30, ptr noundef nonnull %i.hy, i64 noundef %i.ff)
  %i.hz = load ptr, ptr %6, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @duckdb_je_large_dalloc(ptr noundef nonnull %.0.i30, ptr noundef %i.hz) #21
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %tsdn_rtree_ctx.exit52, %cache_bin_dalloc_easy.exit12.i.i, %bb.ar, %cache_bin_dalloc_easy.exit12.i.i.thread, %bb.am, %cache_bin_dalloc_easy.exit18.i.thread, %bb.ao, %bb.an, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i8 0, ptr %3, align 8, !tbaa !109
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i30, i64 848 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !112
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i30, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !113
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i30, i64 32 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !114
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i30, i64 856
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !115
  %i.ii = load i64, ptr %i.ia, align 8, !tbaa !23 ; 2 uses
  %i.ij = add i64 %i.ii, %storemerge.i
  store i64 %i.ij, ptr %i.ia, align 8, !tbaa !23
  %i.ik = load i64, ptr %i.ie, align 8, !tbaa !23
  %i.il = sub i64 %i.ik, %i.ii
  %i.im = icmp ult i64 %storemerge.i, %i.il
  br i1 %i.im, label %te_event_advance.exit53, label %bb.as, !prof !9

bb.as:                                            ; preds = %arena_sdalloc.exit
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i30, ptr noundef nonnull %3) #21
  br label %te_event_advance.exit53

te_event_advance.exit53:                          ; preds = %arena_sdalloc.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.at

bb.at:                                            ; preds = %te_event_advance.exit53, %te_event_advance.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define range(i64 0, 8070450532247928833) i64 @duckdb_je_nallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %tsdn_fetch.exit

bb.c:                                             ; preds = %malloc_init.exit
  %i.f = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 824
  %i.h = load i8, ptr %i.g, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false) #21 ; 0 uses
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
  br i1 %i.o, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %0, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23
  br label %aligned_usize_get.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.w, label %malloc_init.exit.thread, label %bb.h, !prof !7

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
  br i1 %i.aj, label %bb.k, label %sz_s2u_compute.exit.i, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.ak = add nuw nsw i64 %i.ai, 6
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !23
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
  br i1 %i.ay, label %malloc_init.exit.thread, label %bb.m, !prof !121

bb.m:                                             ; preds = %bb.l
  %i.az = icmp ult i64 %0, 16385
  br i1 %i.az, label %.thread15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ba, label %sz_s2u_compute.exit29.i, label %bb.o, !prof !7

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
  %i.bi = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
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
  %spec.select = select i1 %i.bp, i64 0, i64 %storemerge.i, !prof !153
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %aligned_usize_get.exit, %.thread15, %sz_s2u_compute.exit29.i, %sz_s2u.exit25.i, %bb.l, %bb.g, %bb.b
  %.0 = phi i64 [ %spec.select, %aligned_usize_get.exit ], [ 0, %.thread15 ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %sz_s2u_compute.exit29.i ], [ %.0.i24.i, %sz_s2u.exit25.i ], [ 0, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_mallctl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i9 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @duckdb_je_ctl_byname(ptr noundef %.0.i9, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #21
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @duckdb_je_ctl_byname(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_mallctlnametomib(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i7 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @duckdb_je_ctl_nametomib(ptr noundef %.0.i7, ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @duckdb_je_ctl_nametomib(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @duckdb_je_mallctlbymib(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.c, label %malloc_init.exit.thread, label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %malloc_init.exit
  %i.g = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %malloc_init.exit, %bb.c
  %.0.i10 = phi ptr [ %i.g, %bb.c ], [ %i.d, %malloc_init.exit ]
  %i.h = tail call i32 @duckdb_je_ctl_bymib(ptr noundef %.0.i10, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #21
  br label %malloc_init.exit.thread

malloc_init.exit.thread:                          ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0 = phi i32 [ %i.h, %tsd_fetch_impl.exit ], [ 11, %bb.b ]
  ret i32 %.0
}

declare i32 @duckdb_je_ctl_bymib(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @duckdb_je_malloc_stats_print(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #21
  br label %tsdn_fetch.exit

tsdn_fetch.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.g = call zeroext i1 @duckdb_je_buf_writer_init(ptr noundef %.0.i, ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 65536) #21 ; 0 uses
  call void @duckdb_je_stats_print(ptr noundef nonnull @duckdb_je_buf_writer_cb, ptr noundef nonnull %3, ptr noundef %2) #21
  call void @duckdb_je_buf_writer_terminate(ptr noundef %.0.i, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare zeroext i1 @duckdb_je_buf_writer_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @duckdb_je_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_buf_writer_cb(ptr noundef, ptr noundef) #5

declare void @duckdb_je_buf_writer_terminate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @duckdb_je_malloc_usable_size(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %i.a = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #21
  br label %tsdn_fetch.exit.i

tsdn_fetch.exit.i:                                ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %je_malloc_usable_size_impl.exit, label %bb.d, !prof !7

tsdn_fetch.exit.i.thread:                         ; preds = %bb.a
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %je_malloc_usable_size_impl.exit, label %.thread, !prof !7

.thread:                                          ; preds = %tsdn_fetch.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  br label %bb.e

bb.d:                                             ; preds = %tsdn_fetch.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.i = icmp eq ptr %.0.i.i, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !84

bb.e:                                             ; preds = %.thread, %bb.d
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %1) #21
  br label %arena_salloc.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 440
  br label %arena_salloc.exit

arena_salloc.exit:                                ; preds = %bb.e, %bb.f
  %.0.i.i46 = phi ptr [ null, %bb.e ], [ %.0.i.i, %bb.f ]
  %.0.i.i2 = phi ptr [ %1, %bb.e ], [ %i.j, %bb.f ]
  %i.k = ptrtoint ptr %0 to i64
end_hunk_7
begin_hunk_8_@duckdb_je_batch_alloc:bb.a
  %i.af = add nsw i64 %i.ae, %i.l
  %i.ag = sub nsw i64 0, %i.l
  %i.ah = and i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp samesign ult i64 %i.ah, 4097
  br i1 %i.ai, label %bb.i, label %sz_s2u_compute.exit.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw nsw i64 %i.ah, 6
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !23
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
  br i1 %i.aw, label %aligned_usize_get.exit, label %.thread154

bb.j:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.l, 8070450532247928832
  br i1 %i.ax, label %.critedge, label %bb.k, !prof !121

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp ult i64 %2, 16385
  br i1 %i.ay, label %.thread154, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.az, label %sz_s2u_compute.exit29.i, label %bb.m, !prof !7

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
  br i1 %i.bg, label %.critedge, label %.thread154

.thread154:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.k
  %.0.i135 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bh = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !23
  %i.bi = add nuw i64 %i.k, 4094
  %i.bj = and i64 %i.bi, 9223372036854771712
  %i.bk = add nsw i64 %i.bj, -4096
  %i.bl = add i64 %i.bk, %.0.i135
  %i.bm = add i64 %i.bl, %i.bh
  %i.bn = icmp ult i64 %i.bm, %.0.i135
  %..0.i = select i1 %i.bn, i64 0, i64 %.0.i135
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread154, %sz_s2u.exit25.i, %bb.d, %bb.f
  %storemerge.i = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ %..0.i, %.thread154 ] ; 15 uses
  %i.bo = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.bo, -8070450532247928832
  br i1 %spec.select.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %aligned_usize_get.exit
  %i.bp = icmp samesign ult i64 %storemerge.i, 4097
  br i1 %i.bp, label %bb.o, label %sz_size2index_compute.exit, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.bq = add nuw nsw i64 %storemerge.i, 7
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10
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
  %.0.i126 = phi i32 [ %i.bu, %bb.o ], [ %i.ch, %sz_size2index_compute.exit ] ; 4 uses
  %i.ci = and i32 %3, 64
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = load i8, ptr @duckdb_je_opt_zero, align 1, !range !96
  %i.cl = trunc nuw i8 %i.ck to i1
  %.0.i124 = or i1 %i.cj, %i.cl                   ; 2 uses
  %i.cm = zext nneg i32 %.0.i126 to i64           ; 2 uses
  %i.cn = icmp samesign ugt i32 %.0.i126, 35      ; 2 uses
  br i1 %i.cn, label %bb.q, label %bb.p, !prof !7

bb.p:                                             ; preds = %sz_size2index.exit
  %i.co = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !154
  %i.cr = zext i32 %i.cq to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %sz_size2index.exit
  %.099 = phi i64 [ %i.cr, %bb.p ], [ 0, %sz_size2index.exit ] ; 2 uses
  %.not.i = icmp ult i32 %3, 1048576
  %i.cs = lshr i32 %3, 20
  %i.ct = add nsw i32 %i.cs, -1                   ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i133153, i64 144
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i133153, i64 256 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i133153, i64 864 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i133153, i64 296
  %i.da = and i32 %3, 1048320                     ; 2 uses
  %i.db = lshr exact i32 %i.da, 8
  %i.dc = add nsw i32 %i.db, -2                   ; 3 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i133153, i64 832 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i133153, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i133153, <4 x i64> <i64 832, i64 8, i64 16, i64 840>
  br label %bb.r

bb.r:                                             ; preds = %select.unfold, %bb.q
  %.0 = phi ptr [ null, %bb.q ], [ %.5, %select.unfold ] ; 3 uses
  %.095 = phi ptr [ null, %bb.q ], [ %.398, %select.unfold ] ; 9 uses
  %.094 = phi i64 [ 0, %bb.q ], [ %.6, %select.unfold ] ; 8 uses
  %i.di = icmp ult i64 %.094, %1
  br i1 %i.di, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dj = sub nuw i64 %1, %.094                   ; 6 uses
  %.not = icmp ult i64 %i.dj, %.099
  %or.cond = select i1 %i.cn, i1 true, i1 %.not, !prof !155
  br i1 %or.cond, label %bb.ae, label %bb.t, !prof !155

bb.t:                                             ; preds = %bb.s
  %i.dk = icmp eq ptr %.0, null
  br i1 %i.dk, label %bb.u, label %arena_get_from_ind.exit.thread169

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i, label %mallocx_arena_get.exit.thread, label %mallocx_arena_get.exit, !prof !9

mallocx_arena_get.exit:                           ; preds = %bb.u
  %i.dl = load atomic ptr, ptr %i.cv acquire, align 8 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %arena_get.exit, label %arena_get_from_ind.exit.thread169, !prof !7

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.dn = call ptr @duckdb_je_arena_init(ptr noundef nonnull %.0.i133153, i32 noundef %i.ct, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.v, label %arena_get_from_ind.exit.thread169, !prof !8

bb.v:                                             ; preds = %arena_get.exit
  %i.dp = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  %.not.i128 = icmp ult i32 %i.ct, %i.dp
  br i1 %.not.i128, label %mallocx_arena_get.exit.thread, label %.critedge

mallocx_arena_get.exit.thread:                    ; preds = %bb.v, %bb.u
  %i.dq = load i8, ptr %i.f, align 1, !tbaa !10
  %i.dr = icmp sgt i8 %i.dq, 0
  br i1 %i.dr, label %bb.w, label %bb.y, !prof !7

bb.w:                                             ; preds = %mallocx_arena_get.exit.thread
  %i.ds = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.x, label %arena_get_from_ind.exit.thread169, !prof !7

bb.x:                                             ; preds = %bb.w
  %i.du = call ptr @duckdb_je_arena_init(ptr noundef nonnull %.0.i133153, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11
  br label %arena_get_from_ind.exit

bb.y:                                             ; preds = %mallocx_arena_get.exit.thread
  %i.dv = load ptr, ptr %i.cw, align 8, !tbaa !32 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.z, label %arena_get_from_ind.exit.thread169, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.dx = call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %.0.i133153, i1 noundef zeroext false) ; 7 uses
  %i.dy = load i8, ptr %.0.i133153, align 1, !tbaa !95, !range !96, !noundef !97
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.aa, label %arena_get_from_ind.exit

bb.aa:                                            ; preds = %bb.z
  %i.ea = load ptr, ptr %i.cz, align 8, !tbaa !156 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.ea, null
  br i1 %.not30.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not31.i.i = icmp eq ptr %i.ea, %i.dx
  br i1 %.not31.i.i, label %arena_get_from_ind.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %.0.i133153, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy, ptr noundef %i.dx) #21
  br label %arena_get_from_ind.exit

bb.ad:                                            ; preds = %bb.aa
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %.0.i133153, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy, ptr noundef %i.dx) #21
  br label %arena_get_from_ind.exit

arena_get_from_ind.exit:                          ; preds = %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.ad
  %.1147 = phi ptr [ %i.dx, %bb.z ], [ %i.dx, %bb.ab ], [ %i.dx, %bb.ac ], [ %i.dx, %bb.ad ], [ %i.du, %bb.x ] ; 2 uses
  %.not196 = icmp eq ptr %.1147, null
  br i1 %.not196, label %select.unfold, label %arena_get_from_ind.exit.thread169

arena_get_from_ind.exit.thread169:                ; preds = %mallocx_arena_get.exit, %bb.y, %bb.w, %arena_get.exit, %arena_get_from_ind.exit, %bb.t
  %.3149 = phi ptr [ %.1147, %arena_get_from_ind.exit ], [ %.0, %bb.t ], [ %i.dv, %bb.y ], [ %i.ds, %bb.w ], [ %i.dn, %arena_get.exit ], [ %i.dl, %mallocx_arena_get.exit ] ; 2 uses
  %i.eb = urem i64 %i.dj, %.099
  %i.ec = sub i64 %i.dj, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.094
  %i.ee = call i64 @duckdb_je_arena_fill_small_fresh(ptr noundef nonnull %.0.i133153, ptr noundef nonnull %.3149, i32 noundef %.0.i126, ptr noundef %i.ed, i64 noundef %i.ec, i1 noundef zeroext %.0.i124) #21 ; 2 uses
  %i.ef = add i64 %i.ee, %.094
  br label %bb.ae

bb.ae:                                            ; preds = %arena_get_from_ind.exit.thread169, %bb.s
  %.4 = phi ptr [ %.0, %bb.s ], [ %.3149, %arena_get_from_ind.exit.thread169 ] ; 2 uses
  %.0101 = phi i64 [ 0, %bb.s ], [ %i.ee, %arena_get_from_ind.exit.thread169 ] ; 9 uses
  %.1 = phi i64 [ %.094, %bb.s ], [ %i.ef, %arena_get_from_ind.exit.thread169 ] ; 8 uses
  switch i32 %i.da, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %.critedge119
  ], !prof !141

mallocx_tcache_get.exit:                          ; preds = %bb.ae
  switch i32 %i.dc, label %bb.af [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %.critedge119
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %bb.ae, %mallocx_tcache_get.exit
  %i.eg = load i8, ptr %.0.i133153, align 1, !tbaa !95, !range !96, !noundef !97
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %tcache_get_from_ind.exit.thread178, label %.critedge119

bb.af:                                            ; preds = %mallocx_tcache_get.exit
  %i.ei = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !142
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dd ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !10 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.ek to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.ag
    i64 1, label %bb.ah
  ], !prof !144

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.178, i32 noundef range(i32 0, -2) %i.dc) #21
  call void @abort() #22
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.el = call ptr @duckdb_je_tcache_create_explicit(ptr noundef nonnull %.0.i133153) #21 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !10
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.ah, %bb.af
  %i.em = phi ptr [ %i.el, %bb.ah ], [ %i.ek, %bb.af ] ; 2 uses
  %.not113 = icmp eq ptr %i.em, null
  br i1 %.not113, label %.critedge119, label %tcache_get_from_ind.exit.thread178, !prof !84

tcache_get_from_ind.exit.thread178:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit
  %.0.i181 = phi ptr [ %i.em, %tcache_get_from_ind.exit ], [ %i.cy, %mallocx_tcache_get.exit.thread ] ; 2 uses
  %i.en = load ptr, ptr %.0.i181, align 8, !tbaa !99
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %.val137 = load i32, ptr %i.eo, align 8, !tbaa !101
  %i.ep = icmp ult i32 %.0.i126, %.val137
  br i1 %i.ep, label %bb.ai, label %.critedge119, !prof !9

bb.ai:                                            ; preds = %tcache_get_from_ind.exit.thread178
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i181, i64 8
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.cm ; 2 uses
  %.val = load ptr, ptr %i.er, align 8, !tbaa !86
  %i.es = icmp ne ptr %.val, @duckdb_je_disabled_bin
  %i.et = icmp ult i64 %.0101, %i.dj
  %or.cond120 = select i1 %i.es, i1 %i.et, i1 false, !prof !12
  br i1 %or.cond120, label %bb.aj, label %.critedge119, !prof !12

bb.aj:                                            ; preds = %bb.ai
  %i.eu = icmp eq ptr %.095, null
  %.196 = select i1 %i.eu, ptr %i.er, ptr %.095   ; 7 uses
  %i.ev = sub nuw i64 %i.dj, %.0101
  %i.ew = getelementptr [8 x i8], ptr %0, i64 %.1 ; 10 uses
  %.196.val = load ptr, ptr %.196, align 8, !tbaa !86 ; 2 uses
  %i.ex = getelementptr i8, ptr %.196, i64 20     ; 2 uses
  %.196.val139 = load i16, ptr %i.ex, align 4, !tbaa !94
  %i.ey = ptrtoint ptr %.196.val to i64
  %i.ez = trunc i64 %i.ey to i16
  %i.fa = sub i16 %.196.val139, %i.ez
  %i.fb = lshr i16 %i.fa, 3
  %i.fc = zext nneg i16 %i.fb to i64
  %spec.select.i129197 = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.fc) ; 9 uses
  %i.fd = shl nuw nsw i64 %spec.select.i129197, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ew, ptr align 8 %.196.val, i64 %i.fd, i1 false)
  %i.fe = load ptr, ptr %.196, align 8, !tbaa !86
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %spec.select.i129197 ; 2 uses
  store ptr %i.ff, ptr %.196, align 8, !tbaa !86
  %.val3.i = load i16, ptr %i.ex, align 4, !tbaa !94 ; 2 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = trunc i64 %i.fg to i16                  ; 2 uses
  %i.fi = sub i16 %.val3.i, %i.fh
  %i.fj = lshr i16 %i.fi, 3
  %i.fk = getelementptr i8, ptr %.196, i64 16     ; 2 uses
  %.val4.i = load i16, ptr %i.fk, align 8, !tbaa !93
  %i.fl = sub i16 %.val3.i, %.val4.i
  %i.fm = lshr i16 %i.fl, 3
  %i.fn = icmp samesign ult i16 %i.fj, %i.fm
  br i1 %i.fn, label %bb.ak, label %cache_bin_low_water_adjust.exit

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.fh, ptr %i.fk, align 8, !tbaa !93
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %bb.aj, %bb.ak
  %i.fo = getelementptr inbounds nuw i8, ptr %.196, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !98
  %i.fq = add i64 %i.fp, %spec.select.i129197
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !98
  %i.fr = icmp ne i64 %spec.select.i129197, 0
  %or.cond199 = and i1 %.0.i124, %i.fr
  br i1 %or.cond199, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i129197, 7     ; 3 uses
  %i.fs = icmp samesign ult i64 %spec.select.i129197, 8
  br i1 %i.fs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i129197, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.093198 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gq, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ft = getelementptr [8 x i8], ptr %i.ew, i64 %.093198
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 0, i64 %storemerge.i, i1 false)
  %i.fv = getelementptr [8 x i8], ptr %i.ew, i64 %.093198
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr align 1 %i.fx, i8 0, i64 %storemerge.i, i1 false)
  %i.fy = getelementptr [8 x i8], ptr %i.ew, i64 %.093198
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr align 1 %i.ga, i8 0, i64 %storemerge.i, i1 false)
  %i.gb = getelementptr [8 x i8], ptr %i.ew, i64 %.093198
  %i.gc = getelementptr i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr align 1 %i.gd, i8 0, i64 %storemerge.i, i1 false)
  %i.ge = getelementptr [8 x i8], ptr %i.ew, i64 %.093198
  %i.gf = getelementptr i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr align 1 %i.gg, i8 0, i64 %storemerge.i, i1 false)
  %i.gh = getelementptr [8 x i8], ptr %i.ew, i64 %.093198
  %i.gi = getelementptr i8, ptr %i.gh, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr align 1 %i.gj, i8 0, i64 %storemerge.i, i1 false)
  %i.gk = getelementptr [8 x i8], ptr %i.ew, i64 %.093198
  %i.gl = getelementptr i8, ptr %i.gk, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr align 1 %i.gm, i8 0, i64 %storemerge.i, i1 false)
  %i.gn = getelementptr [8 x i8], ptr %i.ew, i64 %.093198
  %i.go = getelementptr i8, ptr %i.gn, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr align 1 %i.gp, i8 0, i64 %storemerge.i, i1 false)
  %i.gq = add nuw nsw i64 %.093198, 8             ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.093198.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gq, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod220 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.093198.epil = phi i64 [ %i.gt, %.lr.ph.epil ], [ %.093198.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gr = getelementptr [8 x i8], ptr %i.ew, i64 %.093198.epil
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr align 1 %i.gs, i8 0, i64 %storemerge.i, i1 false)
  %i.gt = add nuw nsw i64 %.093198.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !157

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gu = add i64 %spec.select.i129197, %.0101
  %i.gv = add i64 %spec.select.i129197, %.1
  br label %.critedge119

.critedge119:                                     ; preds = %bb.ae, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit.thread178, %tcache_get_from_ind.exit, %.loopexit, %bb.ai
  %.1102 = phi i64 [ %i.gu, %.loopexit ], [ %.0101, %tcache_get_from_ind.exit.thread178 ], [ %.0101, %bb.ai ], [ %.0101, %tcache_get_from_ind.exit ], [ %.0101, %mallocx_tcache_get.exit ], [ %.0101, %mallocx_tcache_get.exit.thread ], [ %.0101, %bb.ae ] ; 2 uses
  %.297 = phi ptr [ %.196, %.loopexit ], [ %.095, %tcache_get_from_ind.exit.thread178 ], [ %.095, %bb.ai ], [ %.095, %tcache_get_from_ind.exit ], [ %.095, %mallocx_tcache_get.exit ], [ %.095, %mallocx_tcache_get.exit.thread ], [ %.095, %bb.ae ] ; 2 uses
  %.2 = phi i64 [ %i.gv, %.loopexit ], [ %.1, %tcache_get_from_ind.exit.thread178 ], [ %.1, %bb.ai ], [ %.1, %tcache_get_from_ind.exit ], [ %.1, %mallocx_tcache_get.exit ], [ %.1, %mallocx_tcache_get.exit.thread ], [ %.1, %bb.ae ] ; 4 uses
  %i.gw = mul i64 %.1102, %storemerge.i           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 1, ptr %4, align 8, !tbaa !109
  store <4 x ptr> %i.dh, ptr %i.df, align 8, !tbaa !159
  %i.gx = load i64, ptr %i.de, align 8, !tbaa !23 ; 2 uses
  %i.gy = add i64 %i.gx, %i.gw
  store i64 %i.gy, ptr %i.de, align 8, !tbaa !23
  %i.gz = load i64, ptr %i.dg, align 8, !tbaa !23
  %i.ha = sub i64 %i.gz, %i.gx
  %i.hb = icmp ult i64 %i.gw, %i.ha
  br i1 %i.hb, label %te_event_advance.exit, label %bb.al, !prof !9

bb.al:                                            ; preds = %.critedge119
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i133153, ptr noundef nonnull %4) #21
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %.critedge119, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.hc = icmp ult i64 %.1102, %i.dj
  br i1 %i.hc, label %bb.am, label %select.unfold

bb.am:                                            ; preds = %te_event_advance.exit
  %i.hd = call noalias ptr @duckdb_je_mallocx(i64 noundef %2, i32 noundef %3) #24 ; 2 uses
  %.not115 = icmp eq ptr %i.hd, null
  br i1 %.not115, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.he = add i64 %.2, 1
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !92
  br label %select.unfold

select.unfold:                                    ; preds = %bb.an, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5 = phi ptr [ %.4, %bb.an ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %i.hg = phi i1 [ true, %bb.an ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  %.398 = phi ptr [ %.297, %bb.an ], [ %.297, %te_event_advance.exit ], [ %.095, %arena_get_from_ind.exit ]
  %.6 = phi i64 [ %i.he, %bb.an ], [ %.2, %te_event_advance.exit ], [ %.094, %arena_get_from_ind.exit ] ; 2 uses
  br i1 %i.hg, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.am, %bb.v, %select.unfold, %bb.r, %sz_s2u_compute.exit29.i, %bb.j, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.7 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit29.i ], [ %.2, %bb.am ], [ %.094, %bb.v ], [ %.6, %select.unfold ], [ %.094, %bb.r ]
  ret i64 %.7
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #11 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %arena_choose_impl.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) ; 7 uses
  %i.k = load i8, ptr %0, align 1, !tbaa !95, !range !96, !noundef !97
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %arena_choose_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !156  ; 2 uses
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
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.j ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.0.i
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
  store ptr @duckdb_je_JE_MALLOC_CONF_BUFFER, ptr @duckdb_je_malloc_conf, align 8, !tbaa !160
  %i.j = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %malloc_init.exit, label %bb.d, !prof !9

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
  %i.c = load i8, ptr %i.b, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !9

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
  br i1 %.not, label %.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.e to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.041.us = phi i32 [ %i.j, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %arena_get.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %arena_get.exit.thread.us ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread.us, label %arena_get.exit.us, !prof !7

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
  tail call void @duckdb_je_arena_prefork8(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.e:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork7(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.f:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork6(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.g:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork5(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.h:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork4(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.i:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork3(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.j:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork2(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.k:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork1(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.l:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork0(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

arena_get.exit.thread.us:                         ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

._crit_edge.us:                                   ; preds = %arena_get.exit.thread.us
  %i.j = add nuw nsw i32 %.041.us, 1              ; 2 uses
  %exitcond44.not = icmp eq i32 %i.j, 9
  br i1 %exitcond44.not, label %.split.us, label %.preheader.us

default.unreachable:                              ; preds = %arena_get.exit.us
  unreachable

.split.us:                                        ; preds = %._crit_edge.us, %tsd_fetch_impl.exit
  tail call void @duckdb_je_prof_prefork1(ptr noundef %.0.i) #21
  tail call void @duckdb_je_stats_prefork(ptr noundef %.0.i) #21
  tail call void @duckdb_je_tsd_prefork(ptr noundef %.0.i) #21
  ret void
}

declare void @duckdb_je_witness_prefork(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_ctl_prefork(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_tcache_prefork(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_background_thread_prefork0(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_prof_prefork0(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_background_thread_prefork1(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork0(ptr noundef, ptr noundef) local_unnamed_addr #5

end_hunk_8
begin_hunk_9_@malloc_init_hard_a0_locked:bb.a
  call void @abort()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab, %bb.aa
  %i.br = call ptr @duckdb_je_b0get() #21
  %i.bs = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95, !range !96, !noundef !97
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = call zeroext i1 @duckdb_je_arena_boot(ptr noundef nonnull %0, ptr noundef %i.br, i1 noundef zeroext %i.bt) #21
  br i1 %i.bu, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = call ptr @duckdb_je_b0get() #21
  %i.bw = call zeroext i1 @duckdb_je_tcache_boot(ptr noundef null, ptr noundef %i.bv) #21
  br i1 %i.bw, label %bb.ar, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = call zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef nonnull @duckdb_je_arenas_lock, ptr noundef nonnull @.str.84, i32 noundef 4, i32 noundef 0) #21
  br i1 %i.bx, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = call zeroext i1 @duckdb_je_hook_boot() #21 ; 0 uses
  store i32 1, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  store i32 2, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  store i64 0, ptr @duckdb_je_arenas, align 64
  %i.bz = call ptr @duckdb_je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default)
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.ar, label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.ai
  %i.cb = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64
  store ptr %i.cb, ptr @a0, align 8, !tbaa !32
  %i.cc = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95, !range !96, !noundef !97
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %arena_get.exit
  %i.ce = call zeroext i1 @duckdb_je_hpa_supported() #21
  br i1 %i.ce, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !95, !range !96, !noundef !97
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = select i1 %i.cg, ptr @.str.82, ptr @.str.83
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.81, ptr noundef nonnull %i.ch) #21
  %i.ci = load i8, ptr @duckdb_je_opt_abort_conf, align 1, !tbaa !95, !range !96, !noundef !97
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.176) #21
  call void @abort()
  unreachable

bb.am:                                            ; preds = %bb.ak
  store i8 0, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95
  br label %.thread

bb.an:                                            ; preds = %bb.aj
  %.pre = load i8, ptr @duckdb_je_opt_hpa, align 1, !tbaa !95, !range !96
  %i.ck = trunc nuw i8 %.pre to i1
  br i1 %i.ck, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) @duckdb_je_opt_hpa_opts, i64 48, i1 false), !tbaa.struct !162
  %i.cl = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.cl, ptr %i.cm, align 4, !tbaa !163
  %i.cn = load ptr, ptr @a0, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 10664
  %i.cp = call zeroext i1 @duckdb_je_pa_shard_enable_hpa(ptr noundef null, ptr noundef nonnull %i.co, ptr noundef nonnull %1, ptr noundef nonnull @duckdb_je_opt_hpa_sec_opts) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.cp, label %bb.ar, label %.thread

.thread:                                          ; preds = %arena_get.exit, %bb.an, %bb.ao, %bb.am
  store i32 2, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.cq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #25 ; 2 uses
  %.not9 = icmp eq i64 %i.cq, 0
  br i1 %.not9, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  %i.cs = call fastcc ptr @a0ialloc(i64 noundef %i.cr, i1 noundef zeroext false, i1 noundef zeroext true) ; 3 uses
  %.not10 = icmp eq ptr %i.cs, null
  br i1 %.not10, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull align 16 %i.h, i64 %i.cr, i1 false)
  store ptr %i.cs, ptr @duckdb_je_opt_malloc_conf_symlink, align 8, !tbaa !160
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %bb.aq, %bb.ap, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.ao
  %.1 = phi i1 [ true, %bb.ao ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #14

declare void @duckdb_je_sc_boot(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_bin_shard_sizes_boot(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_san_init(i64 noundef) local_unnamed_addr #5

declare void @duckdb_je_sz_boot(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @duckdb_je_bin_info_boot(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal void @stats_print_atexit() #2 {
bb.a:
  %0 = alloca %struct.buf_writer_t, align 8       ; 5 uses
  %i.a = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_fetch.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #21
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
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %arena_get.exit.thread, label %arena_get.exit, !prof !7

arena_get.exit:                                   ; preds = %.lr.ph32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 10496 ; 2 uses
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #21
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %bb.d, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %arena_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 10424
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 10488
  store atomic i8 1, ptr %i.n monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %atomic_store_b.exit.i, %arena_get.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 10480 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 10472 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.s, %.0.i
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 10464 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !30
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 10408 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !164  ; 2 uses
  %.not2029 = icmp eq ptr %i.x, null
  br i1 %.not2029, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %malloc_mutex_lock.exit, %select.unfold
  %.030 = phi ptr [ %i.aa, %select.unfold ], [ %i.x, %malloc_mutex_lock.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.030, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !165
  tail call void @duckdb_je_tcache_stats_merge(ptr noundef %.0.i, ptr noundef %i.z, ptr noundef nonnull %i.i) #21
  %i.aa = load ptr, ptr %.030, align 8, !tbaa !166 ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !164
  %.not21 = icmp eq ptr %i.aa, %i.ab
  %.not2036 = icmp eq ptr %i.aa, null
  %.not20 = or i1 %.not21, %.not2036
  br i1 %.not20, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %malloc_mutex_lock.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 10488
  store atomic i8 0, ptr %i.ac monotonic, align 1
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #21 ; 0 uses
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph32, %select.unfold._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph32

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsdn_fetch.exit
  %i.ae = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !95, !range !96, !noundef !97
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %duckdb_je_malloc_stats_print.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ag = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 824
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !10
  %.not.i.i26 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i26, label %duckdb_je_malloc_stats_print.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #21
  br label %duckdb_je_malloc_stats_print.exit

duckdb_je_malloc_stats_print.exit:                ; preds = %._crit_edge, %bb.f, %bb.g
  %.0.i.i = phi ptr [ null, %._crit_edge ], [ %i.aj, %bb.g ], [ %i.ag, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  %i.ak = call zeroext i1 @duckdb_je_buf_writer_init(ptr noundef %.0.i.i, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 65536) #21 ; 0 uses
  call void @duckdb_je_stats_print(ptr noundef nonnull @duckdb_je_buf_writer_cb, ptr noundef nonnull %0, ptr noundef nonnull @duckdb_je_opt_stats_print_opts) #21
  call void @duckdb_je_buf_writer_terminate(ptr noundef %.0.i.i, ptr noundef nonnull %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret void
}

declare void @duckdb_je_malloc_write(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_stats_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_pages_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_base_boot(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_emap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @duckdb_je_b0get() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_extent_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_ctl_boot() local_unnamed_addr #5

declare zeroext i1 @duckdb_je_hpa_supported() local_unnamed_addr #5

declare void @duckdb_je_malloc_printf(ptr noundef, ...) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_arena_boot(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_tcache_boot(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @duckdb_je_hook_boot() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare zeroext i1 @duckdb_je_pa_shard_enable_hpa(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc void @malloc_conf_init_helper(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull captures(none) %3, ptr noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 100 uses
  %i.c = alloca ptr, align 8                      ; 119 uses
  %i.d = alloca i64, align 8                      ; 99 uses
  %i.e = alloca i64, align 8                      ; 81 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
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
  %i.ac = alloca ptr, align 8                     ; 4 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca ptr, align 8                     ; 4 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca ptr, align 8                     ; 4 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca ptr, align 8                     ; 4 uses
  %i.aq = alloca ptr, align 8                     ; 4 uses
  %i.ar = alloca ptr, align 8                     ; 4 uses
  %i.as = alloca ptr, align 8                     ; 4 uses
  %i.at = alloca ptr, align 8                     ; 4 uses
  %i.au = alloca ptr, align 8                     ; 4 uses
  %i.av = alloca ptr, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 5 uses
  %i.ax = alloca i64, align 8                     ; 5 uses
  %i.ay = alloca i64, align 8                     ; 5 uses
  %i.az = alloca i64, align 8                     ; 5 uses
  %i.ba = alloca ptr, align 8                     ; 4 uses
  %i.bb = alloca ptr, align 8                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %.not937 = xor i1 %2, true                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.qs
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.qs ] ; 6 uses
  br i1 %2, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.bc, label %bb.k [
    i32 0, label %.thread
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.bd = load ptr, ptr @duckdb_je_malloc_conf, align 8, !tbaa !160
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.be = tail call ptr @__errno_location() #23   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = call i64 @readlink(ptr noundef nonnull @.str.165, ptr noundef %4, i64 noundef 4096) #21 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, -1
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.010.i = phi i64 [ 0, %bb.f ], [ %i.bg, %bb.e ]
  %i.bi = getelementptr inbounds i8, ptr %4, i64 %.010.i
  store i8 0, ptr %i.bi, align 1, !tbaa !10
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.bj = call noundef ptr @getenv(ptr noundef nonnull @.str.166) #21 ; 3 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bj, ptr @duckdb_je_opt_malloc_conf_env_var, align 8, !tbaa !160
  br label %.thread

bb.j:                                             ; preds = %bb.c
  %i.bk = load ptr, ptr @duckdb_je_malloc_conf_2_conf_harder, align 8, !tbaa !160
  br label %.thread

bb.k:                                             ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.1.i = phi ptr [ %i.bk, %bb.j ], [ %i.bd, %bb.d ], [ @.str.91, %bb.c ], [ %4, %bb.g ], [ %i.bj, %bb.i ], [ null, %bb.h ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %.1.i, ptr %i.bl, align 8, !tbaa !160
  store ptr %.1.i, ptr %i.a, align 8, !tbaa !160
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !160 ; 5 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !160
  %i.bo = load i8, ptr @duckdb_je_opt_confirm_conf, align 1, !range !96
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.m, label %bb.n
end_hunk_9
