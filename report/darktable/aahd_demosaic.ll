Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/aahd_demosaic?download=true
inline.NumInlined: 46
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4AAHD15make_ahd_greensEv:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN4AAHD14make_ahd_glineEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94, !nonnull !100, !align !101 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !84
  %i.e = zext i16 %i.d to i32                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !95   ; 4 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit84, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %i.g, 1000
  br i1 %i.h, label %_ZN6LibRaw5COLOREii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 381670
  %i.j = load i16, ptr %i.i, align 2, !tbaa !97   ; 2 uses
  %.not8.i = icmp eq i16 %i.j, 0
  br i1 %.not8.i, label %bb.d, label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 381828
  %i.l = load i32, ptr %i.k, align 4, !tbaa !98
  %.not.i.i = icmp ne i32 %i.l, 0                 ; 2 uses
  %i.m = zext i1 %.not.i.i to i32
  %.sink13.i.i.v = ashr i32 %1, %i.m
  %i.n = zext i16 %i.j to i32
  %.sink13.i.i = add nuw nsw i32 %i.n, 7
  %i.o = add i32 %.sink13.i.i, %.sink13.i.i.v
  %i.p = add nsw i32 %1, 1
  %i.q = lshr i32 %i.p, 1
  %i.r = select i1 %.not.i.i, i32 %i.q, i32 %1
  %i.s = shl i32 %i.o, 1
  %i.t = and i32 %i.s, 14
  %i.u = and i32 %i.r, 1
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = shl nuw nsw i32 %i.v, 1
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.x = shl i32 %1, 2
  %i.y = and i32 %i.x, 28
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZN6LibRaw3FCFEii.exit.i
  %.sink = phi i32 [ %i.y, %bb.d ], [ %i.w, %_ZN6LibRaw3FCFEii.exit.i ]
  %i.z = lshr i32 %i.g, %.sink                    ; 2 uses
  %i.aa = and i32 %i.z, 1
  br label %bb.g

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.b
  %i.ab = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.b, i32 noundef %1, i32 noundef 0) ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !94  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 544
  %.pre96 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !95 ; 3 uses
  %i.ac = and i32 %i.ab, 1                        ; 4 uses
  %.not.i76 = icmp eq i32 %.pre96, 0
  br i1 %.not.i76, label %_ZN6LibRaw5COLOREii.exit84, label %bb.e

bb.e:                                             ; preds = %_ZN6LibRaw5COLOREii.exit
  %i.ad = icmp ult i32 %.pre96, 1000
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %.pre, i32 noundef %1, i32 noundef %i.ac)
  br label %_ZN6LibRaw5COLOREii.exit84

bb.g:                                             ; preds = %.thread, %bb.e
  %i.af = phi i32 [ %i.g, %.thread ], [ %.pre96, %bb.e ] ; 2 uses
  %i.ag = phi ptr [ %i.b, %.thread ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i115120 = phi i32 [ %i.z, %.thread ], [ %i.ab, %bb.e ]
  %i.ah = phi i32 [ %i.aa, %.thread ], [ %i.ac, %bb.e ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 381670
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !97 ; 2 uses
  %.not8.i77 = icmp eq i16 %i.aj, 0
  br i1 %.not8.i77, label %bb.h, label %_ZN6LibRaw3FCFEii.exit.i79

_ZN6LibRaw3FCFEii.exit.i79:                       ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 381828
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !98
  %.not.i.i78 = icmp eq i32 %i.al, 0              ; 3 uses
  %i.am = add i32 %1, 7
  %i.an = xor i32 %i.ah, -1
  %i.ao = lshr i32 %1, 1
  %i.ap = add nsw i32 %i.ao, %i.an
  %.sink13.i.i80 = select i1 %.not.i.i78, i32 %i.am, i32 %i.ap
  %.sink.i.i81 = select i1 %.not.i.i78, i32 %i.ah, i32 %1
  %.sink11.i.i82 = select i1 %.not.i.i78, i32 %1, i32 %.0.i115120
  %i.aq = zext i16 %i.aj to i32
  %i.ar = add i32 %.sink13.i.i80, %i.aq
  %i.as = add nsw i32 %.sink.i.i81, 1
  %i.at = lshr i32 %i.as, 1
  %i.au = add i32 %i.at, %.sink11.i.i82
  %i.av = shl i32 %i.ar, 1
  %i.aw = and i32 %i.av, 14
  %i.ax = and i32 %i.au, 1
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = lshr i32 %i.af, %i.az
  %i.bb = and i32 %i.ba, 3
  br label %_ZN6LibRaw5COLOREii.exit84

bb.h:                                             ; preds = %bb.g
  %i.bc = shl i32 %1, 1
  %i.bd = and i32 %i.bc, 14
  %i.be = or disjoint i32 %i.ah, %i.bd
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = lshr i32 %i.af, %i.bf
  %i.bh = and i32 %i.bg, 3
  br label %_ZN6LibRaw5COLOREii.exit84

_ZN6LibRaw5COLOREii.exit84:                       ; preds = %bb.a, %_ZN6LibRaw5COLOREii.exit, %bb.f, %_ZN6LibRaw3FCFEii.exit.i79, %bb.h
  %i.bi = phi i32 [ %i.ac, %bb.f ], [ %i.ac, %_ZN6LibRaw5COLOREii.exit ], [ %i.ah, %_ZN6LibRaw3FCFEii.exit.i79 ], [ %i.ah, %bb.h ], [ 0, %bb.a ] ; 4 uses
  %.0.i83 = phi i32 [ %i.ae, %bb.f ], [ 6, %_ZN6LibRaw5COLOREii.exit ], [ %i.bb, %_ZN6LibRaw3FCFEii.exit.i79 ], [ %i.bh, %bb.h ], [ 6, %bb.a ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !85 ; 5 uses
  %i.bl = icmp samesign ult i32 %i.bi, %i.e
  %i.bm = sext i32 %.0.i83 to i64                 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  br i1 %i.bl, label %.lr.ph.preheader, label %.split

.lr.ph.preheader:                                 ; preds = %_ZN6LibRaw5COLOREii.exit84
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = add i32 %1, 4
  %i.br = mul i32 %i.bk, %i.bq
  %i.bs = add i32 %i.br, %i.bi
  %i.bt = add i32 %i.bs, 4
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !86
  br label %bb.p

.split:                                           ; preds = %bb.o, %_ZN6LibRaw5COLOREii.exit84
  ret void

._crit_edge:                                      ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !86
  %i.by = sub nsw i32 0, %i.bk
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i32 %i.bk, -2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = sext i32 %i.bk to i64
  %i.cd = shl nsw i32 %i.bk, 1
  %i.ce = sext i32 %i.cd to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %._crit_edge
  %indvars.iv.1 = phi i64 [ %i.bu, %._crit_edge ], [ %indvars.iv.next.1, %bb.o ] ; 2 uses
  %.06790.1 = phi i32 [ %i.bi, %._crit_edge ], [ %i.eh, %bb.o ]
  %i.cf = getelementptr inbounds [6 x i8], ptr %i.bx, i64 %indvars.iv.1 ; 6 uses
  %i.cg = getelementptr inbounds [6 x i8], ptr %i.cf, i64 %i.bz
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !90 ; 3 uses
  %i.cj = zext i16 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = getelementptr inbounds [6 x i8], ptr %i.cf, i64 %i.cb
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.bm
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !90
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.bm
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !90
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %i.cs = getelementptr inbounds [6 x i8], ptr %i.cf, i64 %i.cc
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !90 ; 3 uses
  %i.cv = zext i16 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %i.cx = getelementptr inbounds [6 x i8], ptr %i.cf, i64 %i.ce
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.bm
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !90
  %i.da = zext i16 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.cr, 1
  %i.dc = add nuw nsw i32 %i.db, %i.co
  %i.dd = add nuw nsw i32 %i.dc, %i.da
  %i.de = sub nsw i32 %i.ck, %i.dd
  %i.df = add nsw i32 %i.de, %i.cw
  %i.dg = sdiv i32 %i.df, 4
  %i.dh = add nsw i32 %i.dg, %i.cr                ; 5 uses
  %..1 = tail call i16 @llvm.umin.i16(i16 %i.ci, i16 %i.cu)
  %i.di = zext i16 %..1 to i32                    ; 2 uses
  %i.dj = tail call i16 @llvm.umax.i16(i16 %i.ci, i16 %i.cu)
  %i.dk = zext i16 %i.dj to i32                   ; 2 uses
  %i.dl = lshr i32 %i.di, 3
  %i.dm = sub nuw nsw i32 %i.di, %i.dl            ; 3 uses
  %i.dn = lshr i32 %i.dk, 3
  %i.do = add nuw nsw i32 %i.dn, %i.dk            ; 3 uses
  %i.dp = icmp slt i32 %i.dh, %i.dm
  br i1 %i.dp, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = icmp samesign ugt i32 %i.dh, %i.do
  br i1 %i.dq, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dr = sub nuw nsw i32 %i.dh, %i.do
  %2 = sitofp reassoc nsz arcp contract afn i32 %i.dr to float
  %i.ds = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %2)
  %i.dt = fptosi float %i.ds to i32
  %i.du = add nsw i32 %i.do, %i.dt
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.dv = sub nsw i32 %i.dm, %i.dh
  %i.dw = sitofp reassoc nsz arcp contract afn i32 %i.dv to float
  %i.dx = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.dw)
  %i.dy = fptosi float %i.dx to i32
  %i.dz = sub nsw i32 %i.dm, %i.dy
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0.1 = phi i32 [ %i.dz, %bb.l ], [ %i.du, %bb.k ], [ %i.dh, %bb.j ] ; 2 uses
  %i.ea = load i16, ptr %i.bn, align 2, !tbaa !90 ; 2 uses
  %i.eb = zext i16 %i.ea to i32
  %i.ec = icmp sgt i32 %.0.1, %i.eb
  br i1 %i.ec, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = load i16, ptr %i.bo, align 2, !tbaa !90
  %i.ee = zext i16 %i.ed to i32
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %.0.1, i32 %i.ee)
  %i.ef = trunc nuw i32 %spec.select.1 to i16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.1 = phi i16 [ %i.ef, %bb.n ], [ %i.ea, %bb.m ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 %.1.1, ptr %i.eg, align 2, !tbaa !90
  %i.eh = add nuw nsw i32 %.06790.1, 2            ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 2
  %i.ei = icmp samesign ult i32 %i.eh, %i.e
  br i1 %i.ei, label %bb.i, label %.split, !llvm.loop !126

bb.p:                                             ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ %i.bu, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %.06790 = phi i32 [ %i.bi, %.lr.ph.preheader ], [ %i.gj, %bb.v ]
  %i.ej = getelementptr inbounds [6 x i8], ptr %i.bv, i64 %indvars.iv ; 6 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !90 ; 3 uses
  %i.em = zext i16 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = getelementptr inbounds i8, ptr %i.ej, i64 -12
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.bm
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !90
  %i.er = zext i16 %i.eq to i32
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.bm
  %i.et = load i16, ptr %i.es, align 2, !tbaa !90
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !90 ; 3 uses
  %i.ex = zext i16 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.ez, i64 %i.bm
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !90
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.eu, 1
  %i.fe = add nuw nsw i32 %i.fd, %i.er
  %i.ff = add nuw nsw i32 %i.fe, %i.fc
  %i.fg = sub nsw i32 %i.en, %i.ff
  %i.fh = add nsw i32 %i.fg, %i.ey
  %i.fi = sdiv i32 %i.fh, 4
  %i.fj = add nsw i32 %i.fi, %i.eu                ; 5 uses
  %. = tail call i16 @llvm.umin.i16(i16 %i.el, i16 %i.ew)
  %i.fk = zext i16 %. to i32                      ; 2 uses
  %i.fl = tail call i16 @llvm.umax.i16(i16 %i.el, i16 %i.ew)
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %i.fn = lshr i32 %i.fk, 3
  %i.fo = sub nuw nsw i32 %i.fk, %i.fn            ; 3 uses
  %i.fp = lshr i32 %i.fm, 3
  %i.fq = add nuw nsw i32 %i.fp, %i.fm            ; 3 uses
  %i.fr = icmp slt i32 %i.fj, %i.fo
  br i1 %i.fr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fs = sub nsw i32 %i.fo, %i.fj
  %i.ft = sitofp reassoc nsz arcp contract afn i32 %i.fs to float
  %i.fu = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ft)
  %i.fv = fptosi float %i.fu to i32
  %i.fw = sub nsw i32 %i.fo, %i.fv
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.fx = icmp samesign ugt i32 %i.fj, %i.fq
  br i1 %i.fx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fy = sub nuw nsw i32 %i.fj, %i.fq
  %3 = sitofp reassoc nsz arcp contract afn i32 %i.fy to float
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %3)
  %i.ga = fptosi float %i.fz to i32
  %i.gb = add nsw i32 %i.fq, %i.ga
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.0 = phi i32 [ %i.fw, %bb.q ], [ %i.gb, %bb.s ], [ %i.fj, %bb.r ] ; 2 uses
  %i.gc = load i16, ptr %i.bn, align 2, !tbaa !90 ; 2 uses
  %i.gd = zext i16 %i.gc to i32
  %i.ge = icmp sgt i32 %.0, %i.gd
  br i1 %i.ge, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gf = load i16, ptr %i.bo, align 2, !tbaa !90
  %i.gg = zext i16 %i.gf to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0, i32 %i.gg)
  %i.gh = trunc nuw i32 %spec.select to i16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1 = phi i16 [ %i.gh, %bb.u ], [ %i.gc, %bb.t ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i16 %.1, ptr %i.gi, align 2, !tbaa !90
  %i.gj = add nuw nsw i32 %.06790, 2              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 2
  %i.gk = icmp samesign ult i32 %i.gj, %i.e
  br i1 %i.gk, label %bb.p, label %._crit_edge, !llvm.loop !126
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4AAHD15illustrate_dirsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94, !nonnull !100, !align !101 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !81   ; 2 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i16, ptr %i.e, align 2, !tbaa !84   ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN4AAHD16illustrate_dlineEi.exit, %.lr.ph, %bb.a
  ret void

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN4AAHD16illustrate_dlineEi.exit
  %.pr = load i16, ptr %i.e, align 2, !tbaa !84
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.r = phi i16 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.s = phi i16 [ %i.aw, %.lr.ph.splitthread-pre-split ], [ %i.d, %.lr.ph ]
  %.03 = phi i32 [ %i.ax, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %.not29.i = icmp eq i16 %i.r, 0
  br i1 %.not29.i, label %_ZN4AAHD16illustrate_dlineEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %i.t = add nuw nsw i32 %.03, 4
  %i.u = mul nsw i32 %i.i, %i.t
  %invariant.op.i = add i32 %i.u, 4
  %wide.trip.count.i = zext i16 %i.r to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.i to i32
  %.reass.i = add i32 %invariant.op.i, %i.v
  %i.w = sext i32 %.reass.i to i64                ; 3 uses
  %i.x = getelementptr inbounds [6 x i8], ptr %i.g, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i16 0, ptr %i.y, align 2, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i16 0, ptr %i.z, align 2, !tbaa !90
  store i16 0, ptr %i.x, align 2, !tbaa !90
  %i.aa = getelementptr inbounds [6 x i8], ptr %i.k, i64 %i.w ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i16 0, ptr %i.ab, align 2, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i16 0, ptr %i.ac, align 2, !tbaa !90
  store i16 0, ptr %i.aa, align 2, !tbaa !90
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 %i.w
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !102 ; 2 uses
  %i.af = and i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %i.ah = and i8 %i.ae, 4
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = load i16, ptr %i.n, align 8, !tbaa !90
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = mul nuw nsw i32 %i.aj, %i.ag
  %i.al = lshr i32 %i.ak, 2
  %i.am = lshr i32 %i.aj, 2
  %i.an = add nuw nsw i32 %i.al, %i.am
  %i.ao = trunc nuw nsw i32 %i.an to i16
  store i16 %i.ao, ptr %i.aa, align 2, !tbaa !90
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = load i16, ptr %i.o, align 4, !tbaa !90
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = mul nuw nsw i32 %i.aq, %i.ag
  %i.as = lshr i32 %i.ar, 2
  %i.at = lshr i32 %i.aq, 2
  %i.au = add nuw nsw i32 %i.as, %i.at
  %i.av = trunc nuw nsw i32 %i.au to i16
  store i16 %i.av, ptr %i.y, align 2, !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN4AAHD16illustrate_dlineEi.exit.loopexit, label %bb.b, !llvm.loop !4

_ZN4AAHD16illustrate_dlineEi.exit.loopexit:       ; preds = %bb.e
  %.pre = load i16, ptr %i.c, align 4, !tbaa !81
  br label %_ZN4AAHD16illustrate_dlineEi.exit

_ZN4AAHD16illustrate_dlineEi.exit:                ; preds = %_ZN4AAHD16illustrate_dlineEi.exit.loopexit, %.lr.ph.split
  %i.aw = phi i16 [ %.pre, %_ZN4AAHD16illustrate_dlineEi.exit.loopexit ], [ %i.s, %.lr.ph.split ] ; 2 uses
  %i.ax = add nuw nsw i32 %.03, 1                 ; 2 uses
  %i.ay = zext i16 %i.aw to i32
  %i.az = icmp samesign ult i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4AAHD16illustrate_dlineEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94, !nonnull !100, !align !101
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !84   ; 2 uses
  %.not29 = icmp eq i16 %i.d, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = add nsw i32 %1, 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !85
  %i.j = mul nsw i32 %i.i, %i.e
  %invariant.op = add i32 %i.j, 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %wide.trip.count = zext i16 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.q
  %i.r = sext i32 %.reass to i64                  ; 3 uses
  %i.s = getelementptr inbounds [6 x i8], ptr %i.g, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i16 0, ptr %i.t, align 2, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.u, align 2, !tbaa !90
  store i16 0, ptr %i.s, align 2, !tbaa !90
  %i.v = getelementptr inbounds [6 x i8], ptr %i.l, i64 %i.r ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i16 0, ptr %i.w, align 2, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 0, ptr %i.x, align 2, !tbaa !90
  store i16 0, ptr %i.v, align 2, !tbaa !90
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 %i.r
  %i.z = load i8, ptr %i.y, align 1, !tbaa !102   ; 2 uses
  %i.aa = and i8 %i.z, 1
  %i.ab = zext nneg i8 %i.aa to i32               ; 2 uses
  %i.ac = and i8 %i.z, 4
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i16, ptr %i.o, align 8, !tbaa !90
end_hunk_0
