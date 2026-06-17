inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0_@t42_parse_sfnts:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  tail call void %i.k(ptr noundef %1) #13
  %i.l = load ptr, ptr %1, align 8, !tbaa !87     ; 3 uses
  %.not = icmp ult ptr %i.l, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %1, align 8, !tbaa !87
  %i.n = load i8, ptr %i.l, align 1, !tbaa !92
  %.not196 = icmp eq i8 %i.n, 91
  br i1 %.not196, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !90
  tail call void %i.o(ptr noundef nonnull %1) #13
  %i.p = call ptr @ft_mem_qalloc(ptr noundef %i.d, i64 noundef 12, ptr noundef nonnull %i.a) #13
  store ptr %i.p, ptr %i.g, align 8, !tbaa !146
  %i.q = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not197 = icmp eq i32 %i.q, 0
  br i1 %.not197, label %.preheader292, label %.thread250

.preheader292:                                    ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !87     ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.f
  br i1 %i.x, label %.lr.ph722, label %._crit_edge723

.lr.ph722:                                        ; preds = %.preheader292, %.thread
  %i.y = phi ptr [ %i.cz, %.thread ], [ %i.w, %.preheader292 ] ; 4 uses
  %.0721 = phi i32 [ %.4, %.thread ], [ 0, %.preheader292 ]
  %.0143720 = phi i64 [ %.2145, %.thread ], [ 0, %.preheader292 ] ; 2 uses
  %.0147719 = phi i64 [ %.7, %.thread ], [ 12, %.preheader292 ]
  %.0160718 = phi i64 [ %.3163233, %.thread ], [ 0, %.preheader292 ]
  %.0165717 = phi i64 [ %.1166228, %.thread ], [ 0, %.preheader292 ] ; 3 uses
  %.0168716 = phi i32 [ %.5173, %.thread ], [ 0, %.preheader292 ]
  %.0175715 = phi i8 [ %.1176227, %.thread ], [ 0, %.preheader292 ] ; 7 uses
  %.0180714 = phi ptr [ %.2182226, %.thread ], [ null, %.preheader292 ] ; 9 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !92    ; 2 uses
  switch i8 %i.z, label %bb.m [
    i8 93, label %bb.e
    i8 60, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph722
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.aa, ptr %1, align 8, !tbaa !87
  store i64 %.0143720, ptr %i.i, align 8, !tbaa !166
  %.pre513 = load i32, ptr %i.s, align 8, !tbaa !89
  br label %.thread261

bb.f:                                             ; preds = %.lr.ph722
  %i.ab = icmp eq ptr %.0180714, null
  %i.ac = icmp ne i8 %.0175715, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

bb.h:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !93
  call void %i.ad(ptr noundef nonnull %1) #13
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !89
  %.not201 = icmp eq i32 %i.ae, 0
  br i1 %.not201, label %bb.i, label %.thread261.thread

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %1, align 8, !tbaa !87
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ai = xor i64 %i.ah, -1
  %i.aj = add i64 %i.ag, %i.ai
  %i.ak = sdiv i64 %i.aj, 2                       ; 3 uses
  %.off = sub i64 %i.ag, %i.ah
  %.not202 = icmp ult i64 %.off, 3
  br i1 %.not202, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

bb.k:                                             ; preds = %bb.i
  %i.al = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 1, i64 noundef %.0165717, i64 noundef %i.ak, ptr noundef %.0180714, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.am = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not203 = icmp eq i32 %i.am, 0
  br i1 %.not203, label %bb.l, label %.thread250

bb.l:                                             ; preds = %bb.k
  store ptr %i.y, ptr %1, align 8, !tbaa !87
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !250
  %i.ao = call i32 %i.an(ptr noundef nonnull %1, ptr noundef %i.al, i64 noundef %i.ak, ptr noundef nonnull %i.b, i8 noundef zeroext 1) #13 ; 0 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !172
  br label %bb.u

bb.m:                                             ; preds = %.lr.ph722
  %i.aq = add i8 %i.z, -48
  %i.ar = icmp ult i8 %i.aq, 10
  br i1 %i.ar, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %.not198 = icmp eq i8 %.0175715, 0
  br i1 %.not198, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

bb.p:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !235
  %i.at = call i64 %i.as(ptr noundef nonnull %1) #13 ; 4 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

bb.r:                                             ; preds = %bb.p
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !93
  call void %i.av(ptr noundef nonnull %1) #13
  %i.aw = load i32, ptr %i.s, align 8, !tbaa !89
  %.not199 = icmp eq i32 %i.aw, 0
  br i1 %.not199, label %bb.s, label %.thread.thread280

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %1, align 8, !tbaa !87    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.v, %i.az
  %.not200 = icmp ugt i64 %i.ba, %i.at
  br i1 %.not200, label %.thread220, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

.thread220:                                       ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %1, align 8, !tbaa !87
  br label %bb.w

bb.u:                                             ; preds = %bb.l, %bb.m
  %.2182 = phi ptr [ %i.al, %bb.l ], [ %.0180714, %bb.m ] ; 2 uses
  %.1176 = phi i8 [ 1, %bb.l ], [ %.0175715, %bb.m ] ; 2 uses
  %.1166 = phi i64 [ %i.ak, %bb.l ], [ %.0165717, %bb.m ]
  %.2162 = phi i64 [ %i.ap, %bb.l ], [ %.0160718, %bb.m ]
  %.not204 = icmp eq ptr %.2182, null
  br i1 %.not204, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

bb.w:                                             ; preds = %.thread220, %bb.u
  %.2162229 = phi i64 [ %i.at, %.thread220 ], [ %.2162, %bb.u ] ; 5 uses
  %.1166228 = phi i64 [ %.0165717, %.thread220 ], [ %.1166, %bb.u ]
  %.1176227 = phi i8 [ 0, %.thread220 ], [ %.1176, %bb.u ] ; 8 uses
  %.2182226 = phi ptr [ %i.ay, %.thread220 ], [ %.2182, %bb.u ] ; 10 uses
  %i.bd = and i64 %.2162229, 1
  %.not205 = icmp eq i64 %i.bd, 0
  br i1 %.not205, label %select.unfold, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr i8, ptr %.2182226, i64 %.2162229
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !92
  %i.bh = icmp eq i8 %i.bg, 0
  %i.bi = add nsw i64 %.2162229, -1
  br i1 %i.bh, label %select.unfold, label %.lr.ph416.preheader

select.unfold:                                    ; preds = %bb.x, %bb.w
  %.3163 = phi i64 [ %.2162229, %bb.w ], [ %i.bi, %bb.x ] ; 2 uses
  %.not206 = icmp eq i64 %.3163, 0
  br i1 %.not206, label %bb.y, label %.lr.ph416.preheader

bb.y:                                             ; preds = %select.unfold
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

.lr.ph416.preheader:                              ; preds = %select.unfold, %bb.x
  %.3163233 = phi i64 [ %.3163, %select.unfold ], [ %.2162229, %bb.x ] ; 2 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !87
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.v, %i.bk                     ; 3 uses
  br label %.lr.ph416

.lr.ph416:                                        ; preds = %.lr.ph416.preheader, %bb.ai
  %.1414 = phi i32 [ %.4, %bb.ai ], [ %.0721, %.lr.ph416.preheader ] ; 3 uses
  %.1144411 = phi i64 [ %.2145, %bb.ai ], [ %.0143720, %.lr.ph416.preheader ] ; 5 uses
  %.1148410 = phi i64 [ %.7, %bb.ai ], [ %.0147719, %.lr.ph416.preheader ] ; 4 uses
  %.0154409 = phi i64 [ %i.cx, %bb.ai ], [ 0, %.lr.ph416.preheader ] ; 2 uses
  %.1169408 = phi i32 [ %.5173, %bb.ai ], [ %.0168716, %.lr.ph416.preheader ]
  switch i32 %.1169408, label %default.unreachable526 [
    i32 0, label %bb.z
    i32 1, label %bb.ac
    i32 2, label %bb.ag
  ]

bb.z:                                             ; preds = %.lr.ph416
  %i.bm = icmp slt i64 %.1144411, 12
  br i1 %i.bm, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !146 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !92
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !92
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.br, %i.bu            ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bv, 4
  %i.bx = or disjoint i32 %i.bw, 12
  %i.by = zext nneg i32 %i.bx to i64              ; 3 uses
  %i.bz = icmp slt i64 %i.bl, %i.by
  br i1 %i.bz, label %.thread234, label %bb.ab

.thread234:                                       ; preds = %bb.aa
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

bb.ab:                                            ; preds = %bb.aa
  %i.ca = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 1, i64 noundef %.1148410, i64 noundef %i.by, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.a) #13
  store ptr %i.ca, ptr %i.g, align 8, !tbaa !146
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !3
  %.not207 = icmp eq i32 %i.cb, 0
  br i1 %.not207, label %bb.ac, label %.thread..thread250.loopexit423_crit_edge

bb.ac:                                            ; preds = %bb.ab, %.lr.ph416
  %.2149 = phi i64 [ %i.by, %bb.ab ], [ %.1148410, %.lr.ph416 ] ; 5 uses
  %.2 = phi i32 [ %i.bv, %bb.ab ], [ %.1414, %.lr.ph416 ] ; 4 uses
  %i.cc = icmp slt i64 %.1144411, %.2149
  br i1 %i.cc, label %bb.ai, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %i.cd = icmp sgt i32 %.2, 0
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !146 ; 2 uses
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.2 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 2 uses
  %.3150406 = phi i64 [ %.2149, %.lr.ph ], [ %i.cp, %bb.af ] ; 2 uses
  %i.ce = shl nsw i64 %indvars.iv, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %i.ck = icmp ult i64 %i.bl, %i.cj
  %i.cl = sub nuw i64 %i.bl, %i.cj
  %i.cm = icmp sgt i64 %.3150406, %i.cl
  %or.cond214 = select i1 %i.ck, i1 true, i1 %i.cm
  br i1 %or.cond214, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

bb.af:                                            ; preds = %bb.ad
  %i.cn = add nuw nsw i64 %i.cj, 3
  %i.co = and i64 %i.cn, 4294967292
  %i.cp = add nsw i64 %i.co, %.3150406            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ad, !llvm.loop !251

._crit_edge:                                      ; preds = %bb.af, %.preheader
  %.3150.lcssa = phi i64 [ %.2149, %.preheader ], [ %i.cp, %bb.af ]
  %i.cq = add nsw i64 %.3150.lcssa, 1             ; 2 uses
  %i.cr = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 1, i64 noundef %.2149, i64 noundef %i.cq, ptr noundef %.pre, ptr noundef nonnull %i.a) #13
  store ptr %i.cr, ptr %i.g, align 8, !tbaa !146
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not208 = icmp eq i32 %i.cs, 0
  br i1 %.not208, label %bb.ag, label %.thread250

bb.ag:                                            ; preds = %._crit_edge, %.lr.ph416
  %.6 = phi i64 [ %.1148410, %.lr.ph416 ], [ %i.cq, %._crit_edge ] ; 2 uses
  %.3 = phi i32 [ %.1414, %.lr.ph416 ], [ %.2, %._crit_edge ]
  %.not209 = icmp slt i64 %.1144411, %.6
  br i1 %.not209, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

default.unreachable526:                           ; preds = %.lr.ph416
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.ac, %bb.z
  %.5173 = phi i32 [ 1, %bb.ac ], [ 0, %bb.z ], [ 2, %bb.ag ] ; 2 uses
  %.7 = phi i64 [ %.2149, %bb.ac ], [ %.1148410, %bb.z ], [ %.6, %bb.ag ] ; 2 uses
  %.4 = phi i32 [ %.2, %bb.ac ], [ %.1414, %bb.z ], [ %.3, %bb.ag ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.2182226, i64 %.0154409
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !92
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %.1144411
  store i8 %i.cu, ptr %i.cw, align 1, !tbaa !92
  %.2145 = add nsw i64 %.1144411, 1               ; 2 uses
  %i.cx = add nuw i64 %.0154409, 1                ; 2 uses
  %exitcond511.not = icmp eq i64 %i.cx, %.3163233
  br i1 %exitcond511.not, label %.thread, label %.lr.ph416, !llvm.loop !252

.thread:                                          ; preds = %bb.ai
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !90
  call void %i.cy(ptr noundef nonnull %1) #13
  %i.cz = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.f
  br i1 %i.da, label %.lr.ph722, label %._crit_edge723

.thread..thread250.loopexit423_crit_edge:         ; preds = %bb.ab
  %.pre512.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

._crit_edge723:                                   ; preds = %.thread, %.preheader292
  %.0180.lcssa = phi ptr [ null, %.preheader292 ], [ %.2182226, %.thread ]
  %.0175.lcssa = phi i8 [ 0, %.preheader292 ], [ %.1176227, %.thread ]
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread250

.thread250:                                       ; preds = %bb.k, %._crit_edge, %.thread..thread250.loopexit423_crit_edge, %bb.o, %bb.q, %bb.t, %bb.ae, %.thread234, %bb.g, %bb.j, %bb.v, %bb.y, %bb.ah, %bb.d, %._crit_edge723, %bb.c
  %i.db = phi i32 [ 3, %bb.c ], [ %i.q, %bb.d ], [ 3, %bb.q ], [ 3, %._crit_edge723 ], [ 3, %.thread234 ], [ %i.cs, %._crit_edge ], [ 3, %bb.g ], [ 3, %bb.j ], [ 3, %bb.v ], [ 3, %bb.y ], [ 3, %bb.ah ], [ 3, %bb.ae ], [ 3, %bb.t ], [ 3, %bb.o ], [ %.pre512.pre, %.thread..thread250.loopexit423_crit_edge ], [ %i.am, %bb.k ] ; 2 uses
  %.4184 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %.0180714, %bb.q ], [ %.0180.lcssa, %._crit_edge723 ], [ %.2182226, %.thread234 ], [ %.2182226, %._crit_edge ], [ %.0180714, %bb.g ], [ %.0180714, %bb.j ], [ null, %bb.v ], [ %.2182226, %bb.y ], [ %.2182226, %bb.ah ], [ %.2182226, %bb.ae ], [ %i.ay, %bb.t ], [ %.0180714, %bb.o ], [ %.2182226, %.thread..thread250.loopexit423_crit_edge ], [ %i.al, %bb.k ]
  %.3178 = phi i8 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.q ], [ %.0175.lcssa, %._crit_edge723 ], [ %.1176227, %.thread234 ], [ %.1176227, %._crit_edge ], [ 0, %bb.g ], [ %.0175715, %bb.j ], [ %.1176, %bb.v ], [ %.1176227, %bb.y ], [ %.1176227, %bb.ah ], [ %.1176227, %bb.ae ], [ 0, %bb.t ], [ 1, %bb.o ], [ %.1176227, %.thread..thread250.loopexit423_crit_edge ], [ %.0175715, %bb.k ]
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !89
  br label %.thread261

.thread261:                                       ; preds = %bb.e, %.thread250
  %i.dd = phi i32 [ %i.db, %.thread250 ], [ %.pre513, %bb.e ]
  %.5185 = phi ptr [ %.4184, %.thread250 ], [ %.0180714, %bb.e ] ; 2 uses
  %.4179 = phi i8 [ %.3178, %.thread250 ], [ %.0175715, %bb.e ] ; 2 uses
  %.not210 = icmp eq i32 %i.dd, 0
  br i1 %.not210, label %bb.aj, label %.thread261.thread

.thread261.thread:                                ; preds = %bb.h, %.thread261
  %.4179537 = phi i8 [ %.4179, %.thread261 ], [ %.0175715, %bb.h ]
  %.5185535 = phi ptr [ %.5185, %.thread261 ], [ %.0180714, %bb.h ]
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !146
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.de) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %.thread261.thread, %.thread261
  %.4179538 = phi i8 [ %.4179537, %.thread261.thread ], [ %.4179, %.thread261 ]
  %.5185536 = phi ptr [ %.5185535, %.thread261.thread ], [ %.5185, %.thread261 ]
  %.not211 = icmp eq i8 %.4179538, 0
  br i1 %.not211, label %.thread.thread280, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %.5185536) #13
  br label %.thread.thread280

.thread.thread280:                                ; preds = %bb.r, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #2

declare hidden zeroext i8 @FT_Matrix_Check(ptr noundef) local_unnamed_addr #2

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Done_Face(ptr noundef) local_unnamed_addr #2

declare i32 @FT_New_Size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Activate_Size(ptr noundef) local_unnamed_addr #2

declare i32 @FT_Request_Size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Select_Size(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @FT_List_Find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_New_GlyphSlot(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @FT_GlyphLoader_Done(ptr noundef) local_unnamed_addr #2

declare hidden void @FT_Done_GlyphSlot(ptr noundef) local_unnamed_addr #2

declare hidden void @ft_glyphslot_free_bitmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

end_hunk_0
