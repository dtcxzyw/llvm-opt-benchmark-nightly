Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/jemalloc?download=true
inline.NumInlined: 639
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@je_batch_alloc:bb.a
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41
  br label %aligned_usize_get.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.v, label %.critedge, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.w = icmp samesign ugt i64 %2, 14336
  %i.x = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond197 = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond197, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw i64 %2, 1
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.aa, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ab
  %i.ac = lshr i64 1152921504606846975, %i.ab
  %i.ad = add nuw nsw i64 %2, %i.ac
  %i.ae = and i64 %i.ad, %notmask.i
  br label %aligned_usize_get.exit

bb.h:                                             ; preds = %bb.f
  %i.af = add nuw nsw i64 %2, 4095
  %i.ag = and i64 %i.af, 9223372036854771712
  br label %aligned_usize_get.exit

bb.i:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %2, 14337
  %i.ai = icmp ult i64 %i.l, 4097
  %or.cond.i = and i1 %i.ah, %i.ai
  br i1 %or.cond.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aj = add nsw i64 %2, -1
  %i.ak = add nsw i64 %i.aj, %i.l
  %i.al = sub nsw i64 0, %i.l
  %i.am = and i64 %i.ak, %i.al                    ; 5 uses
  %i.an = icmp samesign ult i64 %i.am, 4097
  br i1 %i.an, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.ao = add nuw nsw i64 %i.am, 6
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !41
  br label %sz_s2u.exit25.i

bb.l:                                             ; preds = %bb.j
  %i.av = icmp samesign ugt i64 %i.am, 14336
  %i.aw = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !38
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond199 = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond199, label %.thread153, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = shl nuw nsw i64 %i.am, 1
  %i.az = add nsw i64 %i.ay, -1
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.az, i1 true) ; 2 uses
  %notmask.i29.i = ashr exact i64 -1152921504606846976, %i.ba
  %i.bb = lshr i64 1152921504606846975, %i.ba
  %i.bc = add nuw nsw i64 %i.am, %i.bb
  %i.bd = and i64 %i.bc, %notmask.i29.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %bb.m, %bb.k
  %.0.i24.i = phi i64 [ %i.au, %bb.k ], [ %i.bd, %bb.m ] ; 2 uses
  %i.be = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.be, label %aligned_usize_get.exit, label %.thread153

bb.n:                                             ; preds = %bb.i
  %i.bf = icmp ugt i64 %i.l, 8070450532247928832
  br i1 %i.bf, label %.critedge, label %bb.o, !prof !137

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp ult i64 %2, 16385
  br i1 %i.bg, label %.thread153, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.bh, label %sz_s2u_compute.exit28.i, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.bi = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !40, !range !38, !noundef !39
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = shl nuw i64 %2, 1
  %i.bl = add i64 %i.bk, -1
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bl, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.bm
  %i.bn = lshr i64 1152921504606846975, %i.bm
  %i.bo = add nuw nsw i64 %2, %i.bn
  %i.bp = and i64 %i.bo, %notmask.i.i
  br label %sz_s2u_compute.exit28.i

bb.s:                                             ; preds = %bb.q
  %i.bq = add nuw nsw i64 %2, 4095
  %i.br = and i64 %i.bq, 9223372036854771712
  br label %sz_s2u_compute.exit28.i

sz_s2u_compute.exit28.i:                          ; preds = %bb.s, %bb.r, %bb.p
  %.0.i27.i = phi i64 [ %i.bp, %bb.r ], [ %i.br, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %i.bs = icmp ult i64 %.0.i27.i, %2
  br i1 %i.bs, label %.critedge, label %.thread153

.thread153:                                       ; preds = %bb.l, %sz_s2u.exit25.i, %sz_s2u_compute.exit28.i, %bb.o
  %.0.i134 = phi i64 [ %.0.i27.i, %sz_s2u_compute.exit28.i ], [ 16384, %bb.o ], [ 16384, %bb.l ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bt = load i64, ptr @je_sz_large_pad, align 8, !tbaa !41
  %i.bu = add nuw i64 %i.k, 4094
  %i.bv = and i64 %i.bu, 9223372036854771712
  %i.bw = add nsw i64 %i.bv, -4096
  %i.bx = add i64 %i.bw, %.0.i134
  %i.by = add i64 %i.bx, %i.bt
  %i.bz = icmp ult i64 %i.by, %.0.i134
  %..0.i = select i1 %i.bz, i64 0, i64 %.0.i134
  br label %aligned_usize_get.exit

aligned_usize_get.exit:                           ; preds = %.thread153, %sz_s2u.exit25.i, %bb.d, %bb.g, %bb.h
  %storemerge.i = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.u, %bb.d ], [ %i.ae, %bb.g ], [ %i.ag, %bb.h ], [ %..0.i, %.thread153 ] ; 15 uses
  %i.ca = add i64 %storemerge.i, -8070450532247928833
  %spec.select.i = icmp ult i64 %i.ca, -8070450532247928832
  br i1 %spec.select.i, label %.critedge, label %bb.t

bb.t:                                             ; preds = %aligned_usize_get.exit
  %i.cb = icmp samesign ult i64 %storemerge.i, 4097
  br i1 %i.cb, label %bb.u, label %sz_size2index_compute.exit, !prof !23

bb.u:                                             ; preds = %bb.t
  %i.cc = add nuw nsw i64 %storemerge.i, 7
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !24
  %i.cg = zext i8 %i.cf to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit:                       ; preds = %bb.t
  %i.ch = shl nuw i64 %storemerge.i, 1
  %i.ci = add i64 %i.ch, -1
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ci, i1 true) ; 3 uses
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = sub nuw nsw i64 60, %i.cj
  %i.cm = ashr exact i64 -1152921504606846976, %i.cj
  %i.cn = add nsw i64 %storemerge.i, -1
  %i.co = and i64 %i.cm, %i.cn
  %i.cp = lshr i64 %i.co, %i.cl
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 3
  %i.cs = shl nuw nsw i32 %i.ck, 2
  %reass.sub = sub nsw i32 %i.cr, %i.cs
  %i.ct = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.u, %sz_size2index_compute.exit
  %.0.i125 = phi i32 [ %i.cg, %bb.u ], [ %i.ct, %sz_size2index_compute.exit ] ; 4 uses
  %i.cu = and i32 %3, 64
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = load i8, ptr @je_opt_zero, align 1, !range !38
  %i.cx = trunc nuw i8 %i.cw to i1
  %.0.i123 = or i1 %i.cv, %i.cx                   ; 2 uses
  %i.cy = zext nneg i32 %.0.i125 to i64           ; 2 uses
  %i.cz = icmp samesign ugt i32 %.0.i125, 35      ; 2 uses
  br i1 %i.cz, label %bb.w, label %bb.v, !prof !21

bb.v:                                             ; preds = %sz_size2index.exit
  %i.da = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !174
  %i.dd = zext i32 %i.dc to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %sz_size2index.exit
  %.098 = phi i64 [ %i.dd, %bb.v ], [ 0, %sz_size2index.exit ] ; 2 uses
  %.not.i = icmp ult i32 %3, 1048576
  %i.de = lshr i32 %3, 20
  %i.df = add nsw i32 %i.de, -1                   ; 3 uses
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.dg
  %i.di = and i32 %3, 1048320                     ; 2 uses
  %i.dj = lshr exact i32 %i.di, 8
  %i.dk = add nsw i32 %i.dj, -2                   ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 960
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 928 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i132151, i64 936
  %5 = insertelement <2 x ptr> poison, ptr %i.dn, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.dp, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %i.dq, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %i.ds, i64 1
  br label %bb.x

bb.x:                                             ; preds = %select.unfold, %bb.w
  %.0145 = phi ptr [ null, %bb.w ], [ %.5, %select.unfold ] ; 3 uses
  %.0103 = phi i64 [ 0, %bb.w ], [ %.6, %select.unfold ] ; 8 uses
  %.099 = phi ptr [ null, %bb.w ], [ %.3102, %select.unfold ] ; 9 uses
  %9 = icmp ult i64 %.0103, %1
  br i1 %9, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dt = sub nuw i64 %1, %.0103                  ; 6 uses
  %.not = icmp ult i64 %i.dt, %.098
  %or.cond = select i1 %i.cz, i1 true, i1 %.not, !prof !175
  br i1 %or.cond, label %bb.ac, label %bb.z, !prof !175

bb.z:                                             ; preds = %bb.y
  %i.du = icmp eq ptr %.0145, null
  br i1 %i.du, label %bb.aa, label %arena_get_from_ind.exit.thread169

bb.aa:                                            ; preds = %bb.z
  br i1 %.not.i, label %arena_get_from_ind.exit, label %mallocx_arena_get.exit, !prof !23

mallocx_arena_get.exit:                           ; preds = %bb.aa
  %i.dv = load atomic ptr, ptr %i.dh acquire, align 8 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %arena_get.exit, label %arena_get_from_ind.exit.thread169, !prof !21

arena_get.exit:                                   ; preds = %mallocx_arena_get.exit
  %i.dx = call ptr @je_arena_init(ptr noundef nonnull %.0.i132151, i32 noundef %i.df, ptr noundef nonnull @je_arena_config_default), !inline_history !0 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ab, label %arena_get_from_ind.exit.thread169, !prof !22

bb.ab:                                            ; preds = %arena_get.exit
  %i.dz = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  %.not.i127 = icmp ult i32 %i.df, %i.dz
  br i1 %.not.i127, label %arena_get_from_ind.exit, label %.critedge

arena_get_from_ind.exit:                          ; preds = %bb.ab, %bb.aa
  %i.ea = call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i132151, ptr noundef null) ; 2 uses
  %.not200 = icmp eq ptr %i.ea, null
  br i1 %.not200, label %select.unfold, label %arena_get_from_ind.exit.thread169

arena_get_from_ind.exit.thread169:                ; preds = %mallocx_arena_get.exit, %arena_get.exit, %arena_get_from_ind.exit, %bb.z
  %.3147 = phi ptr [ %i.ea, %arena_get_from_ind.exit ], [ %.0145, %bb.z ], [ %i.dx, %arena_get.exit ], [ %i.dv, %mallocx_arena_get.exit ] ; 2 uses
  %i.eb = urem i64 %i.dt, %.098
  %i.ec = sub nuw i64 %i.dt, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0103
  %i.ee = call i64 @je_arena_fill_small_fresh(ptr noundef nonnull %.0.i132151, ptr noundef nonnull %.3147, i32 noundef %.0.i125, ptr noundef %i.ed, i64 noundef %i.ec, i1 noundef zeroext %.0.i123) #20 ; 2 uses
  %i.ef = add i64 %i.ee, %.0103
  br label %bb.ac

bb.ac:                                            ; preds = %arena_get_from_ind.exit.thread169, %bb.y
  %.4 = phi ptr [ %.0145, %bb.y ], [ %.3147, %arena_get_from_ind.exit.thread169 ] ; 2 uses
  %.1104 = phi i64 [ %.0103, %bb.y ], [ %i.ef, %arena_get_from_ind.exit.thread169 ] ; 8 uses
  %.095 = phi i64 [ 0, %bb.y ], [ %i.ee, %arena_get_from_ind.exit.thread169 ] ; 9 uses
  switch i32 %i.di, label %mallocx_tcache_get.exit [
    i32 0, label %mallocx_tcache_get.exit.thread
    i32 256, label %.critedge119
  ], !prof !145

mallocx_tcache_get.exit:                          ; preds = %bb.ac
  switch i32 %i.dk, label %bb.ad [
    i32 -2, label %mallocx_tcache_get.exit.thread
    i32 -1, label %.critedge119
  ]

mallocx_tcache_get.exit.thread:                   ; preds = %bb.ac, %mallocx_tcache_get.exit
  %i.eg = load i8, ptr %.0.i132151, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %tcache_get_from_ind.exit.thread178, label %.critedge119

bb.ad:                                            ; preds = %mallocx_tcache_get.exit
  %i.ei = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dm ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !24 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.ek to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit [
    i64 0, label %bb.ae
    i64 1, label %bb.af
  ], !prof !148

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.92, i32 noundef range(i32 0, -2) %i.dk) #20
  call void @abort() #21
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.el = call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i132151) #20 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !24
  br label %tcache_get_from_ind.exit

tcache_get_from_ind.exit:                         ; preds = %bb.af, %bb.ad
  %i.em = phi ptr [ %i.el, %bb.af ], [ %i.ek, %bb.ad ] ; 2 uses
  %.not113 = icmp eq ptr %i.em, null
  br i1 %.not113, label %.critedge119, label %tcache_get_from_ind.exit.thread178, !prof !100

tcache_get_from_ind.exit.thread178:               ; preds = %mallocx_tcache_get.exit.thread, %tcache_get_from_ind.exit
  %.0.i181 = phi ptr [ %i.em, %tcache_get_from_ind.exit ], [ %i.dl, %mallocx_tcache_get.exit.thread ] ; 2 uses
  %i.en = load ptr, ptr %.0.i181, align 8, !tbaa !114
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %.val136 = load i32, ptr %i.eo, align 8, !tbaa !121
  %i.ep = icmp ult i32 %.0.i125, %.val136
  br i1 %i.ep, label %bb.ag, label %.critedge119, !prof !23

bb.ag:                                            ; preds = %tcache_get_from_ind.exit.thread178
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i181, i64 8
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.cy ; 2 uses
  %.val = load ptr, ptr %i.er, align 8, !tbaa !108
  %i.es = icmp ne ptr %.val, @je_disabled_bin
  %i.et = icmp ult i64 %.095, %i.dt
  %or.cond120 = select i1 %i.es, i1 %i.et, i1 false, !prof !25
  br i1 %or.cond120, label %bb.ah, label %.critedge119, !prof !25

bb.ah:                                            ; preds = %bb.ag
  %i.eu = icmp eq ptr %.099, null
  %.1100 = select i1 %i.eu, ptr %i.er, ptr %.099  ; 7 uses
  %i.ev = sub nuw i64 %i.dt, %.095
  %i.ew = getelementptr [8 x i8], ptr %0, i64 %.1104 ; 10 uses
  %.1100.val = load ptr, ptr %.1100, align 8, !tbaa !108 ; 2 uses
  %i.ex = getelementptr i8, ptr %.1100, i64 20    ; 2 uses
  %.1100.val138 = load i16, ptr %i.ex, align 4, !tbaa !111
  %i.ey = ptrtoint ptr %.1100.val to i64
  %i.ez = trunc i64 %i.ey to i16
  %i.fa = sub i16 %.1100.val138, %i.ez
  %i.fb = lshr i16 %i.fa, 3
  %i.fc = zext nneg i16 %i.fb to i64
  %spec.select.i128201 = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.fc) ; 9 uses
  %i.fd = shl nuw nsw i64 %spec.select.i128201, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ew, ptr align 8 %.1100.val, i64 %i.fd, i1 false)
  %i.fe = load ptr, ptr %.1100, align 8, !tbaa !108
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %spec.select.i128201 ; 2 uses
  store ptr %i.ff, ptr %.1100, align 8, !tbaa !108
  %.val3.i = load i16, ptr %i.ex, align 4, !tbaa !111 ; 2 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = trunc i64 %i.fg to i16                  ; 2 uses
  %i.fi = sub i16 %.val3.i, %i.fh
  %i.fj = lshr i16 %i.fi, 3
  %i.fk = getelementptr i8, ptr %.1100, i64 16    ; 2 uses
  %.val4.i = load i16, ptr %i.fk, align 8, !tbaa !110
  %i.fl = sub i16 %.val3.i, %.val4.i
  %i.fm = lshr i16 %i.fl, 3
  %i.fn = icmp samesign ult i16 %i.fj, %i.fm
  br i1 %i.fn, label %bb.ai, label %cache_bin_low_water_adjust.exit

bb.ai:                                            ; preds = %bb.ah
  store i16 %i.fh, ptr %i.fk, align 8, !tbaa !110
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %bb.ah, %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %.1100, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !112
  %i.fq = add i64 %i.fp, %spec.select.i128201
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !112
  %i.fr = icmp ne i64 %spec.select.i128201, 0
  %or.cond203 = and i1 %.0.i123, %i.fr
  br i1 %or.cond203, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i128201, 7     ; 3 uses
  %i.fs = icmp samesign ult i64 %spec.select.i128201, 8
  br i1 %i.fs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i128201, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0202 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gq, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ft = getelementptr [8 x i8], ptr %i.ew, i64 %.0202
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 0, i64 %storemerge.i, i1 false)
  %i.fv = getelementptr [8 x i8], ptr %i.ew, i64 %.0202
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.fx, i8 0, i64 %storemerge.i, i1 false)
  %i.fy = getelementptr [8 x i8], ptr %i.ew, i64 %.0202
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.ga, i8 0, i64 %storemerge.i, i1 false)
  %i.gb = getelementptr [8 x i8], ptr %i.ew, i64 %.0202
  %i.gc = getelementptr i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gd, i8 0, i64 %storemerge.i, i1 false)
  %i.ge = getelementptr [8 x i8], ptr %i.ew, i64 %.0202
  %i.gf = getelementptr i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gg, i8 0, i64 %storemerge.i, i1 false)
  %i.gh = getelementptr [8 x i8], ptr %i.ew, i64 %.0202
  %i.gi = getelementptr i8, ptr %i.gh, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gj, i8 0, i64 %storemerge.i, i1 false)
  %i.gk = getelementptr [8 x i8], ptr %i.ew, i64 %.0202
  %i.gl = getelementptr i8, ptr %i.gk, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gm, i8 0, i64 %storemerge.i, i1 false)
  %i.gn = getelementptr [8 x i8], ptr %i.ew, i64 %.0202
  %i.go = getelementptr i8, ptr %i.gn, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gp, i8 0, i64 %storemerge.i, i1 false)
  %i.gq = add nuw nsw i64 %.0202, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !172

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0202.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gq, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod219 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod219)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0202.epil = phi i64 [ %i.gt, %.lr.ph.epil ], [ %.0202.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gr = getelementptr [8 x i8], ptr %i.ew, i64 %.0202.epil
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gs, i8 0, i64 %storemerge.i, i1 false)
  %i.gt = add nuw nsw i64 %.0202.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !173

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gu = add i64 %spec.select.i128201, %.095
  %i.gv = add i64 %spec.select.i128201, %.1104
  br label %.critedge119

.critedge119:                                     ; preds = %bb.ac, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit.thread178, %tcache_get_from_ind.exit, %.loopexit, %bb.ag
  %.2105 = phi i64 [ %i.gv, %.loopexit ], [ %.1104, %tcache_get_from_ind.exit.thread178 ], [ %.1104, %bb.ag ], [ %.1104, %tcache_get_from_ind.exit ], [ %.1104, %mallocx_tcache_get.exit ], [ %.1104, %mallocx_tcache_get.exit.thread ], [ %.1104, %bb.ac ] ; 4 uses
  %.2101 = phi ptr [ %.1100, %.loopexit ], [ %.099, %tcache_get_from_ind.exit.thread178 ], [ %.099, %bb.ag ], [ %.099, %tcache_get_from_ind.exit ], [ %.099, %mallocx_tcache_get.exit ], [ %.099, %mallocx_tcache_get.exit.thread ], [ %.099, %bb.ac ] ; 2 uses
  %.196 = phi i64 [ %i.gu, %.loopexit ], [ %.095, %tcache_get_from_ind.exit.thread178 ], [ %.095, %bb.ag ], [ %.095, %tcache_get_from_ind.exit ], [ %.095, %mallocx_tcache_get.exit ], [ %.095, %mallocx_tcache_get.exit.thread ], [ %.095, %bb.ac ] ; 2 uses
  %i.gw = mul i64 %.196, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !125
  store <2 x ptr> %6, ptr %i.do, align 8, !tbaa !177
  store <2 x ptr> %8, ptr %i.dr, align 8, !tbaa !177
  %i.gx = load i64, ptr %i.dn, align 8, !tbaa !41 ; 2 uses
  %i.gy = add i64 %i.gx, %i.gw
  store i64 %i.gy, ptr %i.dn, align 8, !tbaa !41
  %i.gz = load i64, ptr %i.dq, align 8, !tbaa !41
  %i.ha = sub i64 %i.gz, %i.gx
  %i.hb = icmp ult i64 %i.gw, %i.ha
  br i1 %i.hb, label %te_event_advance.exit, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %.critedge119
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i132151, ptr noundef nonnull %4) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %.critedge119, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.hc = icmp ult i64 %.196, %i.dt
  br i1 %i.hc, label %bb.ak, label %select.unfold

bb.ak:                                            ; preds = %te_event_advance.exit
  %i.hd = call noalias ptr @mallocx(i64 noundef %2, i32 noundef %3) #23 ; 2 uses
  %.not115 = icmp eq ptr %i.hd, null
  br i1 %.not115, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.he = add i64 %.2105, 1
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2105
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !109
  br label %select.unfold

select.unfold:                                    ; preds = %bb.al, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5 = phi ptr [ %.4, %bb.al ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %.6 = phi i64 [ %i.he, %bb.al ], [ %.2105, %te_event_advance.exit ], [ %.0103, %arena_get_from_ind.exit ] ; 2 uses
  %.3102 = phi ptr [ %.2101, %bb.al ], [ %.2101, %te_event_advance.exit ], [ %.099, %arena_get_from_ind.exit ]
  %10 = phi i1 [ true, %bb.al ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  br i1 %10, label %bb.x, label %.critedge

.critedge:                                        ; preds = %bb.ak, %bb.ab, %select.unfold, %bb.x, %sz_s2u_compute.exit28.i, %bb.n, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.7 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.n ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit28.i ], [ %.2105, %bb.ak ], [ %.0103, %bb.ab ], [ %.6, %select.unfold ], [ %.0103, %bb.x ]
  ret i64 %.7
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #11 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !178
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !179 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !40, !range !38, !noundef !39
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20, !inline_history !179
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20, !inline_history !179
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.0.i, i64 80640   ; 2 uses
  %.0.val48.i = load i32, ptr %i.s, align 64, !tbaa !96
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
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !184
  %.not45.i = icmp eq ptr %i.aa, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @sched_getcpu() #20, !inline_history !179 ; 3 uses
  %i.ac = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @je_ncpus, align 4, !tbaa !20
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = icmp ult i32 %i.ab, %i.af
  %i.ah = select i1 %i.ag, i32 0, i32 %i.af
  %spec.select.i.i = sub nuw i32 %i.ab, %i.ah
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.ab, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.0.val.i = load i32, ptr %i.s, align 64, !tbaa !96
  %.not46.i = icmp eq i32 %.0.val.i, %.0.i.i
  br i1 %.not46.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !50  ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 80640
  %.val.i.i = load i32, ptr %i.aj, align 64, !tbaa !96
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = zext i32 %.0.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %arena_get.exit.i.i, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef nonnull @je_arena_config_default), !inline_history !180
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.am, %bb.p ] ; 3 uses
  tail call void @je_arena_nthreads_dec(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20, !inline_history !181
  tail call void @je_arena_nthreads_inc(ptr noundef %.0.i18.i.i, i1 noundef zeroext false) #20, !inline_history !181
  store ptr %.0.i18.i.i, ptr %i.g, align 8, !tbaa !50
  %i.ap = tail call i32 @je_arena_nthreads_get(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20, !inline_history !181
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %je_arena_migrate.exit.i.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  %i.ar = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !38, !noundef !39
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %je_arena_migrate.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i1 noundef zeroext false, i1 noundef zeroext true) #20, !inline_history !181
  br label %je_arena_migrate.exit.i.i

je_arena_migrate.exit.i.i:                        ; preds = %bb.s, %bb.r, %arena_get.exit.i.i
  %i.at = load i8, ptr %0, align 8, !tbaa !40, !range !38, !noundef !39
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.t, label %percpu_arena_update.exit.i

bb.t:                                             ; preds = %je_arena_migrate.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.av, ptr noundef %.0.i18.i.i) #20, !inline_history !182
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.t, %je_arena_migrate.exit.i.i, %bb.o
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.ax, %percpu_arena_update.exit.i ], [ %.0.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.ay, align 16, !tbaa !184
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.u
  %.037.i = phi ptr [ %1, %bb.a ], [ %.0.i, %percpu_arena_ind_limit.exit.i ], [ %.0.i, %bb.k ], [ %.1.i, %bb.u ], [ %.0.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.037.i
}

declare i64 @je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal void @jemalloc_constructor() #2 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard() ; 0 uses
  br label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_prefork() #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 920
  %i.c = load i8, ptr %i.b, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 19 uses
  %i.e = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
end_hunk_0
