Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 559
begin_hunk_0_@_ZN10tetgenmesh24suppressbdrysteinerpointEPd:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = sext i32 %i.aa to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !60
  %i.al = ashr i32 %i.ak, 1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !221
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, -8
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0290.0 = phi ptr [ %i.u, %bb.c ], [ %i.ar, %bb.d ] ; 2 uses
  %.sroa.0284.0 = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !219
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 156
  %i.av = load i32, ptr %i.au, align 4, !tbaa !186
  %i.aw = icmp sgt i32 %i.av, 2
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.0284.0, i64 %i.w
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !221
  %i.az = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16, !tbaa !60
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %.sroa.0290.0, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !221
  %i.bd = load i32, ptr %i.h, align 4, !tbaa !60
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.g
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !60
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.g
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !60
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.401, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.bh) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bj = load ptr, ptr %.sroa.0290.0, align 8, !tbaa !221
  %i.bk = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bl = and i64 %i.bk, -8                       ; 3 uses
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %.loopexit405, label %.preheader404

.preheader404:                                    ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2888
  %i.bo = and i64 %i.bk, 7
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.bo
  br label %bb.h

bb.h:                                             ; preds = %.preheader404, %bb.j
  %.sroa.0309.0 = phi ptr [ %i.cy, %bb.j ], [ %i.bm, %.preheader404 ] ; 3 uses
  %.sroa.8.0.in.in = phi i64 [ %i.cw, %bb.j ], [ %i.bk, %.preheader404 ] ; 2 uses
  %.sroa.8.0.in = trunc i64 %.sroa.8.0.in.in to i32
  %.sroa.8.0 = and i32 %.sroa.8.0.in, 7           ; 3 uses
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !259 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !101
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, i32 noundef %i.bt)
  %i.bv = load i64, ptr %i.br, align 8, !tbaa !101 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !102
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = sext i32 %i.by to i64
  %i.ca = and i64 %i.bv, %i.bz
  %i.cb = load i32, ptr %i.bq, align 8, !tbaa !103
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.ca, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.bu, i64 %i.cd ; 2 uses
  %i.cf = add nsw i64 %i.bv, 1
  store i64 %i.cf, ptr %i.br, align 8, !tbaa !101
  store ptr %.sroa.0309.0, ptr %i.ce, align 8, !tbaa !225
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  store i32 %.sroa.8.0, ptr %i.cg, align 8, !tbaa !226
  %i.ch = and i64 %.sroa.8.0.in.in, 7
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !60
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %.sroa.0309.0, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !221
  %i.cn = load i32, ptr %i.bp, align 4, !tbaa !60
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !221
  %.not217 = icmp eq ptr %i.cm, %i.cq
  br i1 %.not217, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = xor i32 %.sroa.8.0, 1
  store i32 %i.cr, ptr %i.cg, align 8, !tbaa !226
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cs = lshr i32 %.sroa.8.0, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0309.0, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !221
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = and i64 %i.cw, -8                       ; 3 uses
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = icmp eq i64 %i.cx, 0
  %i.da = icmp eq i64 %i.cx, %i.bl
  %or.cond = or i1 %i.cz, %i.da
  br i1 %or.cond, label %.loopexit405, label %bb.h, !llvm.loop !1127

.loopexit405:                                     ; preds = %bb.j, %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2888
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !259 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !101
  %i.df = icmp slt i64 %i.de, 2
  br i1 %i.df, label %bb.k, label %.loopexit406

bb.k:                                             ; preds = %.loopexit405
  store i64 0, ptr %i.dd, align 8, !tbaa !101
  br label %bb.ca

bb.l:                                             ; preds = %bb.a
  %i.dg = icmp eq i32 %i.k, 6
  br i1 %i.dg, label %bb.m, label %bb.ca

bb.m:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !219
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 156
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !186
  %i.dl = icmp sgt i32 %i.dk, 2
  br i1 %i.dl, label %bb.n, label %.loopexit406.loopexit

bb.n:                                             ; preds = %bb.m
  %i.dm = load i32, ptr %i.h, align 4, !tbaa !60
  %i.dn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.402, i32 noundef %i.dm) ; 0 uses
  br label %.loopexit406.loopexit

.loopexit406.loopexit:                            ; preds = %bb.n, %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 68660
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !245
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [8 x i8], ptr %1, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !221
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  %i.dw = and i32 %i.dv, 7                        ; 2 uses
  %i.dx = and i64 %i.du, -8
  %i.dy = inttoptr i64 %i.dx to ptr               ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !259 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !101
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, i32 noundef %i.ed)
  %i.ef = load i64, ptr %i.eb, align 8, !tbaa !101 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !102
  %i.ei = add nsw i32 %i.eh, -1
  %i.ej = sext i32 %i.ei to i64
  %i.ek = and i64 %i.ef, %i.ej
  %i.el = load i32, ptr %i.ea, align 8, !tbaa !103
  %i.em = sext i32 %i.el to i64
  %i.en = mul nsw i64 %i.ek, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.ee, i64 %i.en ; 2 uses
  %i.ep = add nsw i64 %i.ef, 1
  store i64 %i.ep, ptr %i.eb, align 8, !tbaa !101
  store ptr %i.dy, ptr %i.eo, align 8, !tbaa !225
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 %i.dw, ptr %i.eq, align 8, !tbaa !226
  %i.er = xor i32 %i.dw, 1
  %i.es = load ptr, ptr %i.dz, align 8, !tbaa !259 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !101
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.es, i32 noundef %i.ev)
  %i.ex = load i64, ptr %i.et, align 8, !tbaa !101 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !102
  %i.fa = add nsw i32 %i.ez, -1
  %i.fb = sext i32 %i.fa to i64
  %i.fc = and i64 %i.ex, %i.fb
  %i.fd = load i32, ptr %i.es, align 8, !tbaa !103
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul nsw i64 %i.fc, %i.fe
  %i.fg = getelementptr inbounds i8, ptr %i.ew, i64 %i.ff ; 2 uses
  %i.fh = add nsw i64 %i.ex, 1
  store i64 %i.fh, ptr %i.et, align 8, !tbaa !101
  store ptr %i.dy, ptr %i.fg, align 8, !tbaa !225
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.er, ptr %i.fi, align 8, !tbaa !226
  %.pre = load ptr, ptr %i.dz, align 8, !tbaa !259
  br label %.loopexit406

.loopexit406:                                     ; preds = %.loopexit406.loopexit, %.loopexit405
  %i.fj = phi ptr [ %.pre, %.loopexit406.loopexit ], [ %i.dc, %.loopexit405 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store ptr null, ptr %2, align 8, !tbaa !232
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.fk, align 8, !tbaa !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !101 ; 5 uses
  %i.fo = trunc i64 %i.fn to i32                  ; 2 uses
  %sext = shl i64 %i.fn, 32                       ; 5 uses
  %i.fp = ashr exact i64 %sext, 32                ; 3 uses
  %i.fq = icmp ugt i64 %i.fp, 2305843009213693951
  %i.fr = ashr exact i64 %sext, 29
  %i.fs = select i1 %i.fq, i64 -1, i64 %i.fr
  %i.ft = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fs) #41 ; 11 uses
  %i.fu = icmp sgt i32 %i.fo, 0                   ; 3 uses
  br i1 %i.fu, label %.lr.ph.preheader, label %.preheader402

.lr.ph.preheader:                                 ; preds = %.loopexit406
  %i.fv = shl i64 %i.fn, 3
  %i.fw = and i64 %i.fv, 17179869176
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ft, i8 0, i64 %i.fw, i1 false), !tbaa !113
  br label %.preheader402

.preheader402:                                    ; preds = %.lr.ph.preheader, %.loopexit406
  %i.fx = load ptr, ptr %i.fl, align 8, !tbaa !259 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !101
  %i.ga = icmp sgt i64 %i.fz, 0
  br i1 %i.ga, label %.lr.ph501, label %.loopexit403.thread

.lr.ph501:                                        ; preds = %.preheader402
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 68584
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 10 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 68640
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 68648
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph501, %bb.at
  %i.gp = phi ptr [ %i.fx, %.lr.ph501 ], [ %i.afd, %bb.at ] ; 5 uses
  %indvars.iv579 = phi i64 [ 0, %.lr.ph501 ], [ %indvars.iv.next580, %bb.at ] ; 6 uses
  %.sroa.9.0499 = phi double [ 0.000000e+00, %.lr.ph501 ], [ %.sroa.9.5, %bb.at ] ; 2 uses
  %.sroa.0278.0496 = phi ptr [ null, %.lr.ph501 ], [ %.sroa.0278.2, %bb.at ] ; 3 uses
  %.sroa.9.0368495 = phi i32 [ 0, %.lr.ph501 ], [ %.sroa.9.2370, %bb.at ] ; 3 uses
  %i.gq = phi <2 x double> [ zeroinitializer, %.lr.ph501 ], [ %i.afe, %bb.at ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !105
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !104
  %i.gv = trunc nuw nsw i64 %indvars.iv579 to i32 ; 4 uses
  %i.gw = lshr i32 %i.gv, %i.gu
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !54
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !111
  %i.hc = and i32 %i.hb, %i.gv
  %i.hd = load i32, ptr %i.gp, align 8, !tbaa !103
  %i.he = mul nsw i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %i.gz, i64 %i.hf ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !225
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !226 ; 2 uses
  %i.hk = and i32 %i.hj, 1
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !221
  %i.hp = ptrtoint ptr %i.ho to i64               ; 3 uses
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = and i32 %i.hq, 15                       ; 2 uses
  store i32 %i.hr, ptr %i.fk, align 8, !tbaa !237
  %i.hs = and i64 %i.hp, -16                      ; 3 uses
  %i.ht = inttoptr i64 %i.hs to ptr               ; 4 uses
  %i.hu = icmp eq i64 %i.hs, 0
  br i1 %i.hu, label %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hv = and i64 %i.hp, 15
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr @_ZN10tetgenmesh10stpivottblE, i64 %i.hv
  %i.hx = sext i32 %i.hj to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !60 ; 2 uses
  store i32 %i.hz, ptr %i.fk, align 8, !tbaa !237
  br label %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit

_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit: ; preds = %bb.o, %bb.p
  %i.ia = phi i32 [ %i.hr, %bb.o ], [ %i.hz, %bb.p ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !221
  %i.id = load ptr, ptr %i.gb, align 8, !tbaa !251
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %bb.at, label %bb.q

bb.q:                                             ; preds = %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit
  %i.if = sext i32 %i.ia to i64
  %i.ig = or i64 %i.hs, %i.if
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = load i32, ptr %i.gc, align 4, !tbaa !245
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ij
  store ptr %i.ih, ptr %i.ik, align 8, !tbaa !221
  %i.il = load ptr, ptr %i.gd, align 8, !tbaa !267
  %i.im = load ptr, ptr %i.ge, align 8, !tbaa !257
  %i.in = call noundef i32 @_ZN10tetgenmesh13getvertexstarEiPdPNS_9arraypoolES2_S2_(ptr noundef nonnull align 8 dereferenceable(69984) %0, i32 noundef 0, ptr noundef %1, ptr noundef %i.il, ptr noundef null, ptr noundef %i.im) ; 0 uses
  %i.io = load ptr, ptr %i.hg, align 8, !tbaa !225 ; 3 uses
  %i.ip = load i32, ptr %i.hi, align 8, !tbaa !226
  %i.iq = sext i32 %i.ip to i64                   ; 3 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !60
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.it
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !221 ; 4 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.iq
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !60
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !221 ; 4 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.iq
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !60
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !221 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.ji = load <2 x double>, ptr %i.ja, align 8, !tbaa !59 ; 6 uses
  %i.jj = load <2 x double>, ptr %i.iv, align 8, !tbaa !59 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %i.jl = load <2 x double>, ptr %i.jh, align 8, !tbaa !59 ; 7 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !59 ; 2 uses
  %i.jp = load <2 x double>, ptr %i.jg, align 8, !tbaa !59 ; 5 uses
  %i.jq = load double, ptr %i.jk, align 8, !tbaa !59
  %i.jr = load <2 x double>, ptr %i.jf, align 8, !tbaa !59 ; 3 uses
  %i.js = load double, ptr %i.jm, align 8, !tbaa !59
  %i.jt = shufflevector <2 x double> %i.ji, <2 x double> %i.jj, <2 x i32> <i32 0, i32 2>
  %i.ju = shufflevector <2 x double> %i.jj, <2 x double> %i.jr, <2 x i32> <i32 0, i32 2>
  %i.jv = fsub <2 x double> %i.jt, %i.ju          ; 4 uses
  %i.jw = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jx = shufflevector <2 x double> %i.jp, <2 x double> %i.jl, <2 x i32> <i32 0, i32 2>
  %i.jy = shufflevector <2 x double> %i.jl, <2 x double> %i.jr, <2 x i32> <i32 0, i32 3>
  %i.jz = fsub <2 x double> %i.jx, %i.jy          ; 4 uses
  %i.ka = shufflevector <2 x double> %i.jl, <2 x double> %i.jp, <2 x i32> <i32 3, i32 1>
  %i.kb = insertelement <2 x double> %i.jw, double %i.jo, i64 1
  %i.kc = fsub <2 x double> %i.ka, %i.kb          ; 4 uses
  %foldExtExtBinop = fsub <2 x double> %i.jr, %i.ji
  %i.kd = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 4 uses
  %i.ke = extractelement <2 x double> %i.jp, i64 0
  %i.kf = fsub double %i.js, %i.ke                ; 4 uses
  %i.kg = fsub double %i.jo, %i.jq                ; 4 uses
  %i.kh = fmul <2 x double> %i.jz, %i.jz
  %i.ki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.jv, <2 x double> %i.kh)
  %i.kj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.kc, <2 x double> %i.ki) ; 2 uses
  %i.kk = fmul double %i.kf, %i.kf
  %i.kl = call double @llvm.fmuladd.f64(double %i.kd, double %i.kd, double %i.kk)
  %i.km = call noundef double @llvm.fmuladd.f64(double %i.kg, double %i.kg, double %i.kl)
  %i.kn = extractelement <2 x double> %i.kj, i64 0 ; 3 uses
  %i.ko = extractelement <2 x double> %i.kj, i64 1 ; 2 uses
  %i.kp = fcmp olt double %i.kn, %i.ko            ; 7 uses
  %..i = select i1 %i.kp, double %i.ko, double %i.kn
  %i.kq = fcmp olt double %..i, %i.km             ; 6 uses
  %i.kr = extractelement <2 x double> %i.jz, i64 1 ; 2 uses
  %.56.i.sroa.sel333.val = select i1 %i.kp, double %i.kf, double %i.kr
  %i.ks = extractelement <2 x double> %i.jz, i64 0 ; 2 uses
  %i.kt = select i1 %i.kq, double %i.ks, double %.56.i.sroa.sel333.val ; 2 uses
  %i.ku = extractelement <2 x double> %i.kc, i64 0 ; 2 uses
  %.57.i.sroa.sel340.val = select i1 %i.kp, double %i.ku, double %i.kg
  %i.kv = extractelement <2 x double> %i.kc, i64 1 ; 2 uses
  %i.kw = select i1 %i.kq, double %i.kv, double %.57.i.sroa.sel340.val ; 2 uses
  %.57.i.sroa.sel.val = select i1 %i.kp, double %i.ks, double %i.kf
  %i.kx = select i1 %i.kq, double %i.kr, double %.57.i.sroa.sel.val ; 2 uses
  %.56.i.sroa.sel.val = select i1 %i.kp, double %i.kg, double %i.kv
  %i.ky = select i1 %i.kq, double %i.ku, double %.56.i.sroa.sel.val
  %i.kz = fneg double %i.ky                       ; 2 uses
  %i.la = fmul double %i.kx, %i.kz
  %i.lb = call double @llvm.fmuladd.f64(double %i.kt, double %i.kw, double %i.la) ; 3 uses
  %i.lc = extractelement <2 x double> %i.jv, i64 1 ; 2 uses
  %.56.i.val = select i1 %i.kp, double %i.kd, double %i.lc
  %i.ld = extractelement <2 x double> %i.jv, i64 0 ; 2 uses
  %i.le = select i1 %i.kq, double %i.ld, double %.56.i.val ; 2 uses
  %.57.i.val = select i1 %i.kp, double %i.ld, double %i.kd
  %i.lf = select i1 %i.kq, double %i.lc, double %.57.i.val ; 2 uses
  %i.lg = fmul double %i.lf, %i.kz
  %i.lh = call double @llvm.fmuladd.f64(double %i.le, double %i.kw, double %i.lg) ; 3 uses
  %i.li = fneg double %i.kt
  %i.lj = fmul double %i.lf, %i.li
  %i.lk = call double @llvm.fmuladd.f64(double %i.le, double %i.kx, double %i.lj) ; 3 uses
  %i.ll = fneg double %i.lb
  %i.lm = fneg double %i.lk
  %i.ln = fmul double %i.lh, %i.lh
  %i.lo = call double @llvm.fmuladd.f64(double %i.lb, double %i.lb, double %i.ln)
  %i.lp = call double @llvm.fmuladd.f64(double %i.lk, double %i.lk, double %i.lo)
  %sqrt = call double @llvm.sqrt.f64(double %i.lp) ; 2 uses
  %i.lq = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.lr = insertelement <2 x double> %i.lq, double %i.lh, i64 1
  %i.ls = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.lt = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lu = fdiv <2 x double> %i.lr, %i.lt          ; 2 uses
  %i.lv = fdiv double %i.lm, %sqrt                ; 2 uses
  br i1 %i.l, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.lw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.lx = load ptr, ptr %i.fl, align 8, !tbaa !259 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !105
  %i.ma = trunc i64 %indvars.iv579 to i32
  %i.mb = add i32 %i.ma, 1
  %i.mc = srem i32 %i.mb, %i.fo                   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.me = load i32, ptr %i.md, align 8, !tbaa !104
  %i.mf = lshr i32 %i.mc, %i.me
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mg
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !54
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 12
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !111
  %i.ml = and i32 %i.mk, %i.mc
  %i.mm = load i32, ptr %i.lx, align 8, !tbaa !103
  %i.mn = mul nsw i32 %i.ml, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds i8, ptr %i.mi, i64 %i.mo ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !225
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !226
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !60
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mq, i64 %i.mw
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !221 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load <2 x double>, ptr %i.my, align 8, !tbaa !59 ; 3 uses
  %i.nb = shufflevector <2 x double> %i.jj, <2 x double> %i.ji, <2 x i32> <i32 0, i32 2>
  %i.nc = shufflevector <2 x double> %i.ji, <2 x double> %i.na, <2 x i32> <i32 0, i32 2>
  %i.nd = fsub <2 x double> %i.nb, %i.nc          ; 4 uses
  %i.ne = shufflevector <2 x double> %i.jj, <2 x double> %i.ji, <2 x i32> <i32 1, i32 3>
  %i.nf = shufflevector <2 x double> %i.ji, <2 x double> %i.na, <2 x i32> <i32 1, i32 3>
  %i.ng = fsub <2 x double> %i.ne, %i.nf          ; 6 uses
  %i.nh = shufflevector <2 x double> %i.jl, <2 x double> %i.jp, <2 x i32> <i32 1, i32 3>
  %i.ni = fmul <2 x double> %i.ng, %i.ng
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> %i.nd, <2 x double> %i.ni)
  %i.nk = load <2 x double>, ptr %i.mz, align 8, !tbaa !59 ; 3 uses
  %i.nl = shufflevector <2 x double> %i.jp, <2 x double> %i.nk, <2 x i32> <i32 1, i32 3>
  %i.nm = fsub <2 x double> %i.nh, %i.nl          ; 4 uses
  %i.nn = shufflevector <2 x double> %i.na, <2 x double> %i.nk, <2 x i32> <i32 0, i32 2>
  %i.no = shufflevector <2 x double> %i.jj, <2 x double> %i.jl, <2 x i32> <i32 0, i32 2>
  %i.np = fsub <2 x double> %i.nn, %i.no          ; 5 uses
  %i.nq = fsub <2 x double> %i.nk, %i.jl          ; 3 uses
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.nm, <2 x double> %i.nj) ; 2 uses
  %foldExtExtBinop770 = fmul <2 x double> %i.np, %i.np
  %i.ns = extractelement <2 x double> %foldExtExtBinop770, i64 1
  %i.nt = extractelement <2 x double> %i.np, i64 0 ; 2 uses
  %i.nu = call double @llvm.fmuladd.f64(double %i.nt, double %i.nt, double %i.ns)
  %i.nv = extractelement <2 x double> %i.nq, i64 1 ; 2 uses
  %i.nw = call noundef double @llvm.fmuladd.f64(double %i.nv, double %i.nv, double %i.nu)
  %i.nx = extractelement <2 x double> %i.nr, i64 0 ; 2 uses
  %i.ny = extractelement <2 x double> %i.nr, i64 1 ; 2 uses
  %i.nz = fcmp olt double %i.nx, %i.ny            ; 2 uses
  %..i225 = select i1 %i.nz, double %i.ny, double %i.nx
  %i.oa = fcmp olt double %..i225, %i.nw
  %i.ob = insertelement <2 x i1> poison, i1 %i.nz, i64 0
  %i.oc = shufflevector <2 x i1> %i.ob, <2 x i1> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.od = shufflevector <2 x double> %i.ng, <2 x double> %i.nm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.oe = select <2 x i1> %i.oc, <2 x double> %i.od, <2 x double> %i.nq
  %i.of = shufflevector <2 x double> %i.nd, <2 x double> %i.ng, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.og = select <2 x i1> %i.oc, <2 x double> %i.of, <2 x double> %i.np
  %i.oh = insertelement <2 x i1> poison, i1 %i.oa, i64 0
  %i.oi = shufflevector <2 x i1> %i.oh, <2 x i1> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.oj = shufflevector <2 x double> %i.ng, <2 x double> %i.nm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ok = select <2 x i1> %i.oi, <2 x double> %i.oj, <2 x double> %i.oe ; 2 uses
  %i.ol = select <2 x i1> %i.oc, <2 x double> %i.nq, <2 x double> %i.oj
  %i.om = shufflevector <2 x double> %i.nd, <2 x double> %i.ng, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.on = select <2 x i1> %i.oc, <2 x double> %i.np, <2 x double> %i.om
  %i.oo = select <2 x i1> %i.oi, <2 x double> %i.od, <2 x double> %i.ol
  %i.op = select <2 x i1> %i.oi, <2 x double> %i.of, <2 x double> %i.on ; 2 uses
  %i.oq = select <2 x i1> %i.oi, <2 x double> %i.om, <2 x double> %i.og ; 2 uses
  %i.or = fneg <2 x double> %i.oo                 ; 2 uses
  %shift = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop772 = fmul <2 x double> %i.oq, %shift
  %i.os = extractelement <2 x double> %foldExtExtBinop772, i64 0
  %i.ot = fmul <2 x double> %i.oq, %i.or
  %i.ou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.op, <2 x double> %i.ok, <2 x double> %i.ot) ; 3 uses
  %i.ov = extractelement <2 x double> %i.ou, i64 0 ; 2 uses
  %i.ow = extractelement <2 x double> %i.ou, i64 1 ; 2 uses
  %i.ox = fneg <2 x double> %i.ou                 ; 2 uses
  %i.oy = extractelement <2 x double> %i.op, i64 0
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh24suppressbdrysteinerpointEPd:bb.a
  %i.yn = phi ptr [ %i.acf, %bb.al ], [ %i.xj, %.lr.ph447.split.preheader ] ; 2 uses
  %.2198446 = phi i32 [ %i.aco, %bb.al ], [ 1, %.lr.ph447.split.preheader ] ; 3 uses
  %.1204445 = phi double [ %.2205, %bb.al ], [ %.0203492, %.lr.ph447.split.preheader ] ; 4 uses
  %.sroa.9.2444 = phi double [ %.sroa.9.3, %bb.al ], [ %.sroa.9.1491, %.lr.ph447.split.preheader ] ; 2 uses
  %i.yo = phi <2 x double> [ %i.acn, %bb.al ], [ %i.xg, %.lr.ph447.split.preheader ] ; 2 uses
  %i.yp = uitofp nneg i32 %.2198446 to double
  %i.yq = fdiv double %i.yp, %i.xi                ; 2 uses
  %i.yr = insertelement <2 x double> poison, double %i.yq, i64 0
  %i.ys = shufflevector <2 x double> %i.yr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ys, <2 x double> %i.xc, <2 x double> %i.xb)
  store <2 x double> %i.yt, ptr %i.d, align 16, !tbaa !59
  %i.yu = call double @llvm.fmuladd.f64(double %i.yq, double %i.xf, double %i.xe)
  store double %i.yu, ptr %i.gi, align 16, !tbaa !59
  %i.yv = icmp sgt i64 %i.ym, 0
  br i1 %i.yv, label %.lr.ph435, label %._crit_edge436

.lr.ph435:                                        ; preds = %.lr.ph447.split, %bb.ag
  %indvars.iv574 = phi i64 [ %indvars.iv.next575, %bb.ag ], [ 0, %.lr.ph447.split ] ; 3 uses
  %i.yw = phi ptr [ %i.aca, %bb.ag ], [ %i.yn, %.lr.ph447.split ] ; 4 uses
  %.0201432 = phi double [ %.1202, %bb.ag ], [ -1.000000e+00, %.lr.ph447.split ] ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !105
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !104
  %i.zb = trunc nuw nsw i64 %indvars.iv574 to i32 ; 2 uses
  %i.zc = lshr i32 %i.zb, %i.za
  %i.zd = zext nneg i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.zd
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !54
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yw, i64 12
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !111
  %i.zi = and i32 %i.zh, %i.zb
  %i.zj = load i32, ptr %i.yw, align 8, !tbaa !103
  %i.zk = mul nsw i32 %i.zi, %i.zj
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr inbounds i8, ptr %i.zf, i64 %i.zl ; 2 uses
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !232 ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !237
  %i.zq = sext i32 %i.zp to i64                   ; 3 uses
  %i.zr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.zq
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !60
  %i.zt = sext i32 %i.zs to i64
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.zn, i64 %i.zt
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !221 ; 4 uses
  %i.zw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.zq
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !60
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.zn, i64 %i.zy
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !221 ; 3 uses
  %i.aab = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.zq
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !60
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds [8 x i8], ptr %i.zn, i64 %i.aad
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !221 ; 4 uses
  %i.aag = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.aaa, ptr noundef %i.zv, ptr noundef %i.aaf, ptr noundef nonnull %i.d) ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !59 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !59 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !59 ; 2 uses
  %i.aap = load <2 x double>, ptr %i.aaa, align 8, !tbaa !59 ; 4 uses
  %i.aaq = load <2 x double>, ptr %i.zv, align 8, !tbaa !59 ; 3 uses
  %i.aar = load double, ptr %i.aah, align 8, !tbaa !59
  %i.aas = load <2 x double>, ptr %i.aaf, align 8, !tbaa !59 ; 3 uses
  %i.aat = load double, ptr %i.aam, align 8, !tbaa !59
  %i.aau = shufflevector <2 x double> %i.aap, <2 x double> %i.aas, <2 x i32> <i32 0, i32 2>
  %i.aav = shufflevector <2 x double> %i.aaq, <2 x double> %i.aap, <2 x i32> <i32 0, i32 2>
  %i.aaw = fsub <2 x double> %i.aau, %i.aav       ; 2 uses
  %i.aax = shufflevector <2 x double> %i.aap, <2 x double> %i.aas, <2 x i32> <i32 1, i32 3>
  %i.aay = shufflevector <2 x double> %i.aaq, <2 x double> %i.aap, <2 x i32> <i32 1, i32 3>
  %i.aaz = fsub <2 x double> %i.aax, %i.aay       ; 2 uses
  %i.aba = fmul <2 x double> %i.aaz, %i.aaz
  %i.abb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaw, <2 x double> %i.aaw, <2 x double> %i.aba)
  %i.abc = insertelement <2 x double> poison, double %i.aaj, i64 0
  %i.abd = insertelement <2 x double> %i.abc, double %i.aao, i64 1
  %i.abe = insertelement <2 x double> poison, double %i.aal, i64 0
  %i.abf = insertelement <2 x double> %i.abe, double %i.aaj, i64 1
  %i.abg = fsub <2 x double> %i.abd, %i.abf       ; 2 uses
  %i.abh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abg, <2 x double> %i.abg, <2 x double> %i.abb)
  %i.abi = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.abh) ; 2 uses
  %foldExtExtBinop774 = fsub <2 x double> %i.aaq, %i.aas
  %i.abj = extractelement <2 x double> %foldExtExtBinop774, i64 0 ; 2 uses
  %i.abk = fsub double %i.aar, %i.aat             ; 2 uses
  %i.abl = fmul double %i.abk, %i.abk
  %i.abm = call double @llvm.fmuladd.f64(double %i.abj, double %i.abj, double %i.abl)
  %i.abn = fsub double %i.aal, %i.aao             ; 2 uses
  %i.abo = call double @llvm.fmuladd.f64(double %i.abn, double %i.abn, double %i.abm)
  %sqrt.i233 = call noundef double @llvm.sqrt.f64(double %i.abo)
  %shift776 = shufflevector <2 x double> %i.abi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop777 = fadd <2 x double> %i.abi, %shift776
  %i.abp = extractelement <2 x double> %foldExtExtBinop777, i64 0
  %i.abq = fadd double %sqrt.i233, %i.abp
  %i.abr = fdiv double %i.abq, 3.000000e+00       ; 3 uses
  %i.abs = fmul double %i.abr, %i.abr
  %i.abt = fmul double %i.abr, %i.abs
  %i.abu = call double @llvm.fabs.f64(double %i.aag)
  %i.abv = fdiv double %i.abu, %i.abt
  %i.abw = fcmp olt double %i.abv, 1.000000e-08
  %spec.store.select = select i1 %i.abw, double 0.000000e+00, double %i.aag ; 4 uses
  %i.abx = fcmp ugt double %spec.store.select, 0.000000e+00
  br i1 %i.abx, label %bb.ad, label %.lr.ph435.._crit_edge436.loopexit_crit_edge

.lr.ph435.._crit_edge436.loopexit_crit_edge:      ; preds = %.lr.ph435
  %.pre621.pre = load ptr, ptr %i.gd, align 8, !tbaa !267 ; 2 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre621.pre, i64 32
  %.pre628.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !101
  br label %._crit_edge436

bb.ad:                                            ; preds = %.lr.ph435
  %i.aby = fcmp oeq double %.0201432, -1.000000e+00
  br i1 %i.aby, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.abz = fcmp olt double %spec.store.select, %.0201432
  br i1 %i.abz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af, %bb.ae
  %.1202 = phi double [ %.0201432, %bb.ae ], [ %spec.store.select, %bb.af ], [ %spec.store.select, %bb.ad ] ; 2 uses
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 3 uses
  %i.aca = load ptr, ptr %i.gd, align 8, !tbaa !267 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 32
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !101 ; 2 uses
  %i.acd = icmp sgt i64 %i.acc, %indvars.iv.next575
  br i1 %i.acd, label %.lr.ph435, label %._crit_edge436, !llvm.loop !1135

._crit_edge436:                                   ; preds = %bb.ag, %.lr.ph435.._crit_edge436.loopexit_crit_edge, %.lr.ph447.split
  %i.ace = phi i64 [ %i.ym, %.lr.ph447.split ], [ %.pre628.pre, %.lr.ph435.._crit_edge436.loopexit_crit_edge ], [ %i.acc, %bb.ag ] ; 2 uses
  %i.acf = phi ptr [ %i.yn, %.lr.ph447.split ], [ %.pre621.pre, %.lr.ph435.._crit_edge436.loopexit_crit_edge ], [ %i.aca, %bb.ag ]
  %.0201.lcssa = phi double [ -1.000000e+00, %.lr.ph447.split ], [ %.0201432, %.lr.ph435.._crit_edge436.loopexit_crit_edge ], [ %.1202, %bb.ag ] ; 3 uses
  %.lcssa414 = phi i64 [ 0, %.lr.ph447.split ], [ %indvars.iv574, %.lr.ph435.._crit_edge436.loopexit_crit_edge ], [ %indvars.iv.next575, %bb.ag ]
  %i.acg = icmp eq i64 %i.ace, %.lcssa414
  br i1 %i.acg, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %._crit_edge436
  %i.ach = fcmp oeq double %.1204445, -1.000000e+00
  br i1 %i.ach, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.aci = load <2 x double>, ptr %i.d, align 16, !tbaa !59
  %i.acj = load double, ptr %i.gi, align 16, !tbaa !59
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.ack = fcmp olt double %.1204445, %.0201.lcssa
  br i1 %i.ack, label %bb.ak, label %._crit_edge448

bb.ak:                                            ; preds = %bb.aj
  %i.acl = load <2 x double>, ptr %i.d, align 16, !tbaa !59
  %i.acm = load double, ptr %i.gi, align 16, !tbaa !59
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge436, %bb.ak, %bb.ai
  %.sroa.9.3 = phi double [ %i.acj, %bb.ai ], [ %i.acm, %bb.ak ], [ %.sroa.9.2444, %._crit_edge436 ] ; 2 uses
  %.2205 = phi double [ %.0201.lcssa, %bb.ai ], [ %.0201.lcssa, %bb.ak ], [ %.1204445, %._crit_edge436 ] ; 2 uses
  %i.acn = phi <2 x double> [ %i.aci, %bb.ai ], [ %i.acl, %bb.ak ], [ %i.yo, %._crit_edge436 ] ; 2 uses
  %i.aco = add nuw nsw i32 %.2198446, 1
  %exitcond577.not = icmp eq i32 %.2198446, %i.xn
  br i1 %exitcond577.not, label %._crit_edge448, label %.lr.ph447.split, !llvm.loop !1136

._crit_edge448:                                   ; preds = %bb.al, %bb.aj
  %.sroa.9.2.lcssa = phi double [ %.sroa.9.2444, %bb.aj ], [ %.sroa.9.3, %bb.al ] ; 2 uses
  %.1204.lcssa = phi double [ %.1204445, %bb.aj ], [ %.2205, %bb.al ] ; 3 uses
  %i.acp = phi <2 x double> [ %i.yo, %bb.aj ], [ %i.acn, %bb.al ] ; 2 uses
  %i.acq = fcmp ogt double %.1204.lcssa, 0.000000e+00
  br i1 %i.acq, label %bb.am, label %._crit_edge448.thread

._crit_edge448.thread.sink.split:                 ; preds = %.lr.ph447.split.us.split.preheader, %._crit_edge453.split.us.loopexit.epilog-lcssa, %._crit_edge448.split.us.split.us
  %.sink = phi double [ %i.yb, %._crit_edge448.split.us.split.us ], [ %i.xv, %.lr.ph447.split.us.split.preheader ], [ %i.yl, %._crit_edge453.split.us.loopexit.epilog-lcssa ]
  %.1204.lcssa678.ph = phi double [ %.0203492, %._crit_edge448.split.us.split.us ], [ %.0203492, %.lr.ph447.split.us.split.preheader ], [ -1.000000e+00, %._crit_edge453.split.us.loopexit.epilog-lcssa ]
  %.sroa.9.2.lcssa676.ph = phi double [ %.sroa.9.1491, %._crit_edge448.split.us.split.us ], [ %.sroa.9.1491, %.lr.ph447.split.us.split.preheader ], [ %i.yl, %._crit_edge453.split.us.loopexit.epilog-lcssa ]
  %i.acr = phi <2 x double> [ %i.xg, %._crit_edge448.split.us.split.us ], [ %i.xg, %.lr.ph447.split.us.split.preheader ], [ %i.yk, %._crit_edge453.split.us.loopexit.epilog-lcssa ]
  %i.acs = phi <2 x double> [ %i.ye, %._crit_edge448.split.us.split.us ], [ %i.xu, %.lr.ph447.split.us.split.preheader ], [ %i.yk, %._crit_edge453.split.us.loopexit.epilog-lcssa ]
  store <2 x double> %i.acs, ptr %i.d, align 16, !tbaa !59
  store double %.sink, ptr %i.gi, align 16, !tbaa !59
  br label %._crit_edge448.thread

._crit_edge448.thread:                            ; preds = %._crit_edge448.thread.sink.split, %.preheader399, %._crit_edge448
  %.1204.lcssa678 = phi double [ %.1204.lcssa, %._crit_edge448 ], [ %.0203492, %.preheader399 ], [ %.1204.lcssa678.ph, %._crit_edge448.thread.sink.split ] ; 2 uses
  %.sroa.9.2.lcssa676 = phi double [ %.sroa.9.2.lcssa, %._crit_edge448 ], [ %.sroa.9.1491, %.preheader399 ], [ %.sroa.9.2.lcssa676.ph, %._crit_edge448.thread.sink.split ] ; 2 uses
  %i.act = phi <2 x double> [ %i.acp, %._crit_edge448 ], [ %i.xg, %.preheader399 ], [ %i.acr, %._crit_edge448.thread.sink.split ] ; 2 uses
  %i.acu = mul nuw nsw i32 %.0200493, 10
  %i.acv = add nuw nsw i32 %.0199494, 1           ; 2 uses
  %exitcond578.not = icmp eq i32 %i.acv, 3
  br i1 %exitcond578.not, label %bb.am, label %.preheader399, !llvm.loop !1137

bb.am:                                            ; preds = %._crit_edge448, %._crit_edge448.thread
  %.1204.lcssa679 = phi double [ %.1204.lcssa, %._crit_edge448 ], [ %.1204.lcssa678, %._crit_edge448.thread ]
  %.sroa.9.2.lcssa677 = phi double [ %.sroa.9.2.lcssa, %._crit_edge448 ], [ %.sroa.9.2.lcssa676, %._crit_edge448.thread ] ; 2 uses
  %i.acw = phi <2 x double> [ %i.acp, %._crit_edge448 ], [ %i.act, %._crit_edge448.thread ] ; 2 uses
  %i.acx = fcmp oeq double %.1204.lcssa679, -1.000000e+00
  br i1 %i.acx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store ptr %i.ht, ptr %2, align 8, !tbaa !232
  %i.acy = load ptr, ptr %i.gd, align 8, !tbaa !267
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 32
  store i64 0, ptr %i.acz, align 8, !tbaa !101
  %i.ada = load ptr, ptr %i.ge, align 8, !tbaa !257
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  store i64 0, ptr %i.adb, align 8, !tbaa !101
  br label %.loopexit403

bb.ao:                                            ; preds = %bb.am
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv579 ; 2 uses
  %i.add = load ptr, ptr %i.gj, align 8, !tbaa !220
  %i.ade = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.add) ; 7 uses
  store ptr %i.ade, ptr %i.adc, align 8, !tbaa !113
  %i.adf = load i32, ptr %i.gk, align 8, !tbaa !242 ; 2 uses
  %i.adg = icmp sgt i32 %i.adf, 0
  br i1 %i.adg, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ao
  %scevgep.i = getelementptr i8, ptr %i.ade, i64 24
  %i.adh = zext nneg i32 %i.adf to i64
  %i.adi = shl nuw nsw i64 %i.adh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.adi, i1 false), !tbaa !59
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.ao
  %i.adj = load i32, ptr %i.gl, align 8, !tbaa !243 ; 2 uses
  %i.adk = icmp sgt i32 %i.adj, 0
  br i1 %i.adk, label %.lr.ph23.i, label %._crit_edge.i

.lr.ph23.i:                                       ; preds = %.preheader.i
  %i.adl = load i32, ptr %i.gm, align 4, !tbaa !244
  %i.adm = sext i32 %i.adl to i64
  %i.adn = shl nsw i64 %i.adm, 3
  %scevgep25.i = getelementptr i8, ptr %i.ade, i64 %i.adn
  %i.ado = zext nneg i32 %i.adj to i64
  %i.adp = shl nuw nsw i64 %i.ado, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep25.i, i8 0, i64 %i.adp, i1 false), !tbaa !59
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph23.i, %.preheader.i
  %i.adq = load i32, ptr %i.gc, align 4, !tbaa !245
  %i.adr = sext i32 %i.adq to i64
  %i.ads = getelementptr inbounds [8 x i8], ptr %i.ade, i64 %i.adr ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ads, i8 0, i64 16, i1 false)
  %i.adt = load ptr, ptr %i.gn, align 8, !tbaa !219 ; 3 uses
  %i.adu = load i32, ptr %i.adt, align 8, !tbaa !118
  %.not.i = icmp eq i32 %i.adu, 0
  br i1 %.not.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adt, i64 8
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !126
  %.not17.i = icmp eq i32 %i.adw, 0
  br i1 %.not17.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i
  %i.adx = getelementptr i8, ptr %i.ads, i64 16
  store ptr null, ptr %i.adx, align 8, !tbaa !221
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adt, i64 44
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !144
  %.not18.i = icmp eq i32 %i.adz, 0
  br i1 %.not18.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.aea = load ptr, ptr %i.go, align 8, !tbaa !246
  %.not19.i = icmp eq ptr %i.aea, null
  br i1 %.not19.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.aeb = getelementptr i8, ptr %i.ads, i64 24
  store ptr null, ptr %i.aeb, align 8, !tbaa !221
  br label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit

_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit:  ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as
  %i.aec = load ptr, ptr %i.gj, align 8, !tbaa !220
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 64
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !203
  %i.aef = trunc i64 %i.aee to i32
  %i.aeg = load ptr, ptr %0, align 8, !tbaa !222
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !56
  %.not20.i = icmp eq i32 %i.aeh, 0
  %.neg.i = sext i1 %.not20.i to i32
  %i.aei = add i32 %.neg.i, %i.aef
  %i.aej = load i32, ptr %i.e, align 8, !tbaa !224
  %i.aek = sext i32 %i.aej to i64
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.ade, i64 %i.aek
  store i32 %i.aei, ptr %i.ael, align 4, !tbaa !60
  %i.aem = load i32, ptr %i.e, align 8, !tbaa !224
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr [4 x i8], ptr %i.ade, i64 %i.aen
  %i.aep = getelementptr i8, ptr %i.aeo, i64 4
  store i32 0, ptr %i.aep, align 4, !tbaa !60
  %i.aeq = load i32, ptr %i.e, align 8, !tbaa !224
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = getelementptr [4 x i8], ptr %i.ade, i64 %i.aer
  %i.aet = getelementptr i8, ptr %i.aes, i64 4    ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !60
  %i.aev = and i32 %i.aeu, 255
  %i.aew = or disjoint i32 %i.aev, 1792
  store i32 %i.aew, ptr %i.aet, align 4, !tbaa !60
  %i.aex = load ptr, ptr %i.adc, align 8, !tbaa !113 ; 2 uses
  store <2 x double> %i.acw, ptr %i.aex, align 8, !tbaa !59
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  store double %.sroa.9.2.lcssa677, ptr %i.aey, align 8, !tbaa !59
  %i.aez = load ptr, ptr %i.gd, align 8, !tbaa !267
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 32
  store i64 0, ptr %i.afa, align 8, !tbaa !101
  %i.afb = load ptr, ptr %i.ge, align 8, !tbaa !257
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 32
  store i64 0, ptr %i.afc, align 8, !tbaa !101
  %.pre622 = load ptr, ptr %i.fl, align 8, !tbaa !259
  br label %bb.at

bb.at:                                            ; preds = %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  %i.afd = phi ptr [ %i.gp, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit ], [ %.pre622, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ] ; 2 uses
  %.sroa.9.2370 = phi i32 [ %.sroa.9.0368495, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit ], [ %.sroa.9.1369.lcssa, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ] ; 2 uses
  %.sroa.0278.2 = phi ptr [ %.sroa.0278.0496, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit ], [ %.sroa.0278.1.lcssa, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ] ; 2 uses
  %.sroa.9.5 = phi double [ %.sroa.9.0499, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit ], [ %.sroa.9.2.lcssa677, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ]
  %i.afe = phi <2 x double> [ %i.gq, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit ], [ %i.acw, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ]
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 4 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 32
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !101
  %i.afh = icmp sgt i64 %i.afg, %indvars.iv.next580
  br i1 %i.afh, label %bb.o, label %.loopexit403.loopexit.split.loop.exit714, !llvm.loop !1138

.loopexit403.loopexit.split.loop.exit:            ; preds = %.loopexit401
  store ptr %i.ht, ptr %2, align 8, !tbaa !232
  br label %.loopexit403

.loopexit403.loopexit.split.loop.exit714:         ; preds = %bb.at
  store ptr %i.ht, ptr %2, align 8, !tbaa !232
  %indvars.le = trunc i64 %indvars.iv.next580 to i32
  br label %.loopexit403

.loopexit403:                                     ; preds = %.loopexit403.loopexit.split.loop.exit, %.loopexit403.loopexit.split.loop.exit714, %bb.an
  %.2194418 = phi i32 [ %i.gv, %bb.an ], [ %i.gv, %.loopexit403.loopexit.split.loop.exit ], [ %indvars.le, %.loopexit403.loopexit.split.loop.exit714 ] ; 2 uses
  %i.afi = phi i64 [ %indvars.iv579, %bb.an ], [ %indvars.iv579, %.loopexit403.loopexit.split.loop.exit ], [ %indvars.iv.next580, %.loopexit403.loopexit.split.loop.exit714 ]
  %.sroa.9.3371 = phi i32 [ %.sroa.9.1369.lcssa, %bb.an ], [ %.sroa.9.0368495, %.loopexit403.loopexit.split.loop.exit ], [ %.sroa.9.2370, %.loopexit403.loopexit.split.loop.exit714 ]
  %.sroa.0278.3 = phi ptr [ %.sroa.0278.1.lcssa, %bb.an ], [ %.sroa.0278.0496, %.loopexit403.loopexit.split.loop.exit ], [ %.sroa.0278.2, %.loopexit403.loopexit.split.loop.exit714 ]
  %i.afj = load ptr, ptr %i.fl, align 8, !tbaa !259
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 32
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !101
  %i.afm = icmp sgt i64 %i.afl, %i.afi
  br i1 %i.afm, label %.preheader, label %bb.ax

.loopexit403.thread:                              ; preds = %.preheader402
  %i.afn = load ptr, ptr %i.fl, align 8, !tbaa !259
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 32
  %i.afp = load i64, ptr %i.afo, align 8, !tbaa !101
  %i.afq = icmp sgt i64 %i.afp, 0
  br i1 %i.afq, label %._crit_edge539, label %bb.ax

.preheader:                                       ; preds = %.loopexit403
  %i.afr = icmp sgt i32 %.2194418, 0
  br i1 %i.afr, label %.lr.ph538, label %._crit_edge539

.lr.ph538:                                        ; preds = %.preheader
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aft = zext nneg i32 %.2194418 to i64
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph538, %bb.aw
  %indvars.iv602 = phi i64 [ %i.aft, %.lr.ph538 ], [ %indvars.iv.next603, %bb.aw ] ; 3 uses
  %i.afu = getelementptr [8 x i8], ptr %i.ft, i64 %indvars.iv602
  %i.afv = getelementptr i8, ptr %i.afu, i64 -8
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !113 ; 4 uses
  %.not223 = icmp eq ptr %i.afw, null
  br i1 %.not223, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.afx = load i32, ptr %i.e, align 8, !tbaa !224
  %i.afy = sext i32 %i.afx to i64
  %i.afz = getelementptr [4 x i8], ptr %i.afw, i64 %i.afy
  %i.aga = getelementptr i8, ptr %i.afz, i64 4    ; 2 uses
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !60
  %i.agc = and i32 %i.agb, 255
  %i.agd = or disjoint i32 %i.agc, 2304
  store i32 %i.agd, ptr %i.aga, align 4, !tbaa !60
  %i.age = load ptr, ptr %i.afs, align 8, !tbaa !220 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 24 ; 2 uses
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !201
  store ptr %i.agg, ptr %i.afw, align 8, !tbaa !112
  store ptr %i.afw, ptr %i.agf, align 8, !tbaa !201
  %i.agh = getelementptr inbounds nuw i8, ptr %i.age, i64 64 ; 2 uses
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !203
  %i.agj = add nsw i64 %i.agi, -1
  store i64 %i.agj, ptr %i.agh, align 8, !tbaa !203
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %indvars.iv.next603 = add nsw i64 %indvars.iv602, -1
  %i.agk = icmp sgt i64 %indvars.iv602, 1
  br i1 %i.agk, label %bb.au, label %._crit_edge539, !llvm.loop !1139

._crit_edge539:                                   ; preds = %bb.aw, %.loopexit403.thread, %.preheader
  call void @_ZdaPv(ptr noundef nonnull %i.ft) #42
  %i.agl = load ptr, ptr %i.fl, align 8, !tbaa !259
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  store i64 0, ptr %i.agm, align 8, !tbaa !101
  br label %bb.bz

bb.ax:                                            ; preds = %.loopexit403.thread, %.loopexit403
  %.sroa.0278.3685 = phi ptr [ null, %.loopexit403.thread ], [ %.sroa.0278.3, %.loopexit403 ]
  %.sroa.9.3371684 = phi i32 [ 0, %.loopexit403.thread ], [ %.sroa.9.3371, %.loopexit403 ]
  %i.agn = icmp ugt i64 %i.fp, 1152921504606846975
  %i.ago = ashr exact i64 %sext, 28
  %i.agp = select i1 %i.agn, i64 -1, i64 %i.ago
  %i.agq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.agp) #41 ; 9 uses
  %i.agr = icmp eq i64 %sext, 0
  br i1 %i.agr, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ags = getelementptr inbounds [16 x i8], ptr %i.agq, i64 %i.fp
  %i.agt = ashr exact i64 %sext, 28
  %i.agu = add nsw i64 %i.agt, -16                ; 2 uses
  %i.agv = lshr exact i64 %i.agu, 4
  %i.agw = add nuw nsw i64 %i.agv, 1
  %xtraiter811 = and i64 %i.agw, 7                ; 2 uses
  %lcmp.mod812.not = icmp eq i64 %xtraiter811, 0
  br i1 %lcmp.mod812.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ay, %.prol.preheader
  %i.agx = phi ptr [ %i.agz, %.prol.preheader ], [ %i.agq, %bb.ay ] ; 3 uses
  %prol.iter813 = phi i64 [ %prol.iter813.next, %.prol.preheader ], [ 0, %bb.ay ]
  store ptr null, ptr %i.agx, align 8, !tbaa !225
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  store i32 0, ptr %i.agy, align 8, !tbaa !226
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agx, i64 16 ; 2 uses
  %prol.iter813.next = add i64 %prol.iter813, 1   ; 2 uses
  %prol.iter813.cmp.not = icmp eq i64 %prol.iter813.next, %xtraiter811
  br i1 %prol.iter813.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1140

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ay
  %.unr = phi ptr [ %i.agq, %bb.ay ], [ %i.agz, %.prol.preheader ]
  %i.aha = icmp ult i64 %i.agu, 112
  br i1 %i.aha, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ahb = phi ptr [ %i.ahr, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store ptr null, ptr %i.ahb, align 8, !tbaa !225
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  store i32 0, ptr %i.ahc, align 8, !tbaa !226
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  store ptr null, ptr %i.ahd, align 8, !tbaa !225
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 24
  store i32 0, ptr %i.ahe, align 8, !tbaa !226
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahb, i64 32
  store ptr null, ptr %i.ahf, align 8, !tbaa !225
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahb, i64 40
  store i32 0, ptr %i.ahg, align 8, !tbaa !226
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahb, i64 48
  store ptr null, ptr %i.ahh, align 8, !tbaa !225
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahb, i64 56
  store i32 0, ptr %i.ahi, align 8, !tbaa !226
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahb, i64 64
  store ptr null, ptr %i.ahj, align 8, !tbaa !225
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahb, i64 72
  store i32 0, ptr %i.ahk, align 8, !tbaa !226
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahb, i64 80
  store ptr null, ptr %i.ahl, align 8, !tbaa !225
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahb, i64 88
  store i32 0, ptr %i.ahm, align 8, !tbaa !226
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahb, i64 96
  store ptr null, ptr %i.ahn, align 8, !tbaa !225
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahb, i64 104
  store i32 0, ptr %i.aho, align 8, !tbaa !226
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahb, i64 112
  store ptr null, ptr %i.ahp, align 8, !tbaa !225
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahb, i64 120
  store i32 0, ptr %i.ahq, align 8, !tbaa !226
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahb, i64 128 ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, %i.ags
  br i1 %i.ahs, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.ax
  %i.aht = load ptr, ptr %i.fl, align 8, !tbaa !259 ; 5 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 32 ; 2 uses
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !101 ; 5 uses
  %i.ahw = icmp sgt i64 %i.ahv, 0
  br i1 %i.ahw, label %.lr.ph514, label %._crit_edge515

.lr.ph514:                                        ; preds = %.loopexit
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !105 ; 3 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.aia = load i32, ptr %i.ahz, align 8, !tbaa !104 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aht, i64 12
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !111 ; 3 uses
  %i.aid = load i32, ptr %i.aht, align 8, !tbaa !103 ; 3 uses
  %xtraiter814 = and i64 %i.ahv, 1
  %i.aie = icmp eq i64 %i.ahv, 1
  br i1 %i.aie, label %.epil.preheader, label %.lr.ph514.new

.lr.ph514.new:                                    ; preds = %.lr.ph514
  %unroll_iter818 = and i64 %i.ahv, 9223372036854775806
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph514.new
  %indvars.iv582 = phi i64 [ 0, %.lr.ph514.new ], [ %indvars.iv.next583.1, %bb.az ] ; 4 uses
  %niter819 = phi i64 [ 0, %.lr.ph514.new ], [ %niter819.next.1, %bb.az ]
  %i.aif = trunc nuw nsw i64 %indvars.iv582 to i32 ; 2 uses
  %i.aig = lshr i32 %i.aif, %i.aia
  %i.aih = zext nneg i32 %i.aig to i64
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %i.ahy, i64 %i.aih
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !54
  %i.aik = and i32 %i.aic, %i.aif
  %i.ail = mul nsw i32 %i.aik, %i.aid
  %i.aim = sext i32 %i.ail to i64
  %i.ain = getelementptr inbounds i8, ptr %i.aij, i64 %i.aim ; 2 uses
  %i.aio = getelementptr inbounds nuw [16 x i8], ptr %i.agq, i64 %indvars.iv582 ; 2 uses
  %i.aip = load ptr, ptr %i.ain, align 8, !tbaa !225
  store ptr %i.aip, ptr %i.aio, align 8, !tbaa !225
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !226
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  store i32 %i.air, ptr %i.ais, align 8, !tbaa !226
  %indvars.iv.next583 = or disjoint i64 %indvars.iv582, 1 ; 2 uses
  %i.ait = trunc nuw nsw i64 %indvars.iv.next583 to i32 ; 2 uses
  %i.aiu = lshr i32 %i.ait, %i.aia
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %i.ahy, i64 %i.aiv
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !54
  %i.aiy = and i32 %i.aic, %i.ait
  %i.aiz = mul nsw i32 %i.aiy, %i.aid
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds i8, ptr %i.aix, i64 %i.aja ; 2 uses
  %i.ajc = getelementptr inbounds nuw [16 x i8], ptr %i.agq, i64 %indvars.iv.next583 ; 2 uses
  %i.ajd = load ptr, ptr %i.ajb, align 8, !tbaa !225
  store ptr %i.ajd, ptr %i.ajc, align 8, !tbaa !225
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh11search_edgeEPdS0_RNS_7trifaceE:bb.a

bb.m:                                             ; preds = %bb.l
  %i.dh = load i32, ptr %i.bj, align 4, !tbaa !60
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !221
  %i.dl = icmp eq ptr %i.dk, %1
  br i1 %i.dl, label %bb.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dm = load i32, ptr %i.bm, align 4, !tbaa !60
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !221 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %1
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dr = load i32, ptr %i.bn, align 4, !tbaa !60
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !221
  %i.dv = icmp eq ptr %i.du, %2
  br i1 %i.dv, label %bb.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dw = icmp eq ptr %i.dp, %2
  br i1 %i.dw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dx = load i32, ptr %i.bo, align 4, !tbaa !60
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !221
  %i.eb = icmp eq ptr %i.ea, %1
  br i1 %i.eb, label %bb.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ec = load i32, ptr %i.br, align 4, !tbaa !60
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !221 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %1
  br i1 %i.eg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eh = load i32, ptr %i.bs, align 4, !tbaa !60
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !221
  %i.el = icmp eq ptr %i.ek, %2
  br i1 %i.el, label %bb.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.em = icmp eq ptr %i.ef, %2
  br i1 %i.em, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.en = load i32, ptr %i.bt, align 4, !tbaa !60
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !221
  %i.er = icmp eq ptr %i.eq, %1
  br i1 %i.er, label %bb.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.es = load i32, ptr %i.bw, align 4, !tbaa !60
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !221 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %1
  br i1 %i.ew, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ex = load i32, ptr %i.bx, align 4, !tbaa !60
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !221
  %i.fb = icmp eq ptr %i.fa, %2
  br i1 %i.fb, label %bb.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fc = icmp eq ptr %i.ev, %2
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fd = load i32, ptr %i.by, align 4, !tbaa !60
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !221
  %i.fh = icmp eq ptr %i.fg, %1
  br i1 %i.fh, label %bb.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fi = load i32, ptr %i.cb, align 4, !tbaa !60
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !221 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %1
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fn = load i32, ptr %i.cc, align 4, !tbaa !60
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !221
  %i.fr = icmp eq ptr %i.fq, %2
  br i1 %i.fr, label %bb.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fs = icmp eq ptr %i.fl, %2
  br i1 %i.fs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load i32, ptr %i.cd, align 4, !tbaa !60
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %storemerge35, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !221
  %i.fx = icmp eq ptr %i.fw, %1
  br i1 %i.fx, label %bb.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fy = icmp eq ptr %.promoted.i11, %i.s
  br i1 %i.fy, label %._crit_edge, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.ad
  %i.fz = load i32, ptr %i.az, align 4, !tbaa !195
  %i.ga = sext i32 %i.fz to i64
  %i.gb = load ptr, ptr %i.ba, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge.backedge.i18, %.lr.ph.i12
  %i.gc = phi ptr [ %i.ce, %.lr.ph.i12 ], [ %i.gn, %.critedge.backedge.i18 ] ; 2 uses
  %i.gd = phi i32 [ %.promoted10.i13, %.lr.ph.i12 ], [ %i.gt, %.critedge.backedge.i18 ] ; 2 uses
  %i.ge = phi ptr [ %.promoted.i11, %.lr.ph.i12 ], [ %i.gs, %.critedge.backedge.i18 ]
  %i.gf = icmp eq i32 %i.gd, 0
  br i1 %i.gf, label %bb.af, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i14

bb.af:                                            ; preds = %bb.ae
  %i.gg = load ptr, ptr %i.gc, align 8, !tbaa !112 ; 3 uses
  store ptr %i.gg, ptr %i.d, align 8, !tbaa !204
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = add i64 %i.gi, %i.i
  %i.gk = urem i64 %i.gi, %i.i
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = inttoptr i64 %i.gl to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i14

_ZN10tetgenmesh10memorypool8traverseEv.exit.i14:  ; preds = %bb.af, %bb.ae
  %i.gn = phi ptr [ %i.gg, %bb.af ], [ %i.gc, %bb.ae ] ; 2 uses
  %i.go = phi i32 [ %i.p, %bb.af ], [ %i.gd, %bb.ae ]
  %i.gp = phi ptr [ %i.gm, %bb.af ], [ %i.ge, %bb.ae ] ; 5 uses
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = add i64 %i.gq, %i.ga
  %i.gs = inttoptr i64 %i.gr to ptr               ; 4 uses
  store ptr %i.gs, ptr %i.n, align 8, !tbaa !205
  %i.gt = add nsw i32 %i.go, -1                   ; 5 uses
  %i.gu = icmp eq ptr %i.gp, null
  br i1 %i.gu, label %._crit_edge.sink.split, label %bb.ag

bb.ag:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i14
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !221
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %.critedge.backedge.i18, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !221
  %i.ha = icmp eq ptr %i.gz, %i.gb
  br i1 %i.ha, label %.critedge.backedge.i18, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit19

.critedge.backedge.i18:                           ; preds = %bb.ah, %bb.ag
  %i.hb = icmp eq ptr %i.s, %i.gs
  br i1 %i.hb, label %._crit_edge.sink.split, label %bb.ae, !llvm.loop !8

_ZN10tetgenmesh19tetrahedrontraverseEv.exit19:    ; preds = %bb.ah
  store i32 %i.gt, ptr %i.q, align 4, !tbaa !206
  br label %.preheader, !llvm.loop !1258

._crit_edge.sink.split:                           ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i, %.critedge.backedge.i, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i14, %.critedge.backedge.i18
  %.lcssa69.sink = phi i32 [ %i.gt, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i14 ], [ %i.gt, %.critedge.backedge.i18 ], [ %i.aq, %.critedge.backedge.i ], [ %i.aq, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ]
  store i32 %.lcssa69.sink, ptr %i.q, align 4, !tbaa !206
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ad, %._crit_edge.sink.split, %bb.a
  store ptr null, ptr %3, align 8, !tbaa !232
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge, %bb.i
  %.010 = phi i32 [ 1, %bb.i ], [ 0, %._crit_edge ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh15reconstructmeshEv(ptr nofree noundef nonnull align 8 dereferenceable(69984) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %1 = alloca %"class.tetgenmesh::triface", align 8 ; 20 uses
  %2 = alloca %"class.tetgenmesh::triface", align 8 ; 16 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr null, ptr %1, align 8, !tbaa !232
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 21 uses
  store i32 0, ptr %i.d, align 8, !tbaa !237
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store ptr null, ptr %2, align 8, !tbaa !232
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i32 0, ptr %i.e, align 8, !tbaa !237
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !219  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  %i.i = load i32, ptr %i.h, align 4, !tbaa !184
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.136) ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !219
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !154
  %.not207 = icmp eq i32 %i.l, 0
  br i1 %.not207, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !222
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = load i32, ptr %i.n, align 8, !tbaa !69
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.q, align 16, !tbaa !60
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68712
  store i32 1, ptr %i.r, align 8, !tbaa !293
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  call void @_ZN10tetgenmesh18makeindex2pointmapERPPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.s = load ptr, ptr %0, align 8, !tbaa !222    ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !56
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68584
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !251
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !221
  store ptr %i.w, ptr %i.x, align 8, !tbaa !113
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !45   ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i32 %i.z, -1
  %i.ad = shl nsw i64 %i.ab, 3
  %i.ae = select i1 %i.ac, i64 -1, i64 %i.ad
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #41 ; 3 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !222   ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !45 ; 3 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 69000 ; 9 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !292
  %i.al = icmp sgt i32 %i.ai, 0
  br i1 %i.al, label %.lr.ph.preheader, label %.preheader753

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !56 ; 4 uses
  %i.an = add i32 %i.am, %i.ai
  %i.ao = sext i32 %i.am to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ap
  %i.aq = add i32 %i.am, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.aq)
  %i.ar = xor i32 %i.am, -1
  %i.as = add i32 %smax, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.av, i1 false), !tbaa !221
  br label %.preheader753

.preheader753:                                    ; preds = %.lr.ph.preheader, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !68
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph792, label %._crit_edge793

.lr.ph792:                                        ; preds = %.preheader753
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68684
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68644
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 68672 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 68680 ; 2 uses
  %.pre1094 = load i32, ptr %i.az, align 8, !tbaa !224
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph792, %bb.be
  %i.bf = phi i32 [ %.pre1094, %.lr.ph792 ], [ %i.gn, %bb.be ]
  %indvars.iv963 = phi i64 [ 0, %.lr.ph792 ], [ %indvars.iv.next964, %bb.be ] ; 3 uses
  %i.bg = phi ptr [ %i.ag, %.lr.ph792 ], [ %i.fe, %bb.be ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 132
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !221 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !70 ; 4 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv963 to i32 ; 3 uses
  %i.bn = mul i32 %i.bi, %i.bm
  %i.bo = sext i32 %i.bn to i64                   ; 4 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !60
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !113 ; 6 uses
  %i.bu = sext i32 %i.bf to i64                   ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !60 ; 2 uses
  %i.by = icmp ult i32 %i.bx, 256
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = or disjoint i32 %i.bx, 1024
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !60
  %i.ca = load i64, ptr %i.ak, align 8, !tbaa !292
  %i.cb = add nsw i64 %i.ca, -1
  store i64 %i.cb, ptr %i.ak, align 8, !tbaa !292
  %.pre1095 = load i32, ptr %i.az, align 8, !tbaa !224
  %.pre1156 = sext i32 %.pre1095 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.bu, %bb.j ], [ %.pre1156, %bb.k ] ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.bl, i64 %i.bo
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !60
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !113 ; 6 uses
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %.pre-phi
  %i.cj = getelementptr i8, ptr %i.ci, i64 4      ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !60 ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 256
  br i1 %i.cl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cm = or disjoint i32 %i.ck, 1024
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !60
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !292
  %i.co = add nsw i64 %i.cn, -1
  store i64 %i.co, ptr %i.ak, align 8, !tbaa !292
  %.pre1096 = load i32, ptr %i.az, align 8, !tbaa !224
  %.pre1157 = sext i32 %.pre1096 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi1158 = phi i64 [ %.pre1157, %bb.m ], [ %.pre-phi, %bb.l ] ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bl, i64 %i.bo
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !60
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !113 ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %.pre-phi1158
  %i.cw = getelementptr i8, ptr %i.cv, i64 4      ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !60 ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 256
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = or disjoint i32 %i.cx, 1024
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !60
  %i.da = load i64, ptr %i.ak, align 8, !tbaa !292
  %i.db = add nsw i64 %i.da, -1
  store i64 %i.db, ptr %i.ak, align 8, !tbaa !292
  %.pre1097 = load i32, ptr %i.az, align 8, !tbaa !224
  %.pre1159 = sext i32 %.pre1097 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi1160 = phi i64 [ %.pre1159, %bb.o ], [ %.pre-phi1158, %bb.n ]
  %i.dc = getelementptr [4 x i8], ptr %i.bl, i64 %i.bo
  %i.dd = getelementptr i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !60
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !113 ; 3 uses
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %.pre-phi1160
  %i.dj = getelementptr i8, ptr %i.di, i64 4      ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !60 ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 256
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dm = or disjoint i32 %i.dk, 1024
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !60
  %i.dn = load i64, ptr %i.ak, align 8, !tbaa !292
  %i.do = add nsw i64 %i.dn, -1
  store i64 %i.do, ptr %i.ak, align 8, !tbaa !292
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dp = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.dh) ; 2 uses
  %i.dq = fcmp ogt double %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = fcmp oeq double %i.dp, 0.000000e+00
  br i1 %i.dr, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ds = load ptr, ptr %i.f, align 8, !tbaa !219
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 148
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !184
  %.not253 = icmp eq i32 %i.du, 0
  br i1 %.not253, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dv = load ptr, ptr %0, align 8, !tbaa !222
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !56
  %i.dx = add nsw i32 %i.dw, %i.bm
  %i.dy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.451, i32 noundef %i.dx) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.s, %bb.u, %bb.t
  %.sroa.33.0 = phi ptr [ %i.ch, %bb.s ], [ %i.ch, %bb.u ], [ %i.ch, %bb.t ], [ %i.bt, %bb.r ]
  %.sroa.01040.0 = phi ptr [ %i.bt, %bb.s ], [ %i.bt, %bb.u ], [ %i.bt, %bb.t ], [ %i.ch, %bb.r ]
  %i.dz = load ptr, ptr %i.ba, align 8, !tbaa !231
  %i.ea = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.dz) ; 29 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64
  store ptr %i.ea, ptr %1, align 8, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ea, i8 0, i64 88, i1 false)
  %i.ec = load i32, ptr %i.bb, align 4, !tbaa !233
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ed
  store i32 0, ptr %i.ee, align 4, !tbaa !60
  %i.ef = load i32, ptr %i.bc, align 4, !tbaa !234 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.eh = load i32, ptr %i.bd, align 8, !tbaa !235
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 3
  %scevgep.i = getelementptr i8, ptr %i.ea, i64 %i.ej
  %i.ek = zext nneg i32 %i.ef to i64
  %i.el = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.el, i1 false), !tbaa !59
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.v
  %i.em = load ptr, ptr %i.f, align 8, !tbaa !219
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !149
  %.not.i = icmp eq i32 %i.eo, 0                  ; 2 uses
  br i1 %.not.i, label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.ep = load i32, ptr %i.be, align 8, !tbaa !236
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.eq
  store double -1.000000e+00, ptr %i.er, align 8, !tbaa !59
  br label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit

_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit: ; preds = %._crit_edge.i, %bb.w
  store i32 11, ptr %i.d, align 8, !tbaa !237
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8orgpivotE, i64 44), align 4, !tbaa !60
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.et
  store ptr %.sroa.01040.0, ptr %i.eu, align 8, !tbaa !221
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9destpivotE, i64 44), align 4, !tbaa !60
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ew
  store ptr %.sroa.33.0, ptr %i.ex, align 8, !tbaa !221
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9apexpivotE, i64 44), align 4, !tbaa !60
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ez
  store ptr %i.cu, ptr %i.fa, align 8, !tbaa !221
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9oppopivotE, i64 44), align 4, !tbaa !60
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.fc
  store ptr %i.dh, ptr %i.fd, align 8, !tbaa !221
  %i.fe = load ptr, ptr %0, align 8, !tbaa !222   ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 136
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !69 ; 4 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph779, label %._crit_edge

.lr.ph779:                                        ; preds = %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit
  %i.fi = mul nuw nsw i32 %i.fg, %i.bm
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 88
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !71 ; 2 uses
  %i.fl = load i32, ptr %i.bd, align 8, !tbaa !235
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = zext nneg i32 %i.fi to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fg to i64   ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.fk, i64 %i.fn ; 6 uses
  %invariant.gep1425 = getelementptr [8 x i8], ptr %i.ea, i64 %i.fm ; 6 uses
  %min.iters.check = icmp ult i32 %i.fg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph779
  %i.fo = ptrtoaddr ptr %i.fk to i64
  %i.fp = shl nsw i64 %i.fm, 3
  %i.fq = add i64 %i.fp, %i.eb
  %i.fr = shl nuw nsw i64 %i.fn, 3
  %i.fs = add i64 %i.fr, %i.fo
  %i.ft = sub i64 %i.fs, %i.fq
  %diff.check = icmp ugt i64 %i.ft, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %wide.load = load <2 x double>, ptr %i.fu, align 8, !tbaa !59
  %wide.load1536 = load <2 x double>, ptr %i.fv, align 8, !tbaa !59
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep1425, i64 %index ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  store <2 x double> %wide.load, ptr %i.fw, align 8, !tbaa !59
  store <2 x double> %wide.load1536, ptr %i.fx, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fy = icmp eq i64 %index.next, %n.vec
  br i1 %i.fy, label %middle.block, label %vector.body, !llvm.loop !1259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph779, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph779 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.fz = load double, ptr %gep.prol, align 8, !tbaa !59
  %gep1426.prol = getelementptr [8 x i8], ptr %invariant.gep1425, i64 %indvars.iv.prol
  store double %i.fz, ptr %gep1426.prol, align 8, !tbaa !59
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1260

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ga = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gc = load double, ptr %gep, align 8, !tbaa !59
  %gep1426 = getelementptr [8 x i8], ptr %invariant.gep1425, i64 %indvars.iv
  store double %i.gc, ptr %gep1426, align 8, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.gd = load double, ptr %gep.1, align 8, !tbaa !59
  %gep1426.1 = getelementptr [8 x i8], ptr %invariant.gep1425, i64 %indvars.iv.next
  store double %i.gd, ptr %gep1426.1, align 8, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ge = load double, ptr %gep.2, align 8, !tbaa !59
  %gep1426.2 = getelementptr [8 x i8], ptr %invariant.gep1425, i64 %indvars.iv.next.1
  store double %i.ge, ptr %gep1426.2, align 8, !tbaa !59
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.gf = load double, ptr %gep.3, align 8, !tbaa !59
  %gep1426.3 = getelementptr [8 x i8], ptr %invariant.gep1425, i64 %indvars.iv.next.2
  store double %i.gf, ptr %gep1426.3, align 8, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1261

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit
  br i1 %.not.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !72 ; 2 uses
  %.not255 = icmp eq ptr %i.gh, null
  br i1 %.not255, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv963
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !59
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0193 = phi double [ %i.gj, %bb.y ], [ -1.000000e+00, %bb.x ]
  %i.gk = load i32, ptr %i.be, align 8, !tbaa !236
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.gl
  store double %.0193, ptr %i.gm, align 8, !tbaa !59
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.gn = load i32, ptr %i.az, align 8, !tbaa !224 ; 2 uses
  %i.go = sext i32 %i.gn to i64
  %i.gp = ptrtoint ptr %i.ea to i64               ; 10 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.bd
  %indvars.iv959 = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next960, %bb.bd ] ; 11 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %indvars.iv959
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !60
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !221
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.go
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !60
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !221 ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv959
  %i.hb = getelementptr i8, ptr %i.ha, i64 64
  store ptr %i.gz, ptr %i.hb, align 8, !tbaa !221
  %i.hc = or i64 %indvars.iv959, %i.gp
  %i.hd = inttoptr i64 %i.hc to ptr
  store ptr %i.hd, ptr %i.gy, align 8, !tbaa !221
  %i.he = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hf = trunc i64 %i.he to i32
  %i.hg = and i32 %i.hf, 15                       ; 2 uses
  store i32 %i.hg, ptr %i.e, align 8, !tbaa !237
  %i.hh = and i64 %i.he, -16                      ; 2 uses
  %i.hi = inttoptr i64 %i.hh to ptr               ; 2 uses
  store ptr %i.hi, ptr %2, align 8, !tbaa !232
  %.not257 = icmp eq i64 %i.hh, 0
  br i1 %.not257, label %bb.bd, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %indvars.iv959
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !60
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !221 ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %indvars.iv959
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !60
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !221 ; 6 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %indvars.iv959
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !60
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !221 ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %indvars.iv959 ; 3 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %indvars.iv959 ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %indvars.iv959 ; 3 uses
  %i.ib = trunc nuw nsw i64 %indvars.iv959 to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.bc, %bb.ac
  %.lcssa780786 = phi i32 [ %i.hg, %bb.ac ], [ %i.sh, %bb.bc ]
  %i.ic = phi ptr [ %i.hi, %bb.ac ], [ %i.sj, %bb.bc ] ; 9 uses
  %.sroa.0601.0 = phi ptr [ %i.ea, %bb.ac ], [ %.sroa.0601.1, %bb.bc ] ; 2 uses
  %.sroa.6602.0 = phi i32 [ %i.ib, %bb.ac ], [ %.sroa.6602.1, %bb.bc ] ; 2 uses
  %i.id = zext nneg i32 %.lcssa780786 to i64      ; 5 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !60
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !221 ; 6 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.id
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !60
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !221 ; 6 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.id
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !60
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !221 ; 6 uses
  %i.it = ptrtoint ptr %i.ic to i64               ; 9 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.id
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !60 ; 4 uses
  %i.iw = and i32 %i.iv, 3
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ix ; 4 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !221
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.jb = icmp eq ptr %i.in, %i.hn
  %i.jc = icmp eq ptr %i.ii, %i.hs
  %or.cond1427 = select i1 %i.jb, i1 %i.jc, i1 false
  br i1 %or.cond1427, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jd = load i32, ptr %i.hy, align 4, !tbaa !60 ; 2 uses
  %i.je = sext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.je
  %i.jg = sext i32 %i.iv to i64                   ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !60
  %i.jj = sext i32 %i.ji to i64
  %i.jk = or i64 %i.jj, %i.it
  %i.jl = inttoptr i64 %i.jk to ptr
  %i.jm = and i32 %i.jd, 3
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.jn
  store ptr %i.jl, ptr %i.jo, align 8, !tbaa !221
  %i.jp = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.jg
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.je
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !60
  %i.js = sext i32 %i.jr to i64
  %i.jt = or i64 %i.js, %i.gp
  %i.ju = inttoptr i64 %i.jt to ptr
  store ptr %i.ju, ptr %i.iy, align 8, !tbaa !221
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1182 = phi i32 [ 1, %bb.af ], [ 0, %bb.ae ]   ; 2 uses
  %i.jv = icmp eq ptr %i.in, %i.hs
  %i.jw = icmp eq ptr %i.ii, %i.hx
  %or.cond1428 = select i1 %i.jv, i1 %i.jw, i1 false
  br i1 %or.cond1428, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jx = load i32, ptr %i.hz, align 4, !tbaa !60
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !60 ; 2 uses
  %i.kb = sext i32 %i.ka to i64                   ; 2 uses
  %i.kc = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.kb
  %i.kd = sext i32 %i.iv to i64                   ; 2 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !60
  %i.kg = sext i32 %i.kf to i64
  %i.kh = or i64 %i.kg, %i.it
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = and i32 %i.ka, 3
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.kk
  store ptr %i.ki, ptr %i.kl, align 8, !tbaa !221
  %i.km = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.kd
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.kb
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !60
  %i.kp = sext i32 %i.ko to i64
  %i.kq = or i64 %i.kp, %i.gp
  %i.kr = inttoptr i64 %i.kq to ptr
  store ptr %i.kr, ptr %i.iy, align 8, !tbaa !221
  %i.ks = add nuw nsw i32 %.1182, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2183 = phi i32 [ %i.ks, %bb.ah ], [ %.1182, %bb.ag ] ; 2 uses
  %i.kt = icmp eq ptr %i.in, %i.hx
  %i.ku = icmp eq ptr %i.ii, %i.hn
  %or.cond1429 = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %or.cond1429, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kv = load i32, ptr %i.ia, align 4, !tbaa !60
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !60 ; 2 uses
  %i.kz = sext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.kz
  %i.lb = sext i32 %i.iv to i64                   ; 2 uses
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !60
  %i.le = sext i32 %i.ld to i64
  %i.lf = or i64 %i.le, %i.it
  %i.lg = inttoptr i64 %i.lf to ptr
  %i.lh = and i32 %i.ky, 3
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.li
  store ptr %i.lg, ptr %i.lj, align 8, !tbaa !221
  %i.lk = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.lb
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.kz
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !60
  %i.ln = sext i32 %i.lm to i64
  %i.lo = or i64 %i.ln, %i.gp
  %i.lp = inttoptr i64 %i.lo to ptr
  store ptr %i.lp, ptr %i.iy, align 8, !tbaa !221
  %i.lq = add nuw nsw i32 %.2183, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ad, %bb.ai, %bb.aj
  %.3184 = phi i32 [ %i.lq, %bb.aj ], [ 1, %bb.ad ], [ %.2183, %bb.ai ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.id
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !60
  %i.lt = sext i32 %i.ls to i64                   ; 2 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !60 ; 4 uses
  %i.lw = and i32 %i.lv, 3
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.lx ; 4 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !221
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mb = add nuw nsw i32 %.3184, 1
  br label %bb.as

bb.am:                                            ; preds = %bb.ak
  %i.mc = icmp eq ptr %i.is, %i.hn
  %i.md = icmp eq ptr %i.in, %i.hs
  %or.cond1430 = select i1 %i.mc, i1 %i.md, i1 false
  br i1 %or.cond1430, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.me = load i32, ptr %i.hy, align 4, !tbaa !60 ; 2 uses
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.mf
  %i.mh = sext i32 %i.lv to i64                   ; 2 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !60
  %i.mk = sext i32 %i.mj to i64
  %i.ml = or i64 %i.mk, %i.it
  %i.mm = inttoptr i64 %i.ml to ptr
  %i.mn = and i32 %i.me, 3
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.mo
  store ptr %i.mm, ptr %i.mp, align 8, !tbaa !221
  %i.mq = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.mh
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %i.mf
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !60
  %i.mt = sext i32 %i.ms to i64
  %i.mu = or i64 %i.mt, %i.gp
  %i.mv = inttoptr i64 %i.mu to ptr
  store ptr %i.mv, ptr %i.ly, align 8, !tbaa !221
  %i.mw = add nuw nsw i32 %.3184, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1182.1 = phi i32 [ %i.mw, %bb.an ], [ %.3184, %bb.am ] ; 2 uses
  %i.mx = icmp eq ptr %i.is, %i.hs
  %i.my = icmp eq ptr %i.in, %i.hx
  %or.cond1431 = select i1 %i.mx, i1 %i.my, i1 false
  br i1 %or.cond1431, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mz = load i32, ptr %i.hz, align 4, !tbaa !60
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !60 ; 2 uses
  %i.nd = sext i32 %i.nc to i64                   ; 2 uses
  %i.ne = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.nd
  %i.nf = sext i32 %i.lv to i64                   ; 2 uses
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !60
  %i.ni = sext i32 %i.nh to i64
  %i.nj = or i64 %i.ni, %i.it
  %i.nk = inttoptr i64 %i.nj to ptr
  %i.nl = and i32 %i.nc, 3
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.nm
  store ptr %i.nk, ptr %i.nn, align 8, !tbaa !221
  %i.no = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.nf
  %i.np = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.nd
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !60
  %i.nr = sext i32 %i.nq to i64
  %i.ns = or i64 %i.nr, %i.gp
  %i.nt = inttoptr i64 %i.ns to ptr
  store ptr %i.nt, ptr %i.ly, align 8, !tbaa !221
  %i.nu = add nuw nsw i32 %.1182.1, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.2183.1 = phi i32 [ %i.nu, %bb.ap ], [ %.1182.1, %bb.ao ] ; 2 uses
  %i.nv = icmp eq ptr %i.is, %i.hx
  %i.nw = icmp eq ptr %i.in, %i.hn
  %or.cond1432 = select i1 %i.nv, i1 %i.nw, i1 false
  br i1 %or.cond1432, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.nx = load i32, ptr %i.ia, align 4, !tbaa !60
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !60 ; 2 uses
  %i.ob = sext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.ob
  %i.od = sext i32 %i.lv to i64                   ; 2 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !60
  %i.og = sext i32 %i.of to i64
  %i.oh = or i64 %i.og, %i.it
  %i.oi = inttoptr i64 %i.oh to ptr
  %i.oj = and i32 %i.oa, 3
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ok
  store ptr %i.oi, ptr %i.ol, align 8, !tbaa !221
  %i.om = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.od
  %i.on = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.ob
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !60
  %i.op = sext i32 %i.oo to i64
  %i.oq = or i64 %i.op, %i.gp
  %i.or = inttoptr i64 %i.oq to ptr
  store ptr %i.or, ptr %i.ly, align 8, !tbaa !221
  %i.os = add nuw nsw i32 %.2183.1, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.al
  %.3184.1 = phi i32 [ %i.os, %bb.ar ], [ %i.mb, %bb.al ], [ %.2183.1, %bb.aq ] ; 3 uses
  %i.ot = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.lt
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !60
  %i.ov = sext i32 %i.ou to i64                   ; 2 uses
  %i.ow = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !60 ; 4 uses
  %i.oy = and i32 %i.ox, 3
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.oz ; 4 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !221
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pd = add nuw nsw i32 %.3184.1, 1
  br label %bb.ba

bb.au:                                            ; preds = %bb.as
  %i.pe = icmp eq ptr %i.ii, %i.hn
  %i.pf = icmp eq ptr %i.is, %i.hs
  %or.cond1433 = select i1 %i.pe, i1 %i.pf, i1 false
  br i1 %or.cond1433, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.pg = load i32, ptr %i.hy, align 4, !tbaa !60 ; 2 uses
  %i.ph = sext i32 %i.pg to i64                   ; 2 uses
  %i.pi = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.ph
  %i.pj = sext i32 %i.ox to i64                   ; 2 uses
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !60
  %i.pm = sext i32 %i.pl to i64
  %i.pn = or i64 %i.pm, %i.it
  %i.po = inttoptr i64 %i.pn to ptr
  %i.pp = and i32 %i.pg, 3
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.pq
  store ptr %i.po, ptr %i.pr, align 8, !tbaa !221
  %i.ps = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.pj
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.ps, i64 %i.ph
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !60
  %i.pv = sext i32 %i.pu to i64
  %i.pw = or i64 %i.pv, %i.gp
  %i.px = inttoptr i64 %i.pw to ptr
  store ptr %i.px, ptr %i.pa, align 8, !tbaa !221
  %i.py = add nuw nsw i32 %.3184.1, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1182.2 = phi i32 [ %i.py, %bb.av ], [ %.3184.1, %bb.au ] ; 2 uses
  %i.pz = icmp eq ptr %i.ii, %i.hs
  %i.qa = icmp eq ptr %i.is, %i.hx
  %or.cond1434 = select i1 %i.pz, i1 %i.qa, i1 false
  br i1 %or.cond1434, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qb = load i32, ptr %i.hz, align 4, !tbaa !60
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !60 ; 2 uses
  %i.qf = sext i32 %i.qe to i64                   ; 2 uses
  %i.qg = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.qf
  %i.qh = sext i32 %i.ox to i64                   ; 2 uses
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !60
  %i.qk = sext i32 %i.qj to i64
  %i.ql = or i64 %i.qk, %i.it
  %i.qm = inttoptr i64 %i.ql to ptr
  %i.qn = and i32 %i.qe, 3
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.qo
  store ptr %i.qm, ptr %i.qp, align 8, !tbaa !221
  %i.qq = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.qh
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.qq, i64 %i.qf
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !60
  %i.qt = sext i32 %i.qs to i64
  %i.qu = or i64 %i.qt, %i.gp
  %i.qv = inttoptr i64 %i.qu to ptr
  store ptr %i.qv, ptr %i.pa, align 8, !tbaa !221
  %i.qw = add nuw nsw i32 %.1182.2, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.2183.2 = phi i32 [ %i.qw, %bb.ax ], [ %.1182.2, %bb.aw ] ; 2 uses
  %i.qx = icmp eq ptr %i.ii, %i.hx
  %i.qy = icmp eq ptr %i.is, %i.hn
  %or.cond1435 = select i1 %i.qx, i1 %i.qy, i1 false
  br i1 %or.cond1435, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.qz = load i32, ptr %i.ia, align 4, !tbaa !60
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !60 ; 2 uses
  %i.rd = sext i32 %i.rc to i64                   ; 2 uses
  %i.re = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.rd
  %i.rf = sext i32 %i.ox to i64                   ; 2 uses
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.re, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !60
  %i.ri = sext i32 %i.rh to i64
  %i.rj = or i64 %i.ri, %i.it
  %i.rk = inttoptr i64 %i.rj to ptr
  %i.rl = and i32 %i.rc, 3
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.rm
  store ptr %i.rk, ptr %i.rn, align 8, !tbaa !221
  %i.ro = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.rf
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.rd
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !60
  %i.rr = sext i32 %i.rq to i64
  %i.rs = or i64 %i.rr, %i.gp
  %i.rt = inttoptr i64 %i.rs to ptr
  store ptr %i.rt, ptr %i.pa, align 8, !tbaa !221
  %i.ru = add nuw nsw i32 %.2183.2, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.at
  %.3184.2 = phi i32 [ %i.ru, %bb.az ], [ %i.pd, %bb.at ], [ %.2183.2, %bb.ay ]
  %i.rv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.ov
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !60 ; 2 uses
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr [8 x i8], ptr %i.ic, i64 %i.rx
  %i.rz = getelementptr i8, ptr %i.ry, i64 64
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !221 ; 2 uses
  %i.sb = icmp eq i32 %.3184.2, 3
  br i1 %i.sb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.sc = sext i32 %.sroa.6602.0 to i64
  %i.sd = getelementptr [8 x i8], ptr %.sroa.0601.0, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 64
  store ptr %i.sa, ptr %i.se, align 8, !tbaa !221
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.sroa.0601.1 = phi ptr [ %.sroa.0601.0, %bb.bb ], [ %i.ic, %bb.ba ]
  %.sroa.6602.1 = phi i32 [ %.sroa.6602.0, %bb.bb ], [ %i.rw, %bb.ba ]
  %i.sf = ptrtoint ptr %i.sa to i64               ; 2 uses
  %i.sg = trunc i64 %i.sf to i32
  %i.sh = and i32 %i.sg, 15                       ; 2 uses
  %i.si = and i64 %i.sf, -16                      ; 2 uses
  %i.sj = inttoptr i64 %i.si to ptr               ; 2 uses
  %.not258 = icmp eq i64 %i.si, 0
  br i1 %.not258, label %.loopexit752, label %bb.ad, !llvm.loop !1262

.loopexit752:                                     ; preds = %bb.bc
  store ptr %i.sj, ptr %2, align 8, !tbaa !232
  store i32 %i.sh, ptr %i.e, align 8, !tbaa !237
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit752, %bb.ab
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 2 uses
  %exitcond962.not = icmp eq i64 %indvars.iv.next960, 4
  br i1 %exitcond962.not, label %bb.be, label %bb.ab, !llvm.loop !1263

bb.be:                                            ; preds = %bb.bd
  store i32 4, ptr %i.d, align 8, !tbaa !237
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.fe, i64 128
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !68
  %i.sm = sext i32 %i.sl to i64
  %i.sn = icmp slt i64 %indvars.iv.next964, %i.sm
  br i1 %i.sn, label %bb.j, label %._crit_edge793, !llvm.loop !1264

._crit_edge793:                                   ; preds = %bb.be, %.preheader753
  %i.so = phi ptr [ %i.ag, %.preheader753 ], [ %i.fe, %bb.be ] ; 2 uses
  %i.sp = phi i32 [ 0, %.preheader753 ], [ 4, %bb.be ] ; 2 uses
  %i.sq = phi ptr [ null, %.preheader753 ], [ %i.ea, %bb.be ]
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 68592
  store ptr %i.sq, ptr %i.sr, align 8, !tbaa !232
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 68600
  store i32 %i.sp, ptr %i.ss, align 8, !tbaa !237
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !231 ; 11 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 64
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !203 ; 5 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 68960 ; 3 uses
  store i64 %i.sw, ptr %i.sx, align 8, !tbaa !278
  %i.sy = load ptr, ptr %i.su, align 8, !tbaa !197 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.su, i64 32 ; 2 uses
  store ptr %i.sy, ptr %i.sz, align 8, !tbaa !204
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.tb = ptrtoint ptr %i.ta to i64               ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.su, i64 48
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !193
  %i.te = sext i32 %i.td to i64                   ; 4 uses
  %i.tf = add i64 %i.te, %i.tb
  %i.tg = urem i64 %i.tb, %i.te
  %i.th = sub i64 %i.tf, %i.tg
  %i.ti = inttoptr i64 %i.th to ptr               ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.su, i64 40 ; 2 uses
  store ptr %i.ti, ptr %i.tj, align 8, !tbaa !205
  %i.tk = getelementptr inbounds nuw i8, ptr %i.su, i64 60
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !196 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.su, i64 84 ; 3 uses
  store i32 %i.tl, ptr %i.tm, align 4, !tbaa !206
  %i.tn = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !199 ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.ti
  br i1 %i.tp, label %._crit_edge808, label %.lr.ph.i270

.lr.ph.i270:                                      ; preds = %._crit_edge793
  %i.tq = getelementptr inbounds nuw i8, ptr %i.su, i64 52
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !195
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 68584
  %i.tu = load ptr, ptr %i.tt, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %.critedge.backedge.i, %.lr.ph.i270
  %i.tv = phi ptr [ %i.sy, %.lr.ph.i270 ], [ %i.ug, %.critedge.backedge.i ] ; 2 uses
  %i.tw = phi i32 [ %i.tl, %.lr.ph.i270 ], [ %i.um, %.critedge.backedge.i ] ; 2 uses
  %i.tx = phi ptr [ %i.ti, %.lr.ph.i270 ], [ %i.ul, %.critedge.backedge.i ]
  %i.ty = icmp eq i32 %i.tw, 0
  br i1 %i.ty, label %bb.bg, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.tz = load ptr, ptr %i.tv, align 8, !tbaa !112 ; 3 uses
  store ptr %i.tz, ptr %i.sz, align 8, !tbaa !204
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = ptrtoint ptr %i.ua to i64               ; 2 uses
  %i.uc = add i64 %i.ub, %i.te
  %i.ud = urem i64 %i.ub, %i.te
  %i.ue = sub i64 %i.uc, %i.ud
  %i.uf = inttoptr i64 %i.ue to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

_ZN10tetgenmesh10memorypool8traverseEv.exit.i:    ; preds = %bb.bg, %bb.bf
  %i.ug = phi ptr [ %i.tz, %bb.bg ], [ %i.tv, %bb.bf ]
  %i.uh = phi i32 [ %i.tl, %bb.bg ], [ %i.tw, %bb.bf ]
  %i.ui = phi ptr [ %i.uf, %bb.bg ], [ %i.tx, %bb.bf ] ; 5 uses
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = add i64 %i.uj, %i.ts
  %i.ul = inttoptr i64 %i.uk to ptr               ; 3 uses
  store ptr %i.ul, ptr %i.tj, align 8, !tbaa !205
  %i.um = add nsw i32 %i.uh, -1                   ; 3 uses
  %i.un = icmp eq ptr %i.ui, null
  br i1 %i.un, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit.thread1288, label %bb.bh

bb.bh:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ui, i64 32
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !221
  %i.uq = icmp eq ptr %i.up, null
  br i1 %i.uq, label %.critedge.backedge.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ui, i64 56
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !221
  %i.ut = icmp eq ptr %i.us, %i.tu
  br i1 %i.ut, label %.critedge.backedge.i, label %.lr.ph807

.critedge.backedge.i:                             ; preds = %bb.bi, %bb.bh
  %i.uu = icmp eq ptr %i.to, %i.ul
  br i1 %i.uu, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit.thread1288, label %bb.bf, !llvm.loop !8

_ZN10tetgenmesh19tetrahedrontraverseEv.exit.thread1288: ; preds = %.critedge.backedge.i, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
  store i32 %i.um, ptr %i.tm, align 4, !tbaa !206
  br label %._crit_edge808

.lr.ph807:                                        ; preds = %bb.bi
  store i32 %i.um, ptr %i.tm, align 4, !tbaa !206
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 68684
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 68644
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 68672
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 68680
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 68660
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN10tetgenmesh19tetrahedrontraverseEv.exit284, %.lr.ph807
  %i.vb = phi i32 [ %i.sp, %.lr.ph807 ], [ %i.afo, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit284 ]
  %storemerge806 = phi ptr [ %i.ui, %.lr.ph807 ], [ %i.ags, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit284 ] ; 7 uses
  %i.vc = ptrtoint ptr %storemerge806 to i64      ; 2 uses
  %i.vd = sext i32 %i.vb to i64
  %i.ve = or i64 %i.vd, %i.vc
  %i.vf = inttoptr i64 %i.ve to ptr
  store i32 0, ptr %i.d, align 8, !tbaa !237
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.loopexit751
  %storemerge251803 = phi i32 [ 0, %bb.bj ], [ %i.afo, %.loopexit751 ] ; 2 uses
  %i.vg = sext i32 %storemerge251803 to i64       ; 2 uses
  %i.vh = getelementptr inbounds [8 x i8], ptr %storemerge806, i64 %i.vg
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !221
  %i.vj = icmp eq ptr %i.vi, null
  br i1 %i.vj, label %bb.bl, label %.loopexit751

bb.bl:                                            ; preds = %bb.bk
  %i.vk = load ptr, ptr %i.st, align 8, !tbaa !231 ; 13 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 24 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !201 ; 3 uses
  %.not.i372 = icmp eq ptr %i.vm, null
  br i1 %.not.i372, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !112
  store ptr %i.vn, ptr %i.vl, align 8, !tbaa !201
  br label %_ZN10tetgenmesh10memorypool5allocEv.exit

bb.bn:                                            ; preds = %bb.bl
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 80 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !200 ; 2 uses
  %i.vq = icmp eq i32 %i.vp, 0
  br i1 %i.vq, label %bb.bo, label %._crit_edge.i374

._crit_edge.i374:                                 ; preds = %bb.bn
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %.pre9.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !199
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vk, i64 8 ; 3 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !198 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !112 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, null
  br i1 %i.vu, label %bb.bp, label %._crit_edge1098

._crit_edge1098:                                  ; preds = %bb.bo
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.vk, i64 48
  %.pre1099 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !193
  %.phi.trans.insert1100 = getelementptr inbounds nuw i8, ptr %i.vk, i64 60
  %.pre1101 = load i32, ptr %.phi.trans.insert1100, align 4, !tbaa !196
  %.pre1170.a = sext i32 %.pre1099 to i64
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vk, i64 60
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !196 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vk, i64 52
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !195
  %i.vz = mul nsw i32 %i.vy, %i.vw
  %i.wa = sext i32 %i.vz to i64
  %i.wb = add nsw i64 %i.wa, 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vk, i64 48
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !193
  %i.we = sext i32 %i.wd to i64                   ; 2 uses
  %i.wf = add nsw i64 %i.wb, %i.we
  %i.wg = tail call noalias ptr @malloc(i64 noundef %i.wf) #45 ; 3 uses
  %i.wh = icmp eq ptr %i.wg, null
  br i1 %i.wh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.wi = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 1, ptr %i.wi, align 16, !tbaa !60
  tail call void @__cxa_throw(ptr nonnull %i.wi, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.br:                                            ; preds = %bb.bp
  store ptr %i.wg, ptr %i.vs, align 8, !tbaa !112
  store ptr null, ptr %i.wg, align 8, !tbaa !112
  %.pre7.i = load ptr, ptr %i.vr, align 8, !tbaa !198
  %.pre8.i = load ptr, ptr %.pre7.i, align 8, !tbaa !112
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1098, %bb.br
  %.pre-phi1171.a = phi i64 [ %.pre1170.a, %._crit_edge1098 ], [ %i.we, %bb.br ] ; 2 uses
  %i.wj = phi i32 [ %.pre1101, %._crit_edge1098 ], [ %i.vw, %bb.br ]
  %i.wk = phi ptr [ %i.vt, %._crit_edge1098 ], [ %.pre8.i, %bb.br ] ; 2 uses
  store ptr %i.wk, ptr %i.vr, align 8, !tbaa !198
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = ptrtoint ptr %i.wl to i64               ; 2 uses
  %i.wn = add i64 %.pre-phi1171.a, %i.wm
  %i.wo = urem i64 %i.wm, %.pre-phi1171.a
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = inttoptr i64 %i.wp to ptr
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %._crit_edge.i374
end_hunk_2
begin_hunk_3_@_ZN10tetgenmesh15reconstructmeshEv:bb.a
  %i.cui = sext i32 %i.cuh to i64
  %i.cuj = getelementptr inbounds [8 x i8], ptr %i.cub, i64 %i.cui
  %i.cuk = load ptr, ptr %i.cuj, align 8, !tbaa !221 ; 2 uses
  %i.cul = sext i32 %i.ctz to i64                 ; 2 uses
  %i.cum = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.cul
  %i.cun = load i32, ptr %i.cum, align 4, !tbaa !60
  %i.cuo = sext i32 %i.cun to i64
  %i.cup = getelementptr inbounds [8 x i8], ptr %i.ctx, i64 %i.cuo
  %i.cuq = load ptr, ptr %i.cup, align 8, !tbaa !221 ; 2 uses
  %i.cur = getelementptr inbounds nuw i8, ptr %.0889, i64 8
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cuk, i64 16
  %i.cut = load double, ptr %i.cus, align 8, !tbaa !59
  %i.cuu = getelementptr inbounds nuw i8, ptr %.0889, i64 16
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cuq, i64 16
  %i.cuw = load double, ptr %i.cuv, align 8, !tbaa !59
  %i.cux = load <2 x double>, ptr %i.cuk, align 8, !tbaa !59 ; 2 uses
  %i.cuy = load double, ptr %i.cur, align 8, !tbaa !59
  %i.cuz = load double, ptr %.0889, align 8, !tbaa !59
  %i.cva = load double, ptr %i.cuu, align 8, !tbaa !59
  %i.cvb = load <2 x double>, ptr %i.cuq, align 8, !tbaa !59 ; 2 uses
  %i.cvc = shufflevector <2 x double> %i.cux, <2 x double> %i.cvb, <2 x i32> <i32 0, i32 2>
  %i.cvd = insertelement <2 x double> poison, double %i.cuz, i64 0
  %i.cve = shufflevector <2 x double> %i.cvd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cvf = fsub <2 x double> %i.cvc, %i.cve       ; 4 uses
  %i.cvg = shufflevector <2 x double> %i.cux, <2 x double> %i.cvb, <2 x i32> <i32 1, i32 3>
  %i.cvh = insertelement <2 x double> poison, double %i.cuy, i64 0
  %i.cvi = shufflevector <2 x double> %i.cvh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cvj = fsub <2 x double> %i.cvg, %i.cvi       ; 4 uses
  %i.cvk = insertelement <2 x double> poison, double %i.cut, i64 0
  %i.cvl = insertelement <2 x double> %i.cvk, double %i.cuw, i64 1
  %i.cvm = insertelement <2 x double> poison, double %i.cva, i64 0
  %i.cvn = shufflevector <2 x double> %i.cvm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cvo = fsub <2 x double> %i.cvl, %i.cvn       ; 4 uses
  %i.cvp = fmul <2 x double> %i.cvj, %i.cvj
  %i.cvq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cvf, <2 x double> %i.cvf, <2 x double> %i.cvp)
  %i.cvr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cvo, <2 x double> %i.cvo, <2 x double> %i.cvq)
  %i.cvs = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cvr) ; 2 uses
  %i.cvt = extractelement <2 x double> %i.cvf, i64 0
  %i.cvu = extractelement <2 x double> %i.cvf, i64 1
  %i.cvv = extractelement <2 x double> %i.cvo, i64 0
  %i.cvw = extractelement <2 x double> %i.cvo, i64 1
  %i.cvx = shufflevector <2 x double> %i.cvj, <2 x double> %i.cvs, <2 x i32> <i32 0, i32 2>
  %i.cvy = shufflevector <2 x double> %i.cvj, <2 x double> %i.cvs, <2 x i32> <i32 1, i32 3>
  %i.cvz = fmul <2 x double> %i.cvx, %i.cvy       ; 2 uses
  %i.cwa = extractelement <2 x double> %i.cvz, i64 0
  %i.cwb = tail call double @llvm.fmuladd.f64(double %i.cvt, double %i.cvu, double %i.cwa)
  %i.cwc = tail call double @llvm.fmuladd.f64(double %i.cvv, double %i.cvw, double %i.cwb)
  %i.cwd = extractelement <2 x double> %i.cvz, i64 1
  %i.cwe = fdiv double %i.cwc, %i.cwd
  %i.cwf = load double, ptr %i.csr, align 8, !tbaa !320
  %i.cwg = fcmp olt double %i.cwe, %i.cwf
  br i1 %i.cwg, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.cwh = and i32 %i.cta, 255
  %i.cwi = or disjoint i32 %i.cwh, 1280
  store i32 %i.cwi, ptr %i.csz, align 4, !tbaa !60
  %i.cwj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.cuf
  %i.cwk = load i32, ptr %i.cwj, align 4, !tbaa !60 ; 2 uses
  %i.cwl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.cul
  %i.cwm = load i32, ptr %i.cwl, align 4, !tbaa !60
  %i.cwn = sext i32 %i.cwm to i64
  %i.cwo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.cwn
  %i.cwp = load i32, ptr %i.cwo, align 4, !tbaa !60 ; 2 uses
  %i.cwq = ptrtoint ptr %i.ctx to i64
  %i.cwr = sext i32 %i.cwp to i64
  %i.cws = or i64 %i.cwr, %i.cwq
  %i.cwt = inttoptr i64 %i.cws to ptr
  %i.cwu = ashr i32 %i.cwk, 1
  %i.cwv = sext i32 %i.cwu to i64
  %i.cww = getelementptr inbounds [8 x i8], ptr %i.cub, i64 %i.cwv
  store ptr %i.cwt, ptr %i.cww, align 8, !tbaa !221
  %i.cwx = ptrtoint ptr %i.cub to i64
  %i.cwy = sext i32 %i.cwk to i64
  %i.cwz = or i64 %i.cwy, %i.cwx
  %i.cxa = inttoptr i64 %i.cwz to ptr
  %i.cxb = ashr i32 %i.cwp, 1
  %i.cxc = sext i32 %i.cxb to i64
  %i.cxd = getelementptr inbounds [8 x i8], ptr %i.ctx, i64 %i.cxc
  store ptr %i.cxa, ptr %i.cxd, align 8, !tbaa !221
  %i.cxe = load i64, ptr %i.css, align 8, !tbaa !345
  %i.cxf = add nsw i64 %i.cxe, 1
  store i64 %i.cxf, ptr %i.css, align 8, !tbaa !345
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hf, %bb.hh, %bb.hi, %bb.hk, %bb.hj, %bb.hg
  %i.cxg = load i32, ptr %i.crj, align 8          ; 2 uses
  %i.cxh = sext i32 %i.cxg to i64
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hp, %bb.hl
  %i.cxi = phi ptr [ %i.cxw, %bb.hp ], [ %i.csv, %bb.hl ] ; 2 uses
  %.promoted.i3591143 = phi ptr [ %i.cyd, %bb.hp ], [ %.promoted.i359, %bb.hl ] ; 2 uses
  %i.cxj = icmp eq ptr %.promoted.i3591143, %i.crl
  br i1 %i.cxj, label %._crit_edge891, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.cxk = load i32, ptr %i.cri, align 4, !tbaa !206 ; 2 uses
  %i.cxl = icmp eq i32 %i.cxk, 0
  br i1 %i.cxl, label %bb.ho, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i360

bb.ho:                                            ; preds = %bb.hn
  %i.cxm = load ptr, ptr %i.cxi, align 8, !tbaa !112 ; 3 uses
  store ptr %i.cxm, ptr %i.cqv, align 8, !tbaa !204
  %i.cxn = getelementptr inbounds nuw i8, ptr %i.cxm, i64 8
  %i.cxo = ptrtoint ptr %i.cxn to i64             ; 2 uses
  %i.cxp = load i32, ptr %i.cqy, align 8, !tbaa !193
  %i.cxq = sext i32 %i.cxp to i64                 ; 2 uses
  %i.cxr = add i64 %i.cxq, %i.cxo
  %i.cxs = urem i64 %i.cxo, %i.cxq
  %i.cxt = sub i64 %i.cxr, %i.cxs
  %i.cxu = inttoptr i64 %i.cxt to ptr
  %i.cxv = load i32, ptr %i.crg, align 4, !tbaa !196
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i360

_ZN10tetgenmesh10memorypool8traverseEv.exit.i360: ; preds = %bb.ho, %bb.hn
  %i.cxw = phi ptr [ %i.cxm, %bb.ho ], [ %i.cxi, %bb.hn ] ; 2 uses
  %i.cxx = phi i32 [ %i.cxv, %bb.ho ], [ %i.cxk, %bb.hn ]
  %i.cxy = phi ptr [ %i.cxu, %bb.ho ], [ %.promoted.i3591143, %bb.hn ] ; 4 uses
  %i.cxz = ptrtoint ptr %i.cxy to i64
  %i.cya = load i32, ptr %i.crm, align 4, !tbaa !195
  %i.cyb = sext i32 %i.cya to i64
  %i.cyc = add i64 %i.cyb, %i.cxz
  %i.cyd = inttoptr i64 %i.cyc to ptr             ; 3 uses
  store ptr %i.cyd, ptr %i.crf, align 8, !tbaa !205
  %i.cye = add nsw i32 %i.cxx, -1
  store i32 %i.cye, ptr %i.cri, align 4, !tbaa !206
  %i.cyf = icmp eq ptr %i.cxy, null
  br i1 %i.cyf, label %._crit_edge891, label %bb.hp

bb.hp:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i360
  %i.cyg = getelementptr [4 x i8], ptr %i.cxy, i64 %i.cxh
  %i.cyh = getelementptr i8, ptr %i.cyg, i64 4
  %i.cyi = load i32, ptr %i.cyh, align 4, !tbaa !60
  %.mask.i361 = and i32 %i.cyi, -256
  %i.cyj = icmp eq i32 %.mask.i361, 2304
  br i1 %i.cyj, label %bb.hm, label %_ZN10tetgenmesh13pointtraverseEv.exit363, !llvm.loop !6

_ZN10tetgenmesh13pointtraverseEv.exit363:         ; preds = %bb.hp
  br label %bb.hf, !llvm.loop !1280

._crit_edge891:                                   ; preds = %bb.hb, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i357, %bb.hm, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i360
  %i.cyk = load ptr, ptr %i.f, align 8, !tbaa !219
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyk, i64 12
  %i.cym = load i32, ptr %i.cyl, align 4, !tbaa !129
  %.not220 = icmp eq i32 %i.cym, 0
  br i1 %.not220, label %.thread691, label %bb.hq

bb.hq:                                            ; preds = %._crit_edge891
  %i.cyn = load ptr, ptr %0, align 8, !tbaa !222  ; 5 uses
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyn, i64 224
  %i.cyp = load ptr, ptr %i.cyo, align 8, !tbaa !74 ; 2 uses
  %.not221 = icmp eq ptr %i.cyp, null
  br i1 %.not221, label %.thread692, label %.preheader738

.preheader738:                                    ; preds = %bb.hq
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cyn, i64 232
  %i.cyr = load i32, ptr %i.cyq, align 8, !tbaa !73 ; 2 uses
  %i.cys = icmp sgt i32 %i.cyr, 0
  br i1 %i.cys, label %.lr.ph897.a, label %.thread692

.lr.ph897.a:                                      ; preds = %.preheader738
  %i.cyt = load ptr, ptr %i.beq, align 8, !tbaa !252 ; 8 uses
  %i.cyu = load ptr, ptr %i.cyt, align 8, !tbaa !197 ; 3 uses
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyt, i64 32 ; 3 uses
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyu, i64 8
  %i.cyx = ptrtoint ptr %i.cyw to i64             ; 2 uses
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cyt, i64 48
  %i.cyz = load i32, ptr %i.cyy, align 8, !tbaa !193
  %i.cza = sext i32 %i.cyz to i64                 ; 6 uses
  %i.czb = add i64 %i.cza, %i.cyx
  %i.czc = urem i64 %i.cyx, %i.cza
  %i.czd = sub i64 %i.czb, %i.czc
  %i.cze = inttoptr i64 %i.czd to ptr             ; 2 uses
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cyt, i64 40 ; 3 uses
  %i.czg = getelementptr inbounds nuw i8, ptr %i.cyt, i64 60
  %i.czh = load i32, ptr %i.czg, align 4, !tbaa !196 ; 4 uses
  %i.czi = getelementptr inbounds nuw i8, ptr %i.cyt, i64 84 ; 3 uses
  %i.czj = getelementptr inbounds nuw i8, ptr %i.cyt, i64 16
  %i.czk = load ptr, ptr %i.czj, align 8, !tbaa !199 ; 2 uses
  %i.czl = getelementptr inbounds nuw i8, ptr %i.cyt, i64 52 ; 2 uses
  %i.czm = getelementptr inbounds nuw i8, ptr %0, i64 68688
  %i.czn = getelementptr inbounds nuw i8, ptr %0, i64 68692
  %wide.trip.count1018 = zext nneg i32 %i.cyr to i64
  br label %bb.hr

bb.hr:                                            ; preds = %.lr.ph897.a, %._crit_edge895
  %indvars.iv1015 = phi i64 [ 0, %.lr.ph897.a ], [ %indvars.iv.next1016, %._crit_edge895 ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv1015, 4
  %i.czo = getelementptr inbounds nuw i8, ptr %i.cyp, i64 %.idx ; 2 uses
  %i.czp = load double, ptr %i.czo, align 8, !tbaa !59
  %i.czq = fptosi double %i.czp to i32
  %i.czr = getelementptr inbounds nuw i8, ptr %i.czo, i64 8
  %i.czs = load double, ptr %i.czr, align 8, !tbaa !59
  store ptr %i.cyu, ptr %i.cyv, align 8, !tbaa !204
  store ptr %i.cze, ptr %i.czf, align 8, !tbaa !205
  store i32 %i.czh, ptr %i.czi, align 4, !tbaa !206
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hv, %bb.hr
  %3 = phi ptr [ %i.dad, %bb.hv ], [ %i.cyu, %bb.hr ] ; 2 uses
  %4 = phi i32 [ %i.dal, %bb.hv ], [ %i.czh, %bb.hr ] ; 2 uses
  %i.czt = phi ptr [ %i.dak, %bb.hv ], [ %i.cze, %bb.hr ] ; 2 uses
  %i.czu = icmp eq ptr %i.czt, %i.czk
  br i1 %i.czu, label %._crit_edge895, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.czv = icmp eq i32 %4, 0
  br i1 %i.czv, label %bb.hu, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i365

bb.hu:                                            ; preds = %bb.ht
  %i.czw = load ptr, ptr %3, align 8, !tbaa !112  ; 3 uses
  store ptr %i.czw, ptr %i.cyv, align 8, !tbaa !204
  %i.czx = getelementptr inbounds nuw i8, ptr %i.czw, i64 8
  %i.czy = ptrtoint ptr %i.czx to i64             ; 2 uses
  %i.czz = add i64 %i.czy, %i.cza
  %i.daa = urem i64 %i.czy, %i.cza
  %i.dab = sub i64 %i.czz, %i.daa
  %i.dac = inttoptr i64 %i.dab to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i365

_ZN10tetgenmesh10memorypool8traverseEv.exit.i365: ; preds = %bb.hu, %bb.ht
  %i.dad = phi ptr [ %i.czw, %bb.hu ], [ %3, %bb.ht ] ; 2 uses
  %i.dae = phi i32 [ %i.czh, %bb.hu ], [ %4, %bb.ht ]
  %i.daf = phi ptr [ %i.dac, %bb.hu ], [ %i.czt, %bb.ht ] ; 4 uses
  %i.dag = ptrtoint ptr %i.daf to i64
  %i.dah = load i32, ptr %i.czl, align 4, !tbaa !195
  %i.dai = sext i32 %i.dah to i64
  %i.daj = add i64 %i.dai, %i.dag
  %i.dak = inttoptr i64 %i.daj to ptr             ; 3 uses
  store ptr %i.dak, ptr %i.czf, align 8, !tbaa !205
  %i.dal = add nsw i32 %i.dae, -1                 ; 3 uses
  store i32 %i.dal, ptr %i.czi, align 4, !tbaa !206
  %i.dam = icmp eq ptr %i.daf, null
  br i1 %i.dam, label %._crit_edge895, label %bb.hv

bb.hv:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i365
  %i.dan = getelementptr inbounds nuw i8, ptr %i.daf, i64 24
  %i.dao = load ptr, ptr %i.dan, align 8, !tbaa !221
  %i.dap = icmp eq ptr %i.dao, null
  br i1 %i.dap, label %bb.hs, label %.lr.ph894, !llvm.loop !7

.lr.ph894:                                        ; preds = %bb.hv
  %i.daq = load i32, ptr %i.czm, align 8, !tbaa !240
  %i.dar = sext i32 %i.daq to i64
  br label %bb.hw

bb.hw:                                            ; preds = %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit371, %.lr.ph894
  %5 = phi ptr [ %i.dad, %.lr.ph894 ], [ %i.dbh, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit371 ]
  %6 = phi i32 [ %i.dal, %.lr.ph894 ], [ %i.dbp, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit371 ]
  %.promoted.i368 = phi ptr [ %i.dak, %.lr.ph894 ], [ %i.dbo, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit371 ]
  %storemerge224893 = phi ptr [ %i.daf, %.lr.ph894 ], [ %i.dbj, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit371 ] ; 2 uses
  %i.das = getelementptr inbounds [4 x i8], ptr %storemerge224893, i64 %i.dar
  %i.dat = load i32, ptr %i.das, align 4, !tbaa !60
  %i.dau = icmp eq i32 %i.dat, %i.czq
  br i1 %i.dau, label %bb.hx, label %.preheader1542

bb.hx:                                            ; preds = %bb.hw
  %i.dav = load i32, ptr %i.czn, align 4, !tbaa !239
  %i.daw = sext i32 %i.dav to i64
  %i.dax = getelementptr inbounds [8 x i8], ptr %storemerge224893, i64 %i.daw
  store double %i.czs, ptr %i.dax, align 8, !tbaa !59
  br label %.preheader1542

.preheader1542:                                   ; preds = %bb.hx, %bb.hw
  br label %bb.hy

bb.hy:                                            ; preds = %.preheader1542, %bb.ib
  %7 = phi ptr [ %i.dbh, %bb.ib ], [ %5, %.preheader1542 ] ; 2 uses
  %8 = phi i32 [ %i.dbp, %bb.ib ], [ %6, %.preheader1542 ] ; 2 uses
  %.promoted.i3681147 = phi ptr [ %i.dbo, %bb.ib ], [ %.promoted.i368, %.preheader1542 ] ; 2 uses
  %i.day = icmp eq ptr %.promoted.i3681147, %i.czk
  br i1 %i.day, label %._crit_edge895, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.daz = icmp eq i32 %8, 0
  br i1 %i.daz, label %bb.ia, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i369

bb.ia:                                            ; preds = %bb.hz
  %i.dba = load ptr, ptr %7, align 8, !tbaa !112  ; 3 uses
  store ptr %i.dba, ptr %i.cyv, align 8, !tbaa !204
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.dba, i64 8
  %i.dbc = ptrtoint ptr %i.dbb to i64             ; 2 uses
  %i.dbd = add i64 %i.dbc, %i.cza
  %i.dbe = urem i64 %i.dbc, %i.cza
  %i.dbf = sub i64 %i.dbd, %i.dbe
  %i.dbg = inttoptr i64 %i.dbf to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i369

_ZN10tetgenmesh10memorypool8traverseEv.exit.i369: ; preds = %bb.ia, %bb.hz
  %i.dbh = phi ptr [ %i.dba, %bb.ia ], [ %7, %bb.hz ] ; 2 uses
  %i.dbi = phi i32 [ %i.czh, %bb.ia ], [ %8, %bb.hz ]
  %i.dbj = phi ptr [ %i.dbg, %bb.ia ], [ %.promoted.i3681147, %bb.hz ] ; 4 uses
  %i.dbk = ptrtoint ptr %i.dbj to i64
  %i.dbl = load i32, ptr %i.czl, align 4, !tbaa !195
  %i.dbm = sext i32 %i.dbl to i64
  %i.dbn = add i64 %i.dbm, %i.dbk
  %i.dbo = inttoptr i64 %i.dbn to ptr             ; 3 uses
  store ptr %i.dbo, ptr %i.czf, align 8, !tbaa !205
  %i.dbp = add nsw i32 %i.dbi, -1                 ; 3 uses
  store i32 %i.dbp, ptr %i.czi, align 4, !tbaa !206
  %i.dbq = icmp eq ptr %i.dbj, null
  br i1 %i.dbq, label %._crit_edge895, label %bb.ib

bb.ib:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i369
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbj, i64 24
  %i.dbs = load ptr, ptr %i.dbr, align 8, !tbaa !221
  %i.dbt = icmp eq ptr %i.dbs, null
  br i1 %i.dbt, label %bb.hy, label %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit371, !llvm.loop !7

_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit371: ; preds = %bb.ib
  br label %bb.hw, !llvm.loop !1281

._crit_edge895:                                   ; preds = %bb.hs, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i365, %bb.hy, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i369
  %indvars.iv.next1016 = add nuw nsw i64 %indvars.iv1015, 1 ; 2 uses
  %exitcond1019.not = icmp eq i64 %indvars.iv.next1016, %wide.trip.count1018
  br i1 %exitcond1019.not, label %.thread692, label %bb.hr, !llvm.loop !1282

.thread692:                                       ; preds = %._crit_edge895, %.preheader738, %bb.hq
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.cyn, i64 240
  %i.dbv = load ptr, ptr %i.dbu, align 8, !tbaa !76 ; 2 uses
  %.not223 = icmp eq ptr %i.dbv, null
  br i1 %.not223, label %.thread691, label %.preheader

.preheader:                                       ; preds = %.thread692
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.cyn, i64 248
  %i.dbx = load i32, ptr %i.dbw, align 8, !tbaa !75 ; 2 uses
  %i.dby = icmp sgt i32 %i.dbx, 0
  br i1 %i.dby, label %.lr.ph902, label %.thread691

.lr.ph902:                                        ; preds = %.preheader
  %i.dbz = load i32, ptr %i.cyn, align 8, !tbaa !56
  %i.dca = load ptr, ptr %i.c, align 8, !tbaa !223
  %i.dcb = load ptr, ptr %i.b, align 8
  %i.dcc = getelementptr inbounds nuw i8, ptr %0, i64 68692
  %wide.trip.count1028 = zext nneg i32 %i.dbx to i64
  br label %bb.ic

bb.ic:                                            ; preds = %.lr.ph902, %.loopexit
  %indvars.iv1025 = phi i64 [ 0, %.lr.ph902 ], [ %indvars.iv.next1026, %.loopexit ] ; 2 uses
  %.idx1285 = mul nuw nsw i64 %indvars.iv1025, 24
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dbv, i64 %.idx1285 ; 3 uses
  %i.dce = load double, ptr %i.dcd, align 8, !tbaa !59
  %i.dcf = fptosi double %i.dce to i32
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dcd, i64 8
  %i.dch = load double, ptr %i.dcg, align 8, !tbaa !59
  %i.dci = fptosi double %i.dch to i32
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.dcd, i64 16
  %i.dck = load double, ptr %i.dcj, align 8, !tbaa !59
  %i.dcl = sub nsw i32 %i.dcf, %i.dbz
  %i.dcm = sext i32 %i.dcl to i64
  %i.dcn = getelementptr inbounds [4 x i8], ptr %i.dca, i64 %i.dcm ; 2 uses
  %i.dco = load i32, ptr %i.dcn, align 4, !tbaa !60 ; 2 uses
  %i.dcp = getelementptr i8, ptr %i.dcn, i64 4
  %i.dcq = load i32, ptr %i.dcp, align 4, !tbaa !60 ; 2 uses
  %i.dcr = icmp slt i32 %i.dco, %i.dcq
  br i1 %i.dcr, label %.lr.ph900, label %.loopexit

.lr.ph900:                                        ; preds = %bb.ic
  %i.dcs = load i32, ptr %i.crj, align 8, !tbaa !224
  %i.dct = sext i32 %i.dcs to i64
  %i.dcu = sext i32 %i.dco to i64
  %wide.trip.count1023 = sext i32 %i.dcq to i64
  br label %bb.ie

bb.id:                                            ; preds = %bb.ie
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, 1 ; 2 uses
  %exitcond1024.not = icmp eq i64 %indvars.iv.next1021, %wide.trip.count1023
  br i1 %exitcond1024.not, label %.loopexit, label %bb.ie, !llvm.loop !1283

bb.ie:                                            ; preds = %.lr.ph900, %bb.id
  %indvars.iv1020 = phi i64 [ %i.dcu, %.lr.ph900 ], [ %indvars.iv.next1021, %bb.id ] ; 2 uses
  %i.dcv = getelementptr inbounds [16 x i8], ptr %i.dcb, i64 %indvars.iv1020 ; 2 uses
  %i.dcw = load ptr, ptr %i.dcv, align 8, !tbaa !225 ; 2 uses
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcv, i64 8
  %i.dcy = load i32, ptr %i.dcx, align 8, !tbaa !226
  %i.dcz = sext i32 %i.dcy to i64
  %i.dda = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.dcz
  %i.ddb = load i32, ptr %i.dda, align 4, !tbaa !60
  %i.ddc = sext i32 %i.ddb to i64
  %i.ddd = getelementptr inbounds [8 x i8], ptr %i.dcw, i64 %i.ddc
  %i.dde = load ptr, ptr %i.ddd, align 8, !tbaa !221
  %i.ddf = getelementptr inbounds [4 x i8], ptr %i.dde, i64 %i.dct
  %i.ddg = load i32, ptr %i.ddf, align 4, !tbaa !60
  %i.ddh = icmp eq i32 %i.ddg, %i.dci
  br i1 %i.ddh, label %bb.if, label %bb.id

bb.if:                                            ; preds = %bb.ie
  %i.ddi = load i32, ptr %i.dcc, align 4, !tbaa !239
  %i.ddj = sext i32 %i.ddi to i64
  %i.ddk = getelementptr inbounds [8 x i8], ptr %i.dcw, i64 %i.ddj
  store double %i.dck, ptr %i.ddk, align 8, !tbaa !59
  br label %.loopexit

.loopexit:                                        ; preds = %bb.id, %bb.ic, %bb.if
  %indvars.iv.next1026 = add nuw nsw i64 %indvars.iv1025, 1 ; 2 uses
  %exitcond1029.not = icmp eq i64 %indvars.iv.next1026, %wide.trip.count1028
  br i1 %exitcond1029.not, label %.thread691, label %bb.ic, !llvm.loop !1284

.thread691:                                       ; preds = %.loopexit, %.preheader, %._crit_edge891, %.thread692
  %i.ddl = load ptr, ptr %i.c, align 8, !tbaa !223 ; 2 uses
  %i.ddm = icmp eq ptr %i.ddl, null
  br i1 %i.ddm, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %.thread691
  tail call void @_ZdaPv(ptr noundef nonnull %i.ddl) #42
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %.thread691
  %i.ddn = load ptr, ptr %i.b, align 8, !tbaa !228 ; 2 uses
  %i.ddo = icmp eq ptr %i.ddn, null
  br i1 %i.ddo, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @_ZdaPv(ptr noundef nonnull %i.ddn) #42
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.gz
  %i.ddp = getelementptr inbounds nuw i8, ptr %0, i64 68696
  store i32 1, ptr %i.ddp, align 8, !tbaa !276
  %i.ddq = getelementptr inbounds nuw i8, ptr %0, i64 68700
  store i32 1, ptr %i.ddq, align 4, !tbaa !277
  %i.ddr = load ptr, ptr %i.a, align 8, !tbaa !221 ; 2 uses
  %i.dds = icmp eq ptr %i.ddr, null
  br i1 %i.dds, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @_ZdaPv(ptr noundef nonnull %i.ddr) #42
  br label %bb.im

bb.im:                                            ; preds = %bb.ik, %bb.il
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 1, 9) i32 @_ZN10tetgenmesh17locate_point_walkEPdPNS_7trifaceEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((8, 12)) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.b = load ptr, ptr %2, align 8, !tbaa !232    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !59
  %i.l = load <2 x double>, ptr %i.f, align 8, !tbaa !59
  %i.m = fadd <2 x double> %i.k, %i.l
  %i.n = load <2 x double>, ptr %i.h, align 8, !tbaa !59
  %i.o = fadd <2 x double> %i.m, %i.n
  %i.p = load <2 x double>, ptr %i.j, align 8, !tbaa !59
  %i.q = fadd <2 x double> %i.o, %i.p
  %i.r = fmul <2 x double> %i.q, splat (double 2.500000e-01)
  store <2 x double> %i.r, ptr %i.a, align 16, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !59
  %i.w = fadd double %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !59
  %i.z = fadd double %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !59
  %i.ac = fadd double %i.z, %i.ab
  %i.ad = fmul double %i.ac, 2.500000e-01
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.ad, ptr %i.ae, align 16, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 17 uses
  store i32 0, ptr %i.af, align 8, !tbaa !237
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %storemerge309 = phi i32 [ 0, %bb.a ], [ %i.az, %bb.c ]
  %i.ag = load ptr, ptr %2, align 8, !tbaa !232   ; 3 uses
  %i.ah = sext i32 %storemerge309 to i64          ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !60
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !221 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE:bb.a
  %i.z = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !221
  %.not = icmp ne ptr %i.aa, %i.j
  %i.ab = zext i1 %.not to i32
  %spec.select = xor i32 %i.t, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ae = load double, ptr %i.ac, align 8, !tbaa !59
  %i.af = load double, ptr %i.j, align 8, !tbaa !59
  %i.ag = load double, ptr %i.ad, align 8, !tbaa !59
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.g
  %.sroa.1040.0 = phi i32 [ %spec.select, %bb.b ], [ %spec.select51, %bb.g ] ; 2 uses
  %.sroa.035.0 = phi ptr [ %i.r, %bb.b ], [ %i.dl, %bb.g ] ; 2 uses
  %.0 = phi double [ %i.u, %bb.b ], [ %.1, %bb.g ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.10.0 = phi i32 [ %.sroa.1040.0, %bb.c ], [ %spec.select50, %bb.e ]
  %.sroa.0.0 = phi ptr [ %.sroa.035.0, %bb.c ], [ %i.cu, %bb.e ] ; 3 uses
  %.018 = phi double [ 0.000000e+00, %bb.c ], [ %i.ce, %bb.e ]
  %i.an = zext nneg i32 %.sroa.10.0 to i64        ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !60
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !221 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.an
  %i.au = load i32, ptr %i.at, align 4, !tbaa !60
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !221 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !59
  %i.bc = load <2 x double>, ptr %i.as, align 8, !tbaa !59 ; 2 uses
  %i.bd = load <2 x double>, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bf = fsub <2 x double> %i.be, %i.ak          ; 4 uses
  %i.bg = shufflevector <2 x double> %i.bc, <2 x double> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bh = fsub <2 x double> %i.bg, %i.am          ; 4 uses
  %i.bi = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bb, i64 1
  %i.bk = fsub <2 x double> %i.bj, %i.ai          ; 4 uses
  %i.bl = fmul <2 x double> %i.bh, %i.bh
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bf, <2 x double> %i.bl)
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bk, <2 x double> %i.bm)
  %i.bo = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bn) ; 2 uses
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bq = shufflevector <2 x double> %i.bo, <2 x double> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.br = fmul <2 x double> %i.bp, %i.bq          ; 2 uses
  %i.bs = extractelement <2 x double> %i.bf, i64 0
  %i.bt = extractelement <2 x double> %i.bf, i64 1
  %i.bu = extractelement <2 x double> %i.br, i64 1
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.bu)
  %i.bw = extractelement <2 x double> %i.bk, i64 0
  %i.bx = extractelement <2 x double> %i.bk, i64 1
  %i.by = tail call noundef double @llvm.fmuladd.f64(double %i.bw, double %i.bx, double %i.bv)
  %i.bz = extractelement <2 x double> %i.br, i64 0
  %i.ca = fdiv double %i.by, %i.bz                ; 3 uses
  %i.cb = fcmp ogt double %i.ca, 1.000000e+00
  %i.cc = fcmp olt double %i.ca, -1.000000e+00
  %spec.store.select.i = select i1 %i.cc, double -1.000000e+00, double %i.ca
  %.0.i = select i1 %i.cb, double 1.000000e+00, double %spec.store.select.i
  %i.cd = tail call double @acos(double noundef %.0.i) #40
  %i.ce = fadd double %.018, %i.cd                ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.an
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !60
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !60
  %i.ck = ashr i32 %i.cj, 1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !221
  %.not22 = icmp eq ptr %i.co, null
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !221
  %i.cq = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 7
  %i.ct = and i64 %i.cq, -8
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = and i64 %i.cq, 7
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !60
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !221
  %.not23 = icmp ne ptr %i.da, %i.j
  %i.db = zext i1 %.not23 to i32
  %spec.select50 = xor i32 %i.cs, %i.db
  br label %bb.d, !llvm.loop !19

bb.f:                                             ; preds = %bb.d
  %i.dc = fcmp olt double %i.ce, %.0
  %.1 = select i1 %i.dc, double %i.ce, double %.0 ; 2 uses
  %i.dd = lshr i32 %.sroa.1040.0, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.035.0, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !221
  %i.dh = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.di = and i64 %i.dh, -8                       ; 3 uses
  %i.dj = icmp eq i64 %i.di, %i.p
  %i.dk = icmp eq i64 %i.di, 0
  %or.cond = or i1 %i.dj, %i.dk
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = inttoptr i64 %i.di to ptr               ; 2 uses
  %i.dm = trunc i64 %i.dh to i32
  %i.dn = and i32 %i.dm, 7
  %i.do = and i64 %i.dh, 7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !60
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !221
  %.not24 = icmp ne ptr %i.dt, %i.j
  %i.du = zext i1 %.not24 to i32
  %spec.select51 = xor i32 %i.dn, %i.du
  br label %bb.c, !llvm.loop !20

bb.h:                                             ; preds = %bb.f
  %i.dv = fdiv double %.1, %i.a
  %i.dw = fmul double %i.dv, 1.800000e+02
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.019 = phi double [ %i.dw, %bb.h ], [ 3.600000e+02, %bb.a ]
  ret double %.019
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh24create_segment_info_listEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.tetgenmesh::face", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !186
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.143) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !400  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !253
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !203
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68544
  %i.n = load i32, ptr %i.m, align 8, !tbaa !378
  %i.o = shl i32 %i.n, 2
  %i.p = add i32 %i.o, 4                          ; 4 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i32 %i.p, 0
  %i.s = shl nsw i64 %i.q, 3
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #41 ; 3 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !400
  %i.v = icmp sgt i32 %i.p, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.w = zext nneg i32 %i.p to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false), !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr null, ptr %1, align 8, !tbaa !225
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !226
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !253  ; 8 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !197 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !204
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !193
  %i.ag = sext i32 %i.af to i64                   ; 6 uses
  %i.ah = add i64 %i.ag, %i.ad
  %i.ai = urem i64 %i.ad, %i.ag
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 3 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !205
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  %i.an = load i32, ptr %i.am, align 4, !tbaa !196 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 84 ; 3 uses
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !206
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !199 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 52 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %._crit_edge
  %i.as = phi ptr [ %i.be, %bb.j ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.at = phi i32 [ %i.bm, %bb.j ], [ %i.an, %._crit_edge ] ; 2 uses
  %i.au = phi ptr [ %i.bl, %bb.j ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aq
  br i1 %i.av, label %._crit_edge67, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i32 %i.at, 0
  br i1 %i.aw, label %bb.i, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !112 ; 3 uses
  store ptr %i.ax, ptr %i.ab, align 8, !tbaa !204
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = add i64 %i.az, %i.ag
  %i.bb = urem i64 %i.az, %i.ag
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

_ZN10tetgenmesh10memorypool8traverseEv.exit.i:    ; preds = %bb.i, %bb.h
  %i.be = phi ptr [ %i.ax, %bb.i ], [ %i.as, %bb.h ] ; 2 uses
  %i.bf = phi i32 [ %i.an, %bb.i ], [ %i.at, %bb.h ]
  %i.bg = phi ptr [ %i.bd, %bb.i ], [ %i.au, %bb.h ] ; 5 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = load i32, ptr %i.ar, align 4, !tbaa !195
  %i.bj = sext i32 %i.bi to i64
  %i.bk = add i64 %i.bj, %i.bh
  %i.bl = inttoptr i64 %i.bk to ptr               ; 3 uses
  store ptr %i.bl, ptr %i.al, align 8, !tbaa !205
  %i.bm = add nsw i32 %i.bf, -1                   ; 3 uses
  store i32 %i.bm, ptr %i.ao, align 4, !tbaa !206
  %i.bn = icmp eq ptr %i.bg, null
  br i1 %i.bn, label %._crit_edge67, label %bb.j

bb.j:                                             ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !221
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.g, label %.lr.ph66, !llvm.loop !7

.lr.ph66:                                         ; preds = %bb.j
  store ptr %i.bg, ptr %1, align 8, !tbaa !225
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 68688
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !240
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 68552
  %i.bv = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16
  %i.bw = sext i32 %i.bv to i64
  %i.bx = load double, ptr @_ZN10tetgenmesh2PIE, align 8 ; 3 uses
  %i.by = fmul double %i.bx, 2.000000e+00         ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48, %.lr.ph66
  %i.bz = phi ptr [ %i.be, %.lr.ph66 ], [ %i.df, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ]
  %i.ca = phi i32 [ %i.bm, %.lr.ph66 ], [ %i.dn, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ]
  %.promoted.i45 = phi ptr [ %i.bl, %.lr.ph66 ], [ %i.dm, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ]
  %.03365 = phi double [ 3.600000e+02, %.lr.ph66 ], [ %.2.1, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 4 uses
  %.03464 = phi double [ 3.600000e+02, %.lr.ph66 ], [ %.135, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 3 uses
  %.03663 = phi ptr [ undef, %.lr.ph66 ], [ %.238.1, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 3 uses
  %storemerge62 = phi ptr [ %i.bg, %.lr.ph66 ], [ %i.dh, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 7 uses
  %i.cb = phi i32 [ 0, %.lr.ph66 ], [ %8, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ]
  %.sroa.0.061 = phi ptr [ null, %.lr.ph66 ], [ %.sroa.0.1, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 2 uses
  %.sroa.6.060 = phi i32 [ 0, %.lr.ph66 ], [ %.sroa.6.1, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %storemerge62, i64 %i.bt
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !60 ; 2 uses
  %i.cf = shl nsw i32 %i.ce, 2
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cg ; 4 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !59
  %i.cj = fcmp oeq double %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ck = call noundef double @_ZN10tetgenmesh23get_min_diahedral_angleEPNS_4faceE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1) ; 3 uses
  store double %i.ck, ptr %i.ch, align 8, !tbaa !59
  %i.cl = fcmp olt double %i.ck, %.03464
  br i1 %i.cl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.sroa.6.1 = phi i32 [ %i.cb, %bb.m ], [ %.sroa.6.060, %bb.l ], [ %.sroa.6.060, %bb.k ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %storemerge62, %bb.m ], [ %.sroa.0.061, %bb.l ], [ %.sroa.0.061, %bb.k ] ; 2 uses
  %.135 = phi double [ %i.ck, %bb.m ], [ %.03464, %bb.l ], [ %.03464, %bb.k ] ; 2 uses
  %i.cm = load ptr, ptr %i.bu, align 8, !tbaa !354
  %i.cn = shl nsw i32 %i.ce, 1
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %storemerge62, i64 %i.bw ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !59
  %i.ct = fcmp oeq double %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.s, label %bb.ac

bb.o:                                             ; preds = %bb.r, %bb.an
  %i.cu = phi ptr [ %i.df, %bb.r ], [ %i.bz, %bb.an ] ; 2 uses
  %i.cv = phi i32 [ %i.dn, %bb.r ], [ %i.ca, %bb.an ] ; 2 uses
  %.promoted.i4575 = phi ptr [ %i.dm, %bb.r ], [ %.promoted.i45, %bb.an ] ; 2 uses
  %i.cw = icmp eq ptr %.promoted.i4575, %i.aq
  br i1 %i.cw, label %._crit_edge67.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %i.cv, 0
  br i1 %i.cx, label %bb.q, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i46

bb.q:                                             ; preds = %bb.p
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !112 ; 3 uses
  store ptr %i.cy, ptr %i.ab, align 8, !tbaa !204
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = add i64 %i.da, %i.ag
  %i.dc = urem i64 %i.da, %i.ag
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = inttoptr i64 %i.dd to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i46

_ZN10tetgenmesh10memorypool8traverseEv.exit.i46:  ; preds = %bb.q, %bb.p
  %i.df = phi ptr [ %i.cy, %bb.q ], [ %i.cu, %bb.p ] ; 2 uses
  %i.dg = phi i32 [ %i.an, %bb.q ], [ %i.cv, %bb.p ]
  %i.dh = phi ptr [ %i.de, %bb.q ], [ %.promoted.i4575, %bb.p ] ; 5 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = load i32, ptr %i.ar, align 4, !tbaa !195
  %i.dk = sext i32 %i.dj to i64
  %i.dl = add i64 %i.dk, %i.di
  %i.dm = inttoptr i64 %i.dl to ptr               ; 3 uses
  store ptr %i.dm, ptr %i.al, align 8, !tbaa !205
  %i.dn = add nsw i32 %i.dg, -1                   ; 3 uses
  store i32 %i.dn, ptr %i.ao, align 4, !tbaa !206
  %i.do = icmp eq ptr %i.dh, null
  br i1 %i.do, label %._crit_edge67.loopexit, label %bb.r

bb.r:                                             ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i46
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !221
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.o, label %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48, !llvm.loop !7

_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48: ; preds = %bb.r
  store ptr %i.dh, ptr %1, align 8, !tbaa !225
  br label %bb.k, !llvm.loop !1309

bb.s:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr %i.cq, align 8, !tbaa !221
  %i.dt = load ptr, ptr %i.cp, align 8, !tbaa !113 ; 6 uses
  %.not44 = icmp ne ptr %i.ds, %i.dt
  %spec.select = zext i1 %.not44 to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %spec.select
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !60
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %storemerge62, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !221 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, %i.dt
  br i1 %i.dz, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %storemerge62, align 8, !tbaa !221
  %i.eb = ptrtoint ptr %i.ea to i64               ; 3 uses
  %i.ec = and i64 %i.eb, -8                       ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ef = trunc i64 %i.eb to i32
  %i.eg = and i32 %i.ef, 7
  %i.eh = and i64 %i.eb, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !60
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !221
  %.not.i = icmp ne ptr %i.em, %i.dt
  %i.en = zext i1 %.not.i to i32
  %spec.select.i = xor i32 %i.eg, %i.en
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !59
  %i.er = load double, ptr %i.dy, align 8, !tbaa !59
  %i.es = load double, ptr %i.ep, align 8, !tbaa !59
  %i.et = insertelement <2 x double> poison, double %i.es, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  %.sroa.1040.0.i = phi i32 [ %spec.select.i, %bb.u ], [ %spec.select51.i, %bb.z ] ; 2 uses
  %.sroa.035.0.i = phi ptr [ %i.ee, %bb.u ], [ %i.hx, %bb.z ] ; 2 uses
  %.0.i49 = phi double [ %i.by, %bb.u ], [ %.1.i, %bb.z ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.sroa.10.0.i = phi i32 [ %.sroa.1040.0.i, %bb.v ], [ %spec.select50.i, %bb.x ]
  %.sroa.0.0.i = phi ptr [ %.sroa.035.0.i, %bb.v ], [ %i.hg, %bb.x ] ; 3 uses
  %.018.i = phi double [ 0.000000e+00, %bb.v ], [ %i.gq, %bb.x ]
  %i.ez = zext nneg i32 %.sroa.10.0.i to i64      ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !60
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !221 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.ez
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !60
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !221 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !59
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !59
  %i.fo = load <2 x double>, ptr %i.fe, align 8, !tbaa !59 ; 2 uses
  %i.fp = load <2 x double>, ptr %i.fj, align 8, !tbaa !59 ; 2 uses
  %i.fq = shufflevector <2 x double> %i.fo, <2 x double> %i.fp, <2 x i32> <i32 0, i32 2>
  %i.fr = fsub <2 x double> %i.fq, %i.ew          ; 4 uses
  %i.fs = shufflevector <2 x double> %i.fo, <2 x double> %i.fp, <2 x i32> <i32 1, i32 3>
  %i.ft = fsub <2 x double> %i.fs, %i.ey          ; 4 uses
  %i.fu = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fn, i64 1
  %i.fw = fsub <2 x double> %i.fv, %i.eu          ; 4 uses
  %i.fx = fmul <2 x double> %i.ft, %i.ft
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fr, <2 x double> %i.fx)
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fw, <2 x double> %i.fy)
  %i.ga = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fz) ; 2 uses
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> %i.ft, <2 x i32> <i32 0, i32 2>
  %i.gc = shufflevector <2 x double> %i.ga, <2 x double> %i.ft, <2 x i32> <i32 1, i32 3>
  %i.gd = fmul <2 x double> %i.gb, %i.gc          ; 2 uses
  %i.ge = extractelement <2 x double> %i.fr, i64 0
  %i.gf = extractelement <2 x double> %i.fr, i64 1
  %i.gg = extractelement <2 x double> %i.gd, i64 1
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gf, double %i.gg)
  %i.gi = extractelement <2 x double> %i.fw, i64 0
  %i.gj = extractelement <2 x double> %i.fw, i64 1
  %i.gk = tail call noundef double @llvm.fmuladd.f64(double %i.gi, double %i.gj, double %i.gh)
  %i.gl = extractelement <2 x double> %i.gd, i64 0
  %i.gm = fdiv double %i.gk, %i.gl                ; 3 uses
  %i.gn = fcmp ogt double %i.gm, 1.000000e+00
  %i.go = fcmp olt double %i.gm, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.go, double -1.000000e+00, double %i.gm
  %.0.i.i = select i1 %i.gn, double 1.000000e+00, double %spec.store.select.i.i
  %i.gp = tail call double @acos(double noundef %.0.i.i) #40
  %i.gq = fadd double %.018.i, %i.gp              ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ez
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !60
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !60
  %i.gw = ashr i32 %i.gv, 1
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr [8 x i8], ptr %.sroa.0.0.i, i64 %i.gx ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 48
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !221
  %.not22.i = icmp eq ptr %i.ha, null
  br i1 %.not22.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hb = load ptr, ptr %i.gy, align 8, !tbaa !221
  %i.hc = ptrtoint ptr %i.hb to i64               ; 3 uses
  %i.hd = trunc i64 %i.hc to i32
  %i.he = and i32 %i.hd, 7
  %i.hf = and i64 %i.hc, -8
  %i.hg = inttoptr i64 %i.hf to ptr               ; 2 uses
  %i.hh = and i64 %i.hc, 7
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !60
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !221
  %.not23.i = icmp ne ptr %i.hm, %i.dt
  %i.hn = zext i1 %.not23.i to i32
  %spec.select50.i = xor i32 %i.he, %i.hn
  br label %bb.w, !llvm.loop !19

bb.y:                                             ; preds = %bb.w
  %i.ho = fcmp olt double %i.gq, %.0.i49
  %.1.i = select i1 %i.ho, double %i.gq, double %.0.i49 ; 2 uses
  %i.hp = lshr i32 %.sroa.1040.0.i, 1
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.035.0.i, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !221
  %i.ht = ptrtoint ptr %i.hs to i64               ; 3 uses
  %i.hu = and i64 %i.ht, -8                       ; 3 uses
  %i.hv = icmp eq i64 %i.hu, %i.ec
  %i.hw = icmp eq i64 %i.hu, 0
  %or.cond.i = or i1 %i.hv, %i.hw
  br i1 %or.cond.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hx = inttoptr i64 %i.hu to ptr               ; 2 uses
  %i.hy = trunc i64 %i.ht to i32
  %i.hz = and i32 %i.hy, 7
  %i.ia = and i64 %i.ht, 7
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !60
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !221
  %.not24.i = icmp ne ptr %i.if, %i.dt
  %i.ig = zext i1 %.not24.i to i32
  %spec.select51.i = xor i32 %i.hz, %i.ig
  br label %bb.v, !llvm.loop !20

bb.aa:                                            ; preds = %bb.y
  %i.ih = fdiv double %.1.i, %i.bx
  %i.ii = fmul double %i.ih, 1.800000e+02
  br label %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit

_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit: ; preds = %bb.t, %bb.aa
  %.019.i = phi double [ %i.ii, %bb.aa ], [ 3.600000e+02, %bb.t ] ; 3 uses
  store double %.019.i, ptr %i.cr, align 8, !tbaa !59
  %i.ij = fcmp olt double %.019.i, %.03365
  br i1 %i.ij, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit
  br label %bb.ac

bb.ac:                                            ; preds = %bb.n, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit, %bb.ab, %bb.s
  %.238 = phi ptr [ %i.dt, %bb.ab ], [ %.03663, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit ], [ %.03663, %bb.s ], [ %.03663, %bb.n ] ; 3 uses
  %.2 = phi double [ %.019.i, %bb.ab ], [ %.03365, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit ], [ %.03365, %bb.s ], [ %.03365, %bb.n ] ; 4 uses
  store i32 0, ptr %i.y, align 8, !tbaa !226
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !59
  %i.im = fcmp oeq double %i.il, 0.000000e+00
  br i1 %i.im, label %2, label %bb.an

2:                                                ; preds = %bb.ac
  %3 = load ptr, ptr %i.cq, align 8, !tbaa !221
  %4 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !113      ; 6 uses
  %.not44.1 = icmp eq ptr %3, %5
  br i1 %.not44.1, label %bb.ad, label %6

6:                                                ; preds = %2
  store i32 1, ptr %i.y, align 8, !tbaa !226
  br label %bb.ad

bb.ad:                                            ; preds = %6, %2
  %7 = phi i32 [ 1, %6 ], [ 0, %2 ]               ; 4 uses
  %i.in = zext nneg i32 %7 to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !60
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %storemerge62, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !221 ; 4 uses
  %i.it = icmp eq ptr %i.is, %5
  br i1 %i.it, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.iu = load ptr, ptr %storemerge62, align 8, !tbaa !221
  %i.iv = ptrtoint ptr %i.iu to i64               ; 3 uses
  %i.iw = and i64 %i.iv, -8                       ; 3 uses
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iy = inttoptr i64 %i.iw to ptr               ; 2 uses
  %i.iz = trunc i64 %i.iv to i32
  %i.ja = and i32 %i.iz, 7
  %i.jb = and i64 %i.iv, 7
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !60
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !221
  %.not.i.1 = icmp ne ptr %i.jg, %5
  %i.jh = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = xor i32 %i.ja, %i.jh
  %i.ji = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jk = load double, ptr %i.ji, align 8, !tbaa !59
  %i.jl = load double, ptr %i.is, align 8, !tbaa !59
  %i.jm = load double, ptr %i.jj, align 8, !tbaa !59
  %i.jn = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %bb.af
  %.sroa.1040.0.i.1 = phi i32 [ %spec.select.i.1, %bb.af ], [ %spec.select51.i.1, %bb.aj ] ; 2 uses
  %.sroa.035.0.i.1 = phi ptr [ %i.iy, %bb.af ], [ %i.me, %bb.aj ] ; 2 uses
  %.0.i49.1 = phi double [ %i.by, %bb.af ], [ %.1.i.1, %bb.aj ] ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %bb.ag
  %.sroa.10.0.i.1 = phi i32 [ %.sroa.1040.0.i.1, %bb.ag ], [ %spec.select50.i.1, %bb.al ]
  %.sroa.0.0.i.1 = phi ptr [ %.sroa.035.0.i.1, %bb.ag ], [ %i.mv, %bb.al ] ; 3 uses
  %.018.i.1 = phi double [ 0.000000e+00, %bb.ag ], [ %i.lk, %bb.al ]
  %i.jt = zext nneg i32 %.sroa.10.0.i.1 to i64    ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !60
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.1, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !221 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.jt
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !60
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.1, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !221 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !59
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !59
  %i.ki = load <2 x double>, ptr %i.jy, align 8, !tbaa !59 ; 2 uses
  %i.kj = load <2 x double>, ptr %i.kd, align 8, !tbaa !59 ; 2 uses
  %i.kk = shufflevector <2 x double> %i.ki, <2 x double> %i.kj, <2 x i32> <i32 0, i32 2>
  %i.kl = fsub <2 x double> %i.kk, %i.jq          ; 4 uses
  %i.km = shufflevector <2 x double> %i.ki, <2 x double> %i.kj, <2 x i32> <i32 1, i32 3>
  %i.kn = fsub <2 x double> %i.km, %i.js          ; 4 uses
  %i.ko = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.kp = insertelement <2 x double> %i.ko, double %i.kh, i64 1
  %i.kq = fsub <2 x double> %i.kp, %i.jo          ; 4 uses
  %i.kr = fmul <2 x double> %i.kn, %i.kn
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.kl, <2 x double> %i.kr)
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> %i.kq, <2 x double> %i.ks)
  %i.ku = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kt) ; 2 uses
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> %i.kn, <2 x i32> <i32 0, i32 2>
  %i.kw = shufflevector <2 x double> %i.ku, <2 x double> %i.kn, <2 x i32> <i32 1, i32 3>
  %i.kx = fmul <2 x double> %i.kv, %i.kw          ; 2 uses
  %i.ky = extractelement <2 x double> %i.kl, i64 0
  %i.kz = extractelement <2 x double> %i.kl, i64 1
  %i.la = extractelement <2 x double> %i.kx, i64 1
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.ky, double %i.kz, double %i.la)
  %i.lc = extractelement <2 x double> %i.kq, i64 0
  %i.ld = extractelement <2 x double> %i.kq, i64 1
  %i.le = tail call noundef double @llvm.fmuladd.f64(double %i.lc, double %i.ld, double %i.lb)
  %i.lf = extractelement <2 x double> %i.kx, i64 0
  %i.lg = fdiv double %i.le, %i.lf                ; 3 uses
  %i.lh = fcmp ogt double %i.lg, 1.000000e+00
  %i.li = fcmp olt double %i.lg, -1.000000e+00
  %spec.store.select.i.i.1 = select i1 %i.li, double -1.000000e+00, double %i.lg
  %.0.i.i.1 = select i1 %i.lh, double 1.000000e+00, double %spec.store.select.i.i.1
  %i.lj = tail call double @acos(double noundef %.0.i.i.1) #40
  %i.lk = fadd double %.018.i.1, %i.lj            ; 3 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.jt
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !60
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !60
  %i.lq = ashr i32 %i.lp, 1
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr [8 x i8], ptr %.sroa.0.0.i.1, i64 %i.lr ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 48
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !221
  %.not22.i.1 = icmp eq ptr %i.lu, null
  br i1 %.not22.i.1, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lv = fcmp olt double %i.lk, %.0.i49.1
  %.1.i.1 = select i1 %i.lv, double %i.lk, double %.0.i49.1 ; 2 uses
  %i.lw = lshr i32 %.sroa.1040.0.i.1, 1
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.sroa.035.0.i.1, i64 %i.lx
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !221
  %i.ma = ptrtoint ptr %i.lz to i64               ; 3 uses
  %i.mb = and i64 %i.ma, -8                       ; 3 uses
  %i.mc = icmp eq i64 %i.mb, %i.iw
  %i.md = icmp eq i64 %i.mb, 0
  %or.cond.i.1 = or i1 %i.mc, %i.md
  br i1 %or.cond.i.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.me = inttoptr i64 %i.mb to ptr               ; 2 uses
  %i.mf = trunc i64 %i.ma to i32
  %i.mg = and i32 %i.mf, 7
  %i.mh = and i64 %i.ma, 7
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !60
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.mk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !221
  %.not24.i.1 = icmp ne ptr %i.mm, %5
  %i.mn = zext i1 %.not24.i.1 to i32
  %spec.select51.i.1 = xor i32 %i.mg, %i.mn
  br label %bb.ag, !llvm.loop !20

bb.ak:                                            ; preds = %bb.ai
  %i.mo = fdiv double %.1.i.1, %i.bx
  %i.mp = fmul double %i.mo, 1.800000e+02
  br label %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1

bb.al:                                            ; preds = %bb.ah
  %i.mq = load ptr, ptr %i.ls, align 8, !tbaa !221
  %i.mr = ptrtoint ptr %i.mq to i64               ; 3 uses
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = and i32 %i.ms, 7
  %i.mu = and i64 %i.mr, -8
  %i.mv = inttoptr i64 %i.mu to ptr               ; 2 uses
  %i.mw = and i64 %i.mr, 7
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !60
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %i.mz
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !221
  %.not23.i.1 = icmp ne ptr %i.nb, %5
  %i.nc = zext i1 %.not23.i.1 to i32
  %spec.select50.i.1 = xor i32 %i.mt, %i.nc
  br label %bb.ah, !llvm.loop !19

_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1: ; preds = %bb.ak, %bb.ae
  %.019.i.1 = phi double [ %i.mp, %bb.ak ], [ 3.600000e+02, %bb.ae ] ; 3 uses
  store double %.019.i.1, ptr %i.ik, align 8, !tbaa !59
  %i.nd = fcmp olt double %.019.i.1, %.2
  br i1 %i.nd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1, %bb.ad, %bb.ac
  %8 = phi i32 [ %7, %bb.am ], [ %7, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1 ], [ %7, %bb.ad ], [ 0, %bb.ac ]
  %.238.1 = phi ptr [ %5, %bb.am ], [ %.238, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1 ], [ %.238, %bb.ad ], [ %.238, %bb.ac ] ; 2 uses
  %.2.1 = phi double [ %.019.i.1, %bb.am ], [ %.2, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1 ], [ %.2, %bb.ad ], [ %.2, %bb.ac ] ; 2 uses
  br label %bb.o

._crit_edge67.loopexit:                           ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i46, %bb.o
  %i.ne = zext nneg i32 %.sroa.6.1 to i64
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %bb.g, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i, %._crit_edge67.loopexit
  %.sroa.6.0.lcssa = phi i64 [ %i.ne, %._crit_edge67.loopexit ], [ 0, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ 0, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.1, %._crit_edge67.loopexit ], [ null, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ null, %bb.g ] ; 2 uses
  %.036.lcssa = phi ptr [ %.238.1, %._crit_edge67.loopexit ], [ undef, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ undef, %bb.g ]
  %.034.lcssa = phi double [ %.135, %._crit_edge67.loopexit ], [ 3.600000e+02, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ 3.600000e+02, %bb.g ]
  %.033.lcssa = phi double [ %.2.1, %._crit_edge67.loopexit ], [ 3.600000e+02, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ 3.600000e+02, %bb.g ]
  %i.nf = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 156
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !186
  %.not43 = icmp eq i32 %i.nh, 0
  br i1 %.not43, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge67
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %.sroa.6.0.lcssa
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !60
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.nk
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !221
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !224
  %i.np = sext i32 %i.no to i64                   ; 2 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !60
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %.sroa.6.0.lcssa
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !60
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.nu
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !221
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.np
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !60
  %i.nz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.476, double noundef %.034.lcssa, i32 noundef %i.nr, i32 noundef %i.ny) ; 0 uses
  %i.oa = load i32, ptr %i.nn, align 8, !tbaa !224
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr %.036.lcssa, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !60
  %i.oe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.477, double noundef %.033.lcssa, i32 noundef %i.od) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge67
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.aq

bb.aq:                                            ; preds = %bb.e, %bb.ap
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh24create_segment_facet_mapEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !186
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.144) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68512 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !357  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68520
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !358  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #42
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68544 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !378  ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i32 %i.l, -1
  %i.p = shl nsw i64 %i.n, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #41 ; 3 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !357
  %i.s = load i32, ptr %i.k, align 8, !tbaa !378  ; 3 uses
  %.not4080 = icmp slt i32 %i.s, 0
  br i1 %.not4080, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.t = add nuw i32 %i.s, 1
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.r, i8 0, i64 %i.v, i1 false), !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !253  ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !204
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !193
  %i.ae = sext i32 %i.ad to i64                   ; 4 uses
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = urem i64 %i.ab, %i.ae
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !205
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !196 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 84 ; 4 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !206
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !199 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 52 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %._crit_edge
  %i.aq = phi ptr [ %i.bc, %bb.j ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.ar = phi i32 [ %i.bk, %bb.j ], [ %i.al, %._crit_edge ] ; 2 uses
  %i.as = phi ptr [ %i.bj, %bb.j ], [ %i.ai, %._crit_edge ] ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ao
  br i1 %i.at, label %._crit_edge86, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = icmp eq i32 %i.ar, 0
  br i1 %i.au, label %bb.i, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !112 ; 3 uses
  store ptr %i.av, ptr %i.z, align 8, !tbaa !204
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = add i64 %i.ax, %i.ae
  %i.az = urem i64 %i.ax, %i.ae
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

_ZN10tetgenmesh10memorypool8traverseEv.exit.i:    ; preds = %bb.i, %bb.h
  %i.bc = phi ptr [ %i.av, %bb.i ], [ %i.aq, %bb.h ] ; 2 uses
  %i.bd = phi i32 [ %i.al, %bb.i ], [ %i.ar, %bb.h ]
  %i.be = phi ptr [ %i.bb, %bb.i ], [ %i.as, %bb.h ] ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = load i32, ptr %i.ap, align 4, !tbaa !195
  %i.bh = sext i32 %i.bg to i64
  %i.bi = add i64 %i.bh, %i.bf
  %i.bj = inttoptr i64 %i.bi to ptr               ; 3 uses
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !205
  %i.bk = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.am, align 4, !tbaa !206
  %i.bl = icmp eq ptr %i.be, null
  br i1 %i.bl, label %._crit_edge86, label %bb.j

bb.j:                                             ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !221
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.g, label %.lr.ph85, !llvm.loop !7

.lr.ph85:                                         ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 68688
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !240
  %i.br = sext i32 %i.bq to i64
  br label %bb.k

bb.k:                                             ; preds = %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit47, %.lr.ph85
  %i.bs = phi ptr [ %i.bc, %.lr.ph85 ], [ %i.dc, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit47 ]
  %.promoted.i44 = phi ptr [ %i.bj, %.lr.ph85 ], [ %i.dj, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit47 ]
  %.03684 = phi i32 [ 0, %.lr.ph85 ], [ %.137, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit47 ] ; 2 uses
  %storemerge83 = phi ptr [ %i.be, %.lr.ph85 ], [ %i.de, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit47 ] ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %storemerge83, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !60
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !60
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ca = load ptr, ptr %storemerge83, align 8, !tbaa !221
  %i.cb = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cc = and i64 %i.cb, -8                       ; 3 uses
  %.old2.not = icmp eq i64 %i.cc, 0
  br i1 %.old2.not, label %bb.m, label %.preheader78

end_hunk_4
