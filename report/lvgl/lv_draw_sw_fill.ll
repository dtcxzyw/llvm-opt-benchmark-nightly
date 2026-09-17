Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_fill?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_draw_sw_fill:bb.a

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.b, align 4, !tbaa !22    ; 3 uses
  %i.w = icmp ugt i8 %i.v, -4                     ; 2 uses
  %spec.select = select i1 %i.w, i8 -1, i8 %i.v   ; 4 uses
  %i.x = call i32 @lv_area_get_width(ptr noundef nonnull %3) #6 ; 2 uses
  %i.y = call i32 @lv_area_get_height(ptr noundef nonnull %3) #6 ; 2 uses
  %i.z = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.y)
  %i.aa = load i32, ptr %i.q, align 8, !tbaa !24
  %i.ab = ashr i32 %i.z, 1
  %i.ac = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ab) ; 7 uses
  %i.ad = call i32 @lv_area_get_width(ptr noundef nonnull %4) #6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ae = icmp sgt i32 %i.ac, 0                   ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = sext i32 %i.ad to i64
  %i.ag = call ptr @lv_malloc(i64 noundef %i.af) #6
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef %i.ac, i1 noundef zeroext false) #6
  store ptr %6, ptr %i.a, align 16, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0156 = phi ptr [ %i.ag, %bb.f ], [ null, %bb.e ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.ah = load i32, ptr %4, align 4, !tbaa !31
  store i32 %i.ah, ptr %7, align 4, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %.0156, ptr %i.al, align 8, !tbaa !33
  store ptr %7, ptr %5, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %7, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  store i8 -1, ptr %i.an, align 8, !tbaa !28
  %i.ao = call ptr @lv_draw_sw_grad_get(ptr noundef nonnull %i.j, i32 noundef %i.x, i32 noundef %i.y) #6 ; 9 uses
  %i.ap = icmp ne ptr %i.ao, null                 ; 5 uses
  %i.aq = icmp samesign ugt i8 %i.m, 1
  %or.cond3 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond3, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %7, ptr %i.ar, align 8, !tbaa !35
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.at = load i32, ptr %4, align 4, !tbaa !31
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [3 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %3, align 16, !tbaa !31
  %i.ax = sext i32 %i.aw to i64
  %i.ay = sub nsw i64 0, %i.ax                    ; 2 uses
  %i.az = getelementptr inbounds [3 x i8], ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !39  ; 2 uses
  %.not202 = icmp eq i8 %i.bc, 0
  br i1 %.not202, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext i8 %i.bc to i64
  br label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !8

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [5 x i8], ptr %i.j, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !42
  %.not = icmp eq i8 %i.bf, -1
  br i1 %.not, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bg = icmp eq i8 %i.m, 2
  br i1 %i.bg, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.au
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.ay
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.k, %bb.j
  %i.bl = phi i32 [ 2, %bb.k ], [ 2, %bb.j ], [ 1, %bb.h ], [ 1, %bb.i ]
  %.0152 = phi ptr [ %i.bk, %bb.k ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 15, ptr %i.bm, align 4, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.g
  %.1153 = phi ptr [ %.0152, %.thread ], [ null, %bb.g ] ; 10 uses
  %.1151 = phi i32 [ %i.bl, %.thread ], [ 1, %bb.g ]
  br i1 %i.ae, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bp = sext i32 %i.ad to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %.not203 = icmp eq ptr %.1153, null
  %i.bt = icmp sgt i32 %i.ad, 0                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bv = icmp ne ptr %.1153, null                ; 3 uses
  %i.bw = icmp samesign ugt i8 %i.m, 2
  %wide.trip.count209 = zext i32 %i.ad to i64     ; 5 uses
  %i.bx = add nsw i64 %wide.trip.count209, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count209, 1
  %i.by = icmp eq i64 %i.bx, 0
  %unroll_iter = and i64 %wide.trip.count209, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod240 = trunc i32 %i.ad to i1
  %xtraiter241 = and i64 %wide.trip.count209, 1
  %i.bz = icmp eq i64 %i.bx, 0
  %unroll_iter244 = and i64 %wide.trip.count209, 2147483646
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  %lcmp.mod243 = trunc i32 %i.ad to i1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph196, %bb.ah
  %.0154194 = phi i32 [ 0, %.lr.ph196 ], [ %i.el, %bb.ah ] ; 3 uses
  %i.ca = load i32, ptr %i.e, align 4, !tbaa !45
  %i.cb = add nsw i32 %i.ca, %.0154194            ; 7 uses
  %i.cc = load i32, ptr %i.f, align 4, !tbaa !46
  %i.cd = sub nsw i32 %i.cc, %.0154194            ; 5 uses
  %i.ce = load i32, ptr %i.bn, align 4, !tbaa !45
  %i.cf = icmp slt i32 %i.cb, %i.ce
  %i.cg = load i32, ptr %i.bo, align 4
  %i.ch = icmp sgt i32 %i.cd, %i.cg
  %or.cond178 = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %or.cond178, label %bb.ah, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @lv_memset(ptr noundef %.0156, i8 noundef zeroext %spec.select, i64 noundef %i.bp) #6
  %i.ci = load i32, ptr %7, align 4, !tbaa !31
  %i.cj = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %.0156, i32 noundef %i.ci, i32 noundef %i.cb, i32 noundef %i.ad) #6 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 1
  %spec.select179 = select i1 %i.ck, i32 2, i32 %i.cj
  store i32 %spec.select179, ptr %i.bq, align 8, !tbaa !47
  %i.cl = load i32, ptr %i.bn, align 4, !tbaa !45
  %.not174 = icmp slt i32 %i.cb, %i.cl
  br i1 %.not174, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.cb, ptr %i.br, align 4, !tbaa !45
  store i32 %i.cb, ptr %i.bs, align 4, !tbaa !46
  switch i8 %i.m, label %.thread181 [
    i8 1, label %bb.p
    i8 2, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  br i1 %i.ap, label %bb.q, label %.preheader184

.preheader184:                                    ; preds = %bb.p, %.preheader184
  br label %.preheader184

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.cn = load i32, ptr %i.e, align 4, !tbaa !45
  %i.co = sub nsw i32 %i.cb, %i.cn
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [3 x i8], ptr %i.cm, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) %i.cq, i64 3, i1 false), !tbaa.struct !49
  %i.cr = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cp
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !48
  store i8 %i.ct, ptr %i.an, align 8, !tbaa !28
  br label %.thread181

bb.r:                                             ; preds = %bb.o
  br i1 %.not203, label %.thread181, label %.preheader186

.preheader186:                                    ; preds = %bb.r
  br i1 %i.bt, label %.lr.ph189.preheader, label %._crit_edge

.lr.ph189.preheader:                              ; preds = %.preheader186
  br i1 %i.by, label %.lr.ph189.epil.preheader, label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %bb.u
  %indvars.iv206 = phi i64 [ %indvars.iv.next207.1, %bb.u ], [ 0, %.lr.ph189.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.u ], [ 0, %.lr.ph189.preheader ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.1153, i64 %indvars.iv206
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !48  ; 2 uses
  %i.cw = icmp ult i8 %i.cv, -3
  br i1 %i.cw, label %bb.s, label %.lr.ph189.1

bb.s:                                             ; preds = %.lr.ph189
  %8 = zext i8 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %.0156, i64 %indvars.iv206 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !48
  %9 = zext i8 %i.cy to i16
  %10 = mul nuw i16 %9, %8
  %11 = lshr i16 %10, 8
  %12 = trunc nuw i16 %11 to i8
  store i8 %12, ptr %i.cx, align 1, !tbaa !48
  br label %.lr.ph189.1

.lr.ph189.1:                                      ; preds = %.lr.ph189, %bb.s
  %indvars.iv.next207 = or disjoint i64 %indvars.iv206, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1153, i64 %indvars.iv.next207
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !48  ; 2 uses
  %i.db = icmp ult i8 %i.da, -3
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph189.1
  %13 = zext i8 %i.da to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %.0156, i64 %indvars.iv.next207 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !48
  %14 = zext i8 %i.dd to i16
  %15 = mul nuw i16 %14, %13
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  store i8 %17, ptr %i.dc, align 1, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph189.1
  %indvars.iv.next207.1 = add nuw nsw i64 %indvars.iv206, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph189, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.u
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph189.epil.preheader

.lr.ph189.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph189.preheader
  %indvars.iv206.epil.init = phi i64 [ 0, %.lr.ph189.preheader ], [ %indvars.iv.next207.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod240)
  %i.de = getelementptr inbounds nuw i8, ptr %.1153, i64 %indvars.iv206.epil.init
  %i.df = load i8, ptr %i.de, align 1, !tbaa !48  ; 2 uses
  %i.dg = icmp ult i8 %i.df, -3
  br i1 %i.dg, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %.lr.ph189.epil.preheader
  %18 = zext i8 %i.df to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %.0156, i64 %indvars.iv206.epil.init ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !48
  %19 = zext i8 %i.di to i16
  %20 = mul nuw i16 %19, %18
  %21 = lshr i16 %20, 8
  %22 = trunc nuw i16 %21 to i8
  store i8 %22, ptr %i.dh, align 1, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.v, %.lr.ph189.epil.preheader, %.preheader186
  store i32 2, ptr %i.bq, align 8, !tbaa !47
  br label %.thread181

.thread181:                                       ; preds = %bb.q, %bb.o, %._crit_edge, %bb.r
  %i.dj = phi i1 [ false, %bb.r ], [ false, %._crit_edge ], [ %i.bv, %bb.o ], [ %i.bv, %bb.q ]
  %.0147183 = phi i1 [ false, %bb.r ], [ true, %._crit_edge ], [ false, %bb.o ], [ false, %bb.q ]
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %5) #6
  br label %bb.w

bb.w:                                             ; preds = %.thread181, %bb.n
  %.1148 = phi i1 [ %.0147183, %.thread181 ], [ false, %bb.n ] ; 2 uses
  %.1 = phi i1 [ %i.dj, %.thread181 ], [ %i.bv, %bb.n ]
  %i.dk = load i32, ptr %i.bo, align 4, !tbaa !46
  %.not175 = icmp sgt i32 %i.cd, %i.dk
  br i1 %.not175, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %i.cd, ptr %i.br, align 4, !tbaa !45
  store i32 %i.cd, ptr %i.bs, align 4, !tbaa !46
  switch i8 %i.m, label %bb.z [
    i8 1, label %bb.y
    i8 2, label %.split235
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %i.ap, label %.split, label %.preheader

.preheader:                                       ; preds = %bb.y, %.preheader
  br label %.preheader

.split:                                           ; preds = %bb.y
  %i.dl = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.dm = load i32, ptr %i.e, align 4, !tbaa !45
  %i.dn = sub nsw i32 %i.cd, %i.dm
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [3 x i8], ptr %i.dl, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) %i.dp, i64 3, i1 false), !tbaa.struct !49
  %i.dq = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.do
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !48
  store i8 %i.ds, ptr %i.an, align 8, !tbaa !28
  br i1 %.1148, label %.thread236, label %bb.ag

.split235:                                        ; preds = %bb.x
  br i1 %.1, label %.thread236, label %bb.ag

bb.z:                                             ; preds = %bb.x
  br i1 %.1148, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bw, label %bb.ab, label %.thread236

bb.ab:                                            ; preds = %bb.aa
  call void @lv_memset(ptr noundef %.0156, i8 noundef zeroext %spec.select, i64 noundef %i.bp) #6
  %i.dt = load i32, ptr %7, align 4, !tbaa !31
  %i.du = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %.0156, i32 noundef %i.dt, i32 noundef %i.cb, i32 noundef %i.ad) #6 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 1
  %spec.store.select = select i1 %i.dv, i32 2, i32 %i.du
  store i32 %spec.store.select, ptr %i.bq, align 8
  br label %.thread236

.thread236:                                       ; preds = %.split, %.split235, %bb.ab, %bb.aa
  br i1 %i.bt, label %.lr.ph192.preheader, label %._crit_edge193

.lr.ph192.preheader:                              ; preds = %.thread236
  br i1 %i.bz, label %.lr.ph192.epil.preheader, label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %bb.ae
  %indvars.iv211 = phi i64 [ %indvars.iv.next212.1, %bb.ae ], [ 0, %.lr.ph192.preheader ] ; 4 uses
  %niter245 = phi i64 [ %niter245.next.1, %bb.ae ], [ 0, %.lr.ph192.preheader ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.1153, i64 %indvars.iv211
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !48  ; 2 uses
  %i.dy = icmp ult i8 %i.dx, -3
  br i1 %i.dy, label %bb.ac, label %.lr.ph192.1

bb.ac:                                            ; preds = %.lr.ph192
  %23 = zext i8 %i.dx to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %.0156, i64 %indvars.iv211 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !48
  %24 = zext i8 %i.ea to i16
  %25 = mul nuw i16 %24, %23
  %26 = lshr i16 %25, 8
  %27 = trunc nuw i16 %26 to i8
  store i8 %27, ptr %i.dz, align 1, !tbaa !48
  br label %.lr.ph192.1

.lr.ph192.1:                                      ; preds = %.lr.ph192, %bb.ac
  %indvars.iv.next212 = or disjoint i64 %indvars.iv211, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1153, i64 %indvars.iv.next212
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !48  ; 2 uses
  %i.ed = icmp ult i8 %i.ec, -3
  br i1 %i.ed, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph192.1
  %28 = zext i8 %i.ec to i16
  %i.ee = getelementptr inbounds nuw i8, ptr %.0156, i64 %indvars.iv.next212 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !48
  %29 = zext i8 %i.ef to i16
  %30 = mul nuw i16 %29, %28
  %31 = lshr i16 %30, 8
  %32 = trunc nuw i16 %31 to i8
  store i8 %32, ptr %i.ee, align 1, !tbaa !48
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph192.1
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2 ; 2 uses
  %niter245.next.1 = add i64 %niter245, 2         ; 2 uses
  %niter245.ncmp.1 = icmp eq i64 %niter245.next.1, %unroll_iter244
  br i1 %niter245.ncmp.1, label %._crit_edge193.loopexit.unr-lcssa, label %.lr.ph192, !llvm.loop !10

._crit_edge193.loopexit.unr-lcssa:                ; preds = %bb.ae
  br i1 %lcmp.mod242.not, label %._crit_edge193, label %.lr.ph192.epil.preheader

.lr.ph192.epil.preheader:                         ; preds = %._crit_edge193.loopexit.unr-lcssa, %.lr.ph192.preheader
  %indvars.iv211.epil.init = phi i64 [ 0, %.lr.ph192.preheader ], [ %indvars.iv.next212.1, %._crit_edge193.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.eg = getelementptr inbounds nuw i8, ptr %.1153, i64 %indvars.iv211.epil.init
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !48  ; 2 uses
  %i.ei = icmp ult i8 %i.eh, -3
  br i1 %i.ei, label %bb.af, label %._crit_edge193

bb.af:                                            ; preds = %.lr.ph192.epil.preheader
  %33 = zext i8 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %.0156, i64 %indvars.iv211.epil.init ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !48
  %34 = zext i8 %i.ek to i16
  %35 = mul nuw i16 %34, %33
  %36 = lshr i16 %35, 8
  %37 = trunc nuw i16 %36 to i8
  store i8 %37, ptr %i.ej, align 1, !tbaa !48
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %._crit_edge193.loopexit.unr-lcssa, %bb.af, %.lr.ph192.epil.preheader, %.thread236
  store i32 2, ptr %i.bq, align 8, !tbaa !47
  br label %bb.ag

bb.ag:                                            ; preds = %.split235, %.split, %._crit_edge193, %bb.z
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %5) #6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.w, %bb.ag, %bb.m
  %i.el = add nuw nsw i32 %.0154194, 1            ; 2 uses
  %exitcond216.not = icmp eq i32 %i.el, %i.ac
  br i1 %exitcond216.not, label %._crit_edge197, label %bb.m, !llvm.loop !11

._crit_edge197:                                   ; preds = %bb.ah, %bb.l
  br i1 %i.n, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge197
  %i.em = load i32, ptr %i.e, align 4, !tbaa !45
  %i.en = add nsw i32 %i.em, %i.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !45
  %i.ep = load i32, ptr %i.f, align 4, !tbaa !46
  %i.eq = sub nsw i32 %i.ep, %i.ac
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !46
  store i8 %spec.select, ptr %i.an, align 8, !tbaa !28
  store ptr null, ptr %i.al, align 8, !tbaa !33
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %5) #6
  br label %.loopexit

bb.aj:                                            ; preds = %._crit_edge197
  store i8 %spec.select, ptr %i.an, align 8, !tbaa !28
  switch i8 %i.m, label %bb.an [
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 4, label %bb.am
    i8 5, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 1, ptr %i.es, align 8, !tbaa !47
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 2, ptr %i.et, align 8, !tbaa !47
  store ptr %.1153, ptr %i.al, align 8, !tbaa !33
  br label %bb.an

bb.am:                                            ; preds = %bb.aj, %bb.aj, %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %.1151, ptr %i.eu, align 8, !tbaa !47
  store ptr %.1153, ptr %i.al, align 8, !tbaa !33
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.am, %bb.al, %bb.ak
  %i.ev = load i32, ptr %i.e, align 4, !tbaa !45
  %i.ew = add nsw i32 %i.ev, %i.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !45
  %i.ez = call i32 @llvm.smax.i32(i32 %i.ew, i32 %i.ey) ; 3 uses
  %i.fa = load i32, ptr %i.f, align 4, !tbaa !46
  %i.fb = sub nsw i32 %i.fa, %i.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !46
  %i.fe = call i32 @llvm.smin.i32(i32 %i.fb, i32 %i.fd) ; 3 uses
  %.not172198 = icmp sgt i32 %i.ez, %i.fe
  br i1 %.not172198, label %.loopexit, label %.lr.ph201

.lr.ph201:                                        ; preds = %bb.an
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %cond = icmp eq i8 %i.m, 1
  %38 = zext i8 %i.v to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br i1 %cond, label %.lr.ph201.split.us, label %.lr.ph201.split

.lr.ph201.split.us:                               ; preds = %.lr.ph201
  br i1 %i.ap, label %.lr.ph201.split.us.split.us, label %.lr.ph201.split.us.split

.lr.ph201.split.us.split.us:                      ; preds = %.lr.ph201.split.us, %.lr.ph201.split.us.split.us
  %.1155199.us.us = phi i32 [ %i.fq, %.lr.ph201.split.us.split.us ], [ %i.ez, %.lr.ph201.split.us ] ; 5 uses
  store i32 %.1155199.us.us, ptr %i.ff, align 4, !tbaa !45
  store i32 %.1155199.us.us, ptr %i.fg, align 4, !tbaa !46
  %i.fi = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.fj = load i32, ptr %i.e, align 4, !tbaa !45
  %i.fk = sub nsw i32 %.1155199.us.us, %i.fj
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [3 x i8], ptr %i.fi, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) %i.fm, i64 3, i1 false), !tbaa.struct !49
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !43
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.fl
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !48  ; 2 uses
  %39 = zext i8 %i.fp to i16
  %40 = mul nuw i16 %39, %38
  %41 = lshr i16 %40, 8
  %42 = trunc nuw i16 %41 to i8
  %storemerge = select i1 %i.w, i8 %i.fp, i8 %42
  store i8 %storemerge, ptr %i.an, align 8, !tbaa !28
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %5) #6
  %i.fq = add i32 %.1155199.us.us, 1
  %exitcond218.not = icmp eq i32 %.1155199.us.us, %i.fe
  br i1 %exitcond218.not, label %.loopexit, label %.lr.ph201.split.us.split.us, !llvm.loop !12

.lr.ph201.split:                                  ; preds = %.lr.ph201, %.lr.ph201.split
  %.1155199 = phi i32 [ %i.fr, %.lr.ph201.split ], [ %i.ez, %.lr.ph201 ] ; 4 uses
  store i32 %.1155199, ptr %i.ff, align 4, !tbaa !45
  store i32 %.1155199, ptr %i.fg, align 4, !tbaa !46
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %5) #6
  %i.fr = add i32 %.1155199, 1
  %exitcond217.not = icmp eq i32 %.1155199, %i.fe
  br i1 %exitcond217.not, label %.loopexit, label %.lr.ph201.split, !llvm.loop !12

.lr.ph201.split.us.split:                         ; preds = %.lr.ph201.split.us, %.lr.ph201.split.us.split
  br label %.lr.ph201.split.us.split

.loopexit:                                        ; preds = %.lr.ph201.split, %.lr.ph201.split.us.split.us, %bb.an, %bb.ai
  %.not173 = icmp eq ptr %.0156, null
  br i1 %.not173, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  call void @lv_free(ptr noundef nonnull %.0156) #6
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %6) #6
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.loopexit
  br i1 %i.ap, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @lv_draw_sw_grad_cleanup(ptr noundef nonnull %i.ao) #6
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.at

bb.at:                                            ; preds = %bb.b, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.a, %bb.at
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @lv_draw_sw_blend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare void @lv_draw_sw_mask_radius_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @lv_draw_sw_grad_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare i32 @lv_draw_sw_mask_apply(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_sw_mask_free_param(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_sw_grad_cleanup(ptr noundef) local_unnamed_addr #2

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
!8 = distinct !{!8, !40}
!9 = distinct !{!9, !40}
!10 = distinct !{!10, !40}
!11 = distinct !{!11, !40}
!12 = distinct !{!12, !40}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS9_lv_obj_t", !13, i64 0}
!15 = !{!"p1 _ZTS11_lv_layer_t", !13, i64 0}
!16 = !{!"short", !4, i64 0}
!17 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!18 = !{!"long", !4, i64 0}
!19 = !{!"", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !15, i64 24, !16, i64 32, !16, i64 34, !17, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !18, i64 48, !13, i64 56}
!20 = !{!"", !4, i64 0, !4, i64 10, !5, i64 11, !5, i64 11, !4, i64 12, !13, i64 48}
!21 = !{!"", !19, i64 0, !5, i64 64, !4, i64 68, !17, i64 69, !20, i64 72}
!22 = !{!21, !4, i64 68}
!23 = !{!5, !5, i64 0}
!24 = !{!21, !5, i64 64}
!25 = !{!"p1 omnipotent char", !13, i64 0}
!26 = !{!"_lv_draw_sw_blend_dsc_t", !13, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !13, i64 24, !4, i64 32, !17, i64 33, !25, i64 40, !5, i64 48, !13, i64 56, !5, i64 64, !5, i64 68}
!27 = !{!26, !13, i64 0}
!28 = !{!26, !4, i64 32}
!29 = !{!13, !13, i64 0}
!30 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!31 = !{!30, !5, i64 0}
!32 = !{!30, !5, i64 8}
!33 = !{!26, !25, i64 40}
!34 = !{!26, !13, i64 56}
!35 = !{!26, !13, i64 24}
!36 = !{!"", !13, i64 0, !25, i64 8, !5, i64 16}
!37 = !{!36, !13, i64 0}
!38 = !{!26, !13, i64 8}
!39 = !{!21, !4, i64 82}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"", !17, i64 0, !4, i64 3, !4, i64 4}
!42 = !{!41, !4, i64 3}
!43 = !{!36, !25, i64 8}
!44 = !{!26, !5, i64 20}
!45 = !{!30, !5, i64 4}
!46 = !{!30, !5, i64 12}
!47 = !{!26, !5, i64 48}
!48 = !{!4, !4, i64 0}
!49 = !{i64 0, i64 1, !48, i64 1, i64 1, !48, i64 2, i64 1, !48}
end_hunk_0
