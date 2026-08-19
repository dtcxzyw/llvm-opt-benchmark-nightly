inline.NumInlined: 48
inline.NumDeleted: 23
begin_hunk_0_@timelib_parse_tzfile:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 44 ; 2 uses
  %.not.i42 = icmp eq i32 %.sroa.6.0.copyload.i, 0
  %i.bv = zext i32 %i.bo to i64                   ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  %storemerge = select i1 %.not.i42, ptr %i.bu, ptr %i.by
  %i.bz = zext i32 %i.bq to i64
  %i.ca = mul nuw nsw i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw i8, ptr %storemerge, i64 %i.ca
  %i.cc = zext i32 %i.bs to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  %i.ce = zext i32 %i.bm to i64
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %i.ch = zext i32 %i.bk to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch
  %i.cj = zext i32 %i.bi to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj ; 13 uses
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = xor i32 %i.cl, 1718180436
  %i.cn = getelementptr i8, ptr %i.ck, i64 4
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = xor i32 %i.cp, 50
  %i.cr = or i32 %i.cm, %i.cq
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.r, label %bb.o

bb.o:                                             ; preds = %skip_32bit_transitions.exit
  %i.cv = load i32, ptr %i.ck, align 1
  %i.cw = xor i32 %i.cv, 1718180436
  %i.cx = getelementptr i8, ptr %i.ck, i64 4
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i32
  %i.da = xor i32 %i.cz, 51
  %i.db = or i32 %i.cw, %i.da
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = load i32, ptr %i.ck, align 1
  %i.dg = xor i32 %i.df, 1718180436
  %i.dh = getelementptr i8, ptr %i.ck, i64 4
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i32
  %i.dk = xor i32 %i.dj, 52
  %i.dl = or i32 %i.dg, %i.dk
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 3, ptr %2, align 4, !tbaa !81
  tail call void @timelib_tzinfo_dtor(ptr noundef nonnull %i.y)
  br label %bb.as

bb.r:                                             ; preds = %bb.p, %bb.o, %skip_32bit_transitions.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ck, i64 20 ; 2 uses
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !89
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.dp, align 1
  %.sroa.4.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.4.0.copyload.i48 = load i32, ptr %.sroa.4.0..sroa_idx.i47, align 1
  %.sroa.5.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  %.sroa.5.0.copyload.i50 = load i32, ptr %.sroa.5.0..sroa_idx.i49, align 1
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %.sroa.6.0.copyload.i52 = load i32, ptr %.sroa.6.0..sroa_idx.i51, align 1 ; 2 uses
  %.sroa.7.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.ck, i64 36
  %.sroa.7.0.copyload.i54 = load i32, ptr %.sroa.7.0..sroa_idx.i53, align 1
  %.sroa.8.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %.sroa.8.0.copyload.i56 = load i32, ptr %.sroa.8.0..sroa_idx.i55, align 1
  %i.dq = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i46)
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !34
  %i.dt = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.4.0.copyload.i48)
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 3 uses
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !35
  %i.dw = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.5.0.copyload.i50)
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 4 uses
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !36
  %i.dz = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.6.0.copyload.i52)
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 3 uses
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !37
  %i.ec = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.7.0.copyload.i54)
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 4 uses
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !38
  %i.ef = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.8.0.copyload.i56)
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 3 uses
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !39
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ck, i64 44 ; 3 uses
  %.not.i57 = icmp eq i32 %.sroa.6.0.copyload.i52, 0
  br i1 %.not.i57, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = shl nuw nsw i64 %i.ea, 3
  %i.ek = tail call noalias ptr @_emalloc(i64 noundef %i.ej) #16 ; 6 uses
  %.not109.i = icmp eq ptr %i.ek, null
  br i1 %.not109.i, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = load i64, ptr %i.eb, align 8, !tbaa !37 ; 4 uses
  %i.em = shl i64 %i.el, 3                        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 1 %i.ei, i64 %i.em, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.em ; 3 uses
  store ptr %i.en, ptr %i.a, align 8, !tbaa !89
  %.not113.i = icmp eq i64 %i.el, 0
  br i1 %.not113.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %i.eo = phi i64 [ %i.ey, %bb.v ], [ 0, %bb.t ]
  %.0100112.i = phi i32 [ %i.ex, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.eo ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !49
  %i.er = tail call noundef i64 @llvm.bswap.i64(i64 %i.eq) ; 2 uses
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !49
  %.not111.i = icmp eq i32 %.0100112.i, 0
  br i1 %.not111.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.es = add i32 %.0100112.i, -1
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !49
  %i.ew = icmp sgt i64 %i.er, %i.ev
  br i1 %i.ew, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %i.ex = add i32 %.0100112.i, 1                  ; 2 uses
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = icmp ugt i64 %i.el, %i.ey
  br i1 %i.ez, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %bb.v, %bb.t
  %i.fa = tail call noalias ptr @_emalloc(i64 noundef %i.el) #16 ; 3 uses
  %.not110.i = icmp eq ptr %i.fa, null
  br i1 %.not110.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i
  tail call void @_efree(ptr noundef nonnull %i.ek) #15
  br label %.loopexit

bb.x:                                             ; preds = %._crit_edge.i
  %i.fb = load i64, ptr %i.eb, align 8, !tbaa !37 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr nonnull align 1 %i.en, i64 %i.fb, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fb ; 2 uses
  store ptr %i.fc, ptr %i.a, align 8, !tbaa !89
  %.pre = load i64, ptr %i.ee, align 8, !tbaa !38
  br label %bb.y

.loopexit:                                        ; preds = %bb.u, %bb.s, %bb.w
  %.0102.i.ph = phi i32 [ 1, %bb.s ], [ 1, %bb.w ], [ 2, %bb.u ]
  store i32 %.0102.i.ph, ptr %2, align 4, !tbaa !81
  tail call void @timelib_tzinfo_dtor(ptr noundef %i.y)
  br label %bb.as

bb.y:                                             ; preds = %bb.x, %bb.r
  %i.fd = phi ptr [ %i.fc, %bb.x ], [ %i.ei, %bb.r ] ; 2 uses
  %i.fe = phi i64 [ %.pre, %bb.x ], [ %i.ed, %bb.r ]
  %.0101.i = phi ptr [ %i.ek, %bb.x ], [ null, %bb.r ]
  %.0.i58 = phi ptr [ %i.fa, %bb.x ], [ null, %bb.r ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store ptr %.0101.i, ptr %i.ff, align 8, !tbaa !48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store ptr %.0.i58, ptr %i.fg, align 8, !tbaa !61
  %i.fh = mul i64 %i.fe, 6
  %i.fi = tail call noalias ptr @_emalloc(i64 noundef %i.fh) #16 ; 9 uses
  %.not.i59 = icmp eq ptr %i.fi, null
  br i1 %.not.i59, label %read_64bit_types.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fj = load i64, ptr %i.ee, align 8, !tbaa !38 ; 2 uses
  %i.fk = mul i64 %i.fj, 6                        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull align 1 %i.fd, i64 %i.fk, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fk ; 3 uses
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !89
  %i.fm = mul i64 %i.fj, 20
  %i.fn = add i64 %i.fm, 40
  %i.fo = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.fn) #14 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 3 uses
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !40
  %.not325.i = icmp eq ptr %i.fo, null
  br i1 %.not325.i, label %read_64bit_types.exit, label %.preheader334.i

.preheader334.i:                                  ; preds = %bb.z
  %i.fq = load i64, ptr %i.ee, align 8, !tbaa !38 ; 2 uses
  %.not347.i = icmp eq i64 %i.fq, 0
  br i1 %.not347.i, label %._crit_edge.i61, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.preheader334.i, %.lr.ph.i60
  %indvars.iv.i = phi i64 [ %4, %.lr.ph.i60 ], [ 0, %.preheader334.i ]
  %.0335.i = phi i32 [ %3, %.lr.ph.i60 ], [ 0, %.preheader334.i ] ; 2 uses
  %i.fr = mul i32 %.0335.i, 6                     ; 5 uses
  %i.fs = getelementptr inbounds nuw [20 x i8], ptr %i.fo, i64 %indvars.iv.i ; 2 uses
  %i.ft = zext i32 %i.fr to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !62
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw i32 %i.fw, 24
  %i.fy = or disjoint i32 %i.fr, 1
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !62
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 16
  %i.ge = or disjoint i32 %i.gd, %i.fx
  %i.gf = add i32 %i.fr, 2
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !62
  %i.gj = zext i8 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.gj, 8
  %i.gl = or disjoint i32 %i.ge, %i.gk
  %i.gm = add i32 %i.fr, 3
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !62
  %i.gq = zext i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.gl, %i.gq
  store i32 %i.gr, ptr %i.fs, align 4, !tbaa !41
  %i.gs = add i32 %i.fr, 4
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.gw = load <2 x i8>, ptr %i.gu, align 1, !tbaa !62
  %i.gx = zext <2 x i8> %i.gw to <2 x i32>
  store <2 x i32> %i.gx, ptr %i.gv, align 4, !tbaa !81
  %3 = add i32 %.0335.i, 1                        ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.gy = icmp ugt i64 %i.fq, %4
  br i1 %i.gy, label %.lr.ph.i60, label %._crit_edge.i61, !llvm.loop !91

._crit_edge.i61:                                  ; preds = %.lr.ph.i60, %.preheader334.i
  tail call void @_efree(ptr noundef nonnull %i.fi) #15
  %i.gz = load i64, ptr %i.eh, align 8, !tbaa !39
  %i.ha = tail call noalias ptr @_emalloc(i64 noundef %i.gz) #16 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !45
  %.not326.i = icmp eq ptr %i.ha, null
  br i1 %.not326.i, label %read_64bit_types.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i61
  %i.hc = load i64, ptr %i.eh, align 8, !tbaa !39 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr align 1 %i.fl, i64 %i.hc, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.hc ; 4 uses
  store ptr %i.hd, ptr %i.a, align 8, !tbaa !89
  %i.he = load i64, ptr %i.dy, align 8, !tbaa !36 ; 2 uses
  %.not327.i = icmp eq i64 %i.he, 0
  br i1 %.not327.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hf = mul i64 %i.he, 12
  %i.hg = tail call noalias ptr @_emalloc(i64 noundef %i.hf) #16 ; 7 uses
  %.not328.i = icmp eq ptr %i.hg, null
  br i1 %.not328.i, label %read_64bit_types.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hh = load i64, ptr %i.dy, align 8, !tbaa !36 ; 2 uses
  %i.hi = mul i64 %i.hh, 12                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hg, ptr align 1 %i.hd, i64 %i.hi, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hi ; 2 uses
  store ptr %i.hj, ptr %i.a, align 8, !tbaa !89
  %i.hk = shl i64 %i.hh, 4
  %i.hl = tail call noalias ptr @_emalloc(i64 noundef %i.hk) #16 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !65
  %.not329.i = icmp eq ptr %i.hl, null
  br i1 %.not329.i, label %read_64bit_types.exit, label %.preheader.i62

.preheader.i62:                                   ; preds = %bb.ac
  %i.hn = load i64, ptr %i.dy, align 8, !tbaa !36 ; 2 uses
  %.not348.i = icmp eq i64 %i.hn, 0
  br i1 %.not348.i, label %._crit_edge338.i, label %.lr.ph337.i

.lr.ph337.i:                                      ; preds = %.preheader.i62, %.lr.ph337.i
  %indvars.iv352.i = phi i64 [ %6, %.lr.ph337.i ], [ 0, %.preheader.i62 ]
  %.1336.i = phi i32 [ %5, %.lr.ph337.i ], [ 0, %.preheader.i62 ] ; 2 uses
  %i.ho = mul i32 %.1336.i, 3                     ; 3 uses
  %i.hp = add i32 %i.ho, 1
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !81
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 32
  %i.hv = zext i32 %i.ho to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !81
  %i.hy = sext i32 %i.hx to i64
  %i.hz = add i64 %i.hu, %i.hy
  %i.ia = tail call noundef i64 @llvm.bswap.i64(i64 %i.hz)
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %indvars.iv352.i ; 2 uses
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !66
  %i.ic = add i32 %i.ho, 2
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !81
  %i.ig = tail call noundef i32 @llvm.bswap.i32(i32 %i.if)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i32 %i.ig, ptr %i.ih, align 8, !tbaa !68
  %5 = add i32 %.1336.i, 1                        ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.ii = icmp ugt i64 %i.hn, %6
  br i1 %i.ii, label %.lr.ph337.i, label %._crit_edge338.i, !llvm.loop !92

._crit_edge338.i:                                 ; preds = %.lr.ph337.i, %.preheader.i62
  tail call void @_efree(ptr noundef nonnull %i.hg) #15
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge338.i, %bb.aa
  %i.ij = phi ptr [ %i.hj, %._crit_edge338.i ], [ %i.hd, %bb.aa ] ; 3 uses
  %i.ik = load i64, ptr %i.dv, align 8, !tbaa !35 ; 2 uses
  %.not330.i = icmp eq i64 %i.ik, 0
  br i1 %.not330.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.il = tail call noalias ptr @_emalloc(i64 noundef %i.ik) #16 ; 4 uses
  %.not331.i = icmp eq ptr %i.il, null
  br i1 %.not331.i, label %read_64bit_types.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.im = load i64, ptr %i.dv, align 8, !tbaa !35 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.il, ptr align 1 %i.ij, i64 %i.im, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.im ; 2 uses
  store ptr %i.in, ptr %i.a, align 8, !tbaa !89
  %.not349.i = icmp eq i64 %i.im, 0
  br i1 %.not349.i, label %._crit_edge342.i, label %.lr.ph341.i

.lr.ph341.i:                                      ; preds = %bb.af
  %i.io = load ptr, ptr %i.fp, align 8, !tbaa !40
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph341.i
  %indvars.iv356.i = phi i64 [ 0, %.lr.ph341.i ], [ %8, %bb.ag ] ; 2 uses
  %.2339.i = phi i32 [ 0, %.lr.ph341.i ], [ %7, %bb.ag ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv356.i
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !62
  %i.ir = zext i8 %i.iq to i32
  %i.is = getelementptr inbounds nuw [20 x i8], ptr %i.io, i64 %indvars.iv356.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !46
  %7 = add i32 %.2339.i, 1                        ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.iu = icmp ugt i64 %i.im, %8
  br i1 %i.iu, label %bb.ag, label %._crit_edge342.i, !llvm.loop !93

._crit_edge342.i:                                 ; preds = %bb.ag, %bb.af
  tail call void @_efree(ptr noundef nonnull %i.il) #15
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge342.i, %bb.ad
  %i.iv = phi ptr [ %i.in, %._crit_edge342.i ], [ %i.ij, %bb.ad ] ; 3 uses
  %i.iw = load i64, ptr %i.ds, align 8, !tbaa !34 ; 2 uses
  %.not332.i = icmp eq i64 %i.iw, 0
  br i1 %.not332.i, label %read_64bit_types.exit.thread78, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ix = tail call noalias ptr @_emalloc(i64 noundef %i.iw) #16 ; 4 uses
  %.not333.i = icmp eq ptr %i.ix, null
  br i1 %.not333.i, label %read_64bit_types.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iy = load i64, ptr %i.ds, align 8, !tbaa !34 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr align 1 %i.iv, i64 %i.iy, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iy ; 2 uses
  store ptr %i.iz, ptr %i.a, align 8, !tbaa !89
  %.not350.i = icmp eq i64 %i.iy, 0
  br i1 %.not350.i, label %read_64bit_types.exit.thread82, label %.lr.ph345.i

.lr.ph345.i:                                      ; preds = %bb.aj
  %i.ja = load ptr, ptr %i.fp, align 8, !tbaa !40
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph345.i
  %indvars.iv360.i = phi i64 [ 0, %.lr.ph345.i ], [ %10, %bb.ak ] ; 2 uses
  %.3343.i = phi i32 [ 0, %.lr.ph345.i ], [ %9, %bb.ak ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 %indvars.iv360.i
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !62
  %i.jd = zext i8 %i.jc to i32
  %i.je = getelementptr inbounds nuw [20 x i8], ptr %i.ja, i64 %indvars.iv360.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store i32 %i.jd, ptr %i.jf, align 4, !tbaa !47
  %9 = add i32 %.3343.i, 1                        ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.jg = icmp ugt i64 %i.iy, %10
  br i1 %i.jg, label %bb.ak, label %read_64bit_types.exit.thread82, !llvm.loop !94

read_64bit_types.exit.thread82:                   ; preds = %bb.ak, %bb.aj
  tail call void @_efree(ptr noundef nonnull %i.ix) #15
  br label %read_64bit_types.exit.thread78

read_64bit_types.exit:                            ; preds = %bb.z, %bb.ac
  %.sink.i = phi ptr [ %i.hg, %bb.ac ], [ %i.fi, %bb.z ]
  tail call void @_efree(ptr noundef nonnull %.sink.i) #15
  br label %read_64bit_types.exit.thread

read_64bit_types.exit.thread:                     ; preds = %bb.y, %._crit_edge.i61, %bb.ab, %bb.ae, %bb.ai, %read_64bit_types.exit
  %.0308.i77 = phi i32 [ 1, %read_64bit_types.exit ], [ 1, %bb.y ], [ 4, %._crit_edge.i61 ], [ 1, %bb.ab ], [ 1, %bb.ae ], [ 1, %bb.ai ]
  store i32 %.0308.i77, ptr %2, align 4, !tbaa !81
  tail call void @timelib_tzinfo_dtor(ptr noundef nonnull %i.y)
  br label %bb.as

read_64bit_types.exit.thread78:                   ; preds = %bb.ah, %read_64bit_types.exit.thread82
  %i.jh = phi ptr [ %i.iv, %bb.ah ], [ %i.iz, %read_64bit_types.exit.thread82 ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1 ; 3 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %read_64bit_types.exit.thread78
  %storemerge.i = phi ptr [ %i.ji, %read_64bit_types.exit.thread78 ], [ %i.jk, %bb.al ] ; 3 uses
  %i.jj = load i8, ptr %storemerge.i, align 1, !tbaa !62
  %.not.i64 = icmp eq i8 %i.jj, 10
  %i.jk = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1 ; 2 uses
  br i1 %.not.i64, label %read_posix_string.exit, label %bb.al, !llvm.loop !95

read_posix_string.exit:                           ; preds = %bb.al
  %i.jl = ptrtoint ptr %storemerge.i to i64
  %i.jm = ptrtoint ptr %i.ji to i64
  %reass.sub.i = sub i64 %i.jl, %i.jm             ; 2 uses
  %i.jn = add i64 %reass.sub.i, 1
  %i.jo = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.jn) #14 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr nonnull align 1 %i.ji, i64 %reass.sub.i, i1 false)
  store ptr %i.jk, ptr %i.a, align 8, !tbaa !89
  %strcmpload = load i8, ptr %i.jo, align 1
  %i.jq = icmp eq i8 %strcmpload, 0
  br i1 %i.jq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %read_posix_string.exit
  store i32 9, ptr %2, align 4, !tbaa !81
  br label %bb.ap

bb.an:                                            ; preds = %read_posix_string.exit
  %i.jr = tail call fastcc i32 @integrate_posix_string(ptr noundef nonnull %i.y)
  %.not41 = icmp eq i32 %i.jr, 0
  br i1 %.not41, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 8, ptr %2, align 4, !tbaa !81
  tail call void @timelib_tzinfo_dtor(ptr noundef nonnull %i.y)
  br label %bb.as

bb.ap:                                            ; preds = %bb.an, %bb.am
  br i1 %i.aj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @read_location(ptr noundef %i.a, ptr noundef nonnull %i.y)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.js = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, i8 0, i64 16, i1 false)
  %i.jt = tail call noalias ptr @_emalloc_8() #15 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !26
  store i8 63, ptr %i.jt, align 1, !tbaa !62
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  store i8 0, ptr %i.jv, align 1, !tbaa !62
  br label %bb.as

.loopexit89:                                      ; preds = %bb.f, %bb.a
  store i32 6, ptr %2, align 4, !tbaa !81
  br label %bb.as

bb.as:                                            ; preds = %.loopexit89, %bb.ar, %bb.aq, %bb.ao, %read_64bit_types.exit.thread, %.loopexit, %bb.q, %read_preamble.exit.thread
  %.035 = phi ptr [ null, %read_preamble.exit.thread ], [ null, %.loopexit ], [ null, %read_64bit_types.exit.thread ], [ null, %bb.q ], [ null, %bb.ao ], [ %i.y, %bb.aq ], [ %i.y, %bb.ar ], [ null, %.loopexit89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.035
}

; Function Attrs: nounwind uwtable
define hidden void @timelib_tzinfo_dtor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_efree(ptr noundef nonnull %i.a) #15
  store ptr null, ptr %0, align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not36 = icmp eq ptr %i.c, null
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.c) #15
  store ptr null, ptr %i.b, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %.not37 = icmp eq ptr %i.e, null
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_efree(ptr noundef nonnull %i.e) #15
  store ptr null, ptr %i.d, align 8, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not38 = icmp eq ptr %i.g, null
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_efree(ptr noundef nonnull %i.g) #15
  store ptr null, ptr %i.f, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %.not39 = icmp eq ptr %i.i, null
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_efree(ptr noundef nonnull %i.i) #15
  store ptr null, ptr %i.h, align 8, !tbaa !45
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %.not40 = icmp eq ptr %i.k, null
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_efree(ptr noundef nonnull %i.k) #15
  store ptr null, ptr %i.j, align 8, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %.not41 = icmp eq ptr %i.m, null
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_efree(ptr noundef nonnull %i.m) #15
  store ptr null, ptr %i.l, align 8, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70   ; 2 uses
  %.not42 = icmp eq ptr %i.o, null
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_efree(ptr noundef nonnull %i.o) #15
  store ptr null, ptr %i.n, align 8, !tbaa !70
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71   ; 2 uses
  %.not43 = icmp eq ptr %i.q, null
  br i1 %.not43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @timelib_posix_str_dtor(ptr noundef nonnull %i.q) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  tail call void @_efree(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @integrate_posix_string(ptr nofree noundef captures(none) initializes((168, 176)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = tail call ptr @timelib_parse_posix_str(ptr noundef %i.b) #15 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !71
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.n, label %bb.b

end_hunk_0
