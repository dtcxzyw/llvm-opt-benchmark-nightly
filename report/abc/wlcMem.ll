Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcMem?download=true
inline.NumInlined: 785
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Wlc_NtkAbsCreateFlopInputs:bb.a
  %i.dt = load i32, ptr %3, align 8, !tbaa !27
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.ad, label %Vec_IntPush.exit149

bb.ad:                                            ; preds = %Vec_IntPush.exit
  %i.dv = icmp slt i32 %i.ds, 16
  br i1 %i.dv, label %Vec_IntGrow.exit11.sink.split.i145, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = icmp samesign ult i32 %i.ds, 1073741823
  %i.dx = shl nuw nsw i32 %i.ds, 1
  %spec.select.i142 = select i1 %i.dw, i32 %i.dx, i32 2147483647 ; 3 uses
  %.not.i9.i143 = icmp samesign ult i32 %i.ds, %spec.select.i142
  br i1 %.not.i9.i143, label %bb.af, label %Vec_IntPush.exit149

bb.af:                                            ; preds = %bb.ae
  %i.dy = zext nneg i32 %spec.select.i142 to i64
  %i.dz = shl nuw nsw i64 %i.dy, 2
  br label %Vec_IntGrow.exit11.sink.split.i145

Vec_IntGrow.exit11.sink.split.i145:               ; preds = %bb.ad, %bb.af
  %.sink = phi i64 [ %i.dz, %bb.af ], [ 64, %bb.ad ]
  %spec.select.sink.i146 = phi i32 [ %spec.select.i142, %bb.af ], [ 16, %bb.ad ]
  %i.ea = tail call ptr @realloc(ptr noundef nonnull %i.dk, i64 noundef %.sink) #30 ; 2 uses
  store ptr %i.ea, ptr %i.h, align 8, !tbaa !8
  store i32 %spec.select.sink.i146, ptr %3, align 8, !tbaa !27
  %.pre174 = load i32, ptr %i.i, align 4, !tbaa !28
  %.val99.pre = load ptr, ptr %i.f, align 8, !tbaa !13
  %.pre180 = ptrtoint ptr %.val99.pre to i64
  br label %Vec_IntPush.exit149

Vec_IntPush.exit149:                              ; preds = %Vec_IntPush.exit, %bb.ae, %Vec_IntGrow.exit11.sink.split.i145
  %.pre-phi181 = phi i64 [ %.pre-phi, %Vec_IntPush.exit ], [ %.pre-phi, %bb.ae ], [ %.pre180, %Vec_IntGrow.exit11.sink.split.i145 ]
  %i.eb = phi i32 [ %i.ds, %Vec_IntPush.exit ], [ %i.ds, %bb.ae ], [ %.pre174, %Vec_IntGrow.exit11.sink.split.i145 ] ; 2 uses
  %i.ec = phi ptr [ %i.dk, %Vec_IntPush.exit ], [ %i.dk, %bb.ae ], [ %i.ea, %Vec_IntGrow.exit11.sink.split.i145 ] ; 4 uses
  %i.ed = add nsw i32 %i.eb, 1
  store i32 %i.ed, ptr %i.i, align 4, !tbaa !28
  %i.ee = sext i32 %i.eb to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ee
  store i32 %i.dr, ptr %i.ef, align 4, !tbaa !12
  %i.eg = ptrtoint ptr %.2 to i64
  %i.eh = sub i64 %i.eg, %.pre-phi181
  %i.ei = sdiv exact i64 %i.eh, 24
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = load i32, ptr %i.i, align 4, !tbaa !28  ; 7 uses
  %i.el = load i32, ptr %3, align 8, !tbaa !27
  %i.em = icmp eq i32 %i.ek, %i.el
  br i1 %i.em, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %Vec_IntPush.exit149
  %i.en = icmp slt i32 %i.ek, 16
  br i1 %i.en, label %Vec_IntGrow.exit11.sink.split.i153, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = icmp samesign ult i32 %i.ek, 1073741823
  %i.ep = shl nuw nsw i32 %i.ek, 1
  %spec.select.i150 = select i1 %i.eo, i32 %i.ep, i32 2147483647 ; 3 uses
  %.not.i9.i151 = icmp samesign ult i32 %i.ek, %spec.select.i150
  br i1 %.not.i9.i151, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eq = zext nneg i32 %spec.select.i150 to i64
  %i.er = shl nuw nsw i64 %i.eq, 2
  br label %Vec_IntGrow.exit11.sink.split.i153

Vec_IntGrow.exit11.sink.split.i153:               ; preds = %bb.ag, %bb.ai
  %.sink190 = phi i64 [ %i.er, %bb.ai ], [ 64, %bb.ag ]
  %spec.select.sink.i154 = phi i32 [ %spec.select.i150, %bb.ai ], [ 16, %bb.ag ]
  %i.es = tail call ptr @realloc(ptr noundef nonnull %i.ec, i64 noundef %.sink190) #30 ; 2 uses
  store ptr %i.es, ptr %i.h, align 8, !tbaa !8
  store i32 %spec.select.sink.i154, ptr %3, align 8, !tbaa !27
  %.pre176 = load i32, ptr %i.i, align 4, !tbaa !28
  br label %bb.aj

bb.aj:                                            ; preds = %Vec_IntGrow.exit11.sink.split.i153, %bb.ah, %Vec_IntPush.exit149
  %i.et = phi i32 [ %i.ek, %Vec_IntPush.exit149 ], [ %i.ek, %bb.ah ], [ %.pre176, %Vec_IntGrow.exit11.sink.split.i153 ] ; 2 uses
  %i.eu = phi ptr [ %i.ec, %Vec_IntPush.exit149 ], [ %i.ec, %bb.ah ], [ %i.es, %Vec_IntGrow.exit11.sink.split.i153 ]
  %i.ev = add nsw i32 %i.et, 1
  store i32 %i.ev, ptr %i.i, align 4, !tbaa !28
  %i.ew = sext i32 %i.et to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ew
  store i32 %i.ej, ptr %i.ex, align 4, !tbaa !12
  tail call void @Wlc_ObjAddFanins(ptr noundef nonnull %0, ptr noundef %i.cy, ptr noundef nonnull %3) #29
  tail call void @Wlc_ObjSetCo(ptr noundef nonnull %0, ptr noundef %i.cy, i32 noundef 1) #29
  br i1 %.not, label %bb.c, label %.thread, !llvm.loop !56

.thread:                                          ; preds = %bb.k, %bb.aj
  %.3188 = phi ptr [ %.2, %bb.aj ], [ %.1159, %bb.k ]
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %.val105 = load i32, ptr %i.a, align 4, !tbaa !28
  %i.ey = sext i32 %.val105 to i64
  %i.ez = icmp slt i64 %indvars.iv.next167, %i.ey
  br i1 %i.ez, label %bb.b, label %.critedge, !llvm.loop !57

.critedge:                                        ; preds = %.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_NtkAbsCreateLogic(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !28
  store i32 100, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !8
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 14 uses
  store i32 0, ptr %i.f, align 4, !tbaa !28
  store i32 100, ptr %i.e, align 8, !tbaa !27
  %i.g = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 15 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr i8, ptr %5, i64 4          ; 2 uses
  %.val179322 = load i32, ptr %i.i, align 4, !tbaa !58 ; 2 uses
  %i.j = icmp sgt i32 %.val179322, 0
  br i1 %i.j, label %.lr.ph324, label %.critedge.thread

.lr.ph324:                                        ; preds = %bb.a
  %i.k = getelementptr i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 640        ; 12 uses
  %i.p = getelementptr i8, ptr %0, i64 36         ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph324, %bb.bt
  %i.u = phi ptr [ %i.c, %.lr.ph324 ], [ %i.ka, %bb.bt ]
  %.val179344 = phi i32 [ %.val179322, %.lr.ph324 ], [ %.val179, %bb.bt ]
  %indvars.iv329 = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next330, %bb.bt ] ; 2 uses
  %.val180 = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val180, i64 %indvars.iv329 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4        ; 4 uses
  %.val178 = load i32, ptr %i.w, align 4, !tbaa !28
  %i.x = icmp eq i32 %.val178, 0
  br i1 %i.x, label %bb.bt, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 4, !tbaa !28
  %i.y = getelementptr i8, ptr %i.v, i64 8        ; 2 uses
  %.val146 = load ptr, ptr %i.y, align 8, !tbaa !8 ; 2 uses
  %i.z = load i32, ptr %.val146, align 4, !tbaa !12 ; 2 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.aa, 1023
  %.val183 = load i32, ptr %i.w, align 4, !tbaa !28
  %i.ac = sext i32 %.val183 to i64
  %i.ad = getelementptr [4 x i8], ptr %.val146, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12 ; 2 uses
  %i.ag = lshr i32 %i.af, 1
  %i.ah = and i32 %i.ag, 1023                     ; 2 uses
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !28  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i, label %Vec_IntFind.exit197

.lr.ph.i:                                         ; preds = %bb.c
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !8   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ai to i64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12
  %i.an = icmp eq i32 %i.am, %i.z
  br i1 %i.an, label %._crit_edge.loopexit.split.loop.exit12.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i191, label %bb.d, !llvm.loop !48

._crit_edge.loopexit.split.loop.exit12.i:         ; preds = %bb.d
  %i.ao = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %bb.e, %._crit_edge.loopexit.split.loop.exit12.i
  %.07.i = phi i32 [ %i.ao, %._crit_edge.loopexit.split.loop.exit12.i ], [ -1, %bb.e ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i191
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i191 ], [ %indvars.iv.next.i194, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i193
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = icmp eq i32 %i.aq, %i.af
  br i1 %i.ar, label %._crit_edge.loopexit.split.loop.exit12.i196, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i194 = add nuw nsw i64 %indvars.iv.i193, 1 ; 2 uses
  %exitcond.not.i195 = icmp eq i64 %indvars.iv.next.i194, %wide.trip.count.i
  br i1 %exitcond.not.i195, label %Vec_IntFind.exit197, label %bb.f, !llvm.loop !48

._crit_edge.loopexit.split.loop.exit12.i196:      ; preds = %bb.f
  %7 = trunc nuw nsw i64 %indvars.iv.i193 to i32
  %8 = shl nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  br label %Vec_IntFind.exit197

Vec_IntFind.exit197:                              ; preds = %bb.g, %bb.c, %._crit_edge.loopexit.split.loop.exit12.i196
  %.07.i310 = phi i32 [ -1, %bb.c ], [ %.07.i, %._crit_edge.loopexit.split.loop.exit12.i196 ], [ %.07.i, %bb.g ]
  %.07.i190 = phi i64 [ -2, %bb.c ], [ %9, %._crit_edge.loopexit.split.loop.exit12.i196 ], [ -2, %bb.g ]
  %i.as = shl nsw i32 %.07.i310, 1
  %.val144 = load ptr, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [4 x i8], ptr %.val144, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %.val159 = load ptr, ptr %i.o, align 8, !tbaa !13 ; 8 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [24 x i8], ptr %.val159, i64 %i.aw ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %.val144, i64 %.07.i190 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [24 x i8], ptr %.val159, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.au, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [24 x i8], ptr %.val159, i64 %i.be ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [24 x i8], ptr %.val159, i64 %i.bi
  %i.bk = icmp eq i32 %i.ab, %i.ah
  %.val5.i202.pre = load i32, ptr %i.p, align 4, !tbaa !28 ; 4 uses
  %.val7.i203.pre = load i32, ptr %i.q, align 4, !tbaa !28 ; 4 uses
  %.val.i204.pre = load ptr, ptr %i.r, align 8, !tbaa !8 ; 4 uses
  br i1 %i.bk, label %bb.h, label %Vec_IntFind.exit197._crit_edge

Vec_IntFind.exit197._crit_edge:                   ; preds = %Vec_IntFind.exit197
  %.pre353 = sub i32 %.val5.i202.pre, %.val7.i203.pre
  br label %bb.i

bb.h:                                             ; preds = %Vec_IntFind.exit197
  %i.bl = getelementptr i8, ptr %i.ax, i64 20
  %.val189 = load i32, ptr %i.bl, align 4, !tbaa !24
  %i.bm = add nsw i32 %.val5.i202.pre, %.val189
  %i.bn = sub i32 %i.bm, %.val7.i203.pre
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val.i204.pre, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !12
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [24 x i8], ptr %.val159, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bf, i64 20
  %.val188 = load i32, ptr %i.bt, align 4, !tbaa !24
  %i.bu = sub i32 %.val5.i202.pre, %.val7.i203.pre ; 2 uses
  %i.bv = add i32 %i.bu, %.val188
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %.val.i204.pre, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [24 x i8], ptr %.val159, i64 %i.bz
  br label %bb.i

bb.i:                                             ; preds = %Vec_IntFind.exit197._crit_edge, %bb.h
  %.pre-phi = phi i32 [ %.pre353, %Vec_IntFind.exit197._crit_edge ], [ %i.bu, %bb.h ]
  %.sroa.035.0 = phi ptr [ %i.ax, %Vec_IntFind.exit197._crit_edge ], [ %i.bs, %bb.h ]
  %.sroa.032.0 = phi ptr [ %i.bf, %Vec_IntFind.exit197._crit_edge ], [ %i.ca, %bb.h ]
  %i.cb = getelementptr i8, ptr %i.bb, i64 20
  %.val187 = load i32, ptr %i.cb, align 4, !tbaa !24
  %i.cc = add nsw i32 %.val5.i202.pre, %.val187
  %i.cd = sub i32 %i.cc, %.val7.i203.pre
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val.i204.pre, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !12
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [24 x i8], ptr %.val159, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.bj, i64 20
  %.val186 = load i32, ptr %i.cj, align 4, !tbaa !24
  %i.ck = add i32 %.pre-phi, %.val186
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.val.i204.pre, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [24 x i8], ptr %.val159, i64 %i.co
  %i.cq = tail call i32 @Wlc_ObjAlloc(ptr noundef nonnull %0, i32 noundef 31, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  %.val155 = load ptr, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [24 x i8], ptr %.val155, i64 %i.cr ; 2 uses
  %i.ct = ptrtoint ptr %.sroa.035.0 to i64
  %i.cu = ptrtoint ptr %.val155 to i64            ; 2 uses
  %i.cv = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cw = load i32, ptr %3, align 8, !tbaa !27
  %.not.i.i = icmp slt i32 %i.cw, 2
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !8   ; 3 uses
  br i1 %.not.i.i, label %bb.j, label %Vec_IntGrow.exit.i

bb.j:                                             ; preds = %bb.i
  %.not9.i.i = icmp eq ptr %i.cx, null
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cy = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.cx, i64 noundef 8) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cz = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.da = phi ptr [ %i.cy, %bb.k ], [ %i.cz, %bb.l ] ; 2 uses
  store ptr %i.da, ptr %i.s, align 8, !tbaa !8
  store i32 2, ptr %3, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.m, %bb.i
  %i.db = phi ptr [ %i.da, %bb.m ], [ %i.cx, %bb.i ] ; 2 uses
  %.v.v = sub i64 %i.ct, %i.cu
  %.v = sdiv exact i64 %.v.v, 24
  %i.dc = trunc i64 %.v to i32
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !12
  %.v.v.1 = sub i64 %i.cv, %i.cu
  %.v.1 = sdiv exact i64 %.v.v.1, 24
  %i.dd = trunc i64 %.v.1 to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !12
  store i32 2, ptr %i.t, align 4, !tbaa !28
  tail call void @Wlc_ObjAddFanins(ptr noundef nonnull %0, ptr noundef %i.cs, ptr noundef nonnull %3) #29
  %.val171 = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.df = ptrtoint ptr %i.cs to i64
  %i.dg = ptrtoint ptr %.val171 to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 24
  %i.dj = trunc i64 %i.di to i32
  %i.dk = load i32, ptr %i.f, align 4, !tbaa !28  ; 7 uses
  %i.dl = load i32, ptr %i.e, align 8, !tbaa !27
  %i.dm = icmp eq i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.n, label %Vec_IntGrow.exit.i.Vec_IntPush.exit_crit_edge

Vec_IntGrow.exit.i.Vec_IntPush.exit_crit_edge:    ; preds = %Vec_IntGrow.exit.i
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !8
  br label %Vec_IntPush.exit

bb.n:                                             ; preds = %Vec_IntGrow.exit.i
  %i.dn = icmp slt i32 %i.dk, 16
  br i1 %i.dn, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %.not9.i.i213 = icmp eq ptr %i.do, null
  br i1 %.not9.i.i213, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.do, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.dq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.dr = icmp samesign ult i32 %i.dk, 1073741823
  %i.ds = shl nuw nsw i32 %i.dk, 1
  %spec.select.i = select i1 %i.dr, i32 %i.ds, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.dk, %spec.select.i
  %.pre332 = load ptr, ptr %i.h, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i = icmp eq ptr %.pre332, null
  %i.dt = zext nneg i32 %spec.select.i to i64
  %i.du = shl nuw nsw i64 %i.dt, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = tail call ptr @realloc(ptr noundef nonnull %.pre332, i64 noundef %i.du) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.dw = tail call noalias ptr @malloc(i64 noundef %i.du) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %storemerge = phi ptr [ %i.dq, %bb.q ], [ %i.dp, %bb.p ], [ %i.dv, %bb.t ], [ %i.dw, %bb.u ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i, %bb.t ], [ %spec.select.i, %bb.u ]
  store ptr %storemerge, ptr %i.h, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %i.e, align 8, !tbaa !27
  %.pre333 = load i32, ptr %i.f, align 4, !tbaa !28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntGrow.exit.i.Vec_IntPush.exit_crit_edge, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.dx = phi i32 [ %i.dk, %Vec_IntGrow.exit.i.Vec_IntPush.exit_crit_edge ], [ %i.dk, %bb.r ], [ %.pre333, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.dy = phi ptr [ %.pre, %Vec_IntGrow.exit.i.Vec_IntPush.exit_crit_edge ], [ %.pre332, %bb.r ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ]
  %i.dz = add nsw i32 %i.dx, 1
  store i32 %i.dz, ptr %i.f, align 4, !tbaa !28
  %i.ea = sext i32 %i.dx to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.ea
  store i32 %i.dj, ptr %i.eb, align 4, !tbaa !12
  %i.ec = tail call i32 @Wlc_ObjAlloc(ptr noundef nonnull %0, i32 noundef 32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  %.val154 = load ptr, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [24 x i8], ptr %.val154, i64 %i.ed ; 2 uses
  %i.ef = ptrtoint ptr %.val154 to i64            ; 2 uses
  %i.eg = load i32, ptr %3, align 8, !tbaa !27
  %.not.i.i215 = icmp slt i32 %i.eg, 2
  %i.eh = load ptr, ptr %i.s, align 8, !tbaa !8   ; 3 uses
  br i1 %.not.i.i215, label %bb.v, label %Vec_IntGrow.exit.i216

bb.v:                                             ; preds = %Vec_IntPush.exit
  %.not9.i.i221 = icmp eq ptr %i.eh, null
  br i1 %.not9.i.i221, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.eh, i64 noundef 8) #30
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ej = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ek = phi ptr [ %i.ei, %bb.w ], [ %i.ej, %bb.x ] ; 2 uses
  store ptr %i.ek, ptr %i.s, align 8, !tbaa !8
  store i32 2, ptr %3, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.i216

Vec_IntGrow.exit.i216:                            ; preds = %bb.y, %Vec_IntPush.exit
  %i.el = phi ptr [ %i.ek, %bb.y ], [ %i.eh, %Vec_IntPush.exit ] ; 2 uses
  %.v311.v.v = ptrtoint ptr %.sroa.032.0 to i64
  %.v311.v = sub i64 %.v311.v.v, %i.ef
  %.v311 = sdiv exact i64 %.v311.v, 24
  %i.em = trunc i64 %.v311 to i32
  store i32 %i.em, ptr %i.el, align 4, !tbaa !12
  %.v311.v.v.1 = ptrtoint ptr %i.cp to i64
  %.v311.v.1 = sub i64 %.v311.v.v.1, %i.ef
  %.v311.1 = sdiv exact i64 %.v311.v.1, 24
  %i.en = trunc i64 %.v311.1 to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !12
  store i32 2, ptr %i.t, align 4, !tbaa !28
  tail call void @Wlc_ObjAddFanins(ptr noundef nonnull %0, ptr noundef %i.ee, ptr noundef nonnull %3) #29
  %.val168 = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.ep = ptrtoint ptr %i.ee to i64
  %i.eq = ptrtoint ptr %.val168 to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = sdiv exact i64 %i.er, 24
  %i.et = trunc i64 %i.es to i32
  %i.eu = load i32, ptr %i.f, align 4, !tbaa !28  ; 7 uses
  %i.ev = load i32, ptr %i.e, align 8, !tbaa !27
  %i.ew = icmp eq i32 %i.eu, %i.ev
  br i1 %i.ew, label %bb.z, label %Vec_IntGrow.exit.i216.Vec_IntPush.exit230_crit_edge

Vec_IntGrow.exit.i216.Vec_IntPush.exit230_crit_edge: ; preds = %Vec_IntGrow.exit.i216
  %.pre334 = load ptr, ptr %i.h, align 8, !tbaa !8
  br label %Vec_IntPush.exit230

bb.z:                                             ; preds = %Vec_IntGrow.exit.i216
  %i.ex = icmp slt i32 %i.eu, 16
  br i1 %i.ex, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ey = load ptr, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %.not9.i.i228 = icmp eq ptr %i.ey, null
  br i1 %.not9.i.i228, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ey, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i226

bb.ac:                                            ; preds = %bb.aa
  %i.fa = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i226

bb.ad:                                            ; preds = %bb.z
  %i.fb = icmp samesign ult i32 %i.eu, 1073741823
  %i.fc = shl nuw nsw i32 %i.eu, 1
  %spec.select.i223 = select i1 %i.fb, i32 %i.fc, i32 2147483647 ; 4 uses
  %.not.i9.i224 = icmp samesign ult i32 %i.eu, %spec.select.i223
  %.pre335 = load ptr, ptr %i.h, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i224, label %bb.ae, label %Vec_IntPush.exit230

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i225 = icmp eq ptr %.pre335, null
  %i.fd = zext nneg i32 %spec.select.i223 to i64
  %i.fe = shl nuw nsw i64 %i.fd, 2                ; 2 uses
  br i1 %.not9.i10.i225, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = tail call ptr @realloc(ptr noundef nonnull %.pre335, i64 noundef %i.fe) #30
  br label %Vec_IntGrow.exit11.sink.split.i226

bb.ag:                                            ; preds = %bb.ae
  %i.fg = tail call noalias ptr @malloc(i64 noundef %i.fe) #28
  br label %Vec_IntGrow.exit11.sink.split.i226

Vec_IntGrow.exit11.sink.split.i226:               ; preds = %bb.af, %bb.ag, %bb.ab, %bb.ac
  %storemerge312 = phi ptr [ %i.fa, %bb.ac ], [ %i.ez, %bb.ab ], [ %i.ff, %bb.af ], [ %i.fg, %bb.ag ] ; 2 uses
  %spec.select.sink.i227 = phi i32 [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i223, %bb.af ], [ %spec.select.i223, %bb.ag ]
  store ptr %storemerge312, ptr %i.h, align 8, !tbaa !8
  store i32 %spec.select.sink.i227, ptr %i.e, align 8, !tbaa !27
  %.pre336 = load i32, ptr %i.f, align 4, !tbaa !28
  br label %Vec_IntPush.exit230

Vec_IntPush.exit230:                              ; preds = %Vec_IntGrow.exit.i216.Vec_IntPush.exit230_crit_edge, %bb.ad, %Vec_IntGrow.exit11.sink.split.i226
  %i.fh = phi i32 [ %i.eu, %Vec_IntGrow.exit.i216.Vec_IntPush.exit230_crit_edge ], [ %i.eu, %bb.ad ], [ %.pre336, %Vec_IntGrow.exit11.sink.split.i226 ] ; 2 uses
  %i.fi = phi ptr [ %.pre334, %Vec_IntGrow.exit.i216.Vec_IntPush.exit230_crit_edge ], [ %.pre335, %bb.ad ], [ %storemerge312, %Vec_IntGrow.exit11.sink.split.i226 ] ; 2 uses
  %i.fj = add nsw i32 %i.fh, 1
  store i32 %i.fj, ptr %i.f, align 4, !tbaa !28
  %i.fk = sext i32 %i.fh to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fk
  store i32 %i.et, ptr %i.fl, align 4, !tbaa !12
  %.val177320 = load i32, ptr %i.w, align 4, !tbaa !28
  %i.fm = icmp sgt i32 %.val177320, 2
  br i1 %i.fm, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_IntPush.exit230, %Vec_IntPush.exit250
  %i.fn = phi ptr [ %.sink382, %Vec_IntPush.exit250 ], [ %i.fi, %Vec_IntPush.exit230 ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit250 ], [ 1, %Vec_IntPush.exit230 ] ; 2 uses
  %.val140 = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val140, i64 %indvars.iv
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !12 ; 2 uses
  %i.fq = lshr i32 %i.fp, 1
  %i.fr = and i32 %i.fq, 1023
  %i.fs = load i32, ptr %i.l, align 4, !tbaa !28  ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.i232, label %Vec_IntFind.exit238

.lr.ph.i232:                                      ; preds = %.lr.ph
  %i.fu = load ptr, ptr %i.m, align 8, !tbaa !8
  %wide.trip.count.i233 = zext nneg i32 %i.fs to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i232
  %indvars.iv.i234 = phi i64 [ 0, %.lr.ph.i232 ], [ %indvars.iv.next.i235, %bb.ai ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i234
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !12
  %i.fx = icmp eq i32 %i.fw, %i.fp
  br i1 %i.fx, label %._crit_edge.loopexit.split.loop.exit12.i237, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next.i235 = add nuw nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %exitcond.not.i236 = icmp eq i64 %indvars.iv.next.i235, %wide.trip.count.i233
  br i1 %exitcond.not.i236, label %Vec_IntFind.exit238, label %bb.ah, !llvm.loop !48

._crit_edge.loopexit.split.loop.exit12.i237:      ; preds = %bb.ah
  %10 = trunc nuw nsw i64 %indvars.iv.i234 to i32
  %11 = shl nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  br label %Vec_IntFind.exit238

Vec_IntFind.exit238:                              ; preds = %bb.ai, %.lr.ph, %._crit_edge.loopexit.split.loop.exit12.i237
  %.07.i231 = phi i64 [ -2, %.lr.ph ], [ %12, %._crit_edge.loopexit.split.loop.exit12.i237 ], [ -2, %bb.ai ]
  %.val139 = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.fy = getelementptr [4 x i8], ptr %.val139, i64 %.07.i231 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !12
  %.val153 = load ptr, ptr %i.o, align 8, !tbaa !13 ; 3 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [24 x i8], ptr %.val153, i64 %i.ga ; 2 uses
  %i.gc = icmp eq i32 %i.fr, %i.ah
  br i1 %i.gc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %Vec_IntFind.exit238
  %i.gd = getelementptr i8, ptr %i.gb, i64 20
  %.val185 = load i32, ptr %i.gd, align 4, !tbaa !24
  %.val5.i239 = load i32, ptr %i.p, align 4, !tbaa !28
  %i.ge = add nsw i32 %.val5.i239, %.val185
  %.val7.i240 = load i32, ptr %i.q, align 4, !tbaa !28
  %i.gf = sub i32 %i.ge, %.val7.i240
  %.val.i241 = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %.val.i241, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !12
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [24 x i8], ptr %.val153, i64 %i.gj
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %Vec_IntFind.exit238
  %.sroa.035.1 = phi ptr [ %i.gk, %bb.aj ], [ %i.gb, %Vec_IntFind.exit238 ] ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fy, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !12
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.al, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.go = ptrtoint ptr %.sroa.035.1 to i64
  %i.gp = ptrtoint ptr %.val153 to i64
  %i.gq = sub i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = load i32, ptr %i.f, align 4, !tbaa !28  ; 7 uses
  %i.gs = load i32, ptr %i.e, align 8, !tbaa !27
  %i.gt = icmp eq i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.am, label %Vec_IntPush.exit250

bb.am:                                            ; preds = %bb.al
  %i.gu = icmp slt i32 %i.gr, 16
  br i1 %i.gu, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %.not9.i.i248 = icmp eq ptr %i.fn, null
  br i1 %.not9.i.i248, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fn, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i246

bb.ap:                                            ; preds = %bb.an
  %i.gw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i246

bb.aq:                                            ; preds = %bb.am
  %i.gx = icmp samesign ult i32 %i.gr, 1073741823
  %i.gy = shl nuw nsw i32 %i.gr, 1
  %spec.select.i243 = select i1 %i.gx, i32 %i.gy, i32 2147483647 ; 4 uses
  %.not.i9.i244 = icmp samesign ult i32 %i.gr, %spec.select.i243
  br i1 %.not.i9.i244, label %bb.ar, label %Vec_IntPush.exit250

bb.ar:                                            ; preds = %bb.aq
  %.not9.i10.i245 = icmp eq ptr %i.fn, null
  %i.gz = zext nneg i32 %spec.select.i243 to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2                ; 2 uses
  br i1 %.not9.i10.i245, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hb = tail call ptr @realloc(ptr noundef nonnull %i.fn, i64 noundef %i.ha) #30
  br label %Vec_IntGrow.exit11.sink.split.i246

bb.at:                                            ; preds = %bb.ar
  %i.hc = tail call noalias ptr @malloc(i64 noundef %i.ha) #28
  br label %Vec_IntGrow.exit11.sink.split.i246

Vec_IntGrow.exit11.sink.split.i246:               ; preds = %bb.as, %bb.at, %bb.ao, %bb.ap
  %storemerge316 = phi ptr [ %i.gw, %bb.ap ], [ %i.gv, %bb.ao ], [ %i.hb, %bb.as ], [ %i.hc, %bb.at ] ; 2 uses
  %spec.select.sink.i247 = phi i32 [ 16, %bb.ap ], [ 16, %bb.ao ], [ %spec.select.i243, %bb.as ], [ %spec.select.i243, %bb.at ]
  store ptr %storemerge316, ptr %i.h, align 8, !tbaa !8
  store i32 %spec.select.sink.i247, ptr %i.e, align 8, !tbaa !27
  %.pre340 = load i32, ptr %i.f, align 4, !tbaa !28
  br label %Vec_IntPush.exit250

bb.au:                                            ; preds = %bb.ak
  %i.hd = tail call i32 @Wlc_ObjAlloc(ptr noundef nonnull %0, i32 noundef 32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  %.val152 = load ptr, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [24 x i8], ptr %.val152, i64 %i.he ; 2 uses
  %i.hg = ptrtoint ptr %.sroa.035.1 to i64
  %i.hh = ptrtoint ptr %.val152 to i64            ; 2 uses
  %i.hi = load i32, ptr %3, align 8, !tbaa !27
  %.not.i.i251 = icmp slt i32 %i.hi, 2
  %i.hj = load ptr, ptr %i.s, align 8, !tbaa !8   ; 3 uses
  br i1 %.not.i.i251, label %bb.av, label %Vec_IntGrow.exit.i252

bb.av:                                            ; preds = %bb.au
  %.not9.i.i257 = icmp eq ptr %i.hj, null
  br i1 %.not9.i.i257, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hk = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.hj, i64 noundef 8) #30
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.hl = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #28
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hm = phi ptr [ %i.hk, %bb.aw ], [ %i.hl, %bb.ax ] ; 2 uses
  store ptr %i.hm, ptr %i.s, align 8, !tbaa !8
  store i32 2, ptr %3, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.i252

Vec_IntGrow.exit.i252:                            ; preds = %bb.ay, %bb.au
  %i.hn = phi ptr [ %i.hm, %bb.ay ], [ %i.hj, %bb.au ] ; 2 uses
  %.v314.v = sub i64 %i.hg, %i.hh
  %.v314 = sdiv exact i64 %.v314.v, 24
  %i.ho = trunc i64 %.v314 to i32
  store i32 %i.ho, ptr %i.hn, align 4, !tbaa !12
  %.v314.v.1 = sub i64 %i.cv, %i.hh
  %.v314.1 = sdiv exact i64 %.v314.v.1, 24
  %i.hp = trunc i64 %.v314.1 to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !12
  store i32 2, ptr %i.t, align 4, !tbaa !28
  tail call void @Wlc_ObjAddFanins(ptr noundef nonnull %0, ptr noundef %i.hf, ptr noundef nonnull %3) #29
  %.val164 = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.hr = ptrtoint ptr %i.hf to i64
  %i.hs = ptrtoint ptr %.val164 to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = load i32, ptr %i.f, align 4, !tbaa !28  ; 7 uses
  %i.hv = load i32, ptr %i.e, align 8, !tbaa !27
  %i.hw = icmp eq i32 %i.hu, %i.hv
  br i1 %i.hw, label %bb.az, label %Vec_IntGrow.exit.i252.Vec_IntPush.exit266_crit_edge

Vec_IntGrow.exit.i252.Vec_IntPush.exit266_crit_edge: ; preds = %Vec_IntGrow.exit.i252
  %.pre337 = load ptr, ptr %i.h, align 8, !tbaa !8
  br label %Vec_IntPush.exit250

bb.az:                                            ; preds = %Vec_IntGrow.exit.i252
  %i.hx = icmp slt i32 %i.hu, 16
  br i1 %i.hx, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.hy = load ptr, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %.not9.i.i264 = icmp eq ptr %i.hy, null
  br i1 %.not9.i.i264, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hy, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i262

bb.bc:                                            ; preds = %bb.ba
  %i.ia = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i262

bb.bd:                                            ; preds = %bb.az
  %i.ib = icmp samesign ult i32 %i.hu, 1073741823
  %i.ic = shl nuw nsw i32 %i.hu, 1
  %spec.select.i259 = select i1 %i.ib, i32 %i.ic, i32 2147483647 ; 4 uses
  %.not.i9.i260 = icmp samesign ult i32 %i.hu, %spec.select.i259
  %.pre338 = load ptr, ptr %i.h, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i260, label %bb.be, label %Vec_IntPush.exit250

bb.be:                                            ; preds = %bb.bd
  %.not9.i10.i261 = icmp eq ptr %.pre338, null
  %i.id = zext nneg i32 %spec.select.i259 to i64
  %i.ie = shl nuw nsw i64 %i.id, 2                ; 2 uses
  br i1 %.not9.i10.i261, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.if = tail call ptr @realloc(ptr noundef nonnull %.pre338, i64 noundef %i.ie) #30
  br label %Vec_IntGrow.exit11.sink.split.i262

bb.bg:                                            ; preds = %bb.be
  %i.ig = tail call noalias ptr @malloc(i64 noundef %i.ie) #28
  br label %Vec_IntGrow.exit11.sink.split.i262

Vec_IntGrow.exit11.sink.split.i262:               ; preds = %bb.bf, %bb.bg, %bb.bb, %bb.bc
  %storemerge315 = phi ptr [ %i.ia, %bb.bc ], [ %i.hz, %bb.bb ], [ %i.if, %bb.bf ], [ %i.ig, %bb.bg ] ; 2 uses
  %spec.select.sink.i263 = phi i32 [ 16, %bb.bc ], [ 16, %bb.bb ], [ %spec.select.i259, %bb.bf ], [ %spec.select.i259, %bb.bg ]
  store ptr %storemerge315, ptr %i.h, align 8, !tbaa !8
  store i32 %spec.select.sink.i263, ptr %i.e, align 8, !tbaa !27
  %.pre339 = load i32, ptr %i.f, align 4, !tbaa !28
  br label %Vec_IntPush.exit250

Vec_IntPush.exit250:                              ; preds = %Vec_IntGrow.exit11.sink.split.i262, %bb.bd, %Vec_IntGrow.exit.i252.Vec_IntPush.exit266_crit_edge, %Vec_IntGrow.exit11.sink.split.i246, %bb.aq, %bb.al
  %.sink386 = phi i32 [ %.pre340, %Vec_IntGrow.exit11.sink.split.i246 ], [ %i.gr, %bb.al ], [ %i.gr, %bb.aq ], [ %i.hu, %Vec_IntGrow.exit.i252.Vec_IntPush.exit266_crit_edge ], [ %i.hu, %bb.bd ], [ %.pre339, %Vec_IntGrow.exit11.sink.split.i262 ] ; 2 uses
  %.sink382 = phi ptr [ %storemerge316, %Vec_IntGrow.exit11.sink.split.i246 ], [ %i.fn, %bb.al ], [ %i.fn, %bb.aq ], [ %.pre337, %Vec_IntGrow.exit.i252.Vec_IntPush.exit266_crit_edge ], [ %.pre338, %bb.bd ], [ %storemerge315, %Vec_IntGrow.exit11.sink.split.i262 ] ; 2 uses
  %.sink.in.in = phi i64 [ %i.gq, %Vec_IntGrow.exit11.sink.split.i246 ], [ %i.gq, %bb.al ], [ %i.gq, %bb.aq ], [ %i.ht, %Vec_IntGrow.exit.i252.Vec_IntPush.exit266_crit_edge ], [ %i.ht, %bb.bd ], [ %i.ht, %Vec_IntGrow.exit11.sink.split.i262 ]
  %.sink.in = sdiv exact i64 %.sink.in.in, 24
  %.sink = trunc i64 %.sink.in to i32
  %i.ih = add nsw i32 %.sink386, 1
  store i32 %i.ih, ptr %i.f, align 4, !tbaa !28
  %i.ii = sext i32 %.sink386 to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %.sink382, i64 %i.ii
  store i32 %.sink, ptr %i.ij, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
