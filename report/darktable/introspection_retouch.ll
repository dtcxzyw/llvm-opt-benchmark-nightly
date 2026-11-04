Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@modify_roi_in:bb.a
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !244
  %i.bf = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.be, i32 noundef %i.ap) #27 ; 5 uses
  %.not155.i = icmp eq ptr %i.bf, null
  br i1 %.not155.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #27
  %i.bg = call i32 @dt_masks_get_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #27
  %.not156.i = icmp eq i32 %i.bg, 0
  br i1 %.not156.i, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load float, ptr %i.ak, align 4, !tbaa !245 ; 4 uses
  %i.bi = load i32, ptr %i.m, align 4, !tbaa !13
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, %i.bj
  %i.bl = fptosi float %i.bk to i32               ; 2 uses
  store i32 %i.bl, ptr %i.m, align 4, !tbaa !13
  %i.bm = load i32, ptr %i.n, align 4, !tbaa !13
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %i.bm to float
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bh, %i.bn
  %i.bp = fptosi float %i.bo to i32               ; 2 uses
  store i32 %i.bp, ptr %i.n, align 4, !tbaa !13
  %i.bq = load i32, ptr %i.k, align 4, !tbaa !13
  %i.br = load i32, ptr %i.l, align 4, !tbaa !13
  %i.bs = insertelement <2 x i32> poison, i32 %i.bq, i64 0
  %i.bt = insertelement <2 x i32> %i.bs, i32 %i.br, i64 1
  %i.bu = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bt to <2 x float>
  %i.bv = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, %i.bu
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>   ; 4 uses
  %i.bz = extractelement <2 x i32> %i.by, i64 0   ; 3 uses
  store i32 %i.bz, ptr %i.k, align 4, !tbaa !13
  %i.ca = extractelement <2 x i32> %i.by, i64 1   ; 3 uses
  store i32 %i.ca, ptr %i.l, align 4, !tbaa !13
  %i.cb = load i32, ptr %i.t, align 4, !tbaa !246 ; 2 uses
  %i.cc = load i32, ptr %i.r, align 4, !tbaa !247
  %i.cd = add nsw i32 %i.cc, %i.cb
  %.not157.i = icmp sgt i32 %i.cd, %i.ca
  br i1 %.not157.i, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ce = add nsw i32 %i.ca, %i.bp                ; 3 uses
  %.not158.i = icmp sgt i32 %i.ce, %i.cb
  br i1 %.not158.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %3, align 4, !tbaa !248   ; 2 uses
  %i.cg = load i32, ptr %i.q, align 4, !tbaa !249
  %i.ch = add nsw i32 %i.cg, %i.cf
  %.not159.i = icmp sgt i32 %i.ch, %i.bz
  br i1 %.not159.i, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ci = add nsw i32 %i.bz, %i.bl                ; 3 uses
  %.not160.i = icmp sgt i32 %i.ci, %i.cf
  br i1 %.not160.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cj = load i32, ptr %i.az, align 4, !tbaa !107 ; 3 uses
  %i.ck = icmp eq i32 %i.cj, 2
  br i1 %i.ck, label %.thread168.i, label %bb.l

.thread168.i:                                     ; preds = %bb.k
  %i.cl = shufflevector <4 x i32> %i.an, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.cm = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.by, <2 x i32> %i.cl)
  %i.cn = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %i.co = insertelement <2 x i32> %i.cn, i32 %i.ce, i64 1
  %i.cp = shufflevector <4 x i32> %i.an, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.cq = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.co, <2 x i32> %i.cp)
  %i.cr = shufflevector <2 x i32> %i.cm, <2 x i32> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cs = sitofp <4 x i32> %i.cr to <4 x float>
  %i.ct = fptosi <4 x float> %i.cs to <4 x i32>
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cu = icmp eq i32 %i.cj, 3
  %i.cv = icmp sgt i32 %.2.i.i, -1
  %or.cond.i = and i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %.thread179.i, label %bb.m

.thread179.i:                                     ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !15
  %i.cy = load float, ptr %i.al, align 8, !tbaa !250
  %i.cz = fmul reassoc nsz arcp contract afn float %i.bh, 4.000000e+00
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.cx
  %i.db = fdiv reassoc nsz arcp contract afn float %i.da, %i.cy
  %i.dc = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.db)
  %i.dd = fptosi float %i.dc to i32
  %i.de = shufflevector <2 x i32> %i.by, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.df = insertelement <4 x i32> %i.de, i32 %i.ci, i64 2
  %i.dg = insertelement <4 x i32> %i.df, i32 %i.ce, i64 3 ; 3 uses
  %i.dh = icmp sgt <4 x i32> %i.an, %i.dg
  %i.di = icmp slt <4 x i32> %i.an, %i.dg
  %i.dj = shufflevector <4 x i1> %i.dh, <4 x i1> %i.di, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dk = insertelement <4 x i32> poison, i32 %i.dd, i64 0
  %i.dl = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dm = sub nsw <4 x i32> %i.an, %i.dl
  %i.dn = add nsw <4 x i32> %i.an, %i.dl
  %i.do = shufflevector <4 x i32> %i.dm, <4 x i32> %i.dn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dp = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.do, <4 x i32> %i.dg)
  %i.dq = select <4 x i1> %i.dj, <4 x i32> %i.dp, <4 x i32> %i.an
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dr = icmp eq i32 %i.cj, 1
  br i1 %i.dr, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %.thread168.i
  %i.ds = phi <4 x i32> [ %i.ct, %.thread168.i ], [ %i.an, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !123
  %i.dv = and i32 %i.du, 99
  %or.cond46.i.i = icmp eq i32 %i.dv, 0
  br i1 %or.cond46.i.i, label %rt_masks_get_delta_to_destination.exit.thread.i, label %rt_masks_get_delta_to_destination.exit.i

rt_masks_get_delta_to_destination.exit.i:         ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !16
  %i.dy = load ptr, ptr %i.bf, align 8, !tbaa !175
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !126
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.eb = call fastcc i32 @rt_masks_point_calc_delta(ptr noundef readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %3, ptr noundef %i.dz, ptr noundef readonly %i.ea, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, i32 noundef %i.dx)
  %.not161.i = icmp eq i32 %i.eb, 0
  br i1 %.not161.i, label %rt_masks_get_delta_to_destination.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %rt_masks_get_delta_to_destination.exit.i
  %i.ec = load i32, ptr %i.l, align 4, !tbaa !13
  %i.ed = load float, ptr %i.p, align 4, !tbaa !12
  %i.ee = shufflevector <4 x i32> %i.ds, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ef = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ee to <2 x float>
  %i.eg = load i32, ptr %i.k, align 4, !tbaa !13
  %i.eh = load float, ptr %i.o, align 4, !tbaa !12
  %i.ei = load i32, ptr %i.m, align 4, !tbaa !13
  %i.ej = shufflevector <4 x i32> %i.ds, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.ek = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ej to <2 x float>
  %i.el = load i32, ptr %i.n, align 4, !tbaa !13
  %i.em = insertelement <2 x i32> poison, i32 %i.eg, i64 0
  %i.en = insertelement <2 x i32> %i.em, i32 %i.ec, i64 1 ; 2 uses
  %i.eo = sitofp reassoc nsz arcp contract afn <2 x i32> %i.en to <2 x float>
  %i.ep = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.ed, i64 1 ; 2 uses
  %i.er = fsub reassoc nsz arcp contract afn <2 x float> %i.eo, %i.eq
  %i.es = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.er, <2 x float> %i.ef)
  %i.et = insertelement <2 x i32> poison, i32 %i.ei, i64 0
  %i.eu = insertelement <2 x i32> %i.et, i32 %i.el, i64 1
  %i.ev = add nsw <2 x i32> %i.eu, %i.en
  %i.ew = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ev to <2 x float>
  %i.ex = fsub reassoc nsz arcp contract afn <2 x float> %i.ew, %i.eq
  %i.ey = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ex, <2 x float> %i.ek)
  %i.ez = shufflevector <2 x float> %i.es, <2 x float> %i.ey, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fa = fptosi <4 x float> %i.ez to <4 x i32>
  br label %rt_masks_get_delta_to_destination.exit.thread.i

rt_masks_get_delta_to_destination.exit.thread.i:  ; preds = %bb.o, %rt_masks_get_delta_to_destination.exit.i, %bb.n
  %i.fb = phi <4 x i32> [ %i.fa, %bb.o ], [ %i.ds, %rt_masks_get_delta_to_destination.exit.i ], [ %i.ds, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  br label %bb.p

bb.p:                                             ; preds = %rt_masks_get_delta_to_destination.exit.thread.i, %bb.m, %.thread179.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.fc = phi <4 x i32> [ %i.an, %bb.f ], [ %i.an, %bb.g ], [ %i.an, %bb.j ], [ %i.an, %bb.i ], [ %i.an, %bb.h ], [ %i.fb, %rt_masks_get_delta_to_destination.exit.thread.i ], [ %i.an, %bb.m ], [ %i.dq, %.thread179.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.e, %rt_get_index_from_formid.exit.i, %bb.c
  %i.fd = phi <4 x i32> [ %i.an, %bb.c ], [ %i.an, %rt_get_index_from_formid.exit.i ], [ %i.fc, %bb.p ], [ %i.an, %bb.e ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.095194.i, i64 8
  %.095.i = load ptr, ptr %i.fe, align 8, !tbaa !124 ; 2 uses
  %.not153.i = icmp eq ptr %.095.i, null
  br i1 %.not153.i, label %rt_compute_roi_in.exit.loopexit, label %bb.c

rt_compute_roi_in.exit.loopexit:                  ; preds = %bb.q
  %i.ff = shufflevector <4 x i32> %i.fd, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.fg = shufflevector <4 x i32> %i.fd, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  br label %rt_compute_roi_in.exit

rt_compute_roi_in.exit:                           ; preds = %rt_compute_roi_in.exit.loopexit, %bb.a, %bb.b, %.preheader.i
  %i.fh = phi <2 x i32> [ %i.u, %bb.a ], [ %i.u, %bb.b ], [ %i.u, %.preheader.i ], [ %i.fg, %rt_compute_roi_in.exit.loopexit ]
  %i.fi = phi <2 x i32> [ %i.v, %bb.a ], [ %i.v, %bb.b ], [ %i.v, %.preheader.i ], [ %i.ff, %rt_compute_roi_in.exit.loopexit ]
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %rt_extend_roi_in_for_clone.exit.outer

rt_extend_roi_in_for_clone.exit.outer:            ; preds = %.critedge56.i, %rt_compute_roi_in.exit
  %.ph123 = phi <2 x i32> [ %i.fh, %rt_compute_roi_in.exit ], [ %i.lt, %.critedge56.i ] ; 5 uses
  %.ph124 = phi <2 x i32> [ %i.fi, %rt_compute_roi_in.exit ], [ %i.lu, %.critedge56.i ] ; 5 uses
  %.ph125 = phi <2 x i32> [ splat (i32 -1), %rt_compute_roi_in.exit ], [ %.ph123, %.critedge56.i ]
  %.ph126 = phi <2 x i32> [ splat (i32 -1), %rt_compute_roi_in.exit ], [ %.ph124, %.critedge56.i ]
  %i.fk = icmp eq <2 x i32> %.ph124, %.ph126      ; 2 uses
  %4 = extractelement <2 x i1> %i.fk, i64 0
  %5 = extractelement <2 x i1> %i.fk, i64 1
  %or.cond.peel = select i1 %4, i1 %5, i1 false
  br i1 %or.cond.peel, label %6, label %.critedge.peel

6:                                                ; preds = %rt_extend_roi_in_for_clone.exit.outer
  %7 = icmp eq <2 x i32> %.ph123, %.ph125         ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %or.cond56.peel = select i1 %8, i1 %9, i1 false
  br i1 %or.cond56.peel, label %.loopexit, label %.critedge.peel

.critedge.peel:                                   ; preds = %6, %rt_extend_roi_in_for_clone.exit.outer
  %i.fl = load ptr, ptr %i.w, align 16, !tbaa !199 ; 2 uses
  %i.fm = load ptr, ptr %i.y, align 8, !tbaa !242
  %i.fn = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2584
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !244
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !120
  %i.fs = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.fp, i32 noundef %i.fr) #27 ; 3 uses
  %.not.i58.peel = icmp eq ptr %i.fs, null
  br i1 %.not.i58.peel, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.critedge.peel
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !123
  %i.fv = and i32 %i.fu, 4
  %.not49.i.peel = icmp eq i32 %i.fv, 0
  br i1 %.not49.i.peel, label %.loopexit, label %.preheader.i59.peel

.preheader.i59.peel:                              ; preds = %bb.r
  %.04283.i.peel = load ptr, ptr %i.fs, align 8, !tbaa !124 ; 2 uses
  %.not5084.i.peel = icmp eq ptr %.04283.i.peel, null
  br i1 %.not5084.i.peel, label %.loopexit, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.preheader.i59.peel, %.critedge56.i
  %.04289.i = phi ptr [ %.042.i, %.critedge56.i ], [ %.04283.i.peel, %.preheader.i59.peel ] ; 2 uses
  %i.fw = phi <2 x i32> [ %i.lt, %.critedge56.i ], [ %.ph123, %.preheader.i59.peel ] ; 13 uses
  %i.fx = phi <2 x i32> [ %i.lu, %.critedge56.i ], [ %.ph124, %.preheader.i59.peel ] ; 13 uses
  %i.fy = load ptr, ptr %.04289.i, align 8, !tbaa !126 ; 2 uses
  %.not51.i = icmp eq ptr %i.fy, null
  br i1 %.not51.i, label %.critedge56.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i60
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !128 ; 4 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.preheader.i.i64, label %rt_get_index_from_formid.exit.i61

.preheader.i.i64:                                 ; preds = %bb.s, %.preheader.i.i64
  %indvars.iv.i.i65 = phi i64 [ %indvars.iv.next.i.i66, %.preheader.i.i64 ], [ 0, %bb.s ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [44 x i8], ptr %i.fl, i64 %indvars.iv.i.i65
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !106
  %i.gd = icmp ne i32 %i.gc, %i.fz                ; 2 uses
  %indvars.iv.next.i.i66 = add nuw nsw i64 %indvars.iv.i.i65, 1
  %i.ge = icmp samesign ult i64 %indvars.iv.i.i65, 299
  %i.gf = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %i.gf, label %.preheader.i.i64, label %.loopexit.loopexit.i.i67

.loopexit.loopexit.i.i67:                         ; preds = %.preheader.i.i64
  %i.gg = select i1 %i.gd, i64 -1, i64 %indvars.iv.i.i65
  br label %rt_get_index_from_formid.exit.i61

rt_get_index_from_formid.exit.i61:                ; preds = %.loopexit.loopexit.i.i67, %bb.s
  %.2.i.i62 = phi i64 [ -1, %bb.s ], [ %i.gg, %.loopexit.loopexit.i.i67 ]
  %i.gh = getelementptr inbounds [44 x i8], ptr %i.fl, i64 %.2.i.i62
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !107
  %.off.i = add i32 %i.gj, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.t, label %.critedge56.i

bb.t:                                             ; preds = %rt_get_index_from_formid.exit.i61
  %i.gk = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2584
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !244
  %i.gn = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.gm, i32 noundef %i.fz) #27 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %.critedge56.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.gp = call i32 @dt_masks_get_source_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.gn, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #27
  %.not54.not.i = icmp eq i32 %i.gp, 0
  br i1 %.not54.not.i, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gq = load float, ptr %i.fj, align 4, !tbaa !245
  %i.gr = load i32, ptr %i.i, align 4, !tbaa !13
  %i.gs = load i32, ptr %i.j, align 4, !tbaa !13
  %i.gt = load i32, ptr %i.g, align 4, !tbaa !13
  %i.gu = load i32, ptr %i.h, align 4, !tbaa !13
  %i.gv = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %i.gw = insertelement <4 x i32> %i.gv, i32 %i.gs, i64 1
  %i.gx = insertelement <4 x i32> %i.gw, i32 %i.gt, i64 2
  %i.gy = insertelement <4 x i32> %i.gx, i32 %i.gu, i64 3
  %i.gz = sitofp reassoc nsz arcp contract afn <4 x i32> %i.gy to <4 x float>
  %i.ha = insertelement <4 x float> poison, float %i.gq, i64 0
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hc = fmul reassoc nsz arcp contract afn <4 x float> %i.hb, %i.gz
  %i.hd = fptosi <4 x float> %i.hc to <4 x i32>   ; 4 uses
  %i.he = extractelement <4 x i32> %i.hd, i64 0   ; 2 uses
  store i32 %i.he, ptr %i.i, align 4, !tbaa !13
  %i.hf = extractelement <4 x i32> %i.hd, i64 1   ; 2 uses
  store i32 %i.hf, ptr %i.j, align 4, !tbaa !13
  %i.hg = extractelement <4 x i32> %i.hd, i64 2   ; 4 uses
  store i32 %i.hg, ptr %i.g, align 4, !tbaa !13
  %i.hh = extractelement <4 x i32> %i.hd, i64 3   ; 4 uses
  store i32 %i.hh, ptr %i.h, align 4, !tbaa !13
  %i.hi = extractelement <2 x i32> %i.fx, i64 1
  %i.hj = icmp slt i32 %i.hi, %i.hh
  br i1 %i.hj, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hk = add nsw i32 %i.hh, %i.hf                ; 2 uses
  %i.hl = extractelement <2 x i32> %i.fw, i64 1
  %i.hm = icmp slt i32 %i.hk, %i.hl
  %i.hn = extractelement <2 x i32> %i.fx, i64 0
  %i.ho = icmp slt i32 %i.hn, %i.hg
  %or.cond.i63 = select i1 %i.hm, i1 true, i1 %i.ho
  br i1 %or.cond.i63, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hp = add nsw i32 %i.hg, %i.he                ; 2 uses
  %i.hq = extractelement <2 x i32> %i.fw, i64 0
  %.not81.i = icmp slt i32 %i.hp, %i.hq
  br i1 %.not81.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hr = load ptr, ptr %i.w, align 16, !tbaa !199 ; 2 uses
  %i.hs = load ptr, ptr %i.y, align 8, !tbaa !242
  %i.ht = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2584
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !244
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !120
  %i.hy = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.hv, i32 noundef %i.hx) #27 ; 3 uses
  %.not.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !123
  %i.ib = and i32 %i.ia, 4
  %.not121.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not121.i.i, label %.critedge.i, label %.preheader.i57.i

.preheader.i57.i:                                 ; preds = %bb.z
  %.071166.i.i = load ptr, ptr %i.hy, align 8, !tbaa !124 ; 2 uses
  %.not122167.i.i = icmp eq ptr %.071166.i.i, null
  br i1 %.not122167.i.i, label %.critedge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i57.i, %.thread.i.i
  %.071172.i.i = phi ptr [ %.071.i.i, %.thread.i.i ], [ %.071166.i.i, %.preheader.i57.i ] ; 2 uses
  %i.ic = phi <2 x i32> [ %i.lo, %.thread.i.i ], [ %i.fw, %.preheader.i57.i ] ; 10 uses
  %i.id = phi <2 x i32> [ %i.lp, %.thread.i.i ], [ %i.fx, %.preheader.i57.i ] ; 10 uses
  %i.ie = load ptr, ptr %.071172.i.i, align 8, !tbaa !126 ; 2 uses
  %.not123.i.i = icmp eq ptr %i.ie, null
  br i1 %.not123.i.i, label %.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !128 ; 4 uses
  %i.ig = icmp eq i32 %i.if, %i.fz
  br i1 %i.ig, label %.critedge.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ih = icmp sgt i32 %i.if, 0
  br i1 %i.ih, label %.preheader.i.i.i, label %rt_get_index_from_formid.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.ab, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.preheader.i.i.i ], [ 0, %bb.ab ] ; 4 uses
  %i.ii = getelementptr inbounds nuw [44 x i8], ptr %i.hr, i64 %indvars.iv.i.i.i
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !106
  %i.ik = icmp ne i32 %i.ij, %i.if                ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.il = icmp samesign ult i64 %indvars.iv.i.i.i, 299
  %i.im = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %i.im, label %.preheader.i.i.i, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.preheader.i.i.i
  %i.in = select i1 %i.ik, i64 -1, i64 %indvars.iv.i.i.i
  br label %rt_get_index_from_formid.exit.i.i

rt_get_index_from_formid.exit.i.i:                ; preds = %.loopexit.loopexit.i.i.i, %bb.ab
  %.2.i.i.i = phi i64 [ -1, %bb.ab ], [ %i.in, %.loopexit.loopexit.i.i.i ]
  %i.io = getelementptr inbounds [44 x i8], ptr %i.hr, i64 %.2.i.i.i ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !107
  %.off.i.i = add i32 %i.iq, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.ac, label %.thread.i.i

bb.ac:                                            ; preds = %rt_get_index_from_formid.exit.i.i
  %i.ir = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 2584
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !244
  %i.iu = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.it, i32 noundef %i.if) #27 ; 5 uses
  %.not126.i.i = icmp eq ptr %i.iu, null
  br i1 %.not126.i.i, label %.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.iv = call i32 @dt_masks_get_source_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #27
  %.not127.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not127.i.i, label %.thread.sink.split.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iw = load float, ptr %i.fj, align 4, !tbaa !245
  %i.ix = load i32, ptr %i.c, align 4, !tbaa !13
  %i.iy = load i32, ptr %i.d, align 4, !tbaa !13
  %i.iz = load i32, ptr %i.a, align 4, !tbaa !13
  %i.ja = load i32, ptr %i.b, align 4, !tbaa !13
  %i.jb = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.iy, i64 1
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iz, i64 2
  %i.je = insertelement <4 x i32> %i.jd, i32 %i.ja, i64 3
  %i.jf = sitofp reassoc nsz arcp contract afn <4 x i32> %i.je to <4 x float>
  %i.jg = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = fmul reassoc nsz arcp contract afn <4 x float> %i.jh, %i.jf
  %i.jj = fptosi <4 x float> %i.ji to <4 x i32>   ; 4 uses
  %i.jk = extractelement <4 x i32> %i.jj, i64 0
  store i32 %i.jk, ptr %i.c, align 4, !tbaa !13
  %i.jl = extractelement <4 x i32> %i.jj, i64 1
  store i32 %i.jl, ptr %i.d, align 4, !tbaa !13
  %i.jm = extractelement <4 x i32> %i.jj, i64 2
  store i32 %i.jm, ptr %i.a, align 4, !tbaa !13
  %i.jn = extractelement <4 x i32> %i.jj, i64 3
  store i32 %i.jn, ptr %i.b, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !12
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !123
  %i.jq = and i32 %i.jp, 99
  %or.cond46.i.i.i = icmp eq i32 %i.jq, 0
  br i1 %or.cond46.i.i.i, label %rt_masks_get_delta_to_destination.exit.thread.i.i, label %rt_masks_get_delta_to_destination.exit.i.i

rt_masks_get_delta_to_destination.exit.i.i:       ; preds = %bb.ae
  %i.jr = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !16
  %i.jt = load ptr, ptr %i.iu, align 8, !tbaa !175
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !126
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.jw = call fastcc i32 @rt_masks_point_calc_delta(ptr noundef readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %3, ptr noundef %i.ju, ptr noundef readonly %i.jv, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.js)
  %.not128.i.i = icmp eq i32 %i.jw, 0
  br i1 %.not128.i.i, label %rt_masks_get_delta_to_destination.exit.thread.i.i, label %bb.af

bb.af:                                            ; preds = %rt_masks_get_delta_to_destination.exit.i.i
  %i.jx = load i32, ptr %i.b, align 4, !tbaa !13
  %i.jy = load float, ptr %i.f, align 4, !tbaa !12
  %i.jz = load i32, ptr %i.a, align 4, !tbaa !13
  %i.ka = load float, ptr %i.e, align 4, !tbaa !12
  %i.kb = insertelement <2 x i32> poison, i32 %i.jz, i64 0
  %i.kc = insertelement <2 x i32> %i.kb, i32 %i.jx, i64 1 ; 3 uses
  %i.kd = sitofp reassoc nsz arcp contract afn <2 x i32> %i.kc to <2 x float>
  %i.ke = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kf = insertelement <2 x float> %i.ke, float %i.jy, i64 1 ; 2 uses
  %i.kg = fadd reassoc nsz arcp contract afn <2 x float> %i.kf, %i.kd ; 3 uses
  %i.kh = extractelement <2 x float> %i.kg, i64 1
  %i.ki = fptosi float %i.kh to i32               ; 2 uses
  %i.kj = load i32, ptr %i.d, align 4, !tbaa !13  ; 2 uses
  %i.kk = add nsw i32 %i.kj, %i.ki
  %i.kl = icmp slt i32 %i.kk, %i.hh
  %i.km = icmp slt i32 %i.hk, %i.ki
  %or.cond.i.i = or i1 %i.km, %i.kl
  br i1 %or.cond.i.i, label %rt_masks_get_delta_to_destination.exit.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kn = extractelement <2 x float> %i.kg, i64 0
  %i.ko = fptosi float %i.kn to i32               ; 2 uses
  %i.kp = load i32, ptr %i.c, align 4, !tbaa !13  ; 2 uses
  %i.kq = add nsw i32 %i.kp, %i.ko
  %i.kr = icmp sge i32 %i.kq, %i.hg
  %i.ks = icmp sge i32 %i.hp, %i.ko
  %or.cond131.i.i = and i1 %i.ks, %i.kr
  br i1 %or.cond131.i.i, label %bb.ah, label %rt_masks_get_delta_to_destination.exit.thread.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.kt = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.kc, <2 x i32> %i.ic)
  %i.ku = insertelement <2 x i32> poison, i32 %i.kp, i64 0
  %i.kv = insertelement <2 x i32> %i.ku, i32 %i.kj, i64 1
  %i.kw = add nsw <2 x i32> %i.kv, %i.kc          ; 2 uses
  %i.kx = sitofp <2 x i32> %i.kt to <2 x float>
  %i.ky = fptosi <2 x float> %i.kx to <2 x i32>
  %i.kz = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ky to <2 x float>
  %i.la = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.kg, <2 x float> %i.kz)
  %i.lb = fptosi <2 x float> %i.la to <2 x i32>
  %i.lc = sitofp reassoc nsz arcp contract afn <2 x i32> %i.kw to <2 x float>
  %i.ld = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.kw, <2 x i32> %i.id)
  %i.le = sitofp <2 x i32> %i.ld to <2 x float>
  %i.lf = fptosi <2 x float> %i.le to <2 x i32>
  %i.lg = fadd reassoc nsz arcp contract afn <2 x float> %i.kf, %i.lc
  %i.lh = sitofp reassoc nsz arcp contract afn <2 x i32> %i.lf to <2 x float>
  %i.li = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lg, <2 x float> %i.lh)
  %i.lj = fptosi <2 x float> %i.li to <2 x i32>
  br label %rt_masks_get_delta_to_destination.exit.thread.i.i

rt_masks_get_delta_to_destination.exit.thread.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %rt_masks_get_delta_to_destination.exit.i.i, %bb.ae
  %i.lk = phi <2 x i32> [ %i.ic, %rt_masks_get_delta_to_destination.exit.i.i ], [ %i.lb, %bb.ah ], [ %i.ic, %bb.ag ], [ %i.ic, %bb.af ], [ %i.ic, %bb.ae ]
  %i.ll = phi <2 x i32> [ %i.id, %rt_masks_get_delta_to_destination.exit.i.i ], [ %i.lj, %bb.ah ], [ %i.id, %bb.ag ], [ %i.id, %bb.af ], [ %i.id, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread.sink.split.i.i

.thread.sink.split.i.i:                           ; preds = %rt_masks_get_delta_to_destination.exit.thread.i.i, %bb.ad
  %i.lm = phi <2 x i32> [ %i.lk, %rt_masks_get_delta_to_destination.exit.thread.i.i ], [ %i.ic, %bb.ad ]
  %i.ln = phi <2 x i32> [ %i.ll, %rt_masks_get_delta_to_destination.exit.thread.i.i ], [ %i.id, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.ac, %rt_get_index_from_formid.exit.i.i, %.lr.ph.i.i
  %i.lo = phi <2 x i32> [ %i.ic, %.lr.ph.i.i ], [ %i.ic, %rt_get_index_from_formid.exit.i.i ], [ %i.ic, %bb.ac ], [ %i.lm, %.thread.sink.split.i.i ] ; 2 uses
  %i.lp = phi <2 x i32> [ %i.id, %.lr.ph.i.i ], [ %i.id, %rt_get_index_from_formid.exit.i.i ], [ %i.id, %bb.ac ], [ %i.ln, %.thread.sink.split.i.i ] ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.071172.i.i, i64 8
  %.071.i.i = load ptr, ptr %i.lq, align 8, !tbaa !124 ; 2 uses
  %.not122.i.i = icmp eq ptr %.071.i.i, null
  br i1 %.not122.i.i, label %.critedge.i, label %.lr.ph.i.i

.critedge.i:                                      ; preds = %.thread.i.i, %bb.aa, %.preheader.i57.i, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.lr = phi <2 x i32> [ %i.fw, %bb.v ], [ %i.fw, %bb.w ], [ %i.fw, %.preheader.i57.i ], [ %i.fw, %bb.u ], [ %i.fw, %bb.x ], [ %i.fw, %bb.y ], [ %i.fw, %bb.z ], [ %i.ic, %bb.aa ], [ %i.lo, %.thread.i.i ]
  %i.ls = phi <2 x i32> [ %i.fx, %bb.v ], [ %i.fx, %bb.w ], [ %i.fx, %.preheader.i57.i ], [ %i.fx, %bb.u ], [ %i.fx, %bb.x ], [ %i.fx, %bb.y ], [ %i.fx, %bb.z ], [ %i.id, %bb.aa ], [ %i.lp, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %.critedge56.i

.critedge56.i:                                    ; preds = %.critedge.i, %bb.t, %rt_get_index_from_formid.exit.i61, %.lr.ph.i60
  %i.lt = phi <2 x i32> [ %i.fw, %.lr.ph.i60 ], [ %i.fw, %bb.t ], [ %i.lr, %.critedge.i ], [ %i.fw, %rt_get_index_from_formid.exit.i61 ] ; 2 uses
  %i.lu = phi <2 x i32> [ %i.fx, %.lr.ph.i60 ], [ %i.fx, %bb.t ], [ %i.ls, %.critedge.i ], [ %i.fx, %rt_get_index_from_formid.exit.i61 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.04289.i, i64 8
  %.042.i = load ptr, ptr %i.lv, align 8, !tbaa !124 ; 2 uses
  %.not50.i = icmp eq ptr %.042.i, null
  br i1 %.not50.i, label %rt_extend_roi_in_for_clone.exit.outer, label %.lr.ph.i60

.loopexit:                                        ; preds = %6, %.critedge.peel, %bb.r, %.preheader.i59.peel
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.lx = load float, ptr %i.fj, align 4, !tbaa !245
  %i.ly = extractelement <2 x i32> %.ph123, i64 0 ; 2 uses
  %i.lz = sitofp reassoc nsz arcp contract afn i32 %i.ly to float
  %i.ma = call i32 @llvm.smax.i32(i32 %i.ly, i32 0)
  %i.mb = uitofp nsz nneg i32 %i.ma to float
  %i.mc = load <2 x i32>, ptr %i.lw, align 16, !tbaa !13
  %i.md = sitofp reassoc nsz arcp contract afn <2 x i32> %i.mc to <2 x float>
  %i.me = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = fmul reassoc nsz arcp contract afn <2 x float> %i.mf, %i.md ; 3 uses
  %i.mh = extractelement <2 x float> %i.mg, i64 0
  %i.mi = fadd reassoc nsz arcp contract afn float %i.mh, -1.000000e+00 ; 2 uses
  %i.mj = fcmp reassoc nsz arcp contract afn olt float %i.mi, %i.lz
  %i.mk = select reassoc nsz arcp contract afn i1 %i.mj, float %i.mi, float %i.mb
  %i.ml = fptosi float %i.mk to i32               ; 3 uses
  store i32 %i.ml, ptr %3, align 4, !tbaa !248
  %i.mm = extractelement <2 x i32> %.ph124, i64 0
  %i.mn = sub nsw i32 %i.mm, %i.ml
  %i.mo = shufflevector <2 x i32> %.ph123, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.mp = insertelement <2 x i32> %i.mo, i32 %i.mn, i64 1 ; 2 uses
  %i.mq = sitofp reassoc nsz arcp contract afn <2 x i32> %i.mp to <2 x float>
  %i.mr = fadd reassoc nsz arcp contract afn <2 x float> %i.mg, <float 5.000000e-01, float -0.000000e+00>
  %i.ms = sitofp reassoc nsz arcp contract afn i32 %i.ml to float
  %i.mt = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ms, i64 0
  %i.mu = fsub reassoc nsz arcp contract afn <2 x float> %i.mr, %i.mt
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.mv, %i.mq
  %i.mx = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mp, <2 x i32> <i32 0, i32 1>)
  %i.my = uitofp nneg <2 x i32> %i.mx to <2 x float>
  %i.mz = select <2 x i1> %i.mw, <2 x float> %i.mv, <2 x float> %i.my
  %i.na = fptosi <2 x float> %i.mz to <2 x i32>   ; 2 uses
  store <2 x i32> %i.na, ptr %i.t, align 4, !tbaa !13
  %i.nb = extractelement <2 x i32> %i.na, i64 0   ; 2 uses
  %i.nc = extractelement <2 x i32> %.ph124, i64 1
  %i.nd = sub nsw i32 %i.nc, %i.nb                ; 2 uses
  %i.ne = sitofp reassoc nsz arcp contract afn i32 %i.nd to float
  %i.nf = extractelement <2 x float> %i.mg, i64 1
  %i.ng = fadd reassoc nsz arcp contract afn float %i.nf, 5.000000e-01
  %i.nh = sitofp reassoc nsz arcp contract afn i32 %i.nb to float
  %i.ni = fsub reassoc nsz arcp contract afn float %i.ng, %i.nh ; 2 uses
  %i.nj = fcmp reassoc nsz arcp contract afn olt float %i.ni, %i.ne
  %spec.select5791 = call i32 @llvm.smax.i32(i32 %i.nd, i32 1)
  %spec.select57 = uitofp nneg i32 %spec.select5791 to float
  %i.nk = select reassoc nsz arcp contract afn i1 %i.nj, float %i.ni, float %spec.select57
  %i.nl = fptosi float %i.nk to i32
  store i32 %i.nl, ptr %i.r, align 4, !tbaa !247
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %6 = alloca %struct.retouch_user_data_t, align 8 ; 11 uses
  %i.b = alloca [4 x float], align 16             ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !327
  %i.e = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #27
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.be, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !199 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !36  ; 8 uses
  %i.j = load <4 x i32>, ptr %4, align 4, !tbaa !13 ; 4 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.k = icmp ne ptr %i.i, null                   ; 6 uses
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @dt_iop_has_focus(ptr noundef nonnull %0) #27
  %.not120 = icmp eq i32 %i.l, 0
  br i1 %.not120, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !148
  %i.o = icmp ne i32 %i.n, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ false, %bb.c ], [ false, %bb.b ] ; 2 uses
  %i.q = extractelement <4 x i32> %i.j, i64 2     ; 5 uses
  %i.r = sext i32 %i.q to i64                     ; 6 uses
  %i.s = shl nsw i64 %i.r, 2
  %i.t = extractelement <4 x i32> %i.j, i64 3     ; 5 uses
  %i.u = sext i32 %i.t to i64
  %i.v = mul i64 %i.s, %i.u                       ; 8 uses
  %i.w = shl i64 %i.v, 2
  %i.x = tail call ptr @dt_alloc_aligned(i64 noundef %i.w) #27 ; 22 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.89) #27
  br label %rt_copy_in_to_out.exit

bb.g:                                             ; preds = %bb.e
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.x, ptr noundef %2, i64 noundef %i.v) #27
  store ptr %0, ptr %6, align 8, !tbaa !253
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.z, align 8, !tbaa !254
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <4 x i32> %i.j, ptr %i.aa, align 8, !tbaa !13
  %.sroa.23.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %.sroa.23.0.copyload, ptr %.sroa.23.0..sroa_idx165, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !255
  br i1 %i.k, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !190
  %.not121 = icmp eq i32 %i.ad, 0
  br i1 %.not121, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i32 @dt_iop_has_focus(ptr noundef nonnull %0) #27
  %.not122 = icmp eq i32 %i.ae, 0
  br i1 %.not122, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !243
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2760
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !164
  %i.al = icmp eq ptr %i.ag, %i.ak
  %i.am = zext i1 %i.al to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.an = phi i32 [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ %i.am, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !256
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 13208
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !191 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !257
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 13204
  %i.at = load i32, ptr %i.as, align 4, !tbaa !194
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !243
  %i.aw = getelementptr i8, ptr %i.av, i64 644
  %.val135 = load i32, ptr %i.aw, align 4, !tbaa !328
  %i.ax = and i32 %.val135, 2
  %.not123 = icmp eq i32 %i.ax, 0
  %spec.select = select i1 %.not123, i32 0, i32 %i.aq
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = phi i32 [ 0, %bb.k ], [ %spec.select, %bb.l ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 13212
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !204
  %i.bb = load float, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !245
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !250
  %i.be = fdiv reassoc nsz arcp contract afn float %i.bb, %i.bd
  %i.bf = call ptr @dt_dwt_init(ptr noundef nonnull %i.x, i32 noundef %i.q, i32 noundef %i.t, i32 noundef 4, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.ba, ptr noundef nonnull %6, float noundef %i.be) #27 ; 10 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %rt_copy_in_to_out.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !243 ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 644
  %.val134 = load i32, ptr %i.bj, align 4, !tbaa !328
  %i.bk = and i32 %.val134, 2
  %i.bl = icmp ne i32 %i.bk, 0
  %or.cond = and i1 %i.k, %i.bl
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !189
  %i.bo = icmp ne i32 %i.bn, 0
  %or.cond3 = select i1 %i.bo, i1 true, i1 %i.p
  br i1 %or.cond3, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bp = call i32 @dt_iop_has_focus(ptr noundef nonnull %0) #27
  %.not124 = icmp eq i32 %i.bp, 0
  %.pre = load ptr, ptr %i.bh, align 8, !tbaa !243 ; 6 uses
  br i1 %.not124, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !118
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2760
end_hunk_0
begin_hunk_1_@rt_process_forms:bb.a
  br i1 %i.cb, label %.preheader.i, label %rt_get_index_from_formid.exit

rt_get_index_from_formid.exit:                    ; preds = %.preheader.i
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rt_get_index_from_formid.exit
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.144, i32 noundef %i.bt) #27
  br label %bb.bb

bb.q:                                             ; preds = %rt_get_index_from_formid.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !193
  %.not146 = icmp eq i32 %i.cd, %.0129
  br i1 %.not146, label %bb.r, label %bb.bb

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %i.au, align 8, !tbaa !243
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2584
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !244
  %i.ch = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.cg, i32 noundef %i.bt) #27 ; 7 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.145, i32 noundef %i.bt) #27
  br label %bb.bb

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.cj = call i32 @dt_masks_get_area(ptr noundef %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #27
  %.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i, label %rt_masks_form_is_in_roi.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = load float, ptr %i.be, align 8, !tbaa !245 ; 4 uses
  %i.cl = load i32, ptr %i.c, align 4, !tbaa !13
  %i.cm = sitofp reassoc nsz arcp contract afn i32 %i.cl to float
  %i.cn = fmul reassoc nsz arcp contract afn float %i.ck, %i.cm
  %i.co = fptosi float %i.cn to i32
  %i.cp = load i32, ptr %i.d, align 4, !tbaa !13
  %i.cq = sitofp reassoc nsz arcp contract afn i32 %i.cp to float
  %i.cr = fmul reassoc nsz arcp contract afn float %i.ck, %i.cq
  %i.cs = fptosi float %i.cr to i32
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !13
  %i.cu = sitofp reassoc nsz arcp contract afn i32 %i.ct to float
  %i.cv = fmul reassoc nsz arcp contract afn float %i.ck, %i.cu
  %i.cw = fptosi float %i.cv to i32               ; 2 uses
  %i.cx = load i32, ptr %i.b, align 4, !tbaa !13
  %i.cy = sitofp reassoc nsz arcp contract afn i32 %i.cx to float
  %i.cz = fmul reassoc nsz arcp contract afn float %i.ck, %i.cy
  %i.da = fptosi float %i.cz to i32               ; 2 uses
  %i.db = load i32, ptr %i.bf, align 4, !tbaa !246 ; 2 uses
  %i.dc = load i32, ptr %i.bg, align 4, !tbaa !247
  %i.dd = add nsw i32 %i.dc, %i.db
  %.not15.i = icmp sgt i32 %i.dd, %i.da
  %i.de = add nsw i32 %i.da, %i.cs
  %.not16.i = icmp sgt i32 %i.de, %i.db
  %or.cond.i = select i1 %.not15.i, i1 %.not16.i, i1 false
  br i1 %or.cond.i, label %bb.v, label %rt_masks_form_is_in_roi.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.df = load i32, ptr %i.ad, align 8, !tbaa !248 ; 2 uses
  %i.dg = load i32, ptr %i.bh, align 8, !tbaa !249
  %i.dh = add nsw i32 %i.dg, %i.df
  %.not17.i = icmp sgt i32 %i.dh, %i.cw
  br i1 %.not17.i, label %rt_masks_form_is_in_roi.exit, label %rt_masks_form_is_in_roi.exit.thread

rt_masks_form_is_in_roi.exit.thread:              ; preds = %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bb

rt_masks_form_is_in_roi.exit:                     ; preds = %bb.v
  %i.di = add nsw i32 %i.cw, %i.co
  %.not18.i.not = icmp sgt i32 %i.di, %i.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br i1 %.not18.i.not, label %bb.w, label %bb.bb

bb.w:                                             ; preds = %rt_masks_form_is_in_roi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store ptr null, ptr %i.e, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !337 ; 2 uses
  %.not.i153 = icmp eq ptr %i.dk, null
  br i1 %.not.i153, label %dt_masks_get_mask.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !339 ; 2 uses
  %.not12.i = icmp eq ptr %i.dm, null
  br i1 %.not12.i, label %dt_masks_get_mask.exit.thread, label %dt_masks_get_mask.exit

dt_masks_get_mask.exit:                           ; preds = %bb.x
  %i.dn = call i32 %i.dm(ptr noundef %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %3, ptr noundef nonnull %i.bk) #27, !inline_history !334 ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !267 ; 3 uses
  %i.do = icmp eq ptr %.pre, null
  br i1 %i.do, label %dt_masks_get_mask.exit.thread, label %bb.y

dt_masks_get_mask.exit.thread:                    ; preds = %bb.x, %bb.w, %dt_masks_get_mask.exit
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.146) #27
  br label %bb.ba

bb.y:                                             ; preds = %dt_masks_get_mask.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !107 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !12
  %i.dr = add i32 %i.dq, -5
  %or.cond3 = icmp ult i32 %i.dr, -2
  br i1 %or.cond3, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !123
  %i.du = and i32 %i.dt, 99
  %or.cond46.i = icmp eq i32 %i.du, 0
  br i1 %or.cond46.i, label %rt_masks_get_delta_to_destination.exit.thread, label %rt_masks_get_delta_to_destination.exit

rt_masks_get_delta_to_destination.exit:           ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !16
  %i.dx = load ptr, ptr %i.ch, align 8, !tbaa !175
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !126
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ea = call fastcc i32 @rt_masks_point_calc_delta(ptr noundef readonly %i.k, ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %i.ad, ptr noundef %i.dy, ptr noundef readonly %i.dz, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef %i.dw)
  %.not148 = icmp eq i32 %i.ea, 0
  %.pre174 = load ptr, ptr %i.e, align 8, !tbaa !267 ; 2 uses
  br i1 %.not148, label %rt_masks_get_delta_to_destination.exit.thread, label %rt_masks_get_delta_to_destination.exit._crit_edge

rt_masks_get_delta_to_destination.exit._crit_edge: ; preds = %rt_masks_get_delta_to_destination.exit
  %.pre172 = load float, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %.pre173 = load float, ptr %i.g, align 4, !tbaa !12 ; 2 uses
  %i.eb = insertelement <2 x float> poison, float %.pre172, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %.pre173, i64 1
  %i.ed = fptosi <2 x float> %i.ec to <2 x i32>
  %i.ee = fcmp reassoc nsz arcp contract afn une float %.pre172, 0.000000e+00
  %i.ef = fcmp reassoc nsz arcp contract afn une float %.pre173, 0.000000e+00
  %i.eg = select i1 %i.ee, i1 true, i1 %i.ef
  br label %bb.aa

rt_masks_get_delta_to_destination.exit.thread:    ; preds = %bb.z, %rt_masks_get_delta_to_destination.exit
  %i.eh = phi ptr [ %.pre, %bb.z ], [ %.pre174, %rt_masks_get_delta_to_destination.exit ]
  call void @free(ptr noundef %i.eh) #27
  br label %bb.az

bb.aa:                                            ; preds = %rt_masks_get_delta_to_destination.exit._crit_edge, %bb.y
  %or.cond5 = phi i1 [ %i.eg, %rt_masks_get_delta_to_destination.exit._crit_edge ], [ false, %bb.y ]
  %i.ei = phi ptr [ %.pre174, %rt_masks_get_delta_to_destination.exit._crit_edge ], [ %.pre, %bb.y ]
  %i.ej = phi <2 x i32> [ %i.ed, %rt_masks_get_delta_to_destination.exit._crit_edge ], [ zeroinitializer, %bb.y ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ek = extractelement <2 x i32> %i.ej, i64 1   ; 3 uses
  %i.el = icmp ne i32 %i.dq, 2                    ; 2 uses
  %i.em = load float, ptr %i.be, align 8, !tbaa !245 ; 2 uses
  store float %i.em, ptr %i.bl, align 16, !tbaa !245
  %i.en = zext i1 %i.el to i32
  %i.eo = select i1 %i.el, i32 1, i32 2
  %i.ep = load i32, ptr %i.bg, align 4, !tbaa !247
  %i.eq = load <2 x i32>, ptr %3, align 8, !tbaa !13
  %i.er = sitofp reassoc nsz arcp contract afn <2 x i32> %i.eq to <2 x float>
  %i.es = insertelement <2 x float> poison, float %i.em, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = fmul reassoc nsz arcp contract afn <2 x float> %i.et, %i.er
  %i.ev = fptosi <2 x float> %i.eu to <2 x i32>   ; 2 uses
  %i.ew = load <2 x i32>, ptr %i.bi, align 8, !tbaa !13
  %i.ex = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ew to <2 x float>
  %i.ey = fmul reassoc nsz arcp contract afn <2 x float> %i.et, %i.ex
  %i.ez = fadd reassoc nsz arcp contract afn <2 x float> %i.ey, splat (float 5.000000e-01)
  %i.fa = fptosi <2 x float> %i.ez to <2 x i32>
  %i.fb = insertelement <2 x i32> poison, i32 %i.en, i64 0
  %i.fc = shufflevector <2 x i32> %i.fb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fd = add <2 x i32> %i.fc, %i.ev              ; 2 uses
  %i.fe = load <2 x i32>, ptr %i.bf, align 4, !tbaa !13
  %i.ff = shufflevector <2 x i32> %i.fe, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.fg = load <2 x i32>, ptr %i.ad, align 8, !tbaa !13 ; 3 uses
  %i.fh = load i32, ptr %i.bf, align 4, !tbaa !246 ; 2 uses
  %i.fi = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fd, <2 x i32> %i.fg)
  %i.fj = add <2 x i32> %i.fg, %i.ej
  %i.fk = add i32 %i.fh, %i.ek
  %i.fl = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fi, <2 x i32> %i.fj) ; 4 uses
  %i.fm = insertelement <2 x i32> poison, i32 %i.eo, i64 0
  %i.fn = shufflevector <2 x i32> %i.fm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fo = add <2 x i32> %i.fn, %i.ev
  %i.fp = add <2 x i32> %i.fo, %i.fa
  %i.fq = insertelement <2 x i32> %i.fg, i32 %i.ep, i64 1
  %i.fr = add <2 x i32> %i.ff, %i.fq              ; 2 uses
  %i.fs = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.fp, <2 x i32> %i.fr)
  %i.ft = add <2 x i32> %i.fr, %i.ej
  %i.fu = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.fs, <2 x i32> %i.ft) ; 3 uses
  %i.fv = sub nsw <2 x i32> %i.fu, %i.fl          ; 5 uses
  %i.fw = shufflevector <2 x i32> %i.fl, <2 x i32> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.fw, ptr %4, align 16, !tbaa !13
  %i.fx = icmp slt <2 x i32> %i.fv, splat (i32 1) ; 2 uses
  %5 = extractelement <2 x i1> %i.fx, i64 0
  %6 = extractelement <2 x i1> %i.fx, i64 1
  %or.cond.i155 = select i1 %5, i1 true, i1 %6
  br i1 %or.cond.i155, label %rt_build_scaled_mask.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fy = extractelement <2 x i32> %i.fv, i64 0   ; 2 uses
  %i.fz = zext nneg i32 %i.fy to i64              ; 2 uses
  %i.ga = extractelement <2 x i32> %i.fv, i64 1
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gc = shl nuw nsw i64 %i.fz, 2
  %i.gd = mul nuw i64 %i.gc, %i.gb
  %i.ge = call ptr @dt_alloc_aligned(i64 noundef %i.gd) #27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ge, i64 64) ]
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.ac, label %.lr.ph84.i

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.148) #27
  br label %rt_build_scaled_mask.exit

.lr.ph84.i:                                       ; preds = %bb.ab
  call void @dt_iop_image_fill(ptr noundef nonnull %i.ge, float noundef 0.000000e+00, i64 noundef %i.fz, i64 noundef %i.gb, i64 noundef 1) #27
  %i.gg = load i32, ptr %i.bk, align 4, !tbaa !246
  %.pre89.i = load float, ptr %i.be, align 8, !tbaa !245 ; 2 uses
  %i.gh = load i32, ptr %i.bi, align 8            ; 4 uses
  %i.gi = load i32, ptr %3, align 8               ; 3 uses
  %i.gj = call i32 @llvm.smax.i32(i32 %i.fh, i32 %i.fk)
  %i.gk = extractelement <2 x i32> %i.fd, i64 1
  %i.gl = call i32 @llvm.smax.i32(i32 %i.gj, i32 %i.gk)
  %smax170 = sext i32 %i.gl to i64
  %i.gm = extractelement <2 x i32> %i.fl, i64 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = zext nneg i32 %i.fy to i64
  %i.gp = extractelement <2 x i32> %i.fu, i64 1
  %i.gq = extractelement <2 x i32> %i.fl, i64 0   ; 5 uses
  %.neg = add i32 %i.gq, 1
  %i.gr = extractelement <2 x i32> %i.fu, i64 0   ; 3 uses
  %i.gs = sub i32 %i.gr, %i.gq
  %xtraiter = and i32 %i.gs, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.gt = sitofp reassoc nsz arcp contract afn i32 %i.gq to float
  %i.gu = add nsw i32 %i.gq, 1
  %i.gv = icmp eq i32 %i.gr, %.neg
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %.lr.ph84.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i ], [ %smax170, %.lr.ph84.i ] ; 3 uses
  %.pre88.i = phi float [ %.pre8892.i, %.loopexit.i ], [ %.pre89.i, %.lr.ph84.i ] ; 4 uses
  %i.gw = phi float [ %i.iq, %.loopexit.i ], [ %.pre89.i, %.lr.ph84.i ] ; 2 uses
  %i.gx = trunc nsw i64 %indvars.iv to i32
  %i.gy = sitofp reassoc nsz arcp contract afn i32 %i.gx to float
  %i.gz = fdiv reassoc nsz arcp contract afn float %i.gy, %i.gw
  %i.ha = fptosi float %i.gz to i32
  %i.hb = sub nsw i32 %i.ha, %i.gg                ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, -1
  %i.hd = load i32, ptr %i.bj, align 4
  %.not.i156 = icmp slt i32 %i.hb, %i.hd
  %or.cond164 = select i1 %i.hc, i1 %.not.i156, i1 false
  br i1 %or.cond164, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.he = mul nsw i32 %i.gh, %i.hb
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.hf ; 3 uses
  %i.hh = sub nsw i64 %indvars.iv, %i.gn
  %i.hi = mul nuw nsw i64 %i.hh, %i.go
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.hi ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.hk = fdiv reassoc nsz arcp contract afn float %i.gt, %.pre88.i
  %i.hl = fptosi float %i.hk to i32
  %i.hm = sub nsw i32 %i.hl, %i.gi                ; 3 uses
  %i.hn = icmp sgt i32 %i.hm, -1
  %.not78.i.prol = icmp slt i32 %i.hm, %i.gh
  %or.cond79.i.prol = select i1 %i.hn, i1 %.not78.i.prol, i1 false
  br i1 %or.cond79.i.prol, label %bb.ae, label %.prol.loopexit.unr-lcssa

bb.ae:                                            ; preds = %.prol.preheader
  %i.ho = zext nneg i32 %i.hm to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !12
  store float %i.hq, ptr %i.hj, align 4, !tbaa !12
  %.pre.i.prol = load float, ptr %i.be, align 8, !tbaa !245
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ae, %.prol.preheader
  %i.hr = phi float [ %.pre88.i, %.prol.preheader ], [ %.pre.i.prol, %bb.ae ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa199.unr = phi float [ poison, %.lr.ph.i ], [ %i.hr, %.prol.loopexit.unr-lcssa ] ; 2 uses
  %.unr = phi float [ %.pre88.i, %.lr.ph.i ], [ %i.hr, %.prol.loopexit.unr-lcssa ] ; 2 uses
  %.082.i.unr = phi i32 [ %i.gq, %.lr.ph.i ], [ %i.gu, %.prol.loopexit.unr-lcssa ]
  %.06981.i.unr = phi ptr [ %i.hj, %.lr.ph.i ], [ %i.hs, %.prol.loopexit.unr-lcssa ]
  br i1 %i.gv, label %.loopexit.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %bb.ai
  %.pre8891.i = phi float [ %.pre8890.i.1, %bb.ai ], [ %.unr, %.prol.loopexit ]
  %i.ht = phi float [ %i.in, %bb.ai ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.082.i = phi i32 [ %i.io, %bb.ai ], [ %.082.i.unr, %.prol.loopexit ] ; 3 uses
  %.06981.i = phi ptr [ %i.ip, %bb.ai ], [ %.06981.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hu = sitofp reassoc nsz arcp contract afn i32 %.082.i to float
  %i.hv = fdiv reassoc nsz arcp contract afn float %i.hu, %i.ht
  %i.hw = fptosi float %i.hv to i32
  %i.hx = sub nsw i32 %i.hw, %i.gi                ; 3 uses
  %i.hy = icmp sgt i32 %i.hx, -1
  %.not78.i = icmp slt i32 %i.hx, %i.gh
  %or.cond79.i = select i1 %i.hy, i1 %.not78.i, i1 false
  br i1 %or.cond79.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.new
  %i.hz = zext nneg i32 %i.hx to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !12
  store float %i.ib, ptr %.06981.i, align 4, !tbaa !12
  %.pre.i = load float, ptr %i.be, align 8, !tbaa !245 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i.new
  %.pre8890.i = phi float [ %.pre8891.i, %.lr.ph.i.new ], [ %.pre.i, %bb.af ]
  %i.ic = phi float [ %i.ht, %.lr.ph.i.new ], [ %.pre.i, %bb.af ] ; 2 uses
  %i.id = add nsw i32 %.082.i, 1
  %i.ie = sitofp reassoc nsz arcp contract afn i32 %i.id to float
  %i.if = fdiv reassoc nsz arcp contract afn float %i.ie, %i.ic
  %i.ig = fptosi float %i.if to i32
  %i.ih = sub nsw i32 %i.ig, %i.gi                ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, -1
  %.not78.i.1 = icmp slt i32 %i.ih, %i.gh
  %or.cond79.i.1 = select i1 %i.ii, i1 %.not78.i.1, i1 false
  br i1 %or.cond79.i.1, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ij = getelementptr inbounds nuw i8, ptr %.06981.i, i64 4
  %i.ik = zext nneg i32 %i.ih to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !12
  store float %i.im, ptr %i.ij, align 4, !tbaa !12
  %.pre.i.1 = load float, ptr %i.be, align 8, !tbaa !245 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pre8890.i.1 = phi float [ %.pre8890.i, %bb.ag ], [ %.pre.i.1, %bb.ah ] ; 2 uses
  %i.in = phi float [ %i.ic, %bb.ag ], [ %.pre.i.1, %bb.ah ] ; 2 uses
  %i.io = add nsw i32 %.082.i, 2                  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.06981.i, i64 8
  %exitcond.not.i.1 = icmp eq i32 %i.io, %i.gr
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i.new

.loopexit.i:                                      ; preds = %.prol.loopexit, %bb.ai, %bb.ad
  %.pre8892.i = phi float [ %.pre88.i, %bb.ad ], [ %.lcssa199.unr, %.prol.loopexit ], [ %.pre8890.i.1, %bb.ai ]
  %i.iq = phi float [ %i.gw, %bb.ad ], [ %.lcssa199.unr, %.prol.loopexit ], [ %i.in, %bb.ai ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ir = trunc nsw i64 %indvars.iv.next to i32
  %exitcond87.not.i = icmp eq i32 %i.gp, %i.ir
  br i1 %exitcond87.not.i, label %rt_build_scaled_mask.exit, label %bb.ad

rt_build_scaled_mask.exit:                        ; preds = %.loopexit.i, %bb.aa, %bb.ac
  %.071.i = phi ptr [ null, %bb.aa ], [ null, %bb.ac ], [ %i.ge, %.loopexit.i ] ; 7 uses
  %i.is = load ptr, ptr %i.e, align 8, !tbaa !267 ; 2 uses
  %.not149 = icmp eq ptr %i.is, null
  br i1 %.not149, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %rt_build_scaled_mask.exit
  call void @free(ptr noundef nonnull %i.is) #27
  store ptr null, ptr %i.e, align 8, !tbaa !267
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %rt_build_scaled_mask.exit
  %i.it = icmp eq ptr %.071.i, null
  br i1 %i.it, label %bb.ay, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iu = add i32 %i.dq, -3
  %i.iv = icmp ult i32 %i.iu, 2
  %or.cond9 = or i1 %i.iv, %or.cond5
  %i.iw = icmp sgt <2 x i32> %i.fv, splat (i32 2) ; 2 uses
  %i.ix = extractelement <2 x i1> %i.iw, i64 0
  %or.cond12 = and i1 %or.cond9, %i.ix
  %i.iy = extractelement <2 x i1> %i.iw, i64 1
  %or.cond15 = select i1 %or.cond12, i1 %i.iy, i1 false
  br i1 %or.cond15, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  switch i32 %i.dq, label %bb.au [
    i32 1, label %bb.an
    i32 2, label %bb.ao
    i32 3, label %bb.ap
    i32 4, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  %i.iz = extractelement <2 x i32> %i.ej, i64 0
  call fastcc void @_retouch_clone(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %.071.i, ptr noundef %4, i32 noundef %i.iz, i32 noundef %i.ek, float noundef %i.bv)
  br label %bb.av

bb.ao:                                            ; preds = %bb.am
  %i.ja = load i32, ptr %i.bp, align 4, !tbaa !340
  %i.jb = extractelement <2 x i32> %i.ej, i64 0
  call fastcc void @_retouch_heal(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %.071.i, ptr noundef %4, i32 noundef %i.jb, i32 noundef %i.ek, float noundef %i.bv, i32 noundef %i.ja)
  br label %bb.av

bb.ap:                                            ; preds = %bb.am
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !134
  %i.je = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.jf = load float, ptr %i.je, align 4, !tbaa !15
  call fastcc void @_retouch_blur(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %.071.i, ptr noundef %4, float noundef %i.bv, i32 noundef %i.jd, float noundef %i.jf, ptr noundef nonnull %i.m)
  br label %bb.av

bb.aq:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !17
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !138 ; 3 uses
  store float %i.jk, ptr %i.bn, align 8, !tbaa !12
  store float %i.jk, ptr %i.bm, align 4, !tbaa !12
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !138 ; 2 uses
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jo, %i.jm
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.jr = load <2 x float>, ptr %i.jq, align 4, !tbaa !12
  %i.js = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = fadd reassoc nsz arcp contract afn <2 x float> %i.jr, %i.jt
  store <2 x float> %i.ju, ptr %i.bm, align 4, !tbaa !12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sink = phi float [ %i.jk, %bb.ar ], [ %i.jp, %bb.as ]
  store float %.sink, ptr %i.h, align 16, !tbaa !12
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !12
  call fastcc void @_retouch_fill(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %.071.i, ptr noundef %4, float noundef %i.bv, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.av

bb.au:                                            ; preds = %bb.am
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.147, i32 noundef %i.dq) #27
  br label %bb.av

bb.av:                                            ; preds = %bb.ao, %bb.at, %bb.au, %bb.ap, %bb.an
  br i1 %i.aj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jv = load i32, ptr %i.bq, align 8, !tbaa !341
  call fastcc void @rt_copy_mask_to_alpha(ptr noundef %0, ptr noundef nonnull %i.ad, i32 noundef %i.jv, ptr noundef nonnull %.071.i, ptr noundef %4, float noundef %i.bv)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.al
  %i.jw = load ptr, ptr %i.e, align 8, !tbaa !267
  call void @free(ptr noundef %i.jw) #27
  call void @free(ptr noundef nonnull %.071.i) #27
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ak, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %rt_masks_get_delta_to_destination.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %dt_masks_get_mask.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.bb

bb.bb:                                            ; preds = %rt_masks_form_is_in_roi.exit.thread, %bb.o, %bb.s, %bb.ba, %rt_masks_form_is_in_roi.exit, %bb.q, %bb.p, %bb.m
  %i.jx = getelementptr inbounds nuw i8, ptr %.0168, i64 8
  %.0 = load ptr, ptr %i.jx, align 8, !tbaa !124  ; 2 uses
  %.not145 = icmp eq ptr %.0, null
  br i1 %.not145, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.bb, %.preheader, %bb.i, %bb.k, %bb.j, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rt_process_stats(ptr %.8.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = shl nsw i64 %i.b, 2
  %i.e = mul i64 %i.d, %i.c                       ; 5 uses
  %i.f = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %.8.val) #27 ; 6 uses
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 896
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 768
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %dt_XYZ_to_Lab.exit.us
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %dt_XYZ_to_Lab.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %.0313.us = phi float [ %i.af, %dt_XYZ_to_Lab.exit.us ], [ 0.000000e+00, %.lr.ph ]
  %.0322.us = phi float [ %i.ae, %dt_XYZ_to_Lab.exit.us ], [ f0x7F7FFFFF, %.lr.ph ] ; 2 uses
  %.0331.us = phi float [ %i.ac, %dt_XYZ_to_Lab.exit.us ], [ f0xFF7FFFFF, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load float, ptr %i.j, align 4, !tbaa !12
  %i.n = load float, ptr %i.k, align 4, !tbaa !12
  %i.o = load float, ptr %i.l, align 4, !tbaa !12
  %i.p = fmul reassoc nsz arcp contract afn float %i.m, f0x3E63D838
  %i.q = fmul reassoc nsz arcp contract afn float %i.n, f0x3F37855B
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, %i.p
  %i.s = fmul reassoc nsz arcp contract afn float %i.o, 6.061690e-02
  %i.t = fadd reassoc nsz arcp contract afn float %i.r, %i.s ; 3 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.t, f0x3C111AA7
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, f0x40F92F69
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.x = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.t) #29
  br label %dt_XYZ_to_Lab.exit.us

dt_XYZ_to_Lab.exit.us:                            ; preds = %bb.c, %bb.b
  %i.y = phi reassoc nsz arcp contract afn float [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 1.160000e+02
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, -1.600000e+01 ; 5 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ogt float %.0331.us, %i.aa
  %i.ac = select reassoc nsz arcp contract afn i1 %i.ab, float %.0331.us, float %i.aa ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %.0322.us, %i.aa
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float %.0322.us, float %i.aa ; 2 uses
  %i.af = fadd reassoc nsz arcp contract afn float %i.aa, %.0313.us ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 4 ; 2 uses
  %i.ag = icmp ugt i64 %i.e, %indvars.iv.next23
  br i1 %i.ag, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 852
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 704
  %i.aj = load i32, ptr %i.ai, align 64, !tbaa !264
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !265
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %dt_XYZ_to_Lab.exit.us
  %i.al = add i64 %i.e, 17179869180
  %i.am = lshr exact i64 %i.al, 2
  %i.an = trunc i64 %i.am to i32
  %i.ao = add nuw i32 %i.an, 1
  br label %._crit_edge

._crit_edge.loopexit13:                           ; preds = %bb.d
  %i.ap = add i64 %i.e, 17179869180
  %i.aq = lshr exact i64 %i.ap, 2
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add nuw i32 %i.ar, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit13, %._crit_edge.loopexit, %bb.a
  %.033.lcssa = phi float [ f0xFF7FFFFF, %bb.a ], [ %i.ac, %._crit_edge.loopexit ], [ %i.bd, %._crit_edge.loopexit13 ]
  %.032.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.ae, %._crit_edge.loopexit ], [ %i.bf, %._crit_edge.loopexit13 ]
  %.031.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.af, %._crit_edge.loopexit ], [ %i.bg, %._crit_edge.loopexit13 ]
  %.030.lcssa = phi i32 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit ], [ %i.as, %._crit_edge.loopexit13 ]
  %i.at = fmul reassoc nsz arcp contract afn float %.032.lcssa, f0x3C23D70A
  store float %i.at, ptr %3, align 4, !tbaa !12
  %i.au = fmul reassoc nsz arcp contract afn float %.033.lcssa, f0x3C23D70A
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.au, ptr %i.av, align 4, !tbaa !12
end_hunk_1
