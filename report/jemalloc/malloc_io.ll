Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/malloc_io?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@je_malloc_vsnprintf:bb.a

bb.q:                                             ; preds = %bb.p
  %i.bf = icmp ult i64 %.0384, %1
  br i1 %i.bf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.0384
  store i8 37, ptr %i.bg, align 1, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bh = add i64 %.0384, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !17
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %.loopexit, %.loopexit536, %.loopexit540, %.loopexit544, %.loopexit548, %.loopexit552, %.loopexit556, %bb.gc
  %.promoted.be = phi ptr [ %i.sk, %bb.gc ], [ %i.bi, %bb.s ], [ %i.ez, %.loopexit ], [ %i.hz, %.loopexit536 ], [ %i.kt, %.loopexit540 ], [ %i.ny, %.loopexit544 ], [ %i.pb, %.loopexit548 ], [ %i.qn, %.loopexit552 ], [ %i.sg, %.loopexit556 ]
  %.0384.be = phi i64 [ %i.sj, %bb.gc ], [ %i.bh, %bb.s ], [ %.5, %.loopexit ], [ %.10, %.loopexit536 ], [ %.15, %.loopexit540 ], [ %.20, %.loopexit544 ], [ %.25, %.loopexit548 ], [ %.30, %.loopexit552 ], [ %.35, %.loopexit556 ]
  br label %bb.b

bb.t:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bj = load i32, ptr %3, align 8               ; 15 uses
  %i.bk = icmp ult i32 %i.bj, 41                  ; 7 uses
  switch i8 %.0413, label %bb.aw [
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
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !12
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
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !37
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
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !39
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
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !37
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
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !37
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
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !37
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
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !37
  br label %bb.ax

bb.aw:                                            ; preds = %bb.t
  unreachable

bb.ax:                                            ; preds = %bb.av, %bb.ar, %bb.an, %bb.aj, %bb.af, %bb.ab, %bb.x
  %.0412 = phi i64 [ %i.bt, %bb.x ], [ %i.dp, %bb.av ], [ %i.cb, %bb.ab ], [ %i.cz, %bb.an ], [ %i.cj, %bb.af ], [ %i.dh, %bb.ar ], [ %i.cr, %bb.aj ] ; 2 uses
  %spec.select.i = call i64 @llvm.abs.i64(i64 %.0412, i1 true)
  store i8 0, ptr %i.m, align 16, !tbaa !15
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.ax
  %.030.i.i.a = phi i64 [ %i.du, %.preheader.i.i ], [ %spec.select.i, %bb.ax ] ; 3 uses
  %.0.i.i = phi i32 [ %4, %.preheader.i.i ], [ 64, %bb.ax ] ; 2 uses
  %4 = add i32 %.0.i.i, -1                        ; 2 uses
  %i.dq = urem i64 %.030.i.i.a, 10
  %i.dr = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 %5
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !15
  %i.du = udiv i64 %.030.i.i.a, 10
  %.not33.i.i = icmp samesign ult i64 %.030.i.i.a, 10
  br i1 %.not33.i.i, label %u2s.exit.i, label %.preheader.i.i, !llvm.loop !19

u2s.exit.i:                                       ; preds = %.preheader.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %5 ; 2 uses
  %i.dw = select i1 %.0396.ph902, i8 32, i8 45
  %i.dx = select i1 %.0401.ph, i8 43, i8 %i.dw
  %i.dy = icmp slt i64 %.0412, 0                  ; 2 uses
  %6 = sub i32 65, %.0.i.i
  %7 = zext i32 %6 to i64                         ; 2 uses
  %.013.i = select i1 %i.dy, i8 45, i8 %i.dx      ; 2 uses
  %i.dz = icmp ne i8 %.013.i, 45
  %brmerge.i = or i1 %i.dy, %i.dz
  br i1 %brmerge.i, label %bb.ay, label %d2s.exit

bb.ay:                                            ; preds = %u2s.exit.i
  %i.ea = getelementptr inbounds i8, ptr %i.dv, i64 -1 ; 2 uses
  %i.eb = add nuw nsw i64 %7, 1
  store i8 %.013.i, ptr %i.ea, align 1, !tbaa !15
  br label %d2s.exit

d2s.exit:                                         ; preds = %u2s.exit.i, %bb.ay
  %.0511 = phi i64 [ %i.eb, %bb.ay ], [ %7, %u2s.exit.i ] ; 4 uses
  %.012.i = phi ptr [ %i.ea, %bb.ay ], [ %i.dv, %u2s.exit.i ]
  %i.ec = icmp eq i32 %.0410, -1
  br i1 %i.ec, label %.thread, label %bb.az

.thread:                                          ; preds = %d2s.exit
  %i.ed = trunc nuw i8 %.2393 to i1
  br label %.loopexit534

bb.az:                                            ; preds = %d2s.exit
  %i.ee = sext i32 %.0410 to i64                  ; 2 uses
  %i.ef = call i64 @llvm.usub.sat.i64(i64 %i.ee, i64 %.0511) ; 3 uses
  %i.eg = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not = xor i1 %i.eg, true
  %i.eh = icmp ult i64 %.0511, %i.ee              ; 2 uses
  %or.cond = select i1 %.not, i1 %i.eh, i1 false
  br i1 %or.cond, label %.lr.ph652, label %.loopexit534

.lr.ph652:                                        ; preds = %bb.az, %bb.ba
  %.1651 = phi i64 [ %.2, %bb.ba ], [ %.0384, %bb.az ] ; 3 uses
  %.0411650 = phi i64 [ %i.ek, %bb.ba ], [ 0, %bb.az ]
  %i.ei = icmp ult i64 %.1651, %1
  br i1 %i.ei, label %.sink.split, label %bb.ba

.sink.split:                                      ; preds = %.lr.ph652
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %.1651
  store i8 %.1415, ptr %i.ej, align 1, !tbaa !15
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph652, %.sink.split
  %.2 = add i64 %.1651, 1                         ; 2 uses
  %i.ek = add nuw i64 %.0411650, 1                ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.ef
  br i1 %i.el, label %.lr.ph652, label %.loopexit534, !llvm.loop !20

.loopexit534:                                     ; preds = %bb.ba, %.thread, %bb.az
  %i.em = phi i1 [ %i.eh, %bb.az ], [ false, %.thread ], [ true, %bb.ba ]
  %i.en = phi i1 [ %i.eg, %bb.az ], [ %i.ed, %.thread ], [ false, %bb.ba ]
  %i.eo = phi i64 [ %i.ef, %bb.az ], [ 0, %.thread ], [ %i.ef, %bb.ba ] ; 2 uses
  %.3 = phi i64 [ %.0384, %bb.az ], [ %.0384, %.thread ], [ %.2, %bb.ba ] ; 4 uses
  %i.ep = icmp ult i64 %.3, %1
  br i1 %i.ep, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.loopexit534
  %i.eq = sub nuw i64 %1, %.3
  %i.er = call i64 @llvm.umin.i64(i64 %.0511, i64 %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %.3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr nonnull align 1 %.012.i, i64 %i.er, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.loopexit534
  %i.et = add i64 %.3, %.0511                     ; 2 uses
  %or.cond3 = select i1 %i.en, i1 %i.em, i1 false
  %i.eu = icmp ne i64 %i.eo, 0
  %or.cond658.a = select i1 %or.cond3, i1 %i.eu, i1 false
  br i1 %or.cond658.a, label %.lr.ph656, label %.loopexit

.lr.ph656:                                        ; preds = %bb.bc, %bb.be
  %.4655 = phi i64 [ %i.ex, %bb.be ], [ %i.et, %bb.bc ] ; 3 uses
  %.0409654 = phi i64 [ %i.ey, %bb.be ], [ 0, %bb.bc ]
  %i.ev = icmp ult i64 %.4655, %1
  br i1 %i.ev, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph656
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %.4655
  store i8 32, ptr %i.ew, align 1, !tbaa !15
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph656
  %i.ex = add i64 %.4655, 1                       ; 2 uses
  %i.ey = add nuw i64 %.0409654, 1                ; 2 uses
  %exitcond719.not = icmp eq i64 %i.ey, %i.eo
  br i1 %exitcond719.not, label %.loopexit, label %.lr.ph656, !llvm.loop !21

.loopexit:                                        ; preds = %bb.be, %bb.bc
  %.5 = phi i64 [ %i.et, %bb.bc ], [ %i.ex, %bb.be ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.ez, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.backedge

bb.bf:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %trunc478 = or i8 %.0413, -128
  %i.fa = load i32, ptr %3, align 8               ; 11 uses
  %i.fb = icmp ult i32 %i.fa, 41                  ; 5 uses
  switch i8 %trunc478, label %bb.ca [
    i8 -15, label %bb.bo
    i8 -65, label %bb.bg
    i8 -6, label %bb.bw
    i8 -20, label %bb.bk
    i8 -22, label %bb.bs
  ]

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.fb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fc = load ptr, ptr %i.h, align 8
  %i.fd = zext nneg i32 %i.fa to i64
  %i.fe = getelementptr i8, ptr %i.fc, i64 %i.fd
  %i.ff = add nuw nsw i32 %i.fa, 8
  store i32 %i.ff, ptr %3, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.fg = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  store ptr %i.fh, ptr %i.g, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.fi = phi ptr [ %i.fe, %bb.bh ], [ %i.fg, %bb.bi ]
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !12
  %i.fk = zext i32 %i.fj to i64
  br label %bb.cb

bb.bk:                                            ; preds = %bb.bf
  br i1 %i.fb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fl = load ptr, ptr %i.h, align 8
  %i.fm = zext nneg i32 %i.fa to i64
  %i.fn = getelementptr i8, ptr %i.fl, i64 %i.fm
  %i.fo = add nuw nsw i32 %i.fa, 8
  store i32 %i.fo, ptr %3, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.fp = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  store ptr %i.fq, ptr %i.g, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fr = phi ptr [ %i.fn, %bb.bl ], [ %i.fp, %bb.bm ]
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !37
  br label %bb.cb

bb.bo:                                            ; preds = %bb.bf
  br i1 %i.fb, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ft = load ptr, ptr %i.h, align 8
  %i.fu = zext nneg i32 %i.fa to i64
  %i.fv = getelementptr i8, ptr %i.ft, i64 %i.fu
  %i.fw = add nuw nsw i32 %i.fa, 8
  store i32 %i.fw, ptr %3, align 8
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.fx = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  store ptr %i.fy, ptr %i.g, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.fz = phi ptr [ %i.fv, %bb.bp ], [ %i.fx, %bb.bq ]
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !39
  br label %bb.cb

bb.bs:                                            ; preds = %bb.bf
  br i1 %i.fb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gb = load ptr, ptr %i.h, align 8
  %i.gc = zext nneg i32 %i.fa to i64
  %i.gd = getelementptr i8, ptr %i.gb, i64 %i.gc
  %i.ge = add nuw nsw i32 %i.fa, 8
  store i32 %i.ge, ptr %3, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.gf = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  store ptr %i.gg, ptr %i.g, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.gh = phi ptr [ %i.gd, %bb.bt ], [ %i.gf, %bb.bu ]
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !37
  br label %bb.cb

bb.bw:                                            ; preds = %bb.bf
  br i1 %i.fb, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.h, align 8
  %i.gk = zext nneg i32 %i.fa to i64
  %i.gl = getelementptr i8, ptr %i.gj, i64 %i.gk
  %i.gm = add nuw nsw i32 %i.fa, 8
  store i32 %i.gm, ptr %3, align 8
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.gn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  store ptr %i.go, ptr %i.g, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.gp = phi ptr [ %i.gl, %bb.bx ], [ %i.gn, %bb.by ]
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !37
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bf
  unreachable

bb.cb:                                            ; preds = %bb.bz, %bb.bv, %bb.br, %bb.bn, %bb.bj
  %.0408 = phi i64 [ %i.ga, %bb.br ], [ %i.fk, %bb.bj ], [ %i.gq, %bb.bz ], [ %i.fs, %bb.bn ], [ %i.gi, %bb.bv ]
  store i8 0, ptr %i.l, align 16, !tbaa !15
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.cc ], [ 64, %bb.cb ] ; 2 uses
  %.232.i.i = phi i64 [ %i.gv, %bb.cc ], [ %.0408, %bb.cb ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.gr = and i64 %.232.i.i, 7                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr @.str.4, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !15
  %8 = and i64 %indvars.iv.next.i, 4294967295     ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 %8
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !15
  %i.gv = lshr i64 %.232.i.i, 3
  %.not34.i.i = icmp ult i64 %.232.i.i, 8
  br i1 %.not34.i.i, label %u2s.exit.i484, label %bb.cc, !llvm.loop !22

u2s.exit.i484:                                    ; preds = %bb.cc
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 %8 ; 2 uses
  %i.gx = trunc nuw i8 %.0387 to i1
  %i.gy = sub i64 65, %indvars.iv.i
  %i.gz = and i64 %i.gy, 4294967295               ; 2 uses
  %.not.i = icmp ne i64 %i.gr, 0
  %or.cond532.not = and i1 %.not.i, %i.gx
  br i1 %or.cond532.not, label %bb.cd, label %o2s.exit

bb.cd:                                            ; preds = %u2s.exit.i484
  %i.ha = getelementptr inbounds i8, ptr %i.gw, i64 -1 ; 2 uses
  %i.hb = add nuw nsw i64 %i.gz, 1
  store i8 48, ptr %i.ha, align 1, !tbaa !15
  br label %o2s.exit

o2s.exit:                                         ; preds = %u2s.exit.i484, %bb.cd
  %.1512 = phi i64 [ %i.gz, %u2s.exit.i484 ], [ %i.hb, %bb.cd ] ; 4 uses
  %.0.i = phi ptr [ %i.gw, %u2s.exit.i484 ], [ %i.ha, %bb.cd ]
  %i.hc = icmp eq i32 %.0410, -1
  br i1 %i.hc, label %.thread516, label %bb.ce

.thread516:                                       ; preds = %o2s.exit
  %i.hd = trunc nuw i8 %.2393 to i1
  br label %.loopexit538

bb.ce:                                            ; preds = %o2s.exit
  %i.he = sext i32 %.0410 to i64                  ; 2 uses
  %i.hf = call i64 @llvm.usub.sat.i64(i64 %i.he, i64 %.1512) ; 3 uses
  %i.hg = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not4 = xor i1 %i.hg, true
  %i.hh = icmp ult i64 %.1512, %i.he              ; 2 uses
  %or.cond6 = select i1 %.not4, i1 %i.hh, i1 false
  br i1 %or.cond6, label %.lr.ph643.a, label %.loopexit538

.lr.ph643.a:                                      ; preds = %bb.ce, %bb.cf
  %.6642 = phi i64 [ %.7, %bb.cf ], [ %.0384, %bb.ce ] ; 3 uses
  %.0407641 = phi i64 [ %i.hk, %bb.cf ], [ 0, %bb.ce ]
  %i.hi = icmp ult i64 %.6642, %1
  br i1 %i.hi, label %.sink.split832, label %bb.cf

.sink.split832:                                   ; preds = %.lr.ph643.a
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %.6642
  store i8 %.1415, ptr %i.hj, align 1, !tbaa !15
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph643.a, %.sink.split832
  %.7 = add i64 %.6642, 1                         ; 2 uses
  %i.hk = add nuw i64 %.0407641, 1                ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.hf
  br i1 %i.hl, label %.lr.ph643.a, label %.loopexit538, !llvm.loop !23

.loopexit538:                                     ; preds = %bb.cf, %.thread516, %bb.ce
  %i.hm = phi i1 [ %i.hh, %bb.ce ], [ false, %.thread516 ], [ true, %bb.cf ]
  %i.hn = phi i1 [ %i.hg, %bb.ce ], [ %i.hd, %.thread516 ], [ false, %bb.cf ]
  %i.ho = phi i64 [ %i.hf, %bb.ce ], [ 0, %.thread516 ], [ %i.hf, %bb.cf ] ; 2 uses
  %.8 = phi i64 [ %.0384, %bb.ce ], [ %.0384, %.thread516 ], [ %.7, %bb.cf ] ; 4 uses
  %i.hp = icmp ult i64 %.8, %1
  br i1 %i.hp, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.loopexit538
  %i.hq = sub nuw i64 %1, %.8
  %i.hr = call i64 @llvm.umin.i64(i64 %.1512, i64 %i.hq)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %.8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hs, ptr nonnull align 1 %.0.i, i64 %i.hr, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.loopexit538
  %i.ht = add i64 %.8, %.1512                     ; 2 uses
  %or.cond8 = select i1 %i.hn, i1 %i.hm, i1 false
  %i.hu = icmp ne i64 %i.ho, 0
  %or.cond659 = select i1 %or.cond8, i1 %i.hu, i1 false
  br i1 %or.cond659, label %.lr.ph647, label %.loopexit536

.lr.ph647:                                        ; preds = %bb.ch, %bb.cj
  %.9646 = phi i64 [ %i.hx, %bb.cj ], [ %i.ht, %bb.ch ] ; 3 uses
  %.0405645 = phi i64 [ %i.hy, %bb.cj ], [ 0, %bb.ch ]
  %i.hv = icmp ult i64 %.9646, %1
  br i1 %i.hv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph647
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 %.9646
  store i8 32, ptr %i.hw, align 1, !tbaa !15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph647
  %i.hx = add i64 %.9646, 1                       ; 2 uses
  %i.hy = add nuw i64 %.0405645, 1                ; 2 uses
  %exitcond718.not = icmp eq i64 %i.hy, %i.ho
  br i1 %exitcond718.not, label %.loopexit536, label %.lr.ph647, !llvm.loop !24

.loopexit536:                                     ; preds = %bb.cj, %bb.ch
  %.10 = phi i64 [ %i.ht, %bb.ch ], [ %i.hx, %bb.cj ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.hz, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.backedge

bb.ck:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %trunc476 = or i8 %.0413, -128
  %i.ia = load i32, ptr %3, align 8               ; 11 uses
  %i.ib = icmp ult i32 %i.ia, 41                  ; 5 uses
  switch i8 %trunc476, label %bb.df [
    i8 -15, label %bb.ct
    i8 -65, label %bb.cl
    i8 -6, label %bb.db
    i8 -20, label %bb.cp
    i8 -22, label %bb.cx
  ]

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.ib, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ic = load ptr, ptr %i.h, align 8
  %i.id = zext nneg i32 %i.ia to i64
  %i.ie = getelementptr i8, ptr %i.ic, i64 %i.id
  %i.if = add nuw nsw i32 %i.ia, 8
  store i32 %i.if, ptr %3, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.ig = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  store ptr %i.ih, ptr %i.g, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ii = phi ptr [ %i.ie, %bb.cm ], [ %i.ig, %bb.cn ]
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !12
  %i.ik = zext i32 %i.ij to i64
  br label %bb.dg

bb.cp:                                            ; preds = %bb.ck
  br i1 %i.ib, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.il = load ptr, ptr %i.h, align 8
  %i.im = zext nneg i32 %i.ia to i64
  %i.in = getelementptr i8, ptr %i.il, i64 %i.im
  %i.io = add nuw nsw i32 %i.ia, 8
  store i32 %i.io, ptr %3, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.ip = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  store ptr %i.iq, ptr %i.g, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ir = phi ptr [ %i.in, %bb.cq ], [ %i.ip, %bb.cr ]
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !37
  br label %bb.dg

bb.ct:                                            ; preds = %bb.ck
  br i1 %i.ib, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.it = load ptr, ptr %i.h, align 8
  %i.iu = zext nneg i32 %i.ia to i64
  %i.iv = getelementptr i8, ptr %i.it, i64 %i.iu
  %i.iw = add nuw nsw i32 %i.ia, 8
  store i32 %i.iw, ptr %3, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.ix = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  store ptr %i.iy, ptr %i.g, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.iz = phi ptr [ %i.iv, %bb.cu ], [ %i.ix, %bb.cv ]
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !39
  br label %bb.dg

bb.cx:                                            ; preds = %bb.ck
  br i1 %i.ib, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jb = load ptr, ptr %i.h, align 8
  %i.jc = zext nneg i32 %i.ia to i64
  %i.jd = getelementptr i8, ptr %i.jb, i64 %i.jc
  %i.je = add nuw nsw i32 %i.ia, 8
  store i32 %i.je, ptr %3, align 8
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.jf = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 8
  store ptr %i.jg, ptr %i.g, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.jh = phi ptr [ %i.jd, %bb.cy ], [ %i.jf, %bb.cz ]
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !37
  br label %bb.dg

bb.db:                                            ; preds = %bb.ck
  br i1 %i.ib, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.jj = load ptr, ptr %i.h, align 8
  %i.jk = zext nneg i32 %i.ia to i64
  %i.jl = getelementptr i8, ptr %i.jj, i64 %i.jk
  %i.jm = add nuw nsw i32 %i.ia, 8
  store i32 %i.jm, ptr %3, align 8
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.jn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 8
  store ptr %i.jo, ptr %i.g, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.jp = phi ptr [ %i.jl, %bb.dc ], [ %i.jn, %bb.dd ]
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !37
  br label %bb.dg

bb.df:                                            ; preds = %bb.ck
  unreachable

bb.dg:                                            ; preds = %bb.de, %bb.da, %bb.cw, %bb.cs, %bb.co
  %.0404 = phi i64 [ %i.ja, %bb.cw ], [ %i.ik, %bb.co ], [ %i.jq, %bb.de ], [ %i.is, %bb.cs ], [ %i.ji, %bb.da ]
  store i8 0, ptr %i.k, align 16, !tbaa !15
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.dg
  %.030.i.a = phi i64 [ %i.jv, %.preheader.i ], [ %.0404, %bb.dg ] ; 3 uses
  %.0.i485 = phi i32 [ %9, %.preheader.i ], [ 64, %bb.dg ] ; 2 uses
  %9 = add i32 %.0.i485, -1                       ; 2 uses
  %i.jr = urem i64 %.030.i.a, 10
  %i.js = getelementptr inbounds nuw i8, ptr @.str, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !15
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.d, i64 %10
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !15
  %i.jv = udiv i64 %.030.i.a, 10
  %.not33.i = icmp ult i64 %.030.i.a, 10
  br i1 %.not33.i, label %u2s.exit, label %.preheader.i, !llvm.loop !19

u2s.exit:                                         ; preds = %.preheader.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.d, i64 %10
  %11 = sub i32 65, %.0.i485
  %12 = zext i32 %11 to i64                       ; 4 uses
  %i.jx = icmp eq i32 %.0410, -1
  br i1 %i.jx, label %.thread519, label %bb.dh

.thread519:                                       ; preds = %u2s.exit
  %i.jy = trunc nuw i8 %.2393 to i1
  br label %.loopexit542

bb.dh:                                            ; preds = %u2s.exit
  %i.jz = sext i32 %.0410 to i64                  ; 2 uses
  %i.ka = call i64 @llvm.usub.sat.i64(i64 %i.jz, i64 %12) ; 3 uses
  %i.kb = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not9 = xor i1 %i.kb, true
  %13 = icmp ugt i64 %i.jz, %12                   ; 2 uses
  %or.cond11 = select i1 %.not9, i1 %13, i1 false
  br i1 %or.cond11, label %.lr.ph634, label %.loopexit542

.lr.ph634:                                        ; preds = %bb.dh, %bb.di
  %.11633 = phi i64 [ %.12, %bb.di ], [ %.0384, %bb.dh ] ; 3 uses
  %.0403632 = phi i64 [ %i.ke, %bb.di ], [ 0, %bb.dh ]
  %i.kc = icmp ult i64 %.11633, %1
  br i1 %i.kc, label %.sink.split835, label %bb.di

.sink.split835:                                   ; preds = %.lr.ph634
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 %.11633
  store i8 %.1415, ptr %i.kd, align 1, !tbaa !15
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph634, %.sink.split835
  %.12 = add i64 %.11633, 1                       ; 2 uses
  %i.ke = add nuw i64 %.0403632, 1                ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.ka
  br i1 %i.kf, label %.lr.ph634, label %.loopexit542, !llvm.loop !25

.loopexit542:                                     ; preds = %bb.di, %.thread519, %bb.dh
  %i.kg = phi i1 [ %13, %bb.dh ], [ false, %.thread519 ], [ true, %bb.di ]
  %i.kh = phi i1 [ %i.kb, %bb.dh ], [ %i.jy, %.thread519 ], [ false, %bb.di ]
  %i.ki = phi i64 [ %i.ka, %bb.dh ], [ 0, %.thread519 ], [ %i.ka, %bb.di ] ; 2 uses
  %.13 = phi i64 [ %.0384, %bb.dh ], [ %.0384, %.thread519 ], [ %.12, %bb.di ] ; 4 uses
  %i.kj = icmp ult i64 %.13, %1
  br i1 %i.kj, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.loopexit542
  %i.kk = sub nuw i64 %1, %.13
  %i.kl = call i64 @llvm.umin.i64(i64 %12, i64 %i.kk)
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 %.13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.km, ptr nonnull align 1 %i.jw, i64 %i.kl, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.loopexit542
  %i.kn = add i64 %.13, %12                       ; 2 uses
  %or.cond13 = select i1 %i.kh, i1 %i.kg, i1 false
  %i.ko = icmp ne i64 %i.ki, 0
  %or.cond660 = select i1 %or.cond13, i1 %i.ko, i1 false
  br i1 %or.cond660, label %.lr.ph638, label %.loopexit540

.lr.ph638:                                        ; preds = %bb.dk, %bb.dm
  %.14637 = phi i64 [ %i.kr, %bb.dm ], [ %i.kn, %bb.dk ] ; 3 uses
  %.0400636 = phi i64 [ %i.ks, %bb.dm ], [ 0, %bb.dk ]
  %i.kp = icmp ult i64 %.14637, %1
  br i1 %i.kp, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph638
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 %.14637
  store i8 32, ptr %i.kq, align 1, !tbaa !15
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph638
  %i.kr = add i64 %.14637, 1                      ; 2 uses
  %i.ks = add nuw i64 %.0400636, 1                ; 2 uses
  %exitcond717.not = icmp eq i64 %i.ks, %i.ki
  br i1 %exitcond717.not, label %.loopexit540, label %.lr.ph638, !llvm.loop !26

.loopexit540:                                     ; preds = %bb.dm, %bb.dk
  %.15 = phi i64 [ %i.kn, %bb.dk ], [ %i.kr, %bb.dm ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.kt, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.backedge

bb.dn:                                            ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %trunc = or i8 %.0413, -128
  %i.ku = load i32, ptr %3, align 8               ; 11 uses
  %i.kv = icmp ult i32 %i.ku, 41                  ; 5 uses
  switch i8 %trunc, label %bb.ei [
    i8 -15, label %bb.dw
    i8 -65, label %bb.do
    i8 -6, label %bb.ee
    i8 -20, label %bb.ds
    i8 -22, label %bb.ea
  ]

bb.do:                                            ; preds = %bb.dn
  br i1 %i.kv, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.kw = load ptr, ptr %i.h, align 8
  %i.kx = zext nneg i32 %i.ku to i64
  %i.ky = getelementptr i8, ptr %i.kw, i64 %i.kx
  %i.kz = add nuw nsw i32 %i.ku, 8
  store i32 %i.kz, ptr %3, align 8
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.la = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 8
  store ptr %i.lb, ptr %i.g, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.lc = phi ptr [ %i.ky, %bb.dp ], [ %i.la, %bb.dq ]
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !12
  %i.le = zext i32 %i.ld to i64
  br label %bb.ej

bb.ds:                                            ; preds = %bb.dn
  br i1 %i.kv, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.lf = load ptr, ptr %i.h, align 8
  %i.lg = zext nneg i32 %i.ku to i64
  %i.lh = getelementptr i8, ptr %i.lf, i64 %i.lg
  %i.li = add nuw nsw i32 %i.ku, 8
  store i32 %i.li, ptr %3, align 8
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.lj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 8
  store ptr %i.lk, ptr %i.g, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.ll = phi ptr [ %i.lh, %bb.dt ], [ %i.lj, %bb.du ]
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !37
  br label %bb.ej

bb.dw:                                            ; preds = %bb.dn
  br i1 %i.kv, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ln = load ptr, ptr %i.h, align 8
  %i.lo = zext nneg i32 %i.ku to i64
  %i.lp = getelementptr i8, ptr %i.ln, i64 %i.lo
  %i.lq = add nuw nsw i32 %i.ku, 8
  store i32 %i.lq, ptr %3, align 8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.lr = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lr, i64 8
  store ptr %i.ls, ptr %i.g, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.lt = phi ptr [ %i.lp, %bb.dx ], [ %i.lr, %bb.dy ]
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !39
  br label %bb.ej

bb.ea:                                            ; preds = %bb.dn
  br i1 %i.kv, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.lv = load ptr, ptr %i.h, align 8
  %i.lw = zext nneg i32 %i.ku to i64
  %i.lx = getelementptr i8, ptr %i.lv, i64 %i.lw
  %i.ly = add nuw nsw i32 %i.ku, 8
  store i32 %i.ly, ptr %3, align 8
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.lz = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 8
  store ptr %i.ma, ptr %i.g, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.mb = phi ptr [ %i.lx, %bb.eb ], [ %i.lz, %bb.ec ]
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !37
  br label %bb.ej

bb.ee:                                            ; preds = %bb.dn
  br i1 %i.kv, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.md = load ptr, ptr %i.h, align 8
  %i.me = zext nneg i32 %i.ku to i64
  %i.mf = getelementptr i8, ptr %i.md, i64 %i.me
  %i.mg = add nuw nsw i32 %i.ku, 8
  store i32 %i.mg, ptr %3, align 8
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.mh = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 8
  store ptr %i.mi, ptr %i.g, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.mj = phi ptr [ %i.mf, %bb.ef ], [ %i.mh, %bb.eg ]
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !37
  br label %bb.ej

bb.ei:                                            ; preds = %bb.dn
  unreachable

bb.ej:                                            ; preds = %bb.eh, %bb.ed, %bb.dz, %bb.dv, %bb.dr
  %.0399 = phi i64 [ %i.lu, %bb.dz ], [ %i.le, %bb.dr ], [ %i.mk, %bb.eh ], [ %i.lm, %bb.dv ], [ %i.mc, %bb.ed ]
  %i.ml = load i8, ptr %i.be, align 1, !tbaa !15
  %i.mm = icmp eq i8 %i.ml, 88                    ; 2 uses
  store i8 0, ptr %i.j, align 16, !tbaa !15
  %i.mn = select i1 %i.mm, ptr @.str.1, ptr @.str.2
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %bb.ej
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ek ], [ 64, %bb.ej ] ; 2 uses
  %.131.i.i = phi i64 [ %i.ms, %bb.ek ], [ %.0399, %bb.ej ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.mo = and i64 %.131.i.i, 15
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !15
  %14 = and i64 %indvars.iv.next.i.i, 4294967295  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.e, i64 %14
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !15
  %i.ms = lshr i64 %.131.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ms, 0
  br i1 %.not.i.i, label %u2s.exit.i486, label %bb.ek, !llvm.loop !27

u2s.exit.i486:                                    ; preds = %bb.ek
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 %14 ; 3 uses
  %i.mu = trunc nuw i8 %.0387 to i1
  %i.mv = sub i64 65, %indvars.iv.i.i
  %i.mw = and i64 %i.mv, 4294967295               ; 2 uses
  br i1 %i.mu, label %bb.el, label %x2s.exit

bb.el:                                            ; preds = %u2s.exit.i486
  %i.mx = getelementptr inbounds i8, ptr %i.mt, i64 -2 ; 2 uses
  %i.my = add nuw nsw i64 %i.mw, 2
  store i8 48, ptr %i.mx, align 1, !tbaa !15
  %i.mz = select i1 %i.mm, i8 88, i8 120
  %i.na = getelementptr inbounds i8, ptr %i.mt, i64 -1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !15
  br label %x2s.exit

x2s.exit:                                         ; preds = %u2s.exit.i486, %bb.el
  %.2513 = phi i64 [ %i.my, %bb.el ], [ %i.mw, %u2s.exit.i486 ] ; 4 uses
  %.0.i487 = phi ptr [ %i.mx, %bb.el ], [ %i.mt, %u2s.exit.i486 ]
  %i.nb = icmp eq i32 %.0410, -1
  br i1 %i.nb, label %.thread522, label %bb.em

.thread522:                                       ; preds = %x2s.exit
  %i.nc = trunc nuw i8 %.2393 to i1
  br label %.loopexit546

bb.em:                                            ; preds = %x2s.exit
  %i.nd = sext i32 %.0410 to i64                  ; 2 uses
  %i.ne = call i64 @llvm.usub.sat.i64(i64 %i.nd, i64 %.2513) ; 3 uses
  %i.nf = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not14 = xor i1 %i.nf, true
  %i.ng = icmp ult i64 %.2513, %i.nd              ; 2 uses
  %or.cond16 = select i1 %.not14, i1 %i.ng, i1 false
  br i1 %or.cond16, label %.lr.ph625, label %.loopexit546

.lr.ph625:                                        ; preds = %bb.em, %bb.en
  %.16624 = phi i64 [ %.17, %bb.en ], [ %.0384, %bb.em ] ; 3 uses
  %.0398623 = phi i64 [ %i.nj, %bb.en ], [ 0, %bb.em ]
  %i.nh = icmp ult i64 %.16624, %1
  br i1 %i.nh, label %.sink.split838, label %bb.en

.sink.split838:                                   ; preds = %.lr.ph625
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 %.16624
  store i8 %.1415, ptr %i.ni, align 1, !tbaa !15
  br label %bb.en

bb.en:                                            ; preds = %.lr.ph625, %.sink.split838
  %.17 = add i64 %.16624, 1                       ; 2 uses
  %i.nj = add nuw i64 %.0398623, 1                ; 2 uses
  %i.nk = icmp ult i64 %i.nj, %i.ne
  br i1 %i.nk, label %.lr.ph625, label %.loopexit546, !llvm.loop !28

.loopexit546:                                     ; preds = %bb.en, %.thread522, %bb.em
  %i.nl = phi i1 [ %i.ng, %bb.em ], [ false, %.thread522 ], [ true, %bb.en ]
  %i.nm = phi i1 [ %i.nf, %bb.em ], [ %i.nc, %.thread522 ], [ false, %bb.en ]
  %i.nn = phi i64 [ %i.ne, %bb.em ], [ 0, %.thread522 ], [ %i.ne, %bb.en ] ; 2 uses
  %.18 = phi i64 [ %.0384, %bb.em ], [ %.0384, %.thread522 ], [ %.17, %bb.en ] ; 4 uses
  %i.no = icmp ult i64 %.18, %1
  br i1 %i.no, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %.loopexit546
  %i.np = sub nuw i64 %1, %.18
  %i.nq = call i64 @llvm.umin.i64(i64 %.2513, i64 %i.np)
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 %.18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nr, ptr nonnull align 1 %.0.i487, i64 %i.nq, i1 false)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.loopexit546
  %i.ns = add i64 %.18, %.2513                    ; 2 uses
  %or.cond18 = select i1 %i.nm, i1 %i.nl, i1 false
  %i.nt = icmp ne i64 %i.nn, 0
  %or.cond661 = select i1 %or.cond18, i1 %i.nt, i1 false
  br i1 %or.cond661, label %.lr.ph629, label %.loopexit544

.lr.ph629:                                        ; preds = %bb.ep, %bb.er
  %.19628 = phi i64 [ %i.nw, %bb.er ], [ %i.ns, %bb.ep ] ; 3 uses
  %.0395627 = phi i64 [ %i.nx, %bb.er ], [ 0, %bb.ep ]
  %i.nu = icmp ult i64 %.19628, %1
  br i1 %i.nu, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.lr.ph629
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 %.19628
  store i8 32, ptr %i.nv, align 1, !tbaa !15
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.lr.ph629
  %i.nw = add i64 %.19628, 1                      ; 2 uses
  %i.nx = add nuw i64 %.0395627, 1                ; 2 uses
  %exitcond716.not = icmp eq i64 %i.nx, %i.nn
  br i1 %exitcond716.not, label %.loopexit544, label %.lr.ph629, !llvm.loop !29

.loopexit544:                                     ; preds = %bb.er, %bb.ep
  %.20 = phi i64 [ %i.ns, %bb.ep ], [ %i.nw, %bb.er ]
  %i.ny = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.ny, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %.backedge

bb.es:                                            ; preds = %bb.p
  %i.nz = load i32, ptr %3, align 8               ; 3 uses
  %i.oa = icmp ult i32 %i.nz, 41
  br i1 %i.oa, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ob = load ptr, ptr %i.h, align 8
  %i.oc = zext nneg i32 %i.nz to i64
  %i.od = getelementptr i8, ptr %i.ob, i64 %i.oc
  %i.oe = add nuw nsw i32 %i.nz, 8
  store i32 %i.oe, ptr %3, align 8
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.of = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.og = getelementptr i8, ptr %i.of, i64 8
  store ptr %i.og, ptr %i.g, align 8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.oh = phi ptr [ %i.od, %bb.et ], [ %i.of, %bb.eu ]
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !12
  %i.oj = trunc i32 %i.oi to i8
  %i.ok = sext i32 %.0410 to i64
  %i.ol = add nsw i64 %i.ok, -1
  %i.om = add i32 %.0410, 1
  %i.on = icmp ult i32 %i.om, 3
  %i.oo = select i1 %i.on, i64 0, i64 %i.ol       ; 3 uses
  %i.op = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not19 = xor i1 %i.op, true
  %i.oq = icmp ne i64 %i.oo, 0                    ; 2 uses
  %or.cond21 = select i1 %.not19, i1 %i.oq, i1 false
  br i1 %or.cond21, label %.preheader549, label %.loopexit550

.preheader549:                                    ; preds = %bb.ev, %bb.ew
  %.21620 = phi i64 [ %.22, %bb.ew ], [ %.0384, %bb.ev ] ; 3 uses
  %.0394619 = phi i64 [ %i.ot, %bb.ew ], [ 0, %bb.ev ]
  %i.or = icmp ult i64 %.21620, %1
  br i1 %i.or, label %.sink.split841, label %bb.ew

.sink.split841:                                   ; preds = %.preheader549
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 %.21620
  store i8 %.1415, ptr %i.os, align 1, !tbaa !15
  br label %bb.ew

bb.ew:                                            ; preds = %.preheader549, %.sink.split841
  %.22 = add i64 %.21620, 1                       ; 2 uses
  %i.ot = add nuw i64 %.0394619, 1                ; 2 uses
  %exitcond714.not = icmp eq i64 %i.ot, %i.oo
  br i1 %exitcond714.not, label %.loopexit550, label %.preheader549, !llvm.loop !30

.loopexit550:                                     ; preds = %bb.ew, %bb.ev
  %.23 = phi i64 [ %.0384, %bb.ev ], [ %.22, %bb.ew ] ; 3 uses
  %i.ou = icmp ult i64 %.23, %1
  br i1 %i.ou, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.loopexit550
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 %.23
  store i8 %i.oj, ptr %i.ov, align 1
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.loopexit550
  %i.ow = add i64 %.23, 1                         ; 2 uses
  %or.cond23 = select i1 %i.op, i1 %i.oq, i1 false
  br i1 %or.cond23, label %.preheader547, label %.loopexit548

.preheader547:                                    ; preds = %bb.ey, %bb.fa
  %.24622 = phi i64 [ %i.oz, %bb.fa ], [ %i.ow, %bb.ey ] ; 3 uses
  %.0390621 = phi i64 [ %i.pa, %bb.fa ], [ 0, %bb.ey ]
  %i.ox = icmp ult i64 %.24622, %1
  br i1 %i.ox, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %.preheader547
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 %.24622
  store i8 32, ptr %i.oy, align 1, !tbaa !15
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.preheader547
  %i.oz = add i64 %.24622, 1                      ; 2 uses
  %i.pa = add nuw i64 %.0390621, 1                ; 2 uses
  %exitcond715.not = icmp eq i64 %i.pa, %i.oo
  br i1 %exitcond715.not, label %.loopexit548, label %.preheader547, !llvm.loop !31

.loopexit548:                                     ; preds = %bb.fa, %bb.ey
  %.25 = phi i64 [ %i.ow, %bb.ey ], [ %i.oz, %bb.fa ]
  %i.pb = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.pb, ptr %i.a, align 8, !tbaa !17
  br label %.backedge

bb.fb:                                            ; preds = %bb.p
  %i.pc = load i32, ptr %3, align 8               ; 3 uses
  %i.pd = icmp ult i32 %i.pc, 41
  br i1 %i.pd, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.pe = load ptr, ptr %i.h, align 8
  %i.pf = zext nneg i32 %i.pc to i64
  %i.pg = getelementptr i8, ptr %i.pe, i64 %i.pf
  %i.ph = add nuw nsw i32 %i.pc, 8
  store i32 %i.ph, ptr %3, align 8
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.pi = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  store ptr %i.pj, ptr %i.g, align 8
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.pk = phi ptr [ %i.pg, %bb.fc ], [ %i.pi, %bb.fd ]
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !17 ; 2 uses
  %i.pm = icmp slt i32 %.0406, 0
  br i1 %i.pm, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.pn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pl) #13
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.po = zext nneg i32 %.0406 to i64
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.pp = phi i64 [ %i.pn, %bb.ff ], [ %i.po, %bb.fg ] ; 4 uses
  %i.pq = icmp eq i32 %.0410, -1
  br i1 %i.pq, label %.thread525, label %bb.fi

.thread525:                                       ; preds = %bb.fh
  %i.pr = trunc nuw i8 %.2393 to i1
  br label %.loopexit554

bb.fi:                                            ; preds = %bb.fh
  %i.ps = sext i32 %.0410 to i64                  ; 2 uses
  %i.pt = call i64 @llvm.usub.sat.i64(i64 %i.ps, i64 %i.pp) ; 3 uses
  %i.pu = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not24 = xor i1 %i.pu, true
  %i.pv = icmp ult i64 %i.pp, %i.ps               ; 2 uses
  %or.cond26 = select i1 %.not24, i1 %i.pv, i1 false
  br i1 %or.cond26, label %.lr.ph613, label %.loopexit554

.lr.ph613:                                        ; preds = %bb.fi, %bb.fj
  %.26612 = phi i64 [ %.27, %bb.fj ], [ %.0384, %bb.fi ] ; 3 uses
  %.0389611 = phi i64 [ %i.py, %bb.fj ], [ 0, %bb.fi ]
  %i.pw = icmp ult i64 %.26612, %1
  br i1 %i.pw, label %.sink.split844, label %bb.fj

.sink.split844:                                   ; preds = %.lr.ph613
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 %.26612
  store i8 %.1415, ptr %i.px, align 1, !tbaa !15
  br label %bb.fj

bb.fj:                                            ; preds = %.lr.ph613, %.sink.split844
  %.27 = add i64 %.26612, 1                       ; 2 uses
  %i.py = add nuw i64 %.0389611, 1                ; 2 uses
  %i.pz = icmp ult i64 %i.py, %i.pt
  br i1 %i.pz, label %.lr.ph613, label %.loopexit554, !llvm.loop !32

.loopexit554:                                     ; preds = %bb.fj, %.thread525, %bb.fi
  %i.qa = phi i1 [ %i.pv, %bb.fi ], [ false, %.thread525 ], [ true, %bb.fj ]
  %i.qb = phi i1 [ %i.pu, %bb.fi ], [ %i.pr, %.thread525 ], [ false, %bb.fj ]
  %i.qc = phi i64 [ %i.pt, %bb.fi ], [ 0, %.thread525 ], [ %i.pt, %bb.fj ] ; 2 uses
  %.28 = phi i64 [ %.0384, %bb.fi ], [ %.0384, %.thread525 ], [ %.27, %bb.fj ] ; 4 uses
  %i.qd = icmp ult i64 %.28, %1
  br i1 %i.qd, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.loopexit554
  %i.qe = sub nuw i64 %1, %.28
  %i.qf = call i64 @llvm.umin.i64(i64 %i.pp, i64 %i.qe)
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 %.28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qg, ptr align 1 %i.pl, i64 %i.qf, i1 false)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.loopexit554
  %i.qh = add i64 %.28, %i.pp                     ; 2 uses
  %or.cond28 = select i1 %i.qb, i1 %i.qa, i1 false
  %i.qi = icmp ne i64 %i.qc, 0
  %or.cond662 = select i1 %or.cond28, i1 %i.qi, i1 false
  br i1 %or.cond662, label %.lr.ph617, label %.loopexit552

.lr.ph617:                                        ; preds = %bb.fl, %bb.fn
  %.29616 = phi i64 [ %i.ql, %bb.fn ], [ %i.qh, %bb.fl ] ; 3 uses
  %.0386615 = phi i64 [ %i.qm, %bb.fn ], [ 0, %bb.fl ]
  %i.qj = icmp ult i64 %.29616, %1
  br i1 %i.qj, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.lr.ph617
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 %.29616
  store i8 32, ptr %i.qk, align 1, !tbaa !15
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %.lr.ph617
  %i.ql = add i64 %.29616, 1                      ; 2 uses
  %i.qm = add nuw i64 %.0386615, 1                ; 2 uses
  %exitcond713.not = icmp eq i64 %i.qm, %i.qc
  br i1 %exitcond713.not, label %.loopexit552, label %.lr.ph617, !llvm.loop !33

.loopexit552:                                     ; preds = %bb.fn, %bb.fl
  %.30 = phi i64 [ %i.qh, %bb.fl ], [ %i.ql, %bb.fn ]
  %i.qn = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.qn, ptr %i.a, align 8, !tbaa !17
  br label %.backedge

bb.fo:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.qo = load i32, ptr %3, align 8               ; 3 uses
  %i.qp = icmp ult i32 %i.qo, 41
  br i1 %i.qp, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.qq = load ptr, ptr %i.h, align 8
  %i.qr = zext nneg i32 %i.qo to i64
  %i.qs = getelementptr i8, ptr %i.qq, i64 %i.qr
  %i.qt = add nuw nsw i32 %i.qo, 8
  store i32 %i.qt, ptr %3, align 8
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  %i.qu = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 8
  store ptr %i.qv, ptr %i.g, align 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.qw = phi ptr [ %i.qs, %bb.fp ], [ %i.qu, %bb.fq ]
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !37
  store i8 0, ptr %i.i, align 16, !tbaa !15
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %bb.fr
  %indvars.iv.i.i488 = phi i64 [ %indvars.iv.next.i.i490, %bb.fs ], [ 64, %bb.fr ] ; 2 uses
  %.131.i.i489 = phi i64 [ %i.rc, %bb.fs ], [ %i.qx, %bb.fr ] ; 2 uses
  %indvars.iv.next.i.i490 = add nsw i64 %indvars.iv.i.i488, -1 ; 2 uses
  %i.qy = and i64 %.131.i.i489, 15
  %i.qz = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !15
  %15 = and i64 %indvars.iv.next.i.i490, 4294967295 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.f, i64 %15
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !15
  %i.rc = lshr i64 %.131.i.i489, 4                ; 2 uses
  %.not.i.i491 = icmp eq i64 %i.rc, 0
  br i1 %.not.i.i491, label %x2s.exit494, label %bb.fs, !llvm.loop !27

x2s.exit494:                                      ; preds = %bb.fs
  %i.rd = getelementptr inbounds nuw i8, ptr %i.f, i64 %15 ; 2 uses
  %i.re = sub i64 65, %indvars.iv.i.i488
  %i.rf = and i64 %i.re, 4294967295
  %i.rg = getelementptr inbounds i8, ptr %i.rd, i64 -2 ; 2 uses
  %i.rh = add nuw nsw i64 %i.rf, 2                ; 4 uses
  store i8 48, ptr %i.rg, align 1, !tbaa !15
  %i.ri = getelementptr inbounds i8, ptr %i.rd, i64 -1
  store i8 120, ptr %i.ri, align 1, !tbaa !15
  %i.rj = icmp eq i32 %.0410, -1
  br i1 %i.rj, label %.thread528, label %bb.ft

.thread528:                                       ; preds = %x2s.exit494
  %i.rk = trunc nuw i8 %.2393 to i1
  br label %.loopexit558

bb.ft:                                            ; preds = %x2s.exit494
  %i.rl = sext i32 %.0410 to i64                  ; 2 uses
  %i.rm = call i64 @llvm.usub.sat.i64(i64 %i.rl, i64 %i.rh) ; 3 uses
  %i.rn = trunc nuw i8 %.2393 to i1               ; 2 uses
  %.not29 = xor i1 %i.rn, true
  %i.ro = icmp ult i64 %i.rh, %i.rl               ; 2 uses
  %or.cond31 = select i1 %.not29, i1 %i.ro, i1 false
  br i1 %or.cond31, label %.lr.ph, label %.loopexit558

.lr.ph:                                           ; preds = %bb.ft, %bb.fu
  %.31606 = phi i64 [ %.32, %bb.fu ], [ %.0384, %bb.ft ] ; 3 uses
  %.0385605 = phi i64 [ %i.rr, %bb.fu ], [ 0, %bb.ft ]
  %i.rp = icmp ult i64 %.31606, %1
  br i1 %i.rp, label %.sink.split847, label %bb.fu

.sink.split847:                                   ; preds = %.lr.ph
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 %.31606
  store i8 %.1415, ptr %i.rq, align 1, !tbaa !15
  br label %bb.fu

bb.fu:                                            ; preds = %.lr.ph, %.sink.split847
  %.32 = add i64 %.31606, 1                       ; 2 uses
  %i.rr = add nuw i64 %.0385605, 1                ; 2 uses
  %i.rs = icmp ult i64 %i.rr, %i.rm
  br i1 %i.rs, label %.lr.ph, label %.loopexit558, !llvm.loop !34

.loopexit558:                                     ; preds = %bb.fu, %.thread528, %bb.ft
  %i.rt = phi i1 [ %i.ro, %bb.ft ], [ false, %.thread528 ], [ true, %bb.fu ]
  %i.ru = phi i1 [ %i.rn, %bb.ft ], [ %i.rk, %.thread528 ], [ false, %bb.fu ]
  %i.rv = phi i64 [ %i.rm, %bb.ft ], [ 0, %.thread528 ], [ %i.rm, %bb.fu ] ; 2 uses
  %.33 = phi i64 [ %.0384, %bb.ft ], [ %.0384, %.thread528 ], [ %.32, %bb.fu ] ; 4 uses
  %i.rw = icmp ult i64 %.33, %1
  br i1 %i.rw, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.loopexit558
  %i.rx = sub nuw i64 %1, %.33
  %i.ry = call i64 @llvm.umin.i64(i64 %i.rh, i64 %i.rx)
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 %.33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rz, ptr nonnull align 1 %i.rg, i64 %i.ry, i1 false)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.loopexit558
  %i.sa = add i64 %.33, %i.rh                     ; 2 uses
  %or.cond33 = select i1 %i.ru, i1 %i.rt, i1 false
  %i.sb = icmp ne i64 %i.rv, 0
  %or.cond663 = select i1 %or.cond33, i1 %i.sb, i1 false
  br i1 %or.cond663, label %.lr.ph609, label %.loopexit556

.lr.ph609:                                        ; preds = %bb.fw, %bb.fy
  %.0608 = phi i64 [ %i.sf, %bb.fy ], [ 0, %bb.fw ]
  %.34607 = phi i64 [ %i.se, %bb.fy ], [ %i.sa, %bb.fw ] ; 3 uses
  %i.sc = icmp ult i64 %.34607, %1
  br i1 %i.sc, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %.lr.ph609
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 %.34607
  store i8 32, ptr %i.sd, align 1, !tbaa !15
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %.lr.ph609
  %i.se = add i64 %.34607, 1                      ; 2 uses
  %i.sf = add nuw i64 %.0608, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.sf, %i.rv
  br i1 %exitcond.not, label %.loopexit556, label %.lr.ph609, !llvm.loop !35

.loopexit556:                                     ; preds = %bb.fy, %bb.fw
  %.35 = phi i64 [ %i.sa, %bb.fw ], [ %i.se, %bb.fy ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.sg, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.backedge

bb.fz:                                            ; preds = %bb.p
  unreachable

bb.ga:                                            ; preds = %bb.b
  %i.sh = icmp ult i64 %.0384, %1
  br i1 %i.sh, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 %.0384
  store i8 %i.n, ptr %i.si, align 1, !tbaa !15
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.sj = add i64 %.0384, 1
  %i.sk = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 2 uses
  store ptr %i.sk, ptr %i.a, align 8, !tbaa !17
  br label %.backedge

bb.gd:                                            ; preds = %bb.b
  %i.sl = icmp ult i64 %.0384, %1
  br i1 %i.sl, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 %.0384
  store i8 0, ptr %i.sm, align 1, !tbaa !15
  br label %bb.gh

bb.gf:                                            ; preds = %bb.gd
  %.not482 = icmp eq i64 %1, 0
  br i1 %.not482, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.sn = getelementptr i8, ptr %0, i64 %1
  %i.so = getelementptr i8, ptr %i.sn, i64 -1
  store i8 0, ptr %i.so, align 1, !tbaa !15
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gf, %bb.gg, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %.0384
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold nofree nosync nounwind uwtable
define hidden i64 @je_malloc_snprintf(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ...) local_unnamed_addr #7 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i64 @je_malloc_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #16
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i64 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: cold nounwind uwtable
define hidden void @je_malloc_vcprintf(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %0, null
  %i.c = load ptr, ptr @malloc_message, align 8   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = select i1 %.not, ptr @je_wrtmessage, ptr %i.c
  %.0 = select i1 %i.b, ptr %i.d, ptr %0
  %i.e = call i64 @je_malloc_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %2, ptr noundef %3) #16 ; 0 uses
  call void %.0(ptr noundef %1, ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define hidden void @je_malloc_cprintf(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #9 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @je_malloc_vcprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define hidden void @je_malloc_printf(ptr noundef %0, ...) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load ptr, ptr @malloc_message, align 8   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = select i1 %.not.i, ptr @je_wrtmessage, ptr %i.b
  %i.d = call i64 @je_malloc_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %0, ptr noundef nonnull %1) #16 ; 0 uses
  call void %i.c(ptr noundef null, ptr noundef nonnull %i.a) #14, !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden i64 @je_malloc_read_fd(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
end_hunk_0
