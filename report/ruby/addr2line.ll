inline.NumInlined: 199
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fill_lines:bb.a
  %.not254.4 = icmp eq i32 %i.bk, 0
  br i1 %.not254.4, label %bb.o, label %.preheader367.5

.preheader367.5:                                  ; preds = %.preheader367.4
  %i.bl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(12) @.str.14) #16
  %.not254.5 = icmp eq i32 %i.bl, 0
  br i1 %.not254.5, label %bb.o, label %.preheader367.6

.preheader367.6:                                  ; preds = %.preheader367.5
  %i.bm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(16) @.str.15) #16
  %.not254.6 = icmp eq i32 %i.bm, 0
  br i1 %.not254.6, label %bb.o, label %.preheader367.7

.preheader367.7:                                  ; preds = %.preheader367.6
  %i.bn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(11) @.str.16) #16
  %.not254.7 = icmp eq i32 %i.bn, 0
  br i1 %.not254.7, label %bb.o, label %.preheader367.8

.preheader367.8:                                  ; preds = %.preheader367.7
  %i.bo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(16) @.str.17) #16
  %.not254.8 = icmp eq i32 %i.bo, 0
  br i1 %.not254.8, label %bb.o, label %.thread329

bb.o:                                             ; preds = %.preheader367.8, %.preheader367.7, %.preheader367.6, %.preheader367.5, %.preheader367.4, %.preheader367.3, %.preheader367.2, %.preheader367.1, %.preheader367.preheader
  %.lcssa556 = phi ptr [ %i.am, %.preheader367.preheader ], [ %i.an, %.preheader367.1 ], [ %i.ao, %.preheader367.2 ], [ %i.ap, %.preheader367.3 ], [ %i.aq, %.preheader367.4 ], [ %i.ar, %.preheader367.5 ], [ %i.as, %.preheader367.6 ], [ %i.at, %.preheader367.7 ], [ %i.au, %.preheader367.8 ] ; 7 uses
  %i.bp = getelementptr i8, ptr %i.aw, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !56
  %i.br = getelementptr i8, ptr %i.n, i64 %i.bq   ; 4 uses
  store ptr %i.br, ptr %.lcssa556, align 8, !tbaa !46
  %i.bs = getelementptr i8, ptr %i.aw, i64 32     ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !61
  %i.bu = getelementptr i8, ptr %.lcssa556, i64 8 ; 3 uses
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !62
  %i.bv = getelementptr i8, ptr %i.aw, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !63 ; 2 uses
  %i.bx = getelementptr i8, ptr %.lcssa556, i64 16
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !45
  %i.by = and i64 %i.bw, 2048
  %.not255 = icmp eq i64 %i.by, 0
  br i1 %.not255, label %.thread329, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %.lcssa556, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.bz = getelementptr i8, ptr %i.br, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !65 ; 2 uses
  store i64 %i.ca, ptr %i.b, align 8, !tbaa !67
  %i.cb = load i32, ptr %i.br, align 8, !tbaa !68
  %.not.i = icmp eq i32 %i.cb, 1
  br i1 %.not.i, label %bb.q, label %uncompress_debug_section.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cc = call noalias ptr @malloc(i64 noundef %i.ca) #18 ; 3 uses
  store ptr %i.cc, ptr %.lcssa556, align 8, !tbaa !64
  %.not14.i = icmp eq ptr %i.cc, null
  br i1 %.not14.i, label %uncompress_debug_section.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr i8, ptr %i.br, i64 24
  %i.ce = load i64, ptr %i.bs, align 8, !tbaa !61
  %i.cf = add i64 %i.ce, -24
  %i.cg = call i32 @uncompress(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.b, ptr noundef %i.cd, i64 noundef %i.cf) #15
  %.not15.i = icmp eq i32 %i.cg, 0
  br i1 %.not15.i, label %uncompress_debug_section.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %.lcssa556, align 8, !tbaa !64
  call void @free(ptr noundef %i.ch) #15
  store ptr null, ptr %.lcssa556, align 8, !tbaa !64
  br label %uncompress_debug_section.exit.thread

uncompress_debug_section.exit.thread:             ; preds = %bb.p, %bb.q, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.bu, align 8, !tbaa !62
  br label %.loopexit368

uncompress_debug_section.exit:                    ; preds = %bb.r
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !67  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  store i64 %i.ci, ptr %i.bu, align 8, !tbaa !62
  %.not256 = icmp eq i64 %i.ci, 0
  br i1 %.not256, label %.loopexit368, label %uncompress_debug_section.exit..thread329_crit_edge

uncompress_debug_section.exit..thread329_crit_edge: ; preds = %uncompress_debug_section.exit
  %.pre = load i16, ptr %i.ak, align 4, !tbaa !58
  br label %.thread329

.thread329:                                       ; preds = %.preheader367.8, %uncompress_debug_section.exit..thread329_crit_edge, %bb.o, %bb.l, %bb.j, %bb.m, %bb.i, %bb.k, %bb.h, %bb.n
  %i.cj = phi i16 [ %i.av, %bb.h ], [ %i.av, %bb.m ], [ %i.av, %bb.l ], [ %i.av, %bb.k ], [ %i.av, %bb.n ], [ %i.av, %bb.i ], [ %i.av, %bb.j ], [ %.pre, %uncompress_debug_section.exit..thread329_crit_edge ], [ %i.av, %bb.o ], [ %i.av, %.preheader367.8 ] ; 2 uses
  %.2210342 = phi ptr [ %.0208465, %bb.h ], [ %.0208465, %bb.m ], [ %.0208465, %bb.l ], [ %.0208465, %bb.k ], [ %i.aw, %bb.n ], [ %.0208465, %bb.i ], [ %.0208465, %bb.j ], [ %.0208465, %uncompress_debug_section.exit..thread329_crit_edge ], [ %.0208465, %bb.o ], [ %.0208465, %.preheader367.8 ] ; 2 uses
  %.2213341 = phi ptr [ %.0211464, %bb.h ], [ %spec.select260, %bb.m ], [ %.0211464, %bb.l ], [ %.0211464, %bb.k ], [ %.0211464, %bb.n ], [ %.0211464, %bb.i ], [ %.0211464, %bb.j ], [ %.0211464, %uncompress_debug_section.exit..thread329_crit_edge ], [ %.0211464, %bb.o ], [ %.0211464, %.preheader367.8 ] ; 2 uses
  %.2216340 = phi ptr [ %.0214463, %bb.h ], [ %.0214463, %bb.m ], [ %.0214463, %bb.l ], [ %i.aw, %bb.k ], [ %.0214463, %bb.n ], [ %.0214463, %bb.i ], [ %.0214463, %bb.j ], [ %.0214463, %uncompress_debug_section.exit..thread329_crit_edge ], [ %.0214463, %bb.o ], [ %.0214463, %.preheader367.8 ] ; 2 uses
  %.2219339 = phi ptr [ %.0217462, %bb.h ], [ %.0217462, %bb.m ], [ %.0217462, %bb.l ], [ %.0217462, %bb.k ], [ %.0217462, %bb.n ], [ %i.aw, %bb.i ], [ %.0217462, %bb.j ], [ %.0217462, %uncompress_debug_section.exit..thread329_crit_edge ], [ %.0217462, %bb.o ], [ %.0217462, %.preheader367.8 ] ; 2 uses
  %.2223338 = phi ptr [ %.0221461, %bb.h ], [ %.0221461, %bb.m ], [ %i.aw, %bb.l ], [ %.0221461, %bb.k ], [ %.0221461, %bb.n ], [ %.0221461, %bb.i ], [ %.0221461, %bb.j ], [ %.0221461, %uncompress_debug_section.exit..thread329_crit_edge ], [ %.0221461, %bb.o ], [ %.0221461, %.preheader367.8 ] ; 2 uses
  %.2226337 = phi ptr [ %.0224460, %bb.h ], [ %.0224460, %bb.m ], [ %.0224460, %bb.l ], [ %.0224460, %bb.k ], [ %.0224460, %bb.n ], [ %.0224460, %bb.i ], [ %spec.select, %bb.j ], [ %.0224460, %uncompress_debug_section.exit..thread329_crit_edge ], [ %.0224460, %bb.o ], [ %.0224460, %.preheader367.8 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = zext i16 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %bb.h, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %.thread329, %bb.g
  %.0224.lcssa = phi ptr [ null, %bb.g ], [ %.2226337, %.thread329 ] ; 3 uses
  %.0221.lcssa = phi ptr [ null, %bb.g ], [ %.2223338, %.thread329 ] ; 4 uses
  %.0217.lcssa = phi ptr [ null, %bb.g ], [ %.2219339, %.thread329 ]
  %.0214.lcssa = phi ptr [ null, %bb.g ], [ %.2216340, %.thread329 ] ; 2 uses
  %.0211.lcssa = phi ptr [ null, %bb.g ], [ %.2213341, %.thread329 ] ; 2 uses
  %.0208.lcssa = phi ptr [ null, %bb.g ], [ %.2210342, %.thread329 ] ; 2 uses
  %i.cm = icmp eq i32 %5, 0
  br i1 %i.cm, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %._crit_edge
  %i.cn = icmp ne ptr %.0221.lcssa, null
  %i.co = icmp ne ptr %.0224.lcssa, null
  %or.cond = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr i8, ptr %.0224.lcssa, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !56
  %i.cr = getelementptr i8, ptr %i.n, i64 %i.cq
  %i.cs = getelementptr i8, ptr %.0221.lcssa, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !56
  %i.cu = getelementptr i8, ptr %i.n, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.0221.lcssa, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !61
  %i.cx = udiv i64 %i.cw, 24                      ; 2 uses
  %i.cy = call ptr @dlopen(ptr noundef null, i32 noundef 2) #15 ; 3 uses
  %.not242 = icmp eq ptr %i.cy, null
  br i1 %.not242, label %.sink.split, label %.preheader365

.preheader365:                                    ; preds = %bb.u
  %i.cz = trunc i64 %i.cx to i32
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph473.preheader, label %.loopexit366

.lr.ph473.preheader:                              ; preds = %.preheader365
  %wide.trip.count = and i64 %i.cx, 2147483647
  br label %.lr.ph473

.lr.ph473:                                        ; preds = %.lr.ph473.preheader, %bb.z
  %indvars.iv565 = phi i64 [ 0, %.lr.ph473.preheader ], [ %indvars.iv.next566, %bb.z ] ; 2 uses
  %i.db = getelementptr [24 x i8], ptr %i.cu, i64 %indvars.iv565 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %i.dd = load i8, ptr %i.dc, align 4, !tbaa !70
  %i.de = and i8 %i.dd, 15
  %.not243 = icmp eq i8 %i.de, 2
  br i1 %.not243, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph473
  %i.df = getelementptr i8, ptr %i.db, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !72
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = load i32, ptr %i.db, align 8, !tbaa !73
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr i8, ptr %i.cr, i64 %i.dj
  %i.dl = call ptr @dlsym(ptr noundef nonnull %i.cy, ptr noundef %i.dk) #15 ; 2 uses
  %.not244 = icmp eq ptr %i.dl, null
  br i1 %.not244, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = call i32 @dladdr(ptr noundef nonnull %i.dl, ptr noundef nonnull %18) #15
  %.not245 = icmp eq i32 %i.dm, 0
  br i1 %.not245, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr i8, ptr %i.c, i64 32
  store i64 0, ptr %i.dn, align 8, !tbaa !33
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !24
  %i.dq = ptrtoint ptr %i.dp to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %.loopexit366

bb.z:                                             ; preds = %.lr.ph473, %bb.v, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit366, label %.lr.ph473, !llvm.loop !74

.loopexit366:                                     ; preds = %bb.z, %.preheader365, %bb.y
  %.2229 = phi i64 [ %i.dq, %bb.y ], [ 0, %.preheader365 ], [ 0, %bb.z ]
  %i.dr = call i32 @dlclose(ptr noundef nonnull %i.cy) #15 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit366, %bb.u
  %.3230 = phi i64 [ %.2229, %.loopexit366 ], [ 0, %bb.u ] ; 2 uses
  %i.ds = getelementptr i8, ptr %i.n, i64 16
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !75
  %i.du = icmp eq i16 %i.dt, 2
  %i.dv = getelementptr i8, ptr %i.c, i64 32
  %..3230 = select i1 %i.du, i64 0, i64 %.3230
  store i64 %..3230, ptr %i.dv, align 8, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.t, %._crit_edge
  %.4 = phi i64 [ 0, %._crit_edge ], [ 0, %bb.t ], [ %.3230, %.sink.split ] ; 3 uses
  %i.dw = getelementptr i8, ptr %i.c, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !76 ; 5 uses
  %.not246 = icmp eq ptr %i.dx, null
  br i1 %.not246, label %bb.dq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr i8, ptr %i.c, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !77
  %.not247 = icmp eq ptr %i.dz, null
  br i1 %.not247, label %bb.dq, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  %i.ea = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.eb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !78
  store ptr %i.c, ptr %19, align 8, !tbaa !80
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 15 uses
  store ptr %i.dx, ptr %i.ec, align 8, !tbaa !81
  %i.ed = getelementptr i8, ptr %i.c, i64 80
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !82
  %i.ef = getelementptr i8, ptr %i.dx, i64 %i.ee  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %19, i64 112 ; 2 uses
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !83
  %i.eh = getelementptr i8, ptr %i.c, i64 96
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !84
  %i.ej = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 3 uses
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !85
  %i.ek = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i8 0, i64 32, i1 false)
  %i.el = icmp ult ptr %i.dx, %i.ef
  br i1 %i.el, label %.lr.ph475, label %._crit_edge476

.lr.ph475:                                        ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 136 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 104 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %19, i64 140 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 144 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %19, i64 152
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 10
  %i.ew = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %19, i64 74 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.fb = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 128 ; 27 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 24
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.fj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 17
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not76188.i = icmp slt i32 %5, %0
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.fw = sext i32 %5 to i64
  %wide.trip.count.i = sext i32 %0 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph475, %debug_info_read.exit
  %i.fx = phi ptr [ %i.dx, %.lr.ph475 ], [ %i.aab, %debug_info_read.exit ] ; 4 uses
  store i32 4, ptr %i.em, align 8, !tbaa !86
  store ptr %i.fx, ptr %i.en, align 8, !tbaa !87
  %i.fy = getelementptr i8, ptr %i.fx, i64 4      ; 3 uses
  store ptr %i.fy, ptr %i.ec, align 8, !tbaa !64
  %.val.i.i.i = load i32, ptr %i.fx, align 1      ; 2 uses
  %i.fz = zext i32 %.val.i.i.i to i64
  %.not.not.i = icmp eq i32 %.val.i.i.i, -1       ; 3 uses
  br i1 %.not.not.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ga = getelementptr i8, ptr %i.fx, i64 12     ; 2 uses
  store ptr %i.ga, ptr %i.ec, align 8, !tbaa !64
  %.val.i3.i.i.i = load i64, ptr %i.fy, align 1
  store i32 8, ptr %i.em, align 8, !tbaa !86
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gb = phi ptr [ %i.ga, %bb.ae ], [ %i.fy, %bb.ad ] ; 9 uses
  %.061.i = phi i64 [ %.val.i3.i.i.i, %bb.ae ], [ %i.fz, %bb.ad ]
  %i.gc = getelementptr i8, ptr %i.gb, i64 %.061.i
  store ptr %i.gc, ptr %i.eo, align 8, !tbaa !88
  %i.gd = getelementptr i8, ptr %i.gb, i64 2      ; 3 uses
  store ptr %i.gd, ptr %i.ec, align 8, !tbaa !64
  %.val.i.i = load i16, ptr %i.gb, align 1        ; 3 uses
  %i.ge = trunc i16 %.val.i.i to i8
  store i8 %i.ge, ptr %i.ep, align 8, !tbaa !89
  %i.gf = icmp ugt i16 %.val.i.i, 5
  br i1 %i.gf, label %.thread356, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gg = icmp eq i16 %.val.i.i, 5
  br i1 %i.gg, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gh = getelementptr i8, ptr %i.gb, i64 3
  %i.gi = getelementptr i8, ptr %i.gb, i64 4      ; 3 uses
  store ptr %i.gi, ptr %i.ec, align 8, !tbaa !64
  %i.gj = load i8, ptr %i.gh, align 1, !tbaa !14  ; 3 uses
  store i8 %i.gj, ptr %i.eq, align 4, !tbaa !90
  br i1 %.not.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr i8, ptr %i.gb, i64 8
  store ptr %i.gk, ptr %i.ec, align 8, !tbaa !64
  %.val.i.i.i.i = load i32, ptr %i.gi, align 1
  %i.gl = zext i32 %.val.i.i.i.i to i64
  br label %read_uint.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.gm = getelementptr i8, ptr %i.gb, i64 12
  store ptr %i.gm, ptr %i.ec, align 8, !tbaa !64
  %.val.i3.i.i.i.i = load i64, ptr %i.gi, align 1
  br label %read_uint.exit.i

bb.ak:                                            ; preds = %bb.ag
  br i1 %.not.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gn = getelementptr i8, ptr %i.gb, i64 6      ; 2 uses
  store ptr %i.gn, ptr %i.ec, align 8, !tbaa !64
  %.val.i.i.i74.i = load i32, ptr %i.gd, align 1
  %i.go = zext i32 %.val.i.i.i74.i to i64
  br label %read_uint.exit75.i

bb.am:                                            ; preds = %bb.ak
  %i.gp = getelementptr i8, ptr %i.gb, i64 10     ; 2 uses
  store ptr %i.gp, ptr %i.ec, align 8, !tbaa !64
  %.val.i3.i.i.i72.i = load i64, ptr %i.gd, align 1
  br label %read_uint.exit75.i

read_uint.exit75.i:                               ; preds = %bb.am, %bb.al
  %i.gq = phi ptr [ %i.gn, %bb.al ], [ %i.gp, %bb.am ] ; 2 uses
  %.0.i73.i = phi i64 [ %i.go, %bb.al ], [ %.val.i3.i.i.i72.i, %bb.am ]
  %i.gr = getelementptr i8, ptr %i.gq, i64 1
  store ptr %i.gr, ptr %i.ec, align 8, !tbaa !64
  %i.gs = load i8, ptr %i.gq, align 1, !tbaa !14  ; 2 uses
  store i8 %i.gs, ptr %i.eq, align 4, !tbaa !90
  br label %read_uint.exit.i

read_uint.exit.i:                                 ; preds = %read_uint.exit75.i, %bb.aj, %bb.ai
  %i.gt = phi i8 [ %i.gs, %read_uint.exit75.i ], [ %i.gj, %bb.ai ], [ %i.gj, %bb.aj ] ; 2 uses
  %.056.i = phi i64 [ %.0.i73.i, %read_uint.exit75.i ], [ %i.gl, %bb.ai ], [ %.val.i3.i.i.i.i, %bb.aj ]
  switch i8 %i.gt, label %bb.an [
    i8 4, label %bb.ao
    i8 8, label %bb.ao
  ]

bb.an:                                            ; preds = %read_uint.exit.i
  %i.gu = zext i8 %i.gt to i32
  %i.gv = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %i.gu) #15 ; 0 uses
  br label %.thread356

bb.ao:                                            ; preds = %read_uint.exit.i, %read_uint.exit.i
  %i.gw = load ptr, ptr %19, align 8, !tbaa !80   ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !77
  %i.gz = getelementptr i8, ptr %i.gy, i64 %.056.i ; 2 uses
  store ptr %i.gz, ptr %i.er, align 8, !tbaa !91
  store i32 0, ptr %i.es, align 8, !tbaa !92
  br label %di_skip_die_attributes.exit.i.i

di_skip_die_attributes.exit.i.i:                  ; preds = %uleb128.exit17.i.i.i, %bb.ao
  %.022.i.i = phi ptr [ %i.gz, %bb.ao ], [ %.4.i.i, %uleb128.exit17.i.i.i ] ; 2 uses
  %.07.i.i = phi i64 [ 0, %bb.ao ], [ %.117.i.i.i, %uleb128.exit17.i.i.i ]
  %i.ha = getelementptr i8, ptr %.022.i.i, i64 1  ; 2 uses
  %i.hb = load i8, ptr %.022.i.i, align 1, !tbaa !14 ; 3 uses
  %i.hc = icmp sgt i8 %i.hb, -1
  br i1 %i.hc, label %uleb128.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %di_skip_die_attributes.exit.i.i, %.lr.ph.i.i.i
  %i.hd = phi i8 [ %i.hl, %.lr.ph.i.i.i ], [ %i.hb, %di_skip_die_attributes.exit.i.i ]
  %i.he = phi ptr [ %i.hk, %.lr.ph.i.i.i ], [ %i.ha, %di_skip_die_attributes.exit.i.i ] ; 2 uses
  %.01020.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ 0, %di_skip_die_attributes.exit.i.i ]
  %.01119.i.i.i = phi i32 [ %i.hj, %.lr.ph.i.i.i ], [ 0, %di_skip_die_attributes.exit.i.i ] ; 2 uses
  %i.hf = and i8 %i.hd, 127
  %i.hg = zext nneg i8 %i.hf to i32
  %i.hh = shl i32 %i.hg, %.01119.i.i.i
  %i.hi = sext i32 %i.hh to i64
  %i.hj = add i32 %.01119.i.i.i, 7                ; 2 uses
  %.1.i.i.i = add i64 %.01020.i.i.i, %i.hi        ; 2 uses
  %i.hk = getelementptr i8, ptr %i.he, i64 1      ; 2 uses
  %i.hl = load i8, ptr %i.he, align 1, !tbaa !14  ; 3 uses
  %i.hm = icmp sgt i8 %i.hl, -1
  br i1 %i.hm, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.hn = zext nneg i32 %i.hj to i64
  br label %uleb128.exit.i.i

uleb128.exit.i.i:                                 ; preds = %._crit_edge.loopexit.i.i.i, %di_skip_die_attributes.exit.i.i
  %.2.i.i = phi ptr [ %i.ha, %di_skip_die_attributes.exit.i.i ], [ %i.hk, %._crit_edge.loopexit.i.i.i ] ; 4 uses
  %.011.lcssa.i.i.i = phi i64 [ 0, %di_skip_die_attributes.exit.i.i ], [ %i.hn, %._crit_edge.loopexit.i.i.i ]
  %.010.lcssa.i.i.i = phi i64 [ 0, %di_skip_die_attributes.exit.i.i ], [ %.1.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.lcssa.i.i.i = phi i8 [ %i.hb, %di_skip_die_attributes.exit.i.i ], [ %i.hl, %._crit_edge.loopexit.i.i.i ]
  %i.ho = zext nneg i8 %.lcssa.i.i.i to i64
  %i.hp = shl i64 %i.ho, %.011.lcssa.i.i.i
  %.117.i.i.i = add i64 %i.hp, %.010.lcssa.i.i.i  ; 4 uses
  %.not.i.i = icmp ugt i64 %.117.i.i.i, %.07.i.i
  br i1 %.not.i.i, label %bb.ap, label %di_read_debug_abbrev_cu.exit.i

bb.ap:                                            ; preds = %uleb128.exit.i.i
  %i.hq = icmp ult i64 %.117.i.i.i, 256
  br i1 %i.hq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hr = getelementptr [8 x i8], ptr %i.et, i64 %.117.i.i.i
  store ptr %.2.i.i, ptr %i.hr, align 8, !tbaa !64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hs = load i8, ptr %.2.i.i, align 1, !tbaa !14
  %i.ht = icmp sgt i8 %i.hs, -1
  br i1 %i.ht, label %uleb128.exit19.i.i, label %.lr.ph.i10.i.i

.lr.ph.i10.i.i:                                   ; preds = %bb.ar, %.lr.ph.i10.i.i
  %.pn.i.i = phi ptr [ %i.hu, %.lr.ph.i10.i.i ], [ %.2.i.i, %bb.ar ]
  %i.hu = getelementptr i8, ptr %.pn.i.i, i64 1   ; 3 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !14
  %i.hw = icmp sgt i8 %i.hv, -1
  br i1 %i.hw, label %uleb128.exit19.i.i, label %.lr.ph.i10.i.i

uleb128.exit19.i.i:                               ; preds = %.lr.ph.i10.i.i, %bb.ar
  %i.hx = phi ptr [ %.2.i.i, %bb.ar ], [ %i.hu, %.lr.ph.i10.i.i ]
  %i.hy = getelementptr i8, ptr %i.hx, i64 2
  br label %sleb128.exit.i.i.i

sleb128.exit.i.i.i:                               ; preds = %sleb128.exit.i.i.i.backedge, %uleb128.exit19.i.i
  %i.hz = phi ptr [ %i.hy, %uleb128.exit19.i.i ], [ %.be, %sleb128.exit.i.i.i.backedge ] ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 1      ; 2 uses
  %i.ib = load i8, ptr %i.hz, align 1, !tbaa !14  ; 3 uses
  %i.ic = icmp sgt i8 %i.ib, -1
  br i1 %i.ic, label %uleb128.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %sleb128.exit.i.i.i, %.lr.ph.i.i.i.i
  %i.id = phi i8 [ %i.il, %.lr.ph.i.i.i.i ], [ %i.ib, %sleb128.exit.i.i.i ]
  %i.ie = phi ptr [ %i.ik, %.lr.ph.i.i.i.i ], [ %i.ia, %sleb128.exit.i.i.i ] ; 2 uses
  %.01020.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %sleb128.exit.i.i.i ]
  %.01119.i.i.i.i = phi i32 [ %i.ij, %.lr.ph.i.i.i.i ], [ 0, %sleb128.exit.i.i.i ] ; 2 uses
  %i.if = and i8 %i.id, 127
  %i.ig = zext nneg i8 %i.if to i32
  %i.ih = shl i32 %i.ig, %.01119.i.i.i.i
  %i.ii = sext i32 %i.ih to i64
  %i.ij = add i32 %.01119.i.i.i.i, 7              ; 2 uses
  %.1.i.i.i.i = add i64 %.01020.i.i.i.i, %i.ii    ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ie, i64 1      ; 2 uses
  %i.il = load i8, ptr %i.ie, align 1, !tbaa !14  ; 3 uses
  %i.im = icmp sgt i8 %i.il, -1
  br i1 %i.im, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %i.in = zext nneg i32 %i.ij to i64
  br label %uleb128.exit.i.i.i

uleb128.exit.i.i.i:                               ; preds = %._crit_edge.loopexit.i.i.i.i, %sleb128.exit.i.i.i
  %i.io = phi ptr [ %i.ia, %sleb128.exit.i.i.i ], [ %i.ik, %._crit_edge.loopexit.i.i.i.i ] ; 2 uses
  %.011.lcssa.i.i.i.i = phi i64 [ 0, %sleb128.exit.i.i.i ], [ %i.in, %._crit_edge.loopexit.i.i.i.i ]
  %.010.lcssa.i.i.i.i = phi i64 [ 0, %sleb128.exit.i.i.i ], [ %.1.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i8 [ %i.ib, %sleb128.exit.i.i.i ], [ %i.il, %._crit_edge.loopexit.i.i.i.i ]
  %i.ip = zext nneg i8 %.lcssa.i.i.i.i to i64
  %i.iq = shl i64 %i.ip, %.011.lcssa.i.i.i.i
end_hunk_0
