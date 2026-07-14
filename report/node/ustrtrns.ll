inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@u_strFromJavaModifiedUTF8WithSub_78:bb.a
  br i1 %i.fx, label %.outer, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = icmp samesign ugt i8 %i.fw, -33
  br i1 %i.fy, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.fz = icmp samesign ult i8 %i.fw, -16
  br i1 %i.fz, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.ga = add nsw i32 %i.fs, 2                    ; 2 uses
  %i.gb = icmp slt i32 %i.ga, %.1177
  br i1 %i.gb, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.gc = sext i32 %i.ft to i64
  %i.gd = getelementptr inbounds i8, ptr %.1175, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = icmp slt i8 %i.ge, -64
  br i1 %i.gf, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.gg = sext i32 %i.ga to i64
  %i.gh = getelementptr inbounds i8, ptr %.1175, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = icmp slt i8 %i.gi, -64
  br i1 %i.gj, label %.backedge, label %bb.ba

.backedge:                                        ; preds = %bb.ax, %bb.az
  %.sink = phi i32 [ 2, %bb.az ], [ 3, %bb.ax ]
  %i.gk = add nsw i32 %i.fs, %.sink               ; 3 uses
  %.3206.be = add nsw i32 %.3206303, 1            ; 2 uses
  store i32 %i.gk, ptr %i.a, align 4
  %i.gl = icmp slt i32 %i.gk, %.1177
  br i1 %i.gl, label %bb.as, label %.outer._crit_edge, !llvm.loop !32

bb.ay:                                            ; preds = %bb.at
  %i.gm = icmp samesign ugt i8 %i.fw, -65
  %i.gn = icmp slt i32 %i.ft, %.1177
  %or.cond248 = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond248, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.go = sext i32 %i.ft to i64
  %i.gp = getelementptr inbounds i8, ptr %.1175, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = icmp slt i8 %i.gq, -64
  br i1 %i.gr, label %.backedge, label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.au, %bb.av, %bb.aw, %bb.ax
  br i1 %i.aj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 10, ptr %7, align 4
  br label %bb.bh

bb.bc:                                            ; preds = %bb.ba
  %i.gs = zext i8 %i.fw to i32
  %i.gt = call i32 @utf8_nextCharSafeBody_78(ptr noundef nonnull %.1175, ptr noundef nonnull %i.a, i32 noundef %.1177, i32 noundef %i.gs, i8 noundef signext -1) #7 ; 0 uses
  %i.gu = add nsw i32 %.8201.ph312, 1
  %.promoted.pre = load i32, ptr %i.a, align 4
  br label %.outer

.outer:                                           ; preds = %bb.as, %bb.bc
  %.promoted = phi i32 [ %.promoted.pre, %bb.bc ], [ %i.ft, %bb.as ] ; 2 uses
  %.9202 = phi i32 [ %i.gu, %bb.bc ], [ %.8201.ph312, %bb.as ] ; 2 uses
  %.4207 = add nsw i32 %.3206303, 1               ; 2 uses
  %i.gv = icmp slt i32 %.promoted, %.1177
  br i1 %i.gv, label %.lr.ph304, label %.outer._crit_edge, !llvm.loop !32

.outer._crit_edge:                                ; preds = %.outer, %.backedge, %.loopexit258
  %.8201.ph.lcssa269 = phi i32 [ %.8201.ph312, %.backedge ], [ %.7200, %.loopexit258 ], [ %.9202, %.outer ]
  %.3206.lcssa = phi i32 [ %.3206.be, %.backedge ], [ %.2205, %.loopexit258 ], [ %.4207, %.outer ]
  br i1 %.not241, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.outer._crit_edge
  store i32 %.8201.ph.lcssa269, ptr %6, align 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.outer._crit_edge
  %i.gw = ptrtoint ptr %.11 to i64
  %i.gx = ptrtoint ptr %0 to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = lshr exact i64 %i.gy, 1
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = add nsw i32 %.3206.lcssa, %i.ha         ; 2 uses
  %.not244 = icmp eq ptr %2, null
  br i1 %.not244, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 %i.hb, ptr %2, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hc = call i32 @u_terminateUChars_78(ptr noundef %0, i32 noundef %1, i32 noundef %i.hb, ptr noundef nonnull %7) #7 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %.thread251, %bb.bg, %bb.bb, %bb.an
  %.4 = phi ptr [ null, %.thread251 ], [ null, %bb.an ], [ null, %bb.bb ], [ %0, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bi

bb.bi:                                            ; preds = %.thread, %bb.bh, %bb.a, %bb.d
  %.6 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %.4, %bb.bh ], [ %0, %.thread ]
  ret ptr %.6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @u_strToJavaModifiedUTF8_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %3, null
  %i.d = icmp ne i32 %4, 0
  %or.cond = and i1 %i.c, %i.d
  %i.e = icmp slt i32 %4, -1
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, null
  %i.g = icmp ne i32 %1, 0                        ; 2 uses
  %or.cond5 = and i1 %i.f, %i.g
  %i.h = icmp slt i32 %1, 0
  %or.cond7 = or i1 %i.h, %or.cond5
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %5, align 4
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 3 uses
  %i.k = icmp eq i32 %4, -1
  br i1 %i.k, label %.preheader183, label %bb.j

.preheader183:                                    ; preds = %bb.e
  %i.l = load i16, ptr %3, align 2                ; 3 uses
  %i.m = add i16 %i.l, -1
  %or.cond9186 = icmp ult i16 %i.m, 127
  %or.cond180187 = and i1 %or.cond9186, %i.g
  br i1 %or.cond180187, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader183, %.lr.ph
  %i.n = phi i16 [ %i.r, %.lr.ph ], [ %i.l, %.preheader183 ]
  %.0143189 = phi ptr [ %i.q, %.lr.ph ], [ %3, %.preheader183 ]
  %.0147188 = phi ptr [ %i.p, %.lr.ph ], [ %0, %.preheader183 ] ; 2 uses
  %i.o = trunc nuw nsw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.0147188, i64 1 ; 3 uses
  store i8 %i.o, ptr %.0147188, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0143189, i64 2 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2              ; 3 uses
  %i.s = add i16 %i.r, -1
  %or.cond9 = icmp ult i16 %i.s, 127
  %i.t = icmp ult ptr %i.p, %i.j
  %or.cond180 = select i1 %or.cond9, i1 %i.t, i1 false
  br i1 %or.cond180, label %.lr.ph, label %.critedge, !llvm.loop !33

.critedge:                                        ; preds = %.lr.ph, %.preheader183
  %.0147.lcssa = phi ptr [ %0, %.preheader183 ], [ %i.p, %.lr.ph ] ; 2 uses
  %.0143.lcssa = phi ptr [ %3, %.preheader183 ], [ %i.q, %.lr.ph ] ; 2 uses
  %.lcssa185 = phi i16 [ %i.l, %.preheader183 ], [ %i.r, %.lr.ph ]
  %i.u = icmp eq i16 %.lcssa185, 0
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.critedge
  %i.v = ptrtoint ptr %.0147.lcssa to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %.not179 = icmp eq ptr %2, null
  br i1 %.not179, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.y, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = tail call i32 @u_terminateChars_78(ptr noundef %0, i32 noundef %1, i32 noundef %i.y, ptr noundef nonnull %5) #7 ; 0 uses
  br label %bb.ae

bb.i:                                             ; preds = %.critedge
  %i.aa = tail call i32 @u_strlen_78(ptr noundef nonnull %.0143.lcssa) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.1148 = phi ptr [ %.0147.lcssa, %bb.i ], [ %0, %bb.e ]
  %.0145 = phi i32 [ %i.aa, %bb.i ], [ %4, %bb.e ]
  %.1144 = phi ptr [ %.0143.lcssa, %bb.i ], [ %3, %bb.e ] ; 3 uses
  %.not177 = icmp eq ptr %.1144, null
  %i.ab = sext i32 %.0145 to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %.1144, i64 %i.ab
  %i.ad = select i1 %.not177, ptr null, ptr %i.ac ; 7 uses
  %i.ae = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.t, %bb.j
  %.2149 = phi ptr [ %.1148, %bb.j ], [ %.6153, %bb.t ] ; 5 uses
  %.2 = phi ptr [ %.1144, %bb.j ], [ %i.bg, %bb.t ] ; 7 uses
  %i.ag = ptrtoint ptr %.2149 to i64
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = trunc i64 %i.ah to i32                  ; 4 uses
  %i.aj = ptrtoint ptr %.2 to i64                 ; 3 uses
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = lshr exact i64 %i.ak, 1
  %i.am = trunc i64 %i.al to i32                  ; 5 uses
  %i.an = icmp sge i32 %i.ai, %i.am
  %i.ao = icmp sgt i32 %i.am, 0
  %or.cond11 = and i1 %i.an, %i.ao
  br i1 %or.cond11, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ap = load i16, ptr %.2, align 2
  %i.aq = icmp ult i16 %i.ap, 128
  br i1 %i.aq, label %.preheader182, label %bb.n

.preheader182:                                    ; preds = %bb.l
  %i.ar = icmp ult ptr %.2, %i.ad
  br i1 %i.ar, label %.lr.ph194, label %.critedge13

.lr.ph194:                                        ; preds = %.preheader182, %bb.m
  %.3193 = phi ptr [ %i.aw, %bb.m ], [ %.2, %.preheader182 ] ; 3 uses
  %.3150192 = phi ptr [ %i.av, %bb.m ], [ %.2149, %.preheader182 ] ; 3 uses
  %i.as = load i16, ptr %.3193, align 2           ; 2 uses
  %i.at = add i16 %i.as, -1
  %or.cond21 = icmp ult i16 %i.at, 127
  br i1 %or.cond21, label %bb.m, label %.critedge13.loopexit

bb.m:                                             ; preds = %.lr.ph194
  %i.au = trunc nuw nsw i16 %i.as to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.3150192, i64 1 ; 2 uses
  store i8 %i.au, ptr %.3150192, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.3193, i64 2 ; 3 uses
  %i.ax = icmp ult ptr %i.aw, %i.ad
  br i1 %i.ax, label %.lr.ph194, label %.critedge13.loopexit, !llvm.loop !34

.critedge13.loopexit:                             ; preds = %.lr.ph194, %bb.m
  %.3150.lcssa.ph = phi ptr [ %i.av, %bb.m ], [ %.3150192, %.lr.ph194 ]
  %.3.lcssa.ph = phi ptr [ %i.aw, %bb.m ], [ %.3193, %.lr.ph194 ] ; 2 uses
  %.pre = ptrtoint ptr %.3.lcssa.ph to i64
  br label %.critedge13

.critedge13:                                      ; preds = %.critedge13.loopexit, %.preheader182
  %.pre-phi = phi i64 [ %.pre, %.critedge13.loopexit ], [ %i.aj, %.preheader182 ]
  %.3150.lcssa = phi ptr [ %.3150.lcssa.ph, %.critedge13.loopexit ], [ %.2149, %.preheader182 ]
  %.3.lcssa = phi ptr [ %.3.lcssa.ph, %.critedge13.loopexit ], [ %.2, %.preheader182 ]
  %i.ay = sub i64 %.pre-phi, %i.aj
  %i.az = lshr exact i64 %i.ay, 1
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = sub nsw i32 %i.ai, %i.ba
  %i.bc = sub nsw i32 %i.am, %i.ba
  br label %bb.n

bb.n:                                             ; preds = %.critedge13, %bb.l, %bb.k
  %.0156 = phi i32 [ %i.bb, %.critedge13 ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ]
  %.4151 = phi ptr [ %.3150.lcssa, %.critedge13 ], [ %.2149, %bb.l ], [ %.2149, %bb.k ] ; 3 uses
  %.1146 = phi i32 [ %i.bc, %.critedge13 ], [ %i.am, %bb.l ], [ %i.am, %bb.k ]
  %.4 = phi ptr [ %.3.lcssa, %.critedge13 ], [ %.2, %bb.l ], [ %.2, %bb.k ] ; 4 uses
  %i.bd = sdiv i32 %.0156, 3
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %.1146) ; 2 uses
  %i.be = icmp slt i32 %spec.select, 3
  br i1 %i.be, label %.preheader, label %.preheader181

.preheader:                                       ; preds = %bb.n
  %i.bf = icmp ult ptr %.4, %i.ad
  br i1 %i.bf, label %.lr.ph202, label %._crit_edge

.preheader181:                                    ; preds = %bb.n, %bb.s
  %.2158 = phi i32 [ %i.cf, %bb.s ], [ %spec.select, %bb.n ] ; 2 uses
  %.5152 = phi ptr [ %.6153, %bb.s ], [ %.4151, %bb.n ] ; 7 uses
  %.5 = phi ptr [ %i.bg, %bb.s ], [ %.4, %bb.n ]  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 2 uses
  %i.bh = load i16, ptr %.5, align 2              ; 8 uses
  %i.bi = add i16 %i.bh, -1
  %or.cond15 = icmp ult i16 %i.bi, 127
  %i.bj = getelementptr inbounds nuw i8, ptr %.5152, i64 1 ; 3 uses
  br i1 %or.cond15, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader181
  %i.bk = trunc nuw nsw i16 %i.bh to i8
  store i8 %i.bk, ptr %.5152, align 1
  br label %bb.s

bb.p:                                             ; preds = %.preheader181
  %i.bl = icmp ult i16 %i.bh, 2048
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = lshr i16 %i.bh, 6
  %i.bn = trunc nuw nsw i16 %i.bm to i8
  %i.bo = or disjoint i8 %i.bn, -64
  store i8 %i.bo, ptr %.5152, align 1
  %i.bp = trunc i16 %i.bh to i8
  %i.bq = and i8 %i.bp, 63
  %i.br = or disjoint i8 %i.bq, -128
  %i.bs = getelementptr inbounds nuw i8, ptr %.5152, i64 2
  store i8 %i.br, ptr %i.bj, align 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bt = lshr i16 %i.bh, 12
  %i.bu = trunc nuw nsw i16 %i.bt to i8
  %i.bv = or disjoint i8 %i.bu, -32
  store i8 %i.bv, ptr %.5152, align 1
  %i.bw = lshr i16 %i.bh, 6
  %i.bx = trunc i16 %i.bw to i8
  %i.by = and i8 %i.bx, 63
  %i.bz = or disjoint i8 %i.by, -128
  %i.ca = getelementptr inbounds nuw i8, ptr %.5152, i64 2
  store i8 %i.bz, ptr %i.bj, align 1
  %i.cb = trunc i16 %i.bh to i8
  %i.cc = and i8 %i.cb, 63
  %i.cd = or disjoint i8 %i.cc, -128
  %i.ce = getelementptr inbounds nuw i8, ptr %.5152, i64 3
  store i8 %i.cd, ptr %i.ca, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q
  %.6153 = phi ptr [ %i.bj, %bb.o ], [ %i.bs, %bb.q ], [ %i.ce, %bb.r ] ; 2 uses
  %i.cf = add nsw i32 %.2158, -1
  %i.cg = icmp sgt i32 %.2158, 1
  br i1 %i.cg, label %.preheader181, label %bb.t, !llvm.loop !35

bb.t:                                             ; preds = %bb.s
  br label %bb.k, !llvm.loop !36

.lr.ph202:                                        ; preds = %.preheader, %bb.ab
  %.6201 = phi ptr [ %i.ch, %bb.ab ], [ %.4, %.preheader ] ; 2 uses
  %.7154200 = phi ptr [ %.8155, %bb.ab ], [ %.4151, %.preheader ] ; 14 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.6201, i64 2 ; 6 uses
  %i.ci = load i16, ptr %.6201, align 2           ; 8 uses
  %i.cj = add i16 %i.ci, -1
  %or.cond17 = icmp ult i16 %i.cj, 127
  br i1 %or.cond17, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph202
  %i.ck = icmp ult ptr %.7154200, %i.j
  br i1 %i.ck, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.cl = trunc nuw nsw i16 %i.ci to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.7154200, i64 1
  store i8 %i.cl, ptr %.7154200, align 1
  br label %bb.ab

bb.w:                                             ; preds = %.lr.ph202
  %i.cn = icmp ult i16 %i.ci, 2048
  %i.co = ptrtoint ptr %.7154200 to i64
  %i.cp = sub i64 %i.ae, %i.co                    ; 2 uses
  br i1 %i.cn, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cq = icmp sgt i64 %i.cp, 1
  br i1 %i.cq, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  %i.cr = lshr i16 %i.ci, 6
  %i.cs = trunc nuw nsw i16 %i.cr to i8
  %i.ct = or disjoint i8 %i.cs, -64
  %i.cu = getelementptr inbounds nuw i8, ptr %.7154200, i64 1
  store i8 %i.ct, ptr %.7154200, align 1
  %i.cv = trunc i16 %i.ci to i8
  %i.cw = and i8 %i.cv, 63
  %i.cx = or disjoint i8 %i.cw, -128
  %i.cy = getelementptr inbounds nuw i8, ptr %.7154200, i64 2
  store i8 %i.cx, ptr %i.cu, align 1
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.cz = icmp sgt i64 %i.cp, 2
  br i1 %i.cz, label %bb.aa, label %._crit_edge

bb.aa:                                            ; preds = %bb.z
  %i.da = lshr i16 %i.ci, 12
  %i.db = trunc nuw nsw i16 %i.da to i8
  %i.dc = or disjoint i8 %i.db, -32
  %i.dd = getelementptr inbounds nuw i8, ptr %.7154200, i64 1
  store i8 %i.dc, ptr %.7154200, align 1
  %i.de = lshr i16 %i.ci, 6
  %i.df = trunc i16 %i.de to i8
  %i.dg = and i8 %i.df, 63
  %i.dh = or disjoint i8 %i.dg, -128
  %i.di = getelementptr inbounds nuw i8, ptr %.7154200, i64 2
  store i8 %i.dh, ptr %i.dd, align 1
  %i.dj = trunc i16 %i.ci to i8
  %i.dk = and i8 %i.dj, 63
  %i.dl = or disjoint i8 %i.dk, -128
  %i.dm = getelementptr inbounds nuw i8, ptr %.7154200, i64 3
  store i8 %i.dl, ptr %i.di, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.v
  %.8155 = phi ptr [ %i.cm, %bb.v ], [ %i.cy, %bb.y ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.dn = icmp ult ptr %i.ch, %i.ad
  br i1 %i.dn, label %.lr.ph202, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.ab, %bb.u, %bb.x, %bb.z, %.preheader
  %.7154.lcssa = phi ptr [ %.4151, %.preheader ], [ %.7154200, %bb.z ], [ %.7154200, %bb.x ], [ %.7154200, %bb.u ], [ %.8155, %bb.ab ]
  %.0159 = phi i32 [ 0, %.preheader ], [ 3, %bb.z ], [ 2, %bb.x ], [ 1, %bb.u ], [ 0, %bb.ab ] ; 3 uses
  %.7 = phi ptr [ %.4, %.preheader ], [ %i.ch, %bb.z ], [ %i.ch, %bb.x ], [ %i.ch, %bb.u ], [ %i.ch, %bb.ab ] ; 5 uses
  %i.do = icmp ult ptr %.7, %i.ad
  br i1 %i.do, label %.lr.ph221.preheader, label %._crit_edge222

.lr.ph221.preheader:                              ; preds = %._crit_edge
  %.7253 = ptrtoaddr ptr %.7 to i64               ; 2 uses
  %i.dp = add i64 %.7253, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.dp)
  %i.dq = xor i64 %.7253, -1
  %i.dr = add i64 %umax, %i.dq                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 1
  %i.dt = add nuw i64 %i.ds, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 14
  br i1 %min.iters.check, label %.lr.ph221.preheader256, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph221.preheader
  %n.vec = and i64 %i.dt, -8                      ; 3 uses
  %i.du = shl i64 %n.vec, 1
  %i.dv = getelementptr i8, ptr %.7, i64 %i.du
  %i.dw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0159, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dw, %vector.ph ], [ %i.ej, %vector.body ]
  %vec.phi254 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ek, %vector.body ]
  %i.dx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.7, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2 ; 2 uses
  %wide.load255 = load <4 x i16>, ptr %i.dy, align 2 ; 2 uses
  %i.dz = add <4 x i16> %wide.load, splat (i16 -1)
  %i.ea = add <4 x i16> %wide.load255, splat (i16 -1)
  %i.eb = icmp ult <4 x i16> %i.dz, splat (i16 127)
  %i.ec = icmp ult <4 x i16> %i.ea, splat (i16 127)
  %i.ed = icmp ult <4 x i16> %wide.load, splat (i16 2048)
  %i.ee = icmp ult <4 x i16> %wide.load255, splat (i16 2048)
  %i.ef = select <4 x i1> %i.ed, <4 x i32> splat (i32 2), <4 x i32> splat (i32 3)
  %i.eg = select <4 x i1> %i.ee, <4 x i32> splat (i32 2), <4 x i32> splat (i32 3)
  %i.eh = select <4 x i1> %i.eb, <4 x i32> splat (i32 1), <4 x i32> %i.ef
  %i.ei = select <4 x i1> %i.ec, <4 x i32> splat (i32 1), <4 x i32> %i.eg
  %i.ej = add <4 x i32> %vec.phi, %i.eh           ; 2 uses
  %i.ek = add <4 x i32> %vec.phi254, %i.ei        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ek, %i.ej
  %i.em = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %._crit_edge222, label %.lr.ph221.preheader256

.lr.ph221.preheader256:                           ; preds = %.lr.ph221.preheader, %middle.block
  %.8219.ph = phi ptr [ %.7, %.lr.ph221.preheader ], [ %i.dv, %middle.block ]
  %.1160218.ph = phi i32 [ %.0159, %.lr.ph221.preheader ], [ %i.em, %middle.block ]
  br label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.preheader256, %.lr.ph221
  %.8219 = phi ptr [ %i.en, %.lr.ph221 ], [ %.8219.ph, %.lr.ph221.preheader256 ] ; 2 uses
  %.1160218 = phi i32 [ %i.er, %.lr.ph221 ], [ %.1160218.ph, %.lr.ph221.preheader256 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.8219, i64 2 ; 2 uses
  %i.eo = load i16, ptr %.8219, align 2           ; 2 uses
  %i.ep = add i16 %i.eo, -1
  %or.cond19 = icmp ult i16 %i.ep, 127
  %i.eq = icmp ult i16 %i.eo, 2048
  %. = select i1 %i.eq, i32 2, i32 3
  %.sink = select i1 %or.cond19, i32 1, i32 %.
  %i.er = add nuw nsw i32 %.1160218, %.sink       ; 2 uses
  %i.es = icmp ult ptr %i.en, %i.ad
  br i1 %i.es, label %.lr.ph221, label %._crit_edge222, !llvm.loop !41

._crit_edge222:                                   ; preds = %.lr.ph221, %middle.block, %._crit_edge
  %.1160.lcssa = phi i32 [ %.0159, %._crit_edge ], [ %i.em, %middle.block ], [ %i.er, %.lr.ph221 ]
  %i.et = ptrtoint ptr %.7154.lcssa to i64
  %i.eu = ptrtoint ptr %0 to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = add nsw i32 %.1160.lcssa, %i.ew         ; 2 uses
  %.not178 = icmp eq ptr %2, null
  br i1 %.not178, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge222
  store i32 %i.ex, ptr %2, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge222
  %i.ey = tail call i32 @u_terminateChars_78(ptr noundef %0, i32 noundef %1, i32 noundef %i.ex, ptr noundef nonnull %5) #7 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.h, %bb.ad, %bb.a, %bb.d
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %0, %bb.ad ], [ %0, %bb.h ]
  ret ptr %.1
}

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !6, !40, !39}
end_hunk_0
