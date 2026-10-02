Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/path?download=true
inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_events_button_released:bb.a
  %i.bl = fadd reassoc nsz arcp contract afn <4 x float> %i.bk, %i.bh
  store <4 x float> %i.bl, ptr %i.bj, align 4, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.bm, align 4, !tbaa !12
  %i.bo = fadd reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bg
  store <2 x float> %i.bo, ptr %i.bm, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.0112138, i64 8
  %.0112 = load ptr, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %.not120 = icmp eq ptr %.0112, null
  br i1 %.not120, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %dt_masks_get_image_size.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !167
  %.not119 = icmp eq i32 %i.br, 0
  br i1 %.not119, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bq, align 4, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bs = fmul reassoc nsz arcp contract afn float %.0, %1
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !156
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, %i.bs
  store float %i.bv, ptr %i.b, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bx = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bz = load float, ptr %i.by, align 8, !tbaa !157
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.bx
  store float %i.ca, ptr %i.bw, align 4, !tbaa !12
  %i.cb = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, i64 noundef 1) #25 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cd = load <2 x float>, ptr %i.b, align 8, !tbaa !12
  %i.ce = fdiv reassoc nsz arcp contract afn <2 x float> %i.cd, %i.ao
  store <2 x float> %i.ce, ptr %i.cc, align 8, !tbaa !12
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !138
  call void @dt_dev_add_masks_history_item(ptr noundef %i.cf, ptr noundef %0, i32 noundef 1) #25
  call void @dt_masks_gui_form_create(ptr noundef %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 140 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !155
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 -1, ptr %i.cg, align 4, !tbaa !155
  %i.cj = tail call fastcc i32 @_path_is_clockwise(ptr noundef %5)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !179
  tail call void @dt_dev_add_masks_history_item(ptr noundef nonnull %i.i, ptr noundef %0, i32 noundef 1) #25
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 132 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !152 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.co = load ptr, ptr %5, align 8, !tbaa !22
  %i.cp = tail call ptr @g_list_nth_data(ptr noundef %i.co, i32 noundef %i.cm) #25 ; 4 uses
  store i32 -1, ptr %i.cl, align 4, !tbaa !152
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 3 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !174
  %i.cs = fcmp reassoc nsz arcp contract afn une float %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !175
  %i.cv = fcmp reassoc nsz arcp contract afn une float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store <2 x float> zeroinitializer, ptr %i.cq, align 4, !tbaa !12
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  store <2 x float> zeroinitializer, ptr %i.cq, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.cw = fmul reassoc nsz arcp contract afn float %.0, %1
  store float %i.cw, ptr %i.c, align 8, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cy = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  store float %i.cy, ptr %i.cx, align 4, !tbaa !12
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !138
  %i.da = call i32 @dt_dev_distort_backtransform(ptr noundef %i.cz, ptr noundef nonnull %i.c, i64 noundef 1) #25 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dc = load <2 x float>, ptr %i.c, align 8, !tbaa !12
  %i.dd = fdiv reassoc nsz arcp contract afn <2 x float> %i.dc, %i.ao ; 2 uses
  %i.de = load <2 x float>, ptr %i.cp, align 4, !tbaa !12
  %i.df = fsub reassoc nsz arcp contract afn <2 x float> %i.dd, %i.de ; 2 uses
  %i.dg = load <2 x float>, ptr %i.db, align 4, !tbaa !12
  %i.dh = fadd reassoc nsz arcp contract afn <2 x float> %i.dg, %i.df
  %i.di = shufflevector <2 x float> %i.dd, <2 x float> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.di, ptr %i.cp, align 4, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dk = load <2 x float>, ptr %i.dj, align 4, !tbaa !12
  %i.dl = fadd reassoc nsz arcp contract afn <2 x float> %i.dk, %i.df
  store <2 x float> %i.dl, ptr %i.dj, align 4, !tbaa !12
  call fastcc void @_path_init_ctrl_points(ptr noundef nonnull %5)
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !138
  call void @dt_dev_add_masks_history_item(ptr noundef %i.dm, ptr noundef %0, i32 noundef 1) #25
  call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #25
  %i.dn = call fastcc i32 @_path_is_clockwise(ptr noundef nonnull %5)
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !158 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ds = load ptr, ptr %5, align 8, !tbaa !22
  %i.dt = tail call ptr @g_list_nth_data(ptr noundef %i.ds, i32 noundef %i.dq) #25 ; 2 uses
  store i32 -1, ptr %i.dp, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.du = fmul reassoc nsz arcp contract afn float %.0, %1
  store float %i.du, ptr %i.d, align 4, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.dw = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  store float %i.dw, ptr %i.dv, align 4, !tbaa !12
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !138
  %i.dy = call i32 @dt_dev_distort_backtransform(ptr noundef %i.dx, ptr noundef nonnull %i.d, i64 noundef 1) #25 ; 0 uses
  %i.dz = load float, ptr %i.d, align 4, !tbaa !12
  %i.ea = extractelement <2 x float> %i.ao, i64 0 ; 2 uses
  %i.eb = fdiv reassoc nsz arcp contract afn float %i.dz, %i.ea
  %i.ec = load float, ptr %i.dv, align 4, !tbaa !12
  %i.ed = extractelement <2 x float> %i.ao, i64 1 ; 2 uses
  %i.ee = fdiv reassoc nsz arcp contract afn float %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !159
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 148 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !160
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !161
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 156
  %i.em = load float, ptr %i.el, align 4, !tbaa !162
  %i.en = fdiv reassoc nsz arcp contract afn float %i.ea, %i.ed
  call void @_update_bezier_ctrl_points(ptr noundef %i.dt, float noundef %i.eb, float noundef %i.ee, i32 noundef %i.eg, i32 noundef %i.ei, float noundef %i.ek, float noundef %i.em, float noundef %i.en)
  store i32 0, ptr %i.eh, align 4, !tbaa !160
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store i32 2, ptr %i.eo, align 4, !tbaa !164
  call fastcc void @_path_init_ctrl_points(ptr noundef nonnull %5)
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !138
  call void @dt_dev_add_masks_history_item(ptr noundef %i.ep, ptr noundef %0, i32 noundef 1) #25
  call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #25
  %i.eq = call fastcc i32 @_path_is_clockwise(ptr noundef nonnull %5)
  %i.er = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !165
  %i.eu = icmp sgt i32 %i.et, -1
  br i1 %i.eu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 -1, ptr %i.es, align 8, !tbaa !165
  tail call void @dt_dev_add_masks_history_item(ptr noundef nonnull %i.i, ptr noundef %0, i32 noundef 1) #25
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.l, %bb.n, %bb.u, %bb.w, %bb.s, %bb.r, %bb.v, %bb.c, %bb.b, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %._crit_edge ], [ 1, %bb.l ], [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %bb.u ], [ 1, %bb.w ], [ 1, %bb.s ], [ 0, %bb.v ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal void @_path_events_post_expose(ptr noundef %0, float noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca float, align 4                    ; 6 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !32
  %i.j = tail call ptr @g_list_nth_data(ptr noundef %i.i, i32 noundef %3) #25 ; 21 uses
  %.not243 = icmp eq ptr %i.j, null
  br i1 %.not243, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = mul nsw i32 %4, 3                        ; 8 uses
  %i.n = add nsw i32 %i.m, 6                      ; 4 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %.loopexit260

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.q = mul nsw i32 %4, 6
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.r
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !12
  %i.u = fpext <2 x float> %i.t to <2 x double>   ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = extractelement <2 x double> %i.u, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.v, double noundef %i.w) #25
  %i.x = load i32, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.y = icmp slt i32 %i.m, %i.x
  br i1 %i.y, label %.lr.ph, label %.loopexit260

.lr.ph:                                           ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ad = sext i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.0232265 = phi i32 [ 0, %.lr.ph ], [ %.1233, %bb.l ] ; 4 uses
  %.0234264 = phi i32 [ 1, %.lr.ph ], [ %.1235, %bb.l ] ; 4 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.af = shl nsw i64 %indvars.iv, 1              ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !12
  %i.ai = fpext <2 x float> %i.ah to <2 x double> ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = extractelement <2 x double> %i.ai, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.aj, double noundef %i.ak) #25
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !42  ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %i.af
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12
  %i.ap = mul nsw i32 %.0234264, 6
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 12
  %i.at = load float, ptr %i.as, align 4, !tbaa !12
  %i.au = fcmp reassoc nsz arcp contract afn oeq float %i.ao, %i.at
  br i1 %i.au, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.af
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = getelementptr i8, ptr %i.ar, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !12
  %i.az = fcmp reassoc nsz arcp contract afn oeq float %i.aw, %i.ay
  br i1 %i.az, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ba = load i32, ptr %i.z, align 4, !tbaa !171
  %i.bb = icmp eq i32 %i.ba, %3
  br i1 %i.bb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bc = load i32, ptr %i.aa, align 4, !tbaa !26
  %.not251 = icmp eq i32 %i.bc, 0
  br i1 %.not251, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bd = load i32, ptr %i.ab, align 8, !tbaa !166
  %.not252 = icmp eq i32 %i.bd, 0
  br i1 %.not252, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.ac, align 4, !tbaa !25
  %i.bf = icmp eq i32 %i.be, %.0232265
  %i.bg = zext i1 %i.bf to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %i.bh = phi i32 [ 0, %bb.g ], [ 1, %bb.i ], [ 1, %bb.h ], [ %i.bg, %bb.j ]
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bh, float noundef %1) #25
  %i.bi = add nsw i32 %.0234264, 1
  %i.bj = srem i32 %i.bi, %4
  %i.bk = add nsw i32 %.0232265, 1
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.af
  %i.bn = load <2 x float>, ptr %i.bm, align 4, !tbaa !12
  %i.bo = fpext <2 x float> %i.bn to <2 x double> ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = extractelement <2 x double> %i.bo, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.bp, double noundef %i.bq) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.f, %bb.k
  %.1235 = phi i32 [ %i.bj, %bb.k ], [ %.0234264, %bb.f ], [ %.0234264, %bb.e ]
  %.1233 = phi i32 [ %i.bk, %bb.k ], [ %.0232265, %bb.f ], [ %.0232265, %bb.e ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.br = load i32, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %bb.e, label %.loopexit260

.loopexit260:                                     ; preds = %bb.l, %bb.d, %bb.c
  %i.bu = phi i32 [ %i.l, %bb.c ], [ %i.x, %bb.d ], [ %i.br, %bb.l ]
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !171
  %i.bx = icmp eq i32 %i.bw, %3
  br i1 %i.bx, label %bb.m, label %.loopexit259.thread316

bb.m:                                             ; preds = %.loopexit260
  %i.by = icmp sgt i32 %i.bu, %i.n
  %i.bz = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.by, %i.bz
  br i1 %or.cond, label %.lr.ph268, label %.loopexit259.thread

.lr.ph268:                                        ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 84
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph268, %bb.p
  %indvars.iv283 = phi i64 [ 0, %.lr.ph268 ], [ %indvars.iv.next284, %bb.p ] ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !152
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp eq i64 %indvars.iv283, %i.cd
  br i1 %i.ce, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !23
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp eq i64 %indvars.iv283, %i.cg
  %i.ci = zext i1 %i.ch to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cj = phi i32 [ 1, %bb.n ], [ %i.ci, %bb.o ]
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !42
  %.idx = mul nuw nsw i64 %indvars.iv283, 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cp = load float, ptr %i.co, align 4, !tbaa !12
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.cj, float noundef %1, float noundef %i.cn, float noundef %i.cp) #25
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit259, label %bb.n

.loopexit259:                                     ; preds = %bb.p
  %.pre = load i32, ptr %i.bv, align 4, !tbaa !171
  %i.cq = icmp eq i32 %.pre, %3
  br i1 %i.cq, label %.loopexit259.thread, label %.loopexit259.thread316

.loopexit259.thread:                              ; preds = %bb.m, %.loopexit259
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !172 ; 6 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  br i1 %i.ct, label %bb.q, label %.loopexit259.thread316

bb.q:                                             ; preds = %.loopexit259.thread
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.cv = mul nuw nsw i32 %i.cs, 6                ; 6 uses
  %i.cw = add nuw nsw i32 %i.cv, 2
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !12
  %i.da = fpext reassoc nsz arcp contract afn float %i.cz to double
  %i.db = add nuw nsw i32 %i.cv, 3
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !12
  %i.df = fpext reassoc nsz arcp contract afn float %i.de to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.da, double noundef %i.df) #25
  %i.dg = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.dh = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !12
  %i.dk = fpext reassoc nsz arcp contract afn float %i.dj to double
  %i.dl = or disjoint i32 %i.cv, 1
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fpext reassoc nsz arcp contract afn float %i.do to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.dk, double noundef %i.dp) #25
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, float noundef %1) #25
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dh
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !12
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dm
  %i.du = load float, ptr %i.dt, align 4, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !158
  %i.dx = icmp eq i32 %i.cs, %i.dw
  br i1 %i.dx, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !24
end_hunk_0
begin_hunk_1_@_path_events_post_expose:bb.a

bb.x:                                             ; preds = %.lr.ph271, %bb.ad
  %.0227270 = phi i32 [ %i.m, %.lr.ph271 ], [ %i.ge, %bb.ad ] ; 3 uses
  %.0228269 = phi i32 [ 1, %.lr.ph271 ], [ %.1229, %bb.ad ] ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !39
  %i.fq = shl nsw i32 %.0227270, 1
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fr ; 3 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !12 ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn oeq float %i.ft, f0xFF7FFFFF
  br i1 %i.fu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr i8, ptr %i.fs, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !12 ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn oeq float %i.fw, f0xFF7FFFFF
  br i1 %i.fx, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fw, -1.000000e+00
  %i.fz = fptosi float %i.fy to i32
  br label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %.not245 = icmp eq i32 %.0228269, 0
  %i.ga = fpext reassoc nsz arcp contract afn float %i.ft to double ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fs, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !12
  %i.gd = fpext reassoc nsz arcp contract afn float %i.gc to double ; 2 uses
  br i1 %.not245, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.ga, double noundef %i.gd) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.ga, double noundef %i.gd) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z
  %.1229 = phi i32 [ %.0228269, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  %.1 = phi i32 [ %i.fz, %bb.z ], [ %.0227270, %bb.ab ], [ %.0227270, %bb.ac ]
  %i.ge = add nsw i32 %.1, 1                      ; 2 uses
  %i.gf = load i32, ptr %i.fl, align 8, !tbaa !40
  %i.gg = icmp slt i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ad, %bb.y
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !168
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %i.gi, float noundef %1) #25
  %i.gj = icmp sgt i32 %4, 0
  br i1 %i.gj, label %.lr.ph275, label %.loopexit

.lr.ph275:                                        ; preds = %._crit_edge
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.trip.count289 = zext nneg i32 %4 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph275, %bb.ag
  %indvars.iv286 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next287, %bb.ag ] ; 5 uses
  %i.gm = load i32, ptr %i.gk, align 8, !tbaa !170
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp eq i64 %indvars.iv286, %i.gn
  br i1 %i.go, label %bb.af, label %._crit_edge296

._crit_edge296:                                   ; preds = %bb.ae
  %.pre297 = mul nuw nsw i64 %indvars.iv286, 6
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gp = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.gq = mul nuw nsw i64 %indvars.iv286, 6       ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !12
  %i.gu = fpext reassoc nsz arcp contract afn float %i.gt to double
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !12
  %i.gx = fpext reassoc nsz arcp contract afn float %i.gw to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.gu, double noundef %i.gx) #25
  %i.gy = load ptr, ptr %i.gl, align 8, !tbaa !39
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gq ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !12
  %i.hb = fpext reassoc nsz arcp contract afn float %i.ha to double
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !12
  %i.he = fpext reassoc nsz arcp contract afn float %i.hd to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.hb, double noundef %i.he) #25
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, float noundef %1) #25
  %.pre294 = load i32, ptr %i.gk, align 8, !tbaa !170
  %.pre295 = zext i32 %.pre294 to i64
  %i.hf = icmp eq i64 %indvars.iv286, %.pre295
  %i.hg = zext i1 %i.hf to i32
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge296, %bb.af
  %.pre-phi298 = phi i64 [ %.pre297, %._crit_edge296 ], [ %i.gq, %bb.af ]
  %.pre-phi = phi i32 [ 0, %._crit_edge296 ], [ %i.hg, %bb.af ]
  %i.hh = load ptr, ptr %i.gl, align 8, !tbaa !39
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.pre-phi298 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !12
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %.pre-phi, float noundef %1, float noundef %i.hj, float noundef %i.hl) #25
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %.loopexit, label %bb.ae

.loopexit:                                        ; preds = %bb.ag, %._crit_edge, %bb.w, %bb.v
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !19
  %.not246 = icmp eq i32 %i.hn, 0
  br i1 %.not246, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !138
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2160
  %i.hq = load ptr, ptr %i.hp, align 16, !tbaa !176 ; 2 uses
  %.not247 = icmp eq ptr %i.hq, null
  br i1 %.not247, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !154
  %i.ht = and i32 %i.hs, 8
  %.not248 = icmp eq i32 %i.ht, 0
  br i1 %.not248, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hu = mul i32 %4, 6                           ; 2 uses
  %i.hv = add i32 %i.hu, -4                       ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, -1
  br i1 %i.hw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !12
  %i.hx = load ptr, ptr %i.j, align 8, !tbaa !42  ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !12
  %i.ic = zext nneg i32 %i.hv to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ic
  %i.ie = load float, ptr %i.id, align 4, !tbaa !12
  %i.if = add i32 %i.hu, -3
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ig
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !12
  call void @dt_masks_calculate_source_pos_value(ptr noundef nonnull %2, i32 noundef 2, float noundef %i.hz, float noundef %i.ib, float noundef %i.ie, float noundef %i.ii, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1) #25
  %i.ij = load float, ptr %i.a, align 4, !tbaa !12
  %i.ik = load float, ptr %i.b, align 4, !tbaa !12
  call void @dt_masks_draw_clone_source_pos(ptr noundef %0, float noundef %1, float noundef %i.ij, float noundef %i.ik) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.im = load float, ptr %i.il, align 4, !tbaa !177 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.io = load float, ptr %i.in, align 8, !tbaa !178 ; 2 uses
  call void @dt_masks_calculate_source_pos_value(ptr noundef nonnull %2, i32 noundef 2, float noundef %i.im, float noundef %i.io, float noundef %i.im, float noundef %i.io, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 0) #25
  %i.ip = load float, ptr %i.c, align 4, !tbaa !12
  %i.iq = load float, ptr %i.d, align 4, !tbaa !12
  call void @dt_masks_draw_clone_source_pos(ptr noundef %0, float noundef %1, float noundef %i.ip, float noundef %i.iq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ai, %bb.ah
  %.pr = load i32, ptr %i.hm, align 4, !tbaa !19
  %.not249 = icmp eq i32 %.pr, 0
  br i1 %.not249, label %.thread, label %bb.aq

.thread:                                          ; preds = %.loopexit, %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 4 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !36 ; 2 uses
  %i.it = icmp sgt i32 %i.is, %i.n
  br i1 %i.it, label %._crit_edge.i.i, label %bb.aq

._crit_edge.i.i:                                  ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !12
  %i.iu = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 5 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !35 ; 5 uses
  %5 = icmp sgt i32 %4, -1
  call void @llvm.assume(i1 %5)
  %6 = zext nneg i32 %i.m to i64                  ; 5 uses
  %wide.trip.count.i.i = sext i32 %i.is to i64    ; 3 uses
  %i.iw = sub nsw i64 %wide.trip.count.i.i, %6
  %xtraiter = and i64 %i.iw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph107.i.i.prol.loopexit, label %.lr.ph107.i.i.prol

.lr.ph107.i.i.prol:                               ; preds = %._crit_edge.i.i, %.lr.ph107.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph107.i.i.prol ], [ %6, %._crit_edge.i.i ] ; 2 uses
  %i.ix = phi <2 x float> [ %i.je, %.lr.ph107.i.i.prol ], [ splat (float f0x00800000), %._crit_edge.i.i ] ; 2 uses
  %i.iy = phi <2 x float> [ %i.jd, %.lr.ph107.i.i.prol ], [ splat (float f0x7F7FFFFF), %._crit_edge.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.i.i.prol ], [ 0, %._crit_edge.i.i ]
  %.idx.i.i.prol = shl nuw nsw i64 %indvars.iv.i.i.prol, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx.i.i.prol
  %i.ja = load <2 x float>, ptr %i.iz, align 4, !tbaa !12 ; 4 uses
  %i.jb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ja, %i.ix
  %i.jc = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ja, %i.iy
  %i.jd = select <2 x i1> %i.jc, <2 x float> %i.ja, <2 x float> %i.iy ; 3 uses
  %i.je = select <2 x i1> %i.jb, <2 x float> %i.ja, <2 x float> %i.ix ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph107.i.i.prol.loopexit, label %.lr.ph107.i.i.prol, !llvm.loop !243

.lr.ph107.i.i.prol.loopexit:                      ; preds = %.lr.ph107.i.i.prol, %._crit_edge.i.i
  %.lcssa325.unr = phi <2 x float> [ poison, %._crit_edge.i.i ], [ %i.jd, %.lr.ph107.i.i.prol ]
  %.lcssa.unr = phi <2 x float> [ poison, %._crit_edge.i.i ], [ %i.je, %.lr.ph107.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %6, %._crit_edge.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph107.i.i.prol ]
  %.unr = phi <2 x float> [ splat (float f0x00800000), %._crit_edge.i.i ], [ %i.je, %.lr.ph107.i.i.prol ]
  %.unr327 = phi <2 x float> [ splat (float f0x7F7FFFFF), %._crit_edge.i.i ], [ %i.jd, %.lr.ph107.i.i.prol ]
  %i.jf = sub nsw i64 %6, %wide.trip.count.i.i
  %i.jg = icmp ugt i64 %i.jf, -4
  br i1 %i.jg, label %_path_bounding_box.exit, label %.lr.ph107.i.i

.lr.ph107.i.i:                                    ; preds = %.lr.ph107.i.i.prol.loopexit, %.lr.ph107.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph107.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph107.i.i.prol.loopexit ] ; 5 uses
  %i.jh = phi <2 x float> [ %i.kj, %.lr.ph107.i.i ], [ %.unr, %.lr.ph107.i.i.prol.loopexit ] ; 2 uses
  %i.ji = phi <2 x float> [ %i.ki, %.lr.ph107.i.i ], [ %.unr327, %.lr.ph107.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx.i.i
  %i.jk = load <2 x float>, ptr %i.jj, align 4, !tbaa !12 ; 4 uses
  %i.jl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.jk, %i.jh
  %i.jm = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.jk, %i.ji
  %i.jn = select <2 x i1> %i.jm, <2 x float> %i.jk, <2 x float> %i.ji ; 2 uses
  %i.jo = select <2 x i1> %i.jl, <2 x float> %i.jk, <2 x float> %i.jh ; 2 uses
  %indvars.iv.next.i.i = shl i64 %indvars.iv.i.i, 3
  %i.jp = getelementptr i8, ptr %i.iv, i64 %indvars.iv.next.i.i
  %i.jq = getelementptr i8, ptr %i.jp, i64 8
  %i.jr = load <2 x float>, ptr %i.jq, align 4, !tbaa !12 ; 4 uses
  %i.js = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.jr, %i.jo
  %i.jt = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.jr, %i.jn
  %i.ju = select <2 x i1> %i.jt, <2 x float> %i.jr, <2 x float> %i.jn ; 2 uses
  %i.jv = select <2 x i1> %i.js, <2 x float> %i.jr, <2 x float> %i.jo ; 2 uses
  %indvars.iv.next.i.i.1 = shl i64 %indvars.iv.i.i, 3
  %i.jw = getelementptr i8, ptr %i.iv, i64 %indvars.iv.next.i.i.1
  %i.jx = getelementptr i8, ptr %i.jw, i64 16
  %i.jy = load <2 x float>, ptr %i.jx, align 4, !tbaa !12 ; 4 uses
  %i.jz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.jy, %i.jv
  %i.ka = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.jy, %i.ju
  %i.kb = select <2 x i1> %i.ka, <2 x float> %i.jy, <2 x float> %i.ju ; 2 uses
  %i.kc = select <2 x i1> %i.jz, <2 x float> %i.jy, <2 x float> %i.jv ; 2 uses
  %indvars.iv.next.i.i.2 = shl i64 %indvars.iv.i.i, 3
  %i.kd = getelementptr i8, ptr %i.iv, i64 %indvars.iv.next.i.i.2
  %i.ke = getelementptr i8, ptr %i.kd, i64 24
  %i.kf = load <2 x float>, ptr %i.ke, align 4, !tbaa !12 ; 4 uses
  %i.kg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.kf, %i.kc
  %i.kh = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.kf, %i.kb
  %i.ki = select <2 x i1> %i.kh, <2 x float> %i.kf, <2 x float> %i.kb ; 2 uses
  %i.kj = select <2 x i1> %i.kg, <2 x float> %i.kf, <2 x float> %i.kc ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_path_bounding_box.exit, label %.lr.ph107.i.i

_path_bounding_box.exit:                          ; preds = %.lr.ph107.i.i, %.lr.ph107.i.i.prol.loopexit
  %.lcssa325 = phi <2 x float> [ %.lcssa325.unr, %.lr.ph107.i.i.prol.loopexit ], [ %i.ki, %.lr.ph107.i.i ] ; 3 uses
  %.lcssa = phi <2 x float> [ %.lcssa.unr, %.lr.ph107.i.i.prol.loopexit ], [ %i.kj, %.lr.ph107.i.i ] ; 2 uses
  %i.kk = extractelement <2 x float> %.lcssa325, i64 1
  %i.kl = extractelement <2 x float> %.lcssa, i64 1
  %i.km = extractelement <2 x float> %.lcssa, i64 0
  %i.kn = extractelement <2 x float> %.lcssa325, i64 0
  %i.ko = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.kk
  %i.kp = fadd reassoc nsz arcp contract afn float %i.ko, %i.kl
  %i.kq = fadd reassoc nsz arcp contract afn float %i.km, 4.000000e+00
  %i.kr = fsub reassoc nsz arcp contract afn float %i.kq, %i.kn
  %i.ks = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kp, i64 1
  %i.ku = fptosi <2 x float> %i.kt to <2 x i32>
  %i.kv = fadd reassoc nsz arcp contract afn <2 x float> %.lcssa325, splat (float -2.000000e+00)
  %i.kw = fptosi <2 x float> %i.kv to <2 x i32>
  %i.kx = sitofp <2 x i32> %i.kw to <2 x float>
  %i.ky = sitofp <2 x i32> %i.ku to <2 x float>
  %i.kz = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ky, splat (float 5.000000e-01)
  %i.la = fadd reassoc nsz arcp contract afn <2 x float> %i.kz, %i.kx ; 2 uses
  %i.lb = load i32, ptr %i.k, align 8, !tbaa !41
  %i.lc = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.ld = extractelement <2 x float> %i.la, i64 0
  %i.le = extractelement <2 x float> %i.la, i64 1
  call void @dt_masks_closest_point(i32 noundef %i.lb, i32 noundef %i.m, ptr noundef %i.lc, float noundef %i.ld, float noundef %i.le, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #25
  %i.lf = load i32, ptr %i.ir, align 8, !tbaa !36
  %i.lg = load ptr, ptr %i.iu, align 8, !tbaa !35
  %i.lh = load float, ptr %i.e, align 4, !tbaa !12
  %i.li = load float, ptr %i.f, align 4, !tbaa !12
  call void @dt_masks_closest_point(i32 noundef %i.lf, i32 noundef %i.m, ptr noundef %i.lg, float noundef %i.lh, float noundef %i.li, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #25
  %i.lj = load float, ptr %i.g, align 4, !tbaa !12
  %i.lk = load float, ptr %i.h, align 4, !tbaa !12
  %i.ll = load float, ptr %i.e, align 4, !tbaa !12
  %i.lm = load float, ptr %i.f, align 4, !tbaa !12
  call void @dt_masks_draw_arrow(ptr noundef %0, float noundef %i.lj, float noundef %i.lk, float noundef %i.ll, float noundef %i.lm, float noundef %1, i32 noundef 0) #25
  call void @dt_masks_stroke_arrow(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3, float noundef %1) #25
  %i.ln = load ptr, ptr %i.iu, align 8, !tbaa !35
  %i.lo = mul nuw nsw i32 %4, 6
  %i.lp = zext nneg i32 %i.lo to i64              ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lp
  %i.lr = load <2 x float>, ptr %i.lq, align 4, !tbaa !12
  %i.ls = fpext <2 x float> %i.lr to <2 x double> ; 2 uses
  %i.lt = extractelement <2 x double> %i.ls, i64 0
  %i.lu = extractelement <2 x double> %i.ls, i64 1
  call void @cairo_move_to(ptr noundef %0, double noundef %i.lt, double noundef %i.lu) #25
  %i.lv = load i32, ptr %i.ir, align 8, !tbaa !36
  %i.lw = icmp slt i32 %i.m, %i.lv
  br i1 %i.lw, label %.lr.ph277, label %._crit_edge278

._crit_edge278:                                   ; preds = %.lr.ph277, %_path_bounding_box.exit
  %i.lx = load ptr, ptr %i.iu, align 8, !tbaa !35
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.lp
  %i.lz = load <2 x float>, ptr %i.ly, align 4, !tbaa !12
  %i.ma = fpext <2 x float> %i.lz to <2 x double> ; 2 uses
  %i.mb = extractelement <2 x double> %i.ma, i64 0
  %i.mc = extractelement <2 x double> %i.ma, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.mb, double noundef %i.mc) #25
  %i.md = load i32, ptr %i.bv, align 4, !tbaa !171
  %i.me = icmp eq i32 %i.md, %3
  br i1 %i.me, label %bb.an, label %bb.ap

.lr.ph277:                                        ; preds = %_path_bounding_box.exit, %.lr.ph277
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %.lr.ph277 ], [ %6, %_path_bounding_box.exit ] ; 2 uses
  %i.mf = load ptr, ptr %i.iu, align 8, !tbaa !35
  %.idx315 = shl nuw nsw i64 %indvars.iv291, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx315
  %i.mh = load <2 x float>, ptr %i.mg, align 4, !tbaa !12
  %i.mi = fpext <2 x float> %i.mh to <2 x double> ; 2 uses
  %i.mj = extractelement <2 x double> %i.mi, i64 0
  %i.mk = extractelement <2 x double> %i.mi, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.mj, double noundef %i.mk) #25
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.ml = load i32, ptr %i.ir, align 8, !tbaa !36
  %i.mm = trunc nuw i64 %indvars.iv.next292 to i32
  %i.mn = icmp sgt i32 %i.ml, %i.mm
  br i1 %i.mn, label %.lr.ph277, label %._crit_edge278

bb.an:                                            ; preds = %._crit_edge278
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !26
  %.not250 = icmp eq i32 %i.mp, 0
  br i1 %.not250, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !166
  %i.ms = icmp ne i32 %i.mr, 0
  %i.mt = zext i1 %i.ms to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %._crit_edge278
  %i.mu = phi i32 [ 0, %._crit_edge278 ], [ 1, %bb.an ], [ %i.mt, %bb.ao ]
  call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.mu, float noundef %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.b, %bb.ap, %.thread, %bb.am, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #6

declare ptr @dt_mouse_action_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #7

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @_path_init_ctrl_points(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call i32 @g_list_length(ptr noundef %i.a) #25 ; 2 uses
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.l
  %.04776.in = phi ptr [ %i.cg, %bb.l ], [ %0, %bb.a ]
  %.075 = phi i32 [ %i.ch, %bb.l ], [ 0, %bb.a ]
  %.04776 = load ptr, ptr %.04776.in, align 8, !tbaa !27 ; 5 uses
  %i.d = load ptr, ptr %.04776, align 8, !tbaa !31 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !164
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.04776, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245  ; 2 uses
  %.not6.i = icmp eq ptr %i.i, null
  br i1 %.not6.i, label %g_list_prev_wraparound.exit, label %g_list_prev_wraparound.exit.thread

g_list_prev_wraparound.exit:                      ; preds = %bb.b
  %i.j = tail call ptr @g_list_last(ptr noundef nonnull %.04776) #25 ; 2 uses
  %.not.i49 = icmp eq ptr %i.j, null
  br i1 %.not.i49, label %bb.c, label %g_list_prev_wraparound.exit.thread

g_list_prev_wraparound.exit.thread:               ; preds = %bb.b, %g_list_prev_wraparound.exit
  %i.k = phi ptr [ %i.j, %g_list_prev_wraparound.exit ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !245  ; 2 uses
  %.not6.i50 = icmp eq ptr %i.m, null
  br i1 %.not6.i50, label %bb.c, label %g_list_next_wraparound.exit.thread

bb.c:                                             ; preds = %g_list_prev_wraparound.exit.thread, %g_list_prev_wraparound.exit
  %i.n = phi ptr [ %i.k, %g_list_prev_wraparound.exit.thread ], [ null, %g_list_prev_wraparound.exit ] ; 2 uses
  %i.o = tail call ptr @g_list_last(ptr noundef %i.n) #25
  br label %g_list_next_wraparound.exit.thread

g_list_next_wraparound.exit.thread:               ; preds = %bb.c, %g_list_prev_wraparound.exit.thread
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.k, %g_list_prev_wraparound.exit.thread ]
  %i.q = phi ptr [ %i.o, %bb.c ], [ %i.m, %g_list_prev_wraparound.exit.thread ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04776, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30   ; 2 uses
  %.not6.i53 = icmp eq ptr %i.t, null
  %spec.select66 = select i1 %.not6.i53, ptr %i.r, ptr %i.t ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select66, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %.not6.i55 = icmp eq ptr %i.v, null
  %spec.select = select i1 %.not6.i55, ptr %i.r, ptr %i.v
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !31   ; 4 uses
  %i.y = load ptr, ptr %spec.select66, align 8, !tbaa !31 ; 4 uses
  %i.z = load ptr, ptr %spec.select, align 8, !tbaa !31 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load <2 x float>, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  %i.ad = load <2 x float>, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.ae = load <2 x float>, ptr %i.y, align 4, !tbaa !12
  %i.af = extractelement <2 x float> %i.ac, i64 1
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, 6.000000e+00
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ag, %i.ab
  %i.ai = extractelement <2 x float> %i.ad, i64 1
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ah, %i.ai
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, f0x3E2AAAAB
  %i.al = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, splat (float 6.000000e+00)
  %i.am = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.al
  %i.an = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.ae
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0x3E2AAAAB)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12
  %i.ar = fcmp reassoc nsz arcp contract afn oeq float %i.aq, -1.000000e+00
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %g_list_next_wraparound.exit.thread
  %i.as = extractelement <2 x float> %i.ac, i64 0
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, 6.000000e+00
  %i.au = load float, ptr %i.w, align 4, !tbaa !12
  %i.av = fsub reassoc nsz arcp contract afn float %i.at, %i.au
  %i.aw = extractelement <2 x float> %i.ad, i64 0
  %i.ax = fadd reassoc nsz arcp contract afn float %i.av, %i.aw
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3E2AAAAB
  store float %i.ay, ptr %i.ap, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %g_list_next_wraparound.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !12
  %i.bb = fcmp reassoc nsz arcp contract afn oeq float %i.ba, -1.000000e+00
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.ak, ptr %i.az, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x float> %i.ao, ptr %i.bc, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = load <2 x float>, ptr %i.x, align 4, !tbaa !12
  %i.bg = load <2 x float>, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.bh = load <2 x float>, ptr %i.y, align 4, !tbaa !12 ; 3 uses
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bg, splat (float 6.000000e+00)
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bf
  %i.bk = fadd reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bh
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, splat (float f0x3E2AAAAB)
  %i.bm = extractelement <2 x float> %i.bh, i64 1
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, 6.000000e+00
  %i.bo = extractelement <2 x float> %i.bg, i64 1
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bn
  %i.bq = fsub reassoc nsz arcp contract afn float %i.bp, %i.be
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, f0x3E2AAAAB
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bu = fcmp reassoc nsz arcp contract afn oeq float %i.bt, -1.000000e+00
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = extractelement <2 x float> %i.bh, i64 0
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, 6.000000e+00
  %i.bx = extractelement <2 x float> %i.bg, i64 0
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.bw
  %i.bz = load float, ptr %i.z, align 4, !tbaa !12
end_hunk_1
