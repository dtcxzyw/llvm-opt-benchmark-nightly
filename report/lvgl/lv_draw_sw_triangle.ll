Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_triangle?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_draw_sw_triangle:bb.a
  %.pre183 = load i32, ptr %i.bi, align 4, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.l, %bb.m, %bb.g, %bb.c
  %i.bn = phi i32 [ %i.an, %bb.e ], [ %i.bk, %bb.l ], [ %.pre183, %bb.m ], [ %i.av, %bb.g ], [ %i.ae, %bb.c ]
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.bs = icmp sgt i32 %i.bp, %i.bn
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @lv_point_swap(ptr noundef nonnull %4, ptr noundef nonnull %i.bq) #6
  %.pre184 = load i32, ptr %i.bo, align 4, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bt = phi i32 [ %.pre184, %bb.o ], [ %i.bp, %bb.n ]
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !14 ; 2 uses
  %i.bx = icmp sgt i32 %i.bt, %i.bw
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @lv_point_swap(ptr noundef nonnull %4, ptr noundef nonnull %i.bu) #6
  %.pre185 = load i32, ptr %i.bv, align 4, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.by = phi i32 [ %.pre185, %bb.q ], [ %i.bw, %bb.p ] ; 2 uses
  %i.bz = load i32, ptr %i.br, align 4, !tbaa !14 ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @lv_point_swap(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bq) #6
  %.pre186 = load i32, ptr %i.br, align 4, !tbaa !14
  %.pre187 = load i32, ptr %i.bv, align 4, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cb = phi i32 [ %.pre187, %bb.s ], [ %i.by, %bb.r ] ; 2 uses
  %i.cc = phi i32 [ %.pre186, %bb.s ], [ %i.bz, %bb.r ]
  %i.cd = load i32, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %i.ce = load i32, ptr %4, align 16, !tbaa !11   ; 3 uses
  %i.cf = sub nsw i32 %i.cd, %i.ce
  %i.cg = load i32, ptr %i.bo, align 4, !tbaa !14 ; 3 uses
  %i.ch = sub nsw i32 %i.cc, %i.cg
  %i.ci = mul nsw i32 %i.ch, %i.cf
  %i.cj = sub nsw i32 %i.cb, %i.cg
  %i.ck = load i32, ptr %i.bq, align 16, !tbaa !11
  %.neg = sub i32 %i.ce, %i.ck
  %.neg157 = mul i32 %.neg, %i.cj
  %i.cl = add i32 %.neg157, %i.ci                 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %.lobit = lshr i32 %i.cl, 31
  call void @lv_draw_sw_mask_line_points_init(ptr noundef nonnull %5, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.cd, i32 noundef %i.cb, i32 noundef %.lobit) #6
  %i.co = load i32, ptr %4, align 16, !tbaa !11
  %i.cp = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.cq = load i32, ptr %i.bq, align 16, !tbaa !11
  %i.cr = load i32, ptr %i.br, align 4, !tbaa !14
  %i.cs = zext i1 %i.cm to i32                    ; 2 uses
  call void @lv_draw_sw_mask_line_points_init(ptr noundef nonnull %6, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef %i.cs) #6
  %i.ct = load i32, ptr %i.bv, align 4, !tbaa !14 ; 4 uses
  %i.cu = load i32, ptr %i.br, align 4, !tbaa !14 ; 2 uses
  %i.cv = icmp eq i32 %i.ct, %i.cu
  %i.cw = load i32, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %i.cx = load i32, ptr %i.bq, align 16, !tbaa !11 ; 2 uses
  br i1 %i.cv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @lv_draw_sw_mask_line_points_init(ptr noundef nonnull %7, i32 noundef %i.cw, i32 noundef %i.ct, i32 noundef %i.cx, i32 noundef %i.ct, i32 noundef 2) #6
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @lv_draw_sw_mask_line_points_init(ptr noundef nonnull %7, i32 noundef %i.cw, i32 noundef %i.ct, i32 noundef %i.cx, i32 noundef %i.cu, i32 noundef %i.cs) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %5, ptr %i.a, align 16, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %6, ptr %i.cy, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %7, ptr %i.cz, align 16, !tbaa !19
  %i.da = call i32 @lv_area_get_width(ptr noundef nonnull %3) #6 ; 9 uses
  %i.db = sext i32 %i.da to i64                   ; 5 uses
  %i.dc = call ptr @lv_malloc(i64 noundef %i.db) #6 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !21
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 5 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 5 uses
  store i32 %i.de, ptr %i.df, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 33 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dg, ptr noundef nonnull align 8 dereferenceable(3) %i.dh, i64 3, i1 false), !tbaa.struct !23
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 91 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !32
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store i8 %i.dj, ptr %i.dk, align 8, !tbaa !35
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store ptr %i.dc, ptr %i.dl, align 8, !tbaa !36
  store ptr %8, ptr %9, align 8, !tbaa !37
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %8, ptr %i.dm, align 8, !tbaa !38
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 0, ptr %i.dn, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 68
  store i32 0, ptr %i.do, align 4, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.ds = load i8, ptr %i.dr, align 1
  %.fr = freeze i8 %i.ds
  %i.dt = and i8 %.fr, 15                         ; 2 uses
  %i.du = call i32 @lv_area_get_width(ptr noundef nonnull %2) #6
  %i.dv = call i32 @lv_area_get_height(ptr noundef nonnull %2) #6
  %i.dw = call ptr @lv_draw_sw_grad_get(ptr noundef nonnull %i.dq, i32 noundef %i.du, i32 noundef %i.dv) #6
  %.fr177 = freeze ptr %i.dw                      ; 6 uses
  %i.dx = icmp ne ptr %.fr177, null               ; 3 uses
  %i.dy = icmp eq i8 %i.dt, 2                     ; 2 uses
  %or.cond = and i1 %i.dx, %i.dy
  br i1 %or.cond, label %.thread204, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !15 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !17
  %.not167 = icmp sgt i32 %i.ea, %i.ec
  br i1 %.not167, label %._crit_edge, label %.lr.ph170

.thread204:                                       ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %8, ptr %i.ed, align 8, !tbaa !42
  %i.ee = load ptr, ptr %.fr177, align 8, !tbaa !44
  %i.ef = load i32, ptr %3, align 4, !tbaa !13
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [3 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = load i32, ptr %2, align 4, !tbaa !13
  %i.ej = sext i32 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej                    ; 2 uses
  %i.el = getelementptr inbounds [3 x i8], ptr %i.eh, i64 %i.ek
  store ptr %i.el, ptr %i.dp, align 8, !tbaa !41
  %i.em = getelementptr inbounds nuw i8, ptr %.fr177, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !45
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.eg
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.ek
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 15, ptr %i.eq, align 4, !tbaa !46
  %i.er = freeze ptr %i.ep                        ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !15 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !17
  %.not167206 = icmp sgt i32 %i.et, %i.ev
  br i1 %.not167206, label %._crit_edge, label %.lr.ph170.split

.lr.ph170:                                        ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.ex = icmp eq i8 %i.dt, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.fr177, i64 8
  br i1 %i.ex, label %.lr.ph170.split.us, label %.thread.preheader

.lr.ph170.split.us:                               ; preds = %.lr.ph170
  br i1 %i.dx, label %.lr.ph170.split.us.split.us, label %.lr.ph170.split.us.split

.lr.ph170.split.us.split.us:                      ; preds = %.lr.ph170.split.us, %.thread.us.us
  %.0123168.us.us = phi i32 [ %i.fl, %.thread.us.us ], [ %i.ea, %.lr.ph170.split.us ] ; 6 uses
  store i32 %.0123168.us.us, ptr %i.dd, align 4, !tbaa !15
  store i32 %.0123168.us.us, ptr %i.df, align 4, !tbaa !17
  call void @lv_memset(ptr noundef %i.dc, i8 noundef zeroext -1, i64 noundef %i.db) #6
  %i.ez = load i32, ptr %3, align 4, !tbaa !13
  %i.fa = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.dc, i32 noundef %i.ez, i32 noundef %.0123168.us.us, i32 noundef %i.da) #6
  store i32 %i.fa, ptr %i.ew, align 8, !tbaa !47
  %i.fb = load ptr, ptr %.fr177, align 8, !tbaa !44
  %i.fc = load i32, ptr %i.o, align 4, !tbaa !15
  %i.fd = sub nsw i32 %.0123168.us.us, %i.fc
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds [3 x i8], ptr %i.fb, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dg, ptr noundef nonnull align 1 dereferenceable(3) %i.ff, i64 3, i1 false), !tbaa.struct !23
  %i.fg = load ptr, ptr %i.ey, align 8, !tbaa !45
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.fe
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !22  ; 2 uses
  store i8 %i.fi, ptr %i.dk, align 8, !tbaa !35
  %i.fj = load i8, ptr %i.di, align 1, !tbaa !32  ; 2 uses
  %i.fk = icmp ult i8 %i.fj, -3
  br i1 %i.fk, label %bb.y, label %.thread.us.us

bb.y:                                             ; preds = %.lr.ph170.split.us.split.us
  %10 = call i8 @llvm.umulh.i8(i8 %i.fi, i8 %i.fj)
  store i8 %10, ptr %i.dk, align 8, !tbaa !35
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.y, %.lr.ph170.split.us.split.us
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %9) #6
  %i.fl = add nsw i32 %.0123168.us.us, 1
  %i.fm = load i32, ptr %i.eb, align 4, !tbaa !17
  %.not.us.us.not = icmp slt i32 %.0123168.us.us, %i.fm
  br i1 %.not.us.us.not, label %.lr.ph170.split.us.split.us, label %._crit_edge, !llvm.loop !8

.lr.ph170.split.us.split:                         ; preds = %.lr.ph170.split.us
  store i32 %i.ea, ptr %i.dd, align 4, !tbaa !15
  store i32 %i.ea, ptr %i.df, align 4, !tbaa !17
  call void @lv_memset(ptr noundef %i.dc, i8 noundef zeroext -1, i64 noundef %i.db) #6
  %i.fn = load i32, ptr %3, align 4, !tbaa !13
  %i.fo = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.dc, i32 noundef %i.fn, i32 noundef %i.ea, i32 noundef %i.da) #6 ; 0 uses
  br label %bb.ag

.lr.ph170.split:                                  ; preds = %.thread204
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.fq = icmp sgt i32 %i.da, 0
  %i.fr = icmp ne ptr %i.er, null
  %or.cond3 = and i1 %i.dy, %i.fr
  br i1 %or.cond3, label %.lr.ph170.split.split.us.preheader, label %.thread.preheader

.thread.preheader:                                ; preds = %.lr.ph170, %.lr.ph170.split
  %i.fs = phi ptr [ %i.eu, %.lr.ph170.split ], [ %i.eb, %.lr.ph170 ]
  %i.ft = phi i32 [ %i.et, %.lr.ph170.split ], [ %i.ea, %.lr.ph170 ]
  %i.fu = phi ptr [ %i.fp, %.lr.ph170.split ], [ %i.ew, %.lr.ph170 ]
  br label %.thread

.lr.ph170.split.split.us.preheader:               ; preds = %.lr.ph170.split
  %wide.trip.count = zext i32 %i.da to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fv = icmp eq i32 %i.da, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod218 = trunc i32 %i.da to i1
  br label %.lr.ph170.split.split.us

.lr.ph170.split.split.us:                         ; preds = %.lr.ph170.split.split.us.preheader, %bb.af
  %.0123168.us171 = phi i32 [ %i.gn, %bb.af ], [ %i.et, %.lr.ph170.split.split.us.preheader ] ; 5 uses
  store i32 %.0123168.us171, ptr %i.dd, align 4, !tbaa !15
  store i32 %.0123168.us171, ptr %i.df, align 4, !tbaa !17
  call void @lv_memset(ptr noundef %i.dc, i8 noundef zeroext -1, i64 noundef %i.db) #6
  %i.fw = load i32, ptr %3, align 4, !tbaa !13
  %i.fx = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.dc, i32 noundef %i.fw, i32 noundef %.0123168.us171, i32 noundef %i.da) #6 ; 2 uses
  store i32 %i.fx, ptr %i.fp, align 8, !tbaa !47
  switch i32 %i.fx, label %.thread.us172 [
    i32 2, label %bb.aa
    i32 1, label %bb.z
    i32 0, label %bb.af
  ]

bb.z:                                             ; preds = %.lr.ph170.split.split.us
  store ptr %i.er, ptr %i.dl, align 8, !tbaa !36
  store i32 2, ptr %i.fp, align 8, !tbaa !47
  br label %.thread.us172

bb.aa:                                            ; preds = %.lr.ph170.split.split.us
  store ptr %i.dc, ptr %i.dl, align 8, !tbaa !36
  br i1 %i.fq, label %.lr.ph.us.preheader, label %.thread.us172

.lr.ph.us.preheader:                              ; preds = %bb.aa
  br i1 %i.fv, label %.lr.ph.us.epil.preheader, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.ad
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.ad ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.ad ], [ 0, %.lr.ph.us.preheader ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !22  ; 2 uses
  %i.ga = icmp ult i8 %i.fz, -3
  br i1 %i.ga, label %bb.ab, label %.lr.ph.us.1

bb.ab:                                            ; preds = %.lr.ph.us
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !22
  %11 = call i8 @llvm.umulh.i8(i8 %i.gc, i8 %i.fz)
  store i8 %11, ptr %i.gb, align 1, !tbaa !22
  br label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %bb.ab, %.lr.ph.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv.next
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !22  ; 2 uses
  %i.gf = icmp ult i8 %i.ge, -3
  br i1 %i.gf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.us.1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !22
  %12 = call i8 @llvm.umulh.i8(i8 %i.gh, i8 %i.ge)
  store i8 %12, ptr %i.gg, align 1, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.us.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.us172.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !9

.thread.us172.loopexit.unr-lcssa:                 ; preds = %bb.ad
  br i1 %lcmp.mod.not, label %.thread.us172, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %.thread.us172.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next.1, %.thread.us172.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv.epil.init
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !22  ; 2 uses
  %i.gk = icmp ult i8 %i.gj, -3
  br i1 %i.gk, label %bb.ae, label %.thread.us172

bb.ae:                                            ; preds = %.lr.ph.us.epil.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.epil.init ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !22
  %13 = call i8 @llvm.umulh.i8(i8 %i.gm, i8 %i.gj)
  store i8 %13, ptr %i.gl, align 1, !tbaa !22
  br label %.thread.us172

.thread.us172:                                    ; preds = %.thread.us172.loopexit.unr-lcssa, %bb.ae, %.lr.ph.us.epil.preheader, %bb.aa, %bb.z, %.lr.ph170.split.split.us
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %9) #6
  br label %bb.af

bb.af:                                            ; preds = %.thread.us172, %.lr.ph170.split.split.us
  %i.gn = add nsw i32 %.0123168.us171, 1
  %i.go = load i32, ptr %i.eu, align 4, !tbaa !17
  %.not.us173.not = icmp slt i32 %.0123168.us171, %i.go
  br i1 %.not.us173.not, label %.lr.ph170.split.split.us, label %._crit_edge, !llvm.loop !8

.thread:                                          ; preds = %.thread.preheader, %.thread
  %.0123168 = phi i32 [ %i.gr, %.thread ], [ %i.ft, %.thread.preheader ] ; 5 uses
  store i32 %.0123168, ptr %i.dd, align 4, !tbaa !15
  store i32 %.0123168, ptr %i.df, align 4, !tbaa !17
  call void @lv_memset(ptr noundef %i.dc, i8 noundef zeroext -1, i64 noundef %i.db) #6
  %i.gp = load i32, ptr %3, align 4, !tbaa !13
  %i.gq = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.dc, i32 noundef %i.gp, i32 noundef %.0123168, i32 noundef %i.da) #6
  store i32 %i.gq, ptr %i.fu, align 8, !tbaa !47
  call void @lv_draw_sw_blend(ptr noundef nonnull %0, ptr noundef nonnull %9) #6
  %i.gr = add nsw i32 %.0123168, 1
  %i.gs = load i32, ptr %i.fs, align 4, !tbaa !17
  %.not.not = icmp slt i32 %.0123168, %i.gs
  br i1 %.not.not, label %.thread, label %._crit_edge, !llvm.loop !8

bb.ag:                                            ; preds = %.lr.ph170.split.us.split, %bb.ag
  br label %bb.ag

._crit_edge:                                      ; preds = %.thread.us.us, %.thread, %bb.af, %.thread204, %bb.x
  call void @lv_free(ptr noundef %i.dc) #6
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %7) #6
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %5) #6
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %6) #6
  br i1 %i.dx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge
  call void @lv_draw_sw_grad_cleanup(ptr noundef nonnull %.fr177) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @lv_point_from_precise(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @lv_point_swap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @lv_draw_sw_mask_line_points_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @lv_draw_sw_grad_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare i32 @lv_draw_sw_mask_apply(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_sw_blend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_sw_mask_free_param(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_sw_grad_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !48}
!9 = distinct !{!9, !48}
!10 = !{!"", !5, i64 0, !5, i64 4}
!11 = !{!10, !5, i64 0}
!12 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!13 = !{!12, !5, i64 0}
!14 = !{!10, !5, i64 4}
!15 = !{!12, !5, i64 4}
!16 = !{!12, !5, i64 8}
!17 = !{!12, !5, i64 12}
!18 = !{!"any pointer", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !20, i64 12, i64 4, !20}
!22 = !{!4, !4, i64 0}
!23 = !{i64 0, i64 1, !22, i64 1, i64 1, !22, i64 2, i64 1, !22}
!24 = !{!"p1 _ZTS9_lv_obj_t", !18, i64 0}
!25 = !{!"p1 _ZTS11_lv_layer_t", !18, i64 0}
!26 = !{!"short", !4, i64 0}
!27 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!28 = !{!"long", !4, i64 0}
!29 = !{!"", !24, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !25, i64 24, !26, i64 32, !26, i64 34, !27, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !28, i64 48, !18, i64 56}
!30 = !{!"", !4, i64 0, !4, i64 10, !5, i64 11, !5, i64 11, !4, i64 12, !18, i64 48}
!31 = !{!"", !29, i64 0, !4, i64 64, !27, i64 88, !4, i64 91, !30, i64 96}
!32 = !{!31, !4, i64 91}
!33 = !{!"p1 omnipotent char", !18, i64 0}
!34 = !{!"_lv_draw_sw_blend_dsc_t", !18, i64 0, !18, i64 8, !5, i64 16, !5, i64 20, !18, i64 24, !4, i64 32, !27, i64 33, !33, i64 40, !5, i64 48, !18, i64 56, !5, i64 64, !5, i64 68}
!35 = !{!34, !4, i64 32}
!36 = !{!34, !33, i64 40}
!37 = !{!34, !18, i64 0}
!38 = !{!34, !18, i64 56}
!39 = !{!34, !5, i64 64}
!40 = !{!34, !5, i64 68}
!41 = !{!34, !18, i64 8}
!42 = !{!34, !18, i64 24}
!43 = !{!"", !18, i64 0, !33, i64 8, !5, i64 16}
!44 = !{!43, !18, i64 0}
!45 = !{!43, !33, i64 8}
!46 = !{!34, !5, i64 20}
!47 = !{!34, !5, i64 48}
!48 = !{!"llvm.loop.mustprogress"}
end_hunk_0
