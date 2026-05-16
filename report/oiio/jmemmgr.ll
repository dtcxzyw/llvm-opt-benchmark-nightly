inline.NumInlined: 16
inline.NumDeleted: 3
begin_hunk_0_@realize_virt_arrays:bb.a
  %i.bx = add nsw i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %.1108136, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !80 ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = sdiv i64 %i.bx, %i.ca
  %i.cc = add nsw i64 %i.cb, 1
  %.not116 = icmp ugt i64 %i.cc, %.0104
  br i1 %.not116, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.1108136, i64 20
  store i32 %i.bv, ptr %i.cd, align 4, !tbaa !99
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ce = mul i32 %i.bz, %i.bn
  %i.cf = getelementptr inbounds nuw i8, ptr %.1108136, i64 20 ; 2 uses
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !99
  %i.cg = getelementptr inbounds nuw i8, ptr %.1108136, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %.1108136, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !79
  %i.cj = zext i32 %i.ci to i64
  %i.ck = mul nuw nsw i64 %i.cj, %i.bw
  %i.cl = shl nuw i64 %i.ck, %i.bo
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %i.cg, i64 noundef %i.cl) #9
  %i.cm = getelementptr inbounds nuw i8, ptr %.1108136, i64 44
  store i32 1, ptr %i.cm, align 4, !tbaa !82
  %.pre = load i32, ptr %i.cf, align 4, !tbaa !99
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cn = phi i32 [ %.pre, %bb.q ], [ %i.bv, %bb.p ]
  %i.co = getelementptr inbounds nuw i8, ptr %.1108136, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !79
  %i.cq = tail call ptr @alloc_sarray(ptr noundef %0, i32 noundef 1, i32 noundef %i.cp, i32 noundef %i.cn)
  store ptr %i.cq, ptr %.1108136, align 8, !tbaa !74
  %i.cr = load i32, ptr %i.bp, align 8, !tbaa !56
  %i.cs = getelementptr inbounds nuw i8, ptr %.1108136, i64 24
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !100
  %i.ct = getelementptr inbounds nuw i8, ptr %.1108136, i64 28
  store i32 0, ptr %i.ct, align 4, !tbaa !101
  %i.cu = getelementptr inbounds nuw i8, ptr %.1108136, i64 32
  store i32 0, ptr %i.cu, align 8, !tbaa !102
  %i.cv = getelementptr inbounds nuw i8, ptr %.1108136, i64 40
  store i32 0, ptr %i.cv, align 8, !tbaa !103
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %.1108136, i64 48
  %.1108 = load ptr, ptr %i.cw, align 8, !tbaa !95 ; 2 uses
  %.not113 = icmp eq ptr %.1108, null
  br i1 %.not113, label %.preheader, label %bb.n, !llvm.loop !104

bb.t:                                             ; preds = %.lr.ph142, %bb.af
  %.1106141 = phi ptr [ %.1106139, %.lr.ph142 ], [ %.1106, %bb.af ] ; 15 uses
  %i.cx = load ptr, ptr %.1106141, align 8, !tbaa !85
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %.1106141, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !88 ; 3 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = add nsw i64 %i.db, -1
  %i.dd = getelementptr inbounds nuw i8, ptr %.1106141, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !90 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = sdiv i64 %i.dc, %i.df
  %i.dh = add nsw i64 %i.dg, 1
  %.not115 = icmp ugt i64 %i.dh, %.0104
  br i1 %.not115, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %.1106141, i64 20
  store i32 %i.da, ptr %i.di, align 4, !tbaa !105
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dj = mul i32 %i.de, %i.bq
  %i.dk = getelementptr inbounds nuw i8, ptr %.1106141, i64 20 ; 2 uses
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !105
  %i.dl = getelementptr inbounds nuw i8, ptr %.1106141, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %.1106141, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !89
  %i.do = zext i32 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.db, 7
  %i.dq = mul i64 %i.dp, %i.do
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %i.dl, i64 noundef %i.dq) #9
  %i.dr = getelementptr inbounds nuw i8, ptr %.1106141, i64 44
  store i32 1, ptr %i.dr, align 4, !tbaa !92
  %.pre144 = load i32, ptr %i.dk, align 4, !tbaa !105
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ds = phi i32 [ %.pre144, %bb.w ], [ %i.da, %bb.v ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1106141, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !89 ; 2 uses
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dw = zext i32 %i.du to i64                   ; 6 uses
  %i.dx = shl nuw nsw i64 %i.dw, 7                ; 2 uses
  %i.dy = udiv i64 999999976, %i.dx
  %i.dz = icmp ugt i32 %i.du, 7812499
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ea = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store i32 72, ptr %i.eb, align 8, !tbaa !16
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !21
  tail call void %i.ec(ptr noundef nonnull %0) #9, !inline_history !106
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ed = zext i32 %i.ds to i64                   ; 2 uses
  %.03741.i = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 %i.ed)
  %.037.i = trunc nuw nsw i64 %.03741.i to i32    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 160
  store i32 %.037.i, ptr %i.ee, align 8, !tbaa !56
  %i.ef = shl nuw nsw i64 %i.ed, 3
  %i.eg = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ef) ; 6 uses
  %.not49.i = icmp eq i32 %i.ds, 0
  br i1 %.not49.i, label %alloc_barray.exit, label %.lr.ph48.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %alloc_large.exit
  %.1.lcssa.i = phi i32 [ %.03647.i, %alloc_large.exit ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.gh, %.lr.ph.i ] ; 2 uses
  %i.eh = icmp ult i32 %.1.lcssa.i, %i.ds
  br i1 %i.eh, label %.lr.ph48.i, label %alloc_barray.exit, !llvm.loop !71

.lr.ph48.i:                                       ; preds = %bb.z, %.loopexit.i
  %.03647.i = phi i32 [ %.1.lcssa.i, %.loopexit.i ], [ 0, %bb.z ] ; 4 uses
  %.13846.i = phi i32 [ %i.ej, %.loopexit.i ], [ %.037.i, %bb.z ]
  %i.ei = sub nuw i32 %i.ds, %.03647.i
  %i.ej = tail call i32 @llvm.umin.i32(i32 %.13846.i, i32 %i.ei) ; 7 uses
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = mul i64 %i.dx, %i.ek                    ; 3 uses
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.en = icmp ugt i64 %i.el, 1000000000
  br i1 %i.en, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph48.i
  %i.eo = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i32 56, ptr %i.ep, align 8, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  store i32 8, ptr %i.eq, align 4, !tbaa !20
  %i.er = load ptr, ptr %0, align 8, !tbaa !15
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !21
  tail call void %i.es(ptr noundef nonnull %0) #9, !inline_history !107
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph48.i
  %i.et = or disjoint i64 %i.el, 31               ; 3 uses
  %i.eu = icmp ugt i64 %i.et, 1000000000
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ev = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  store i32 56, ptr %i.ew, align 8, !tbaa !16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 44
  store i32 3, ptr %i.ex, align 4, !tbaa !20
  %i.ey = load ptr, ptr %0, align 8, !tbaa !15
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !21
  tail call void %i.ez(ptr noundef nonnull %0) #9, !inline_history !107
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fa = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %i.et) #9 ; 6 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ae, label %alloc_large.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fc = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  store i32 56, ptr %i.fd, align 8, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 44
  store i32 4, ptr %i.fe, align 4, !tbaa !20
  %i.ff = load ptr, ptr %0, align 8, !tbaa !15
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !21
  tail call void %i.fg(ptr noundef nonnull %0) #9, !inline_history !107
  br label %alloc_large.exit

alloc_large.exit:                                 ; preds = %bb.ad, %bb.ae
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 152 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !39
  %i.fj = add i64 %i.fi, %i.et
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !39
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 128 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !49
  store ptr %i.fl, ptr %i.fa, align 8, !tbaa !51
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %i.el, ptr %i.fm, align 8, !tbaa !53
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 0, ptr %i.fn, align 8, !tbaa !54
  store ptr %i.fa, ptr %i.fk, align 8, !tbaa !49
  %.not42.i = icmp eq i32 %i.ej, 0
  br i1 %.not42.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %alloc_large.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %1 = ptrtoint ptr %i.fo to i64
  %2 = and i64 %1, 7                              ; 2 uses
  %.not.i117 = icmp eq i64 %2, 0
  %3 = sub nuw nsw i64 8, %2
  %.0.idx.i = select i1 %.not.i117, i64 0, i64 %3
  %.0.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.idx.i ; 2 uses
  %xtraiter = and i32 %i.ej, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.045.i.prol = phi ptr [ %i.fs, %.lr.ph.i.prol ], [ %.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %.03544.i.prol = phi i32 [ %i.ft, %.lr.ph.i.prol ], [ %i.ej, %.lr.ph.i.preheader ]
  %.143.i.prol = phi i32 [ %i.fp, %.lr.ph.i.prol ], [ %.03647.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fp = add i32 %.143.i.prol, 1                 ; 3 uses
  %i.fq = zext i32 %.143.i.prol to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fq
  store ptr %.045.i.prol, ptr %i.fr, align 8, !tbaa !64
  %i.fs = getelementptr inbounds nuw [128 x i8], ptr %.045.i.prol, i64 %i.dw ; 2 uses
  %i.ft = add i32 %.03544.i.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !108

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.fp, %.lr.ph.i.prol ]
  %.045.i.unr = phi ptr [ %.0.i, %.lr.ph.i.preheader ], [ %i.fs, %.lr.ph.i.prol ]
  %.03544.i.unr = phi i32 [ %i.ej, %.lr.ph.i.preheader ], [ %i.ft, %.lr.ph.i.prol ]
  %.143.i.unr = phi i32 [ %.03647.i, %.lr.ph.i.preheader ], [ %i.fp, %.lr.ph.i.prol ]
  %i.fu = icmp ult i32 %i.ej, 4
  br i1 %i.fu, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.045.i = phi ptr [ %i.gk, %.lr.ph.i ], [ %.045.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.03544.i = phi i32 [ %i.gl, %.lr.ph.i ], [ %.03544.i.unr, %.lr.ph.i.prol.loopexit ]
  %.143.i = phi i32 [ %i.gh, %.lr.ph.i ], [ %.143.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.fv = add i32 %.143.i, 1
  %i.fw = zext i32 %.143.i to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fw
  store ptr %.045.i, ptr %i.fx, align 8, !tbaa !64
  %i.fy = getelementptr inbounds nuw [128 x i8], ptr %.045.i, i64 %i.dw ; 2 uses
  %i.fz = add i32 %.143.i, 2
  %i.ga = zext i32 %i.fv to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ga
  store ptr %i.fy, ptr %i.gb, align 8, !tbaa !64
  %i.gc = getelementptr inbounds nuw [128 x i8], ptr %i.fy, i64 %i.dw ; 2 uses
  %i.gd = add i32 %.143.i, 3
  %i.ge = zext i32 %i.fz to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ge
  store ptr %i.gc, ptr %i.gf, align 8, !tbaa !64
  %i.gg = getelementptr inbounds nuw [128 x i8], ptr %i.gc, i64 %i.dw ; 2 uses
  %i.gh = add i32 %.143.i, 4                      ; 2 uses
  %i.gi = zext i32 %i.gd to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gi
  store ptr %i.gg, ptr %i.gj, align 8, !tbaa !64
  %i.gk = getelementptr inbounds nuw [128 x i8], ptr %i.gg, i64 %i.dw
  %i.gl = add i32 %.03544.i, -4                   ; 2 uses
  %.not.i.3 = icmp eq i32 %i.gl, 0
  br i1 %.not.i.3, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !73

alloc_barray.exit:                                ; preds = %.loopexit.i, %bb.z
  store ptr %i.eg, ptr %.1106141, align 8, !tbaa !85
  %i.gm = load i32, ptr %i.br, align 8, !tbaa !56
  %i.gn = getelementptr inbounds nuw i8, ptr %.1106141, i64 24
  store i32 %i.gm, ptr %i.gn, align 8, !tbaa !109
  %i.go = getelementptr inbounds nuw i8, ptr %.1106141, i64 28
  store i32 0, ptr %i.go, align 4, !tbaa !110
  %i.gp = getelementptr inbounds nuw i8, ptr %.1106141, i64 32
  store i32 0, ptr %i.gp, align 8, !tbaa !111
  %i.gq = getelementptr inbounds nuw i8, ptr %.1106141, i64 40
  store i32 0, ptr %i.gq, align 8, !tbaa !112
  br label %bb.af

bb.af:                                            ; preds = %bb.t, %alloc_barray.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %.1106141, i64 48
  %.1106 = load ptr, ptr %i.gr, align 8, !tbaa !97 ; 2 uses
  %.not114 = icmp eq ptr %.1106, null
  br i1 %.not114, label %.loopexit, label %bb.t, !llvm.loop !113

.loopexit:                                        ; preds = %bb.af, %.preheader, %._crit_edge131
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @access_virt_sarray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = add i32 %3, %2                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  %.not = icmp eq i32 %i.c, 0
  %.in.v = select i1 %.not, i64 88, i64 296
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.d = load i32, ptr %.in, align 8, !tbaa !3
  %i.e = icmp sgt i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78
  %i.h = icmp ugt i32 %i.a, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !80
  %i.k = icmp ugt i32 %3, %i.j
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !74
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 23, ptr %i.o, align 8, !tbaa !16
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !21
  tail call void %i.p(ptr noundef nonnull %0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101  ; 2 uses
  %i.s = icmp ult i32 %2, %i.r
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !99
  %i.v = add i32 %i.u, %i.r
  %i.w = icmp ugt i32 %i.a, %i.v
  br i1 %i.w, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !82
  %.not78 = icmp eq i32 %i.y, 0
  br i1 %.not78, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 71, ptr %i.aa, align 8, !tbaa !16
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !21
  tail call void %i.ab(ptr noundef nonnull %0) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !103
  %.not79 = icmp eq i32 %i.ad, 0
  br i1 %.not79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @do_sarray_io(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  store i32 0, ptr %i.ac, align 8, !tbaa !103
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !101
  %i.af = icmp ugt i32 %2, %i.ae
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !99
  %i.ai = tail call i32 @llvm.usub.sat.i32(i32 %i.a, i32 %i.ah)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %storemerge = phi i32 [ %i.ai, %bb.l ], [ %2, %bb.k ]
  store i32 %storemerge, ptr %i.q, align 4, !tbaa !101
  tail call fastcc void @do_sarray_io(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !102 ; 4 uses
  %i.al = icmp ult i32 %i.ak, %i.a
  br i1 %i.al, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.am = icmp ult i32 %i.ak, %2
  %.not80 = icmp eq i32 %4, 0                     ; 2 uses
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %.not80, label %.thread93, label %.thread88

.thread88:                                        ; preds = %bb.p
  %i.an = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i32 23, ptr %i.ao, align 8, !tbaa !16
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !21
  tail call void %i.ap(ptr noundef nonnull %0) #9
  br label %.thread

bb.q:                                             ; preds = %bb.o
  br i1 %.not80, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !81
  %.not82 = icmp eq i32 %i.ar, 0
  br i1 %.not82, label %.loopexit.thread, label %bb.s

.thread:                                          ; preds = %bb.q, %.thread88
  %.091 = phi i32 [ %2, %.thread88 ], [ %i.ak, %bb.q ]
  store i32 %i.a, ptr %i.aj, align 8, !tbaa !102
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !81
  %.not82110 = icmp eq i32 %i.at, 0
  br i1 %.not82110, label %.loopexit.thread115, label %bb.s

.thread93:                                        ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !81
  %.not8296 = icmp eq i32 %i.av, 0
  br i1 %.not8296, label %.loopexit.thread, label %bb.s

bb.s:                                             ; preds = %.thread, %.thread93, %bb.r
  %.08698 = phi i32 [ %2, %.thread93 ], [ %i.ak, %bb.r ], [ %.091, %.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !79
  %i.ay = zext i32 %i.ax to i64
  %i.az = zext i1 %i.e to i64
  %i.ba = shl nuw nsw i64 %i.ay, %i.az
  %i.bb = load i32, ptr %i.q, align 4, !tbaa !101 ; 2 uses
  %i.bc = sub i32 %.08698, %i.bb                  ; 2 uses
end_hunk_0
