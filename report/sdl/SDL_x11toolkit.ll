inline.NumInlined: 23
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@X11Toolkit_SettingsNotify:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not99 = icmp eq ptr %i.ac, null
  br i1 %.not99, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr @X11_XFreeFontSet, align 8
  %i.ae = load ptr, ptr %i.m, align 8
  tail call void %i.ad(ptr noundef %i.ae, ptr noundef nonnull %i.ac) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not100 = icmp eq ptr %i.ag, null
  br i1 %.not100, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr @X11_XFreeFont, align 8
  %i.ai = load ptr, ptr %i.m, align 8
  %i.aj = tail call i32 %i.ah(ptr noundef %i.ai, ptr noundef nonnull %i.ag) #14 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call fastcc void @X11Toolkit_InitWindowFonts(ptr noundef nonnull %3)
  %i.ak = load float, ptr %i.r, align 8           ; 2 uses
  %i.al = fcmp une float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = load i32, ptr %i.u, align 4
  %i.ap = sdiv i32 %i.an, %i.ao
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fmul float %i.ak, %i.aq
  %i.as = tail call i64 @SDL_lroundf_REAL(float noundef %i.ar) #14
  %i.at = trunc i64 %i.as to i32
  store i32 %i.at, ptr %i.am, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 260 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = load i32, ptr %i.u, align 4
  %i.ax = sdiv i32 %i.av, %i.aw
  %i.ay = sitofp i32 %i.ax to float
  %i.az = load float, ptr %i.r, align 8
  %i.ba = fmul float %i.az, %i.ay
  %i.bb = tail call i64 @SDL_lroundf_REAL(float noundef %i.ba) #14
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  store i32 %i.bc, ptr %i.au, align 4
  %i.bd = load i32, ptr %i.am, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 264
  store i32 %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 268
  store i32 %i.bc, ptr %i.bf, align 4
  store i8 1, ptr %i.j, align 4
  %i.bg = load i32, ptr @SDL_X11_HAVE_XDBE, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  %or.cond.not = select i1 %i.l, i1 true, i1 %i.bh
  br i1 %or.cond.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.bj = load i8, ptr %i.bi, align 8, !range !3, !noundef !4
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr @X11_XdbeDeallocateBackBufferName, align 8
  %i.bm = load ptr, ptr %i.m, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = tail call i32 %i.bl(ptr noundef %i.bm, i64 noundef %i.bo) #14 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bq = load ptr, ptr @X11_XFreePixmap, align 8
  %i.br = load ptr, ptr %i.m, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = tail call i32 %i.bq(ptr noundef %i.br, i64 noundef %i.bt) #14 ; 0 uses
  tail call fastcc void @X11Toolkit_InitWindowPixmap(ptr noundef nonnull %3)
  br label %bb.x

bb.r:                                             ; preds = %bb.m
  store i8 0, ptr %i.j, align 4
  br i1 %i.l, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr @X11_XFreePixmap, align 8
  %i.bw = load ptr, ptr %i.m, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = tail call i32 %i.bv(ptr noundef %i.bw, i64 noundef %i.by) #14 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not101 = icmp eq ptr %i.cb, null
  br i1 %.not101, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 %i.cd(ptr noundef nonnull %i.cb) #14 ; 0 uses
  store ptr null, ptr %i.ca, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cf = load i32, ptr @SDL_X11_HAVE_XDBE, align 4
  %.not102 = icmp eq i32 %i.cf, 0
  br i1 %.not102, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.ch = load i8, ptr %i.cg, align 8, !range !3, !noundef !4
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cj = load ptr, ptr @X11_XdbeAllocateBackBufferName, align 8
  %i.ck = load ptr, ptr %i.m, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = tail call i64 %i.cj(ptr noundef %i.ck, i64 noundef %i.cm, i8 noundef zeroext 0) #14 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i64 %i.cn, ptr %i.co, align 8
  store i64 %i.cn, ptr %i.bx, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.r, %bb.w, %bb.v, %bb.u, %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 528 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %.not108 = icmp eq i64 %i.cq, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 520 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 5 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i8 1, ptr %i.cv, align 8
  %i.cw = load ptr, ptr %i.cr, align 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv
  %i.cy = load ptr, ptr %i.cx, align 8            ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not104 = icmp eq ptr %i.da, null
  br i1 %.not104, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void %i.da(ptr noundef nonnull %i.cy) #14
  %.pre = load ptr, ptr %i.cr, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %.pre110 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.db = phi ptr [ %.pre110, %bb.z ], [ %i.cy, %bb.y ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not105 = icmp eq ptr %i.dd, null
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void %i.dd(ptr noundef nonnull %i.db) #14
  %.pre111 = load ptr, ptr %i.cr, align 8
  %.phi.trans.insert112 = getelementptr inbounds nuw [8 x i8], ptr %.pre111, i64 %indvars.iv
  %.pre113 = load ptr, ptr %.phi.trans.insert112, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.de = phi ptr [ %.pre113, %bb.ab ], [ %i.db, %bb.aa ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store i8 0, ptr %i.df, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dg = load i64, ptr %i.cp, align 8
  %i.dh = icmp ugt i64 %i.dg, %indvars.iv.next
  br i1 %i.dh, label %bb.y, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.ac, %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 560
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not = icmp eq ptr %i.dj, null
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 552
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dj(ptr noundef nonnull %3, ptr noundef %i.dl) #14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  %i.dm = load i8, ptr %i.j, align 4, !range !3, !noundef !4
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 620
  store <2 x float> splat (float 1.000000e+00), ptr %i.do, align 4
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dp = load float, ptr %i.r, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 620
  store float %i.dp, ptr %i.dq, align 4
  %i.dr = load i32, ptr %i.u, align 4
  %i.ds = sitofp i32 %i.dr to float
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store float %i.ds, ptr %4, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %bb.ag, %bb.af, %bb.a
  ret void
}

declare float @X11_GetGlobalContentScale(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @SDL_ceilf_REAL(float noundef) local_unnamed_addr #2

declare float @SDL_roundf_REAL(float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @X11Toolkit_InitWindowFonts(ptr nofree noundef captures(none) initializes((232, 233), (304, 328)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 4 uses
  store i32 1, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i8 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  store ptr null, ptr %i.j, align 8
  %i.k = load i32, ptr @SDL_X11_HAVE_UTF8, align 4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not77 = icmp eq i64 %indvars.iv.next, 8
  br i1 %.not77, label %bb.w, label %bb.d, !llvm.loop !16

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @g_ToolkitFont, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = call ptr @SDL_strstr_REAL(ptr noundef %i.q, ptr noundef nonnull @.str.25) #14
  %.not78 = icmp eq ptr %i.r, null
  br i1 %.not78, label %bb.h, label %.preheader104.preheader

.preheader104.preheader:                          ; preds = %bb.d
  %.pre = load i32, ptr %i.m, align 4
  br label %.preheader104

.preheader104:                                    ; preds = %.preheader104.backedge, %.preheader104.preheader
  %i.s = phi i32 [ %.pre, %.preheader104.preheader ], [ %.be, %.preheader104.backedge ]
  %i.t = mul nsw i32 %i.s, 140
  %i.u = call i32 (ptr, ptr, ...) @SDL_asprintf_REAL(ptr noundef nonnull %i.c, ptr noundef %i.q, i32 noundef %i.t) #14 ; 0 uses
  %i.v = load ptr, ptr @X11_XCreateFontSet, align 8
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = call ptr %i.v(ptr noundef %i.w, ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #14
  store ptr %i.y, ptr %i.j, align 8
  %i.z = load ptr, ptr %i.c, align 8
  call void @SDL_free_REAL(ptr noundef %i.z) #14
  %i.aa = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not79 = icmp eq ptr %i.aa, null
  br i1 %.not79, label %bb.e, label %.loopexit105

bb.e:                                             ; preds = %.preheader104
  %i.ab = load float, ptr %i.o, align 8           ; 2 uses
  %i.ac = fcmp une float %i.ab, 0.000000e+00
  %.pre123 = load i32, ptr %i.m, align 4          ; 2 uses
  %i.ad = icmp sgt i32 %.pre123, 0
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = call float @SDL_ceilf_REAL(float noundef %i.ab) #14
  %i.af = fptosi float %i.ae to i32               ; 2 uses
  store i32 %i.af, ptr %i.m, align 4
  store float 0.000000e+00, ptr %i.o, align 8
  br label %.preheader104.backedge

bb.g:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %.pre123, -1                ; 2 uses
  store i32 %i.ag, ptr %i.m, align 4
  br label %.preheader104.backedge

.preheader104.backedge:                           ; preds = %bb.g, %bb.f
  %.be = phi i32 [ %i.ag, %bb.g ], [ %i.af, %bb.f ]
  br label %.preheader104

bb.h:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr @X11_XCreateFontSet, align 8
  %i.ai = load ptr, ptr %i.n, align 8
  %i.aj = call ptr %i.ah(ptr noundef %i.ai, ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #14 ; 2 uses
  store ptr %i.aj, ptr %i.j, align 8
  br label %.loopexit105

.loopexit105:                                     ; preds = %.preheader104, %bb.h
  %i.ak = phi ptr [ %i.aj, %bb.h ], [ %i.aa, %.preheader104 ]
  %i.al = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not80 = icmp eq ptr %i.al, null
  br i1 %.not80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit105
  %i.am = load ptr, ptr @X11_XFreeStringList, align 8
  call void %i.am(ptr noundef nonnull %i.al) #14
  %.pre124 = load ptr, ptr %i.j, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit105
  %.pr = phi ptr [ %.pre124, %bb.i ], [ %i.ak, %.loopexit105 ] ; 2 uses
  %.not81 = icmp eq ptr %.pr, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br i1 %.not81, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.an = load ptr, ptr @X11_XContextDependentDrawing, align 8
  %i.ao = call i32 %i.an(ptr noundef nonnull %.pr) #14
  %.not83 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aq = zext i1 %.not83 to i8
  store i8 %i.aq, ptr %i.ap, align 8
  %i.ar = load ptr, ptr @X11_XFontsOfFontSet, align 8
  %i.as = load ptr, ptr %i.j, align 8
  %i.at = call i32 %i.ar(ptr noundef %i.as, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #14 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph112, label %.thread100

.lr.ph112:                                        ; preds = %.thread
  %wide.trip.count121 = zext nneg i32 %i.at to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph112, %bb.v
  %indvars.iv118 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next119, %bb.v ] ; 7 uses
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv118
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call ptr @SDL_strstr_REAL(ptr noundef %i.ax, ptr noundef nonnull @.str.26) #14
  %.not85 = icmp eq ptr %i.ay, null
  br i1 %.not85, label %bb.l, label %.thread95

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.e, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv118
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call ptr @SDL_strstr_REAL(ptr noundef %i.bb, ptr noundef nonnull @.str.27) #14
  %.not86 = icmp eq ptr %i.bc, null
  br i1 %.not86, label %bb.m, label %.thread95

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.e, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv118
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call ptr @SDL_strstr_REAL(ptr noundef %i.bf, ptr noundef nonnull @.str.28) #14
  %.not87 = icmp eq ptr %i.bg, null
  br i1 %.not87, label %bb.n, label %.thread95

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.e, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv118
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call ptr @SDL_strstr_REAL(ptr noundef %i.bj, ptr noundef nonnull @.str.29) #14
  %.not88 = icmp eq ptr %i.bk, null
  br i1 %.not88, label %bb.o, label %.thread95

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.e, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv118
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call ptr @SDL_strstr_REAL(ptr noundef %i.bn, ptr noundef nonnull @.str.30) #14
  %.not89 = icmp eq ptr %i.bo, null
  br i1 %.not89, label %bb.v, label %.thread95

.thread95:                                        ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.o
  %.07098 = phi i32 [ 5, %bb.o ], [ 4, %bb.n ], [ 2, %bb.m ], [ 3, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.bp = load ptr, ptr @X11_XLoadQueryFont, align 8
  %i.bq = load ptr, ptr %i.n, align 8
  %i.br = load ptr, ptr %i.e, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv118
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call ptr %i.bp(ptr noundef %i.bq, ptr noundef %i.bt) #14 ; 7 uses
  %.not91 = icmp eq ptr %i.bu, null
  br i1 %.not91, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.thread95
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %.not92 = icmp eq ptr %i.bw, null
  br i1 %.not92, label %.loopexit103, label %bb.q
end_hunk_0
