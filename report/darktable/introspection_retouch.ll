Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@rt_develop_ui_pipe_finished_callback:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #27 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !209
  call void @gtk_widget_queue_draw(ptr noundef %i.al) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_masks_reset_form_gui() #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.6) #27
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 13200
  store i32 %i.c, ptr %i.d, align 4, !tbaa !144
  ret void
}

declare void @dt_masks_reset_form_gui() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !158
  %i.c = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.6) #27
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 13200
  store i32 %i.c, ptr %i.d, align 4, !tbaa !144
  ret void
}

; Function Attrs: nounwind uwtable
define void @modify_roi_in(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca float, align 4                    ; 5 uses
  %i.p = alloca float, align 4                    ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !317
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.s = load <2 x i32>, ptr %i.q, align 4, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.u = load <2 x i32>, ptr %3, align 4, !tbaa !13 ; 5 uses
  %i.v = add nsw <2 x i32> %i.u, %i.s             ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !199 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !242
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2584
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !244
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !120
  %i.ag = tail call ptr @dt_masks_get_from_id_ext(ptr noundef %i.ad, i32 noundef %i.af) #27 ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %rt_compute_roi_in.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !123
  %i.aj = and i32 %i.ai, 4
  %.not152.i = icmp eq i32 %i.aj, 0
  br i1 %.not152.i, label %rt_compute_roi_in.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.095188.i = load ptr, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  %.not153189.i = icmp eq ptr %.095188.i, null
  br i1 %.not153189.i, label %rt_compute_roi_in.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = shufflevector <2 x i32> %i.u, <2 x i32> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.q, %.lr.ph.i
  %.095194.i = phi ptr [ %.095188.i, %.lr.ph.i ], [ %.095.i, %bb.q ] ; 2 uses
  %i.an = phi <4 x i32> [ %i.am, %.lr.ph.i ], [ %i.ez, %bb.q ] ; 17 uses
  %i.ao = load ptr, ptr %.095194.i, align 8, !tbaa !126 ; 2 uses
  %.not154.i = icmp eq ptr %i.ao, null
  br i1 %.not154.i, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !128 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.preheader.i.i, label %rt_get_index_from_formid.exit.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 0, %bb.d ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [44 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !106
  %i.at = icmp ne i32 %i.as, %i.ap                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.au = icmp samesign ult i64 %indvars.iv.i.i, 299
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.preheader.i.i, label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.preheader.i.i
  %i.aw = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %spec.select.i.i = select i1 %i.at, i32 -1, i32 %i.aw
  br label %rt_get_index_from_formid.exit.i

rt_get_index_from_formid.exit.i:                  ; preds = %.loopexit.loopexit.i.i, %bb.d
  %.2.i.i = phi i32 [ -1, %bb.d ], [ %spec.select.i.i, %.loopexit.loopexit.i.i ] ; 2 uses
  %i.ax = sext i32 %.2.i.i to i64
  %i.ay = getelementptr inbounds [44 x i8], ptr %i.x, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !107
  %i.bb = icmp eq i32 %i.ba, 4
  br i1 %i.bb, label %bb.q, label %bb.e

bb.e:                                             ; preds = %rt_get_index_from_formid.exit.i
  %i.bc = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2584
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
  %i.bu = sitofp <2 x i32> %i.bt to <2 x float>
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
  %4 = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.by, <2 x i32> %i.cl)
  %i.cm = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %i.cn = insertelement <2 x i32> %i.cm, i32 %i.ce, i64 1
  %i.co = shufflevector <4 x i32> %i.an, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %5 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cn, <2 x i32> %i.co)
  %6 = shufflevector <2 x i32> %4, <2 x i32> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = sitofp <4 x i32> %6 to <4 x float>
  %i.cp = fptosi <4 x float> %7 to <4 x i32>
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cq = icmp eq i32 %i.cj, 3
  %i.cr = icmp sgt i32 %.2.i.i, -1
  %or.cond.i = and i1 %i.cr, %i.cq
  br i1 %or.cond.i, label %.thread179.i, label %bb.m

.thread179.i:                                     ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15
  %i.cu = load float, ptr %i.al, align 8, !tbaa !250
  %i.cv = fmul reassoc nsz arcp contract afn float %i.bh, 4.000000e+00
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.ct
  %i.cx = fdiv reassoc nsz arcp contract afn float %i.cw, %i.cu
  %i.cy = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.cx)
  %i.cz = fptosi float %i.cy to i32
  %i.da = shufflevector <2 x i32> %i.by, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.db = insertelement <4 x i32> %i.da, i32 %i.ci, i64 2
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.ce, i64 3 ; 3 uses
  %i.dd = icmp sgt <4 x i32> %i.an, %i.dc
  %i.de = icmp slt <4 x i32> %i.an, %i.dc
  %i.df = shufflevector <4 x i1> %i.dd, <4 x i1> %i.de, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dg = insertelement <4 x i32> poison, i32 %i.cz, i64 0
  %i.dh = shufflevector <4 x i32> %i.dg, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.di = sub nsw <4 x i32> %i.an, %i.dh
  %i.dj = add nsw <4 x i32> %i.an, %i.dh
  %i.dk = shufflevector <4 x i32> %i.di, <4 x i32> %i.dj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dl = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dk, <4 x i32> %i.dc)
  %i.dm = select <4 x i1> %i.df, <4 x i32> %i.dl, <4 x i32> %i.an
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dn = icmp eq i32 %i.cj, 1
  br i1 %i.dn, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %.thread168.i
  %i.do = phi <4 x i32> [ %i.cp, %.thread168.i ], [ %i.an, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !123
  %i.dr = and i32 %i.dq, 99
  %or.cond46.i.i = icmp eq i32 %i.dr, 0
  br i1 %or.cond46.i.i, label %rt_masks_get_delta_to_destination.exit.thread.i, label %rt_masks_get_delta_to_destination.exit.i

rt_masks_get_delta_to_destination.exit.i:         ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !16
  %i.du = load ptr, ptr %i.bf, align 8, !tbaa !175
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !126
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.dx = call fastcc i32 @rt_masks_point_calc_delta(ptr noundef readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %3, ptr noundef %i.dv, ptr noundef readonly %i.dw, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, i32 noundef %i.dt)
  %.not161.i = icmp eq i32 %i.dx, 0
  br i1 %.not161.i, label %rt_masks_get_delta_to_destination.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %rt_masks_get_delta_to_destination.exit.i
  %i.dy = load i32, ptr %i.l, align 4, !tbaa !13
  %i.dz = load float, ptr %i.p, align 4, !tbaa !12
  %i.ea = shufflevector <4 x i32> %i.do, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.eb = sitofp <2 x i32> %i.ea to <2 x float>
  %i.ec = load i32, ptr %i.k, align 4, !tbaa !13
  %i.ed = load float, ptr %i.o, align 4, !tbaa !12
  %i.ee = load i32, ptr %i.m, align 4, !tbaa !13
  %i.ef = shufflevector <4 x i32> %i.do, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.eg = sitofp <2 x i32> %i.ef to <2 x float>
  %i.eh = load i32, ptr %i.n, align 4, !tbaa !13
  %i.ei = insertelement <2 x i32> poison, i32 %i.ec, i64 0
  %i.ej = insertelement <2 x i32> %i.ei, i32 %i.dy, i64 1 ; 2 uses
  %i.ek = sitofp <2 x i32> %i.ej to <2 x float>
  %i.el = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.dz, i64 1 ; 2 uses
  %i.en = fsub reassoc nsz arcp contract afn <2 x float> %i.ek, %i.em
  %i.eo = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.en, <2 x float> %i.eb)
  %i.ep = insertelement <2 x i32> poison, i32 %i.ee, i64 0
  %i.eq = insertelement <2 x i32> %i.ep, i32 %i.eh, i64 1
  %i.er = add nsw <2 x i32> %i.eq, %i.ej
  %i.es = sitofp <2 x i32> %i.er to <2 x float>
  %i.et = fsub reassoc nsz arcp contract afn <2 x float> %i.es, %i.em
  %i.eu = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.et, <2 x float> %i.eg)
  %i.ev = shufflevector <2 x float> %i.eo, <2 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ew = fptosi <4 x float> %i.ev to <4 x i32>
  br label %rt_masks_get_delta_to_destination.exit.thread.i

rt_masks_get_delta_to_destination.exit.thread.i:  ; preds = %bb.o, %rt_masks_get_delta_to_destination.exit.i, %bb.n
  %i.ex = phi <4 x i32> [ %i.ew, %bb.o ], [ %i.do, %rt_masks_get_delta_to_destination.exit.i ], [ %i.do, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  br label %bb.p

bb.p:                                             ; preds = %rt_masks_get_delta_to_destination.exit.thread.i, %bb.m, %.thread179.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ey = phi <4 x i32> [ %i.an, %bb.f ], [ %i.an, %bb.g ], [ %i.an, %bb.j ], [ %i.an, %bb.i ], [ %i.an, %bb.h ], [ %i.ex, %rt_masks_get_delta_to_destination.exit.thread.i ], [ %i.an, %bb.m ], [ %i.dm, %.thread179.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.e, %rt_get_index_from_formid.exit.i, %bb.c
  %i.ez = phi <4 x i32> [ %i.an, %bb.c ], [ %i.an, %rt_get_index_from_formid.exit.i ], [ %i.ey, %bb.p ], [ %i.an, %bb.e ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.095194.i, i64 8
  %.095.i = load ptr, ptr %i.fa, align 8, !tbaa !124 ; 2 uses
  %.not153.i = icmp eq ptr %.095.i, null
  br i1 %.not153.i, label %rt_compute_roi_in.exit.loopexit, label %bb.c

rt_compute_roi_in.exit.loopexit:                  ; preds = %bb.q
  %i.fb = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.fc = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  br label %rt_compute_roi_in.exit

rt_compute_roi_in.exit:                           ; preds = %rt_compute_roi_in.exit.loopexit, %bb.a, %bb.b, %.preheader.i
  %i.fd = phi <2 x i32> [ %i.u, %bb.a ], [ %i.u, %bb.b ], [ %i.u, %.preheader.i ], [ %i.fc, %rt_compute_roi_in.exit.loopexit ]
  %i.fe = phi <2 x i32> [ %i.v, %bb.a ], [ %i.v, %bb.b ], [ %i.v, %.preheader.i ], [ %i.fb, %rt_compute_roi_in.exit.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %rt_extend_roi_in_for_clone.exit.outer

rt_extend_roi_in_for_clone.exit.outer:            ; preds = %.critedge56.i, %rt_compute_roi_in.exit
  %.ph123 = phi <2 x i32> [ %i.fd, %rt_compute_roi_in.exit ], [ %i.lr, %.critedge56.i ] ; 5 uses
  %.ph124 = phi <2 x i32> [ %i.fe, %rt_compute_roi_in.exit ], [ %i.ls, %.critedge56.i ] ; 5 uses
  %.ph125 = phi <2 x i32> [ splat (i32 -1), %rt_compute_roi_in.exit ], [ %.ph123, %.critedge56.i ]
  %.ph126 = phi <2 x i32> [ splat (i32 -1), %rt_compute_roi_in.exit ], [ %.ph124, %.critedge56.i ]
  %i.fg = icmp eq <2 x i32> %.ph124, %.ph126      ; 2 uses
  %i.fh = extractelement <2 x i1> %i.fg, i64 0
  %i.fi = extractelement <2 x i1> %i.fg, i64 1
  %or.cond.peel = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond.peel, label %bb.r, label %.critedge.peel

bb.r:                                             ; preds = %rt_extend_roi_in_for_clone.exit.outer
  %i.fj = icmp eq <2 x i32> %.ph123, %.ph125      ; 2 uses
  %i.fk = extractelement <2 x i1> %i.fj, i64 0
  %i.fl = extractelement <2 x i1> %i.fj, i64 1
  %or.cond56.peel = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond56.peel, label %.loopexit, label %.critedge.peel

.critedge.peel:                                   ; preds = %bb.r, %rt_extend_roi_in_for_clone.exit.outer
  %i.fm = load ptr, ptr %i.w, align 16, !tbaa !199 ; 2 uses
  %i.fn = load ptr, ptr %i.y, align 8, !tbaa !242
  %i.fo = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2584
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !244
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !120
  %i.ft = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.fq, i32 noundef %i.fs) #27 ; 3 uses
  %.not.i58.peel = icmp eq ptr %i.ft, null
  br i1 %.not.i58.peel, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.critedge.peel
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !123
  %i.fw = and i32 %i.fv, 4
  %.not49.i.peel = icmp eq i32 %i.fw, 0
  br i1 %.not49.i.peel, label %.loopexit, label %.preheader.i59.peel

.preheader.i59.peel:                              ; preds = %bb.s
  %.04283.i.peel = load ptr, ptr %i.ft, align 8, !tbaa !124 ; 2 uses
  %.not5084.i.peel = icmp eq ptr %.04283.i.peel, null
  br i1 %.not5084.i.peel, label %.loopexit, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.preheader.i59.peel, %.critedge56.i
  %.04289.i = phi ptr [ %.042.i, %.critedge56.i ], [ %.04283.i.peel, %.preheader.i59.peel ] ; 2 uses
  %i.fx = phi <2 x i32> [ %i.lr, %.critedge56.i ], [ %.ph123, %.preheader.i59.peel ] ; 13 uses
  %i.fy = phi <2 x i32> [ %i.ls, %.critedge56.i ], [ %.ph124, %.preheader.i59.peel ] ; 13 uses
  %i.fz = load ptr, ptr %.04289.i, align 8, !tbaa !126 ; 2 uses
  %.not51.i = icmp eq ptr %i.fz, null
  br i1 %.not51.i, label %.critedge56.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i60
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !128 ; 4 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.preheader.i.i64, label %rt_get_index_from_formid.exit.i61

.preheader.i.i64:                                 ; preds = %bb.t, %.preheader.i.i64
  %indvars.iv.i.i65 = phi i64 [ %indvars.iv.next.i.i66, %.preheader.i.i64 ], [ 0, %bb.t ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [44 x i8], ptr %i.fm, i64 %indvars.iv.i.i65
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !106
  %i.ge = icmp ne i32 %i.gd, %i.ga                ; 2 uses
  %indvars.iv.next.i.i66 = add nuw nsw i64 %indvars.iv.i.i65, 1
  %i.gf = icmp samesign ult i64 %indvars.iv.i.i65, 299
  %i.gg = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %i.gg, label %.preheader.i.i64, label %.loopexit.loopexit.i.i67

.loopexit.loopexit.i.i67:                         ; preds = %.preheader.i.i64
  %i.gh = select i1 %i.ge, i64 -1, i64 %indvars.iv.i.i65
  br label %rt_get_index_from_formid.exit.i61

rt_get_index_from_formid.exit.i61:                ; preds = %.loopexit.loopexit.i.i67, %bb.t
  %.2.i.i62 = phi i64 [ -1, %bb.t ], [ %i.gh, %.loopexit.loopexit.i.i67 ]
  %i.gi = getelementptr inbounds [44 x i8], ptr %i.fm, i64 %.2.i.i62
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !107
  %.off.i = add i32 %i.gk, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.u, label %.critedge56.i

bb.u:                                             ; preds = %rt_get_index_from_formid.exit.i61
  %i.gl = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2584
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !244
  %i.go = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.gn, i32 noundef %i.ga) #27 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %.critedge56.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.gq = call i32 @dt_masks_get_source_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.go, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #27
  %.not54.not.i = icmp eq i32 %i.gq, 0
  br i1 %.not54.not.i, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gr = load float, ptr %i.ff, align 4, !tbaa !245
  %i.gs = load i32, ptr %i.i, align 4, !tbaa !13
  %i.gt = load i32, ptr %i.j, align 4, !tbaa !13
  %i.gu = load i32, ptr %i.g, align 4, !tbaa !13
  %i.gv = load i32, ptr %i.h, align 4, !tbaa !13
  %i.gw = insertelement <4 x i32> poison, i32 %i.gs, i64 0
  %i.gx = insertelement <4 x i32> %i.gw, i32 %i.gt, i64 1
  %i.gy = insertelement <4 x i32> %i.gx, i32 %i.gu, i64 2
  %i.gz = insertelement <4 x i32> %i.gy, i32 %i.gv, i64 3
  %i.ha = sitofp <4 x i32> %i.gz to <4 x float>
  %i.hb = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hd = fmul reassoc nsz arcp contract afn <4 x float> %i.hc, %i.ha
  %i.he = fptosi <4 x float> %i.hd to <4 x i32>   ; 4 uses
  %i.hf = extractelement <4 x i32> %i.he, i64 0   ; 2 uses
  store i32 %i.hf, ptr %i.i, align 4, !tbaa !13
  %i.hg = extractelement <4 x i32> %i.he, i64 1   ; 2 uses
  store i32 %i.hg, ptr %i.j, align 4, !tbaa !13
  %i.hh = extractelement <4 x i32> %i.he, i64 2   ; 4 uses
  store i32 %i.hh, ptr %i.g, align 4, !tbaa !13
  %i.hi = extractelement <4 x i32> %i.he, i64 3   ; 4 uses
  store i32 %i.hi, ptr %i.h, align 4, !tbaa !13
  %i.hj = extractelement <2 x i32> %i.fy, i64 1
  %i.hk = icmp slt i32 %i.hj, %i.hi
  br i1 %i.hk, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hl = add nsw i32 %i.hi, %i.hg                ; 2 uses
  %i.hm = extractelement <2 x i32> %i.fx, i64 1
  %i.hn = icmp slt i32 %i.hl, %i.hm
  %i.ho = extractelement <2 x i32> %i.fy, i64 0
  %i.hp = icmp slt i32 %i.ho, %i.hh
  %or.cond.i63 = select i1 %i.hn, i1 true, i1 %i.hp
  br i1 %or.cond.i63, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hq = add nsw i32 %i.hh, %i.hf                ; 2 uses
  %i.hr = extractelement <2 x i32> %i.fx, i64 0
  %.not81.i = icmp slt i32 %i.hq, %i.hr
  br i1 %.not81.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hs = load ptr, ptr %i.w, align 16, !tbaa !199 ; 2 uses
  %i.ht = load ptr, ptr %i.y, align 8, !tbaa !242
  %i.hu = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 2584
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !244
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !120
  %i.hz = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.hw, i32 noundef %i.hy) #27 ; 3 uses
  %.not.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !123
  %i.ic = and i32 %i.ib, 4
  %.not121.i.i = icmp eq i32 %i.ic, 0
  br i1 %.not121.i.i, label %.critedge.i, label %.preheader.i57.i

.preheader.i57.i:                                 ; preds = %bb.aa
  %.071166.i.i = load ptr, ptr %i.hz, align 8, !tbaa !124 ; 2 uses
  %.not122167.i.i = icmp eq ptr %.071166.i.i, null
  br i1 %.not122167.i.i, label %.critedge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i57.i, %.thread.i.i
  %.071172.i.i = phi ptr [ %.071.i.i, %.thread.i.i ], [ %.071166.i.i, %.preheader.i57.i ] ; 2 uses
  %i.id = phi <2 x i32> [ %i.lm, %.thread.i.i ], [ %i.fx, %.preheader.i57.i ] ; 10 uses
  %i.ie = phi <2 x i32> [ %i.ln, %.thread.i.i ], [ %i.fy, %.preheader.i57.i ] ; 10 uses
  %i.if = load ptr, ptr %.071172.i.i, align 8, !tbaa !126 ; 2 uses
  %.not123.i.i = icmp eq ptr %i.if, null
  br i1 %.not123.i.i, label %.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !128 ; 4 uses
  %i.ih = icmp eq i32 %i.ig, %i.ga
  br i1 %i.ih, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ii = icmp sgt i32 %i.ig, 0
  br i1 %i.ii, label %.preheader.i.i.i, label %rt_get_index_from_formid.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.ac, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.preheader.i.i.i ], [ 0, %bb.ac ] ; 4 uses
  %i.ij = getelementptr inbounds nuw [44 x i8], ptr %i.hs, i64 %indvars.iv.i.i.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !106
  %i.il = icmp ne i32 %i.ik, %i.ig                ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.im = icmp samesign ult i64 %indvars.iv.i.i.i, 299
  %i.in = select i1 %i.il, i1 %i.im, i1 false
  br i1 %i.in, label %.preheader.i.i.i, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.preheader.i.i.i
  %i.io = select i1 %i.il, i64 -1, i64 %indvars.iv.i.i.i
  br label %rt_get_index_from_formid.exit.i.i

rt_get_index_from_formid.exit.i.i:                ; preds = %.loopexit.loopexit.i.i.i, %bb.ac
  %.2.i.i.i = phi i64 [ -1, %bb.ac ], [ %i.io, %.loopexit.loopexit.i.i.i ]
  %i.ip = getelementptr inbounds [44 x i8], ptr %i.hs, i64 %.2.i.i.i ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !107
  %.off.i.i = add i32 %i.ir, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.ad, label %.thread.i.i

bb.ad:                                            ; preds = %rt_get_index_from_formid.exit.i.i
  %i.is = load ptr, ptr %i.aa, align 8, !tbaa !243
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2584
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !244
  %i.iv = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.iu, i32 noundef %i.ig) #27 ; 5 uses
  %.not126.i.i = icmp eq ptr %i.iv, null
  br i1 %.not126.i.i, label %.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.iw = call i32 @dt_masks_get_source_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.iv, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #27
  %.not127.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not127.i.i, label %.thread.sink.split.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ix = load float, ptr %i.ff, align 4, !tbaa !245
  %i.iy = load i32, ptr %i.c, align 4, !tbaa !13
  %i.iz = load i32, ptr %i.d, align 4, !tbaa !13
  %i.ja = load i32, ptr %i.a, align 4, !tbaa !13
  %i.jb = load i32, ptr %i.b, align 4, !tbaa !13
  %i.jc = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iz, i64 1
  %i.je = insertelement <4 x i32> %i.jd, i32 %i.ja, i64 2
  %i.jf = insertelement <4 x i32> %i.je, i32 %i.jb, i64 3
  %i.jg = sitofp <4 x i32> %i.jf to <4 x float>
  %i.jh = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = fmul reassoc nsz arcp contract afn <4 x float> %i.ji, %i.jg
  %i.jk = fptosi <4 x float> %i.jj to <4 x i32>   ; 4 uses
  %i.jl = extractelement <4 x i32> %i.jk, i64 0
  store i32 %i.jl, ptr %i.c, align 4, !tbaa !13
  %i.jm = extractelement <4 x i32> %i.jk, i64 1
  store i32 %i.jm, ptr %i.d, align 4, !tbaa !13
  %i.jn = extractelement <4 x i32> %i.jk, i64 2
  store i32 %i.jn, ptr %i.a, align 4, !tbaa !13
  %i.jo = extractelement <4 x i32> %i.jk, i64 3
  store i32 %i.jo, ptr %i.b, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !12
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !123
  %i.jr = and i32 %i.jq, 99
  %or.cond46.i.i.i = icmp eq i32 %i.jr, 0
  br i1 %or.cond46.i.i.i, label %rt_masks_get_delta_to_destination.exit.thread.i.i, label %rt_masks_get_delta_to_destination.exit.i.i

rt_masks_get_delta_to_destination.exit.i.i:       ; preds = %bb.af
  %i.js = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !16
  %i.ju = load ptr, ptr %i.iv, align 8, !tbaa !175
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !126
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.jx = call fastcc i32 @rt_masks_point_calc_delta(ptr noundef readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %3, ptr noundef %i.jv, ptr noundef readonly %i.jw, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.jt)
  %.not128.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not128.i.i, label %rt_masks_get_delta_to_destination.exit.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %rt_masks_get_delta_to_destination.exit.i.i
  %i.jy = load i32, ptr %i.b, align 4, !tbaa !13
  %i.jz = load float, ptr %i.f, align 4, !tbaa !12
  %i.ka = load i32, ptr %i.a, align 4, !tbaa !13
  %i.kb = load float, ptr %i.e, align 4, !tbaa !12
  %i.kc = insertelement <2 x i32> poison, i32 %i.ka, i64 0
  %i.kd = insertelement <2 x i32> %i.kc, i32 %i.jy, i64 1 ; 3 uses
  %i.ke = sitofp <2 x i32> %i.kd to <2 x float>
  %i.kf = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kg = insertelement <2 x float> %i.kf, float %i.jz, i64 1 ; 2 uses
  %i.kh = fadd reassoc nsz arcp contract afn <2 x float> %i.kg, %i.ke ; 3 uses
  %i.ki = extractelement <2 x float> %i.kh, i64 1
  %i.kj = fptosi float %i.ki to i32               ; 2 uses
  %i.kk = load i32, ptr %i.d, align 4, !tbaa !13  ; 2 uses
  %i.kl = add nsw i32 %i.kk, %i.kj
  %i.km = icmp slt i32 %i.kl, %i.hi
  %i.kn = icmp slt i32 %i.hl, %i.kj
  %or.cond.i.i = or i1 %i.kn, %i.km
  br i1 %or.cond.i.i, label %rt_masks_get_delta_to_destination.exit.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ko = extractelement <2 x float> %i.kh, i64 0
  %i.kp = fptosi float %i.ko to i32               ; 2 uses
  %i.kq = load i32, ptr %i.c, align 4, !tbaa !13  ; 2 uses
  %i.kr = add nsw i32 %i.kq, %i.kp
  %i.ks = icmp sge i32 %i.kr, %i.hh
  %i.kt = icmp sge i32 %i.hq, %i.kp
  %or.cond131.i.i = and i1 %i.kt, %i.ks
  br i1 %or.cond131.i.i, label %bb.ai, label %rt_masks_get_delta_to_destination.exit.thread.i.i

bb.ai:                                            ; preds = %bb.ah
  %8 = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.kd, <2 x i32> %i.id)
  %i.ku = insertelement <2 x i32> poison, i32 %i.kq, i64 0
  %i.kv = insertelement <2 x i32> %i.ku, i32 %i.kk, i64 1
  %i.kw = add nsw <2 x i32> %i.kv, %i.kd          ; 2 uses
  %i.kx = sitofp <2 x i32> %8 to <2 x float>
  %i.ky = fptosi <2 x float> %i.kx to <2 x i32>
  %i.kz = sitofp <2 x i32> %i.ky to <2 x float>
  %i.la = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.kh, <2 x float> %i.kz)
  %i.lb = fptosi <2 x float> %i.la to <2 x i32>
  %i.lc = sitofp <2 x i32> %i.kw to <2 x float>
  %9 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.kw, <2 x i32> %i.ie)
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %i.ld = fptosi <2 x float> %10 to <2 x i32>
  %i.le = fadd reassoc nsz arcp contract afn <2 x float> %i.kg, %i.lc
  %i.lf = sitofp <2 x i32> %i.ld to <2 x float>
  %i.lg = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.le, <2 x float> %i.lf)
  %i.lh = fptosi <2 x float> %i.lg to <2 x i32>
  br label %rt_masks_get_delta_to_destination.exit.thread.i.i

rt_masks_get_delta_to_destination.exit.thread.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %rt_masks_get_delta_to_destination.exit.i.i, %bb.af
  %i.li = phi <2 x i32> [ %i.id, %rt_masks_get_delta_to_destination.exit.i.i ], [ %i.lb, %bb.ai ], [ %i.id, %bb.ah ], [ %i.id, %bb.ag ], [ %i.id, %bb.af ]
  %i.lj = phi <2 x i32> [ %i.ie, %rt_masks_get_delta_to_destination.exit.i.i ], [ %i.lh, %bb.ai ], [ %i.ie, %bb.ah ], [ %i.ie, %bb.ag ], [ %i.ie, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread.sink.split.i.i

.thread.sink.split.i.i:                           ; preds = %rt_masks_get_delta_to_destination.exit.thread.i.i, %bb.ae
  %i.lk = phi <2 x i32> [ %i.li, %rt_masks_get_delta_to_destination.exit.thread.i.i ], [ %i.id, %bb.ae ]
  %i.ll = phi <2 x i32> [ %i.lj, %rt_masks_get_delta_to_destination.exit.thread.i.i ], [ %i.ie, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.ad, %rt_get_index_from_formid.exit.i.i, %.lr.ph.i.i
  %i.lm = phi <2 x i32> [ %i.id, %.lr.ph.i.i ], [ %i.id, %rt_get_index_from_formid.exit.i.i ], [ %i.id, %bb.ad ], [ %i.lk, %.thread.sink.split.i.i ] ; 2 uses
  %i.ln = phi <2 x i32> [ %i.ie, %.lr.ph.i.i ], [ %i.ie, %rt_get_index_from_formid.exit.i.i ], [ %i.ie, %bb.ad ], [ %i.ll, %.thread.sink.split.i.i ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.071172.i.i, i64 8
  %.071.i.i = load ptr, ptr %i.lo, align 8, !tbaa !124 ; 2 uses
  %.not122.i.i = icmp eq ptr %.071.i.i, null
  br i1 %.not122.i.i, label %.critedge.i, label %.lr.ph.i.i

.critedge.i:                                      ; preds = %.thread.i.i, %bb.ab, %.preheader.i57.i, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.lp = phi <2 x i32> [ %i.fx, %bb.w ], [ %i.fx, %bb.x ], [ %i.fx, %.preheader.i57.i ], [ %i.fx, %bb.v ], [ %i.fx, %bb.y ], [ %i.fx, %bb.z ], [ %i.fx, %bb.aa ], [ %i.id, %bb.ab ], [ %i.lm, %.thread.i.i ]
  %i.lq = phi <2 x i32> [ %i.fy, %bb.w ], [ %i.fy, %bb.x ], [ %i.fy, %.preheader.i57.i ], [ %i.fy, %bb.v ], [ %i.fy, %bb.y ], [ %i.fy, %bb.z ], [ %i.fy, %bb.aa ], [ %i.ie, %bb.ab ], [ %i.ln, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %.critedge56.i

.critedge56.i:                                    ; preds = %.critedge.i, %bb.u, %rt_get_index_from_formid.exit.i61, %.lr.ph.i60
  %i.lr = phi <2 x i32> [ %i.fx, %.lr.ph.i60 ], [ %i.fx, %bb.u ], [ %i.lp, %.critedge.i ], [ %i.fx, %rt_get_index_from_formid.exit.i61 ] ; 2 uses
  %i.ls = phi <2 x i32> [ %i.fy, %.lr.ph.i60 ], [ %i.fy, %bb.u ], [ %i.lq, %.critedge.i ], [ %i.fy, %rt_get_index_from_formid.exit.i61 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.04289.i, i64 8
  %.042.i = load ptr, ptr %i.lt, align 8, !tbaa !124 ; 2 uses
  %.not50.i = icmp eq ptr %.042.i, null
  br i1 %.not50.i, label %rt_extend_roi_in_for_clone.exit.outer, label %.lr.ph.i60

.loopexit:                                        ; preds = %bb.r, %.critedge.peel, %bb.s, %.preheader.i59.peel
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.lv = load float, ptr %i.ff, align 4, !tbaa !245
  %i.lw = extractelement <2 x i32> %.ph123, i64 0 ; 2 uses
  %i.lx = sitofp reassoc nsz arcp contract afn i32 %i.lw to float
  %i.ly = call i32 @llvm.smax.i32(i32 %i.lw, i32 0)
  %i.lz = uitofp nsz nneg i32 %i.ly to float
  %i.ma = load <2 x i32>, ptr %i.lu, align 16, !tbaa !13
  %i.mb = sitofp <2 x i32> %i.ma to <2 x float>
  %i.mc = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = fmul reassoc nsz arcp contract afn <2 x float> %i.md, %i.mb ; 3 uses
  %i.mf = extractelement <2 x float> %i.me, i64 0
  %i.mg = fadd reassoc nsz arcp contract afn float %i.mf, -1.000000e+00 ; 2 uses
  %i.mh = fcmp reassoc nsz arcp contract afn olt float %i.mg, %i.lx
  %i.mi = select reassoc nsz arcp contract afn i1 %i.mh, float %i.mg, float %i.lz
  %i.mj = fptosi float %i.mi to i32               ; 3 uses
  store i32 %i.mj, ptr %3, align 4, !tbaa !248
  %i.mk = extractelement <2 x i32> %.ph124, i64 0
  %i.ml = sub nsw i32 %i.mk, %i.mj
  %i.mm = shufflevector <2 x i32> %.ph123, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.mn = insertelement <2 x i32> %i.mm, i32 %i.ml, i64 1 ; 2 uses
  %i.mo = sitofp <2 x i32> %i.mn to <2 x float>
  %i.mp = fadd reassoc nsz arcp contract afn <2 x float> %i.me, <float 5.000000e-01, float -0.000000e+00>
  %i.mq = sitofp reassoc nsz arcp contract afn i32 %i.mj to float
  %i.mr = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.mq, i64 0
  %i.ms = fsub reassoc nsz arcp contract afn <2 x float> %i.mp, %i.mr
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mu = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.mt, %i.mo
  %i.mv = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mn, <2 x i32> <i32 0, i32 1>)
  %i.mw = uitofp nneg <2 x i32> %i.mv to <2 x float>
  %i.mx = select <2 x i1> %i.mu, <2 x float> %i.mt, <2 x float> %i.mw
  %i.my = fptosi <2 x float> %i.mx to <2 x i32>   ; 2 uses
  store <2 x i32> %i.my, ptr %i.t, align 4, !tbaa !13
  %i.mz = extractelement <2 x i32> %i.my, i64 0   ; 2 uses
  %i.na = extractelement <2 x i32> %.ph124, i64 1
  %i.nb = sub nsw i32 %i.na, %i.mz                ; 2 uses
  %i.nc = sitofp reassoc nsz arcp contract afn i32 %i.nb to float
  %i.nd = extractelement <2 x float> %i.me, i64 1
  %i.ne = fadd reassoc nsz arcp contract afn float %i.nd, 5.000000e-01
  %i.nf = sitofp reassoc nsz arcp contract afn i32 %i.mz to float
  %i.ng = fsub reassoc nsz arcp contract afn float %i.ne, %i.nf ; 2 uses
  %i.nh = fcmp reassoc nsz arcp contract afn olt float %i.ng, %i.nc
  %spec.select5791 = call i32 @llvm.smax.i32(i32 %i.nb, i32 1)
  %spec.select57 = uitofp nneg i32 %spec.select5791 to float
  %i.ni = select reassoc nsz arcp contract afn i1 %i.nh, float %i.ng, float %spec.select57
  %i.nj = fptosi float %i.ni to i32
  store i32 %i.nj, ptr %i.r, align 4, !tbaa !247
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
  br i1 %.not, label %bb.bf, label %bb.b

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
end_hunk_0
begin_hunk_1_@dt_ioppr_rgb_matrix_to_lab:bb.a
bb.n:                                             ; preds = %bb.l
  %i.bp = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.bm) #29
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.m, %bb.n
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.bp, %bb.n ], [ %i.bo, %bb.m ]
  %i.br = fmul reassoc nsz arcp contract afn float %i.bd, 1.160000e+02
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, -1.600000e+01
  %i.bt = fsub reassoc nsz arcp contract afn float %i.ax, %i.bd
  %i.bu = fsub reassoc nsz arcp contract afn float %i.bk, %i.bd
  %i.bv = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.bt, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.bu, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bq, i64 3
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.by, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.bz, ptr %1, align 4, !tbaa !12
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_apply_trc(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !267    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load float, ptr %3, align 4, !tbaa !12
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.d ], [ %i.z, %bb.c ], [ %i.h, %bb.a ]
  store float %i.ai, ptr %1, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !267 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12 ; 4 uses
  br i1 %i.am, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = load float, ptr %i.aq, align 4, !tbaa !12
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.as
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.b ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.b
  %..i.1 = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.b
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %..i.1, float 0.000000e+00 ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %i.d
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.d
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nnan nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.g ], [ %i.bp, %bb.h ], [ %i.ao, %bb.e ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !267 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = fcmp reassoc nsz arcp contract afn ult float %i.bu, 0.000000e+00
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12 ; 4 uses
  br i1 %i.bv, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12
  %i.cc = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.bx
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cd, float %i.cf)
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.cb
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ci = fmul reassoc nsz arcp contract afn float %i.bx, %i.b ; 3 uses
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.ci, 0.000000e+00
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.ci, %i.b
  %..i.2 = select reassoc nsz arcp contract afn i1 %i.ck, float %i.ci, float %i.b
  %i.cl = select reassoc nsz arcp contract afn i1 %i.cj, float %..i.2, float 0.000000e+00 ; 3 uses
  %i.cm = fcmp reassoc nsz arcp contract afn olt float %i.cl, %i.d
  %i.cn = select reassoc nsz arcp contract afn i1 %i.cm, float %i.cl, float %i.d
  %i.co = fptosi float %i.cn to i32               ; 2 uses
  %i.cp = sitofp reassoc nsz arcp contract afn i32 %i.co to float
  %i.cq = fsub reassoc nnan nsz arcp contract afn float %i.cl, %i.cp
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cr ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !12 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !12
  %i.cw = fsub reassoc nsz arcp contract afn float %i.cv, %i.ct
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.cq
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.ct
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k
  %i.cz = phi reassoc nsz arcp contract afn float [ %i.ch, %bb.k ], [ %i.cy, %bb.l ], [ %i.bx, %bb.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.cz, ptr %i.da, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"dt_iop_retouch_form_data_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16, !8, i64 20, !7, i64 24, !11, i64 36, !8, i64 40}
!15 = !{!14, !11, i64 16}
!16 = !{!14, !8, i64 40}
!17 = !{!14, !8, i64 20}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTS8_GModule", !18, i64 0}
!21 = !{!"p1 int", !18, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !22, i64 8, !8, i64 16, !8, i64 20}
!24 = !{!"p1 _ZTS12dt_develop_t", !18, i64 0}
!25 = !{!"dt_pthread_mutex_t", !7, i64 0}
!26 = !{!"p1 _ZTS25dt_develop_blend_params_t", !18, i64 0}
!27 = !{!"p1 _ZTS11_GHashTable", !18, i64 0}
!28 = !{!"", !27, i64 0, !27, i64 8}
!29 = !{!"p1 _ZTS15dt_iop_module_t", !18, i64 0}
!30 = !{!"", !29, i64 0, !8, i64 8}
!31 = !{!"", !28, i64 0, !30, i64 16}
!32 = !{!"p1 _ZTS10_GtkWidget", !18, i64 0}
!33 = !{!"p1 _ZTS7_GSList", !18, i64 0}
!34 = !{!"p1 _ZTS18dt_iop_module_so_t", !18, i64 0}
!35 = !{!"dt_iop_module_t", !8, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !20, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !21, i64 608, !23, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !24, i64 664, !8, i64 672, !8, i64 676, !18, i64 680, !18, i64 688, !8, i64 696, !18, i64 704, !25, i64 712, !18, i64 752, !18, i64 760, !26, i64 768, !26, i64 776, !18, i64 784, !31, i64 792, !32, i64 824, !32, i64 832, !32, i64 840, !32, i64 848, !32, i64 856, !32, i64 864, !32, i64 872, !8, i64 880, !32, i64 888, !32, i64 896, !32, i64 904, !33, i64 912, !33, i64 920, !32, i64 928, !32, i64 936, !8, i64 944, !34, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !32, i64 1096, !18, i64 1104, !8, i64 1112}
!36 = !{!35, !18, i64 704}
!37 = !{!35, !18, i64 680}
!38 = !{!"dt_codepath_t", !8, i64 0}
!39 = !{!"p1 _ZTS6_GList", !18, i64 0}
!40 = !{!"p1 _ZTS11_JsonParser", !18, i64 0}
!41 = !{!"p1 _ZTS9dt_conf_t", !18, i64 0}
!42 = !{!"p1 _ZTS8dt_lib_t", !18, i64 0}
!43 = !{!"p1 _ZTS17dt_view_manager_t", !18, i64 0}
!44 = !{!"p1 _ZTS12dt_control_t", !18, i64 0}
!45 = !{!"p1 _ZTS19dt_control_signal_t", !18, i64 0}
!46 = !{!"p1 _ZTS12dt_gui_gtk_t", !18, i64 0}
!47 = !{!"p1 _ZTS17dt_mipmap_cache_t", !18, i64 0}
!48 = !{!"p1 _ZTS16dt_image_cache_t", !18, i64 0}
!49 = !{!"p1 _ZTS12dt_bauhaus_t", !18, i64 0}
!50 = !{!"p1 _ZTS13dt_database_t", !18, i64 0}
!51 = !{!"p1 _ZTS14dt_pwstorage_t", !18, i64 0}
!52 = !{!"p1 _ZTS11dt_camctl_t", !18, i64 0}
!53 = !{!"p1 _ZTS15dt_collection_t", !18, i64 0}
!54 = !{!"p1 _ZTS14dt_selection_t", !18, i64 0}
!55 = !{!"p1 _ZTS11dt_points_t", !18, i64 0}
!56 = !{!"p1 _ZTS12dt_imageio_t", !18, i64 0}
!57 = !{!"p1 _ZTS11dt_opencl_t", !18, i64 0}
!58 = !{!"p1 _ZTS9dt_dbus_t", !18, i64 0}
!59 = !{!"p1 _ZTS9dt_undo_t", !18, i64 0}
!60 = !{!"p1 _ZTS16dt_colorspaces_t", !18, i64 0}
!61 = !{!"p1 _ZTS9dt_l10n_t", !18, i64 0}
!62 = !{!"p1 omnipotent char", !18, i64 0}
!63 = !{!"p1 _ZTS9lua_State", !18, i64 0}
!64 = !{!"_Bool", !7, i64 0}
!65 = !{!"p1 _ZTS10_GMainLoop", !18, i64 0}
!66 = !{!"p1 _ZTS13_GMainContext", !18, i64 0}
!67 = !{!"p1 _ZTS12_GThreadPool", !18, i64 0}
!68 = !{!"p1 _ZTS12_GAsyncQueue", !18, i64 0}
!69 = !{!"", !63, i64 0, !25, i64 8, !7, i64 48, !64, i64 96, !64, i64 97, !65, i64 104, !66, i64 112, !67, i64 120, !68, i64 128, !68, i64 136, !68, i64 144}
!70 = !{!"double", !7, i64 0}
!71 = !{!"p1 _ZTS10_GTimeZone", !18, i64 0}
!72 = !{!"p1 _ZTS10_GDateTime", !18, i64 0}
!73 = !{!"dt_sys_resources_t", !22, i64 0, !22, i64 8, !21, i64 16, !21, i64 24, !8, i64 32}
!74 = !{!"dt_backthumb_t", !70, i64 0, !70, i64 8, !8, i64 16, !8, i64 20}
!75 = !{!"dt_gimp_t", !8, i64 0, !62, i64 8, !62, i64 16, !8, i64 24, !8, i64 28}
!76 = !{!"dt_splash_t", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !8, i64 32}
!77 = !{!"darktable_t", !38, i64 0, !8, i64 4, !8, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !41, i64 56, !24, i64 64, !42, i64 72, !43, i64 80, !44, i64 88, !45, i64 96, !46, i64 104, !47, i64 112, !48, i64 120, !49, i64 128, !50, i64 136, !51, i64 144, !52, i64 152, !53, i64 160, !54, i64 168, !55, i64 176, !56, i64 184, !57, i64 192, !58, i64 200, !59, i64 208, !60, i64 216, !61, i64 224, !7, i64 232, !25, i64 2792, !25, i64 2832, !25, i64 2872, !25, i64 2912, !25, i64 2952, !25, i64 2992, !62, i64 3032, !62, i64 3040, !62, i64 3048, !62, i64 3056, !62, i64 3064, !62, i64 3072, !62, i64 3080, !62, i64 3088, !62, i64 3096, !62, i64 3104, !62, i64 3112, !62, i64 3120, !62, i64 3128, !69, i64 3136, !39, i64 3288, !70, i64 3296, !39, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !71, i64 3520, !72, i64 3528, !73, i64 3536, !74, i64 3576, !75, i64 3600, !76, i64 3632, !8, i64 3672}
!78 = !{!77, !24, i64 64}
!79 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !18, i64 0}
!80 = !{!"short", !7, i64 0}
!81 = !{!"", !80, i64 0, !80, i64 2}
!82 = !{!"", !8, i64 0, !7, i64 16}
!83 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !81, i64 48, !82, i64 64, !7, i64 96, !8, i64 112}
!84 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!85 = !{!"dt_image_geoloc_t", !70, i64 0, !70, i64 8, !70, i64 16}
!86 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!87 = !{!"p1 _ZTS16dt_cache_entry_t", !18, i64 0}
!88 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !22, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !22, i64 1448, !22, i64 1456, !22, i64 1464, !22, i64 1472, !8, i64 1480, !83, i64 1488, !7, i64 1616, !62, i64 1656, !8, i64 1664, !8, i64 1668, !84, i64 1672, !85, i64 1680, !86, i64 1704, !80, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !39, i64 1856, !87, i64 1864, !8, i64 1872, !8, i64 1876}
!89 = !{!"p1 _ZTS15dt_masks_form_t", !18, i64 0}
!90 = !{!"p1 _ZTS19dt_masks_form_gui_t", !18, i64 0}
!91 = !{!"dt_dev_proxy_exposure_t", !29, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!92 = !{!"p1 _ZTS15dt_lib_module_t", !18, i64 0}
!93 = !{!"", !92, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64}
!94 = !{!"", !92, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!95 = !{!"", !91, i64 0, !29, i64 40, !93, i64 48, !94, i64 120}
!96 = !{!"dt_dev_chroma_t", !29, i64 0, !29, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!97 = !{!"", !29, i64 0, !29, i64 8, !18, i64 16}
!98 = !{!"", !32, i64 0, !32, i64 8, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 28, !8, i64 32}
!99 = !{!"", !32, i64 0, !32, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28}
!100 = !{!"", !32, i64 0, !32, i64 8}
!101 = !{!"", !32, i64 0, !8, i64 8}
!102 = !{!"", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32}
!103 = !{!"dt_dev_viewport_t", !32, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !79, i64 80, !32, i64 88, !24, i64 96}
!104 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !18, i64 16, !70, i64 24, !70, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !70, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !29, i64 88, !79, i64 96, !88, i64 112, !8, i64 2000, !8, i64 2004, !25, i64 2008, !8, i64 2048, !39, i64 2056, !8, i64 2064, !29, i64 2072, !8, i64 2080, !39, i64 2088, !39, i64 2096, !8, i64 2104, !39, i64 2112, !39, i64 2120, !21, i64 2128, !21, i64 2136, !8, i64 2144, !8, i64 2148, !39, i64 2152, !89, i64 2160, !90, i64 2168, !39, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !11, i64 2196, !11, i64 2200, !29, i64 2208, !8, i64 2216, !95, i64 2224, !96, i64 2384, !97, i64 2496, !98, i64 2520, !99, i64 2560, !100, i64 2592, !101, i64 2608, !102, i64 2624, !32, i64 2664, !32, i64 2672, !103, i64 2680, !103, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !39, i64 2904, !8, i64 2912, !24, i64 2920}
!105 = !{!104, !8, i64 2888}
!106 = !{!14, !8, i64 0}
!107 = !{!14, !8, i64 8}
!108 = !{!"p1 _ZTS9_GtkLabel", !18, i64 0}
!109 = !{!"p1 _ZTS27_GtkDarktableGradientSlider", !18, i64 0}
!110 = !{!"dt_iop_retouch_gui_data_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !7, i64 24, !8, i64 36, !108, i64 40, !108, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !32, i64 96, !32, i64 104, !32, i64 112, !32, i64 120, !32, i64 128, !32, i64 136, !32, i64 144, !108, i64 152, !108, i64 160, !108, i64 168, !11, i64 176, !11, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !32, i64 208, !32, i64 216, !32, i64 224, !32, i64 232, !109, i64 240, !32, i64 248, !32, i64 256, !32, i64 264, !32, i64 272, !32, i64 280, !32, i64 288, !32, i64 296, !32, i64 304, !32, i64 312, !32, i64 320, !32, i64 328}
!111 = !{!110, !32, i64 296}
!112 = !{!70, !70, i64 0}
!113 = !{!"_GdkRGBA", !70, i64 0, !70, i64 8, !70, i64 16, !70, i64 24}
!114 = !{!113, !70, i64 16}
!115 = !{!113, !70, i64 24}
!116 = !{!77, !46, i64 104}
!117 = !{!35, !26, i64 768}
!118 = !{!35, !24, i64 664}
!119 = !{!"dt_develop_blend_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !11, i64 32, !8, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !8, i64 56, !7, i64 60, !7, i64 68, !7, i64 324, !7, i64 388, !8, i64 408, !8, i64 412, !8, i64 416}
!120 = !{!119, !8, i64 24}
!121 = !{!"p1 _ZTS20dt_masks_functions_t", !18, i64 0}
!122 = !{!"dt_masks_form_t", !39, i64 0, !8, i64 8, !121, i64 16, !7, i64 24, !7, i64 32, !8, i64 160, !8, i64 164}
!123 = !{!122, !8, i64 8}
!124 = !{!39, !39, i64 0}
!125 = !{!"_GList", !18, i64 0, !39, i64 8, !39, i64 16}
!126 = !{!125, !18, i64 0}
!127 = !{!"dt_masks_point_group_t", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 12}
!128 = !{!127, !8, i64 0}
!129 = !{!110, !32, i64 328}
!130 = !{!127, !11, i64 12}
!131 = !{!110, !32, i64 312}
!132 = !{!"dt_iop_retouch_params_t", !7, i64 0, !8, i64 13200, !8, i64 13204, !8, i64 13208, !8, i64 13212, !7, i64 13216, !8, i64 13228, !11, i64 13232, !8, i64 13236, !7, i64 13240, !11, i64 13252, !8, i64 13256}
!133 = !{!132, !8, i64 13228}
!134 = !{!14, !8, i64 12}
!135 = !{!132, !11, i64 13232}
!136 = !{!132, !8, i64 13236}
!137 = !{!132, !11, i64 13252}
!138 = !{!14, !11, i64 36}
!139 = !{!104, !90, i64 2168}
!140 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !18, i64 0}
!141 = !{!"dt_masks_form_gui_t", !39, i64 0, !140, i64 8, !140, i64 16, !8, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !29, i64 184, !29, i64 192, !8, i64 200, !8, i64 204, !22, i64 208, !18, i64 216, !18, i64 224}
!142 = !{!141, !8, i64 176}
!143 = !{!141, !29, i64 192}
!144 = !{!132, !8, i64 13200}
!145 = !{!110, !32, i64 256}
!146 = !{!110, !32, i64 280}
!147 = !{!110, !32, i64 288}
!148 = !{!110, !8, i64 12}
!149 = !{!110, !32, i64 232}
!150 = !{!110, !32, i64 264}
!151 = !{!110, !32, i64 272}
!152 = !{!110, !32, i64 320}
!153 = !{!110, !32, i64 96}
!154 = !{!110, !32, i64 104}
!155 = !{!110, !32, i64 112}
!156 = !{!110, !32, i64 120}
!157 = !{!110, !108, i64 48}
!158 = !{!35, !18, i64 688}
!159 = !{!"p1 _ZTS11dt_action_t", !18, i64 0}
!160 = !{!"dt_action_t", !8, i64 0, !62, i64 8, !62, i64 16, !18, i64 24, !159, i64 32, !159, i64 40}
!161 = !{!"dt_iop_module_so_t", !160, i64 0, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !20, i64 488, !7, i64 496, !18, i64 520, !8, i64 528, !18, i64 536, !8, i64 544, !8, i64 548}
!162 = !{!161, !18, i64 520}
!163 = !{!35, !8, i64 672}
end_hunk_1
