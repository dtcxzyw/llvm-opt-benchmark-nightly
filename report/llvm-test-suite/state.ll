inline.NumInlined: 698
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5State18add_boundary_cellsEv:bb.a
  %i.bl = call noundef ptr @_ZN10MallocPlus14memory_reallocEmPv(ptr noundef nonnull align 8 dereferenceable(96) %i.bk, i64 noundef %i.aj, ptr noundef %i.r)
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1368
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = call noundef ptr @_ZN10MallocPlus14memory_reallocEmPv(ptr noundef nonnull align 8 dereferenceable(96) %i.bo, i64 noundef %i.aj, ptr noundef %i.t)
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1376
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = call noundef ptr @_ZN10MallocPlus14memory_reallocEmPv(ptr noundef nonnull align 8 dereferenceable(96) %i.bs, i64 noundef %i.aj, ptr noundef %i.v)
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1384
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !61
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = call noundef ptr @_ZN10MallocPlus14memory_reallocEmPv(ptr noundef nonnull align 8 dereferenceable(96) %i.bw, i64 noundef %i.aj, ptr noundef %i.x) ; 21 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !19  ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1392
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 1328
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !55 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1336
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !56 ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 1352
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57 ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 1368
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !59 ; 12 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 1376
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !60 ; 20 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 1384
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !61 ; 12 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 1312 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !65 ; 2 uses
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !64  ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 2                 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.aj
  br i1 %i.ct, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cu = sub nuw nsw i64 %i.aj, %i.cs
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.cu)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.cv = icmp ugt i64 %i.cs, %i.aj
  br i1 %i.cv, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.aj ; 2 uses
  %.not.i.i = icmp eq ptr %i.cn, %i.cw
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !65
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 1424 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !66 ; 2 uses
  %i.cz = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3                 ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.aj
  br i1 %i.de, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.df = sub nuw nsw i64 %i.aj, %i.dd
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.df)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.dg = icmp ugt i64 %i.dd, %i.aj
  br i1 %i.dg, label %bb.g, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.aj ; 2 uses
  %.not.i.i478 = icmp eq ptr %i.cy, %i.dh
  br i1 %.not.i.i478, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.dh, ptr %i.cx, align 8, !tbaa !66
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 1448 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !66 ; 2 uses
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 3                 ; 3 uses
  %i.dp = icmp ult i64 %i.do, %i.aj
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.dq = sub nuw nsw i64 %i.aj, %i.do
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dq)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit481

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.dr = icmp ugt i64 %i.do, %i.aj
  br i1 %i.dr, label %bb.j, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit481

bb.j:                                             ; preds = %bb.i
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.aj ; 2 uses
  %.not.i.i479 = icmp eq ptr %i.dj, %i.ds
  br i1 %.not.i.i479, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit481, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i480

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i480:     ; preds = %bb.j
  store ptr %i.ds, ptr %i.di, align 8, !tbaa !66
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit481

_ZNSt6vectorIdSaIdEE6resizeEm.exit481:            ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i480
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 1472 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !66 ; 2 uses
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3                 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.aj
  br i1 %i.ea, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit481
  %i.eb = sub nuw nsw i64 %i.aj, %i.dz
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.eb)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit484

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit481
  %i.ec = icmp ugt i64 %i.dz, %i.aj
  br i1 %i.ec, label %bb.m, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit484

bb.m:                                             ; preds = %bb.l
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.aj ; 2 uses
  %.not.i.i482 = icmp eq ptr %i.du, %i.ed
  br i1 %.not.i.i482, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit484, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i483

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i483:     ; preds = %bb.m
  store ptr %i.ed, ptr %i.dt, align 8, !tbaa !66
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit484

_ZNSt6vectorIdSaIdEE6resizeEm.exit484:            ; preds = %bb.k, %bb.l, %bb.m, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i483
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 1496 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !66 ; 2 uses
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !67  ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 3                 ; 3 uses
  %i.el = icmp ult i64 %i.ek, %i.aj
  br i1 %i.el, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit484
  %i.em = sub nuw nsw i64 %i.aj, %i.ek
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.em)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit487

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit484
  %i.en = icmp ugt i64 %i.ek, %i.aj
  br i1 %i.en, label %bb.p, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit487

bb.p:                                             ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.aj ; 2 uses
  %.not.i.i485 = icmp eq ptr %i.ef, %i.eo
  br i1 %.not.i.i485, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit487, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i486

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i486:     ; preds = %bb.p
  store ptr %i.eo, ptr %i.ee, align 8, !tbaa !66
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit487

_ZNSt6vectorIdSaIdEE6resizeEm.exit487:            ; preds = %bb.n, %bb.o, %bb.p, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i486
  %i.ep = load i64, ptr %i.c, align 8, !tbaa !63  ; 5 uses
  %i.eq = trunc i64 %i.ep to i32                  ; 4 uses
  %i.er = icmp sgt i32 %i.ai, %i.eq               ; 2 uses
  br i1 %i.er, label %.lr.ph493.preheader, label %.preheader488

.lr.ph493.preheader:                              ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit487
  %sext = shl i64 %i.ep, 32
  %i.es = ashr exact i64 %sext, 30                ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.es
  %i.et = xor i32 %i.eq, -1
  %i.eu = add i32 %i.ai, %i.et
  %i.ev = zext i32 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 2
  %i.ex = add nuw nsw i64 %i.ew, 4                ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 -1, i64 %i.ex, i1 false), !tbaa !4
  %scevgep502 = getelementptr i8, ptr %i.cj, i64 %i.es
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep502, i8 -1, i64 %i.ex, i1 false), !tbaa !4
  %scevgep503 = getelementptr i8, ptr %i.cl, i64 %i.es
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep503, i8 -1, i64 %i.ex, i1 false), !tbaa !4
  %scevgep504 = getelementptr i8, ptr %i.bx, i64 %i.es
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep504, i8 -1, i64 %i.ex, i1 false), !tbaa !4
  br label %.preheader488

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.ey = phi i64 [ 0, %.lr.ph ], [ %3, %bb.q ]   ; 3 uses
  %.0464490 = phi i32 [ 0, %.lr.ph ], [ %2, %bb.q ]
  %.0465489 = phi i32 [ 0, %.lr.ph ], [ %.4469, %bb.q ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4  ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ey
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = sext i32 %i.fc to i64                   ; 4 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4
  %i.fg = icmp eq i32 %i.fa, %i.ff
  %i.fh = zext i1 %i.fg to i32
  %spec.select = add nsw i32 %.0465489, %i.fh
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.fd
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %i.fk = icmp eq i32 %i.fa, %i.fj
  %i.fl = zext i1 %i.fk to i32
  %.2467 = add nsw i32 %spec.select, %i.fl
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ey
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4  ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.fd
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = icmp eq i32 %i.fn, %i.fp
  %i.fr = zext i1 %i.fq to i32
  %.3468 = add nsw i32 %.2467, %i.fr
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fd
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !4
  %i.fu = icmp eq i32 %i.fn, %i.ft
  %i.fv = zext i1 %i.fu to i32
  %.4469 = add nsw i32 %.3468, %i.fv              ; 2 uses
  %2 = add i32 %.0464490, 1                       ; 2 uses
  %3 = zext i32 %2 to i64                         ; 2 uses
  %i.fw = icmp ugt i64 %i.ac, %3
  br i1 %i.fw, label %bb.q, label %._crit_edge, !llvm.loop !68

.preheader488:                                    ; preds = %.lr.ph493.preheader, %_ZNSt6vectorIdSaIdEE6resizeEm.exit487
  %.not501 = icmp eq i64 %i.ep, 0
  br i1 %.not501, label %.preheader, label %.lr.ph496

.lr.ph496:                                        ; preds = %.preheader488
  %i.fx = load ptr, ptr %i.y, align 8, !tbaa !64  ; 2 uses
  %i.fy = load ptr, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %i.fz = load ptr, ptr %i.aa, align 8, !tbaa !64 ; 2 uses
  %i.ga = load ptr, ptr %i.ab, align 8, !tbaa !64 ; 2 uses
  br label %bb.r

.preheader:                                       ; preds = %bb.z, %.preheader488
  br i1 %i.er, label %.lr.ph498, label %._crit_edge499

.lr.ph498:                                        ; preds = %.preheader
  %i.gb = load ptr, ptr %i.y, align 8, !tbaa !64  ; 3 uses
  %i.gc = load ptr, ptr %i.z, align 8, !tbaa !64  ; 3 uses
  %i.gd = load ptr, ptr %i.aa, align 8, !tbaa !64 ; 3 uses
  %i.ge = load ptr, ptr %i.ab, align 8, !tbaa !64 ; 3 uses
  %sext543 = shl nuw i64 %i.ep, 32
  %i.gf = ashr exact i64 %sext543, 32
  br label %bb.aa

bb.r:                                             ; preds = %.lr.ph496, %bb.z
  %i.gg = phi i64 [ 0, %.lr.ph496 ], [ %5, %bb.z ] ; 37 uses
  %.0461495 = phi i32 [ 0, %.lr.ph496 ], [ %4, %bb.z ] ; 5 uses
  %.0462494 = phi i32 [ %i.eq, %.lr.ph496 ], [ %.4, %bb.z ] ; 5 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.gg ; 4 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4  ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gg ; 9 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !4
  %i.go = icmp eq i32 %i.gi, %i.gn
  br i1 %i.go, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.gg
  store i32 %.0462494, ptr %i.gp, align 4, !tbaa !4
  %i.gq = zext i32 %.0462494 to i64               ; 12 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.gq
  store i32 %.0462494, ptr %i.gr, align 4, !tbaa !4
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.gq
  store i32 %.0461495, ptr %i.gs, align 4, !tbaa !4
  %i.gt = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.gx = add nsw i32 %i.gw, -1
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.gq
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !4
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.gg
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.gq
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !4
  %i.hc = load i32, ptr %i.gj, align 4, !tbaa !4  ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gq
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !4
  %i.he = load ptr, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gg ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !70
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gq
  store double %i.hg, ptr %i.hh, align 8, !tbaa !70
  %i.hi = load ptr, ptr %i.h, align 8, !tbaa !67  ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.gg
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !70
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.gq
  store double %i.hk, ptr %i.hl, align 8, !tbaa !70
  %i.hm = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.gg
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !70
  %i.hp = load double, ptr %i.hf, align 8, !tbaa !70
  %i.hq = fsub double %i.ho, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.gq
  store double %i.hq, ptr %i.hr, align 8, !tbaa !70
  %i.hs = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.gg
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !70
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.gq
  store double %i.hu, ptr %i.hv, align 8, !tbaa !70
  %i.hw = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.gg
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !70
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.gq
  store double %i.hy, ptr %i.hz, align 8, !tbaa !70
  %i.ia = load ptr, ptr %i.an, align 8, !tbaa !53 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.gg
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !70
  %i.id = fneg double %i.ic
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.gq
  store double %i.id, ptr %i.ie, align 8, !tbaa !70
  %i.if = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.gg
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !70
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.gq
  store double %i.ih, ptr %i.ii, align 8, !tbaa !70
  %i.ij = add i32 %.0462494, 1
  %.pre = load i32, ptr %i.gh, align 4, !tbaa !4
  %.pre510 = sext i32 %i.hc to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre-phi = phi i64 [ %.pre510, %bb.s ], [ %i.gl, %bb.r ] ; 2 uses
  %i.ik = phi i32 [ %.pre, %bb.s ], [ %i.gi, %bb.r ]
  %.1 = phi i32 [ %i.ij, %bb.s ], [ %.0462494, %bb.r ] ; 5 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.pre-phi
  %i.im = load i32, ptr %i.il, align 4, !tbaa !4
  %i.in = icmp eq i32 %i.ik, %i.im
  br i1 %i.in, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.gg
  store i32 %.1, ptr %i.io, align 4, !tbaa !4
  %i.ip = zext i32 %.1 to i64                     ; 12 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ip
  store i32 %.1, ptr %i.iq, align 4, !tbaa !4
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ip
  store i32 %.0461495, ptr %i.ir, align 4, !tbaa !4
  %i.is = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !4
  %i.iw = add nsw i32 %i.iv, 1
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ip
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !4
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.gg
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !4
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ip
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !4
  %i.jb = load i32, ptr %i.gj, align 4, !tbaa !4  ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ip
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !4
  %i.jd = load ptr, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.gg ; 2 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !70
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.ip
  store double %i.jf, ptr %i.jg, align 8, !tbaa !70
  %i.jh = load ptr, ptr %i.h, align 8, !tbaa !67  ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.gg
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !70
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.ip
  store double %i.jj, ptr %i.jk, align 8, !tbaa !70
  %i.jl = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.gg
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !70
  %i.jo = load double, ptr %i.je, align 8, !tbaa !70
  %i.jp = fadd double %i.jn, %i.jo
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.ip
  store double %i.jp, ptr %i.jq, align 8, !tbaa !70
  %i.jr = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.gg
  %i.jt = load double, ptr %i.js, align 8, !tbaa !70
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.ip
  store double %i.jt, ptr %i.ju, align 8, !tbaa !70
  %i.jv = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.gg
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !70
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.ip
  store double %i.jx, ptr %i.jy, align 8, !tbaa !70
  %i.jz = load ptr, ptr %i.an, align 8, !tbaa !53 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.gg
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !70
  %i.kc = fneg double %i.kb
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.ip
  store double %i.kc, ptr %i.kd, align 8, !tbaa !70
  %i.ke = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.gg
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !70
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.ip
  store double %i.kg, ptr %i.kh, align 8, !tbaa !70
  %i.ki = add i32 %.1, 1
  %.pre511 = sext i32 %i.jb to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi512 = phi i64 [ %.pre511, %bb.u ], [ %.pre-phi, %bb.t ] ; 2 uses
  %.2 = phi i32 [ %i.ki, %bb.u ], [ %.1, %bb.t ]  ; 5 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.gg ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !4  ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.pre-phi512
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !4
  %i.kn = icmp eq i32 %i.kk, %i.km
  br i1 %i.kn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.gg
  store i32 %.2, ptr %i.ko, align 4, !tbaa !4
  %i.kp = zext i32 %.2 to i64                     ; 12 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.kp
  store i32 %.2, ptr %i.kq, align 4, !tbaa !4
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.kp
  store i32 %.0461495, ptr %i.kr, align 4, !tbaa !4
  %i.ks = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.kp
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !4
  %i.ku = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !4
  %i.ky = add nsw i32 %i.kx, -1
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.kp
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !4
  %i.la = load i32, ptr %i.gj, align 4, !tbaa !4  ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kp
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !4
  %i.lc = load ptr, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.gg
  %i.le = load double, ptr %i.ld, align 8, !tbaa !70
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.kp
  store double %i.le, ptr %i.lf, align 8, !tbaa !70
  %i.lg = load ptr, ptr %i.h, align 8, !tbaa !67  ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.gg ; 2 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !70
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.kp
  store double %i.li, ptr %i.lj, align 8, !tbaa !70
  %i.lk = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.gg
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !70
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.kp
  store double %i.lm, ptr %i.ln, align 8, !tbaa !70
  %i.lo = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.gg
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !70
  %i.lr = load double, ptr %i.lh, align 8, !tbaa !70
  %i.ls = fsub double %i.lq, %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.kp
  store double %i.ls, ptr %i.lt, align 8, !tbaa !70
  %i.lu = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.gg
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !70
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.kp
  store double %i.lw, ptr %i.lx, align 8, !tbaa !70
  %i.ly = load ptr, ptr %i.an, align 8, !tbaa !53 ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.gg
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !70
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.kp
  store double %i.ma, ptr %i.mb, align 8, !tbaa !70
  %i.mc = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.gg
  %i.me = load double, ptr %i.md, align 8, !tbaa !70
  %i.mf = fneg double %i.me
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.kp
  store double %i.mf, ptr %i.mg, align 8, !tbaa !70
  %i.mh = add i32 %.2, 1
  %.pre513 = load i32, ptr %i.kj, align 4, !tbaa !4
  %.pre514 = sext i32 %i.la to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre-phi515 = phi i64 [ %.pre514, %bb.w ], [ %.pre-phi512, %bb.v ]
  %i.mi = phi i32 [ %.pre513, %bb.w ], [ %i.kk, %bb.v ]
  %.3 = phi i32 [ %i.mh, %bb.w ], [ %.2, %bb.v ]  ; 5 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.pre-phi515
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !4
  %i.ml = icmp eq i32 %i.mi, %i.mk
  br i1 %i.ml, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.gg
  store i32 %.3, ptr %i.mm, align 4, !tbaa !4
  %i.mn = zext i32 %.3 to i64                     ; 12 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.mn
  store i32 %.3, ptr %i.mo, align 4, !tbaa !4
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.mn
  store i32 %.0461495, ptr %i.mp, align 4, !tbaa !4
  %i.mq = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.mn
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !4
  %i.ms = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !4
  %i.mw = add nsw i32 %i.mv, 1
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.mn
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !4
  %i.my = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mn
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !4
  %i.na = load ptr, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.gg
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !70
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.mn
  store double %i.nc, ptr %i.nd, align 8, !tbaa !70
  %i.ne = load ptr, ptr %i.h, align 8, !tbaa !67  ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.gg ; 2 uses
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !70
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.mn
  store double %i.ng, ptr %i.nh, align 8, !tbaa !70
  %i.ni = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.gg
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !70
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.mn
  store double %i.nk, ptr %i.nl, align 8, !tbaa !70
  %i.nm = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.gg
  %i.no = load double, ptr %i.nn, align 8, !tbaa !70
  %i.np = load double, ptr %i.nf, align 8, !tbaa !70
  %i.nq = fadd double %i.no, %i.np
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.mn
  store double %i.nq, ptr %i.nr, align 8, !tbaa !70
  %i.ns = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.gg
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !70
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.mn
  store double %i.nu, ptr %i.nv, align 8, !tbaa !70
  %i.nw = load ptr, ptr %i.an, align 8, !tbaa !53 ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.gg
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !70
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.mn
  store double %i.ny, ptr %i.nz, align 8, !tbaa !70
  %i.oa = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.gg
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !70
  %i.od = fneg double %i.oc
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.mn
  store double %i.od, ptr %i.oe, align 8, !tbaa !70
  %i.of = add i32 %.3, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.4 = phi i32 [ %i.of, %bb.y ], [ %.3, %bb.x ]
  %4 = add i32 %.0461495, 1                       ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.og = icmp ugt i64 %i.ep, %5
  br i1 %i.og, label %bb.r, label %.preheader, !llvm.loop !71

._crit_edge499:                                   ; preds = %bb.bg, %.preheader
  store i32 %i.eq, ptr @save_ncells, align 4, !tbaa !4
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !63
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !63
  %i.oh = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !70
  %i.ok = fadd double %i.oh, %i.oj
  store double %i.ok, ptr %i.oi, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.aa:                                            ; preds = %.lr.ph498, %bb.bg
  %indvars.iv = phi i64 [ %i.gf, %.lr.ph498 ], [ %indvars.iv.next.a, %bb.bg ] ; 36 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %indvars.iv ; 6 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !4
  %i.on = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv ; 8 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !4
  %i.op = sext i32 %i.oo to i64                   ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !4
  %i.os = add nsw i32 %i.or, -1
  %i.ot = icmp eq i32 %i.om, %i.os
  br i1 %i.ot, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !4
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.op
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !4
  %i.oy = icmp eq i32 %i.ov, %i.ox
  br i1 %i.oy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.oz = trunc nsw i64 %indvars.iv to i32
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !4
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !4
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink = phi i32 [ %i.oz, %bb.ac ], [ %i.ph, %bb.ad ]
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv
  store i32 %.sink, ptr %i.pi, align 4, !tbaa !4
  %i.pj = load i32, ptr %i.ou, align 4, !tbaa !4
  %i.pk = load i32, ptr %i.on, align 4, !tbaa !4
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !4
  %i.po = icmp eq i32 %i.pj, %i.pn
  br i1 %i.po, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.pq = trunc nsw i64 %indvars.iv to i32
  store i32 %i.pq, ptr %i.pp, align 4, !tbaa !4
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !4
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !4
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !4
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  store i32 %i.py, ptr %i.pz, align 4, !tbaa !4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.aa
  %i.qa = load i32, ptr %i.ol, align 4, !tbaa !4
  %i.qb = load i32, ptr %i.on, align 4, !tbaa !4  ; 2 uses
  %i.qc = sext i32 %i.qb to i64                   ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !4
  %i.qf = add nsw i32 %i.qe, 1
  %i.qg = icmp eq i32 %i.qa, %i.qf
  br i1 %i.qg, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv ; 3 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !4
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !4
  %i.qm = sext i32 %i.ql to i64                   ; 3 uses
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !4
  %.not = icmp sgt i32 %i.qb, %i.qo
  br i1 %.not, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !4
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.qc
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !4
  %i.qt = icmp eq i32 %i.qq, %i.qs
  br i1 %i.qt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.qu = trunc nsw i64 %indvars.iv to i32
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.qm
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink507 = phi i32 [ %i.qu, %bb.ak ], [ %i.qw, %bb.al ]
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv
  store i32 %.sink507, ptr %i.qx, align 4, !tbaa !4
  %i.qy = load i32, ptr %i.qp, align 4, !tbaa !4
  %i.qz = load i32, ptr %i.on, align 4, !tbaa !4
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !4
  %i.rd = icmp eq i32 %i.qy, %i.rc
  br i1 %i.rd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.re = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.rf = trunc nsw i64 %indvars.iv to i32
  store i32 %i.rf, ptr %i.re, align 4, !tbaa !4
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.rg = load i32, ptr %i.qh, align 4, !tbaa !4
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !4
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !4
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !4
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ai
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.qm
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !4
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !4
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !4
  %i.ru = load i32, ptr %i.qh, align 4, !tbaa !4
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !4
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !4
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !4
  %i.se = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  store i32 %i.sd, ptr %i.se, align 4, !tbaa !4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.ah
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !4
  %i.sh = load i32, ptr %i.on, align 4, !tbaa !4
  %i.si = sext i32 %i.sh to i64                   ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !4
  %i.sl = add nsw i32 %i.sk, -1
  %i.sm = icmp eq i32 %i.sg, %i.sl
  br i1 %i.sm, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.sn = load i32, ptr %i.ol, align 4, !tbaa !4
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.si
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !4
  %i.sq = icmp eq i32 %i.sn, %i.sp
  br i1 %i.sq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.sr = trunc nsw i64 %indvars.iv to i32
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !4
  %i.su = sext i32 %i.st to i64
end_hunk_0
begin_hunk_1_@_ZN5State21remove_boundary_cellsEv:bb.a
bb.u:                                             ; preds = %bb.t
  %i.go = load ptr, ptr %i.fp, align 8, !tbaa !60
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %i.gq = trunc nuw i64 %indvars.iv to i32
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !4
  %.pre41 = load i32, ptr %i.gb, align 4, !tbaa !4
  %.pre45 = sext i32 %.pre41 to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi46 = phi i64 [ %.pre45, %bb.u ], [ %.pre-phi, %bb.t ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !4  ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.pre-phi46
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4
  %i.gv = icmp eq i32 %i.gs, %i.gu
  br i1 %i.gv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gw = load ptr, ptr %i.fu, align 8, !tbaa !61
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv
  %i.gy = trunc nuw i64 %indvars.iv to i32
  store i32 %i.gy, ptr %i.gx, align 4, !tbaa !4
  %.pre42 = load i32, ptr %i.gr, align 4, !tbaa !4
  %.pre43 = load i32, ptr %i.gb, align 4, !tbaa !4
  %.pre47 = sext i32 %.pre43 to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre-phi48 = phi i64 [ %.pre47, %bb.w ], [ %.pre-phi46, %bb.v ]
  %i.gz = phi i32 [ %.pre42, %bb.w ], [ %i.gs, %bb.v ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.pre-phi48
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  %i.hc = icmp eq i32 %i.gz, %i.hb
  br i1 %i.hc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hd = load ptr, ptr %i.fx, align 8, !tbaa !62
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv
  %i.hf = trunc nuw i64 %indvars.iv to i32
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hg = load i32, ptr %i.b, align 4, !tbaa !4
  %i.hh = zext i32 %i.hg to i64
  %i.hi = icmp samesign ult i64 %indvars.iv.next, %i.hh
  br i1 %i.hi, label %bb.r, label %._crit_edge, !llvm.loop !78

bb.aa:                                            ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZN4Mesh10set_boundsEi(ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN5State12set_timestepEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0, double noundef %1, double noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @cpu_timer_start(ptr noundef nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = trunc i64 %i.f to i32
  call void @_ZN4Mesh10set_boundsEi(ptr noundef nonnull align 8 dereferenceable(2288) %i.d, i32 noundef %i.g)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !19
  call void @_ZN4Mesh10get_boundsERiS0_(ptr noundef nonnull align 8 dereferenceable(2288) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !19   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1360
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1352
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1048
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 1072
  %i.u = sext i32 %i.i to i64
  %wide.trip.count = sext i32 %i.j to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.v = fcmp olt double %.2, 1.000000e+03
  br i1 %i.v, label %bb.e, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %.024 = phi double [ 1.000000e+03, %.lr.ph ], [ %.2, %bb.d ] ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !70
  %i.af = fmul double %1, %i.ae
  %i.ag = call double @sqrt(double noundef %i.af) #21, !tbaa !4
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !70
  %i.ak = sext i32 %i.ab to i64                   ; 2 uses
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load double, ptr %i.am, align 8, !tbaa !70
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !70
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ak
  %i.at = load double, ptr %i.as, align 8, !tbaa !70
  %i.au = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.aq, i64 1
  %i.aw = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.av)
  %i.ax = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fadd <2 x double> %i.ay, %i.aw
  %i.ba = insertelement <2 x double> poison, double %i.an, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.at, i64 1
  %i.bc = fdiv <2 x double> %i.az, %i.bb          ; 2 uses
  %shift = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bc, %shift
  %i.bd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.be = fdiv double %2, %i.bd                   ; 2 uses
  %i.bf = fcmp olt double %i.be, %.024
  %.1 = select i1 %i.bf, double %i.be, double %.024
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi double [ %.1, %bb.c ], [ %.024, %bb.b ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !79

bb.e:                                             ; preds = %._crit_edge
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.e, %._crit_edge
  %i.bg = phi double [ %.2, %bb.e ], [ 1.000000e+03, %._crit_edge ], [ 1.000000e+03, %bb.a ]
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !63
  %i.bh = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !70
  %i.bk = fadd double %i.bh, %i.bj
  store double %i.bk, ptr %i.bi, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret double %i.bg
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State11fill_circleEddd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1160 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1416 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1440 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1464 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1488 ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !63   ; 6 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.s = add i64 %i.i, -1                         ; 2 uses
  %i.t = and i64 %i.s, 4294967295
  %i.u = icmp eq i64 %i.t, 4294967295
  %i.v = icmp ugt i64 %i.s, 4294967295
  %i.w = or i1 %i.u, %i.v
  br i1 %i.w, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.x = sub i64 %i.l, %i.o
  %diff.check = icmp ugt i64 %i.x, -32
  %i.y = sub i64 %i.l, %i.r
  %diff.check106 = icmp ugt i64 %i.y, -32
  %conflict.rdx = or i1 %diff.check, %diff.check106
  %i.z = sub i64 %i.o, %i.r
  %diff.check107 = icmp ugt i64 %i.z, -32
  %conflict.rdx108 = or i1 %conflict.rdx, %diff.check107
  br i1 %conflict.rdx108, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 8589934588               ; 4 uses
  %4 = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %broadcast.splat, ptr %i.aa, align 8, !tbaa !70
  store <2 x double> %broadcast.splat, ptr %i.ab, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> zeroinitializer, ptr %i.ac, align 8, !tbaa !70
  store <2 x double> zeroinitializer, ptr %i.ad, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> zeroinitializer, ptr %i.ae, align 8, !tbaa !70
  store <2 x double> zeroinitializer, ptr %i.af, align 8, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.03887.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %4, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  tail call void @_ZN4Mesh12kdtree_setupEv(ptr noundef nonnull align 8 dereferenceable(2288) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !63  ; 9 uses
  %i.ai = icmp ugt i64 %i.ah, 2305843009213693951
  br i1 %i.ai, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #22
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ah, 2                ; 3 uses
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #23 ; 14 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !4
  %i.al = add nsw i64 %i.ah, -1                   ; 3 uses
  %i.am = icmp eq i64 %i.al, 0                    ; 2 uses
  br i1 %i.am, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.an = phi i64 [ %6, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %.03887 = phi i32 [ %5, %scalar.ph ], [ %.03887.ph, %scalar.ph.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.an
  store double %3, ptr %i.ao, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.an
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.an
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !70
  %5 = add i32 %.03887, 1                         ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.ar = icmp ugt i64 %i.i, %6
  br i1 %i.ar, label %scalar.ph, label %._crit_edge, !llvm.loop !83

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.as = getelementptr i8, ptr %i.ak, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !4
  %i.at = icmp samesign ugt i64 %i.ah, 1152921504606846975
  br i1 %i.at, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #22
          to label %.noexc46 unwind label %bb.d

.noexc46:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.au = shl nuw nsw i64 %i.ah, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #23
          to label %.noexc47 unwind label %bb.d   ; 8 uses

.noexc47:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  store double 0.000000e+00, ptr %i.av, align 8, !tbaa !70
  br i1 %i.am, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc47
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.idx.i.i.i.i.i.i.i44 = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %.idx.i.i.i.i.i.i.i44, i1 false), !tbaa !70
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc47
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 784
  %i.az = trunc i64 %i.ah to i32
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !67
  invoke void @KDTree_QueryCircleInterior_Double(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ak, double noundef %1, i32 noundef %i.az, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd)
          to label %.preheader86 unwind label %bb.e

.preheader86:                                     ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.be = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %.preheader86
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !52 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.be to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bi = icmp ult i32 %i.be, 4
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph89.new

.lr.ph89.new:                                     ; preds = %.lr.ph89
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.g

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge90, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next.3, %._crit_edge90.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.epil
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bl
  store double %2, ptr %i.bm, align 8, !tbaa !70
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge90, label %bb.c, !llvm.loop !84

._crit_edge90:                                    ; preds = %._crit_edge90.loopexit.unr-lcssa, %bb.c, %.preheader86
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 784
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !63
  %i.bq = trunc i64 %i.bp to i32
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !67
  invoke void @KDTree_QueryCircleIntersectWeighted_Double(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.av, double noundef %1, i32 noundef %i.bq, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu)
          to label %.preheader unwind label %.thread

.preheader:                                       ; preds = %._crit_edge90
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !4   ; 4 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %.preheader
  %i.bx = fsub double %2, %3                      ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !52 ; 3 uses
  %wide.trip.count98 = zext nneg i32 %i.bv to i64 ; 2 uses
  %xtraiter112 = and i64 %wide.trip.count98, 1
  %i.ca = icmp eq i32 %i.bv, 1
  br i1 %i.ca, label %.epil.preheader111, label %.lr.ph92.new

.lr.ph92.new:                                     ; preds = %.lr.ph92
  %unroll_iter116 = and i64 %wide.trip.count98, 2147483646
  br label %bb.h

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %bb.b
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

.thread:                                          ; preds = %._crit_edge93, %._crit_edge90
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %lpad.phi83 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.e ]
  %.idx = shl nuw nsw i64 %i.ah, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %.idx) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

bb.g:                                             ; preds = %bb.g, %.lr.ph89.new
  %indvars.iv = phi i64 [ 0, %.lr.ph89.new ], [ %indvars.iv.next.3, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph89.new ], [ %niter.next.3, %bb.g ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ce
  store double %2, ptr %i.cf, align 8, !tbaa !70
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cj
  store double %2, ptr %i.ck, align 8, !tbaa !70
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.co
  store double %2, ptr %i.cp, align 8, !tbaa !70
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ct
  store double %2, ptr %i.cu, align 8, !tbaa !70
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge90.loopexit.unr-lcssa, label %bb.g, !llvm.loop !86

._crit_edge93.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod114.not, label %._crit_edge93, label %.epil.preheader111

.epil.preheader111:                               ; preds = %._crit_edge93.loopexit.unr-lcssa, %.lr.ph92
  %indvars.iv95.epil.init = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next96.1, %._crit_edge93.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod115 = trunc i32 %i.bv to i1
  call void @llvm.assume(i1 %lcmp.mod115)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv95.epil.init
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !70
  %i.cx = fmul double %i.bx, %i.cw
  %i.cy = fadd double %3, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv95.epil.init
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.db
  store double %i.cy, ptr %i.dc, align 8, !tbaa !70
  br label %._crit_edge93

._crit_edge93:                                    ; preds = %.epil.preheader111, %._crit_edge93.loopexit.unr-lcssa, %.preheader
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 784
  invoke void @KDTree_Destroy(ptr noundef nonnull %i.de)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %.thread

bb.h:                                             ; preds = %bb.h, %.lr.ph92.new
  %indvars.iv95 = phi i64 [ 0, %.lr.ph92.new ], [ %indvars.iv.next96.1, %bb.h ] ; 4 uses
  %niter117 = phi i64 [ 0, %.lr.ph92.new ], [ %niter117.next.1, %bb.h ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv95
  %i.dg = load double, ptr %i.df, align 8, !tbaa !70
  %i.dh = fmul double %i.bx, %i.dg
  %i.di = fadd double %3, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv95
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dl
end_hunk_1
begin_hunk_2_@_ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0113 = phi double [ %i.bt, %bb.f ], [ %i.bj, %bb.e ]
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = sext i32 %i.bv to i64                   ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !70 ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bw
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = icmp sgt i32 %i.ca, %i.aw
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bw
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !70
  %i.ch = fadd double %i.by, %i.cg
  %i.ci = fmul double %i.ch, 5.000000e-01
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0114 = phi double [ %i.ci, %bb.h ], [ %i.by, %bb.g ]
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !70 ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cl
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = icmp sgt i32 %i.cp, %i.aw
  br i1 %i.cq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cl
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !70
  %i.cw = fadd double %i.cn, %i.cv
  %i.cx = fmul double %i.cw, 5.000000e-01
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0115 = phi double [ %i.cx, %bb.j ], [ %i.cn, %bb.i ]
  %i.cy = insertelement <2 x double> poison, double %i.an, i64 0 ; 4 uses
  %i.cz = insertelement <2 x double> %i.cy, double %.0113, i64 1
  %i.da = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = insertelement <2 x double> %i.da, double %.0112, i64 0
  %i.dc = fsub <2 x double> %i.cz, %i.db
  %i.dd = fdiv <2 x double> %i.dc, %i.da
  %i.de = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dd) ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0 ; 4 uses
  %i.dg = extractelement <2 x double> %i.de, i64 1 ; 4 uses
  %i.dh = fcmp olt double %i.dg, %i.df
  %.sroa.speculated135 = select i1 %i.dh, double %i.df, double %i.dg ; 2 uses
  %i.di = fcmp ogt double %.sroa.speculated135, -1.000000e+03
  %.0116 = select i1 %i.di, double %.sroa.speculated135, double -1.000000e+03 ; 2 uses
  %i.dj = fcmp olt double %i.df, %i.dg
  %.sroa.speculated130 = select i1 %i.dj, double %i.dg, double %i.df ; 2 uses
  %i.dk = fcmp ogt double %.sroa.speculated130, %.0116
  %.1 = select i1 %i.dk, double %.sroa.speculated130, double %.0116 ; 2 uses
  %i.dl = insertelement <2 x double> %i.cy, double %.0115, i64 1
  %i.dm = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = insertelement <2 x double> %i.dm, double %.0114, i64 0
  %i.do = fsub <2 x double> %i.dl, %i.dn
  %i.dp = fdiv <2 x double> %i.do, %i.dm
  %i.dq = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dp) ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0 ; 4 uses
  %i.ds = extractelement <2 x double> %i.dq, i64 1 ; 4 uses
  %i.dt = fcmp olt double %i.ds, %i.dr
  %.sroa.speculated125 = select i1 %i.dt, double %i.dr, double %i.ds ; 2 uses
  %i.du = fcmp ogt double %.sroa.speculated125, %.1
  %.2 = select i1 %i.du, double %.sroa.speculated125, double %.1 ; 2 uses
  %i.dv = fcmp olt double %i.dr, %i.ds
  %.sroa.speculated = select i1 %i.dv, double %i.ds, double %i.dr ; 2 uses
  %i.dw = fcmp ogt double %.sroa.speculated, %.2
  %.3 = select i1 %i.dw, double %.sroa.speculated, double %.2 ; 2 uses
  %i.dx = load ptr, ptr %1, align 8, !tbaa !64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.dy, align 4, !tbaa !4
  %i.dz = fcmp ogt double %.3, 1.000000e-01
  br i1 %i.dz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ea = load i32, ptr %i.av, align 4, !tbaa !4
  %i.eb = load i32, ptr %i.w, align 8, !tbaa !102
  %i.ec = icmp slt i32 %i.ea, %i.eb
  br i1 %i.ec, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ed = fcmp olt double %.3, 5.000000e-02
  br i1 %i.ed, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ee = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.n, %bb.l
  %.sink = phi i32 [ 1, %bb.l ], [ -1, %bb.n ]
  store i32 %.sink, ptr %i.dy, align 4, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.n, %bb.m, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp slt i64 %indvars.iv.next, %i.eh
  br i1 %i.ei, label %bb.b, label %._crit_edge, !llvm.loop !103
}

declare noundef i64 @_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN5State8mass_sumEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @cpu_timer_start(ptr noundef nonnull %2)
  switch i32 %1, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader38
  ]

.preheader38:                                     ; preds = %bb.a
  %i.h = load i64, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.j = load i64, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph44, label %.loopexit

.lr.ph44:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %wide.trip.count = and i64 %i.j, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph44, %bb.d
  %indvars.iv.a = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next.a, %bb.d ] ; 4 uses
  %.sroa.012.042 = phi double [ 0.000000e+00, %.lr.ph44 ], [ %.sroa.012.1, %bb.d ] ; 3 uses
  %.sroa.7.041 = phi double [ 0.000000e+00, %.lr.ph44 ], [ %.sroa.7.1, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.a
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.a
  %i.s = load double, ptr %i.r, align 8, !tbaa !70
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1048
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.a
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load double, ptr %i.z, align 8, !tbaa !70
  %i.ab = fmul double %i.s, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 1072
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.x
  %i.af = load double, ptr %i.ae, align 8, !tbaa !70
  %i.ag = fmul double %i.ab, %i.af
  %i.ah = fadd double %.sroa.7.041, %i.ag
  %i.ai = fadd double %.sroa.7.041, %.sroa.012.042 ; 2 uses
  %i.aj = fsub double %i.ai, %.sroa.012.042
  %i.ak = fsub double %i.ah, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.7.1 = phi double [ %i.ak, %bb.c ], [ %.sroa.7.041, %bb.b ] ; 2 uses
  %.sroa.012.1 = phi double [ %i.ai, %bb.c ], [ %.sroa.012.042, %bb.b ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !104

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.al = fadd double %.sroa.7.1, %.sroa.012.1
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.am = phi i64 [ 0, %.lr.ph ], [ %4, %bb.g ]   ; 3 uses
  %.040 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.03439 = phi i32 [ 0, %.lr.ph ], [ %3, %bb.g ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.am
  %i.as = load double, ptr %i.ar, align 8, !tbaa !70
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1048
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load double, ptr %i.az, align 8, !tbaa !70
  %i.bb = fmul double %i.as, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 1072
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !67
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ax
  %i.bf = load double, ptr %i.be, align 8, !tbaa !70
  %i.bg = fmul double %i.bb, %i.bf
  %i.bh = fadd double %.040, %i.bg
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi double [ %i.bh, %bb.f ], [ %.040, %bb.e ] ; 2 uses
  %3 = add i32 %.03439, 1                         ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.bi = icmp ugt i64 %i.h, %4
  br i1 %i.bi, label %bb.e, label %.loopexit, !llvm.loop !105

.loopexit:                                        ; preds = %bb.g, %.preheader, %._crit_edge.loopexit, %.preheader38, %bb.a
  %.033 = phi double [ %i.al, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.preheader38 ], [ 0.000000e+00, %.preheader ], [ %.1, %bb.g ]
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !63
  %i.bj = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !70
  %i.bm = fadd double %i.bj, %i.bl
  store double %i.bm, ptr %i.bk, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret double %.033
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5State24resize_old_device_memoryEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(368) %0, i64 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5State18output_timing_infoEiid(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, i32 noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #11 align 2 {
thread-pre-split:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5State18output_timer_blockE17mesh_device_typesddddd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State12timer_outputE12state_timers17mesh_device_typesi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106
  %i.f = icmp eq i32 %2, 0
  %i.g = zext i32 %1 to i64                       ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load double, ptr %i.i, align 8, !tbaa !70
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  %i.m = load i64, ptr %i.l, align 8, !tbaa !107
  %i.n = sitofp i64 %i.m to double
  %i.o = fmul nnan double %i.n, 1.000000e-09
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  store i8 47, ptr %i.a, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 48, ptr %i.p, align 1
  %i.q = icmp eq i32 %i.e, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = zext i32 %2 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN5State12timer_outputE12state_timers17mesh_device_typesi.device_string, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109
  %i.u = shl nsw i32 %3, 1
  %i.v = zext i32 %1 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZL22state_timer_descriptor, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !109
  %i.y = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %i.t, i32 noundef %i.u, ptr noundef nonnull @.str.11, ptr noundef %i.x) #21 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi ptr [ %.pre, %bb.e ], [ %i.c, %bb.d ]
  call void @_ZN4Mesh15parallel_outputEPKcdiS1_(ptr noundef nonnull align 8 dereferenceable(2288) %i.z, ptr noundef nonnull %i.a, double noundef %.0, i32 noundef %3, ptr noundef nonnull @.str.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @_ZN4Mesh15parallel_outputEPKcdiS1_(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State37compare_state_cpu_local_to_cpu_globalEPS_PKcijjPiS3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(368) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = zext i32 %5 to i64                       ; 6 uses
  %.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit59, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 5 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 5 uses
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !70
  %i.j = add nsw i64 %i.g, -1                     ; 4 uses
  %i.k = icmp eq i64 %i.j, 0                      ; 3 uses
  br i1 %i.k, label %bb.b, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !70
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23
          to label %.noexc47 unwind label %bb.e   ; 5 uses

.noexc47:                                         ; preds = %bb.b
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !70
  br i1 %i.k, label %bb.c, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i43

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i43: ; preds = %.noexc47
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.idx.i.i.i.i.i.i.i44 = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i44, i1 false), !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i43, %.noexc47
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23
          to label %.noexc54 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit61 ; 4 uses

.noexc54:                                         ; preds = %bb.c
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !70
  br i1 %i.k, label %.lr.ph.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i50

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i50, %.noexc54
  br label %.lr.ph

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i50: ; preds = %.noexc54
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.idx.i.i.i.i.i.i.i51 = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i51, i1 false), !tbaa !70
  br label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.k
  %.idx = shl nuw nsw i64 %i.g, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %.idx) #24
  %.idx144 = shl nuw nsw i64 %i.g, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx144) #24
  %.idx145 = shl nuw nsw i64 %i.g, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %.idx145) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit59

_ZNSt6vectorIdSaIdEED2Ev.exit59:                  ; preds = %bb.a, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit63

_ZNSt6vectorIdSaIdEED2Ev.exit61:                  ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit63

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph.preheader ] ; 10 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.v = load double, ptr %i.u, align 8, !tbaa !70 ; 2 uses
  %i.w = fsub double %i.t, %i.v
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp ogt double %i.x, 2.000000e-02
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.z = trunc nuw i64 %indvars.iv to i32
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %2, i32 noundef %3, i32 noundef %i.z, double noundef %i.t, double noundef %i.v) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.af = fsub double %i.ac, %i.ae
end_hunk_2
