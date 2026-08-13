inline.NumInlined: 46
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ssim360_plane_8bit:bb.a
  %i.ahr = add nsw i32 %i.ahq, %i.aho
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !36
  %i.ahu = add nsw i32 %i.ahr, %i.aht
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !36
  %i.ahx = add nsw i32 %i.ahu, %i.ahw
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahc, i64 12
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !36
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahd, i64 12
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !36
  %i.aic = add nsw i32 %i.aib, %i.ahz
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahe, i64 12
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !36
  %i.aif = add nsw i32 %i.aic, %i.aie
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahf, i64 12
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !36
  %i.aii = add nsw i32 %i.aif, %i.aih
  %i.aij = shl nsw i32 %i.ahx, 6
  %i.aik = extractelement <2 x i32> %i.ahm, i64 0 ; 4 uses
  %i.ail = mul nsw i32 %i.aik, %i.aik
  %i.aim = extractelement <2 x i32> %i.ahm, i64 1 ; 4 uses
  %i.ain = mul nsw i32 %i.aim, %i.aim
  %i.aio = add nuw i32 %i.ain, %i.ail             ; 2 uses
  %i.aip = shl nsw i32 %i.aik, 1
  %i.aiq = mul nsw i32 %i.aip, %i.aim
  %i.air = add nsw i32 %i.aiq, 416
  %i.ais = sitofp nsz i32 %i.air to float
  %i.ait = shl i32 %i.aii, 7
  %i.aiu = mul i32 %i.aik, -2
  %.neg20.i.i = mul i32 %i.aiu, %i.aim
  %i.aiv = add i32 %.neg20.i.i, 235963
  %i.aiw = add i32 %i.aiv, %i.ait
  %i.aix = sitofp nsz i32 %i.aiw to float
  %i.aiy = fmul nnan nsz float %i.ais, %i.aix
  %i.aiz = add nuw nsw i32 %i.aio, 416
  %i.aja = uitofp nneg i32 %i.aiz to float
  %reass.sub = sub i32 %i.aij, %i.aio
  %i.ajb = add i32 %reass.sub, 235963
  %i.ajc = sitofp nsz i32 %i.ajb to float
  %i.ajd = fmul nnan nsz float %i.aja, %i.ajc
  %i.aje = fdiv nsz float %i.aiy, %i.ajd
  %i.ajf = fpext nsz float %i.aje to double
  %i.ajg = tail call nsz double @llvm.fmuladd.f64(double %i.ahb, double %i.ajf, double %.04447.i) ; 2 uses
  %i.ajh = fadd nsz double %i.agr, %i.ahb         ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i38
  br i1 %exitcond.not.i41, label %ssim360_endn_8bit.exit.loopexit, label %bb.d, !llvm.loop !126

ssim360_endn_8bit.exit.loopexit:                  ; preds = %bb.f
  %i.aji = fadd nsz double %.03355, %i.ajg
  br label %ssim360_endn_8bit.exit

ssim360_endn_8bit.exit:                           ; preds = %ssim360_endn_8bit.exit.loopexit, %bb.c
  %.143 = phi nsz double [ %.04253, %bb.c ], [ %i.ajh, %ssim360_endn_8bit.exit.loopexit ] ; 2 uses
  %.044.lcssa.i = phi double [ %.03355, %bb.c ], [ %i.aji, %ssim360_endn_8bit.exit.loopexit ] ; 2 uses
  %i.ajj = add nuw nsw i32 %.058, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond72.not = icmp eq i32 %indvars.iv, %i.a
  br i1 %exitcond72.not, label %._crit_edge60.loopexit, label %.preheader, !llvm.loop !127
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_output(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !129
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64
  %i.i = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.h) #15
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !129  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !130  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !130  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !75
  %.not = icmp eq i32 %i.m, %i.q
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !72
  %.not66 = icmp eq i32 %i.s, %i.u
  br i1 %.not66, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8512
  %i.w = load i32, ptr %i.v, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8516
  %i.y = load i32, ptr %i.x, align 4, !tbaa !77
  %.not67 = icmp eq i32 %i.w, %i.y
  br i1 %.not67, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8520
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8524
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !79
  %.not68 = icmp eq i32 %i.aa, %i.ac
  br i1 %.not68, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8536
  store i32 1, ptr %i.ad, align 8, !tbaa !37
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8536
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !37
  %i.ae = icmp eq i32 %.pre, 0
  br i1 %i.ae, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8516
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77
  %switch.i = icmp ugt i32 %i.ag, 4
  br i1 %switch.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8512
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !78
  %switch.i78 = icmp ugt i32 %i.ai, 4
  br i1 %switch.i78, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.5) #15
  br label %generate_density_map.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call ptr @av_malloc_array(i64 noundef 28, i64 noundef 4) #15 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !132
  %.not75 = icmp eq ptr %i.aj, null
  br i1 %.not75, label %generate_density_map.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.al, i8 0, i64 8192, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !57
  %.not7786 = icmp sgt i32 %i.an, 0
  br i1 %.not7786, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !57
  %i.aq = sext i32 %i.ap to i64
  %.not77 = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %.not77, label %bb.l, label %.critedge, !llvm.loop !133

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ar = tail call noalias ptr @av_calloc(i64 noundef 131072, i64 noundef 8) #15 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !134
  %.not76 = icmp eq ptr %i.ar, null
  br i1 %.not76, label %generate_density_map.exit, label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !75
  %i.av = shl nsw i32 %i.au, 1
  %i.aw = add nsw i32 %i.av, 12
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !83
  %i.ba = icmp sgt i32 %i.az, 8
  %i.bb = select i1 %i.ba, i64 8, i64 4
  %i.bc = tail call ptr @av_malloc_array(i64 noundef %i.ax, i64 noundef %i.bb) #15 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !132
  %.not73 = icmp eq ptr %i.bc, null
  br i1 %.not73, label %generate_density_map.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8568 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !135
  %.not74 = icmp eq ptr %i.bf, null
  br i1 %.not74, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.at, align 8, !tbaa !75 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !72 ; 5 uses
  %i.bj = mul nsw i32 %i.bi, %i.bg
  %i.bk = sext i32 %i.bj to i64
  %i.bl = tail call noalias ptr @av_calloc(i64 noundef %i.bk, i64 noundef 8) #15 ; 59 uses
  store ptr %i.bl, ptr %i.be, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %generate_density_map.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8560
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8564
  store i32 %i.bi, ptr %i.bn, align 4, !tbaa !45
  store i32 %i.bg, ptr %i.bm, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8520
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !80 ; 2 uses
  switch i32 %i.bp, label %bb.s [
    i32 0, label %bb.q
    i32 1, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bq = ashr i32 %i.bi, 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.br = ashr i32 %i.bg, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.0256.i = phi i32 [ %i.bi, %bb.p ], [ %i.bq, %bb.q ], [ %i.bi, %bb.r ] ; 21 uses
  %.0255.i = phi i32 [ %i.bg, %bb.p ], [ %i.bg, %bb.q ], [ %i.br, %bb.r ] ; 31 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8512
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !78
  switch i32 %i.bt, label %.preheader291.i [
    i32 4, label %.preheader292.i
    i32 0, label %.preheader295.i
    i32 1, label %.preheader298.i
    i32 2, label %.preheader303.i
  ]

.preheader303.i:                                  ; preds = %bb.s
  %i.bu = icmp sgt i32 %.0256.i, 0
  br i1 %i.bu, label %.preheader302.lr.ph.i, label %.loopexit.i

.preheader302.lr.ph.i:                            ; preds = %.preheader303.i
  %i.bv = icmp sgt i32 %.0255.i, 1
  %i.bw = uitofp nneg i32 %.0256.i to double      ; 3 uses
  %i.bx = shl nsw i32 %.0255.i, 2                 ; 3 uses
  br i1 %i.bv, label %.preheader302.lr.ph.split.i, label %.lr.ph310.i

.preheader302.lr.ph.split.i:                      ; preds = %.preheader302.lr.ph.i
  %i.by = udiv i32 %i.bx, 5
  %i.bz = zext nneg i32 %.0255.i to i64
  %wide.trip.count348.i = zext nneg i32 %.0256.i to i64
  %wide.trip.count.i = zext nneg i32 %i.by to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.bx, 20
  %n.vec = and i64 %wide.trip.count.i, 536870908  ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader302.i

.preheader298.i:                                  ; preds = %bb.s
  %i.ca = sdiv i32 %.0256.i, 6                    ; 5 uses
  %i.cb = icmp sgt i32 %.0256.i, 5
  br i1 %i.cb, label %.preheader297.lr.ph.i, label %.loopexit.i

.preheader297.lr.ph.i:                            ; preds = %.preheader298.i
  %i.cc = sdiv i32 %.0255.i, 4                    ; 6 uses
  %i.cd = icmp sgt i32 %.0255.i, 3
  %i.ce = udiv i32 %.0256.i, 3                    ; 2 uses
  %i.cf = uitofp nneg i32 %i.ce to double         ; 2 uses
  %i.cg = sdiv i32 %.0255.i, 2                    ; 2 uses
  %i.ch = sitofp nsz i32 %i.cg to double          ; 2 uses
  %i.ci = add nsw i32 %i.cc, %i.cg                ; 4 uses
  %i.cj = shl nuw nsw i32 %.0256.i, 1
  %i.ck = udiv i32 %i.cj, 3
  %i.cl = add nuw nsw i32 %i.ck, %i.ca            ; 2 uses
  %i.cm = add nuw nsw i32 %i.ca, %i.ce            ; 2 uses
  br i1 %i.cd, label %.preheader297.lr.ph.split.i, label %.loopexit.i

.preheader297.lr.ph.split.i:                      ; preds = %.preheader297.lr.ph.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8528
  %i.co = load float, ptr %i.cn, align 8, !tbaa !136
  %i.cp = fadd nsz float %i.co, 1.000000e+00      ; 2 uses
  %i.cq = fmul nsz float %i.cp, %i.cp
  %i.cr = fpext nsz float %i.cq to double
  %i.cs = zext nneg i32 %i.cc to i64
  %i.ct = zext nneg i32 %i.ca to i64
  %i.cu = zext nneg i32 %.0255.i to i64           ; 3 uses
  %i.cv = zext nneg i32 %i.cc to i64              ; 3 uses
  %i.cw = zext nneg i32 %i.ci to i64              ; 3 uses
  %i.cx = zext nneg i32 %i.cm to i64
  %i.cy = zext nneg i32 %i.cl to i64
  %i.cz = zext nneg i32 %i.ca to i64
  br label %.preheader297.i

.preheader295.i:                                  ; preds = %bb.s
  %i.da = sdiv i32 %.0256.i, 4                    ; 4 uses
  %i.db = icmp sgt i32 %.0256.i, 3
  br i1 %i.db, label %.preheader294.lr.ph.i, label %.loopexit.i

.preheader294.lr.ph.i:                            ; preds = %.preheader295.i
  %i.dc = sdiv i32 %.0255.i, 6                    ; 6 uses
  %i.dd = icmp sgt i32 %.0255.i, 5
  %i.de = lshr i32 %.0256.i, 1                    ; 2 uses
  %i.df = uitofp nneg i32 %i.de to double         ; 2 uses
  %i.dg = sdiv i32 %.0255.i, 3                    ; 2 uses
  %i.dh = sitofp nsz i32 %i.dg to double          ; 2 uses
  %i.di = add nuw nsw i32 %i.da, %i.de            ; 2 uses
  %i.dj = shl nsw i32 %.0255.i, 1
  %i.dk = sdiv i32 %i.dj, 3
  %i.dl = add nsw i32 %i.dk, %i.dc                ; 3 uses
  %i.dm = add nsw i32 %i.dc, %i.dg                ; 3 uses
  br i1 %i.dd, label %.preheader294.i.preheader, label %.loopexit.i

.preheader294.i.preheader:                        ; preds = %.preheader294.lr.ph.i
  %i.dn = zext nneg i32 %i.dc to i64
  %i.do = zext nneg i32 %i.da to i64
  %i.dp = zext nneg i32 %.0255.i to i64           ; 2 uses
  %i.dq = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.dr = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.ds = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dt = zext nneg i32 %i.di to i64
  %i.du = zext nneg i32 %i.da to i64
  br label %.preheader294.i

.preheader292.i:                                  ; preds = %bb.s
  %i.dv = icmp sgt i32 %.0256.i, 0
  br i1 %i.dv, label %.lr.ph326.i, label %.loopexit.i

.lr.ph326.i:                                      ; preds = %.preheader292.i
  %i.dw = uitofp nneg i32 %.0256.i to double
  %i.dx = icmp sgt i32 %.0255.i, 0
  br i1 %i.dx, label %.lr.ph326.split.i, label %.loopexit.i

.lr.ph326.split.i:                                ; preds = %.lr.ph326.i
  %i.dy = zext nneg i32 %.0255.i to i64           ; 4 uses
  %wide.trip.count374.i = zext nneg i32 %.0256.i to i64
  %min.iters.check190 = icmp ult i32 %.0255.i, 4
  %n.vec192 = and i64 %i.dy, 2147483644           ; 3 uses
  %cmp.n199 = icmp eq i64 %n.vec192, %i.dy
  br label %.lr.ph323.i

.preheader291.i:                                  ; preds = %bb.s
  %i.dz = icmp sgt i32 %.0256.i, 0
  %i.ea = icmp sgt i32 %.0255.i, 0
  %or.cond.i = and i1 %i.dz, %i.ea
  br i1 %or.cond.i, label %.preheader290.lr.ph.split.i, label %.loopexit.i

.preheader290.lr.ph.split.i:                      ; preds = %.preheader291.i
  %i.eb = zext nneg i32 %.0255.i to i64
  %i.ec = zext nneg i32 %.0256.i to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = mul i64 %i.ed, %i.eb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bl, i8 0, i64 %i.ee, i1 false), !tbaa !52
  br label %.loopexit.i

.lr.ph323.i:                                      ; preds = %._crit_edge324.i, %.lr.ph326.split.i
  %indvars.iv371.i = phi i64 [ 0, %.lr.ph326.split.i ], [ %indvars.iv.next372.i, %._crit_edge324.i ] ; 3 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv371.i to i32
  %i.eg = uitofp nneg i32 %i.ef to double
  %i.eh = fadd nnan nsz double %i.eg, 5.000000e-01
  %i.ei = fdiv nnan nsz double %i.eh, %i.dw
  %i.ej = fadd nnan nsz double %i.ei, -5.000000e-01
  %i.ek = fmul nnan nsz double %i.ej, f0x400921FB54442D18
  %i.el = tail call nsz double @llvm.cos.f64(double %i.ek) ; 2 uses
  %i.em = mul nuw nsw i64 %indvars.iv371.i, %i.dy
  %invariant.gep415.i.a = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.em ; 2 uses
  br i1 %min.iters.check190, label %scalar.ph189.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph323.i
  %broadcast.splatinsert193 = insertelement <2 x double> poison, double %i.el, i64 0
  %broadcast.splat194 = shufflevector <2 x double> %broadcast.splatinsert193, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph191
  %index196 = phi i64 [ 0, %vector.ph191 ], [ %index.next197, %vector.body195 ] ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep415.i.a, i64 %index196 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x double> %broadcast.splat194, ptr %i.en, align 8, !tbaa !52
  store <2 x double> %broadcast.splat194, ptr %i.eo, align 8, !tbaa !52
  %index.next197 = add nuw i64 %index196, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next197, %n.vec192
  br i1 %i.ep, label %middle.block198, label %vector.body195, !llvm.loop !137

middle.block198:                                  ; preds = %vector.body195
  br i1 %cmp.n199, label %._crit_edge324.i, label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %.lr.ph323.i, %middle.block198
  %indvars.iv366.i.ph = phi i64 [ 0, %.lr.ph323.i ], [ %n.vec192, %middle.block198 ]
  br label %scalar.ph189

._crit_edge324.i:                                 ; preds = %scalar.ph189, %middle.block198
  %indvars.iv.next372.i = add nuw nsw i64 %indvars.iv371.i, 1 ; 2 uses
  %exitcond375.not.i = icmp eq i64 %indvars.iv.next372.i, %wide.trip.count374.i
  br i1 %exitcond375.not.i, label %.loopexit.i, label %.lr.ph323.i, !llvm.loop !138

scalar.ph189:                                     ; preds = %scalar.ph189.preheader, %scalar.ph189
  %indvars.iv366.i = phi i64 [ %indvars.iv.next367.i, %scalar.ph189 ], [ %indvars.iv366.i.ph, %scalar.ph189.preheader ] ; 2 uses
  %gep416.i.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep415.i.a, i64 %indvars.iv366.i
  store double %i.el, ptr %gep416.i.a, align 8, !tbaa !52
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 1 ; 2 uses
  %exitcond370.not.i.a = icmp eq i64 %indvars.iv.next367.i, %i.dy
  br i1 %exitcond370.not.i.a, label %._crit_edge324.i, label %scalar.ph189, !llvm.loop !139

.preheader294.i:                                  ; preds = %.preheader294.i.preheader, %._crit_edge319.i
  %indvars.iv103 = phi i64 [ 0, %.preheader294.i.preheader ], [ %indvars.iv.next104, %._crit_edge319.i ] ; 4 uses
  %i.eq = trunc nuw nsw i64 %indvars.iv103 to i32 ; 2 uses
  %i.er = uitofp nneg i32 %i.eq to double
  %i.es = fadd nsz double %i.er, 5.000000e-01     ; 2 uses
  %i.et = fdiv nnan nsz double %i.es, %i.df
  %i.eu = fmul nsz double %i.es, %i.et
  %i.ev = fdiv nsz double %i.eu, %i.df
  %i.ew = xor i32 %i.eq, -1                       ; 2 uses
  %i.ex = add nsw i32 %i.da, %i.ew
  %i.ey = mul nsw i32 %i.ex, %.0255.i             ; 3 uses
  %i.ez = add nsw i32 %i.ey, %i.dc                ; 2 uses
  %i.fa = add nuw nsw i64 %indvars.iv103, %i.do
  %i.fb = mul nuw nsw i64 %i.fa, %i.dp            ; 3 uses
  %i.fc = add nuw nsw i64 %i.fb, %i.dq            ; 2 uses
  %i.fd = add nsw i32 %i.ey, %i.dm                ; 2 uses
  %i.fe = add nuw nsw i64 %i.fb, %i.dr            ; 2 uses
  %i.ff = add nsw i32 %i.ey, %i.dl                ; 2 uses
  %i.fg = add nuw nsw i64 %i.fb, %i.ds            ; 2 uses
  %i.fh = add nsw i32 %i.di, %i.ew
  %i.fi = mul nsw i32 %i.fh, %.0255.i             ; 3 uses
  %i.fj = add nsw i32 %i.fi, %i.dc                ; 2 uses
  %i.fk = add nuw nsw i64 %indvars.iv103, %i.dt
  %i.fl = mul nuw nsw i64 %i.fk, %i.dp            ; 3 uses
  %i.fm = add nuw nsw i64 %i.fl, %i.dq            ; 2 uses
  %i.fn = add nsw i32 %i.fi, %i.dm                ; 2 uses
  %i.fo = add nuw nsw i64 %i.fl, %i.dr            ; 2 uses
end_hunk_0
begin_hunk_1_@config_output:bb.a
  %indvars.iv345.i = phi i64 [ 0, %.preheader302.lr.ph.split.i ], [ %indvars.iv.next346.i, %._crit_edge.i ] ; 3 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv345.i to i32
  %i.kr = uitofp nneg i32 %i.kq to double
  %i.ks = fadd nnan nsz double %i.kr, 5.000000e-01
  %i.kt = fdiv nnan nsz double %i.ks, %i.bw
  %i.ku = fadd nnan nsz double %i.kt, -5.000000e-01
  %i.kv = fmul nnan nsz double %i.ku, f0x3FF028F5C0000000
  %i.kw = fmul nnan nsz double %i.kv, f0x3FF921FB54442D18
  %i.kx = tail call nsz double @llvm.cos.f64(double %i.kw) ; 3 uses
  %i.ky = fmul nsz double %i.kx, %i.kx
  %i.kz = fmul nsz double %i.kx, %i.ky            ; 2 uses
  %i.la = mul nuw nsw i64 %indvars.iv345.i, %i.bz
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.la ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader302.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kz, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store <2 x double> %broadcast.splat, ptr %i.lb, align 8, !tbaa !52
  store <2 x double> %broadcast.splat, ptr %i.lc, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ld = icmp eq i64 %index.next, %n.vec
  br i1 %i.ld, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader302.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader302.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph310.i:                                      ; preds = %._crit_edge.i, %.preheader302.lr.ph.i
  %i.le = sdiv i32 %i.bx, 5                       ; 3 uses
  %i.lf = icmp slt i32 %i.le, %.0255.i
  %i.lg = sitofp nsz i32 %.0255.i to double       ; 2 uses
  %i.lh = fneg nsz double %i.lg                   ; 2 uses
  %i.li = fmul nnan nsz double %i.lg, 1.000000e-01 ; 2 uses
  br i1 %i.lf, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph310.i
  %i.lj = fmul nnan nsz double %i.bw, 2.500000e-01
  %i.lk = fneg nsz double %i.bw
  %i.ll = lshr i32 %.0256.i, 1
  %i.lm = sext i32 %i.le to i64                   ; 4 uses
  %i.ln = zext nneg i32 %i.ll to i64
  %i.lo = sext i32 %.0255.i to i64                ; 3 uses
  %wide.trip.count358.i = zext nneg i32 %.0256.i to i64
  %i.lp = insertelement <2 x double> poison, double %i.lk, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lt = sub nsw i64 %i.lo, %i.lm                ; 3 uses
  %min.iters.check170 = icmp ult i64 %i.lt, 2
  %n.vec172 = and i64 %i.lt, -2                   ; 3 uses
  %i.lu = add nsw i64 %n.vec172, %i.lm
  %broadcast.splatinsert175 = insertelement <2 x double> poison, double %i.lh, i64 0
  %broadcast.splat176 = shufflevector <2 x double> %broadcast.splatinsert175, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <2 x double> poison, double %i.li, i64 0
  %broadcast.splat178 = shufflevector <2 x double> %broadcast.splatinsert177, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <2 x i32> poison, i32 %i.le, i64 0
  %broadcast.splat180 = shufflevector <2 x i32> %broadcast.splatinsert179, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat180, <i32 0, i32 1>
  %cmp.n187 = icmp eq i64 %i.lt, %n.vec172
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %indvars.iv.next346.i = add nuw nsw i64 %indvars.iv345.i, 1 ; 2 uses
  %exitcond349.not.i = icmp eq i64 %indvars.iv.next346.i, %wide.trip.count348.i
  br i1 %exitcond349.not.i, label %.lr.ph310.i, label %.preheader302.i, !llvm.loop !145

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store double %i.kz, ptr %gep.i, align 8, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !146

.lr.ph.i:                                         ; preds = %._crit_edge308.i, %.lr.ph.preheader.i
  %indvars.iv355.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next356.i, %._crit_edge308.i ] ; 4 uses
  %i.lv = trunc nuw nsw i64 %indvars.iv355.i to i32
  %i.lw = uitofp nneg i32 %i.lv to double
  %i.lx = fadd nsz double %i.lw, 5.000000e-01
  %i.ly = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.lz = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ma = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> <double 2.500000e-01, double 7.500000e-01>, <2 x double> %i.lz)
  %i.mb = fmul nsz <2 x double> %i.ma, splat (double f0x3FF028F5C0000000)
  %i.mc = fdiv nsz <2 x double> %i.mb, %i.ls      ; 2 uses
  %i.md = fmul nsz <2 x double> %i.mc, %i.mc      ; 2 uses
  %i.me = icmp samesign ult i64 %indvars.iv355.i, %i.ln
  %i.mf = extractelement <2 x double> %i.md, i64 0
  %i.mg = extractelement <2 x double> %i.md, i64 1
  %i.mh = select nsz i1 %i.me, double %i.mf, double %i.mg ; 2 uses
  %i.mi = mul nsw i64 %indvars.iv355.i, %i.lo
  %invariant.gep413.i.a = getelementptr [8 x i8], ptr %i.bl, i64 %i.mi ; 3 uses
  br i1 %min.iters.check170, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert173 = insertelement <2 x double> poison, double %i.mh, i64 0
  %broadcast.splat174 = shufflevector <2 x double> %broadcast.splatinsert173, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body181

vector.body181:                                   ; preds = %pred.store.continue184, %vector.ph171
  %index182 = phi i64 [ 0, %vector.ph171 ], [ %index.next185, %pred.store.continue184 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph171 ], [ %vec.ind.next, %pred.store.continue184 ] ; 2 uses
  %i.mj = add i64 %index182, %i.lm                ; 2 uses
  %i.mk = sitofp nsz <2 x i32> %vec.ind to <2 x double>
  %i.ml = fadd nnan nsz <2 x double> %i.mk, splat (double 5.000000e-01)
  %i.mm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat176, <2 x double> splat (double 9.000000e-01), <2 x double> %i.ml)
  %i.mn = fmul nsz <2 x double> %i.mm, splat (double f0x3FF028F5C0000000)
  %i.mo = fdiv nsz <2 x double> %i.mn, %broadcast.splat178 ; 2 uses
  %i.mp = fmul nsz <2 x double> %i.mo, %i.mo
  %i.mq = fadd nsz <2 x double> %broadcast.splat174, %i.mp ; 3 uses
  %i.mr = fcmp nsz ule <2 x double> %i.mq, splat (double 1.000000e+00) ; 2 uses
  %i.ms = extractelement <2 x i1> %i.mr, i64 0
  br i1 %i.ms, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body181
  %i.mt = extractelement <2 x double> %i.mq, i64 0
  %i.mu = fadd nsz double %i.mt, 1.000000e+00
  %i.mv = fdiv nsz double 1.000000e+00, %i.mu
  %i.mw = getelementptr [8 x i8], ptr %invariant.gep413.i.a, i64 %i.mj
  %i.mx = tail call nsz double @llvm.pow.f64(double %i.mv, double 1.500000e+00)
  store double %i.mx, ptr %i.mw, align 8, !tbaa !52
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body181
  %i.my = extractelement <2 x i1> %i.mr, i64 1
  br i1 %i.my, label %pred.store.if183, label %pred.store.continue184

pred.store.if183:                                 ; preds = %pred.store.continue
  %i.mz = extractelement <2 x double> %i.mq, i64 1
  %i.na = fadd nsz double %i.mz, 1.000000e+00
  %i.nb = fdiv nsz double 1.000000e+00, %i.na
  %i.nc = getelementptr [8 x i8], ptr %invariant.gep413.i.a, i64 %i.mj
  %i.nd = getelementptr i8, ptr %i.nc, i64 8
  %i.ne = tail call nsz double @llvm.pow.f64(double %i.nb, double 1.500000e+00)
  store double %i.ne, ptr %i.nd, align 8, !tbaa !52
  br label %pred.store.continue184

pred.store.continue184:                           ; preds = %pred.store.if183, %pred.store.continue
  %index.next185 = add nuw i64 %index182, 2       ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.nf = icmp eq i64 %index.next185, %n.vec172
  br i1 %i.nf, label %middle.block186, label %vector.body181, !llvm.loop !147

middle.block186:                                  ; preds = %pred.store.continue184
  br i1 %cmp.n187, label %._crit_edge308.i, label %scalar.ph169.preheader

scalar.ph169.preheader:                           ; preds = %.lr.ph.i, %middle.block186
  %indvars.iv350.i.ph = phi i64 [ %i.lm, %.lr.ph.i ], [ %i.lu, %middle.block186 ]
  br label %scalar.ph169

._crit_edge308.i:                                 ; preds = %bb.w, %middle.block186
  %indvars.iv.next356.i = add nuw nsw i64 %indvars.iv355.i, 1 ; 2 uses
  %exitcond359.not.i = icmp eq i64 %indvars.iv.next356.i, %wide.trip.count358.i
  br i1 %exitcond359.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !148

scalar.ph169:                                     ; preds = %scalar.ph169.preheader, %bb.w
  %indvars.iv350.i = phi i64 [ %indvars.iv.next351.i, %bb.w ], [ %indvars.iv350.i.ph, %scalar.ph169.preheader ] ; 3 uses
  %i.ng = trunc nsw i64 %indvars.iv350.i to i32
  %i.nh = sitofp nsz i32 %i.ng to double
  %i.ni = fadd nnan nsz double %i.nh, 5.000000e-01
  %i.nj = tail call nsz double @llvm.fmuladd.f64(double %i.lh, double 9.000000e-01, double %i.ni)
  %i.nk = fmul nsz double %i.nj, f0x3FF028F5C0000000
  %i.nl = fdiv nsz double %i.nk, %i.li            ; 2 uses
  %i.nm = fmul nsz double %i.nl, %i.nl
  %i.nn = fadd nsz double %i.mh, %i.nm            ; 2 uses
  %i.no = fcmp nsz ogt double %i.nn, 1.000000e+00
  br i1 %i.no, label %bb.w, label %bb.v

bb.v:                                             ; preds = %scalar.ph169
  %i.np = fadd nsz double %i.nn, 1.000000e+00
  %i.nq = fdiv nsz double 1.000000e+00, %i.np
  %i.nr = tail call nsz double @llvm.pow.f64(double %i.nq, double 1.500000e+00)
  %gep414.i.a = getelementptr [8 x i8], ptr %invariant.gep413.i.a, i64 %indvars.iv350.i
  store double %i.nr, ptr %gep414.i.a, align 8, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %scalar.ph169
  %indvars.iv.next351.i = add nsw i64 %indvars.iv350.i, 1 ; 2 uses
  %exitcond354.not.i = icmp eq i64 %indvars.iv.next351.i, %i.lo
  br i1 %exitcond354.not.i, label %._crit_edge308.i, label %scalar.ph169, !llvm.loop !149

.loopexit.i:                                      ; preds = %._crit_edge308.i, %._crit_edge314.i, %._crit_edge319.i, %._crit_edge324.i, %.lr.ph310.i, %.preheader290.lr.ph.split.i, %.preheader291.i, %.lr.ph326.i, %.preheader292.i, %.preheader294.lr.ph.i, %.preheader295.i, %.preheader297.lr.ph.i, %.preheader298.i, %.preheader303.i
  switch i32 %i.bp, label %.critedge [
    i32 0, label %.preheader286.i
    i32 1, label %.preheader288.i
  ]

.preheader288.i:                                  ; preds = %.loopexit.i
  %i.ns = icmp sgt i32 %.0256.i, 0
  %i.nt = icmp sgt i32 %.0255.i, 0
  %or.cond423.i = and i1 %i.ns, %i.nt
  br i1 %or.cond423.i, label %.preheader287.lr.ph.split.i.a, label %.critedge

.preheader287.lr.ph.split.i.a:                    ; preds = %.preheader288.i
  %1 = zext nneg i32 %.0255.i to i64              ; 5 uses
  %wide.trip.count389.i = zext nneg i32 %.0256.i to i64
  %invariant.gep417.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %1 ; 2 uses
  %min.iters.check202 = icmp ult i32 %.0255.i, 4
  %n.vec204 = and i64 %1, 2147483644              ; 3 uses
  %cmp.n210 = icmp eq i64 %n.vec204, %1
  br label %.preheader287.i

.preheader286.i:                                  ; preds = %.loopexit.i
  %i.nu = icmp sgt i32 %.0256.i, 0
  %i.nv = icmp sgt i32 %.0255.i, 0
  %or.cond424.i = and i1 %i.nu, %i.nv
  br i1 %or.cond424.i, label %.preheader.lr.ph.split.i, label %.critedge

.preheader.lr.ph.split.i:                         ; preds = %.preheader286.i
  %i.nw = zext nneg i32 %.0255.i to i64           ; 8 uses
  %i.nx = zext nneg i32 %.0256.i to i64           ; 3 uses
  %i.ny = mul nuw nsw i64 %i.nx, %i.nw
  %i.nz = shl i64 %i.ny, 3
  %min.iters.check213 = icmp ult i32 %.0255.i, 4
  %i.oa = add i64 %i.nz, -1
  %diff.check.a = icmp ult i64 %i.oa, 31
  %or.cond = select i1 %min.iters.check213, i1 true, i1 %diff.check.a
  %n.vec215 = and i64 %i.nw, 2147483644           ; 3 uses
  %cmp.n222 = icmp eq i64 %n.vec215, %i.nw
  %xtraiter.a = and i64 %i.nw, 3                  ; 2 uses
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge337.i, %.preheader.lr.ph.split.i
  %indvars.iv397.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next398.i, %._crit_edge337.i ] ; 3 uses
  %i.ob = mul nuw nsw i64 %indvars.iv397.i, %i.nw
  %i.oc = add nuw nsw i64 %indvars.iv397.i, %i.nx
  %i.od = mul nuw nsw i64 %i.oc, %i.nw
  %invariant.gep419.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ob ; 6 uses
  %invariant.gep421.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.od ; 6 uses
  br i1 %or.cond, label %scalar.ph212.preheader, label %vector.body216

vector.body216:                                   ; preds = %.preheader.i, %vector.body216
  %index217 = phi i64 [ %index.next220, %vector.body216 ], [ 0, %.preheader.i ] ; 3 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %index217 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %wide.load218 = load <2 x double>, ptr %i.oe, align 8, !tbaa !52
  %wide.load219 = load <2 x double>, ptr %i.of, align 8, !tbaa !52
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %index217 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store <2 x double> %wide.load218, ptr %i.og, align 8, !tbaa !52
  store <2 x double> %wide.load219, ptr %i.oh, align 8, !tbaa !52
  %index.next220 = add nuw i64 %index217, 4       ; 2 uses
  %i.oi = icmp eq i64 %index.next220, %n.vec215
  br i1 %i.oi, label %middle.block221, label %vector.body216, !llvm.loop !150

middle.block221:                                  ; preds = %vector.body216
  br i1 %cmp.n222, label %._crit_edge337.i, label %scalar.ph212.preheader

scalar.ph212.preheader:                           ; preds = %.preheader.i, %middle.block221
  %indvars.iv392.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec215, %middle.block221 ] ; 3 uses
  br i1 %lcmp.mod.not.a, label %scalar.ph212.prol.loopexit, label %scalar.ph212.prol

scalar.ph212.prol:                                ; preds = %scalar.ph212.preheader, %scalar.ph212.prol
  %indvars.iv392.i.prol = phi i64 [ %indvars.iv.next393.i.prol, %scalar.ph212.prol ], [ %indvars.iv392.i.ph, %scalar.ph212.preheader ] ; 3 uses
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %scalar.ph212.prol ], [ 0, %scalar.ph212.preheader ]
  %gep420.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv392.i.prol
  %i.oj = load double, ptr %gep420.i.prol, align 8, !tbaa !52
  %gep422.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv392.i.prol
  store double %i.oj, ptr %gep422.i.prol, align 8, !tbaa !52
  %indvars.iv.next393.i.prol = add nuw nsw i64 %indvars.iv392.i.prol, 1 ; 2 uses
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %scalar.ph212.prol.loopexit, label %scalar.ph212.prol, !llvm.loop !151

scalar.ph212.prol.loopexit:                       ; preds = %scalar.ph212.prol, %scalar.ph212.preheader
  %indvars.iv392.i.unr = phi i64 [ %indvars.iv392.i.ph, %scalar.ph212.preheader ], [ %indvars.iv.next393.i.prol, %scalar.ph212.prol ]
  %i.ok = sub nsw i64 %indvars.iv392.i.ph, %i.nw
  %i.ol = icmp ugt i64 %i.ok, -4
  br i1 %i.ol, label %._crit_edge337.i, label %scalar.ph212

._crit_edge337.i:                                 ; preds = %scalar.ph212.prol.loopexit, %scalar.ph212, %middle.block221
  %indvars.iv.next398.i = add nuw nsw i64 %indvars.iv397.i, 1 ; 2 uses
  %exitcond401.not.i = icmp eq i64 %indvars.iv.next398.i, %i.nx
  br i1 %exitcond401.not.i, label %.critedge, label %.preheader.i, !llvm.loop !152

scalar.ph212:                                     ; preds = %scalar.ph212.prol.loopexit, %scalar.ph212
  %indvars.iv392.i = phi i64 [ %indvars.iv.next393.i.3, %scalar.ph212 ], [ %indvars.iv392.i.unr, %scalar.ph212.prol.loopexit ] ; 6 uses
  %gep420.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv392.i
  %i.om = load double, ptr %gep420.i, align 8, !tbaa !52
  %gep422.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv392.i
  store double %i.om, ptr %gep422.i, align 8, !tbaa !52
  %indvars.iv.next393.i = add nuw nsw i64 %indvars.iv392.i, 1 ; 2 uses
  %gep420.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv.next393.i
  %i.on = load double, ptr %gep420.i.1, align 8, !tbaa !52
  %gep422.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv.next393.i
  store double %i.on, ptr %gep422.i.1, align 8, !tbaa !52
  %indvars.iv.next393.i.1 = add nuw nsw i64 %indvars.iv392.i, 2 ; 2 uses
  %gep420.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv.next393.i.1
  %i.oo = load double, ptr %gep420.i.2, align 8, !tbaa !52
  %gep422.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv.next393.i.1
  store double %i.oo, ptr %gep422.i.2, align 8, !tbaa !52
  %indvars.iv.next393.i.2 = add nuw nsw i64 %indvars.iv392.i, 3 ; 2 uses
  %gep420.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv.next393.i.2
  %i.op = load double, ptr %gep420.i.3, align 8, !tbaa !52
  %gep422.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv.next393.i.2
  store double %i.op, ptr %gep422.i.3, align 8, !tbaa !52
  %indvars.iv.next393.i.3 = add nuw nsw i64 %indvars.iv392.i, 4 ; 2 uses
  %exitcond396.not.i.3 = icmp eq i64 %indvars.iv.next393.i.3, %i.nw
  br i1 %exitcond396.not.i.3, label %._crit_edge337.i, label %scalar.ph212, !llvm.loop !153

.preheader287.i:                                  ; preds = %._crit_edge333.i, %.preheader287.lr.ph.split.i.a
  %indvars.iv386.i = phi i64 [ 0, %.preheader287.lr.ph.split.i.a ], [ %indvars.iv.next387.i, %._crit_edge333.i ] ; 2 uses
  %2 = mul nuw nsw i64 %indvars.iv386.i, %1       ; 2 uses
  br i1 %min.iters.check202, label %scalar.ph201.preheader, label %vector.body205

vector.body205:                                   ; preds = %.preheader287.i, %vector.body205
  %index206 = phi i64 [ %index.next208, %vector.body205 ], [ 0, %.preheader287.i ] ; 2 uses
  %3 = add nuw nsw i64 %index206, %2              ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %3 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %wide.load = load <2 x double>, ptr %i.oq, align 8, !tbaa !52
  %wide.load207 = load <2 x double>, ptr %i.or, align 8, !tbaa !52
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep417.i, i64 %3 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  store <2 x double> %wide.load, ptr %i.os, align 8, !tbaa !52
  store <2 x double> %wide.load207, ptr %i.ot, align 8, !tbaa !52
  %index.next208 = add nuw i64 %index206, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next208, %n.vec204
  br i1 %i.ou, label %middle.block209, label %vector.body205, !llvm.loop !154

middle.block209:                                  ; preds = %vector.body205
  br i1 %cmp.n210, label %._crit_edge333.i, label %scalar.ph201.preheader

scalar.ph201.preheader:                           ; preds = %.preheader287.i, %middle.block209
  %indvars.iv381.i.ph = phi i64 [ 0, %.preheader287.i ], [ %n.vec204, %middle.block209 ]
  br label %scalar.ph201

._crit_edge333.i:                                 ; preds = %scalar.ph201, %middle.block209
  %indvars.iv.next387.i = add nuw nsw i64 %indvars.iv386.i, 1 ; 2 uses
  %exitcond390.not.i = icmp eq i64 %indvars.iv.next387.i, %wide.trip.count389.i
  br i1 %exitcond390.not.i, label %.critedge, label %.preheader287.i, !llvm.loop !155

scalar.ph201:                                     ; preds = %scalar.ph201.preheader, %scalar.ph201
  %indvars.iv381.i = phi i64 [ %indvars.iv.next382.i, %scalar.ph201 ], [ %indvars.iv381.i.ph, %scalar.ph201.preheader ] ; 2 uses
  %4 = add nuw nsw i64 %indvars.iv381.i, %2       ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %4
  %6 = load double, ptr %5, align 8, !tbaa !52
  %gep418.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep417.i, i64 %4
  store double %6, ptr %gep418.i, align 8, !tbaa !52
  %indvars.iv.next382.i = add nuw nsw i64 %indvars.iv381.i, 1 ; 2 uses
  %exitcond385.not.i = icmp eq i64 %indvars.iv.next382.i, %1
  br i1 %exitcond385.not.i, label %._crit_edge333.i, label %scalar.ph201, !llvm.loop !156

.critedge:                                        ; preds = %bb.k, %._crit_edge333.i, %._crit_edge337.i, %bb.j, %.preheader288.i, %.preheader286.i, %.loopexit.i, %bb.n
  %i.ov = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ow = tail call i32 @ff_framesync_init_dualinput(ptr noundef nonnull %i.ov, ptr noundef %i.a) #15 ; 2 uses
  %i.ox = icmp slt i32 %i.ow, 0
  br i1 %i.ox, label %generate_density_map.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.oy = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pa = load <2 x i32>, ptr %i.oy, align 8, !tbaa !36
  store <2 x i32> %i.pa, ptr %i.oz, align 8, !tbaa !36
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.pc = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.pd = load i64, ptr %i.pc, align 8
  store i64 %i.pd, ptr %i.pb, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pf = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.pg = load i64, ptr %i.pf, align 8
  store i64 %i.pg, ptr %i.pe, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.pi = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.pj = load i64, ptr %i.pi, align 8
  store i64 %i.pj, ptr %i.ph, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 1, ptr %i.pk, align 4, !tbaa !157
  %i.pl = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 1, ptr %i.pl, align 8, !tbaa !158
  %i.pm = tail call i32 @ff_framesync_configure(ptr noundef nonnull %i.ov) #15
  %. = tail call i32 @llvm.smin.i32(i32 %i.pm, i32 0)
  br label %generate_density_map.exit

generate_density_map.exit:                        ; preds = %bb.l, %bb.o, %bb.x, %.critedge, %bb.m, %bb.i, %bb.h
  %.1 = phi i32 [ -12, %bb.o ], [ %., %bb.x ], [ %i.ow, %.critedge ], [ -12, %bb.i ], [ -22, %bb.h ], [ -12, %bb.m ], [ -12, %bb.l ]
  ret i32 %.1
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_framesync_init_dualinput(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_framesync_configure(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #5

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @ssim360_child_next(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readnone captures(address_is_null) %1) #7 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = select i1 %.not, ptr %i.a, ptr null
  ret ptr %i.b
}

declare ptr @ff_framesync_child_class_iterate(ptr noundef) #3

declare void @ff_framesync_preinit(ptr noundef) local_unnamed_addr #3

declare ptr @avpriv_fopen_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal i32 @do_ssim360(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 4 uses
  %1 = alloca %struct.SampleParams, align 4       ; 20 uses
  %2 = alloca %struct.SampleParams, align 4       ; 20 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca [4 x double], align 16            ; 6 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca [4 x i32], align 16               ; 6 uses
  %i.j = alloca [4 x double], align 16            ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !159  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9    ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 208 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.r = load i64, ptr %i.q, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store ptr null, ptr %i.h, align 8, !tbaa !41
  %i.s = call i32 @ff_framesync_dualinput_get(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #15 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = add i64 %i.r, 1
  %i.v = urem i64 %i.p, %i.u
  %i.w = load i64, ptr %i.o, align 8, !tbaa !160
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.o, align 8, !tbaa !160
  %i.y = and i64 %i.v, 4294967295
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !162
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !130
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.ad = call i32 @ff_filter_frame(ptr noundef %i.ab, ptr noundef %i.ac) #15
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !163 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 312 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8536 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !37
  %.not176 = icmp eq i32 %i.ah, 0
  br i1 %.not176, label %generate_tape_maps.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 8648 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !36
  %.not177 = icmp eq i32 %i.aj, 0
  br i1 %.not177, label %bb.f, label %generate_tape_maps.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8520
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !80 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 8524
  %i.an = load i32, ptr %i.am, align 4, !tbaa !79 ; 3 uses
  %i.ao = icmp ne i32 %i.an, 2
  %i.ap = icmp ne i32 %i.al, 2
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 120 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !57
  %.not8188.i = icmp sgt i32 %i.as, 0
  br i1 %.not8188.i, label %.lr.ph.i, label %generate_tape_maps.exit.thread

.lr.ph.i:                                         ; preds = %bb.f
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 8584
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 8600
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 8616
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 8632
  %i.ay = icmp eq i32 %i.al, 1                    ; 2 uses
  %i.az = icmp eq i32 %i.al, 0                    ; 2 uses
  %i.ba = icmp eq i32 %i.an, 1                    ; 2 uses
  %i.bb = icmp eq i32 %i.an, 0                    ; 2 uses
  %i.bc = zext i1 %i.ay to i32
  %i.bd = zext i1 %i.az to i32
  %i.be = zext i1 %i.ba to i32
  %i.bf = zext i1 %i.bb to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 8512
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 8528
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 8516
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 8532
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 8664
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 8728
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 8792
  br label %bb.g

bb.g:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next93.i, %bb.p ] ; 11 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv92.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !36 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv92.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !36 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv92.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !36 ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.smin.i32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sin.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !14, i64 112}
!21 = !{!"SSIM360Context", !11, i64 0, !22, i64 8, !27, i64 104, !14, i64 112, !6, i64 120, !7, i64 128, !7, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !7, i64 176, !25, i64 184, !28, i64 192, !25, i64 200, !25, i64 208, !7, i64 216, !29, i64 248, !7, i64 256, !7, i64 288, !7, i64 320, !6, i64 8512, !6, i64 8516, !6, i64 8520, !6, i64 8524, !30, i64 8528, !30, i64 8532, !6, i64 8536, !14, i64 8544, !6, i64 8552, !6, i64 8556, !31, i64 8560, !33, i64 8576, !7, i64 8584, !7, i64 8600, !7, i64 8616, !7, i64 8632, !7, i64 8648, !7, i64 8664, !7, i64 8728, !7, i64 8792, !12, i64 8824}
!22 = !{!"FFFrameSync", !11, i64 0, !23, i64 8, !6, i64 16, !24, i64 20, !25, i64 32, !12, i64 40, !12, i64 48, !6, i64 56, !6, i64 60, !7, i64 64, !7, i64 65, !26, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92}
!23 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!24 = !{!"AVRational", !6, i64 0, !6, i64 4}
!25 = !{!"long", !7, i64 0}
!26 = !{!"p1 _ZTS13FFFrameSyncIn", !12, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!28 = !{!"p1 int", !12, i64 0}
!29 = !{!"double", !7, i64 0}
!30 = !{!"float", !7, i64 0}
!31 = !{!"Map2D", !6, i64 0, !6, i64 4, !32, i64 8}
!32 = !{!"p1 double", !12, i64 0}
!33 = !{!"p1 _ZTS11HeatmapList", !12, i64 0}
!34 = !{!27, !27, i64 0}
!35 = !{!21, !27, i64 104}
!36 = !{!6, !6, i64 0}
!37 = !{!21, !6, i64 8536}
!38 = !{!21, !14, i64 8544}
!39 = !{!21, !6, i64 8552}
!40 = !{!21, !6, i64 8556}
!41 = !{!33, !33, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!7, !7, i64 0}
!44 = !{!31, !32, i64 8}
!45 = !{!31, !6, i64 4}
!46 = !{!31, !6, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{null}
!50 = !{!51, !32, i64 8}
!51 = !{!"HeatmapList", !31, i64 0, !33, i64 16}
!52 = !{!29, !29, i64 0}
!53 = !{!51, !33, i64 16}
!54 = distinct !{!54, !48}
!55 = !{!21, !12, i64 48}
!56 = !{!21, !25, i64 200}
!57 = !{!21, !6, i64 120}
!58 = !{!21, !29, i64 248}
!59 = !{!21, !6, i64 172}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = distinct !{!62, !48}
!63 = distinct !{!63, !48}
!64 = !{!65, !6, i64 36}
!65 = !{!"AVFilterLink", !23, i64 0, !15, i64 8, !23, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !24, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !66, i64 72, !24, i64 96, !67, i64 104, !6, i64 112, !6, i64 116, !68, i64 120, !68, i64 168}
!66 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!67 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!68 = !{!"AVFilterFormatsConfig", !69, i64 0, !69, i64 8, !70, i64 16, !69, i64 24, !69, i64 32, !69, i64 40}
!69 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!70 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!71 = !{!65, !23, i64 16}
!72 = !{!65, !6, i64 44}
!73 = !{!74, !7, i64 10}
!74 = !{!"AVPixFmtDescriptor", !14, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !25, i64 16, !7, i64 24, !14, i64 104}
!75 = !{!65, !6, i64 40}
!76 = !{!74, !7, i64 9}
!77 = !{!21, !6, i64 8516}
!78 = !{!21, !6, i64 8512}
!79 = !{!21, !6, i64 8524}
!80 = !{!21, !6, i64 8520}
!81 = !{!74, !7, i64 8}
!82 = !{!21, !6, i64 168}
!83 = !{!84, !6, i64 16}
!84 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!85 = !{!21, !6, i64 164}
!86 = !{!21, !12, i64 8824}
!87 = distinct !{!87, !48, !88, !89}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = distinct !{!90, !48, !88, !89}
!91 = distinct !{!91, !48, !89, !88}
!92 = distinct !{!92, !48, !89, !88}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!96, !96, i64 0}
!96 = !{!"short", !7, i64 0}
!97 = !{!25, !25, i64 0}
!98 = distinct !{!98, !48}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, !94}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!107}
!107 = distinct !{!107, !105}
!108 = !{!109}
!109 = distinct !{!109, !105}
!110 = !{!111}
!111 = distinct !{!111, !105}
!112 = !{!113}
!113 = distinct !{!113, !105}
!114 = !{!115}
!115 = distinct !{!115, !105}
!116 = !{!117}
!117 = distinct !{!117, !105}
!118 = !{!119}
!119 = distinct !{!119, !105}
!120 = !{!121}
!121 = distinct !{!121, !105}
!122 = !{!117, !113, !109, !104, !119, !115, !111, !107}
!123 = distinct !{!123, !48, !88, !89}
!124 = distinct !{!124, !48, !88}
!125 = distinct !{!125, !48}
!126 = distinct !{!126, !48}
!127 = distinct !{!127, !48}
!128 = !{!65, !23, i64 0}
!129 = !{!10, !16, i64 32}
!130 = !{!131, !131, i64 0}
!131 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!132 = !{!21, !28, i64 192}
!133 = distinct !{!133, !48}
!134 = !{!32, !32, i64 0}
!135 = !{!21, !32, i64 8568}
!136 = !{!21, !30, i64 8528}
!137 = distinct !{!137, !48, !88, !89}
!138 = distinct !{!138, !48}
!139 = distinct !{!139, !48, !89, !88}
!140 = distinct !{!140, !48}
!141 = distinct !{!141, !48}
!142 = distinct !{!142, !48}
!143 = distinct !{!143, !48}
!144 = distinct !{!144, !48, !88, !89}
!145 = distinct !{!145, !48}
!146 = distinct !{!146, !48, !89, !88}
!147 = distinct !{!147, !48, !88, !89}
!148 = distinct !{!148, !48}
!149 = distinct !{!149, !48, !89, !88}
!150 = distinct !{!150, !48, !88, !89}
!151 = distinct !{!151, !94}
!152 = distinct !{!152, !48}
!153 = distinct !{!153, !48, !88}
!154 = distinct !{!154, !48, !88, !89}
!155 = distinct !{!155, !48}
!156 = distinct !{!156, !48, !89, !88}
!157 = !{!21, !6, i64 92}
!158 = !{!21, !6, i64 88}
!159 = !{!22, !23, i64 8}
!160 = !{!21, !25, i64 208}
!161 = !{!21, !25, i64 184}
!162 = !{!10, !16, i64 56}
!163 = !{!164, !164, i64 0}
!164 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!165 = !{!166, !6, i64 0}
!166 = !{!"SampleParams", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !30, i64 32}
!167 = !{!166, !6, i64 4}
!168 = !{!166, !6, i64 8}
!169 = !{!166, !6, i64 12}
!170 = !{!166, !6, i64 16}
!171 = !{!166, !6, i64 20}
!172 = !{!166, !6, i64 24}
!173 = !{!166, !6, i64 28}
!174 = !{!166, !30, i64 32}
!175 = !{!21, !30, i64 8532}
!176 = !{!177, !177, i64 0}
!177 = !{!"p1 _ZTS11BilinearMap", !12, i64 0}
!178 = !{!30, !30, i64 0}
!179 = distinct !{!179, !48}
!180 = distinct !{!180, !48}
!181 = distinct !{!181, !48}
!182 = !{!21, !33, i64 8576}
!183 = distinct !{!183, !48}
!184 = distinct !{!184, !48, !88, !89}
!185 = distinct !{!185, !48}
!186 = distinct !{!186, !48}
!187 = distinct !{!187, !48}
!188 = distinct !{!188, !48, !89, !88}
!189 = distinct !{!189, !48}
!190 = distinct !{!190, !48}
!191 = distinct !{!191, !48}
!192 = distinct !{!192, !48}
!193 = !{!194, !6, i64 0}
!194 = !{!"BilinearMap", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!195 = !{!194, !6, i64 4}
!196 = !{!194, !6, i64 8}
!197 = !{!194, !6, i64 12}
!198 = !{!194, !6, i64 16}
!199 = !{!194, !6, i64 20}
!200 = !{!194, !6, i64 24}
!201 = !{!194, !6, i64 28}
!202 = distinct !{!202, !48}
!203 = distinct !{!203, !48}
!204 = !{!51, !6, i64 0}
!205 = distinct !{!205, !48}
end_hunk_2
