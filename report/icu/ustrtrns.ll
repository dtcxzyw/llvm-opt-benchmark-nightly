Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ustrtrns?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@u_strFromJavaModifiedUTF8WithSub_78:bb.a
  %i.fy = add nsw i32 %i.fq, 2                    ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %.1207
  br i1 %i.fz, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.ga = sext i32 %i.fr to i64
  %i.gb = getelementptr inbounds i8, ptr %.1205, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !14
  %i.gd = icmp slt i8 %i.gc, -64
  br i1 %i.gd, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ge = sext i32 %i.fy to i64
  %i.gf = getelementptr inbounds i8, ptr %.1205, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14
  %i.gh = icmp slt i8 %i.gg, -64
  br i1 %i.gh, label %.backedge, label %bb.az

.backedge:                                        ; preds = %bb.aw, %bb.ay
  %.sink422 = phi i32 [ 2, %bb.ay ], [ 3, %bb.aw ]
  %i.gi = add nsw i32 %i.fq, %.sink422            ; 3 uses
  %.3192.be = add nsw i32 %.3192302, 1            ; 2 uses
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !10
  %i.gj = icmp slt i32 %i.gi, %.1207
  br i1 %i.gj, label %bb.ar, label %.outer._crit_edge, !llvm.loop !39

bb.ax:                                            ; preds = %bb.as
  %i.gk = icmp samesign ugt i8 %i.fu, -65
  %i.gl = icmp slt i32 %i.fr, %.1207
  %or.cond248 = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond248, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gm = sext i32 %i.fr to i64
  %i.gn = getelementptr inbounds i8, ptr %.1205, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !14
  %i.gp = icmp slt i8 %i.go, -64
  br i1 %i.gp, label %.backedge, label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.at, %bb.au, %bb.av, %bb.aw
  br i1 %i.aj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 10, ptr %7, align 4, !tbaa !9
  br label %bb.bg

bb.bb:                                            ; preds = %bb.az
  %i.gq = zext i8 %i.fu to i32
  %i.gr = call i32 @utf8_nextCharSafeBody_78(ptr noundef nonnull %.1205, ptr noundef nonnull %i.a, i32 noundef %.1207, i32 noundef %i.gq, i8 noundef signext -1) ; 0 uses
  %i.gs = add nsw i32 %.8.ph311, 1
  %.promoted.pre = load i32, ptr %i.a, align 4, !tbaa !10
  br label %.outer

.outer:                                           ; preds = %bb.ar, %bb.bb
  %.promoted = phi i32 [ %.promoted.pre, %bb.bb ], [ %i.fr, %bb.ar ] ; 2 uses
  %.9 = phi i32 [ %i.gs, %bb.bb ], [ %.8.ph311, %bb.ar ] ; 2 uses
  %.4193 = add nsw i32 %.3192302, 1               ; 2 uses
  %i.gt = icmp slt i32 %.promoted, %.1207
  br i1 %i.gt, label %.lr.ph303, label %.outer._crit_edge, !llvm.loop !39

.outer._crit_edge:                                ; preds = %.outer, %.backedge, %.loopexit257
  %.8.ph.lcssa268 = phi i32 [ %.8.ph311, %.backedge ], [ %.7, %.loopexit257 ], [ %.9, %.outer ]
  %.3192.lcssa = phi i32 [ %.3192.be, %.backedge ], [ %.2191, %.loopexit257 ], [ %.4193, %.outer ]
  br i1 %.not241, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.outer._crit_edge
  store i32 %.8.ph.lcssa268, ptr %6, align 4, !tbaa !10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.outer._crit_edge
  %i.gu = ptrtoint ptr %.11 to i64
  %i.gv = ptrtoint ptr %0 to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = lshr exact i64 %i.gw, 1
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = add nsw i32 %.3192.lcssa, %i.gy         ; 2 uses
  %.not244 = icmp eq ptr %2, null
  br i1 %.not244, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 %i.gz, ptr %2, align 4, !tbaa !10
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ha = call i32 @u_terminateUChars_78(ptr noundef %0, i32 noundef %1, i32 noundef %i.gz, ptr noundef nonnull %7) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.thread251, %bb.bf, %bb.ba, %bb.am
  %.4 = phi ptr [ null, %.thread251 ], [ null, %bb.am ], [ null, %bb.ba ], [ %0, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bh

bb.bh:                                            ; preds = %.thread, %bb.bg, %bb.a, %bb.d
  %.6 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %.4, %bb.bg ], [ %0, %.thread ]
  ret ptr %.6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @u_strToJavaModifiedUTF8_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !9
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
  store i32 1, ptr %5, align 4, !tbaa !9
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 3 uses
  %i.k = icmp eq i32 %4, -1
  br i1 %i.k, label %.preheader184, label %bb.j

.preheader184:                                    ; preds = %bb.e
  %i.l = load i16, ptr %3, align 2, !tbaa !12     ; 3 uses
  %i.m = add i16 %i.l, -1
  %or.cond9187 = icmp ult i16 %i.m, 127
  %or.cond181188 = and i1 %or.cond9187, %i.g
  br i1 %or.cond181188, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader184, %.lr.ph
  %i.n = phi i16 [ %i.r, %.lr.ph ], [ %i.l, %.preheader184 ]
  %.0190 = phi ptr [ %i.p, %.lr.ph ], [ %0, %.preheader184 ] ; 2 uses
  %.0153189 = phi ptr [ %i.q, %.lr.ph ], [ %3, %.preheader184 ]
  %i.o = trunc nuw nsw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.0190, i64 1 ; 3 uses
  store i8 %i.o, ptr %.0190, align 1, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %.0153189, i64 2 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !12   ; 3 uses
  %i.s = add i16 %i.r, -1
  %or.cond9 = icmp ult i16 %i.s, 127
  %i.t = icmp ult ptr %i.p, %i.j
  %or.cond181 = select i1 %or.cond9, i1 %i.t, i1 false
  br i1 %or.cond181, label %.lr.ph, label %.critedge, !llvm.loop !40

.critedge:                                        ; preds = %.lr.ph, %.preheader184
  %.0153.lcssa = phi ptr [ %3, %.preheader184 ], [ %i.q, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %.preheader184 ], [ %i.p, %.lr.ph ] ; 2 uses
  %.lcssa186 = phi i16 [ %i.l, %.preheader184 ], [ %i.r, %.lr.ph ]
  %i.u = icmp eq i16 %.lcssa186, 0
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.critedge
  %i.v = ptrtoint ptr %.0.lcssa to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %.not180 = icmp eq ptr %2, null
  br i1 %.not180, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.y, ptr %2, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = tail call i32 @u_terminateChars_78(ptr noundef %0, i32 noundef %1, i32 noundef %i.y, ptr noundef nonnull %5) ; 0 uses
  br label %bb.ae

bb.i:                                             ; preds = %.critedge
  %i.aa = tail call i32 @u_strlen_78(ptr noundef nonnull %.0153.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.1154 = phi ptr [ %.0153.lcssa, %bb.i ], [ %3, %bb.e ] ; 3 uses
  %.0151 = phi i32 [ %i.aa, %bb.i ], [ %4, %bb.e ]
  %.1 = phi ptr [ %.0.lcssa, %bb.i ], [ %0, %bb.e ]
  %.not178 = icmp eq ptr %.1154, null
  %i.ab = sext i32 %.0151 to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %.1154, i64 %i.ab
  %i.ad = select i1 %.not178, ptr null, ptr %i.ac ; 7 uses
  %i.ae = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.t, %bb.j
  %.2155 = phi ptr [ %.1154, %bb.j ], [ %i.bg, %bb.t ] ; 7 uses
  %.2 = phi ptr [ %.1, %bb.j ], [ %.6, %bb.t ]    ; 5 uses
  %i.ag = ptrtoint ptr %.2 to i64
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = trunc i64 %i.ah to i32                  ; 4 uses
  %i.aj = ptrtoint ptr %.2155 to i64              ; 2 uses
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = lshr exact i64 %i.ak, 1
  %i.am = trunc i64 %i.al to i32                  ; 5 uses
  %i.an = icmp sge i32 %i.ai, %i.am
  %i.ao = icmp sgt i32 %i.am, 0
  %or.cond11 = and i1 %i.an, %i.ao
  br i1 %or.cond11, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ap = load i16, ptr %.2155, align 2, !tbaa !12
  %i.aq = icmp ult i16 %i.ap, 128
  br i1 %i.aq, label %.preheader183, label %bb.n

.preheader183:                                    ; preds = %bb.l
  %i.ar = icmp ult ptr %.2155, %i.ad
  br i1 %i.ar, label %.lr.ph195, label %.critedge13

.lr.ph195:                                        ; preds = %.preheader183, %bb.m
  %.3194 = phi ptr [ %i.av, %bb.m ], [ %.2, %.preheader183 ] ; 3 uses
  %.3156193 = phi ptr [ %i.aw, %bb.m ], [ %.2155, %.preheader183 ] ; 3 uses
  %i.as = load i16, ptr %.3156193, align 2, !tbaa !12 ; 2 uses
  %i.at = add i16 %i.as, -1
  %or.cond21 = icmp ult i16 %i.at, 127
  br i1 %or.cond21, label %bb.m, label %.critedge13

bb.m:                                             ; preds = %.lr.ph195
  %i.au = trunc nuw nsw i16 %i.as to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.3194, i64 1 ; 2 uses
  store i8 %i.au, ptr %.3194, align 1, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %.3156193, i64 2 ; 3 uses
  %i.ax = icmp ult ptr %i.aw, %i.ad
  br i1 %i.ax, label %.lr.ph195, label %.critedge13, !llvm.loop !41

.critedge13:                                      ; preds = %bb.m, %.lr.ph195, %.preheader183
  %.3156.lcssa = phi ptr [ %.2155, %.preheader183 ], [ %.3156193, %.lr.ph195 ], [ %i.aw, %bb.m ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %.preheader183 ], [ %.3194, %.lr.ph195 ], [ %i.av, %bb.m ]
  %.pre-phi = ptrtoint ptr %.3156.lcssa to i64
  %i.ay = sub i64 %.pre-phi, %i.aj
  %i.az = lshr exact i64 %i.ay, 1
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = sub nsw i32 %i.ai, %i.ba
  %i.bc = sub nsw i32 %i.am, %i.ba
  br label %bb.n

bb.n:                                             ; preds = %.critedge13, %bb.l, %bb.k
  %.4157 = phi ptr [ %.3156.lcssa, %.critedge13 ], [ %.2155, %bb.l ], [ %.2155, %bb.k ] ; 4 uses
  %.1152 = phi i32 [ %i.bc, %.critedge13 ], [ %i.am, %bb.l ], [ %i.am, %bb.k ]
  %.0143 = phi i32 [ %i.bb, %.critedge13 ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ]
  %.4 = phi ptr [ %.3.lcssa, %.critedge13 ], [ %.2, %bb.l ], [ %.2, %bb.k ] ; 3 uses
  %i.bd = sdiv i32 %.0143, 3
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %.1152) ; 2 uses
  %i.be = icmp slt i32 %spec.select, 3
  br i1 %i.be, label %.preheader, label %.preheader182

.preheader:                                       ; preds = %bb.n
  %i.bf = icmp ult ptr %.4157, %i.ad
  br i1 %i.bf, label %.lr.ph203, label %._crit_edge

.preheader182:                                    ; preds = %bb.n, %bb.s
  %.5158 = phi ptr [ %i.bg, %bb.s ], [ %.4157, %bb.n ] ; 2 uses
  %.2145 = phi i32 [ %i.cf, %bb.s ], [ %spec.select, %bb.n ] ; 2 uses
  %.5 = phi ptr [ %.6, %bb.s ], [ %.4, %bb.n ]    ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.5158, i64 2 ; 2 uses
  %i.bh = load i16, ptr %.5158, align 2, !tbaa !12 ; 8 uses
  %i.bi = add i16 %i.bh, -1
  %or.cond15 = icmp ult i16 %i.bi, 127
  %i.bj = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 3 uses
  br i1 %or.cond15, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader182
  %i.bk = trunc nuw nsw i16 %i.bh to i8
  store i8 %i.bk, ptr %.5, align 1, !tbaa !14
  br label %bb.s

bb.p:                                             ; preds = %.preheader182
  %i.bl = icmp ult i16 %i.bh, 2048
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = lshr i16 %i.bh, 6
  %i.bn = trunc nuw nsw i16 %i.bm to i8
  %i.bo = or disjoint i8 %i.bn, -64
  store i8 %i.bo, ptr %.5, align 1, !tbaa !14
  %i.bp = trunc i16 %i.bh to i8
  %i.bq = and i8 %i.bp, 63
  %i.br = or disjoint i8 %i.bq, -128
  %i.bs = getelementptr inbounds nuw i8, ptr %.5, i64 2
  store i8 %i.br, ptr %i.bj, align 1, !tbaa !14
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bt = lshr i16 %i.bh, 12
  %i.bu = trunc nuw nsw i16 %i.bt to i8
  %i.bv = or disjoint i8 %i.bu, -32
  store i8 %i.bv, ptr %.5, align 1, !tbaa !14
  %i.bw = lshr i16 %i.bh, 6
  %i.bx = trunc i16 %i.bw to i8
  %i.by = and i8 %i.bx, 63
  %i.bz = or disjoint i8 %i.by, -128
  %i.ca = getelementptr inbounds nuw i8, ptr %.5, i64 2
  store i8 %i.bz, ptr %i.bj, align 1, !tbaa !14
  %i.cb = trunc i16 %i.bh to i8
  %i.cc = and i8 %i.cb, 63
  %i.cd = or disjoint i8 %i.cc, -128
  %i.ce = getelementptr inbounds nuw i8, ptr %.5, i64 3
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q
  %.6 = phi ptr [ %i.bj, %bb.o ], [ %i.bs, %bb.q ], [ %i.ce, %bb.r ] ; 2 uses
  %i.cf = add nsw i32 %.2145, -1
  %i.cg = icmp sgt i32 %.2145, 1
  br i1 %i.cg, label %.preheader182, label %bb.t, !llvm.loop !42

bb.t:                                             ; preds = %bb.s
  br label %bb.k, !llvm.loop !43

.lr.ph203:                                        ; preds = %.preheader, %bb.ab
  %.7202 = phi ptr [ %.8, %bb.ab ], [ %.4, %.preheader ] ; 14 uses
  %.6159201 = phi ptr [ %i.ch, %bb.ab ], [ %.4157, %.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.6159201, i64 2 ; 6 uses
  %i.ci = load i16, ptr %.6159201, align 2, !tbaa !12 ; 8 uses
  %i.cj = add i16 %i.ci, -1
  %or.cond17 = icmp ult i16 %i.cj, 127
  br i1 %or.cond17, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph203
  %i.ck = icmp ult ptr %.7202, %i.j
  br i1 %i.ck, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.cl = trunc nuw nsw i16 %i.ci to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.7202, i64 1
  store i8 %i.cl, ptr %.7202, align 1, !tbaa !14
  br label %bb.ab

bb.w:                                             ; preds = %.lr.ph203
  %i.cn = icmp ult i16 %i.ci, 2048
  %i.co = ptrtoint ptr %.7202 to i64
  %i.cp = sub i64 %i.ae, %i.co                    ; 2 uses
  br i1 %i.cn, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cq = icmp sgt i64 %i.cp, 1
  br i1 %i.cq, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  %i.cr = lshr i16 %i.ci, 6
  %i.cs = trunc nuw nsw i16 %i.cr to i8
  %i.ct = or disjoint i8 %i.cs, -64
  %i.cu = getelementptr inbounds nuw i8, ptr %.7202, i64 1
  store i8 %i.ct, ptr %.7202, align 1, !tbaa !14
  %i.cv = trunc i16 %i.ci to i8
  %i.cw = and i8 %i.cv, 63
  %i.cx = or disjoint i8 %i.cw, -128
  %i.cy = getelementptr inbounds nuw i8, ptr %.7202, i64 2
  store i8 %i.cx, ptr %i.cu, align 1, !tbaa !14
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.cz = icmp sgt i64 %i.cp, 2
  br i1 %i.cz, label %bb.aa, label %._crit_edge

bb.aa:                                            ; preds = %bb.z
  %i.da = lshr i16 %i.ci, 12
  %i.db = trunc nuw nsw i16 %i.da to i8
  %i.dc = or disjoint i8 %i.db, -32
  %i.dd = getelementptr inbounds nuw i8, ptr %.7202, i64 1
  store i8 %i.dc, ptr %.7202, align 1, !tbaa !14
  %i.de = lshr i16 %i.ci, 6
  %i.df = trunc i16 %i.de to i8
  %i.dg = and i8 %i.df, 63
  %i.dh = or disjoint i8 %i.dg, -128
  %i.di = getelementptr inbounds nuw i8, ptr %.7202, i64 2
  store i8 %i.dh, ptr %i.dd, align 1, !tbaa !14
  %i.dj = trunc i16 %i.ci to i8
  %i.dk = and i8 %i.dj, 63
  %i.dl = or disjoint i8 %i.dk, -128
  %i.dm = getelementptr inbounds nuw i8, ptr %.7202, i64 3
  store i8 %i.dl, ptr %i.di, align 1, !tbaa !14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.v
  %.8 = phi ptr [ %i.cm, %bb.v ], [ %i.cy, %bb.y ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.dn = icmp ult ptr %i.ch, %i.ad
  br i1 %i.dn, label %.lr.ph203, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.ab, %bb.u, %bb.x, %bb.z, %.preheader
  %.7.lcssa = phi ptr [ %.4, %.preheader ], [ %.7202, %bb.z ], [ %.7202, %bb.x ], [ %.7202, %bb.u ], [ %.8, %bb.ab ]
  %.7160 = phi ptr [ %.4157, %.preheader ], [ %i.ch, %bb.z ], [ %i.ch, %bb.x ], [ %i.ch, %bb.u ], [ %i.ch, %bb.ab ] ; 5 uses
  %.0146 = phi i32 [ 0, %.preheader ], [ 3, %bb.z ], [ 2, %bb.x ], [ 1, %bb.u ], [ 0, %bb.ab ] ; 3 uses
  %i.do = icmp ult ptr %.7160, %i.ad
  br i1 %i.do, label %.lr.ph222.preheader, label %._crit_edge223

.lr.ph222.preheader:                              ; preds = %._crit_edge
  %.7160254 = ptrtoaddr ptr %.7160 to i64
  %i.dp = xor i64 %.7160254, -1
  %i.dq = add i64 %i.dp, %i.af                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 1
  %i.ds = add nuw i64 %i.dr, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dq, 14
  br i1 %min.iters.check, label %.lr.ph222.preheader257, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph222.preheader
  %n.vec = and i64 %i.ds, -8                      ; 3 uses
  %i.dt = shl i64 %n.vec, 1
  %i.du = getelementptr i8, ptr %.7160, i64 %i.dt
  %i.dv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0146, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dv, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi255 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ej, %vector.body ]
  %i.dw = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.7160, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !12 ; 2 uses
  %wide.load256 = load <4 x i16>, ptr %i.dx, align 2, !tbaa !12 ; 2 uses
  %i.dy = add <4 x i16> %wide.load, splat (i16 -1)
  %i.dz = add <4 x i16> %wide.load256, splat (i16 -1)
  %i.ea = icmp ult <4 x i16> %i.dy, splat (i16 127)
  %i.eb = icmp ult <4 x i16> %i.dz, splat (i16 127)
  %i.ec = icmp ult <4 x i16> %wide.load, splat (i16 2048)
  %i.ed = icmp ult <4 x i16> %wide.load256, splat (i16 2048)
  %i.ee = select <4 x i1> %i.ec, <4 x i32> splat (i32 2), <4 x i32> splat (i32 3)
  %i.ef = select <4 x i1> %i.ed, <4 x i32> splat (i32 2), <4 x i32> splat (i32 3)
  %i.eg = select <4 x i1> %i.ea, <4 x i32> splat (i32 1), <4 x i32> %i.ee
  %i.eh = select <4 x i1> %i.eb, <4 x i32> splat (i32 1), <4 x i32> %i.ef
  %i.ei = add <4 x i32> %vec.phi, %i.eg           ; 2 uses
  %i.ej = add <4 x i32> %vec.phi255, %i.eh        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ej, %i.ei
end_hunk_0
