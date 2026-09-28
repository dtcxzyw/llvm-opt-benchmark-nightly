Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rarvm?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5RarVM21ExecuteStandardFilterE18VM_StandardFilters:bb.a
  %i.ab = add nsw i32 %i.z, -21                   ; 2 uses
  %.not358 = icmp eq i32 %i.ab, 0
  br i1 %.not358, label %.thread, label %.lr.ph351.preheader

.lr.ph351.preheader:                              ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !15
  %i.ae = lshr i32 %i.ad, 4
  %i.af = load ptr, ptr %0, align 8, !tbaa !11
  br label %.lr.ph351

.lr.ph351:                                        ; preds = %.lr.ph351.preheader, %.loopexit
  %.0254349 = phi i32 [ %i.do, %.loopexit ], [ 0, %.lr.ph351.preheader ]
  %.0255348 = phi i32 [ %i.dp, %.loopexit ], [ %i.ae, %.lr.ph351.preheader ] ; 4 uses
  %.0256347 = phi ptr [ %i.dn, %.loopexit ], [ %i.af, %.lr.ph351.preheader ] ; 17 uses
  %i.ag = load i8, ptr %.0256347, align 1, !tbaa !16
  %i.ah = and i8 %i.ag, 31                        ; 2 uses
  %i.ai = icmp samesign ugt i8 %i.ah, 15
  br i1 %i.ai, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph351
  %i.aj = zext nneg i8 %i.ah to i64
  %i.ak = getelementptr i8, ptr @_ZZN5RarVM21ExecuteStandardFilterE18VM_StandardFiltersE5Masks, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -16
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16  ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %.not282 = icmp eq i8 %i.am, 0
  br i1 %.not282, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.n
  %i.ao = and i32 %i.an, 1
  %.not283 = icmp eq i32 %i.ao, 0
  br i1 %.not283, label %.preheader.1, label %bb.o

bb.o:                                             ; preds = %.preheader.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %.0256347, i64 5
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = and i32 %i.aq, 60
  %i.as = icmp eq i32 %i.ar, 20
  br i1 %i.as, label %bb.p, label %.preheader.1

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.0256347, i64 2 ; 2 uses
  %i.au = load i32, ptr %i.at, align 1            ; 4 uses
  %i.av = shl i32 %.0255348, 2
  %i.aw = sub i32 %i.au, %i.av                    ; 2 uses
  %i.ax = and i32 %i.aw, 4194300                  ; 2 uses
  %i.ay = trunc i32 %i.au to i8
  %i.az = and i8 %i.ay, 3
  %i.ba = trunc i32 %i.ax to i8
  %i.bb = or disjoint i8 %i.az, %i.ba
  store i8 %i.bb, ptr %i.at, align 1, !tbaa !16
  %i.bc = lshr i32 %i.aw, 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0256347, i64 3
  %i.be = trunc i32 %i.bc to i8
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !16
  %i.bf = lshr i32 %i.ax, 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.0256347, i64 4
  %i.bh = lshr i32 %i.au, 16
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = and i8 %i.bi, -64
  %i.bk = trunc nuw nsw i32 %i.bf to i8
  %i.bl = or disjoint i8 %i.bj, %i.bk
  store i8 %i.bl, ptr %i.bg, align 1, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %.0256347, i64 5
  %i.bn = lshr i32 %i.au, 24
  %i.bo = trunc nuw i32 %i.bn to i8
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !16
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.o, %bb.p, %.preheader.preheader
  %i.bp = and i32 %i.an, 2
  %.not283.1 = icmp eq i32 %i.bp, 0
  br i1 %.not283.1, label %.preheader.2, label %bb.q

bb.q:                                             ; preds = %.preheader.1
  %i.bq = getelementptr inbounds nuw i8, ptr %.0256347, i64 10
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = and i32 %i.br, 120
  %i.bt = icmp eq i32 %i.bs, 40
  br i1 %i.bt, label %bb.r, label %.preheader.2

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %.0256347, i64 7 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 1            ; 4 uses
  %i.bw = shl i32 %.0255348, 3
  %i.bx = sub i32 %i.bv, %i.bw                    ; 2 uses
  %i.by = and i32 %i.bx, 8388600                  ; 2 uses
  %i.bz = trunc i32 %i.bv to i8
  %i.ca = and i8 %i.bz, 7
  %i.cb = trunc i32 %i.by to i8
  %i.cc = or disjoint i8 %i.ca, %i.cb
  store i8 %i.cc, ptr %i.bu, align 1, !tbaa !16
  %i.cd = lshr i32 %i.bx, 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.0256347, i64 8
  %i.cf = trunc i32 %i.cd to i8
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !16
  %i.cg = lshr i32 %i.by, 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0256347, i64 9
  %i.ci = lshr i32 %i.bv, 16
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = and i8 %i.cj, -128
  %i.cl = trunc nuw nsw i32 %i.cg to i8
  %i.cm = or disjoint i8 %i.ck, %i.cl
  store i8 %i.cm, ptr %i.ch, align 1, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %.0256347, i64 10
  %i.co = lshr i32 %i.bv, 24
  %i.cp = trunc nuw i32 %i.co to i8
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !16
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.r, %bb.q, %.preheader.1
  %i.cq = and i32 %i.an, 4
  %.not283.2 = icmp eq i32 %i.cq, 0
  br i1 %.not283.2, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.preheader.2
  %i.cr = getelementptr inbounds nuw i8, ptr %.0256347, i64 15
  %i.cs = load i32, ptr %i.cr, align 1
  %i.ct = and i32 %i.cs, 240
  %i.cu = icmp eq i32 %i.ct, 80
  br i1 %i.cu, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %.0256347, i64 12 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 1            ; 3 uses
  %i.cx = shl i32 %.0255348, 4
  %i.cy = sub i32 %i.cw, %i.cx                    ; 3 uses
  %i.cz = trunc i32 %i.cw to i8
  %i.da = and i8 %i.cz, 15
  %i.db = trunc i32 %i.cy to i8
  %i.dc = and i8 %i.db, -16
  %i.dd = or disjoint i8 %i.da, %i.dc
  store i8 %i.dd, ptr %i.cv, align 1, !tbaa !16
  %i.de = lshr i32 %i.cy, 8
  %i.df = getelementptr inbounds nuw i8, ptr %.0256347, i64 13
  %i.dg = trunc i32 %i.de to i8
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !16
  %i.dh = lshr i32 %i.cy, 16
  %i.di = getelementptr inbounds nuw i8, ptr %.0256347, i64 14
  %i.dj = trunc i32 %i.dh to i8
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %.0256347, i64 15
  %i.dl = lshr i32 %i.cw, 24
  %i.dm = trunc nuw i32 %i.dl to i8
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %bb.s, %bb.t, %bb.n, %.lr.ph351
  %i.dn = getelementptr inbounds nuw i8, ptr %.0256347, i64 16
  %i.do = add nuw nsw i32 %.0254349, 16           ; 2 uses
  %i.dp = add nuw nsw i32 %.0255348, 1
  %i.dq = icmp ult i32 %i.do, %i.ab
  br i1 %i.dq, label %.lr.ph351, label %.thread, !llvm.loop !21

bb.u:                                             ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !15 ; 3 uses
  %i.du = load i32, ptr %i.dr, align 8, !tbaa !15 ; 3 uses
  %i.dv = shl nuw nsw i32 %i.dt, 1                ; 2 uses
  %i.dw = icmp ugt i32 %i.dt, 131072
  %i.dx = add i32 %i.du, -1025
  %i.dy = icmp ult i32 %i.dx, -1024
  %or.cond7 = select i1 %i.dw, i1 true, i1 %i.dy
  br i1 %or.cond7, label %.thread, label %.lr.ph345

.lr.ph345:                                        ; preds = %bb.u, %._crit_edge341
  %.0248344 = phi i32 [ %i.eb, %._crit_edge341 ], [ 0, %bb.u ] ; 2 uses
  %.0249343 = phi i32 [ %.1250.lcssa, %._crit_edge341 ], [ 0, %bb.u ] ; 2 uses
  %i.dz = add nuw nsw i32 %.0248344, %i.dt        ; 2 uses
  %i.ea = icmp ult i32 %i.dz, %i.dv
  br i1 %i.ea, label %.lr.ph340, label %._crit_edge341

._crit_edge341:                                   ; preds = %.lr.ph340, %.lr.ph345
  %.1250.lcssa = phi i32 [ %.0249343, %.lr.ph345 ], [ %i.ed, %.lr.ph340 ]
  %i.eb = add nuw nsw i32 %.0248344, 1            ; 2 uses
  %exitcond381.not = icmp eq i32 %i.eb, %i.du
  br i1 %exitcond381.not, label %.thread, label %.lr.ph345, !llvm.loop !22

.lr.ph340:                                        ; preds = %.lr.ph345, %.lr.ph340
  %.0246338 = phi i32 [ %i.ek, %.lr.ph340 ], [ %i.dz, %.lr.ph345 ] ; 2 uses
  %.0247337 = phi i8 [ %i.eh, %.lr.ph340 ], [ 0, %.lr.ph345 ]
  %.1250336 = phi i32 [ %i.ed, %.lr.ph340 ], [ %.0249343, %.lr.ph345 ] ; 2 uses
  %i.ec = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ed = add i32 %.1250336, 1                    ; 2 uses
  %i.ee = zext i32 %.1250336 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = sub i8 %.0247337, %i.eg                 ; 2 uses
  %i.ei = zext i32 %.0246338 to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ei
  store i8 %i.eh, ptr %i.ej, align 1, !tbaa !16
  %i.ek = add i32 %.0246338, %i.du                ; 2 uses
  %i.el = icmp ult i32 %i.ek, %i.dv
  br i1 %i.el, label %.lr.ph340, label %._crit_edge341, !llvm.loop !23

bb.v:                                             ; preds = %bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !15 ; 5 uses
  %i.ep = load i32, ptr %i.em, align 8, !tbaa !15 ; 2 uses
  %i.eq = add i32 %i.ep, -3                       ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !15 ; 3 uses
  %i.et = add i32 %i.eo, -131073
  %or.cond9 = icmp ult i32 %i.et, -131070
  br i1 %or.cond9, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = icmp ugt i32 %i.eq, %i.eo
  %i.ev = icmp ugt i32 %i.es, 2
  %or.cond11 = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond11, label %.thread, label %.lr.ph328.preheader

.lr.ph328.preheader:                              ; preds = %bb.w
  %i.ew = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ex = zext nneg i32 %i.eo to i64              ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex ; 5 uses
  %i.ez = zext nneg i32 %i.eq to i64
  %i.fa = sub nsw i64 0, %i.ez
  %invariant.gep = getelementptr i8, ptr %i.ey, i64 %i.fa ; 3 uses
  %i.fb = zext nneg i32 %i.ep to i64              ; 3 uses
  br label %.lr.ph328

.lr.ph335.preheader:                              ; preds = %._crit_edge329.2
  %i.fc = zext nneg i32 %i.es to i64
  %i.fd = zext i32 %i.gt to i64
  br label %.lr.ph335

._crit_edge329:                                   ; preds = %bb.ac
  %i.fe = icmp ugt i32 %i.eo, 1
  br i1 %i.fe, label %.lr.ph328.1, label %._crit_edge329.2

.lr.ph328.1:                                      ; preds = %._crit_edge329, %bb.y
  %indvars.iv373.1 = phi i64 [ %indvars.iv.next374.1, %bb.y ], [ 1, %._crit_edge329 ] ; 4 uses
  %.0242326.1 = phi i32 [ %i.fw, %bb.y ], [ 0, %._crit_edge329 ] ; 4 uses
  %.1245325.1 = phi ptr [ %i.fs, %bb.y ], [ %i.hi, %._crit_edge329 ] ; 2 uses
  %.not.1 = icmp samesign ult i64 %indvars.iv373.1, %i.fb
  br i1 %.not.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph328.1
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv373.1 ; 2 uses
  %i.ff = load i8, ptr %gep.1, align 1, !tbaa !16
  %i.fg = zext i8 %i.ff to i32                    ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %gep.1, i64 -3
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !16
  %i.fj = zext i8 %i.fi to i32                    ; 3 uses
  %i.fk = add nuw nsw i32 %.0242326.1, %i.fg
  %i.fl = sub nsw i32 %i.fk, %i.fj                ; 3 uses
  %i.fm = sub nsw i32 %i.fl, %.0242326.1
  %i.fn = tail call i32 @llvm.abs.i32(i32 %i.fm, i1 true) ; 2 uses
  %i.fo = sub nsw i32 %i.fl, %i.fg
  %i.fp = tail call i32 @llvm.abs.i32(i32 %i.fo, i1 true) ; 2 uses
  %i.fq = sub nsw i32 %i.fl, %i.fj
  %i.fr = tail call i32 @llvm.abs.i32(i32 %i.fq, i1 true) ; 2 uses
  %.not279.1 = icmp samesign ugt i32 %i.fn, %i.fp
  %.not280.1 = icmp samesign ugt i32 %i.fn, %i.fr
  %or.cond289.1 = select i1 %.not279.1, i1 true, i1 %.not280.1
  %.not281.1 = icmp samesign ugt i32 %i.fp, %i.fr
  %..1 = select i1 %.not281.1, i32 %i.fj, i32 %i.fg
  %.0239.1 = select i1 %or.cond289.1, i32 %..1, i32 %.0242326.1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph328.1
  %.1240.1 = phi i32 [ %.0239.1, %bb.x ], [ %.0242326.1, %.lr.ph328.1 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.1245325.1, i64 1 ; 2 uses
  %i.ft = load i8, ptr %.1245325.1, align 1, !tbaa !16
  %i.fu = trunc nuw i32 %.1240.1 to i8
  %i.fv = sub i8 %i.fu, %i.ft                     ; 2 uses
  %i.fw = zext i8 %i.fv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv373.1
  store i8 %i.fv, ptr %i.fx, align 1, !tbaa !16
  %indvars.iv.next374.1 = add nuw nsw i64 %indvars.iv373.1, 3 ; 2 uses
  %i.fy = icmp samesign ult i64 %indvars.iv.next374.1, %i.ex
  br i1 %i.fy, label %.lr.ph328.1, label %.lr.ph328.2, !llvm.loop !24

.lr.ph328.2:                                      ; preds = %bb.y, %bb.aa
  %indvars.iv373.2 = phi i64 [ %indvars.iv.next374.2, %bb.aa ], [ 2, %bb.y ] ; 4 uses
  %.0242326.2 = phi i32 [ %i.gq, %bb.aa ], [ 0, %bb.y ] ; 4 uses
  %.1245325.2 = phi ptr [ %i.gm, %bb.aa ], [ %i.fs, %bb.y ] ; 2 uses
  %.not.2 = icmp samesign ult i64 %indvars.iv373.2, %i.fb
  br i1 %.not.2, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph328.2
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv373.2 ; 2 uses
  %i.fz = load i8, ptr %gep.2, align 1, !tbaa !16
  %i.ga = zext i8 %i.fz to i32                    ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %gep.2, i64 -3
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !16
  %i.gd = zext i8 %i.gc to i32                    ; 3 uses
  %i.ge = add nuw nsw i32 %.0242326.2, %i.ga
  %i.gf = sub nsw i32 %i.ge, %i.gd                ; 3 uses
  %i.gg = sub nsw i32 %i.gf, %.0242326.2
  %i.gh = tail call i32 @llvm.abs.i32(i32 %i.gg, i1 true) ; 2 uses
  %i.gi = sub nsw i32 %i.gf, %i.ga
  %i.gj = tail call i32 @llvm.abs.i32(i32 %i.gi, i1 true) ; 2 uses
  %i.gk = sub nsw i32 %i.gf, %i.gd
  %i.gl = tail call i32 @llvm.abs.i32(i32 %i.gk, i1 true) ; 2 uses
  %.not279.2 = icmp samesign ugt i32 %i.gh, %i.gj
  %.not280.2 = icmp samesign ugt i32 %i.gh, %i.gl
  %or.cond289.2 = select i1 %.not279.2, i1 true, i1 %.not280.2
  %.not281.2 = icmp samesign ugt i32 %i.gj, %i.gl
  %..2 = select i1 %.not281.2, i32 %i.gd, i32 %i.ga
  %.0239.2 = select i1 %or.cond289.2, i32 %..2, i32 %.0242326.2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph328.2
  %.1240.2 = phi i32 [ %.0239.2, %bb.z ], [ %.0242326.2, %.lr.ph328.2 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.1245325.2, i64 1
  %i.gn = load i8, ptr %.1245325.2, align 1, !tbaa !16
  %i.go = trunc nuw i32 %.1240.2 to i8
  %i.gp = sub i8 %i.go, %i.gn                     ; 2 uses
  %i.gq = zext i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv373.2
  store i8 %i.gp, ptr %i.gr, align 1, !tbaa !16
  %indvars.iv.next374.2 = add nuw nsw i64 %indvars.iv373.2, 3 ; 2 uses
  %i.gs = icmp samesign ult i64 %indvars.iv.next374.2, %i.ex
  br i1 %i.gs, label %.lr.ph328.2, label %._crit_edge329.2, !llvm.loop !24

._crit_edge329.2:                                 ; preds = %bb.aa, %._crit_edge329
  %i.gt = add nsw i32 %i.eo, -2                   ; 2 uses
  %i.gu = icmp ult i32 %i.es, %i.gt
  br i1 %i.gu, label %.lr.ph335.preheader, label %.thread

.lr.ph328:                                        ; preds = %.lr.ph328.preheader, %bb.ac
  %indvars.iv373 = phi i64 [ 0, %.lr.ph328.preheader ], [ %indvars.iv.next374, %bb.ac ] ; 4 uses
  %.0242326 = phi i32 [ 0, %.lr.ph328.preheader ], [ %i.hm, %bb.ac ] ; 4 uses
  %.1245325 = phi ptr [ %i.ew, %.lr.ph328.preheader ], [ %i.hi, %bb.ac ] ; 2 uses
  %.not = icmp samesign ult i64 %indvars.iv373, %i.fb
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph328
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv373 ; 2 uses
  %i.gv = load i8, ptr %gep, align 1, !tbaa !16
  %i.gw = zext i8 %i.gv to i32                    ; 3 uses
  %i.gx = getelementptr inbounds i8, ptr %gep, i64 -3
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !16
  %i.gz = zext i8 %i.gy to i32                    ; 3 uses
  %i.ha = add nuw nsw i32 %.0242326, %i.gw
  %i.hb = sub nsw i32 %i.ha, %i.gz                ; 3 uses
  %i.hc = sub nsw i32 %i.hb, %.0242326
  %i.hd = tail call i32 @llvm.abs.i32(i32 %i.hc, i1 true) ; 2 uses
  %i.he = sub nsw i32 %i.hb, %i.gw
  %i.hf = tail call i32 @llvm.abs.i32(i32 %i.he, i1 true) ; 2 uses
  %i.hg = sub nsw i32 %i.hb, %i.gz
  %i.hh = tail call i32 @llvm.abs.i32(i32 %i.hg, i1 true) ; 2 uses
  %.not279 = icmp samesign ugt i32 %i.hd, %i.hf
  %.not280 = icmp samesign ugt i32 %i.hd, %i.hh
  %or.cond289 = select i1 %.not279, i1 true, i1 %.not280
  %.not281 = icmp samesign ugt i32 %i.hf, %i.hh
  %. = select i1 %.not281, i32 %i.gz, i32 %i.gw
  %.0239 = select i1 %or.cond289, i32 %., i32 %.0242326
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph328, %bb.ab
  %.1240 = phi i32 [ %.0239, %bb.ab ], [ %.0242326, %.lr.ph328 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.1245325, i64 1 ; 2 uses
  %i.hj = load i8, ptr %.1245325, align 1, !tbaa !16
  %i.hk = trunc nuw i32 %.1240 to i8
  %i.hl = sub i8 %i.hk, %i.hj                     ; 2 uses
  %i.hm = zext i8 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv373
  store i8 %i.hl, ptr %i.hn, align 1, !tbaa !16
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 3 ; 2 uses
  %i.ho = icmp samesign ult i64 %indvars.iv.next374, %i.ex
  br i1 %i.ho, label %.lr.ph328, label %._crit_edge329, !llvm.loop !24

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.lr.ph335
  %indvars.iv378 = phi i64 [ %i.fc, %.lr.ph335.preheader ], [ %indvars.iv.next379, %.lr.ph335 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv378 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !16  ; 2 uses
  %i.hs = load i8, ptr %i.hp, align 1, !tbaa !16
  %i.ht = add i8 %i.hs, %i.hr
  store i8 %i.ht, ptr %i.hp, align 1, !tbaa !16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 2 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !16
  %i.hw = add i8 %i.hv, %i.hr
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !16
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 3 ; 2 uses
  %i.hx = icmp samesign ult i64 %indvars.iv.next379, %i.fd
  br i1 %i.hx, label %.lr.ph335, label %.thread, !llvm.loop !25

bb.ad:                                            ; preds = %bb.a
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !15 ; 3 uses
  %i.ib = load i32, ptr %i.hy, align 8, !tbaa !15 ; 2 uses
  %i.ic = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.id = zext i32 %i.ia to i64                   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.id
  %i.if = icmp ugt i32 %i.ia, 131072
  %i.ig = add i32 %i.ib, -129
  %i.ih = icmp ult i32 %i.ig, -128
  %or.cond15 = select i1 %i.if, i1 true, i1 %i.ih
  br i1 %or.cond15, label %.thread, label %.lr.ph324

.lr.ph324:                                        ; preds = %bb.ad
  %i.ii = zext nneg i32 %i.ib to i64              ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph324, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0233322 = phi ptr [ %i.ic, %.lr.ph324 ], [ %.1234.lcssa, %._crit_edge ] ; 2 uses
  %indvars370 = trunc i64 %indvars.iv to i32
  %i.ij = icmp ugt i32 %i.ia, %indvars370
  br i1 %i.ij, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.am, %bb.ae
  %.1234.lcssa = phi ptr [ %.0233322, %bb.ae ], [ %i.iv, %bb.am ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ii
  br i1 %exitcond.not, label %.thread, label %bb.ae, !llvm.loop !26

.lr.ph:                                           ; preds = %bb.ae, %bb.am
  %.sroa.5.0 = phi i32 [ %.sroa.5.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.9.0 = phi i32 [ %.sroa.9.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.13.0 = phi i32 [ %.sroa.13.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.17.0 = phi i32 [ %.sroa.17.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.21.0 = phi i32 [ %.sroa.21.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.25.0 = phi i32 [ %.sroa.25.1, %bb.am ], [ 0, %bb.ae ]
  %indvars.iv367 = phi i64 [ %indvars.iv.next368, %bb.am ], [ %indvars.iv, %bb.ae ] ; 2 uses
  %.0218321 = phi i32 [ %i.ku, %bb.am ], [ 0, %bb.ae ] ; 2 uses
  %.0220319 = phi i32 [ %.2, %bb.am ], [ 0, %bb.ae ] ; 11 uses
  %.0222318 = phi i32 [ %.2224, %bb.am ], [ 0, %bb.ae ] ; 11 uses
  %.0225317 = phi i32 [ %.2227, %bb.am ], [ 0, %bb.ae ] ; 11 uses
  %.0228316 = phi i32 [ %i.il, %bb.am ], [ 0, %bb.ae ] ; 3 uses
  %.0229315 = phi i32 [ %.0230314, %bb.am ], [ 0, %bb.ae ]
  %.0230314 = phi i32 [ %i.jc, %bb.am ], [ 0, %bb.ae ] ; 5 uses
  %.0231313 = phi i32 [ %i.iy, %bb.am ], [ 0, %bb.ae ] ; 2 uses
  %.1234312 = phi ptr [ %i.iv, %bb.am ], [ %.0233322, %bb.ae ] ; 2 uses
  %i.ik = phi i32 [ %i.kt, %bb.am ], [ 0, %bb.ae ]
  %i.il = sub nsw i32 %.0230314, %.0229315        ; 4 uses
  %i.im = shl nsw i32 %.0231313, 3
  %i.in = mul nsw i32 %.0225317, %.0230314
  %i.io = add i32 %i.in, %i.im
  %i.ip = mul nsw i32 %.0222318, %i.il
  %i.iq = add i32 %i.io, %i.ip
  %i.ir = mul nsw i32 %.0220319, %.0228316
  %i.is = add i32 %i.iq, %i.ir
  %i.it = lshr i32 %i.is, 3
  %i.iu = and i32 %i.it, 255
  %i.iv = getelementptr inbounds nuw i8, ptr %.1234312, i64 1 ; 2 uses
  %i.iw = load i8, ptr %.1234312, align 1, !tbaa !16 ; 2 uses
  %i.ix = zext i8 %i.iw to i32
  %i.iy = sub nsw i32 %i.iu, %i.ix                ; 3 uses
  %i.iz = trunc i32 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv367
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !16
  %i.jb = sub nsw i32 %i.iy, %.0231313
  %sext = shl i32 %i.jb, 24
  %i.jc = ashr exact i32 %sext, 24
  %i.jd = sext i8 %i.iw to i32
  %i.je = shl nsw i32 %i.jd, 3                    ; 7 uses
  %i.jf = tail call i32 @llvm.abs.i32(i32 %i.je, i1 true)
  %i.jg = add i32 %i.jf, %i.ik                    ; 3 uses
  %i.jh = sub nsw i32 %i.je, %.0230314
  %i.ji = tail call i32 @llvm.abs.i32(i32 %i.jh, i1 true)
  %i.jj = add i32 %.sroa.5.0, %i.ji               ; 3 uses
  %i.jk = add nsw i32 %i.je, %.0230314
  %i.jl = tail call i32 @llvm.abs.i32(i32 %i.jk, i1 true)
  %i.jm = add i32 %.sroa.9.0, %i.jl               ; 3 uses
  %i.jn = sub nsw i32 %i.je, %i.il
  %i.jo = tail call i32 @llvm.abs.i32(i32 %i.jn, i1 true)
  %i.jp = add i32 %.sroa.13.0, %i.jo              ; 3 uses
  %i.jq = add nsw i32 %i.je, %i.il
  %i.jr = tail call i32 @llvm.abs.i32(i32 %i.jq, i1 true)
  %i.js = add i32 %.sroa.17.0, %i.jr              ; 3 uses
  %i.jt = sub nsw i32 %i.je, %.0228316
  %i.ju = tail call i32 @llvm.abs.i32(i32 %i.jt, i1 true)
  %i.jv = add i32 %.sroa.21.0, %i.ju              ; 3 uses
  %i.jw = add nsw i32 %i.je, %.0228316
  %i.jx = tail call i32 @llvm.abs.i32(i32 %i.jw, i1 true)
  %i.jy = add i32 %.sroa.25.0, %i.jx              ; 2 uses
  %i.jz = and i32 %.0218321, 31
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.lr.ph
  %i.kb = icmp ult i32 %i.jj, %i.jg
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.jj, i32 %i.jg) ; 2 uses
  %spec.select290 = zext i1 %i.kb to i32
  %i.kc = icmp ult i32 %i.jm, %spec.select
  %spec.select.1 = tail call i32 @llvm.umin.i32(i32 %i.jm, i32 %spec.select) ; 2 uses
  %spec.select290.1 = select i1 %i.kc, i32 2, i32 %spec.select290
  %i.kd = icmp ult i32 %i.jp, %spec.select.1
  %spec.select.2 = tail call i32 @llvm.umin.i32(i32 %i.jp, i32 %spec.select.1) ; 2 uses
  %spec.select290.2 = select i1 %i.kd, i32 3, i32 %spec.select290.1
  %i.ke = icmp ult i32 %i.js, %spec.select.2
  %spec.select.3 = tail call i32 @llvm.umin.i32(i32 %i.js, i32 %spec.select.2) ; 2 uses
  %spec.select290.3 = select i1 %i.ke, i32 4, i32 %spec.select290.2
  %i.kf = icmp ult i32 %i.jv, %spec.select.3
  %spec.select.4 = tail call i32 @llvm.umin.i32(i32 %i.jv, i32 %spec.select.3)
  %spec.select290.4 = select i1 %i.kf, i32 5, i32 %spec.select290.3
  %i.kg = icmp ult i32 %i.jy, %spec.select.4
  %spec.select290.5 = select i1 %i.kg, i32 6, i32 %spec.select290.4
  switch i32 %spec.select290.5, label %bb.am [
    i32 1, label %bb.ag
    i32 2, label %bb.ah
    i32 3, label %bb.ai
    i32 4, label %bb.aj
    i32 5, label %bb.ak
    i32 6, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  %i.kh = icmp sgt i32 %.0225317, -17
  %i.ki = sext i1 %i.kh to i32
  %spec.select291 = add nsw i32 %.0225317, %i.ki
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.kj = icmp slt i32 %.0225317, 16
  %i.kk = zext i1 %i.kj to i32
  %spec.select292 = add nsw i32 %.0225317, %i.kk
  br label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.kl = icmp sgt i32 %.0222318, -17
  %i.km = sext i1 %i.kl to i32
end_hunk_0
