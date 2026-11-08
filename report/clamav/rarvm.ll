Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rarvm?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5RarVM21ExecuteStandardFilterE18VM_StandardFilters:bb.a

bb.f:                                             ; preds = %bb.e
  %i.r = add i32 %i.q, %i.p
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.q, 16777216
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %.not285 = icmp samesign ugt i32 %i.q, 16777215
  br i1 %.not285, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub i32 %i.q, %i.p
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i
  %.sink = phi i32 [ %i.u, %bb.i ], [ %i.t, %bb.g ]
  store i32 %.sink, ptr %i.j, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.0251353, i64 5
  %i.w = add nuw nsw i32 %.0257352, 5
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j
  %.1258 = phi i32 [ %i.w, %bb.j ], [ %i.l, %bb.d ] ; 2 uses
  %.1252 = phi ptr [ %i.v, %bb.j ], [ %i.j, %bb.d ]
  %i.x = icmp ult i32 %.1258, %i.f
  br i1 %i.x, label %bb.d, label %.thread, !llvm.loop !20

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !15   ; 2 uses
  %i.aa = add i32 %i.z, -262145
  %or.cond3 = icmp ult i32 %i.aa, -262124
  br i1 %or.cond3, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
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
  %i.du = load i32, ptr %i.dr, align 8, !tbaa !15 ; 2 uses
  %i.dv = icmp ugt i32 %i.dt, 131072
  %i.dw = add i32 %i.du, -1025
  %i.dx = icmp ult i32 %i.dw, -1024
  %or.cond7 = select i1 %i.dv, i1 true, i1 %i.dx
  br i1 %or.cond7, label %.thread, label %.lr.ph345.preheader

.lr.ph345.preheader:                              ; preds = %bb.u
  %2 = shl nuw nsw i32 %i.dt, 1
  %i.dy = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dz = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ea = zext nneg i32 %i.dt to i64
  br label %.lr.ph345

.lr.ph345:                                        ; preds = %.lr.ph345.preheader, %._crit_edge341
  %indvars.iv381.a = phi i64 [ 0, %.lr.ph345.preheader ], [ %indvars.iv.next382.a, %._crit_edge341 ] ; 2 uses
  %.0249343 = phi i32 [ 0, %.lr.ph345.preheader ], [ %.1250.lcssa, %._crit_edge341 ] ; 2 uses
  %3 = add nuw nsw i64 %indvars.iv381.a, %i.ea    ; 2 uses
  %i.eb = icmp samesign ult i64 %3, %i.dz
  br i1 %i.eb, label %.lr.ph340, label %._crit_edge341

._crit_edge341:                                   ; preds = %.lr.ph340, %.lr.ph345
  %.1250.lcssa = phi i32 [ %.0249343, %.lr.ph345 ], [ %i.ed, %.lr.ph340 ]
  %indvars.iv.next382.a = add nuw nsw i64 %indvars.iv381.a, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382.a, %i.dy
  br i1 %exitcond385.not, label %.thread, label %.lr.ph345, !llvm.loop !22

.lr.ph340:                                        ; preds = %.lr.ph345, %.lr.ph340
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %.lr.ph340 ], [ %3, %.lr.ph345 ] ; 2 uses
  %.0247337 = phi i8 [ %i.eh, %.lr.ph340 ], [ 0, %.lr.ph345 ]
  %.1250336 = phi i32 [ %i.ed, %.lr.ph340 ], [ %.0249343, %.lr.ph345 ] ; 2 uses
  %i.ec = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ed = add i32 %.1250336, 1                    ; 2 uses
  %i.ee = zext i32 %.1250336 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = sub i8 %.0247337, %i.eg                 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv383
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !16
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, %i.dy ; 2 uses
  %i.ej = icmp samesign ult i64 %indvars.iv.next384, %i.dz
  br i1 %i.ej, label %.lr.ph340, label %._crit_edge341, !llvm.loop !23

bb.v:                                             ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !15 ; 6 uses
  %i.en = load i32, ptr %i.ek, align 8, !tbaa !15 ; 2 uses
  %i.eo = add i32 %i.en, -3                       ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !15 ; 3 uses
  %i.er = add i32 %i.em, -131073
  %or.cond9 = icmp ult i32 %i.er, -131070
  br i1 %or.cond9, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = icmp ugt i32 %i.eo, %i.em
  %i.et = icmp ugt i32 %i.eq, 2
  %or.cond11 = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond11, label %.thread, label %.lr.ph328.preheader

.lr.ph328.preheader:                              ; preds = %bb.w
  %i.eu = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ev = zext nneg i32 %i.em to i64              ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev ; 5 uses
  %i.ex = zext nneg i32 %i.eo to i64
  %i.ey = sub nsw i64 0, %i.ex
  %invariant.gep = getelementptr i8, ptr %i.ew, i64 %i.ey ; 3 uses
  %i.ez = zext nneg i32 %i.en to i64              ; 3 uses
  br label %.lr.ph328

.lr.ph335.preheader:                              ; preds = %._crit_edge329.2
  %i.fa = zext nneg i32 %i.eq to i64
  %i.fb = zext i32 %i.gr to i64
  br label %.lr.ph335

._crit_edge329:                                   ; preds = %bb.ac
  %i.fc = icmp ugt i32 %i.em, 1
  br i1 %i.fc, label %.lr.ph328.1, label %._crit_edge329.2

.lr.ph328.1:                                      ; preds = %._crit_edge329, %bb.y
  %indvars.iv373.1 = phi i64 [ %indvars.iv.next374.1, %bb.y ], [ 1, %._crit_edge329 ] ; 4 uses
  %.0242326.1 = phi i32 [ %i.fu, %bb.y ], [ 0, %._crit_edge329 ] ; 4 uses
  %.1245325.1 = phi ptr [ %i.fq, %bb.y ], [ %i.hg, %._crit_edge329 ] ; 2 uses
  %.not.1 = icmp samesign ult i64 %indvars.iv373.1, %i.ez
  br i1 %.not.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph328.1
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv373.1 ; 2 uses
  %i.fd = load i8, ptr %gep.1, align 1, !tbaa !16
  %i.fe = zext i8 %i.fd to i32                    ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %gep.1, i64 -3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !16
  %i.fh = zext i8 %i.fg to i32                    ; 3 uses
  %i.fi = add nuw nsw i32 %.0242326.1, %i.fe
  %i.fj = sub nsw i32 %i.fi, %i.fh                ; 3 uses
  %i.fk = sub nsw i32 %i.fj, %.0242326.1
  %i.fl = tail call i32 @llvm.abs.i32(i32 %i.fk, i1 true) ; 2 uses
  %i.fm = sub nsw i32 %i.fj, %i.fe
  %i.fn = tail call i32 @llvm.abs.i32(i32 %i.fm, i1 true) ; 2 uses
  %i.fo = sub nsw i32 %i.fj, %i.fh
  %i.fp = tail call i32 @llvm.abs.i32(i32 %i.fo, i1 true) ; 2 uses
  %.not279.1 = icmp samesign ugt i32 %i.fl, %i.fn
  %.not280.1 = icmp samesign ugt i32 %i.fl, %i.fp
  %or.cond289.1 = select i1 %.not279.1, i1 true, i1 %.not280.1
  %.not281.1 = icmp samesign ugt i32 %i.fn, %i.fp
  %..1 = select i1 %.not281.1, i32 %i.fh, i32 %i.fe
  %.0239.1 = select i1 %or.cond289.1, i32 %..1, i32 %.0242326.1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph328.1
  %.1240.1 = phi i32 [ %.0239.1, %bb.x ], [ %.0242326.1, %.lr.ph328.1 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.1245325.1, i64 1 ; 2 uses
  %i.fr = load i8, ptr %.1245325.1, align 1, !tbaa !16
  %i.fs = trunc nuw i32 %.1240.1 to i8
  %i.ft = sub i8 %i.fs, %i.fr                     ; 2 uses
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv373.1
  store i8 %i.ft, ptr %i.fv, align 1, !tbaa !16
  %indvars.iv.next374.1 = add nuw nsw i64 %indvars.iv373.1, 3 ; 2 uses
  %i.fw = icmp samesign ult i64 %indvars.iv.next374.1, %i.ev
  br i1 %i.fw, label %.lr.ph328.1, label %._crit_edge329.1, !llvm.loop !24

._crit_edge329.1:                                 ; preds = %bb.y
  %.not421 = icmp eq i32 %i.em, 2
  br i1 %.not421, label %._crit_edge329.2, label %.lr.ph328.2

.lr.ph328.2:                                      ; preds = %._crit_edge329.1, %bb.aa
  %indvars.iv373.2 = phi i64 [ %indvars.iv.next374.2, %bb.aa ], [ 2, %._crit_edge329.1 ] ; 4 uses
  %.0242326.2 = phi i32 [ %i.go, %bb.aa ], [ 0, %._crit_edge329.1 ] ; 4 uses
  %.1245325.2 = phi ptr [ %i.gk, %bb.aa ], [ %i.fq, %._crit_edge329.1 ] ; 2 uses
  %.not.2 = icmp samesign ult i64 %indvars.iv373.2, %i.ez
  br i1 %.not.2, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph328.2
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv373.2 ; 2 uses
  %i.fx = load i8, ptr %gep.2, align 1, !tbaa !16
  %i.fy = zext i8 %i.fx to i32                    ; 3 uses
  %i.fz = getelementptr inbounds i8, ptr %gep.2, i64 -3
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !16
  %i.gb = zext i8 %i.ga to i32                    ; 3 uses
  %i.gc = add nuw nsw i32 %.0242326.2, %i.fy
  %i.gd = sub nsw i32 %i.gc, %i.gb                ; 3 uses
  %i.ge = sub nsw i32 %i.gd, %.0242326.2
  %i.gf = tail call i32 @llvm.abs.i32(i32 %i.ge, i1 true) ; 2 uses
  %i.gg = sub nsw i32 %i.gd, %i.fy
  %i.gh = tail call i32 @llvm.abs.i32(i32 %i.gg, i1 true) ; 2 uses
  %i.gi = sub nsw i32 %i.gd, %i.gb
  %i.gj = tail call i32 @llvm.abs.i32(i32 %i.gi, i1 true) ; 2 uses
  %.not279.2 = icmp samesign ugt i32 %i.gf, %i.gh
  %.not280.2 = icmp samesign ugt i32 %i.gf, %i.gj
  %or.cond289.2 = select i1 %.not279.2, i1 true, i1 %.not280.2
  %.not281.2 = icmp samesign ugt i32 %i.gh, %i.gj
  %..2 = select i1 %.not281.2, i32 %i.gb, i32 %i.fy
  %.0239.2 = select i1 %or.cond289.2, i32 %..2, i32 %.0242326.2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph328.2
  %.1240.2 = phi i32 [ %.0239.2, %bb.z ], [ %.0242326.2, %.lr.ph328.2 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.1245325.2, i64 1
  %i.gl = load i8, ptr %.1245325.2, align 1, !tbaa !16
  %i.gm = trunc nuw i32 %.1240.2 to i8
  %i.gn = sub i8 %i.gm, %i.gl                     ; 2 uses
  %i.go = zext i8 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv373.2
  store i8 %i.gn, ptr %i.gp, align 1, !tbaa !16
  %indvars.iv.next374.2 = add nuw nsw i64 %indvars.iv373.2, 3 ; 2 uses
  %i.gq = icmp samesign ult i64 %indvars.iv.next374.2, %i.ev
  br i1 %i.gq, label %.lr.ph328.2, label %._crit_edge329.2, !llvm.loop !24

._crit_edge329.2:                                 ; preds = %bb.aa, %._crit_edge329, %._crit_edge329.1
  %i.gr = add nsw i32 %i.em, -2                   ; 2 uses
  %i.gs = icmp ult i32 %i.eq, %i.gr
  br i1 %i.gs, label %.lr.ph335.preheader, label %.thread

.lr.ph328:                                        ; preds = %.lr.ph328.preheader, %bb.ac
  %indvars.iv373 = phi i64 [ 0, %.lr.ph328.preheader ], [ %indvars.iv.next374, %bb.ac ] ; 4 uses
  %.0242326 = phi i32 [ 0, %.lr.ph328.preheader ], [ %i.hk, %bb.ac ] ; 4 uses
  %.1245325 = phi ptr [ %i.eu, %.lr.ph328.preheader ], [ %i.hg, %bb.ac ] ; 2 uses
  %.not = icmp samesign ult i64 %indvars.iv373, %i.ez
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph328
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv373 ; 2 uses
  %i.gt = load i8, ptr %gep, align 1, !tbaa !16
  %i.gu = zext i8 %i.gt to i32                    ; 3 uses
  %i.gv = getelementptr inbounds i8, ptr %gep, i64 -3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !16
  %i.gx = zext i8 %i.gw to i32                    ; 3 uses
  %i.gy = add nuw nsw i32 %.0242326, %i.gu
  %i.gz = sub nsw i32 %i.gy, %i.gx                ; 3 uses
  %i.ha = sub nsw i32 %i.gz, %.0242326
  %i.hb = tail call i32 @llvm.abs.i32(i32 %i.ha, i1 true) ; 2 uses
  %i.hc = sub nsw i32 %i.gz, %i.gu
  %i.hd = tail call i32 @llvm.abs.i32(i32 %i.hc, i1 true) ; 2 uses
  %i.he = sub nsw i32 %i.gz, %i.gx
  %i.hf = tail call i32 @llvm.abs.i32(i32 %i.he, i1 true) ; 2 uses
  %.not279 = icmp samesign ugt i32 %i.hb, %i.hd
  %.not280 = icmp samesign ugt i32 %i.hb, %i.hf
  %or.cond289 = select i1 %.not279, i1 true, i1 %.not280
  %.not281 = icmp samesign ugt i32 %i.hd, %i.hf
  %. = select i1 %.not281, i32 %i.gx, i32 %i.gu
  %.0239 = select i1 %or.cond289, i32 %., i32 %.0242326
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph328, %bb.ab
  %.1240 = phi i32 [ %.0239, %bb.ab ], [ %.0242326, %.lr.ph328 ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.1245325, i64 1 ; 2 uses
  %i.hh = load i8, ptr %.1245325, align 1, !tbaa !16
  %i.hi = trunc nuw i32 %.1240 to i8
  %i.hj = sub i8 %i.hi, %i.hh                     ; 2 uses
  %i.hk = zext i8 %i.hj to i32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv373
  store i8 %i.hj, ptr %i.hl, align 1, !tbaa !16
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 3 ; 2 uses
  %i.hm = icmp samesign ult i64 %indvars.iv.next374, %i.ev
  br i1 %i.hm, label %.lr.ph328, label %._crit_edge329, !llvm.loop !24

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.lr.ph335
  %indvars.iv378 = phi i64 [ %i.fa, %.lr.ph335.preheader ], [ %indvars.iv.next379, %.lr.ph335 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv378 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !16  ; 2 uses
  %i.hq = load i8, ptr %i.hn, align 1, !tbaa !16
  %i.hr = add i8 %i.hq, %i.hp
  store i8 %i.hr, ptr %i.hn, align 1, !tbaa !16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 2 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !16
  %i.hu = add i8 %i.ht, %i.hp
  store i8 %i.hu, ptr %i.hs, align 1, !tbaa !16
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 3 ; 2 uses
  %i.hv = icmp samesign ult i64 %indvars.iv.next379, %i.fb
  br i1 %i.hv, label %.lr.ph335, label %.thread, !llvm.loop !25

bb.ad:                                            ; preds = %bb.a
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !15 ; 2 uses
  %i.hz = load i32, ptr %i.hw, align 8, !tbaa !15 ; 2 uses
  %i.ia = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ib = zext i32 %i.hy to i64                   ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ib
  %i.id = icmp ugt i32 %i.hy, 131072
  %i.ie = add i32 %i.hz, -129
  %i.if = icmp ult i32 %i.ie, -128
  %or.cond15 = select i1 %i.id, i1 true, i1 %i.if
  br i1 %or.cond15, label %.thread, label %.lr.ph324

.lr.ph324:                                        ; preds = %bb.ad
  %i.ig = zext nneg i32 %i.hz to i64              ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph324, %._crit_edge
  %indvars.iv.a = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next.a, %._crit_edge ] ; 3 uses
  %.0233322 = phi ptr [ %i.ia, %.lr.ph324 ], [ %.1234.lcssa, %._crit_edge ] ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.a, %i.ib
  br i1 %4, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.am, %bb.ae
  %.1234.lcssa = phi ptr [ %.0233322, %bb.ae ], [ %i.is, %bb.am ]
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %i.ig
  br i1 %exitcond.not, label %.thread, label %bb.ae, !llvm.loop !26

.lr.ph:                                           ; preds = %bb.ae, %bb.am
  %.sroa.5.0 = phi i32 [ %.sroa.5.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.9.0 = phi i32 [ %.sroa.9.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.13.0 = phi i32 [ %.sroa.13.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.17.0 = phi i32 [ %.sroa.17.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.21.0 = phi i32 [ %.sroa.21.1, %bb.am ], [ 0, %bb.ae ]
  %.sroa.25.0 = phi i32 [ %.sroa.25.1, %bb.am ], [ 0, %bb.ae ]
  %indvars.iv367 = phi i64 [ %indvars.iv.next368, %bb.am ], [ %indvars.iv.a, %bb.ae ] ; 2 uses
  %.0218321 = phi i32 [ %i.ks, %bb.am ], [ 0, %bb.ae ] ; 2 uses
  %.0220319 = phi i32 [ %.2, %bb.am ], [ 0, %bb.ae ] ; 11 uses
  %.0222318 = phi i32 [ %.2224, %bb.am ], [ 0, %bb.ae ] ; 11 uses
  %.0225317 = phi i32 [ %.2227, %bb.am ], [ 0, %bb.ae ] ; 11 uses
  %.0228316 = phi i32 [ %i.ii, %bb.am ], [ 0, %bb.ae ] ; 3 uses
  %.0229315 = phi i32 [ %.0230314, %bb.am ], [ 0, %bb.ae ]
  %.0230314 = phi i32 [ %i.ja, %bb.am ], [ 0, %bb.ae ] ; 5 uses
  %.0231313 = phi i32 [ %i.iv, %bb.am ], [ 0, %bb.ae ] ; 2 uses
  %.1234312 = phi ptr [ %i.is, %bb.am ], [ %.0233322, %bb.ae ] ; 2 uses
  %i.ih = phi i32 [ %i.kr, %bb.am ], [ 0, %bb.ae ]
  %i.ii = sub nsw i32 %.0230314, %.0229315        ; 4 uses
  %i.ij = shl nsw i32 %.0231313, 3
  %i.ik = mul nsw i32 %.0225317, %.0230314
  %i.il = add i32 %i.ik, %i.ij
  %i.im = mul nsw i32 %.0222318, %i.ii
  %i.in = add i32 %i.il, %i.im
  %i.io = mul nsw i32 %.0220319, %.0228316
  %i.ip = add i32 %i.in, %i.io
  %i.iq = lshr i32 %i.ip, 3
  %i.ir = and i32 %i.iq, 255
  %i.is = getelementptr inbounds nuw i8, ptr %.1234312, i64 1 ; 2 uses
  %i.it = load i8, ptr %.1234312, align 1, !tbaa !16 ; 2 uses
  %i.iu = zext i8 %i.it to i32
  %i.iv = sub nsw i32 %i.ir, %i.iu                ; 3 uses
  %i.iw = trunc i32 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv367
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !16
  %i.iy = sub nsw i32 %i.iv, %.0231313
  %i.iz = shl i32 %i.iy, 24
  %i.ja = ashr exact i32 %i.iz, 24
  %i.jb = sext i8 %i.it to i32
  %i.jc = shl nsw i32 %i.jb, 3                    ; 7 uses
  %i.jd = tail call i32 @llvm.abs.i32(i32 %i.jc, i1 true)
  %i.je = add i32 %i.jd, %i.ih                    ; 3 uses
  %i.jf = sub nsw i32 %i.jc, %.0230314
  %i.jg = tail call i32 @llvm.abs.i32(i32 %i.jf, i1 true)
  %i.jh = add i32 %.sroa.5.0, %i.jg               ; 3 uses
  %i.ji = add nsw i32 %i.jc, %.0230314
  %i.jj = tail call i32 @llvm.abs.i32(i32 %i.ji, i1 true)
  %i.jk = add i32 %.sroa.9.0, %i.jj               ; 3 uses
  %i.jl = sub nsw i32 %i.jc, %i.ii
  %i.jm = tail call i32 @llvm.abs.i32(i32 %i.jl, i1 true)
  %i.jn = add i32 %.sroa.13.0, %i.jm              ; 3 uses
  %i.jo = add nsw i32 %i.jc, %i.ii
  %i.jp = tail call i32 @llvm.abs.i32(i32 %i.jo, i1 true)
  %i.jq = add i32 %.sroa.17.0, %i.jp              ; 3 uses
  %i.jr = sub nsw i32 %i.jc, %.0228316
  %i.js = tail call i32 @llvm.abs.i32(i32 %i.jr, i1 true)
  %i.jt = add i32 %.sroa.21.0, %i.js              ; 3 uses
  %i.ju = add nsw i32 %i.jc, %.0228316
  %i.jv = tail call i32 @llvm.abs.i32(i32 %i.ju, i1 true)
  %i.jw = add i32 %.sroa.25.0, %i.jv              ; 2 uses
  %i.jx = and i32 %.0218321, 31
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.lr.ph
  %i.jz = icmp ult i32 %i.jh, %i.je
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.jh, i32 %i.je) ; 2 uses
  %spec.select290 = zext i1 %i.jz to i32
  %i.ka = icmp ult i32 %i.jk, %spec.select
  %spec.select.1 = tail call i32 @llvm.umin.i32(i32 %i.jk, i32 %spec.select) ; 2 uses
  %spec.select290.1 = select i1 %i.ka, i32 2, i32 %spec.select290
  %i.kb = icmp ult i32 %i.jn, %spec.select.1
  %spec.select.2 = tail call i32 @llvm.umin.i32(i32 %i.jn, i32 %spec.select.1) ; 2 uses
  %spec.select290.2 = select i1 %i.kb, i32 3, i32 %spec.select290.1
  %i.kc = icmp ult i32 %i.jq, %spec.select.2
  %spec.select.3 = tail call i32 @llvm.umin.i32(i32 %i.jq, i32 %spec.select.2) ; 2 uses
  %spec.select290.3 = select i1 %i.kc, i32 4, i32 %spec.select290.2
  %i.kd = icmp ult i32 %i.jt, %spec.select.3
  %spec.select.4 = tail call i32 @llvm.umin.i32(i32 %i.jt, i32 %spec.select.3)
  %spec.select290.4 = select i1 %i.kd, i32 5, i32 %spec.select290.3
  %i.ke = icmp ult i32 %i.jw, %spec.select.4
  %spec.select290.5 = select i1 %i.ke, i32 6, i32 %spec.select290.4
  switch i32 %spec.select290.5, label %bb.am [
    i32 1, label %bb.ag
    i32 2, label %bb.ah
    i32 3, label %bb.ai
    i32 4, label %bb.aj
    i32 5, label %bb.ak
    i32 6, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  %i.kf = icmp sgt i32 %.0225317, -17
  %i.kg = sext i1 %i.kf to i32
  %spec.select291 = add nsw i32 %.0225317, %i.kg
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.kh = icmp slt i32 %.0225317, 16
  %i.ki = zext i1 %i.kh to i32
  %spec.select292 = add nsw i32 %.0225317, %i.ki
  br label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.kj = icmp sgt i32 %.0222318, -17
  %i.kk = sext i1 %i.kj to i32
  %spec.select293 = add nsw i32 %.0222318, %i.kk
  br label %bb.am

bb.aj:                                            ; preds = %bb.af
  %i.kl = icmp slt i32 %.0222318, 16
  %i.km = zext i1 %i.kl to i32
  %spec.select294 = add nsw i32 %.0222318, %i.km
  br label %bb.am

bb.ak:                                            ; preds = %bb.af
  %i.kn = icmp sgt i32 %.0220319, -17
  %i.ko = sext i1 %i.kn to i32
  %spec.select295 = add nsw i32 %.0220319, %i.ko
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.kp = icmp slt i32 %.0220319, 16
  %i.kq = zext i1 %i.kp to i32
  %spec.select296 = add nsw i32 %.0220319, %i.kq
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.lr.ph
  %.sroa.5.1 = phi i32 [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.jh, %.lr.ph ]
  %.sroa.9.1 = phi i32 [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.jk, %.lr.ph ]
  %.sroa.13.1 = phi i32 [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.jn, %.lr.ph ]
  %.sroa.17.1 = phi i32 [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.jq, %.lr.ph ]
  %.sroa.21.1 = phi i32 [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.jt, %.lr.ph ]
  %.sroa.25.1 = phi i32 [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.jw, %.lr.ph ]
  %i.kr = phi i32 [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.je, %.lr.ph ]
  %.2227 = phi i32 [ %.0225317, %bb.af ], [ %spec.select291, %bb.ag ], [ %spec.select292, %bb.ah ], [ %.0225317, %bb.ai ], [ %.0225317, %bb.aj ], [ %.0225317, %bb.ak ], [ %.0225317, %bb.al ], [ %.0225317, %.lr.ph ]
  %.2224 = phi i32 [ %.0222318, %bb.af ], [ %.0222318, %bb.ag ], [ %.0222318, %bb.ah ], [ %spec.select293, %bb.ai ], [ %spec.select294, %bb.aj ], [ %.0222318, %bb.ak ], [ %.0222318, %bb.al ], [ %.0222318, %.lr.ph ]
  %.2 = phi i32 [ %.0220319, %bb.af ], [ %.0220319, %bb.ag ], [ %.0220319, %bb.ah ], [ %.0220319, %bb.ai ], [ %.0220319, %bb.aj ], [ %spec.select295, %bb.ak ], [ %spec.select296, %bb.al ], [ %.0220319, %.lr.ph ]
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, %i.ig ; 2 uses
  %i.ks = add i32 %.0218321, 1
  %i.kt = icmp samesign ult i64 %indvars.iv.next368, %i.ib
  br i1 %i.kt, label %.lr.ph, label %._crit_edge, !llvm.loop !27

.thread:                                          ; preds = %._crit_edge, %.lr.ph335, %._crit_edge341, %.loopexit, %bb.k, %._crit_edge329.2, %bb.m, %bb.c, %bb.a, %bb.ad, %bb.w, %bb.v, %bb.u, %bb.l, %bb.b
  %.5 = phi i1 [ false, %bb.w ], [ false, %bb.b ], [ false, %bb.l ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.ad ], [ true, %.loopexit ], [ true, %bb.c ], [ true, %._crit_edge329.2 ], [ true, %bb.a ], [ true, %bb.m ], [ true, %bb.k ], [ true, %.lr.ph335 ], [ true, %._crit_edge341 ], [ true, %._crit_edge ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define void @_ZN5RarVM7PrepareEPhjP18VM_PreparedProgram(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ugt i32 %2, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %i.b = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %2, 9
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %i.c = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi40 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %wide.load = load <4 x i8>, ptr %i.e, align 1, !tbaa !16
  %wide.load41 = load <4 x i8>, ptr %i.f, align 1, !tbaa !16
  %i.g = zext <4 x i8> %wide.load to <4 x i32>
  %i.h = zext <4 x i8> %wide.load41 to <4 x i32>
  %i.i = xor <4 x i32> %vec.phi, %i.g             ; 2 uses
  %i.j = xor <4 x i32> %vec.phi40, %i.h           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.c, %middle.block ]
  %.01821.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

end_hunk_0
