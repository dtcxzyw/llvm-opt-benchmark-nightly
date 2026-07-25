inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a

bb.j:                                             ; preds = %bb.h
  %i.aq = icmp samesign ult i8 %i.ak, -64
  br i1 %i.aq, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.af, -2                   ; 2 uses
  %.not = icmp eq i32 %i.af, 1
  br i1 %.not, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1             ; 4 uses
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = add i8 %i.au, 32
  %or.cond = icmp ult i8 %i.aw, 21
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp samesign ult i8 %i.au, -16         ; 2 uses
  %i.ay = lshr i32 %i.am, 4
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.az
  %i.bb = and i32 %i.av, 7
  %i.bc = and i32 %i.av, 15
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bd
  %i.bf = lshr i32 %i.am, 5
  %.sink492 = select i1 %i.ax, i32 %i.bf, i32 %i.bb
  %.sink491.in.in = select i1 %i.ax, ptr %i.be, ptr %i.ba
  %.sink491.in = load i8, ptr %.sink491.in.in, align 1
  %.sink491 = zext i8 %.sink491.in to i32
  %i.bg = shl nuw nsw i32 1, %.sink492
  %i.bh = and i32 %i.bg, %.sink491
  %.not245 = icmp eq i32 %i.bh, 0
  %spec.select254 = select i1 %.not245, i32 %i.af, i32 %i.ar
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bi = icmp slt i8 %i.au, -64
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bj = add nsw i32 %i.af, -3                   ; 2 uses
  %i.bk = icmp samesign ugt i32 %i.af, 2
  br i1 %i.bk, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1             ; 2 uses
  %i.bo = add i8 %i.bn, 16
  %or.cond5 = icmp ult i8 %i.bo, 5
  br i1 %or.cond5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = lshr i32 %i.av, 4
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = and i8 %i.bn, 7
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 1, %i.bv
  %i.bx = and i32 %i.bw, %i.bt
  %.not244 = icmp eq i32 %i.bx, 0
  %spec.select255 = select i1 %.not244, i32 %i.af, i32 %i.bj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.g, %bb.j, %bb.k, %bb.i, %bb.p, %bb.n, %bb.o, %bb.f
  %.3207 = phi i32 [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ], [ %i.af, %bb.j ], [ 1, %bb.k ], [ %i.af, %bb.n ], [ %spec.select255, %bb.q ], [ %spec.select254, %bb.m ], [ 2, %bb.o ], [ %i.af, %bb.p ]
  %i.by = add nsw i32 %.3207, %i.ab
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.r
  %.1201 = phi i32 [ %i.ac, %bb.c ], [ %i.by, %bb.r ] ; 2 uses
  %.not246 = icmp eq i32 %.0213, 0
  br i1 %.not246, label %.preheader261, label %bb.t

.preheader261:                                    ; preds = %._crit_edge339, %bb.s
  %.2202.ph = phi i32 [ %.1201, %bb.s ], [ %i.mw, %._crit_edge339 ] ; 2 uses
  %.0196.ph = phi ptr [ %i.i, %bb.s ], [ %.3199.lcssa, %._crit_edge339 ] ; 2 uses
  %.0194.ph = phi ptr [ %i.e, %bb.s ], [ %.5.lcssa, %._crit_edge339 ] ; 2 uses
  %i.bz = icmp sgt i32 %.2202.ph, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.ca, align 8
  store i8 0, ptr %i.p, align 8
  br label %.thread260

.lr.ph:                                           ; preds = %.preheader261, %.backedge
  %.0194296 = phi ptr [ %.0194.be, %.backedge ], [ %.0194.ph, %.preheader261 ] ; 7 uses
  %.0196295 = phi ptr [ %.0196.be, %.backedge ], [ %.0196.ph, %.preheader261 ] ; 12 uses
  %.2202294 = phi i32 [ %i.cf, %.backedge ], [ %.2202.ph, %.preheader261 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0194296, i64 1 ; 4 uses
  %i.cc = load i8, ptr %.0194296, align 1         ; 10 uses
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.0196295, i64 1
  store i8 %i.cc, ptr %.0196295, align 1
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.z, %bb.ac
  %.sink = phi i32 [ -1, %bb.u ], [ -3, %bb.z ], [ -2, %bb.ac ]
  %.0196.be = phi ptr [ %i.ce, %bb.u ], [ %i.da, %bb.z ], [ %i.dg, %bb.ac ] ; 2 uses
  %.0194.be = phi ptr [ %i.cb, %bb.u ], [ %i.cx, %bb.z ], [ %i.de, %bb.ac ] ; 2 uses
  %i.cf = add nsw i32 %.2202294, %.sink           ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !20

bb.v:                                             ; preds = %.lr.ph
  %i.ch = zext i8 %i.cc to i32                    ; 2 uses
  %i.ci = icmp samesign ugt i8 %i.cc, -33         ; 2 uses
  br i1 %i.ci, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cj = icmp samesign ult i8 %i.cc, -16
  br i1 %i.cj, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.ck = and i32 %i.ch, 15
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i32
  %i.cp = load i8, ptr %i.cb, align 1             ; 2 uses
  %i.cq = lshr i8 %i.cp, 5
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 1, %i.cr
  %i.ct = and i32 %i.cs, %i.co
  %.not252 = icmp eq i32 %i.ct, 0
  br i1 %.not252, label %.thread.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %.0194296, i64 2
  %i.cv = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.cw = icmp slt i8 %i.cv, -64
  br i1 %i.cw, label %bb.z, label %.thread.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.0194296, i64 3
  %i.cy = getelementptr inbounds nuw i8, ptr %.0196295, i64 1
  store i8 %i.cc, ptr %.0196295, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.0196295, i64 2
  store i8 %i.cp, ptr %i.cy, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.0196295, i64 3
  store i8 %i.cv, ptr %i.cz, align 1
  br label %.backedge

bb.aa:                                            ; preds = %bb.v
  %i.db = icmp samesign ugt i8 %i.cc, -63
  br i1 %i.db, label %bb.ab, label %iter.check576

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i8, ptr %i.cb, align 1             ; 2 uses
  %i.dd = icmp slt i8 %i.dc, -64
  br i1 %i.dd, label %bb.ac, label %.thread.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.0194296, i64 2
  %i.df = getelementptr inbounds nuw i8, ptr %.0196295, i64 1
  store i8 %i.cc, ptr %.0196295, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.0196295, i64 2
  store i8 %i.dc, ptr %i.df, align 1
  br label %.backedge

bb.ad:                                            ; preds = %bb.w
  %i.dh = icmp samesign ult i8 %i.cc, -11
  br i1 %i.dh, label %.thread, label %iter.check576

.thread.loopexit:                                 ; preds = %bb.ab, %bb.x, %bb.y
  %i.di = zext i1 %i.ci to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.ad
  %i.dj = phi i32 [ %i.di, %.thread.loopexit ], [ 1, %bb.ad ]
  %i.dk = icmp samesign ugt i8 %i.cc, -17
  %i.dl = select i1 %i.dk, i32 3, i32 2
  %i.dm = add nuw nsw i32 %i.dl, %i.dj
  br label %.thread260

.thread260:                                       ; preds = %.thread, %bb.t
  %.1220 = phi i8 [ %.0208, %bb.t ], [ 1, %.thread ] ; 4 uses
  %.1218 = phi i32 [ %.0217, %bb.t ], [ %i.dm, %.thread ] ; 9 uses
  %.1214 = phi i32 [ %.0213, %bb.t ], [ %i.ch, %.thread ] ; 2 uses
  %.1209 = phi i8 [ %.0208, %bb.t ], [ 0, %.thread ] ; 17 uses
  %.3203 = phi i32 [ %.1201, %bb.t ], [ %.2202294, %.thread ]
  %.1197 = phi ptr [ %i.i, %bb.t ], [ %.0196295, %.thread ] ; 24 uses
  %.1195 = phi ptr [ %i.e, %bb.t ], [ %i.cb, %.thread ] ; 4 uses
  %.1197593 = ptrtoaddr ptr %.1197 to i64
  %i.dn = zext nneg i8 %.1220 to i32              ; 4 uses
  %i.do = icmp sgt i32 %.1218, %i.dn
  br i1 %i.do, label %.lr.ph308, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

.lr.ph308:                                        ; preds = %.thread260
  %3 = icmp samesign ult i32 %.1218, 3
  %i.dp = icmp eq i32 %.1218, 3
  %i.dq = icmp ult ptr %.1195, %i.g
  br i1 %i.dq, label %.lr.ph540, label %._crit_edge541

bb.ae:                                            ; preds = %bb.aj
  %i.dr = shl i32 %.2215306538, 6
  %i.ds = zext i8 %i.dw to i32
  %i.dt = add nsw i32 %i.dr, %i.ds                ; 2 uses
  %i.du = icmp ult ptr %i.ep, %i.g
  br i1 %i.du, label %.lr.ph540, label %._crit_edge541, !llvm.loop !21

.lr.ph540:                                        ; preds = %.lr.ph308, %bb.ae
  %.2221305539 = phi i8 [ %i.eq, %bb.ae ], [ %.1220, %.lr.ph308 ] ; 3 uses
  %.2215306538 = phi i32 [ %i.dt, %bb.ae ], [ %.1214, %.lr.ph308 ] ; 3 uses
  %.2307537 = phi ptr [ %i.ep, %bb.ae ], [ %.1195, %.lr.ph308 ] ; 3 uses
  %i.dv = phi i32 [ %i.er, %bb.ae ], [ %i.dn, %.lr.ph308 ]
  %i.dw = load i8, ptr %.2307537, align 1         ; 4 uses
  %i.dx = icmp sgt i8 %.2221305539, 1
  %or.cond.i = or i1 %3, %i.dx
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph540
  %i.dy = icmp slt i8 %i.dw, -64
  %i.dz = zext i1 %i.dy to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ag:                                            ; preds = %.lr.ph540
  br i1 %i.dp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ea = and i32 %.2215306538, 15
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @.str, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = lshr i8 %i.dw, 5
  %i.ef = shl nuw i8 1, %i.ee
  %i.eg = and i8 %i.ed, %i.ef
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eh = lshr i8 %i.dw, 4
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = and i32 %.2215306538, 7
  %i.em = shl nuw nsw i32 1, %i.el
  %i.en = trunc nuw i32 %i.em to i8
  %i.eo = and i8 %i.ek, %i.en
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %bb.af, %bb.ah, %bb.ai
  %.0.i = phi i8 [ %i.dz, %bb.af ], [ %i.eg, %bb.ah ], [ %i.eo, %bb.ai ]
  %.not247 = icmp eq i8 %.0.i, 0
  br i1 %.not247, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %.2307537, i64 1 ; 4 uses
  %i.eq = add i8 %.2221305539, 1                  ; 4 uses
  %i.er = sext i8 %i.eq to i32                    ; 4 uses
  %i.es = icmp sgt i32 %.1218, %i.er
  br i1 %i.es, label %bb.ae, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, !llvm.loop !21

._crit_edge541:                                   ; preds = %bb.ae, %.lr.ph308
  %.lcssa508 = phi i32 [ %i.dn, %.lr.ph308 ], [ %i.er, %bb.ae ] ; 2 uses
  %.2307.lcssa = phi ptr [ %.1195, %.lr.ph308 ], [ %i.ep, %bb.ae ] ; 2 uses
  %.2215306.lcssa = phi i32 [ %.1214, %.lr.ph308 ], [ %i.dt, %bb.ae ]
  %.2221305.lcssa = phi i8 [ %.1220, %.lr.ph308 ], [ %i.eq, %bb.ae ] ; 3 uses
  %.2307.lcssa545 = ptrtoaddr ptr %.2307.lcssa to i64
  %i.et = zext nneg i8 %.1209 to i32
  %.neg = sub nsw i32 %i.et, %.lcssa508
  %i.eu = sext i32 %.neg to i64
  %i.ev = getelementptr inbounds i8, ptr %.2307.lcssa, i64 %i.eu ; 7 uses
  %i.ew = icmp slt i8 %.1209, %.2221305.lcssa
  br i1 %i.ew, label %iter.check, label %._crit_edge320

iter.check:                                       ; preds = %._crit_edge541
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.ey = zext i8 %.1209 to i64                   ; 7 uses
  %wide.trip.count = zext nneg i8 %.2221305.lcssa to i64 ; 4 uses
  %i.ez = sub nsw i64 %wide.trip.count, %i.ey     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ez, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fa = sext i32 %.lcssa508 to i64
  %i.fb = add i64 %i.c, %i.fa
  %i.fc = sub i64 %i.fb, %.2307.lcssa545
  %i.fd = add i64 %i.fc, 64
  %diff.check = icmp ult i64 %i.fd, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check546 = icmp ult i64 %i.ez, 32
  br i1 %min.iters.check546, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ez, 24
  %n.vec = and i64 %i.ez, -32                     ; 5 uses
  %i.fe = add nsw i64 %n.vec, %i.ey
  %i.ff = getelementptr i8, ptr %i.ev, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.ex, i64 %i.ey
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ev, i64 %index ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load547 = load <16 x i8>, ptr %i.fg, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1
  store <16 x i8> %wide.load547, ptr %i.fh, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ez, %n.vec
  br i1 %cmp.n, label %._crit_edge320, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec550 = and i64 %i.ez, -8                   ; 4 uses
  %i.fj = add nsw i64 %n.vec550, %i.ey
  %i.fk = getelementptr i8, ptr %i.ev, i64 %n.vec550 ; 2 uses
  %invariant.gep763 = getelementptr i8, ptr %i.ex, i64 %i.ey
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index551 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next554, %vec.epilog.vector.body ] ; 3 uses
  %next.gep552 = getelementptr i8, ptr %i.ev, i64 %index551
  %wide.load553 = load <8 x i8>, ptr %next.gep552, align 1
  %gep764 = getelementptr i8, ptr %invariant.gep763, i64 %index551
  store <8 x i8> %wide.load553, ptr %gep764, align 1
  %index.next554 = add nuw i64 %index551, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next554, %n.vec550
  br i1 %i.fl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n555 = icmp eq i64 %i.ez, %n.vec550
  br i1 %cmp.n555, label %._crit_edge320, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ey, %iter.check ], [ %i.ey, %vector.memcheck ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fj, %vec.epilog.middle.block ] ; 4 uses
  %.3317.ph = phi ptr [ %i.ev, %iter.check ], [ %i.ev, %vector.memcheck ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fk, %vec.epilog.middle.block ] ; 2 uses
  %i.fm = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.fm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3317.prol = phi ptr [ %i.fn, %vec.epilog.scalar.ph.prol ], [ %.3317.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.3317.prol, i64 1 ; 3 uses
  %i.fo = load i8, ptr %.3317.prol, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv.prol
  store i8 %i.fo, ptr %i.fp, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !25

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa677.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.fn, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.3317.unr = phi ptr [ %.3317.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fn, %vec.epilog.scalar.ph.prol ]
  %i.fq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %._crit_edge320, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.3317 = phi ptr [ %i.gd, %vec.epilog.scalar.ph ], [ %.3317.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.3317, i64 1
  %i.ft = load i8, ptr %.3317, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv
  store i8 %i.ft, ptr %i.fu, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.3317, i64 2
  %i.fw = load i8, ptr %i.fs, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  store i8 %i.fw, ptr %i.fy, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.3317, i64 3
  %i.ga = load i8, ptr %i.fv, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  store i8 %i.ga, ptr %i.gc, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.3317, i64 4 ; 2 uses
  %i.ge = load i8, ptr %i.fz, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 3
  store i8 %i.ge, ptr %i.gg, align 1
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
end_hunk_0
begin_hunk_1_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a

vector.memcheck626:                               ; preds = %iter.check648
  %i.kz = sext i32 %.1218 to i64
  %i.la = add i64 %.2198.lcssa627, %i.kz
  %i.lb = zext nneg i8 %.1209 to i64
  %i.lc = add i64 %.2.lcssa628, %i.lb
  %i.ld = sub i64 %i.lc, %i.la
  %diff.check629 = icmp ugt i64 %i.ld, -32
  br i1 %diff.check629, label %.lr.ph338.preheader, label %vector.main.loop.iter.check631

vector.main.loop.iter.check631:                   ; preds = %vector.memcheck626
  %min.iters.check632 = icmp ult i8 %i.kw, 31
  br i1 %min.iters.check632, label %vec.epilog.ph652, label %vector.ph633

vector.ph633:                                     ; preds = %vector.main.loop.iter.check631
  %n.mod.vf634 = and i64 %i.ky, 28
  %n.vec635 = and i64 %i.ky, 480                  ; 6 uses
  %i.le = trunc i64 %n.vec635 to i8
  %i.lf = add i8 %.0.lcssa, %i.le
  %i.lg = getelementptr i8, ptr %i.kt, i64 %n.vec635 ; 2 uses
  %i.lh = getelementptr i8, ptr %.2198.lcssa, i64 %n.vec635 ; 2 uses
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph633
  %index637 = phi i64 [ 0, %vector.ph633 ], [ %index.next642, %vector.body636 ] ; 3 uses
  %next.gep638 = getelementptr i8, ptr %i.kt, i64 %index637 ; 2 uses
  %next.gep639 = getelementptr i8, ptr %.2198.lcssa, i64 %index637 ; 2 uses
  %i.li = getelementptr i8, ptr %next.gep638, i64 16
  %wide.load640 = load <16 x i8>, ptr %next.gep638, align 1
  %wide.load641 = load <16 x i8>, ptr %i.li, align 1
  %i.lj = getelementptr i8, ptr %next.gep639, i64 16
  store <16 x i8> %wide.load640, ptr %next.gep639, align 1
  store <16 x i8> %wide.load641, ptr %i.lj, align 1
  %index.next642 = add nuw i64 %index637, 32      ; 2 uses
  %i.lk = icmp eq i64 %index.next642, %n.vec635
  br i1 %i.lk, label %middle.block643, label %vector.body636, !llvm.loop !36

middle.block643:                                  ; preds = %vector.body636
  %cmp.n644 = icmp eq i64 %i.ky, %n.vec635
  br i1 %cmp.n644, label %._crit_edge339, label %vec.epilog.iter.check650

vec.epilog.iter.check650:                         ; preds = %middle.block643
  %min.epilog.iters.check651 = icmp eq i64 %n.mod.vf634, 0
  br i1 %min.epilog.iters.check651, label %.lr.ph338.preheader, label %vec.epilog.ph652, !prof !17

vec.epilog.ph652:                                 ; preds = %vector.main.loop.iter.check631, %vec.epilog.iter.check650
  %vec.epilog.resume.val645 = phi i64 [ %n.vec635, %vec.epilog.iter.check650 ], [ 0, %vector.main.loop.iter.check631 ]
  %n.vec654 = and i64 %i.ky, 508                  ; 5 uses
  %i.ll = trunc i64 %n.vec654 to i8
  %i.lm = add i8 %.0.lcssa, %i.ll
  %i.ln = getelementptr i8, ptr %i.kt, i64 %n.vec654 ; 2 uses
  %i.lo = getelementptr i8, ptr %.2198.lcssa, i64 %n.vec654 ; 2 uses
  br label %vec.epilog.vector.body655

vec.epilog.vector.body655:                        ; preds = %vec.epilog.vector.body655, %vec.epilog.ph652
  %index656 = phi i64 [ %vec.epilog.resume.val645, %vec.epilog.ph652 ], [ %index.next660, %vec.epilog.vector.body655 ] ; 3 uses
  %next.gep657 = getelementptr i8, ptr %i.kt, i64 %index656
  %next.gep658 = getelementptr i8, ptr %.2198.lcssa, i64 %index656
  %wide.load659 = load <4 x i8>, ptr %next.gep657, align 1
  store <4 x i8> %wide.load659, ptr %next.gep658, align 1
  %index.next660 = add nuw i64 %index656, 4       ; 2 uses
  %i.lp = icmp eq i64 %index.next660, %n.vec654
  br i1 %i.lp, label %vec.epilog.middle.block661, label %vec.epilog.vector.body655, !llvm.loop !37

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body655
  %cmp.n662 = icmp eq i64 %i.ky, %n.vec654
  br i1 %cmp.n662, label %._crit_edge339, label %.lr.ph338.preheader

.lr.ph338.preheader:                              ; preds = %vector.memcheck626, %iter.check648, %vec.epilog.iter.check650, %vec.epilog.middle.block661
  %.1336.ph = phi i8 [ %.0.lcssa, %iter.check648 ], [ %.0.lcssa, %vector.memcheck626 ], [ %i.lf, %vec.epilog.iter.check650 ], [ %i.lm, %vec.epilog.middle.block661 ] ; 4 uses
  %.5335.ph = phi ptr [ %i.kt, %iter.check648 ], [ %i.kt, %vector.memcheck626 ], [ %i.lg, %vec.epilog.iter.check650 ], [ %i.ln, %vec.epilog.middle.block661 ] ; 2 uses
  %.3199334.ph = phi ptr [ %.2198.lcssa, %iter.check648 ], [ %.2198.lcssa, %vector.memcheck626 ], [ %i.lh, %vec.epilog.iter.check650 ], [ %i.lo, %vec.epilog.middle.block661 ] ; 2 uses
  %i.lq = sub i8 %.2221.lcssa, %.1336.ph
  %xtraiter713 = and i8 %i.lq, 7                  ; 2 uses
  %lcmp.mod714.not = icmp eq i8 %xtraiter713, 0
  br i1 %lcmp.mod714.not, label %.lr.ph338.prol.loopexit, label %.lr.ph338.prol

.lr.ph338.prol:                                   ; preds = %.lr.ph338.preheader, %.lr.ph338.prol
  %.1336.prol = phi i8 [ %i.lu, %.lr.ph338.prol ], [ %.1336.ph, %.lr.ph338.preheader ]
  %.5335.prol = phi ptr [ %i.lr, %.lr.ph338.prol ], [ %.5335.ph, %.lr.ph338.preheader ] ; 2 uses
  %.3199334.prol = phi ptr [ %i.lt, %.lr.ph338.prol ], [ %.3199334.ph, %.lr.ph338.preheader ] ; 2 uses
  %prol.iter715 = phi i8 [ %prol.iter715.next, %.lr.ph338.prol ], [ 0, %.lr.ph338.preheader ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.5335.prol, i64 1 ; 3 uses
  %i.ls = load i8, ptr %.5335.prol, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.3199334.prol, i64 1 ; 3 uses
  store i8 %i.ls, ptr %.3199334.prol, align 1
  %i.lu = add nuw nsw i8 %.1336.prol, 1           ; 2 uses
  %prol.iter715.next = add i8 %prol.iter715, 1    ; 2 uses
  %prol.iter715.cmp.not = icmp eq i8 %prol.iter715.next, %xtraiter713
  br i1 %prol.iter715.cmp.not, label %.lr.ph338.prol.loopexit, label %.lr.ph338.prol, !llvm.loop !38

.lr.ph338.prol.loopexit:                          ; preds = %.lr.ph338.prol, %.lr.ph338.preheader
  %.lcssa674.unr = phi ptr [ poison, %.lr.ph338.preheader ], [ %i.lr, %.lr.ph338.prol ]
  %.lcssa673.unr = phi ptr [ poison, %.lr.ph338.preheader ], [ %i.lt, %.lr.ph338.prol ]
  %.1336.unr = phi i8 [ %.1336.ph, %.lr.ph338.preheader ], [ %i.lu, %.lr.ph338.prol ]
  %.5335.unr = phi ptr [ %.5335.ph, %.lr.ph338.preheader ], [ %i.lr, %.lr.ph338.prol ]
  %.3199334.unr = phi ptr [ %.3199334.ph, %.lr.ph338.preheader ], [ %i.lt, %.lr.ph338.prol ]
  %i.lv = sub i8 %.1336.ph, %.2221.lcssa
  %i.lw = icmp ugt i8 %i.lv, -8
  br i1 %i.lw, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %.lr.ph338.prol.loopexit, %.lr.ph338
  %.1336 = phi i8 [ %i.mv, %.lr.ph338 ], [ %.1336.unr, %.lr.ph338.prol.loopexit ]
  %.5335 = phi ptr [ %i.ms, %.lr.ph338 ], [ %.5335.unr, %.lr.ph338.prol.loopexit ] ; 9 uses
  %.3199334 = phi ptr [ %i.mu, %.lr.ph338 ], [ %.3199334.unr, %.lr.ph338.prol.loopexit ] ; 9 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.5335, i64 1
  %i.ly = load i8, ptr %.5335, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %.3199334, i64 1
  store i8 %i.ly, ptr %.3199334, align 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.5335, i64 2
  %i.mb = load i8, ptr %i.lx, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %.3199334, i64 2
  store i8 %i.mb, ptr %i.lz, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %.5335, i64 3
  %i.me = load i8, ptr %i.ma, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %.3199334, i64 3
  store i8 %i.me, ptr %i.mc, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %.5335, i64 4
  %i.mh = load i8, ptr %i.md, align 1
  %i.mi = getelementptr inbounds nuw i8, ptr %.3199334, i64 4
  store i8 %i.mh, ptr %i.mf, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.5335, i64 5
  %i.mk = load i8, ptr %i.mg, align 1
  %i.ml = getelementptr inbounds nuw i8, ptr %.3199334, i64 5
  store i8 %i.mk, ptr %i.mi, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.5335, i64 6
  %i.mn = load i8, ptr %i.mj, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.3199334, i64 6
  store i8 %i.mn, ptr %i.ml, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %.5335, i64 7
  %i.mq = load i8, ptr %i.mm, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %.3199334, i64 7
  store i8 %i.mq, ptr %i.mo, align 1
  %i.ms = getelementptr inbounds nuw i8, ptr %.5335, i64 8 ; 2 uses
  %i.mt = load i8, ptr %i.mp, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %.3199334, i64 8 ; 2 uses
  store i8 %i.mt, ptr %i.mr, align 1
  %i.mv = add nuw nsw i8 %.1336, 8                ; 2 uses
  %exitcond395.not.7 = icmp eq i8 %i.mv, %.2221.lcssa
  br i1 %exitcond395.not.7, label %._crit_edge339, label %.lr.ph338, !llvm.loop !39

._crit_edge339:                                   ; preds = %.lr.ph338.prol.loopexit, %.lr.ph338, %middle.block643, %vec.epilog.middle.block661, %._crit_edge331
  %.3199.lcssa = phi ptr [ %.2198.lcssa, %._crit_edge331 ], [ %i.lo, %vec.epilog.middle.block661 ], [ %i.lh, %middle.block643 ], [ %.lcssa673.unr, %.lr.ph338.prol.loopexit ], [ %i.mu, %.lr.ph338 ]
  %.5.lcssa = phi ptr [ %i.kt, %._crit_edge331 ], [ %i.ln, %vec.epilog.middle.block661 ], [ %i.lg, %middle.block643 ], [ %.lcssa674.unr, %.lr.ph338.prol.loopexit ], [ %i.ms, %.lr.ph338 ]
  %i.mw = sub nsw i32 %.3203, %.1218
  br label %.preheader261, !llvm.loop !20

._crit_edge:                                      ; preds = %.backedge, %.preheader261
  %.0196.lcssa = phi ptr [ %.0196.ph, %.preheader261 ], [ %.0196.be, %.backedge ] ; 2 uses
  %.0194.lcssa = phi ptr [ %.0194.ph, %.preheader261 ], [ %.0194.be, %.backedge ] ; 7 uses
  %i.mx = load i32, ptr %2, align 4
  %i.my = icmp slt i32 %i.mx, 1
  %i.mz = icmp ult ptr %.0194.lcssa, %i.g
  %or.cond256 = select i1 %i.my, i1 %i.mz, i1 false
  br i1 %or.cond256, label %bb.al, label %bb.ba

bb.al:                                            ; preds = %._crit_edge
  %i.na = load ptr, ptr %i.j, align 8
  %i.nb = icmp eq ptr %.0196.lcssa, %i.na
  br i1 %i.nb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 15, ptr %2, align 4
  br label %bb.ba

bb.an:                                            ; preds = %bb.al
  %i.nc = load i8, ptr %.0194.lcssa, align 1      ; 6 uses
  %i.nd = icmp sgt i8 %i.nc, -1
  br i1 %i.nd, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ne = add nsw i8 %i.nc, 62
  %i.nf = icmp ult i8 %i.ne, 51
  br i1 %i.nf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ng = icmp samesign ugt i8 %i.nc, -33
  %i.nh = zext i1 %i.ng to i8
  %i.ni = icmp samesign ugt i8 %i.nc, -17
  %i.nj = select i1 %i.ni, i8 3, i8 2
  %i.nk = add nuw nsw i8 %i.nj, %i.nh
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.nl = phi i8 [ 1, %bb.an ], [ %i.nk, %bb.ap ], [ 0, %bb.ao ] ; 4 uses
  %i.nm = zext nneg i8 %i.nl to i64
  %i.nn = ptrtoint ptr %.0194.lcssa to i64
  %i.no = sub i64 %i.x, %i.nn
  %i.np = icmp slt i64 %i.no, %i.nm
  br i1 %i.np, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.nq = zext i8 %i.nc to i32                    ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  store i8 %i.nc, ptr %i.nr, align 1
  %i.ns = getelementptr inbounds nuw i8, ptr %.0194.lcssa, i64 1 ; 3 uses
  %i.nt = icmp eq ptr %i.ns, %i.g
  br i1 %i.nt, label %._crit_edge301, label %.lr.ph300

.lr.ph300:                                        ; preds = %bb.ar
  %i.nu = icmp samesign ult i8 %i.nl, 3
  %i.nv = icmp eq i8 %i.nl, 3
  br label %bb.as

._crit_edge301:                                   ; preds = %bb.ay, %bb.ar
  %.3216.lcssa = phi i32 [ %i.nq, %bb.ar ], [ %i.ow, %bb.ay ]
  %.lcssa268 = phi i8 [ 1, %bb.ar ], [ %i.ox, %bb.ay ]
  %.lcssa266 = phi ptr [ %i.ns, %bb.ar ], [ %i.pa, %bb.ay ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.3216.lcssa, ptr %i.nw, align 8
  store i8 %.lcssa268, ptr %i.p, align 8
  %i.nx = zext nneg i8 %i.nl to i32
  %i.ny = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.nx, ptr %i.ny, align 4
  br label %bb.ba

bb.as:                                            ; preds = %.lr.ph300, %bb.ay
  %i.nz = phi ptr [ %i.ns, %.lr.ph300 ], [ %i.pa, %bb.ay ] ; 3 uses
  %i.oa = phi i8 [ 1, %.lr.ph300 ], [ %i.ox, %bb.ay ] ; 4 uses
  %.3216298 = phi i32 [ %i.nq, %.lr.ph300 ], [ %i.ow, %bb.ay ] ; 3 uses
  %i.ob = load i8, ptr %i.nz, align 1             ; 5 uses
  %i.oc = icmp sgt i8 %i.oa, 1
  %or.cond.i257 = or i1 %i.nu, %i.oc
  br i1 %or.cond.i257, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.od = icmp slt i8 %i.ob, -64
  %i.oe = zext i1 %i.od to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit259

bb.au:                                            ; preds = %bb.as
  br i1 %i.nv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.of = and i32 %.3216298, 15
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr @.str, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = lshr i8 %i.ob, 5
  %i.ok = shl nuw i8 1, %i.oj
  %i.ol = and i8 %i.oi, %i.ok
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit259

bb.aw:                                            ; preds = %bb.au
  %i.om = lshr i8 %i.ob, 4
  %i.on = zext nneg i8 %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1
  %i.oq = and i32 %.3216298, 7
  %i.or = shl nuw nsw i32 1, %i.oq
  %i.os = trunc nuw i32 %i.or to i8
  %i.ot = and i8 %i.op, %i.os
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit259

_ZN6icu_784UTF812isValidTrailEihii.exit259:       ; preds = %bb.at, %bb.av, %bb.aw
  %.0.i258 = phi i8 [ %i.oe, %bb.at ], [ %i.ol, %bb.av ], [ %i.ot, %bb.aw ]
  %.not251 = icmp eq i8 %.0.i258, 0
  br i1 %.not251, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit259
  store i8 %i.oa, ptr %i.p, align 8
  store i32 12, ptr %2, align 4
  br label %bb.ba

bb.ay:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit259
  %i.ou = shl i32 %.3216298, 6
  %i.ov = zext i8 %i.ob to i32
  %i.ow = add nsw i32 %i.ou, %i.ov                ; 2 uses
  %i.ox = add i8 %i.oa, 1                         ; 2 uses
  %i.oy = sext i8 %i.oa to i64
  %i.oz = getelementptr inbounds i8, ptr %i.nr, i64 %i.oy
  store i8 %i.ob, ptr %i.oz, align 1
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nz, i64 1 ; 3 uses
  %i.pb = icmp eq ptr %i.pa, %i.g
  br i1 %i.pb, label %._crit_edge301, label %bb.as, !llvm.loop !40

bb.az:                                            ; preds = %bb.aq
  store i32 -127, ptr %2, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.am, %._crit_edge301, %bb.ax, %bb.az, %._crit_edge
  %.7 = phi ptr [ %.0194.lcssa, %bb.am ], [ %.lcssa266, %._crit_edge301 ], [ %i.nz, %bb.ax ], [ %.0194.lcssa, %bb.az ], [ %.0194.lcssa, %._crit_edge ]
  store ptr %.7, ptr %i.d, align 8
  store ptr %.0196.lcssa, ptr %i.h, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge326, %._crit_edge320, %bb.e
  ret void
}

declare void @ucnv_getCompleteUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !6, !15, !16}
!19 = distinct !{!19, !6, !15}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6, !15, !16}
!23 = !{!"branch_weights", i32 8, i32 24}
!24 = distinct !{!24, !6, !15, !16}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !6, !15}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !6, !15, !16}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !6, !15, !16}
!32 = distinct !{!32, !6, !15, !16}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !6, !15}
!35 = distinct !{!35, !6, !15}
!36 = distinct !{!36, !6, !15, !16}
!37 = distinct !{!37, !6, !15, !16}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !6, !15}
!40 = distinct !{!40, !6}
end_hunk_1
