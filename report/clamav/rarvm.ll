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
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !15 ; 4 uses
  %i.du = load i32, ptr %i.dr, align 8, !tbaa !15 ; 3 uses
  %i.dv = shl nuw nsw i32 %i.dt, 1                ; 2 uses
  %i.dw = icmp ugt i32 %i.dt, 131072
  %i.dx = add i32 %i.du, -1025
  %i.dy = icmp ult i32 %i.dx, -1024
  %or.cond7 = select i1 %i.dw, i1 true, i1 %i.dy
  br i1 %or.cond7, label %.thread, label %.lr.ph345.preheader

.lr.ph345.preheader:                              ; preds = %bb.u
  %2 = zext nneg i32 %i.dt to i64
  %3 = zext nneg i32 %i.du to i64
  %4 = zext nneg i32 %i.dv to i64
  br label %.lr.ph345

.lr.ph345:                                        ; preds = %.lr.ph345.preheader, %._crit_edge341
  %indvars.iv381 = phi i64 [ %2, %.lr.ph345.preheader ], [ %indvars.iv.next382, %._crit_edge341 ] ; 2 uses
  %.0248344 = phi i32 [ 0, %.lr.ph345.preheader ], [ %i.eb, %._crit_edge341 ] ; 2 uses
  %.0249343 = phi i32 [ 0, %.lr.ph345.preheader ], [ %.1250.lcssa, %._crit_edge341 ] ; 2 uses
  %i.dz = add nuw nsw i32 %.0248344, %i.dt
  %i.ea = icmp ult i32 %i.dz, %i.dv
  br i1 %i.ea, label %.lr.ph340, label %._crit_edge341

._crit_edge341:                                   ; preds = %.lr.ph340, %.lr.ph345
  %.1250.lcssa = phi i32 [ %.0249343, %.lr.ph345 ], [ %i.ed, %.lr.ph340 ]
  %i.eb = add nuw nsw i32 %.0248344, 1            ; 2 uses
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1
  %exitcond381.not = icmp eq i32 %i.eb, %i.du
  br i1 %exitcond381.not, label %.thread, label %.lr.ph345, !llvm.loop !22

.lr.ph340:                                        ; preds = %.lr.ph345, %.lr.ph340
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %.lr.ph340 ], [ %indvars.iv381, %.lr.ph345 ] ; 2 uses
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
  %indvars.iv.next384 = add nuw i64 %indvars.iv383, %3 ; 2 uses
  %i.ej = icmp ult i64 %indvars.iv.next384, %4
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
  %.not419 = icmp eq i32 %i.em, 2
  br i1 %.not419, label %._crit_edge329.2, label %.lr.ph328.2

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
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !15 ; 3 uses
  %i.hz = load i32, ptr %i.hw, align 8, !tbaa !15 ; 2 uses
  %i.ia = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ib = zext i32 %i.hy to i64                   ; 2 uses
end_hunk_0
