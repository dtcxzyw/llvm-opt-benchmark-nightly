inline.NumInlined: 112
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@opj_tcd_init_tile:bb.a
  store i32 %i.as, ptr %i.at, align 4, !tbaa !81
  %i.au = tail call noundef i32 @llvm.uadd.sat.i32(i32 %i.ap, i32 %i.an)
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !82
  %i.ax = tail call noundef i32 @llvm.umin.i32(i32 %i.au, i32 %i.aw) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !83
  %i.az = icmp sgt i32 %i.as, -1
  %.not518 = icmp sgt i32 %i.ax, %i.as
  %or.cond542 = and i1 %i.az, %.not518
  br i1 %or.cond542, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.3) #15 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !84
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !30
  %.not642 = icmp eq i32 %i.bf, 0
  br i1 %.not642, label %.critedge, label %.lr.ph638

.lr.ph638:                                        ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.not519 = icmp eq i32 %2, 0                    ; 3 uses
  %i.bh = trunc nuw nsw i64 %3 to i32             ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.4) #15 ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %.lr.ph638, %._crit_edge633
  %.0456637 = phi i32 [ 0, %.lr.ph638 ], [ %i.rz, %._crit_edge633 ] ; 2 uses
  %.0461636 = phi ptr [ %i.k, %.lr.ph638 ], [ %i.rw, %._crit_edge633 ] ; 9 uses
  %.0462635 = phi ptr [ %i.m, %.lr.ph638 ], [ %i.rx, %._crit_edge633 ] ; 16 uses
  %.0463634 = phi ptr [ %i.q, %.lr.ph638 ], [ %i.ry, %._crit_edge633 ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0463634, i64 36
  store i32 0, ptr %i.bj, align 4, !tbaa !86
  %i.bk = load i32, ptr %i.i, align 8, !tbaa !75
  %i.bl = load i32, ptr %.0463634, align 8, !tbaa !88
  %i.bm = sext i32 %i.bk to i64
  %i.bn = sext i32 %i.bl to i64                   ; 3 uses
  %i.bo = add nsw i64 %i.bn, -1                   ; 2 uses
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = sdiv i64 %i.bp, %i.bn                   ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %.0462635, align 8, !tbaa !89
  %i.bs = load i32, ptr %i.at, align 4, !tbaa !81
  %i.bt = getelementptr inbounds nuw i8, ptr %.0463634, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !90
  %i.bv = sext i32 %i.bs to i64
  %i.bw = sext i32 %i.bu to i64                   ; 3 uses
  %i.bx = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.by = add nsw i64 %i.bx, %i.bv
  %i.bz = sdiv i64 %i.by, %i.bw                   ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0462635, i64 4 ; 4 uses
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !91
  %i.cc = load i32, ptr %i.ah, align 8, !tbaa !77
  %i.cd = sext i32 %i.cc to i64
  %i.ce = add nsw i64 %i.bo, %i.cd
  %i.cf = sdiv i64 %i.ce, %i.bn                   ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0462635, i64 8 ; 3 uses
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !92
  %i.ci = load i32, ptr %i.ay, align 4, !tbaa !83
  %i.cj = sext i32 %i.ci to i64
  %i.ck = add nsw i64 %i.bx, %i.cj
  %i.cl = sdiv i64 %i.ck, %i.bw                   ; 2 uses
  %i.cm = trunc i64 %i.cl to i32                  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0462635, i64 12 ; 3 uses
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !93
  %i.co = getelementptr inbounds nuw i8, ptr %.0462635, i64 16
  store i32 %.0456637, ptr %i.co, align 8, !tbaa !94
  %i.cp = getelementptr inbounds nuw i8, ptr %.0461636, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !84 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0462635, i64 20 ; 3 uses
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !95
  %i.cs = load i32, ptr %i.bg, align 8, !tbaa !31 ; 2 uses
  %i.ct = icmp ult i32 %i.cq, %i.cs
  %i.cu = sub nuw i32 %i.cq, %i.cs
  %spec.select = select i1 %i.ct, i32 1, i32 %i.cu
  %i.cv = getelementptr inbounds nuw i8, ptr %.0462635, i64 24
  store i32 %spec.select, ptr %i.cv, align 8, !tbaa !96
  br i1 %.not519, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = sub nsw i64 %i.cf, %i.bq
  %sext = shl i64 %i.cw, 32
  %i.cx = ashr exact i64 %sext, 32                ; 2 uses
  %i.cy = sub nsw i64 %i.cl, %i.bz
  %sext575 = shl i64 %i.cy, 32
  %i.cz = ashr exact i64 %sext575, 32             ; 2 uses
  %.not520 = icmp eq i32 %i.cm, %i.ca
  br i1 %.not520, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cz, i64 %i.cx)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.da = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str) #15 ; 0 uses
  br label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.db = mul nsw i64 %i.cz, %i.cx                ; 2 uses
  %i.dc = icmp ugt i64 %i.db, 4611686018427387903
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dd = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str) #15 ; 0 uses
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.de = shl nuw i64 %i.db, 2
  %i.df = getelementptr inbounds nuw i8, ptr %.0462635, i64 64
  store i64 %i.de, ptr %i.df, align 8, !tbaa !57
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g
  %i.dg = mul i32 %i.cq, 192                      ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0462635, i64 80 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !54
  tail call void @opj_image_data_free(ptr noundef %i.di) #15
  %i.dj = getelementptr inbounds nuw i8, ptr %.0462635, i64 32 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !34 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dm = zext i32 %i.dg to i64                   ; 2 uses
  %i.dn = tail call ptr @opj_malloc(i64 noundef %i.dm) #15 ; 3 uses
  store ptr %i.dn, ptr %i.dj, align 8, !tbaa !34
  %.not522 = icmp eq ptr %i.dn, null
  br i1 %.not522, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %.0462635, i64 40
  store i32 %i.dg, ptr %i.do, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dn, i8 0, i64 %i.dm, i1 false)
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %.0462635, i64 40 ; 4 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !37
  %i.dr = icmp ugt i32 %i.dg, %i.dq
  br i1 %i.dr, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ds = zext i32 %i.dg to i64
  %i.dt = tail call ptr @opj_realloc(ptr noundef nonnull %i.dk, i64 noundef %i.ds) #15 ; 3 uses
  %.not521.not = icmp eq ptr %i.dt, null
  br i1 %.not521.not, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  %i.du = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.5) #15 ; 0 uses
  %i.dv = load ptr, ptr %i.dj, align 8, !tbaa !34
  tail call void @opj_free(ptr noundef %i.dv) #15
  store ptr null, ptr %i.dj, align 8, !tbaa !34
  store i32 0, ptr %i.dp, align 8, !tbaa !37
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  store ptr %i.dt, ptr %i.dj, align 8, !tbaa !34
  %i.dw = load i32, ptr %i.dp, align 8, !tbaa !37 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dx
  %i.dz = sub i32 %i.dg, %i.dw
  %i.ea = zext i32 %i.dz to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dy, i8 0, i64 %i.ea, i1 false)
  store i32 %i.dg, ptr %i.dp, align 8, !tbaa !37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.p
  %i.eb = load i32, ptr %i.cr, align 4, !tbaa !95 ; 2 uses
  %.not643 = icmp eq i32 %i.eb, 0
  br i1 %.not643, label %._crit_edge633, label %.lr.ph632

.lr.ph632:                                        ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %.0461636, i64 28
  %i.ed = load ptr, ptr %i.dj, align 8, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %.0461636, i64 812
  %i.ef = getelementptr inbounds nuw i8, ptr %.0461636, i64 944
  %i.eg = getelementptr inbounds nuw i8, ptr %.0461636, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0461636, i64 12
  %i.ei = getelementptr inbounds nuw i8, ptr %.0461636, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %.0463634, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %.0461636, i64 804
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph632, %._crit_edge626
  %indvars.iv693 = phi i64 [ 0, %.lr.ph632 ], [ %indvars.iv.next694, %._crit_edge626 ] ; 4 uses
  %.0464629 = phi ptr [ %i.ed, %.lr.ph632 ], [ %i.ru, %._crit_edge626 ] ; 9 uses
  %.0467628 = phi ptr [ %i.ec, %.lr.ph632 ], [ %i.rr, %._crit_edge626 ]
  %.0472627 = phi i32 [ %i.eb, %.lr.ph632 ], [ %i.el, %._crit_edge626 ] ; 2 uses
  %i.el = add i32 %.0472627, -1                   ; 2 uses
  %i.em = load i32, ptr %.0462635, align 8, !tbaa !89
  %i.en = sext i32 %i.em to i64
  %i.eo = zext i32 %i.el to i64                   ; 10 uses
  %notmask730 = shl nsw i64 -1, %i.eo
  %i.ep = xor i64 %notmask730, -1                 ; 8 uses
  %i.eq = add i64 %i.ep, %i.en
  %i.er = ashr i64 %i.eq, %i.eo
  %i.es = trunc i64 %i.er to i32                  ; 3 uses
  store i32 %i.es, ptr %.0464629, align 8, !tbaa !97
  %i.et = load i32, ptr %i.cb, align 4, !tbaa !91
  %i.eu = sext i32 %i.et to i64
  %i.ev = add i64 %i.ep, %i.eu
  %i.ew = ashr i64 %i.ev, %i.eo
  %i.ex = trunc i64 %i.ew to i32                  ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0464629, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !99
  %i.ez = load i32, ptr %i.ch, align 8, !tbaa !92
  %i.fa = sext i32 %i.ez to i64
  %i.fb = add i64 %i.ep, %i.fa
  %i.fc = ashr i64 %i.fb, %i.eo                   ; 2 uses
  %i.fd = trunc i64 %i.fc to i32                  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0464629, i64 8
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !100
  %i.ff = load i32, ptr %i.cn, align 4, !tbaa !93
  %i.fg = sext i32 %i.ff to i64
  %i.fh = add i64 %i.ep, %i.fg
  %i.fi = ashr i64 %i.fh, %i.eo                   ; 2 uses
  %i.fj = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0464629, i64 12
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !101
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv693
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3  ; 6 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv693
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3  ; 6 uses
  %i.fp = shl nsw i32 -1, %i.fm
  %i.fq = and i32 %i.fp, %i.es                    ; 3 uses
  %i.fr = shl nsw i32 -1, %i.fo
  %i.fs = and i32 %i.fr, %i.ex                    ; 3 uses
  %sext576 = shl i64 %i.fc, 32
  %i.ft = ashr exact i64 %sext576, 32
  %i.fu = zext i32 %i.fm to i64                   ; 2 uses
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = add nsw i64 %i.ft, -1
  %i.fx = add i64 %i.fw, %i.fv
  %i.fy = ashr i64 %i.fx, %i.fu
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = shl i32 %i.fz, %i.fm                    ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, -1
  br i1 %i.gb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gc = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.6) #15 ; 0 uses
  br label %.critedge

bb.w:                                             ; preds = %bb.u
  %sext731 = shl i64 %i.fi, 32
  %i.gd = ashr exact i64 %sext731, 32
  %i.ge = zext i32 %i.fo to i64                   ; 2 uses
  %notmask = shl nsw i64 -1, %i.ge
  %i.gf = xor i64 %notmask, -1
  %i.gg = add i64 %i.gd, %i.gf
  %i.gh = ashr i64 %i.gg, %i.ge
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = shl i32 %i.gi, %i.fo                    ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  br i1 %i.gk, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gl = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.6) #15 ; 0 uses
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.gm = icmp eq i32 %i.es, %i.fd
  %i.gn = sub nsw i32 %i.ga, %i.fq
  %i.go = ashr i32 %i.gn, %i.fm
  %i.gp = select i1 %i.gm, i32 0, i32 %i.go       ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0464629, i64 16 ; 2 uses
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !102
  %i.gr = icmp eq i32 %i.ex, %i.fj
  %i.gs = sub nsw i32 %i.gj, %i.fs
  %i.gt = ashr i32 %i.gs, %i.fo
  %i.gu = select i1 %i.gr, i32 0, i32 %i.gt       ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0464629, i64 20
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !103
  %.not523 = icmp eq i32 %i.gp, 0
  br i1 %.not523, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %mul524 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.gp, i32 %i.gu)
  %mul.ov525 = extractvalue { i32, i1 } %mul524, 1
  br i1 %mul.ov525, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gw = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str) #15 ; 0 uses
  br label %.critedge

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.gx = mul i32 %i.gu, %i.gp                    ; 5 uses
  %i.gy = icmp ugt i32 %i.gx, 76695844
  br i1 %i.gy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gz = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str) #15 ; 0 uses
  br label %.critedge

bb.ad:                                            ; preds = %bb.ab
  %i.ha = mul nuw i32 %i.gx, 56                   ; 5 uses
  %i.hb = icmp eq i64 %indvars.iv693, 0           ; 2 uses
  br i1 %i.hb, label %.lr.ph625, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hc = sext i32 %i.fq to i64
  %i.hd = add nsw i64 %i.hc, 1
  %i.he = lshr i64 %i.hd, 1
  %i.hf = trunc i64 %i.he to i32
  %i.hg = sext i32 %i.fs to i64
  %i.hh = add nsw i64 %i.hg, 1
  %i.hi = lshr i64 %i.hh, 1
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = add i32 %i.fm, -1
  %i.hl = add i32 %i.fo, -1
  br label %.lr.ph625

.lr.ph625:                                        ; preds = %bb.ae, %bb.ad
  %.sink693 = phi i32 [ 3, %bb.ae ], [ 1, %bb.ad ]
  %.0494 = phi i32 [ %i.hj, %bb.ae ], [ %i.fs, %bb.ad ]
  %.0493 = phi i32 [ %i.hk, %bb.ae ], [ %i.fm, %bb.ad ] ; 3 uses
  %.0492 = phi i32 [ %i.hl, %bb.ae ], [ %i.fo, %bb.ad ] ; 3 uses
  %.0491 = phi i32 [ %i.hf, %bb.ae ], [ %i.fq, %bb.ad ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.0464629, i64 24 ; 2 uses
  store i32 %.sink693, ptr %i.hm, align 8, !tbaa !104
  %i.hn = load i32, ptr %i.eg, align 4, !tbaa !105
  %i.ho = tail call noundef i32 @llvm.umin.i32(i32 %i.hn, i32 %.0493) ; 8 uses
  %i.hp = load i32, ptr %i.eh, align 4, !tbaa !106
  %i.hq = tail call noundef i32 @llvm.umin.i32(i32 %i.hp, i32 %.0492) ; 8 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0464629, i64 32
  %i.hs = zext i32 %.0472627 to i64               ; 4 uses
  %i.ht = shl nuw i64 1, %i.hs                    ; 2 uses
  %i.hu = icmp ne i32 %i.gx, 0
  %i.hv = zext i32 %i.ha to i64                   ; 3 uses
  %.not645 = icmp eq i32 %i.gx, 0
  %i.hw = shl nuw i32 1, %.0493
  %i.hx = shl nuw i32 1, %.0492
  %i.hy = zext i32 %i.ho to i64                   ; 2 uses
  %notmask646 = shl nsw i64 -1, %i.hy
  %i.hz = xor i64 %notmask646, -1
  %i.ia = zext i32 %i.hq to i64                   ; 2 uses
  %notmask647 = shl nsw i64 -1, %i.ia
  %i.ib = xor i64 %notmask647, -1
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph625, %opj_tcd_is_band_empty.exit.thread
  %.0458623 = phi i32 [ 0, %.lr.ph625 ], [ %i.rp, %opj_tcd_is_band_empty.exit.thread ] ; 2 uses
  %.0466620 = phi ptr [ %i.hr, %.lr.ph625 ], [ %i.rq, %opj_tcd_is_band_empty.exit.thread ] ; 12 uses
  %.1468619 = phi ptr [ %.0467628, %.lr.ph625 ], [ %i.rr, %opj_tcd_is_band_empty.exit.thread ] ; 4 uses
  br i1 %i.hb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ic = load i32, ptr %.0462635, align 8, !tbaa !89
  %i.id = sext i32 %i.ic to i64
  %i.ie = add i64 %i.ep, %i.id
  %i.if = ashr i64 %i.ie, %i.eo
  %i.ig = load i32, ptr %i.cb, align 4, !tbaa !91
  %i.ih = sext i32 %i.ig to i64
  %i.ii = add i64 %i.ep, %i.ih
  %i.ij = ashr i64 %i.ii, %i.eo
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ik = add nuw i32 %.0458623, 1                ; 3 uses
  %i.il = and i32 %i.ik, 1
  %i.im = lshr i32 %i.ik, 1
  %i.in = load i32, ptr %.0462635, align 8, !tbaa !89
  %i.io = sext i32 %i.in to i64
  %i.ip = zext nneg i32 %i.il to i64
  %i.iq = shl nuw i64 %i.ip, %i.eo
  %i.ir = xor i64 %i.iq, -1
  %i.is = add i64 %i.ht, %i.ir                    ; 2 uses
  %i.it = add i64 %i.is, %i.io
  %i.iu = ashr i64 %i.it, %i.hs
  %i.iv = load i32, ptr %i.cb, align 4, !tbaa !91
  %i.iw = sext i32 %i.iv to i64
  %i.ix = zext nneg i32 %i.im to i64
  %i.iy = shl i64 %i.ix, %i.eo
  %i.iz = xor i64 %i.iy, -1
  %i.ja = add i64 %i.ht, %i.iz                    ; 2 uses
  %i.jb = add i64 %i.ja, %i.iw
  %i.jc = ashr i64 %i.jb, %i.hs
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink777.a = phi i64 [ %i.is, %bb.ah ], [ %i.ep, %bb.ag ]
  %.sink776 = phi i64 [ %i.hs, %bb.ah ], [ %i.eo, %bb.ag ] ; 2 uses
  %.sink774 = phi i64 [ %i.ja, %bb.ah ], [ %i.ep, %bb.ag ]
  %i.jd = phi i32 [ %i.ik, %bb.ah ], [ 0, %bb.ag ] ; 4 uses
  %.in = phi i64 [ %i.iu, %bb.ah ], [ %i.if, %bb.ag ]
  %.in732 = phi i64 [ %i.jc, %bb.ah ], [ %i.ij, %bb.ag ]
  %i.je = load i32, ptr %i.ch, align 8, !tbaa !92
  %i.jf = sext i32 %i.je to i64
  %i.jg = add i64 %.sink777.a, %i.jf
  %i.jh = ashr i64 %i.jg, %.sink776
  %i.ji = load i32, ptr %i.cn, align 4, !tbaa !93
  %i.jj = sext i32 %i.ji to i64
  %i.jk = add i64 %.sink774, %i.jj
  %i.jl = ashr i64 %i.jk, %.sink776
  %i.jm = trunc i64 %i.jl to i32                  ; 2 uses
  %i.jn = trunc i64 %i.jh to i32                  ; 2 uses
  %i.jo = trunc i64 %.in732 to i32                ; 2 uses
  %i.jp = trunc i64 %.in to i32                   ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.0466620, i64 16
  store i32 %i.jd, ptr %i.jq, align 8, !tbaa !107
  store i32 %i.jp, ptr %.0466620, align 8, !tbaa !108
  %i.jr = getelementptr inbounds nuw i8, ptr %.0466620, i64 4 ; 2 uses
  store i32 %i.jo, ptr %i.jr, align 4, !tbaa !109
  %i.js = getelementptr inbounds nuw i8, ptr %.0466620, i64 8 ; 2 uses
  store i32 %i.jn, ptr %i.js, align 8, !tbaa !110
  %i.jt = getelementptr inbounds nuw i8, ptr %.0466620, i64 12 ; 2 uses
  store i32 %i.jm, ptr %i.jt, align 4, !tbaa !111
  br i1 %.not519, label %.critedge544, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ju = icmp eq i32 %i.jn, %i.jp
  %.not577 = icmp eq i32 %i.jm, %i.jo
  %or.cond779 = select i1 %i.ju, i1 true, i1 %.not577
  br i1 %or.cond779, label %opj_tcd_is_band_empty.exit.thread, label %bb.ak

.critedge544:                                     ; preds = %bb.ai
  %i.jv = load i32, ptr %i.ei, align 4, !tbaa !112
  %i.jw = icmp eq i32 %i.jv, 0
  %i.jx = icmp eq i32 %i.jd, 0
  %or.cond780 = select i1 %i.jw, i1 true, i1 %i.jx
  br i1 %or.cond780, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.old = icmp eq i32 %i.jd, 0
  br i1 %.old, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge544, %bb.ak
  %i.jy = icmp eq i32 %i.jd, 3
  %i.jz = select i1 %i.jy, i32 2, i32 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.critedge544
  %i.ka = phi i32 [ 0, %.critedge544 ], [ %i.jz, %bb.al ], [ 0, %bb.ak ]
  %i.kb = load i32, ptr %i.ej, align 8, !tbaa !113
  %i.kc = add nsw i32 %i.kb, %i.ka
  %i.kd = getelementptr inbounds nuw i8, ptr %.1468619, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !114
  %i.kf = sitofp i32 %i.ke to double
  %i.kg = fmul nnan double %i.kf, f0x3F40000000000000
  %i.kh = fadd nnan double %i.kg, 1.000000e+00
  %i.ki = load i32, ptr %.1468619, align 4, !tbaa !116
  %i.kj = sub i32 %i.kc, %i.ki
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %i.kj)
  %i.kk = fmul double %ldexp, %i.kh
  %i.kl = fptrunc double %i.kk to float
  %i.km = getelementptr inbounds nuw i8, ptr %.0466620, i64 40
  store float %i.kl, ptr %i.km, align 8, !tbaa !117
  %i.kn = load i32, ptr %.1468619, align 4, !tbaa !116
  %i.ko = load i32, ptr %i.ek, align 4, !tbaa !118
  %i.kp = add i32 %i.kn, -1
  %i.kq = add i32 %i.kp, %i.ko
  %i.kr = getelementptr inbounds nuw i8, ptr %.0466620, i64 36
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !119
  %i.ks = getelementptr inbounds nuw i8, ptr %.0466620, i64 24 ; 6 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !38 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  %or.cond = and i1 %i.hu, %i.ku
  br i1 %or.cond, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.kv = tail call ptr @opj_malloc(i64 noundef %i.hv) #15 ; 3 uses
  store ptr %i.kv, ptr %i.ks, align 8, !tbaa !38
  %.not529 = icmp eq ptr %i.kv, null
  br i1 %.not529, label %bb.ao, label %.thread735

bb.ao:                                            ; preds = %bb.an
  %i.kw = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.7) #15 ; 0 uses
  br label %.critedge

.thread735:                                       ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kv, i8 0, i64 %i.hv, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %.0466620, i64 32
  store i32 %i.ha, ptr %i.kx, align 8, !tbaa !42
  br label %.lr.ph618

bb.ap:                                            ; preds = %bb.am
  %i.ky = getelementptr inbounds nuw i8, ptr %.0466620, i64 32 ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !42
  %i.la = icmp ult i32 %i.kz, %i.ha
  br i1 %i.la, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.lb = tail call ptr @opj_realloc(ptr noundef %i.kt, i64 noundef %i.hv) #15 ; 3 uses
  %.not527.not = icmp eq ptr %i.lb, null
  br i1 %.not527.not, label %.thread563, label %bb.ar

.thread563:                                       ; preds = %bb.aq
  %i.lc = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.7) #15 ; 0 uses
  %i.ld = load ptr, ptr %i.ks, align 8, !tbaa !38
  tail call void @opj_free(ptr noundef %i.ld) #15
  store ptr null, ptr %i.ks, align 8, !tbaa !38
  store i32 0, ptr %i.ky, align 8, !tbaa !42
  br label %.critedge

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.lb, ptr %i.ks, align 8, !tbaa !38
  %i.le = load i32, ptr %i.ky, align 8, !tbaa !42 ; 2 uses
end_hunk_0
begin_hunk_1_@opj_tcd_init_tile:bb.a
  br i1 %.not519, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge549.us
  %indvars.iv687 = phi i64 [ %indvars.iv.next688, %.critedge549.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.oe = load i32, ptr %i.mr, align 8, !tbaa !124 ; 2 uses
  %i.of = trunc nuw nsw i64 %indvars.iv687 to i32 ; 2 uses
  %i.og = urem i32 %i.of, %i.oe
  %i.oh = add i32 %i.og, %i.me                    ; 2 uses
  %i.oi = shl i32 %i.oh, %i.ho
  %i.oj = udiv i32 %i.of, %i.oe
  %i.ok = add i32 %i.oj, %i.mf                    ; 2 uses
  %i.ol = shl i32 %i.ok, %i.hq
  %i.om = add i32 %i.oh, 1
  %i.on = shl i32 %i.om, %i.ho
  %i.oo = add i32 %i.ok, 1
  %i.op = shl i32 %i.oo, %i.hq
  %i.oq = load ptr, ptr %i.mz, align 8, !tbaa !31
  %i.or = getelementptr inbounds nuw [88 x i8], ptr %i.oq, i64 %indvars.iv687 ; 13 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !127 ; 3 uses
  %.not.i554.us = icmp eq ptr %i.os, null
  br i1 %.not.i554.us, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.split.us
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 56 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !131 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !132
  %i.ox = getelementptr inbounds nuw i8, ptr %i.or, i64 64 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !133
  %i.oz = getelementptr inbounds nuw i8, ptr %i.or, i64 72
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !134
  tail call void @opj_aligned_free(ptr noundef %i.pa) #15
  %i.pb = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pb, i8 0, i64 72, i1 false)
  store ptr %i.os, ptr %i.or, align 8, !tbaa !127
  store i32 %i.ou, ptr %i.ot, align 8, !tbaa !131
  %.not28.i.us = icmp eq i32 %i.ou, 0
  br i1 %.not28.i.us, label %._crit_edge.i.us, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %bb.bi
  %i.pc = zext i32 %i.ou to i64
  %i.pd = mul nuw nsw i64 %i.pc, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.os, i8 0, i64 %i.pd, i1 false)
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph.preheader.i.us, %bb.bi
  store ptr %i.ow, ptr %i.ov, align 8, !tbaa !132
  store i32 %i.oy, ptr %i.ox, align 8, !tbaa !133
  br label %.critedge549.us

bb.bj:                                            ; preds = %.lr.ph.split.us
  %i.pe = tail call ptr @opj_calloc(i64 noundef 10, i64 noundef 24) #15 ; 2 uses
  store ptr %i.pe, ptr %i.or, align 8, !tbaa !127
  %.not26.i.us = icmp eq ptr %i.pe, null
  br i1 %.not26.i.us, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pf = getelementptr inbounds nuw i8, ptr %i.or, i64 56
  store i32 10, ptr %i.pf, align 8, !tbaa !131
  br label %.critedge549.us

.critedge549.us:                                  ; preds = %bb.bk, %._crit_edge.i.us
  %i.pg = load i32, ptr %.0470614, align 8, !tbaa !120
  %i.ph = tail call noundef i32 @llvm.smax.i32(i32 %i.oi, i32 %i.pg)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  store i32 %i.ph, ptr %i.pi, align 8, !tbaa !135
  %i.pj = load i32, ptr %i.lx, align 4, !tbaa !121
  %i.pk = tail call noundef i32 @llvm.smax.i32(i32 %i.ol, i32 %i.pj)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.or, i64 20
  store i32 %i.pk, ptr %i.pl, align 4, !tbaa !136
  %i.pm = load i32, ptr %i.ma, align 8, !tbaa !122
  %i.pn = tail call noundef i32 @llvm.smin.i32(i32 %i.on, i32 %i.pm)
  %i.po = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  store i32 %i.pn, ptr %i.po, align 8, !tbaa !137
  %i.pp = load i32, ptr %i.md, align 4, !tbaa !123
  %i.pq = tail call noundef i32 @llvm.smin.i32(i32 %i.op, i32 %i.pp)
  %i.pr = getelementptr inbounds nuw i8, ptr %i.or, i64 28
  store i32 %i.pq, ptr %i.pr, align 4, !tbaa !138
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1 ; 2 uses
  %exitcond691.not = icmp eq i64 %indvars.iv.next688, %wide.trip.count690
  br i1 %exitcond691.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !139

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge549
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge549 ], [ 0, %.lr.ph ] ; 3 uses
  %i.ps = load i32, ptr %i.mr, align 8, !tbaa !124 ; 2 uses
  %i.pt = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.pu = urem i32 %i.pt, %i.ps
  %i.pv = add i32 %i.pu, %i.me                    ; 2 uses
  %i.pw = shl i32 %i.pv, %i.ho
  %i.px = udiv i32 %i.pt, %i.ps
  %i.py = add i32 %i.px, %i.mf                    ; 2 uses
  %i.pz = shl i32 %i.py, %i.hq
  %i.qa = add i32 %i.pv, 1
  %i.qb = shl i32 %i.qa, %i.ho
  %i.qc = add i32 %i.py, 1
  %i.qd = shl i32 %i.qc, %i.hq
  %i.qe = load ptr, ptr %i.mz, align 8, !tbaa !31
  %i.qf = getelementptr inbounds nuw [64 x i8], ptr %i.qe, i64 %indvars.iv ; 11 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !140
  %.not.i = icmp eq ptr %i.qh, null
  br i1 %.not.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.split
  %i.qi = tail call ptr @opj_calloc(i64 noundef 100, i64 noundef 24) #15 ; 2 uses
  store ptr %i.qi, ptr %i.qg, align 8, !tbaa !140
  %.not6.i = icmp eq ptr %i.qi, null
  br i1 %.not6.i, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph.split
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qf, i64 16 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !144
  %.not7.i = icmp eq ptr %i.qk, null
  br i1 %.not7.i, label %bb.bn, label %opj_tcd_code_block_enc_allocate.exit

bb.bn:                                            ; preds = %bb.bm
  %i.ql = tail call ptr @opj_calloc(i64 noundef 100, i64 noundef 24) #15 ; 2 uses
  store ptr %i.ql, ptr %i.qj, align 8, !tbaa !144
  %.not8.i = icmp eq ptr %i.ql, null
  br i1 %.not8.i, label %.critedge, label %opj_tcd_code_block_enc_allocate.exit

opj_tcd_code_block_enc_allocate.exit:             ; preds = %bb.bn, %bb.bm
  %i.qm = load i32, ptr %.0470614, align 8, !tbaa !120
  %i.qn = tail call noundef i32 @llvm.smax.i32(i32 %i.pw, i32 %i.qm) ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  store i32 %i.qn, ptr %i.qo, align 8, !tbaa !145
  %i.qp = load i32, ptr %i.lx, align 4, !tbaa !121
  %i.qq = tail call noundef i32 @llvm.smax.i32(i32 %i.pz, i32 %i.qp) ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qf, i64 28
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !146
  %i.qs = load i32, ptr %i.ma, align 8, !tbaa !122
  %i.qt = tail call noundef i32 @llvm.smin.i32(i32 %i.qb, i32 %i.qs) ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qf, i64 32
  store i32 %i.qt, ptr %i.qu, align 8, !tbaa !147
  %i.qv = load i32, ptr %i.md, align 4, !tbaa !123
  %i.qw = tail call noundef i32 @llvm.smin.i32(i32 %i.qd, i32 %i.qv) ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qf, i64 36
  store i32 %i.qw, ptr %i.qx, align 4, !tbaa !148
  %i.qy = sub nsw i32 %i.qt, %i.qn
  %i.qz = sub nsw i32 %i.qw, %i.qq
  %i.ra = shl i32 %i.qy, 2
  %i.rb = mul i32 %i.qz, %i.ra                    ; 2 uses
  %i.rc = add i32 %i.rb, 74                       ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qf, i64 48 ; 3 uses
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !149
  %i.rf = icmp ugt i32 %i.rc, %i.re
  br i1 %i.rf, label %bb.bo, label %.critedge549

bb.bo:                                            ; preds = %opj_tcd_code_block_enc_allocate.exit
  %i.rg = load ptr, ptr %i.qf, align 8, !tbaa !150 ; 2 uses
  %.not.i553 = icmp eq ptr %i.rg, null
  br i1 %.not.i553, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.rh = getelementptr inbounds i8, ptr %i.rg, i64 -1
  tail call void @opj_free(ptr noundef nonnull %i.rh) #15
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ri = add i32 %i.rb, 75
  %i.rj = zext i32 %i.ri to i64
  %i.rk = tail call ptr @opj_malloc(i64 noundef %i.rj) #15 ; 3 uses
  store ptr %i.rk, ptr %i.qf, align 8, !tbaa !150
  %.not18.i = icmp eq ptr %i.rk, null
  br i1 %.not18.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 %i.rc, ptr %i.rd, align 8, !tbaa !149
  store i8 0, ptr %i.rk, align 1, !tbaa !31
  %i.rl = load ptr, ptr %i.qf, align 8, !tbaa !150
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 1
  store ptr %i.rm, ptr %i.qf, align 8, !tbaa !150
  br label %.critedge549

bb.bs:                                            ; preds = %bb.bq
  store i32 0, ptr %i.rd, align 8, !tbaa !149
  br label %.critedge

.critedge549:                                     ; preds = %bb.br, %opj_tcd_code_block_enc_allocate.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count690
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !139

._crit_edge:                                      ; preds = %.critedge549, %.critedge549.us, %bb.bh
  %i.rn = getelementptr inbounds nuw i8, ptr %.0470614, i64 56
  %i.ro = add nuw i32 %.0459616, 1                ; 2 uses
  %exitcond692.not = icmp eq i32 %i.ro, %i.gx
  br i1 %exitcond692.not, label %opj_tcd_is_band_empty.exit.thread, label %bb.at, !llvm.loop !151

opj_tcd_is_band_empty.exit.thread:                ; preds = %._crit_edge, %bb.as, %bb.aj
  %i.rp = add nuw i32 %.0458623, 1                ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.0466620, i64 48
  %i.rr = getelementptr inbounds nuw i8, ptr %.1468619, i64 8 ; 2 uses
  %i.rs = load i32, ptr %i.hm, align 8, !tbaa !104
  %i.rt = icmp ult i32 %i.rp, %i.rs
  br i1 %i.rt, label %bb.af, label %._crit_edge626, !llvm.loop !152

._crit_edge626:                                   ; preds = %opj_tcd_is_band_empty.exit.thread
  %.pre = load i32, ptr %i.cr, align 4, !tbaa !95
  %i.ru = getelementptr inbounds nuw i8, ptr %.0464629, i64 192
  %indvars.iv.next694 = add nuw nsw i64 %indvars.iv693, 1 ; 2 uses
  %5 = zext i32 %.pre to i64
  %i.rv = icmp samesign ult i64 %indvars.iv.next694, %5
  br i1 %i.rv, label %bb.u, label %._crit_edge633, !llvm.loop !153

._crit_edge633:                                   ; preds = %._crit_edge626, %bb.t
  %i.rw = getelementptr inbounds nuw i8, ptr %.0461636, i64 1080
  %i.rx = getelementptr inbounds nuw i8, ptr %.0462635, i64 112
  %i.ry = getelementptr inbounds nuw i8, ptr %.0463634, i64 64
  %i.rz = add nuw i32 %.0456637, 1                ; 2 uses
  %i.sa = load i32, ptr %i.be, align 8, !tbaa !30
  %i.sb = icmp ult i32 %i.rz, %i.sa
  br i1 %i.sb, label %bb.g, label %.critedge, !llvm.loop !154

.critedge:                                        ; preds = %bb.o, %._crit_edge633, %bb.aw, %bb.bl, %bb.bn, %bb.bj, %.preheader, %bb.bs, %.thread565, %bb.au, %.thread563, %bb.x, %bb.v, %.thread, %bb.aa, %bb.ac, %bb.ao, %bb.j, %bb.l, %bb.f, %bb.d, %bb.b
  %.22 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.bs ], [ 0, %.thread ], [ 0, %bb.aw ], [ 0, %bb.l ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %.thread563 ], [ 0, %bb.ao ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.au ], [ 0, %bb.bj ], [ 0, %.thread565 ], [ 1, %.preheader ], [ 0, %bb.bl ], [ 0, %bb.bn ], [ 0, %bb.o ], [ 1, %._crit_edge633 ]
  ret i32 %.22
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_tcd_init_decode_tile(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @opj_tcd_init_tile(ptr noundef %0, i32 noundef %1, i32 noundef 0, i64 noundef 88, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @opj_tcd_reinit_segment(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @opj_tcd_get_decoded_tile_size(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not68 = icmp eq i32 %i.d, 0
  br i1 %.not68, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %.not52 = icmp eq i32 %1, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.04461 = phi ptr [ %i.k, %.lr.ph ], [ %i.au, %bb.k ] ; 3 uses
  %.04660 = phi ptr [ %i.f, %.lr.ph ], [ %i.at, %bb.k ] ; 2 uses
  %.04859 = phi i32 [ 0, %.lr.ph ], [ %i.as, %bb.k ] ; 2 uses
  %.05058 = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.k ]
  %i.m = getelementptr inbounds nuw i8, ptr %.04660, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !113  ; 2 uses
  %i.o = lshr i32 %i.n, 3
  %i.p = and i32 %i.n, 7
  %.not = icmp ne i32 %i.p, 0
  %i.q = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %i.o, %i.q       ; 2 uses
  %i.r = icmp eq i32 %spec.select, 3
  %spec.store.select = select i1 %i.r, i32 4, i32 %spec.select ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04461, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %.04461, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !96
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [192 x i8], ptr %i.t, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -192
  br i1 %.not52, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i32, ptr %i.l, align 8, !tbaa !155
  %.not53 = icmp eq i32 %i.z, 0
  br i1 %.not53, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !156
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !157
  %i.ae = sub i32 %i.ab, %i.ad
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -184
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !100
  %i.ah = load i32, ptr %i.y, align 8, !tbaa !97
  %i.ai = sub nsw i32 %i.ag, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ -180, %bb.e ], [ -4, %bb.d ]
  %.sink73 = phi i64 [ -188, %bb.e ], [ -12, %bb.d ]
  %.041 = phi i32 [ %i.ai, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 %.sink
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.x, i64 %.sink73
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 2 uses
  %i.an = sub i32 %i.ak, %i.am                    ; 2 uses
  %.not54 = icmp eq i32 %i.ak, %i.am
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.041, i32 %i.an)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ao = mul i32 %i.an, %.041                    ; 2 uses
  %.not55 = icmp eq i32 %spec.store.select, 0
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %mul56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.store.select, i32 %i.ao)
  %mul.ov57 = extractvalue { i32, i1 } %mul56, 1
  br i1 %mul.ov57, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = mul i32 %i.ao, %spec.store.select       ; 2 uses
  %i.aq = xor i32 %.04859, -1
  %i.ar = icmp ugt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add i32 %i.ap, %.04859                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04660, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %.04461, i64 112
  %i.av = add nuw i32 %.05058, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %i.d
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !158

.critedge:                                        ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.g ], [ %i.as, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_tcd_encode_tile(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x [10 x [3 x i32]]], align 16 ; 6 uses
  %i.b = alloca [100 x double], align 16          ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !159
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.cj

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  store i32 %1, ptr %i.g, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = zext i32 %1 to i64                       ; 3 uses
  %i.m = getelementptr inbounds nuw [5696 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !161
  %.not = icmp eq ptr %5, null                    ; 4 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !95
  %.not122 = icmp eq i32 %i.u, 0
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 5600
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !162
  %i.ab = getelementptr inbounds nuw [608 x i8], ptr %i.aa, i64 %i.l ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 156
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 812
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 944
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 420
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 8 uses
  %.062121 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %bb.d ]
  %i.ai = getelementptr inbounds nuw [192 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
end_hunk_1
