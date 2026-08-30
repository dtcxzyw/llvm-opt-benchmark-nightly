Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/malloc_io?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@je_malloc_vsnprintf:bb.a

bb.q:                                             ; preds = %bb.p
  %i.bf = icmp ult i64 %.0384, %1
  br i1 %i.bf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.0384
  store i8 37, ptr %i.bg, align 1, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bh = add i64 %.0384, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !17
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %.loopexit, %.loopexit536, %.loopexit540, %.loopexit544, %.loopexit548, %.loopexit552, %.loopexit556, %bb.gc
  %.promoted.be = phi ptr [ %i.sw, %bb.gc ], [ %i.bi, %bb.s ], [ %i.fd, %.loopexit ], [ %i.ie, %.loopexit536 ], [ %i.ld, %.loopexit540 ], [ %i.oj, %.loopexit544 ], [ %i.pm, %.loopexit548 ], [ %i.qy, %.loopexit552 ], [ %i.ss, %.loopexit556 ]
  %.0384.be = phi i64 [ %i.sv, %bb.gc ], [ %i.bh, %bb.s ], [ %.5, %.loopexit ], [ %.10, %.loopexit536 ], [ %.15, %.loopexit540 ], [ %.20, %.loopexit544 ], [ %.25, %.loopexit548 ], [ %.30, %.loopexit552 ], [ %.35, %.loopexit556 ]
  br label %bb.b

bb.t:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bj = load i32, ptr %3, align 8               ; 15 uses
  %i.bk = icmp ult i32 %i.bj, 41                  ; 7 uses
  switch i8 %.0401, label %bb.aw [
    i8 63, label %bb.u
    i8 112, label %bb.as
    i8 108, label %bb.y
    i8 122, label %bb.ao
    i8 113, label %bb.ac
    i8 116, label %bb.ak
    i8 106, label %bb.ag
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.h, align 8
  %i.bm = zext nneg i32 %i.bj to i64
  %i.bn = getelementptr i8, ptr %i.bl, i64 %i.bm
  %i.bo = add nuw nsw i32 %i.bj, 8
  store i32 %i.bo, ptr %3, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bp = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.g, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.br = phi ptr [ %i.bn, %bb.v ], [ %i.bp, %bb.w ]
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !11
  %i.bt = sext i32 %i.bs to i64
  br label %bb.ax

bb.y:                                             ; preds = %bb.t
  br i1 %i.bk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bu = load ptr, ptr %i.h, align 8
  %i.bv = zext nneg i32 %i.bj to i64
  %i.bw = getelementptr i8, ptr %i.bu, i64 %i.bv
  %i.bx = add nuw nsw i32 %i.bj, 8
  store i32 %i.bx, ptr %3, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.by = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.g, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ca = phi ptr [ %i.bw, %bb.z ], [ %i.by, %bb.aa ]
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !19
  br label %bb.ax

bb.ac:                                            ; preds = %bb.t
  br i1 %i.bk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr %i.h, align 8
  %i.cd = zext nneg i32 %i.bj to i64
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd
  %i.cf = add nuw nsw i32 %i.bj, 8
  store i32 %i.cf, ptr %3, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.g, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ci = phi ptr [ %i.ce, %bb.ad ], [ %i.cg, %bb.ae ]
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !21
  br label %bb.ax

bb.ag:                                            ; preds = %bb.t
  br i1 %i.bk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ck = load ptr, ptr %i.h, align 8
  %i.cl = zext nneg i32 %i.bj to i64
  %i.cm = getelementptr i8, ptr %i.ck, i64 %i.cl
  %i.cn = add nuw nsw i32 %i.bj, 8
  store i32 %i.cn, ptr %3, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.co = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  store ptr %i.cp, ptr %i.g, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cq = phi ptr [ %i.cm, %bb.ah ], [ %i.co, %bb.ai ]
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !19
  br label %bb.ax

bb.ak:                                            ; preds = %bb.t
  br i1 %i.bk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cs = load ptr, ptr %i.h, align 8
  %i.ct = zext nneg i32 %i.bj to i64
  %i.cu = getelementptr i8, ptr %i.cs, i64 %i.ct
  %i.cv = add nuw nsw i32 %i.bj, 8
  store i32 %i.cv, ptr %3, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cw = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  store ptr %i.cx, ptr %i.g, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cy = phi ptr [ %i.cu, %bb.al ], [ %i.cw, %bb.am ]
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !19
  br label %bb.ax

bb.ao:                                            ; preds = %bb.t
  br i1 %i.bk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.da = load ptr, ptr %i.h, align 8
  %i.db = zext nneg i32 %i.bj to i64
  %i.dc = getelementptr i8, ptr %i.da, i64 %i.db
  %i.dd = add nuw nsw i32 %i.bj, 8
  store i32 %i.dd, ptr %3, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.de = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 8
  store ptr %i.df, ptr %i.g, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dg = phi ptr [ %i.dc, %bb.ap ], [ %i.de, %bb.aq ]
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !19
  br label %bb.ax

bb.as:                                            ; preds = %bb.t
  br i1 %i.bk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.di = load ptr, ptr %i.h, align 8
  %i.dj = zext nneg i32 %i.bj to i64
  %i.dk = getelementptr i8, ptr %i.di, i64 %i.dj
  %i.dl = add nuw nsw i32 %i.bj, 8
  store i32 %i.dl, ptr %3, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dm = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  store ptr %i.dn, ptr %i.g, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.do = phi ptr [ %i.dk, %bb.at ], [ %i.dm, %bb.au ]
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !19
  br label %bb.ax

bb.aw:                                            ; preds = %bb.t
  unreachable

bb.ax:                                            ; preds = %bb.av, %bb.ar, %bb.an, %bb.aj, %bb.af, %bb.ab, %bb.x
  %.0408.a = phi i64 [ %i.bt, %bb.x ], [ %i.dp, %bb.av ], [ %i.cb, %bb.ab ], [ %i.cz, %bb.an ], [ %i.cj, %bb.af ], [ %i.dh, %bb.ar ], [ %i.cr, %bb.aj ] ; 2 uses
  %spec.select.i = call i64 @llvm.abs.i64(i64 %.0408.a, i1 true)
  store i8 0, ptr %i.m, align 16, !tbaa !16
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.ax
  %.030.i.i = phi i64 [ %i.dw, %.preheader.i.i ], [ %spec.select.i, %bb.ax ] ; 3 uses
  %.0.i.i = phi i32 [ %i.dq, %.preheader.i.i ], [ 64, %bb.ax ] ; 2 uses
  %i.dq = add i32 %.0.i.i, -1                     ; 2 uses
  %i.dr = urem i64 %.030.i.i, 10
  %i.ds = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = zext i32 %i.dq to i64                   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.du
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !16
  %i.dw = udiv i64 %.030.i.i, 10
  %.not33.i.i = icmp samesign ult i64 %.030.i.i, 10
  br i1 %.not33.i.i, label %u2s.exit.i, label %.preheader.i.i, !llvm.loop !23

u2s.exit.i:                                       ; preds = %.preheader.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.du ; 2 uses
  %i.dy = select i1 %.0392.ph902, i8 32, i8 45
  %i.dz = select i1 %.0395.ph, i8 43, i8 %i.dy
  %i.ea = icmp slt i64 %.0408.a, 0                ; 2 uses
  %i.eb = sub i32 65, %.0.i.i
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %.012.i.a = select i1 %i.ea, i8 45, i8 %i.dz    ; 2 uses
  %i.ed = icmp ne i8 %.012.i.a, 45
  %brmerge.i = or i1 %i.ea, %i.ed
  br i1 %brmerge.i, label %bb.ay, label %d2s.exit

bb.ay:                                            ; preds = %u2s.exit.i
  %i.ee = getelementptr inbounds i8, ptr %i.dx, i64 -1 ; 2 uses
  %i.ef = add nuw nsw i64 %i.ec, 1
  store i8 %.012.i.a, ptr %i.ee, align 1, !tbaa !16
  br label %d2s.exit

d2s.exit:                                         ; preds = %u2s.exit.i, %bb.ay
  %.0511 = phi i64 [ %i.ef, %bb.ay ], [ %i.ec, %u2s.exit.i ] ; 4 uses
  %.013.i = phi ptr [ %i.ee, %bb.ay ], [ %i.dx, %u2s.exit.i ]
  %i.eg = icmp eq i32 %.0400, -1
  br i1 %i.eg, label %.thread, label %bb.az

.thread:                                          ; preds = %d2s.exit
  %i.eh = trunc nuw i8 %.2390 to i1
  br label %.loopexit534

bb.az:                                            ; preds = %d2s.exit
  %i.ei = sext i32 %.0400 to i64                  ; 2 uses
  %i.ej = call i64 @llvm.usub.sat.i64(i64 %i.ei, i64 %.0511) ; 3 uses
  %i.ek = trunc nuw i8 %.2390 to i1               ; 2 uses
  %.not = xor i1 %i.ek, true
  %i.el = icmp ult i64 %.0511, %i.ei              ; 2 uses
  %or.cond = select i1 %.not, i1 %i.el, i1 false
  br i1 %or.cond, label %.lr.ph652, label %.loopexit534

.lr.ph652:                                        ; preds = %bb.az, %bb.ba
  %.1651 = phi i64 [ %.2, %bb.ba ], [ %.0384, %bb.az ] ; 3 uses
  %.0410650 = phi i64 [ %i.eo, %bb.ba ], [ 0, %bb.az ]
  %i.em = icmp ult i64 %.1651, %1
  br i1 %i.em, label %.sink.split, label %bb.ba

.sink.split:                                      ; preds = %.lr.ph652
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %.1651
  store i8 %.1405, ptr %i.en, align 1, !tbaa !16
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph652, %.sink.split
  %.2 = add i64 %.1651, 1                         ; 2 uses
  %i.eo = add nuw i64 %.0410650, 1                ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.ej
  br i1 %i.ep, label %.lr.ph652, label %.loopexit534, !llvm.loop !24

.loopexit534:                                     ; preds = %bb.ba, %.thread, %bb.az
  %i.eq = phi i1 [ %i.el, %bb.az ], [ false, %.thread ], [ true, %bb.ba ]
  %i.er = phi i1 [ %i.ek, %bb.az ], [ %i.eh, %.thread ], [ false, %bb.ba ]
  %i.es = phi i64 [ %i.ej, %bb.az ], [ 0, %.thread ], [ %i.ej, %bb.ba ] ; 2 uses
  %.3 = phi i64 [ %.0384, %bb.az ], [ %.0384, %.thread ], [ %.2, %bb.ba ] ; 4 uses
  %i.et = icmp ult i64 %.3, %1
  br i1 %i.et, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.loopexit534
  %i.eu = sub nuw i64 %1, %.3
  %i.ev = call i64 @llvm.umin.i64(i64 %.0511, i64 %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %.3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr nonnull align 1 %.013.i, i64 %i.ev, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.loopexit534
  %i.ex = add i64 %.3, %.0511                     ; 2 uses
  %or.cond3 = select i1 %i.er, i1 %i.eq, i1 false
  %i.ey = icmp ne i64 %i.es, 0
  %or.cond658 = select i1 %or.cond3, i1 %i.ey, i1 false
  br i1 %or.cond658, label %.lr.ph656, label %.loopexit

.lr.ph656:                                        ; preds = %bb.bc, %bb.be
  %.4655 = phi i64 [ %i.fb, %bb.be ], [ %i.ex, %bb.bc ] ; 3 uses
  %.0413654 = phi i64 [ %i.fc, %bb.be ], [ 0, %bb.bc ]
  %i.ez = icmp ult i64 %.4655, %1
  br i1 %i.ez, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph656
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %.4655
  store i8 32, ptr %i.fa, align 1, !tbaa !16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph656
  %i.fb = add i64 %.4655, 1                       ; 2 uses
  %i.fc = add nuw i64 %.0413654, 1                ; 2 uses
  %exitcond719.not = icmp eq i64 %i.fc, %i.es
  br i1 %exitcond719.not, label %.loopexit, label %.lr.ph656, !llvm.loop !25

.loopexit:                                        ; preds = %bb.be, %bb.bc
  %.5 = phi i64 [ %i.ex, %bb.bc ], [ %i.fb, %bb.be ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.backedge

bb.bf:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %trunc478 = or i8 %.0401, -128
  %i.fe = load i32, ptr %3, align 8               ; 11 uses
  %i.ff = icmp ult i32 %i.fe, 41                  ; 5 uses
  switch i8 %trunc478, label %bb.ca [
    i8 -15, label %bb.bo
    i8 -65, label %bb.bg
    i8 -6, label %bb.bw
    i8 -20, label %bb.bk
    i8 -22, label %bb.bs
  ]

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fg = load ptr, ptr %i.h, align 8
  %i.fh = zext nneg i32 %i.fe to i64
  %i.fi = getelementptr i8, ptr %i.fg, i64 %i.fh
  %i.fj = add nuw nsw i32 %i.fe, 8
  store i32 %i.fj, ptr %3, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.fk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  store ptr %i.fl, ptr %i.g, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.fm = phi ptr [ %i.fi, %bb.bh ], [ %i.fk, %bb.bi ]
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !11
  %i.fo = zext i32 %i.fn to i64
  br label %bb.cb

bb.bk:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fp = load ptr, ptr %i.h, align 8
  %i.fq = zext nneg i32 %i.fe to i64
  %i.fr = getelementptr i8, ptr %i.fp, i64 %i.fq
  %i.fs = add nuw nsw i32 %i.fe, 8
  store i32 %i.fs, ptr %3, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ft = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.g, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fv = phi ptr [ %i.fr, %bb.bl ], [ %i.ft, %bb.bm ]
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !19
  br label %bb.cb

bb.bo:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fx = load ptr, ptr %i.h, align 8
  %i.fy = zext nneg i32 %i.fe to i64
  %i.fz = getelementptr i8, ptr %i.fx, i64 %i.fy
  %i.ga = add nuw nsw i32 %i.fe, 8
  store i32 %i.ga, ptr %3, align 8
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.gb = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  store ptr %i.gc, ptr %i.g, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gd = phi ptr [ %i.fz, %bb.bp ], [ %i.gb, %bb.bq ]
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !21
  br label %bb.cb

bb.bs:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gf = load ptr, ptr %i.h, align 8
  %i.gg = zext nneg i32 %i.fe to i64
  %i.gh = getelementptr i8, ptr %i.gf, i64 %i.gg
  %i.gi = add nuw nsw i32 %i.fe, 8
  store i32 %i.gi, ptr %3, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.gj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  store ptr %i.gk, ptr %i.g, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.gl = phi ptr [ %i.gh, %bb.bt ], [ %i.gj, %bb.bu ]
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !19
  br label %bb.cb

bb.bw:                                            ; preds = %bb.bf
  br i1 %i.ff, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
end_hunk_0
begin_hunk_1_@je_malloc_vsnprintf:bb.a
  %i.hm = icmp ult i64 %.1512, %i.hj              ; 2 uses
  %or.cond6 = select i1 %.not4, i1 %i.hm, i1 false
  br i1 %or.cond6, label %.lr.ph643, label %.loopexit538

.lr.ph643:                                        ; preds = %bb.ce, %bb.cf
  %.6642 = phi i64 [ %.7, %bb.cf ], [ %.0384, %bb.ce ] ; 3 uses
  %.0414641 = phi i64 [ %i.hp, %bb.cf ], [ 0, %bb.ce ]
  %i.hn = icmp ult i64 %.6642, %1
  br i1 %i.hn, label %.sink.split832, label %bb.cf

.sink.split832:                                   ; preds = %.lr.ph643
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %.6642
  store i8 %.1405, ptr %i.ho, align 1, !tbaa !16
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph643, %.sink.split832
  %.7 = add i64 %.6642, 1                         ; 2 uses
  %i.hp = add nuw i64 %.0414641, 1                ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.hk
  br i1 %i.hq, label %.lr.ph643, label %.loopexit538, !llvm.loop !27

.loopexit538:                                     ; preds = %bb.cf, %.thread516, %bb.ce
  %i.hr = phi i1 [ %i.hm, %bb.ce ], [ false, %.thread516 ], [ true, %bb.cf ]
  %i.hs = phi i1 [ %i.hl, %bb.ce ], [ %i.hi, %.thread516 ], [ false, %bb.cf ]
  %i.ht = phi i64 [ %i.hk, %bb.ce ], [ 0, %.thread516 ], [ %i.hk, %bb.cf ] ; 2 uses
  %.8 = phi i64 [ %.0384, %bb.ce ], [ %.0384, %.thread516 ], [ %.7, %bb.cf ] ; 4 uses
  %i.hu = icmp ult i64 %.8, %1
  br i1 %i.hu, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.loopexit538
  %i.hv = sub nuw i64 %1, %.8
  %i.hw = call i64 @llvm.umin.i64(i64 %.1512, i64 %i.hv)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 %.8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hx, ptr nonnull align 1 %.0.i, i64 %i.hw, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.loopexit538
  %i.hy = add i64 %.8, %.1512                     ; 2 uses
  %or.cond8 = select i1 %i.hs, i1 %i.hr, i1 false
  %i.hz = icmp ne i64 %i.ht, 0
  %or.cond659 = select i1 %or.cond8, i1 %i.hz, i1 false
  br i1 %or.cond659, label %.lr.ph647, label %.loopexit536

.lr.ph647:                                        ; preds = %bb.ch, %bb.cj
  %.9646 = phi i64 [ %i.ic, %bb.cj ], [ %i.hy, %bb.ch ] ; 3 uses
  %.0412645 = phi i64 [ %i.id, %bb.cj ], [ 0, %bb.ch ]
  %i.ia = icmp ult i64 %.9646, %1
  br i1 %i.ia, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph647
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 %.9646
  store i8 32, ptr %i.ib, align 1, !tbaa !16
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph647
  %i.ic = add i64 %.9646, 1                       ; 2 uses
  %i.id = add nuw i64 %.0412645, 1                ; 2 uses
  %exitcond718.not = icmp eq i64 %i.id, %i.ht
  br i1 %exitcond718.not, label %.loopexit536, label %.lr.ph647, !llvm.loop !28

.loopexit536:                                     ; preds = %bb.cj, %bb.ch
  %.10 = phi i64 [ %i.hy, %bb.ch ], [ %i.ic, %bb.cj ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.ie, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.backedge

bb.ck:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %trunc476 = or i8 %.0401, -128
  %i.if = load i32, ptr %3, align 8               ; 11 uses
  %i.ig = icmp ult i32 %i.if, 41                  ; 5 uses
  switch i8 %trunc476, label %bb.df [
    i8 -15, label %bb.ct
    i8 -65, label %bb.cl
    i8 -6, label %bb.db
    i8 -20, label %bb.cp
    i8 -22, label %bb.cx
  ]

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ih = load ptr, ptr %i.h, align 8
  %i.ii = zext nneg i32 %i.if to i64
  %i.ij = getelementptr i8, ptr %i.ih, i64 %i.ii
  %i.ik = add nuw nsw i32 %i.if, 8
  store i32 %i.ik, ptr %3, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.il = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 8
  store ptr %i.im, ptr %i.g, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.in = phi ptr [ %i.ij, %bb.cm ], [ %i.il, %bb.cn ]
  %i.io = load i32, ptr %i.in, align 4, !tbaa !11
  %i.ip = zext i32 %i.io to i64
  br label %bb.dg

bb.cp:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.iq = load ptr, ptr %i.h, align 8
  %i.ir = zext nneg i32 %i.if to i64
  %i.is = getelementptr i8, ptr %i.iq, i64 %i.ir
  %i.it = add nuw nsw i32 %i.if, 8
  store i32 %i.it, ptr %3, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.iu = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 8
  store ptr %i.iv, ptr %i.g, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.iw = phi ptr [ %i.is, %bb.cq ], [ %i.iu, %bb.cr ]
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !19
  br label %bb.dg

bb.ct:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.iy = load ptr, ptr %i.h, align 8
  %i.iz = zext nneg i32 %i.if to i64
  %i.ja = getelementptr i8, ptr %i.iy, i64 %i.iz
  %i.jb = add nuw nsw i32 %i.if, 8
  store i32 %i.jb, ptr %3, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.jc = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 8
  store ptr %i.jd, ptr %i.g, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.je = phi ptr [ %i.ja, %bb.cu ], [ %i.jc, %bb.cv ]
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !21
  br label %bb.dg

bb.cx:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jg = load ptr, ptr %i.h, align 8
  %i.jh = zext nneg i32 %i.if to i64
  %i.ji = getelementptr i8, ptr %i.jg, i64 %i.jh
  %i.jj = add nuw nsw i32 %i.if, 8
  store i32 %i.jj, ptr %3, align 8
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.jk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 8
  store ptr %i.jl, ptr %i.g, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.jm = phi ptr [ %i.ji, %bb.cy ], [ %i.jk, %bb.cz ]
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !19
  br label %bb.dg

bb.db:                                            ; preds = %bb.ck
  br i1 %i.ig, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.jo = load ptr, ptr %i.h, align 8
  %i.jp = zext nneg i32 %i.if to i64
  %i.jq = getelementptr i8, ptr %i.jo, i64 %i.jp
  %i.jr = add nuw nsw i32 %i.if, 8
  store i32 %i.jr, ptr %3, align 8
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.js = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 8
  store ptr %i.jt, ptr %i.g, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ju = phi ptr [ %i.jq, %bb.dc ], [ %i.js, %bb.dd ]
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !19
  br label %bb.dg

bb.df:                                            ; preds = %bb.ck
  unreachable

bb.dg:                                            ; preds = %bb.de, %bb.da, %bb.cw, %bb.cs, %bb.co
  %.0411 = phi i64 [ %i.jf, %bb.cw ], [ %i.ip, %bb.co ], [ %i.jv, %bb.de ], [ %i.ix, %bb.cs ], [ %i.jn, %bb.da ]
  store i8 0, ptr %i.k, align 16, !tbaa !16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.dg
  %.030.i = phi i64 [ %i.kc, %.preheader.i ], [ %.0411, %bb.dg ] ; 3 uses
  %.0.i485 = phi i32 [ %i.jw, %.preheader.i ], [ 64, %bb.dg ] ; 2 uses
  %i.jw = add i32 %.0.i485, -1                    ; 2 uses
  %i.jx = urem i64 %.030.i, 10
  %i.jy = getelementptr inbounds nuw i8, ptr @.str, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !16
  %i.ka = zext i32 %i.jw to i64                   ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ka
  store i8 %i.jz, ptr %i.kb, align 1, !tbaa !16
  %i.kc = udiv i64 %.030.i, 10
  %.not33.i = icmp ult i64 %.030.i, 10
  br i1 %.not33.i, label %u2s.exit, label %.preheader.i, !llvm.loop !23

u2s.exit:                                         ; preds = %.preheader.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ka
  %i.ke = sub i32 65, %.0.i485
  %i.kf = zext i32 %i.ke to i64                   ; 4 uses
  %i.kg = icmp eq i32 %.0400, -1
  br i1 %i.kg, label %.thread519, label %bb.dh

.thread519:                                       ; preds = %u2s.exit
  %i.kh = trunc nuw i8 %.2390 to i1
  br label %.loopexit542

bb.dh:                                            ; preds = %u2s.exit
  %i.ki = sext i32 %.0400 to i64                  ; 2 uses
  %i.kj = call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %i.kf) ; 3 uses
  %i.kk = trunc nuw i8 %.2390 to i1               ; 2 uses
  %.not9 = xor i1 %i.kk, true
  %i.kl = icmp ugt i64 %i.ki, %i.kf               ; 2 uses
  %or.cond11 = select i1 %.not9, i1 %i.kl, i1 false
  br i1 %or.cond11, label %.lr.ph634, label %.loopexit542

.lr.ph634:                                        ; preds = %bb.dh, %bb.di
  %.11633 = phi i64 [ %.12, %bb.di ], [ %.0384, %bb.dh ] ; 3 uses
  %.0409632 = phi i64 [ %i.ko, %bb.di ], [ 0, %bb.dh ]
  %i.km = icmp ult i64 %.11633, %1
  br i1 %i.km, label %.sink.split835, label %bb.di

.sink.split835:                                   ; preds = %.lr.ph634
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %.11633
  store i8 %.1405, ptr %i.kn, align 1, !tbaa !16
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph634, %.sink.split835
  %.12 = add i64 %.11633, 1                       ; 2 uses
  %i.ko = add nuw i64 %.0409632, 1                ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.kj
  br i1 %i.kp, label %.lr.ph634, label %.loopexit542, !llvm.loop !29

.loopexit542:                                     ; preds = %bb.di, %.thread519, %bb.dh
  %i.kq = phi i1 [ %i.kl, %bb.dh ], [ false, %.thread519 ], [ true, %bb.di ]
  %i.kr = phi i1 [ %i.kk, %bb.dh ], [ %i.kh, %.thread519 ], [ false, %bb.di ]
  %i.ks = phi i64 [ %i.kj, %bb.dh ], [ 0, %.thread519 ], [ %i.kj, %bb.di ] ; 2 uses
  %.13 = phi i64 [ %.0384, %bb.dh ], [ %.0384, %.thread519 ], [ %.12, %bb.di ] ; 4 uses
  %i.kt = icmp ult i64 %.13, %1
  br i1 %i.kt, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.loopexit542
  %i.ku = sub nuw i64 %1, %.13
  %i.kv = call i64 @llvm.umin.i64(i64 %i.kf, i64 %i.ku)
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 %.13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kw, ptr nonnull align 1 %i.kd, i64 %i.kv, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.loopexit542
  %i.kx = add i64 %.13, %i.kf                     ; 2 uses
  %or.cond13 = select i1 %i.kr, i1 %i.kq, i1 false
  %i.ky = icmp ne i64 %i.ks, 0
  %or.cond660 = select i1 %or.cond13, i1 %i.ky, i1 false
  br i1 %or.cond660, label %.lr.ph638, label %.loopexit540

.lr.ph638:                                        ; preds = %bb.dk, %bb.dm
  %.14637 = phi i64 [ %i.lb, %bb.dm ], [ %i.kx, %bb.dk ] ; 3 uses
  %.0407636 = phi i64 [ %i.lc, %bb.dm ], [ 0, %bb.dk ]
  %i.kz = icmp ult i64 %.14637, %1
  br i1 %i.kz, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph638
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 %.14637
  store i8 32, ptr %i.la, align 1, !tbaa !16
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph638
  %i.lb = add i64 %.14637, 1                      ; 2 uses
  %i.lc = add nuw i64 %.0407636, 1                ; 2 uses
  %exitcond717.not = icmp eq i64 %i.lc, %i.ks
  br i1 %exitcond717.not, label %.loopexit540, label %.lr.ph638, !llvm.loop !30

.loopexit540:                                     ; preds = %bb.dm, %bb.dk
  %.15 = phi i64 [ %i.kx, %bb.dk ], [ %i.lb, %bb.dm ]
  %i.ld = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.ld, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.backedge

bb.dn:                                            ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %trunc = or i8 %.0401, -128
  %i.le = load i32, ptr %3, align 8               ; 11 uses
  %i.lf = icmp ult i32 %i.le, 41                  ; 5 uses
  switch i8 %trunc, label %bb.ei [
    i8 -15, label %bb.dw
    i8 -65, label %bb.do
    i8 -6, label %bb.ee
    i8 -20, label %bb.ds
    i8 -22, label %bb.ea
  ]

bb.do:                                            ; preds = %bb.dn
  br i1 %i.lf, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.lg = load ptr, ptr %i.h, align 8
  %i.lh = zext nneg i32 %i.le to i64
  %i.li = getelementptr i8, ptr %i.lg, i64 %i.lh
  %i.lj = add nuw nsw i32 %i.le, 8
  store i32 %i.lj, ptr %3, align 8
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.lk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lk, i64 8
  store ptr %i.ll, ptr %i.g, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.lm = phi ptr [ %i.li, %bb.dp ], [ %i.lk, %bb.dq ]
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !11
  %i.lo = zext i32 %i.ln to i64
  br label %bb.ej

bb.ds:                                            ; preds = %bb.dn
  br i1 %i.lf, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.lp = load ptr, ptr %i.h, align 8
  %i.lq = zext nneg i32 %i.le to i64
  %i.lr = getelementptr i8, ptr %i.lp, i64 %i.lq
  %i.ls = add nuw nsw i32 %i.le, 8
  store i32 %i.ls, ptr %3, align 8
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.lt = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 8
  store ptr %i.lu, ptr %i.g, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.lv = phi ptr [ %i.lr, %bb.dt ], [ %i.lt, %bb.du ]
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !19
  br label %bb.ej

bb.dw:                                            ; preds = %bb.dn
  br i1 %i.lf, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.lx = load ptr, ptr %i.h, align 8
  %i.ly = zext nneg i32 %i.le to i64
  %i.lz = getelementptr i8, ptr %i.lx, i64 %i.ly
  %i.ma = add nuw nsw i32 %i.le, 8
  store i32 %i.ma, ptr %3, align 8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.mb = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 8
  store ptr %i.mc, ptr %i.g, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.md = phi ptr [ %i.lz, %bb.dx ], [ %i.mb, %bb.dy ]
  %i.me = load i64, ptr %i.md, align 8, !tbaa !21
  br label %bb.ej

bb.ea:                                            ; preds = %bb.dn
  br i1 %i.lf, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.mf = load ptr, ptr %i.h, align 8
  %i.mg = zext nneg i32 %i.le to i64
  %i.mh = getelementptr i8, ptr %i.mf, i64 %i.mg
  %i.mi = add nuw nsw i32 %i.le, 8
  store i32 %i.mi, ptr %3, align 8
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.mj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 8
  store ptr %i.mk, ptr %i.g, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.ml = phi ptr [ %i.mh, %bb.eb ], [ %i.mj, %bb.ec ]
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !19
  br label %bb.ej

bb.ee:                                            ; preds = %bb.dn
  br i1 %i.lf, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.mn = load ptr, ptr %i.h, align 8
  %i.mo = zext nneg i32 %i.le to i64
  %i.mp = getelementptr i8, ptr %i.mn, i64 %i.mo
  %i.mq = add nuw nsw i32 %i.le, 8
  store i32 %i.mq, ptr %3, align 8
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.mr = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mr, i64 8
  store ptr %i.ms, ptr %i.g, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
end_hunk_1
