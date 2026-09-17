Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Olayout?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@H5O__layout_decode:bb.a
  %i.aeq = zext i8 %i.aep to i64
  %i.aer = shl nuw nsw i64 %i.aeq, 24
  %i.aes = or disjoint i64 %i.aer, %i.aen
  store i64 %i.aes, ptr %i.aed, align 8, !tbaa !21
  %i.aet = getelementptr inbounds nuw i8, ptr %i.j, i64 2216
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.j, i64 2496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aet, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aeu, align 8, !tbaa !21
  %i.aev = getelementptr inbounds nuw i8, ptr %i.j, i64 2504
  %i.aew = getelementptr inbounds nuw i8, ptr %i.j, i64 2528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aev, i8 -1, i64 24, i1 false)
  store i8 0, ptr %i.aew, align 8, !tbaa !21
  %i.aex = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @H5D_LOPS_VIRTUAL, ptr %i.aex, align 8, !tbaa !42
  br label %.thread584

bb.gc:                                            ; preds = %bb.bc
  %i.aey = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.aez = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !17
  %i.afa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_decode, i32 noundef 560, i64 noundef %i.aey, i64 noundef %i.aez, ptr noundef nonnull @.str.23) #10 ; 0 uses
  br label %.thread575

.thread575:                                       ; preds = %bb.e, %bb.g, %bb.bb, %bb.bf, %bb.bi, %bb.bk, %bb.bq, %bb.bu, %bb.cc, %bb.ce, %bb.cg, %bb.ck, %bb.co, %bb.cw, %bb.cy, %bb.da, %bb.dc, %bb.de, %bb.dg, %bb.dk, %bb.dq, %bb.ds, %bb.du, %bb.ee, %bb.eg, %bb.ei, %bb.ek, %bb.em, %bb.eo, %bb.eq, %bb.es, %bb.eu, %bb.ew, %bb.ey, %bb.fa, %bb.fd, %bb.ff, %bb.fh, %bb.fj, %bb.fl, %bb.fp, %bb.ft, %bb.fx, %bb.ga, %bb.gc, %bb.cs, %.loopexit725, %bb.ec, %bb.j, %bb.l, %bb.n, %bb.p, %bb.s, %bb.x, %bb.ah, %bb.at, %bb.aw, %bb.ay, %bb.ak, %bb.an, %.thread, %bb.ac
  %i.afb = load i32, ptr %i.j, align 8, !tbaa !23
  %i.afc = icmp eq i32 %i.afb, 3
  br i1 %i.afc, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %.thread575
  %i.afd = call i32 @H5D__virtual_reset_layout(ptr noundef nonnull %i.j) #10
  %i.afe = icmp slt i32 %i.afd, 0
  br i1 %i.afe, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.aff = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.afg = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !17
  %i.afh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_decode, i32 noundef 572, i64 noundef %i.aff, i64 noundef %i.afg, ptr noundef nonnull @.str.24) #10 ; 0 uses
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %bb.ge, %.thread575
  %i.afi = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_layout_t_reg_free_list, ptr noundef nonnull %i.j) #10 ; 0 uses
  br label %.thread584

.thread584:                                       ; preds = %bb.c, %bb.gb, %bb.fr, %bb.bz, %bb.bm, %.loopexit, %bb.az, %bb.au, %bb.a, %bb.gf
  %.0457 = phi ptr [ null, %bb.a ], [ null, %bb.gf ], [ null, %bb.c ], [ %i.j, %bb.gb ], [ %i.j, %bb.fr ], [ %i.j, %bb.bz ], [ %i.j, %bb.bm ], [ %i.j, %.loopexit ], [ %i.j, %bb.az ], [ %i.j, %bb.au ]
  ret ptr %.0457
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5O__layout_encode(ptr noundef %0, i1 zeroext %1, i64 %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 83 uses
  %i.b = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.loopexit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22
  %spec.select127 = tail call i32 @llvm.umax.i32(i32 %i.i, i32 3)
  %spec.select = trunc i32 %spec.select127 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %spec.select, ptr %3, align 1, !tbaa !21
  %i.k = load i32, ptr %4, align 8, !tbaa !23
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 4 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !10
  store i8 %i.l, ptr %i.j, align 1, !tbaa !21
  %i.n = load i32, ptr %4, align 8, !tbaa !23
  switch i32 %i.n, label %bb.ac [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 2, label %bb.k
    i32 3, label %bb.ab
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 2208 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = trunc i64 %i.p to i8
  store i8 %i.q, ptr %i.m, align 1, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.s = load i64, ptr %i.o, align 8, !tbaa !21
  %i.t = lshr i64 %i.s, 8
  %i.u = trunc i64 %i.t to i8
  store i8 %i.u, ptr %i.r, align 1, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !21   ; 3 uses
  %.not125 = icmp eq i64 %i.w, 0
  br i1 %.not125, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 2216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %.not126 = icmp eq ptr %i.y, null
  br i1 %.not126, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.y, i64 %i.w, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.v, i8 0, i64 %i.w, i1 false)
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 2200
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !21
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.aa) #10
  %i.ab = call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #10
  switch i8 %i.ab, label %.loopexit [
    i8 4, label %bb.h
    i8 8, label %bb.i
    i8 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 2208 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ae = trunc i64 %i.ad to i8
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !10
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !21
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !10
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aj = lshr i64 %i.ai, 8
  %i.ak = trunc i64 %i.aj to i8
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !21
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.a, align 8, !tbaa !10
  %i.an = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ao = lshr i64 %i.an, 16
  %i.ap = trunc i64 %i.ao to i8
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !21
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.at = lshr i64 %i.as, 24
  %i.au = trunc i64 %i.at to i8
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !21
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 2208
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21 ; 8 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !10  ; 8 uses
  %i.ay = trunc i64 %i.aw to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !21
  %i.ba = lshr i64 %i.aw, 8
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !21
  %i.bd = lshr i64 %i.aw, 16
  %i.be = trunc i64 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !21
  %i.bg = lshr i64 %i.aw, 24
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !21
  %i.bj = lshr i64 %i.aw, 32
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 5
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !21
  %i.bm = lshr i64 %i.aw, 40
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !21
  %i.bp = lshr i64 %i.aw, 48
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 7
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !21
  %i.bs = lshr i64 %i.aw, 56
  %i.bt = trunc nuw i64 %i.bs to i8
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !21
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 2208 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !21
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !10
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !21
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !21
  %i.cb = lshr i64 %i.ca, 8
  %i.cc = trunc i64 %i.cb to i8
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !21
  br label %.loopexit

bb.k:                                             ; preds = %bb.b
  %i.cd = load i32, ptr %i.h, align 4, !tbaa !22
  %i.ce = icmp ult i32 %i.cd, 4
  br i1 %i.ce, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !21
  %i.ch = trunc i32 %i.cg to i8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store ptr %5, ptr %i.a, align 8, !tbaa !10
  store i8 %i.ch, ptr %i.m, align 1, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 2208
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !21
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.cj) #10
  %i.ck = load i32, ptr %i.cf, align 8, !tbaa !21
  %.not146 = icmp eq i32 %i.ck, 0
  br i1 %.not146, label %.loopexit, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre156 = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph140, %bb.m
  %i.cm = phi ptr [ %.pre156, %.lr.ph140 ], [ %i.dg, %bb.m ]
  %indvars.iv149 = phi i64 [ 0, %.lr.ph140 ], [ %indvars.iv.next150, %bb.m ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv149 ; 4 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !21
  %i.cp = trunc i64 %i.co to i8
  store i8 %i.cp, ptr %i.cm, align 1, !tbaa !21
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !10
  %i.cs = load i64, ptr %i.cn, align 8, !tbaa !21
  %i.ct = lshr i64 %i.cs, 8
  %i.cu = trunc i64 %i.ct to i8
  store i8 %i.cu, ptr %i.cr, align 1, !tbaa !21
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 2 uses
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !10
  %i.cx = load i64, ptr %i.cn, align 8, !tbaa !21
  %i.cy = lshr i64 %i.cx, 16
  %i.cz = trunc i64 %i.cy to i8
  store i8 %i.cz, ptr %i.cw, align 1, !tbaa !21
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 2 uses
  store ptr %i.db, ptr %i.a, align 8, !tbaa !10
  %i.dc = load i64, ptr %i.cn, align 8, !tbaa !21
  %i.dd = lshr i64 %i.dc, 24
  %i.de = trunc i64 %i.dd to i8
  store i8 %i.de, ptr %i.db, align 1, !tbaa !21
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  store ptr %i.dg, ptr %i.a, align 8, !tbaa !10
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.dh = load i32, ptr %i.cf, align 8, !tbaa !21
  %i.di = zext i32 %i.dh to i64
  %i.dj = icmp samesign ult i64 %indvars.iv.next150, %i.di
  br i1 %i.dj, label %bb.m, label %.loopexit, !llvm.loop !44

bb.n:                                             ; preds = %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %6 = load i8, ptr %i.dk, align 4, !tbaa !21
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %6, ptr %i.m, align 1, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !21
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.dn, ptr %7, align 1, !tbaa !21
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 296 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !21
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 3 uses
  store ptr %i.ds, ptr %i.a, align 8, !tbaa !10
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !21
  %i.dt = load i32, ptr %i.dl, align 8, !tbaa !21 ; 2 uses
  %.not144 = icmp eq i32 %i.dt, 0
  br i1 %.not144, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load i32, ptr %i.dp, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph133, %._crit_edge
  %i.dv = phi i32 [ %i.dt, %.lr.ph133 ], [ %i.eh, %._crit_edge ]
  %i.dw = phi i32 [ %.pre, %.lr.ph133 ], [ %i.ej, %._crit_edge ]
  %i.dx = phi ptr [ %i.ds, %.lr.ph133 ], [ %i.ek, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.not145 = icmp eq i32 %i.dw, 0
  br i1 %.not145, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0110130 = phi ptr [ %i.eb, %.lr.ph ], [ %i.dx, %.lr.ph.preheader ] ; 2 uses
  %.0111129 = phi i64 [ %i.ec, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0112128 = phi i64 [ %i.ed, %.lr.ph ], [ %i.dz, %.lr.ph.preheader ] ; 2 uses
  %i.ea = trunc i64 %.0112128 to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %.0110130, i64 1
  store i8 %i.ea, ptr %.0110130, align 1, !tbaa !21
  %i.ec = add nuw nsw i64 %.0111129, 1            ; 2 uses
  %i.ed = lshr i64 %.0112128, 8
  %i.ee = load i32, ptr %i.dp, align 8, !tbaa !21 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = icmp samesign ult i64 %i.ec, %i.ef
  br i1 %i.eg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre152 = load ptr, ptr %i.a, align 8, !tbaa !10
  %.pre153 = load i32, ptr %i.dl, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %i.eh = phi i32 [ %i.dv, %bb.o ], [ %.pre153, %._crit_edge.loopexit ] ; 2 uses
  %i.ei = phi ptr [ %i.dx, %bb.o ], [ %.pre152, %._crit_edge.loopexit ]
  %i.ej = phi i32 [ 0, %bb.o ], [ %i.ee, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %bb.o ], [ %i.ef, %._crit_edge.loopexit ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.lcssa ; 3 uses
  store ptr %i.ek, ptr %i.a, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.el = zext i32 %i.eh to i64
  %i.em = icmp samesign ult i64 %indvars.iv.next, %i.el
  br i1 %i.em, label %bb.o, label %._crit_edge134, !llvm.loop !46

._crit_edge134:                                   ; preds = %._crit_edge, %bb.n
  %i.en = phi ptr [ %i.ds, %bb.n ], [ %i.ek, %._crit_edge ] ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eo = load i32, ptr %8, align 8, !tbaa !21
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !10
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !21
  %i.er = load i32, ptr %8, align 8, !tbaa !21
  switch i32 %i.er, label %bb.z [
    i32 0, label %bb.p
    i32 2, label %bb.aa
    i32 1, label %bb.q
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
  ]

bb.p:                                             ; preds = %._crit_edge134
  %i.es = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.et = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !17
  %i.eu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_encode, i32 noundef 672, i64 noundef %i.es, i64 noundef %i.et, ptr noundef nonnull @.str.16) #10 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge134
  %i.ev = load i8, ptr %i.dk, align 4, !tbaa !21
  %i.ew = and i8 %i.ev, 2
  %.not = icmp eq i8 %i.ew, 0
  br i1 %.not, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ex = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #10
  switch i8 %i.ex, label %._crit_edge154 [
    i8 4, label %bb.s
    i8 8, label %bb.t
    i8 2, label %bb.u
  ]

._crit_edge154:                                   ; preds = %bb.r
  %.pre155 = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 2224 ; 4 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !21
  %i.fa = trunc i64 %i.ez to i8
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !10
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !21
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1 ; 2 uses
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !10
  %i.fe = load i64, ptr %i.ey, align 8, !tbaa !21
  %i.ff = lshr i64 %i.fe, 8
  %i.fg = trunc i64 %i.ff to i8
  store i8 %i.fg, ptr %i.fd, align 1, !tbaa !21
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 2 uses
  store ptr %i.fi, ptr %i.a, align 8, !tbaa !10
  %i.fj = load i64, ptr %i.ey, align 8, !tbaa !21
  %i.fk = lshr i64 %i.fj, 16
  %i.fl = trunc i64 %i.fk to i8
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !21
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  store ptr %i.fn, ptr %i.a, align 8, !tbaa !10
  %i.fo = load i64, ptr %i.ey, align 8, !tbaa !21
  %i.fp = lshr i64 %i.fo, 24
  %i.fq = trunc i64 %i.fp to i8
  store i8 %i.fq, ptr %i.fn, align 1, !tbaa !21
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  store ptr %i.fs, ptr %i.a, align 8, !tbaa !10
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 2224
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !21 ; 8 uses
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !10  ; 8 uses
  %i.fw = trunc i64 %i.fu to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  store i8 %i.fw, ptr %i.fv, align 1, !tbaa !21
  %i.fy = lshr i64 %i.fu, 8
  %i.fz = trunc i64 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  store i8 %i.fz, ptr %i.fx, align 1, !tbaa !21
  %i.gb = lshr i64 %i.fu, 16
  %i.gc = trunc i64 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 3
  store i8 %i.gc, ptr %i.ga, align 1, !tbaa !21
  %i.ge = lshr i64 %i.fu, 24
  %i.gf = trunc i64 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i8 %i.gf, ptr %i.gd, align 1, !tbaa !21
  %i.gh = lshr i64 %i.fu, 32
  %i.gi = trunc i64 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fv, i64 5
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !21
  %i.gk = lshr i64 %i.fu, 40
  %i.gl = trunc i64 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 6
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !21
  %i.gn = lshr i64 %i.fu, 48
  %i.go = trunc i64 %i.gn to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fv, i64 7
  store i8 %i.go, ptr %i.gm, align 1, !tbaa !21
  %i.gq = lshr i64 %i.fu, 56
  %i.gr = trunc nuw i64 %i.gq to i8
  store i8 %i.gr, ptr %i.gp, align 1, !tbaa !21
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.a, align 8, !tbaa !10
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 2224 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !21
  %i.gw = trunc i64 %i.gv to i8
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !10
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !21
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1 ; 2 uses
  store ptr %i.gz, ptr %i.a, align 8, !tbaa !10
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !21
  %i.hb = lshr i64 %i.ha, 8
  %i.hc = trunc i64 %i.hb to i8
  store i8 %i.hc, ptr %i.gz, align 1, !tbaa !21
  %i.hd = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 2 uses
  store ptr %i.he, ptr %i.a, align 8, !tbaa !10
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge154, %bb.s, %bb.t, %bb.u
  %i.hf = phi ptr [ %.pre155, %._crit_edge154 ], [ %i.fs, %bb.s ], [ %i.gt, %bb.t ], [ %i.he, %bb.u ]
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 2232 ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !21
  %i.hi = trunc i32 %i.hh to i8
  store i8 %i.hi, ptr %i.hf, align 1, !tbaa !21
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1 ; 2 uses
  store ptr %i.hk, ptr %i.a, align 8, !tbaa !10
  %i.hl = load i32, ptr %i.hg, align 8, !tbaa !21
  %i.hm = lshr i32 %i.hl, 8
  %i.hn = trunc i32 %i.hm to i8
  store i8 %i.hn, ptr %i.hk, align 1, !tbaa !21
  %i.ho = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1 ; 2 uses
  store ptr %i.hp, ptr %i.a, align 8, !tbaa !10
  %i.hq = load i32, ptr %i.hg, align 8, !tbaa !21
  %i.hr = lshr i32 %i.hq, 16
  %i.hs = trunc i32 %i.hr to i8
  store i8 %i.hs, ptr %i.hp, align 1, !tbaa !21
  %i.ht = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1 ; 2 uses
  store ptr %i.hu, ptr %i.a, align 8, !tbaa !10
  %i.hv = load i32, ptr %i.hg, align 8, !tbaa !21
  %i.hw = lshr i32 %i.hv, 24
  %i.hx = trunc nuw i32 %i.hw to i8
  store i8 %i.hx, ptr %i.hu, align 1, !tbaa !21
  %i.hy = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  store ptr %i.hz, ptr %i.a, align 8, !tbaa !10
  br label %bb.aa

bb.w:                                             ; preds = %._crit_edge134
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 1384
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !21
  %i.ic = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  store ptr %i.id, ptr %i.a, align 8, !tbaa !10
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !21
  br label %bb.aa

bb.x:                                             ; preds = %._crit_edge134
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 1384
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !21
  %i.ig = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store ptr %i.ih, ptr %i.a, align 8, !tbaa !10
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !21
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 1385
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !21
  %i.ik = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  store ptr %i.il, ptr %i.a, align 8, !tbaa !10
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !21
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 1387
  %i.in = load i8, ptr %i.im, align 1, !tbaa !21
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  store ptr %i.ip, ptr %i.a, align 8, !tbaa !10
  store i8 %i.in, ptr %i.io, align 1, !tbaa !21
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 1386
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !21
  %i.is = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  store ptr %i.it, ptr %i.a, align 8, !tbaa !10
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !21
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 1388
  %i.iv = load i8, ptr %i.iu, align 4, !tbaa !21
  %i.iw = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  store ptr %i.ix, ptr %i.a, align 8, !tbaa !10
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !21
  br label %bb.aa

bb.y:                                             ; preds = %._crit_edge134
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 1384 ; 4 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !21
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !10
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !21
  %i.jc = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1 ; 2 uses
  store ptr %i.jd, ptr %i.a, align 8, !tbaa !10
  %i.je = load i32, ptr %i.iy, align 8, !tbaa !21
  %i.jf = lshr i32 %i.je, 8
  %i.jg = trunc i32 %i.jf to i8
  store i8 %i.jg, ptr %i.jd, align 1, !tbaa !21
  %i.jh = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1 ; 2 uses
  store ptr %i.ji, ptr %i.a, align 8, !tbaa !10
  %i.jj = load i32, ptr %i.iy, align 8, !tbaa !21
  %i.jk = lshr i32 %i.jj, 16
  %i.jl = trunc i32 %i.jk to i8
  store i8 %i.jl, ptr %i.ji, align 1, !tbaa !21
  %i.jm = load ptr, ptr %i.a, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@H5O__layout_copy_file:bb.a
  %i.l = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !17
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy_file, i32 noundef 1031, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.31) #10 ; 0 uses
  br label %.thread77

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call ptr @H5O__layout_copy(ptr noundef nonnull %1, ptr noundef null) ; 17 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.q = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !17
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy_file, i32 noundef 1035, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.32) #10 ; 0 uses
  br label %.thread77

bb.g:                                             ; preds = %bb.e
  %i.s = load i32, ptr %1, align 8, !tbaa !23
  switch i32 %i.s, label %bb.ac [
    i32 0, label %bb.h
    i32 1, label %bb.k
    i32 2, label %bb.v
    i32 3, label %bb.aa
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2216
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %.not74 = icmp eq ptr %i.u, null
  br i1 %.not74, label %.thread77, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 2200
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = tail call i32 @H5D__compact_copy(ptr noundef %0, ptr noundef nonnull %i.v, ptr noundef %2, ptr noundef nonnull %i.w, ptr noundef %i.y, ptr noundef %5) #10
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %.thread77

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ac = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !17
  %i.ad = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy_file, i32 noundef 1044, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.33) #10 ; 0 uses
  br label %bb.ad

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = tail call i32 @H5D__contig_check(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef %i.ah) #10
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.al = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !17
  %i.am = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy_file, i32 noundef 1053, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.34) #10 ; 0 uses
  br label %bb.ad

bb.m:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ao = tail call i64 @H5S_extent_nelem(ptr noundef %i.an) #10 ; 2 uses
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.aq = tail call i64 @H5T_get_size(ptr noundef %i.ap) #10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.at = icmp ult i32 %i.as, 3
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = mul i64 %i.aq, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 2208
  store i64 %i.au, ptr %i.av, align 8, !tbaa !21
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 2208
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.ay = mul i64 %i.aq, %i.ao
  %.not72 = icmp eq i64 %i.ax, %i.ay
  br i1 %.not72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ba = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !17
  %i.bb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy_file, i32 noundef 1066, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.35) #10 ; 0 uses
  br label %bb.ad

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %i.bd = tail call zeroext i1 @H5D__contig_is_space_alloc(ptr noundef nonnull %i.bc) #10
  br i1 %i.bd, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !59 ; 2 uses
  %.not73 = icmp eq ptr %i.bf, null
  br i1 %.not73, label %.thread77, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = tail call zeroext i1 @H5D__contig_is_data_cached(ptr noundef nonnull %i.bf) #10
  br i1 %i.bg, label %bb.t, label %.thread77

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 2200
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.bk = tail call i32 @H5D__contig_copy(ptr noundef %0, ptr noundef nonnull %i.bh, ptr noundef %2, ptr noundef nonnull %i.bi, ptr noundef %i.bj, ptr noundef %5) #10
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %.thread77

bb.u:                                             ; preds = %bb.t
  %i.bm = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.bn = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !17
  %i.bo = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy_file, i32 noundef 1074, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.36) #10 ; 0 uses
  br label %bb.ad

bb.v:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %i.bq = tail call zeroext i1 @H5D__chunk_is_space_alloc(ptr noundef nonnull %i.bp) #10
  br i1 %i.bq, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59 ; 2 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %.thread77, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = tail call zeroext i1 @H5D__chunk_is_data_cached(ptr noundef nonnull %i.bs) #10
  br i1 %i.bt, label %bb.y, label %.thread77

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !58
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.by = load ptr, ptr %6, align 8, !tbaa !60
  %i.bz = tail call i32 @H5D__chunk_copy(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.n, ptr noundef %i.bv, ptr noundef %i.bx, ptr noundef %i.by, ptr noundef %5) #10
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.z, label %.thread77

bb.z:                                             ; preds = %bb.y
  %i.cb = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.cc = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !17
  %i.cd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy_file, i32 noundef 1085, i64 noundef %i.cb, i64 noundef %i.cc, ptr noundef nonnull @.str.33) #10 ; 0 uses
  br label %bb.ad

bb.aa:                                            ; preds = %bb.g
  %i.ce = tail call i32 @H5D__virtual_copy(ptr noundef %2, ptr noundef nonnull %i.n) #10
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.ab, label %.thread77

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ch = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !17
  %i.ci = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy_file, i32 noundef 1093, i64 noundef %i.cg, i64 noundef %i.ch, ptr noundef nonnull @.str.37) #10 ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.g
  %i.cj = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ck = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !17
  %i.cl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5O__layout_copy_file, i32 noundef 1099, i64 noundef %i.cj, i64 noundef %i.ck, ptr noundef nonnull @.str.23) #10 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.j, %bb.z, %bb.ab, %bb.ac, %bb.u, %bb.p, %bb.l
  %i.cm = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_layout_t_reg_free_list, ptr noundef nonnull %i.n) #10 ; 0 uses
  br label %.thread77

.thread77:                                        ; preds = %bb.r, %bb.s, %bb.t, %bb.f, %bb.d, %bb.i, %bb.h, %bb.y, %bb.x, %bb.w, %bb.aa, %bb.a, %bb.ad
  %.2 = phi ptr [ null, %bb.ad ], [ %i.n, %bb.r ], [ null, %bb.a ], [ %i.n, %bb.i ], [ %i.n, %bb.h ], [ %i.n, %bb.y ], [ %i.n, %bb.x ], [ %i.n, %bb.w ], [ %i.n, %bb.aa ], [ null, %bb.d ], [ null, %bb.f ], [ %i.n, %bb.t ], [ %i.n, %bb.s ]
  ret ptr %.2
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @H5O__layout_debug(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.40, i32 noundef %i.h) #10 ; 0 uses
  %i.j = load i32, ptr %1, align 8, !tbaa !23     ; 2 uses
  switch i32 %i.j, label %bb.p [
    i32 2, label %bb.c
    i32 1, label %bb.l
    i32 0, label %bb.m
    i32 3, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #10 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = zext i32 %i.m to i64
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.44, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.45, i64 noundef %i.n) #10 ; 0 uses
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.47) #10 ; 0 uses
  %i.q = load i32, ptr %i.l, align 8, !tbaa !21
  %.not109 = icmp eq i32 %i.q, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.39, i64 noundef %i.s) #10 ; 0 uses
  %i.u = load i32, ptr %i.l, align 8, !tbaa !21
  %i.v = icmp ugt i32 %i.u, 1
  br i1 %i.v, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %.lr.ph107, %.peel.next
  %.0106 = phi i64 [ %i.z, %.peel.next ], [ 1, %.lr.ph107 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0106
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i64 noundef %i.x) #10 ; 0 uses
  %i.z = add nuw nsw i64 %.0106, 1                ; 2 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !21
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %i.z, %i.ab
  br i1 %i.ac, label %.peel.next, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.peel.next, %.lr.ph107, %bb.c
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.50, i64 2, i64 1, ptr %2) ; 0 uses
  %i.ad = load i32, ptr %5, align 8, !tbaa !21    ; 2 uses
  switch i32 %i.ad, label %bb.j [
    i32 0, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #10 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %._crit_edge
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53) #10 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %._crit_edge
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54) #10 ; 0 uses
  br label %bb.k

bb.g:                                             ; preds = %._crit_edge
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.55) #10 ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.56) #10 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.57) #10 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59, i32 noundef %i.ad) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2208
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.44, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.60, i64 noundef %i.am) #10 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.b
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.61) #10 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !21
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.44, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.62, i64 noundef %i.aq) #10 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 2208
  %i.at = load i64, ptr %i.as, align 8, !tbaa !21
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.44, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.63, i64 noundef %i.at) #10 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.b
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.64) #10 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2208
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.63, i64 noundef %i.ax) #10 ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.b
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.66) #10 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !21
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.44, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.67, i64 noundef %i.bb) #10 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2208
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !21
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.68, i64 noundef %i.be) #10 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 2216 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !21
  %.not108 = icmp eq i64 %i.bh, 0
  br i1 %.not108, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bi = add nsw i32 %3, 3                       ; 4 uses
  %i.bj = add nsw i32 %4, -3                      ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 2224 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %.1105 = phi i64 [ 0, %.lr.ph ], [ %i.by, %bb.o ] ; 4 uses
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.69, i32 noundef %3, ptr noundef nonnull @.str.39, i64 noundef %.1105) #10 ; 0 uses
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %i.bi, ptr noundef nonnull @.str.39, i32 noundef %i.bj, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #10 ; 0 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw [352 x i8], ptr %i.bn, i64 %.1105
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !73
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %i.bi, ptr noundef nonnull @.str.39, i32 noundef %i.bj, ptr noundef nonnull @.str.72, ptr noundef %i.bq) #10 ; 0 uses
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw [352 x i8], ptr %i.bs, i64 %.1105
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74
  %i.bw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %i.bi, ptr noundef nonnull @.str.39, i32 noundef %i.bj, ptr noundef nonnull @.str.73, ptr noundef %i.bv) #10 ; 0 uses
  %i.bx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %i.bi, ptr noundef nonnull @.str.39, i32 noundef %i.bj, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.71) #10 ; 0 uses
  %i.by = add nuw i64 %.1105, 1                   ; 2 uses
  %i.bz = load i64, ptr %i.bg, align 8, !tbaa !21
  %i.ca = icmp ult i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.o, label %.loopexit, !llvm.loop !62

bb.p:                                             ; preds = %bb.b
  %i.cb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef %3, ptr noundef nonnull @.str.39, i32 noundef %4, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.59, i32 noundef %i.j) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.k, %bb.l, %bb.m, %bb.p, %bb.a
  ret i32 0
}

declare noalias ptr @H5FL_reg_calloc(ptr noundef) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i8 @H5F_sizeof_addr(ptr noundef) local_unnamed_addr #2

declare void @H5F_addr_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare zeroext i8 @H5F_sizeof_size(ptr noundef) local_unnamed_addr #2

declare i32 @H5D__virtual_reset_layout(ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @H5F_addr_encode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @H5FL_reg_malloc(ptr noundef) local_unnamed_addr #2

declare i32 @H5D_chunk_idx_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @H5D__virtual_copy_layout(ptr noundef) local_unnamed_addr #2

declare i64 @H5D__layout_meta_size(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #2

declare i32 @H5D__contig_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5D__chunk_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5D__virtual_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5F_get_high_bound(ptr noundef) local_unnamed_addr #2

declare i32 @H5D__virtual_load_layout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5D__compact_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5D__contig_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @H5S_extent_nelem(ptr noundef) local_unnamed_addr #2

declare i64 @H5T_get_size(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @H5D__contig_is_space_alloc(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @H5D__contig_is_data_cached(ptr noundef) local_unnamed_addr #2

declare i32 @H5D__contig_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @H5D__chunk_is_space_alloc(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @H5D__chunk_is_data_cached(ptr noundef) local_unnamed_addr #2

declare i32 @H5D__chunk_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5D__virtual_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
end_hunk_1
