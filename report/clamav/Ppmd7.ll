Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/Ppmd7?download=true
inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Rescale:bb.a
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !41
  %i.be = icmp ult i8 %i.bd, %i.au
  br i1 %i.be, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e
  store i8 %.sroa.012.0.copyload, ptr %i.bb, align 2, !tbaa !15
  %.sroa.414.0..sroa_idx15 = getelementptr inbounds i8, ptr %.084, i64 -5
  store i8 %i.au, ptr %.sroa.414.0..sroa_idx15, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds i8, ptr %.084, i64 -4
  store i32 %i.ba, ptr %.sroa.5.0..sroa_idx17, align 2, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.critedge
  %i.bf = add i32 %.090, -1                       ; 2 uses
  %.not101 = icmp eq i32 %i.bf, 0
  br i1 %.not101, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !41
  %i.bi = icmp eq i8 %i.bh, 0
  %.pre121 = load ptr, ptr %0, align 8, !tbaa !31 ; 8 uses
  br i1 %i.bi, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bj = load i16, ptr %.pre121, align 4, !tbaa !34 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.191 = phi i32 [ 0, %bb.h ], [ %i.bk, %bb.i ]
  %.2 = phi ptr [ %i.an, %bb.h ], [ %i.bl, %bb.i ] ; 2 uses
  %i.bk = add i32 %.191, 1                        ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %.2, i64 -6
  %i.bm = getelementptr inbounds i8, ptr %.2, i64 -5
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !41
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = zext i16 %i.bj to i32                   ; 2 uses
  %i.bq = add i32 %i.bk, %i.ar                    ; 3 uses
  %i.br = trunc i32 %i.bk to i16
  %i.bs = sub i16 %i.bj, %i.br                    ; 3 uses
  store i16 %i.bs, ptr %.pre121, align 4, !tbaa !34
  %.not103 = icmp eq i16 %i.bs, 1
  br i1 %.not103, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 2, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !15
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.bt = load i32, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.187 = phi i32 [ %i.bq, %bb.k ], [ %i.bw, %bb.l ] ; 2 uses
  %.sroa.4.0 = phi i8 [ %.sroa.4.0.copyload, %bb.k ], [ %i.bv, %bb.l ] ; 2 uses
  %i.bu = lshr i8 %.sroa.4.0, 1
  %i.bv = sub i8 %.sroa.4.0, %i.bu                ; 2 uses
  %i.bw = lshr i32 %.187, 1
  %i.bx = icmp ugt i32 %.187, 3
  br i1 %i.bx, label %bb.l, label %bb.s

bb.m:                                             ; preds = %bb.j
  %i.by = zext i16 %i.bs to i32
  %i.bz = add nuw nsw i32 %i.bp, 1
  %i.ca = lshr i32 %i.bz, 1                       ; 2 uses
  %i.cb = add nuw nsw i32 %i.by, 1                ; 2 uses
  %i.cc = lshr i32 %i.cb, 1                       ; 4 uses
  %.not102 = icmp eq i32 %i.ca, %i.cc
  br i1 %.not102, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 3 uses
  %i.ce = add nsw i32 %i.ca, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15  ; 3 uses
  %i.ci = add nsw i32 %i.cc, -1                   ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !15  ; 2 uses
  %i.cm = icmp eq i8 %i.ch, %i.cl
  br i1 %i.cm, label %.ShrinkUnits.exit_crit_edge, label %bb.o

.ShrinkUnits.exit_crit_edge:                      ; preds = %bb.n
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %ShrinkUnits.exit

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.co = zext i8 %i.cl to i64                    ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !45 ; 2 uses
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 7 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !45
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !45
  %i.cv = and i32 %i.cb, 2
  %lcmp.mod.not = icmp eq i32 %i.cv, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.p
  %i.cw = load i32, ptr %i.g, align 4, !tbaa !45
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !45
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !45
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !45
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !45
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.df = add nsw i32 %i.cc, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.p
  %.033.i.unr = phi ptr [ %i.ct, %bb.p ], [ %i.de, %.prol.loopexit.unr-lcssa ]
  %.032.i.unr = phi ptr [ %i.g, %bb.p ], [ %i.dd, %.prol.loopexit.unr-lcssa ]
  %.0.i.unr = phi i32 [ %i.cc, %bb.p ], [ %i.df, %.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i32 %i.ci, 0
  br i1 %i.dg, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.033.i = phi ptr [ %i.dy, %.new ], [ %.033.i.unr, %.prol.loopexit ] ; 7 uses
  %.032.i = phi ptr [ %i.dx, %.new ], [ %.032.i.unr, %.prol.loopexit ] ; 7 uses
  %.0.i = phi i32 [ %i.dz, %.new ], [ %.0.i.unr, %.prol.loopexit ]
  %i.dh = load i32, ptr %.032.i, align 4, !tbaa !45
  store i32 %i.dh, ptr %.033.i, align 4, !tbaa !45
  %i.di = getelementptr inbounds nuw i8, ptr %.032.i, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !45
  %i.dk = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !45
  %i.dl = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !45
  %i.dn = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !45
  %i.do = getelementptr inbounds nuw i8, ptr %.032.i, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %.033.i, i64 12
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !45
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !45
  %i.dr = getelementptr inbounds nuw i8, ptr %.032.i, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !45
  %i.dt = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %.032.i, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %.033.i, i64 20
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !45
  %i.dx = getelementptr inbounds nuw i8, ptr %.032.i, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %.033.i, i64 24
  %i.dz = add i32 %.0.i, -2                       ; 2 uses
  %.not37.i.1 = icmp eq i32 %i.dz, 0
  br i1 %.not37.i.1, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.ea = zext i8 %i.ch to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !45
  store i32 %i.ec, ptr %i.g, align 4, !tbaa !45
  %i.ed = ptrtoint ptr %i.g to i64
  %i.ee = ptrtoint ptr %i.cr to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.eb, align 4, !tbaa !45
  br label %ShrinkUnits.exit

bb.q:                                             ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.ei = zext i8 %i.ch to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !15
  %i.el = zext i8 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.co
  %i.en = load i8, ptr %i.em, align 1, !tbaa !15
  %i.eo = zext i8 %i.en to i32                    ; 2 uses
  %i.ep = sub nsw i32 %i.el, %i.eo                ; 3 uses
  %i.eq = mul nuw nsw i32 %i.eo, 12
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.er ; 3 uses
  %i.et = add nsw i32 %i.ep, -1
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !15
  %i.ex = zext i8 %i.ew to i64                    ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.fa = zext i8 %i.ez to i32
  %.not.i.i = icmp eq i32 %i.ep, %i.fa
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.r

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %.pre22.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %SplitBlock.exit.i

bb.r:                                             ; preds = %bb.q
  %i.fb = add nuw nsw i64 %i.ex, 4294967295
  %i.fc = and i64 %i.fb, 4294967295               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !15
  %i.ff = zext i8 %i.fe to i32                    ; 2 uses
  %i.fg = mul nuw nsw i32 %i.ff, 12
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fh ; 2 uses
  %i.fj = xor i32 %i.ff, -1
  %i.fk = add nsw i32 %i.ep, %i.fj
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !45
  store i32 %i.fn, ptr %i.fi, align 4, !tbaa !45
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.fp = ptrtoint ptr %i.fi to i64
  %i.fq = ptrtoint ptr %i.fo to i64               ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = trunc i64 %i.fr to i32
  store i32 %i.fs, ptr %i.fm, align 4, !tbaa !45
  br label %SplitBlock.exit.i

SplitBlock.exit.i:                                ; preds = %bb.r, %._crit_edge.i.i
  %i.ft = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.fo, %bb.r ]
  %.pre-phi23.i.i.a = phi i64 [ %.pre22.i.i, %._crit_edge.i.i ], [ %i.fq, %bb.r ]
  %.pre-phi.i.i = phi i64 [ %i.ex, %._crit_edge.i.i ], [ %i.fc, %bb.r ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.pre-phi.i.i ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !45
  store i32 %i.fv, ptr %i.es, align 4, !tbaa !45
  %i.fw = ptrtoint ptr %i.es to i64
  %i.fx = sub i64 %i.fw, %.pre-phi23.i.i.a
  %i.fy = trunc i64 %i.fx to i32
  store i32 %i.fy, ptr %i.fu, align 4, !tbaa !45
  br label %ShrinkUnits.exit

ShrinkUnits.exit:                                 ; preds = %.ShrinkUnits.exit_crit_edge, %.unr-lcssa, %SplitBlock.exit.i
  %i.fz = phi ptr [ %i.ft, %SplitBlock.exit.i ], [ %i.cr, %.unr-lcssa ], [ %.pre, %.ShrinkUnits.exit_crit_edge ]
  %.034.i = phi ptr [ %i.g, %SplitBlock.exit.i ], [ %i.ct, %.unr-lcssa ], [ %i.g, %.ShrinkUnits.exit_crit_edge ]
  %i.ga = ptrtoint ptr %.034.i to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %.pre121, i64 4
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !38
  br label %.thread

bb.s:                                             ; preds = %bb.l
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.gg = add nuw nsw i32 %i.bp, 1
  %i.gh = lshr i32 %i.gg, 1
  %i.gi = add nsw i32 %i.gh, -1
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !15
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.gn = zext i8 %i.gl to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gn ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !45
  store i32 %i.gp, ptr %i.g, align 4, !tbaa !45
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.gr = ptrtoint ptr %i.g to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = trunc i64 %i.gt to i32
  store i32 %i.gu, ptr %i.go, align 4, !tbaa !45
  %i.gv = getelementptr inbounds nuw i8, ptr %.pre121, i64 2 ; 2 uses
  store ptr %i.gv, ptr %i.h, align 8, !tbaa !36
  store i8 %.sroa.0.0.copyload, ptr %i.gv, align 2, !tbaa !15
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %.pre121, i64 3
  store i8 %i.bv, ptr %.sroa.4.0..sroa_idx2, align 1, !tbaa !15
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.pre121, i64 4
  store i32 %i.bt, ptr %.sroa.7.0..sroa_idx5, align 4, !tbaa !42
  br label %bb.t

.thread:                                          ; preds = %ShrinkUnits.exit, %bb.m, %bb.g
  %.3 = phi i32 [ %i.ar, %bb.g ], [ %i.bq, %bb.m ], [ %i.bq, %ShrinkUnits.exit ] ; 2 uses
  %i.gw = add i32 %.3, %i.av
  %i.gx = lshr i32 %.3, 1
  %i.gy = sub i32 %i.gw, %i.gx
  %i.gz = trunc i32 %i.gy to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %.pre121, i64 2
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !35
  %i.hb = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre121, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !38
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.he
  store ptr %i.hf, ptr %i.h, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ppmd7_Update1_0(ptr nofree noundef captures(none) initializes((32, 36)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !41    ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !35   ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = icmp samesign ugt i32 %i.f, %i.j
  %i.l = zext i1 %i.k to i32                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.l, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %i.p = add i32 %i.o, %i.l
  store i32 %i.p, ptr %i.n, align 4, !tbaa !27
  %i.q = add i16 %i.i, 4
  store i16 %i.q, ptr %i.h, align 2, !tbaa !35
  %i.r = add i8 %i.d, 4                           ; 2 uses
  store i8 %i.r, ptr %i.c, align 1, !tbaa !41
  %i.s = icmp ugt i8 %i.r, 124
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Rescale(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !47
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !48
  %i.ab = zext i16 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !25
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ak = icmp ugt ptr %i.ae, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.al, align 8, !tbaa !30
  store ptr %i.ae, ptr %0, align 8, !tbaa !31
  br label %NextContext.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  br label %NextContext.exit

NextContext.exit:                                 ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ppmd7_UpdateBin(ptr nofree noundef captures(none) initializes((32, 36)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !41    ; 2 uses
  %i.e = icmp sgt i8 %i.d, -1
  %i.f = zext i1 %i.e to i8
  %i.g = add i8 %i.d, %i.f
  store i8 %i.g, ptr %i.c, align 1, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !47
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i16, ptr %i.q, align 2, !tbaa !48
  %i.s = zext i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !25
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ab = icmp ugt ptr %i.v, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !30
  store ptr %i.v, ptr %0, align 8, !tbaa !31
  br label %NextContext.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  br label %NextContext.exit

NextContext.exit:                                 ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ppmd7_Update2(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !35
  %i.d = add i16 %i.c, 4
  store i16 %i.d, ptr %i.b, align 2, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !41
  %i.i = add i8 %i.h, 4                           ; 2 uses
end_hunk_0
