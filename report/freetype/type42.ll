Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/type42?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0_@t42_parse_charstrings:bb.a
  %i.gv = tail call i32 %i.go(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef %i.gr, i32 noundef %i.gu) #13 ; 2 uses
  %.not249 = icmp eq i32 %i.gv, 0
  br i1 %.not249, label %.critedge, label %.thread254

.thread254:                                       ; preds = %bb.ae, %bb.z, %bb.y, %bb.af, %.thread, %t42_is_space.exit.thread.thread, %t42_is_space.exit.thread, %bb.n, %.loopexit, %bb.g, %bb.d, %bb.a, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.q, %bb.p, %bb.o
  %.1196 = phi i32 [ 3, %bb.d ], [ 3, %bb.a ], [ 3, %bb.g ], [ 3, %.loopexit ], [ %i.bd, %bb.o ], [ %i.bh, %bb.p ], [ %i.bk, %bb.q ], [ %i.eo, %bb.ai ], [ %i.ew, %bb.aj ], [ %i.ff, %bb.ak ], [ %i.fn, %bb.al ], [ %i.fw, %bb.am ], [ %i.gf, %bb.an ], [ %i.gn, %bb.ao ], [ %i.gv, %bb.ap ], [ 3, %t42_is_space.exit.thread ], [ 3, %bb.n ], [ 3, %t42_is_space.exit.thread.thread ], [ %i.du, %bb.af ], [ 3, %bb.y ], [ %i.cu, %bb.z ], [ 3, %bb.ae ], [ 3, %.thread ]
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.1196, ptr %i.gw, align 8, !tbaa !71
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.w, %bb.h, %bb.ah, %bb.ap, %bb.c, %.thread254
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @t42_parse_sfnts(ptr nofree noundef captures(none) initializes((800, 808)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 23 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.h) #13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  tail call void %i.k(ptr noundef %1) #13
  %i.l = load ptr, ptr %1, align 8, !tbaa !69     ; 3 uses
  %.not = icmp ult ptr %i.l, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %1, align 8, !tbaa !69
  %i.n = load i8, ptr %i.l, align 1, !tbaa !73
  %.not196 = icmp eq i8 %i.n, 91
  br i1 %.not196, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !72
  tail call void %i.o(ptr noundef nonnull %1) #13
  %i.p = call ptr @ft_mem_qalloc(ptr noundef %i.d, i64 noundef 12, ptr noundef nonnull %i.a) #13
  store ptr %i.p, ptr %i.g, align 8, !tbaa !90
  %i.q = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %.not197 = icmp eq i32 %i.q, 0
  br i1 %.not197, label %.preheader291, label %.thread250

.preheader291:                                    ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.f
  br i1 %i.x, label %.lr.ph777, label %._crit_edge778

.lr.ph777:                                        ; preds = %.preheader291, %.thread
  %i.y = phi ptr [ %i.cy, %.thread ], [ %i.w, %.preheader291 ] ; 4 uses
  %.0144776 = phi i32 [ %.5, %.thread ], [ 0, %.preheader291 ]
  %.0149775 = phi i8 [ %.1150229, %.thread ], [ 0, %.preheader291 ] ; 7 uses
  %.0154774 = phi ptr [ %.2156228, %.thread ], [ null, %.preheader291 ] ; 9 uses
  %.0160773 = phi i64 [ %.1161227, %.thread ], [ 0, %.preheader291 ] ; 3 uses
  %.0163772 = phi i64 [ %.3166233, %.thread ], [ 0, %.preheader291 ]
  %.0169771 = phi i64 [ %.7, %.thread ], [ 12, %.preheader291 ]
  %.0176770 = phi i64 [ %.2178, %.thread ], [ 0, %.preheader291 ] ; 2 uses
  %.0180769 = phi i32 [ %.4184, %.thread ], [ 0, %.preheader291 ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !73    ; 2 uses
  switch i8 %i.z, label %bb.m [
    i8 93, label %bb.e
    i8 60, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph777
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.aa, ptr %1, align 8, !tbaa !69
  store i64 %.0176770, ptr %i.i, align 8, !tbaa !94
  %.pre512 = load i32, ptr %i.s, align 8, !tbaa !71
  br label %.thread261

bb.f:                                             ; preds = %.lr.ph777
  %i.ab = icmp eq ptr %.0154774, null
  %i.ac = icmp ne i8 %.0149775, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.h:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !74
  call void %i.ad(ptr noundef nonnull %1) #13
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !71
  %.not201 = icmp eq i32 %i.ae, 0
  br i1 %.not201, label %bb.i, label %.thread261.thread

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %1, align 8, !tbaa !69
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ai = xor i64 %i.ah, -1
  %i.aj = add i64 %i.ag, %i.ai
  %i.ak = sdiv i64 %i.aj, 2                       ; 3 uses
  %.off = sub i64 %i.ag, %i.ah
  %.not202 = icmp ult i64 %.off, 3
  br i1 %.not202, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.k:                                             ; preds = %bb.i
  %i.al = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 1, i64 noundef %.0160773, i64 noundef %i.ak, ptr noundef %.0154774, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.am = load i32, ptr %i.a, align 4, !tbaa !68  ; 2 uses
  %.not203 = icmp eq i32 %i.am, 0
  br i1 %.not203, label %bb.l, label %.thread250

bb.l:                                             ; preds = %bb.k
  store ptr %i.y, ptr %1, align 8, !tbaa !69
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !257
  %i.ao = call i32 %i.an(ptr noundef nonnull %1, ptr noundef %i.al, i64 noundef %i.ak, ptr noundef nonnull %i.b, i8 noundef zeroext 1) #13 ; 0 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !96
  br label %bb.u

bb.m:                                             ; preds = %.lr.ph777
  %i.aq = add i8 %i.z, -48
  %i.ar = icmp ult i8 %i.aq, 10
  br i1 %i.ar, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %.not198 = icmp eq i8 %.0149775, 0
  br i1 %.not198, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.p:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.at = call i64 %i.as(ptr noundef nonnull %1) #13 ; 4 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.r:                                             ; preds = %bb.p
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !74
  call void %i.av(ptr noundef nonnull %1) #13
  %i.aw = load i32, ptr %i.s, align 8, !tbaa !71
  %.not199 = icmp eq i32 %i.aw, 0
  br i1 %.not199, label %bb.s, label %.thread.thread280

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %1, align 8, !tbaa !69    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.v, %i.az
  %.not200 = icmp ugt i64 %i.ba, %i.at
  br i1 %.not200, label %.thread220, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

.thread220:                                       ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %1, align 8, !tbaa !69
  br label %bb.w

bb.u:                                             ; preds = %bb.l, %bb.m
  %.2165 = phi i64 [ %i.ap, %bb.l ], [ %.0163772, %bb.m ]
  %.1161 = phi i64 [ %i.ak, %bb.l ], [ %.0160773, %bb.m ]
  %.2156 = phi ptr [ %i.al, %bb.l ], [ %.0154774, %bb.m ] ; 2 uses
  %.1150 = phi i8 [ 1, %bb.l ], [ %.0149775, %bb.m ] ; 2 uses
  %.not204 = icmp eq ptr %.2156, null
  br i1 %.not204, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.w:                                             ; preds = %.thread220, %bb.u
  %.1150229 = phi i8 [ 0, %.thread220 ], [ %.1150, %bb.u ] ; 8 uses
  %.2156228 = phi ptr [ %i.ay, %.thread220 ], [ %.2156, %bb.u ] ; 10 uses
  %.1161227 = phi i64 [ %.0160773, %.thread220 ], [ %.1161, %bb.u ]
  %.2165226 = phi i64 [ %i.at, %.thread220 ], [ %.2165, %bb.u ] ; 5 uses
  %2 = and i64 %.2165226, 1
  %.not205 = icmp eq i64 %2, 0
  br i1 %.not205, label %select.unfold, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr i8, ptr %.2156228, i64 %.2165226
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !73
  %i.bg = icmp eq i8 %i.bf, 0
  %i.bh = add nsw i64 %.2165226, -1
  br i1 %i.bg, label %select.unfold, label %.lr.ph415.preheader

select.unfold:                                    ; preds = %bb.x, %bb.w
  %.3166 = phi i64 [ %.2165226, %bb.w ], [ %i.bh, %bb.x ] ; 2 uses
  %.not206 = icmp eq i64 %.3166, 0
  br i1 %.not206, label %bb.y, label %.lr.ph415.preheader

bb.y:                                             ; preds = %select.unfold
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

.lr.ph415.preheader:                              ; preds = %select.unfold, %bb.x
  %.3166233 = phi i64 [ %.3166, %select.unfold ], [ %.2165226, %bb.x ] ; 2 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !69
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.v, %i.bj                     ; 3 uses
  br label %.lr.ph415

.lr.ph415:                                        ; preds = %.lr.ph415.preheader, %bb.ai
  %.1145413 = phi i32 [ %.0144776, %.lr.ph415.preheader ], [ %.5, %bb.ai ]
  %.0168412 = phi i64 [ 0, %.lr.ph415.preheader ], [ %i.cw, %bb.ai ] ; 2 uses
  %.1170411 = phi i64 [ %.0169771, %.lr.ph415.preheader ], [ %.7, %bb.ai ] ; 4 uses
  %.1177408 = phi i64 [ %.0176770, %.lr.ph415.preheader ], [ %.2178, %bb.ai ] ; 5 uses
  %.1181407 = phi i32 [ %.0180769, %.lr.ph415.preheader ], [ %.4184, %bb.ai ] ; 3 uses
  switch i32 %.1145413, label %default.unreachable524 [
    i32 0, label %bb.z
    i32 1, label %bb.ac
    i32 2, label %bb.ag
  ]

bb.z:                                             ; preds = %.lr.ph415
  %i.bl = icmp slt i64 %.1177408, 12
  br i1 %i.bl, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !90  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !73
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !73
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bq, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.bu, 4
  %i.bw = or disjoint i32 %i.bv, 12
  %i.bx = zext nneg i32 %i.bw to i64              ; 3 uses
  %i.by = icmp slt i64 %i.bk, %i.bx
  br i1 %i.by, label %.thread234, label %bb.ab

.thread234:                                       ; preds = %bb.aa
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.ab:                                            ; preds = %bb.aa
  %i.bz = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 1, i64 noundef %.1170411, i64 noundef %i.bx, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.a) #13
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !90
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !68
  %.not207 = icmp eq i32 %i.ca, 0
  br i1 %.not207, label %bb.ac, label %.thread..thread250.loopexit422_crit_edge

bb.ac:                                            ; preds = %bb.ab, %.lr.ph415
  %.2182 = phi i32 [ %i.bu, %bb.ab ], [ %.1181407, %.lr.ph415 ] ; 4 uses
  %.2171 = phi i64 [ %i.bx, %bb.ab ], [ %.1170411, %.lr.ph415 ] ; 5 uses
  %i.cb = icmp slt i64 %.1177408, %.2171
  br i1 %i.cb, label %bb.ai, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %i.cc = icmp sgt i32 %.2182, 0
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !90  ; 2 uses
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.2182 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 2 uses
  %.3172404 = phi i64 [ %.2171, %.lr.ph ], [ %i.co, %bb.af ] ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv, 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %i.cj = icmp ult i64 %i.bk, %i.ci
  %i.ck = sub nuw i64 %i.bk, %i.ci
  %i.cl = icmp sgt i64 %.3172404, %i.ck
  %or.cond214 = select i1 %i.cj, i1 true, i1 %i.cl
  br i1 %or.cond214, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.af:                                            ; preds = %bb.ad
  %i.cm = add nuw nsw i64 %i.ci, 3
  %i.cn = and i64 %i.cm, 4294967292
  %i.co = add nsw i64 %i.cn, %.3172404            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ad, !llvm.loop !255

._crit_edge:                                      ; preds = %bb.af, %.preheader
  %.3172.lcssa = phi i64 [ %.2171, %.preheader ], [ %i.co, %bb.af ]
  %i.cp = add nsw i64 %.3172.lcssa, 1             ; 2 uses
  %i.cq = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 1, i64 noundef %.2171, i64 noundef %i.cp, ptr noundef %.pre, ptr noundef nonnull %i.a) #13
  store ptr %i.cq, ptr %i.g, align 8, !tbaa !90
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !68  ; 2 uses
  %.not208 = icmp eq i32 %i.cr, 0
  br i1 %.not208, label %bb.ag, label %.thread250

bb.ag:                                            ; preds = %._crit_edge, %.lr.ph415
  %.3183 = phi i32 [ %.1181407, %.lr.ph415 ], [ %.2182, %._crit_edge ]
  %.6175 = phi i64 [ %.1170411, %.lr.ph415 ], [ %i.cp, %._crit_edge ] ; 2 uses
  %.not209 = icmp slt i64 %.1177408, %.6175
  br i1 %.not209, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

default.unreachable524:                           ; preds = %.lr.ph415
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.ac, %bb.z
  %.4184 = phi i32 [ %.2182, %bb.ac ], [ %.1181407, %bb.z ], [ %.3183, %bb.ag ] ; 2 uses
  %.7 = phi i64 [ %.2171, %bb.ac ], [ %.1170411, %bb.z ], [ %.6175, %bb.ag ] ; 2 uses
  %.5 = phi i32 [ 1, %bb.ac ], [ 0, %bb.z ], [ 2, %bb.ag ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.2156228, i64 %.0168412
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !73
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %.1177408
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !73
  %.2178 = add nsw i64 %.1177408, 1               ; 2 uses
  %i.cw = add nuw i64 %.0168412, 1                ; 2 uses
  %exitcond510.not = icmp eq i64 %i.cw, %.3166233
  br i1 %exitcond510.not, label %.thread, label %.lr.ph415, !llvm.loop !256

.thread:                                          ; preds = %bb.ai
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !72
  call void %i.cx(ptr noundef nonnull %1) #13
  %i.cy = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.f
  br i1 %i.cz, label %.lr.ph777, label %._crit_edge778

.thread..thread250.loopexit422_crit_edge:         ; preds = %bb.ab
  %.pre511.pre = load i32, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

._crit_edge778:                                   ; preds = %.thread, %.preheader291
  %.0154.lcssa = phi ptr [ null, %.preheader291 ], [ %.2156228, %.thread ]
  %.0149.lcssa = phi i8 [ 0, %.preheader291 ], [ %.1150229, %.thread ]
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

.thread250:                                       ; preds = %bb.k, %._crit_edge, %.thread..thread250.loopexit422_crit_edge, %bb.o, %bb.q, %bb.t, %bb.ae, %.thread234, %bb.g, %bb.j, %bb.v, %bb.y, %bb.ah, %bb.d, %._crit_edge778, %bb.c
  %i.da = phi i32 [ 3, %bb.c ], [ %i.q, %bb.d ], [ 3, %bb.q ], [ 3, %._crit_edge778 ], [ 3, %.thread234 ], [ %i.cr, %._crit_edge ], [ 3, %bb.g ], [ 3, %bb.j ], [ 3, %bb.v ], [ 3, %bb.y ], [ 3, %bb.ah ], [ 3, %bb.ae ], [ 3, %bb.t ], [ 3, %bb.o ], [ %.pre511.pre, %.thread..thread250.loopexit422_crit_edge ], [ %i.am, %bb.k ] ; 2 uses
  %.4158 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %.0154774, %bb.q ], [ %.0154.lcssa, %._crit_edge778 ], [ %.2156228, %.thread234 ], [ %.2156228, %._crit_edge ], [ %.0154774, %bb.g ], [ %.0154774, %bb.j ], [ null, %bb.v ], [ %.2156228, %bb.y ], [ %.2156228, %bb.ah ], [ %.2156228, %bb.ae ], [ %i.ay, %bb.t ], [ %.0154774, %bb.o ], [ %.2156228, %.thread..thread250.loopexit422_crit_edge ], [ %i.al, %bb.k ]
  %.3152 = phi i8 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.q ], [ %.0149.lcssa, %._crit_edge778 ], [ %.1150229, %.thread234 ], [ %.1150229, %._crit_edge ], [ 0, %bb.g ], [ %.0149775, %bb.j ], [ %.1150, %bb.v ], [ %.1150229, %bb.y ], [ %.1150229, %bb.ah ], [ %.1150229, %bb.ae ], [ 0, %bb.t ], [ 1, %bb.o ], [ %.1150229, %.thread..thread250.loopexit422_crit_edge ], [ %.0149775, %bb.k ]
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.da, ptr %i.db, align 8, !tbaa !71
  br label %.thread261

.thread261:                                       ; preds = %bb.e, %.thread250
  %i.dc = phi i32 [ %i.da, %.thread250 ], [ %.pre512, %bb.e ]
  %.5159 = phi ptr [ %.4158, %.thread250 ], [ %.0154774, %bb.e ] ; 2 uses
  %.4153 = phi i8 [ %.3152, %.thread250 ], [ %.0149775, %bb.e ] ; 2 uses
  %.not210 = icmp eq i32 %i.dc, 0
  br i1 %.not210, label %bb.aj, label %.thread261.thread

.thread261.thread:                                ; preds = %bb.h, %.thread261
  %.4153580 = phi i8 [ %.4153, %.thread261 ], [ %.0149775, %bb.h ]
  %.5159578 = phi ptr [ %.5159, %.thread261 ], [ %.0154774, %bb.h ]
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !90
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.dd) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %.thread261.thread, %.thread261
  %.4153581 = phi i8 [ %.4153580, %.thread261.thread ], [ %.4153, %.thread261 ]
  %.5159579 = phi ptr [ %.5159578, %.thread261.thread ], [ %.5159, %.thread261 ]
  %.not211 = icmp eq i8 %.4153581, 0
  br i1 %.not211, label %.thread.thread280, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %.5159579) #13
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
end_hunk_0
