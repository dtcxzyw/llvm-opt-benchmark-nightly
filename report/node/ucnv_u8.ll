inline.NumInlined: 14
inline.NumDeleted: 3
begin_hunk_0_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %.0194297, i64 1 ; 6 uses
  %i.cd = load i8, ptr %.0194297, align 1         ; 10 uses
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.0196296, i64 1
  store i8 %i.cd, ptr %.0196296, align 1
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.z, %bb.ac
  %.sink = phi i32 [ -1, %bb.u ], [ -3, %bb.z ], [ -2, %bb.ac ]
  %.0196.be = phi ptr [ %i.cf, %bb.u ], [ %i.db, %bb.z ], [ %i.dh, %bb.ac ] ; 2 uses
  %.0194.be = phi ptr [ %i.cc, %bb.u ], [ %i.cy, %bb.z ], [ %i.df, %bb.ac ] ; 2 uses
  %i.cg = add nsw i32 %.2202295, %.sink           ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !20

bb.v:                                             ; preds = %.lr.ph
  %i.ci = zext i8 %i.cd to i32                    ; 4 uses
  %i.cj = icmp samesign ugt i8 %i.cd, -33         ; 2 uses
  br i1 %i.cj, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.ck = icmp samesign ult i8 %i.cd, -16
  br i1 %i.ck, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.cl = and i32 %i.ci, 15
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = load i8, ptr %i.cc, align 1             ; 2 uses
  %i.cr = lshr i8 %i.cq, 5
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 1, %i.cs
  %i.cu = and i32 %i.ct, %i.cp
  %.not252 = icmp eq i32 %i.cu, 0
  br i1 %.not252, label %.thread.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %.0194297, i64 2
  %i.cw = load i8, ptr %i.cv, align 1             ; 2 uses
  %i.cx = icmp slt i8 %i.cw, -64
  br i1 %i.cx, label %bb.z, label %.thread.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw i8, ptr %.0194297, i64 3
  %i.cz = getelementptr inbounds nuw i8, ptr %.0196296, i64 1
  store i8 %i.cd, ptr %.0196296, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.0196296, i64 2
  store i8 %i.cq, ptr %i.cz, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.0196296, i64 3
  store i8 %i.cw, ptr %i.da, align 1
  br label %.backedge

bb.aa:                                            ; preds = %bb.v
  %i.dc = icmp samesign ugt i8 %i.cd, -63
  br i1 %i.dc, label %bb.ab, label %.thread260

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load i8, ptr %i.cc, align 1             ; 2 uses
  %i.de = icmp slt i8 %i.dd, -64
  br i1 %i.de, label %bb.ac, label %.thread.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %.0194297, i64 2
  %i.dg = getelementptr inbounds nuw i8, ptr %.0196296, i64 1
  store i8 %i.cd, ptr %.0196296, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.0196296, i64 2
  store i8 %i.dd, ptr %i.dg, align 1
  br label %.backedge

bb.ad:                                            ; preds = %bb.w
  %i.di = icmp samesign ult i8 %i.cd, -11
  br i1 %i.di, label %.thread, label %.thread260

.thread.loopexit:                                 ; preds = %bb.ab, %bb.x, %bb.y
  %i.dj = zext i1 %i.cj to i8
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.ad
  %i.dk = phi i8 [ %i.dj, %.thread.loopexit ], [ 1, %bb.ad ]
  %i.dl = icmp samesign ugt i8 %i.cd, -17
  %i.dm = select i1 %i.dl, i8 3, i8 2
  %i.dn = add nuw nsw i8 %i.dm, %i.dk
  br label %.thread260

.thread260:                                       ; preds = %bb.aa, %.thread, %bb.ad, %bb.t
  %.1220 = phi i8 [ %.0208, %bb.t ], [ 1, %bb.ad ], [ 1, %.thread ], [ 1, %bb.aa ] ; 4 uses
  %.1218 = phi i8 [ %.0217, %bb.t ], [ 0, %bb.ad ], [ %i.dn, %.thread ], [ 0, %bb.aa ]
  %.1214 = phi i32 [ %.0213, %bb.t ], [ %i.ci, %bb.ad ], [ %i.ci, %.thread ], [ %i.ci, %bb.aa ] ; 2 uses
  %.1209 = phi i8 [ %.0208, %bb.t ], [ 0, %bb.ad ], [ 0, %.thread ], [ 0, %bb.aa ] ; 16 uses
  %.3203 = phi i32 [ %.1201, %bb.t ], [ %.2202295, %bb.ad ], [ %.2202295, %.thread ], [ %.2202295, %bb.aa ]
  %.1197 = phi ptr [ %i.i, %bb.t ], [ %.0196296, %bb.ad ], [ %.0196296, %.thread ], [ %.0196296, %bb.aa ] ; 23 uses
  %.1195 = phi ptr [ %i.e, %bb.t ], [ %i.cc, %bb.ad ], [ %i.cc, %.thread ], [ %i.cc, %bb.aa ] ; 3 uses
  %.1197589 = ptrtoaddr ptr %.1197 to i64
  %.1218.fr = freeze i8 %.1218                    ; 13 uses
  %i.do = icmp slt i8 %.1220, %.1218.fr
  br i1 %i.do, label %.lr.ph311, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

.lr.ph311:                                        ; preds = %.thread260
  %i.dp = icmp samesign ult i8 %.1218.fr, 3
  %i.dq = icmp eq i8 %.1218.fr, 3
  br i1 %i.dp, label %.lr.ph311.split.us, label %.lr.ph311.split

.lr.ph311.split.us:                               ; preds = %.lr.ph311, %bb.ae
  %.2310.us = phi ptr [ %i.du, %bb.ae ], [ %.1195, %.lr.ph311 ] ; 5 uses
  %.2215309.us = phi i32 [ %i.dy, %bb.ae ], [ %.1214, %.lr.ph311 ] ; 2 uses
  %.2221308.us = phi i8 [ %i.dv, %bb.ae ], [ %.1220, %.lr.ph311 ] ; 3 uses
  %i.dr = icmp ult ptr %.2310.us, %i.g
  br i1 %i.dr, label %_ZN6icu_784UTF812isValidTrailEihii.exit.us, label %.split.us

_ZN6icu_784UTF812isValidTrailEihii.exit.us:       ; preds = %.lr.ph311.split.us
  %i.ds = load i8, ptr %.2310.us, align 1         ; 2 uses
  %i.dt = icmp sgt i8 %i.ds, -65
  br i1 %i.dt, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit.us
  %i.du = getelementptr inbounds nuw i8, ptr %.2310.us, i64 1 ; 2 uses
  %i.dv = add nuw nsw i8 %.2221308.us, 1          ; 2 uses
  %i.dw = shl i32 %.2215309.us, 6
  %i.dx = zext i8 %i.ds to i32
  %i.dy = add nsw i32 %i.dw, %i.dx
  %exitcond399.not = icmp eq i8 %i.dv, %.1218.fr
  br i1 %exitcond399.not, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.thread, label %.lr.ph311.split.us, !llvm.loop !21

.lr.ph311.split:                                  ; preds = %.lr.ph311, %bb.ak
  %.2310 = phi ptr [ %i.et, %bb.ak ], [ %.1195, %.lr.ph311 ] ; 5 uses
  %.2215309 = phi i32 [ %i.ex, %bb.ak ], [ %.1214, %.lr.ph311 ] ; 4 uses
  %.2221308 = phi i8 [ %i.eu, %bb.ak ], [ %.1220, %.lr.ph311 ] ; 4 uses
  %i.dz = icmp ult ptr %.2310, %i.g
  br i1 %i.dz, label %bb.af, label %.split.us

bb.af:                                            ; preds = %.lr.ph311.split
  %i.ea = load i8, ptr %.2310, align 1            ; 4 uses
  %i.eb = icmp samesign ugt i8 %.2221308, 1
  br i1 %i.eb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ec = icmp slt i8 %i.ea, -64
  %i.ed = zext i1 %i.ec to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ah:                                            ; preds = %bb.af
  br i1 %i.dq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ee = and i32 %.2215309, 15
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = lshr i8 %i.ea, 5
  %i.ej = shl nuw i8 1, %i.ei
  %i.ek = and i8 %i.eh, %i.ej
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.aj:                                            ; preds = %bb.ah
  %i.el = lshr i8 %i.ea, 4
  %i.em = zext nneg i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = and i32 %.2215309, 7
  %i.eq = shl nuw nsw i32 1, %i.ep
  %i.er = trunc nuw i32 %i.eq to i8
  %i.es = and i8 %i.eo, %i.er
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %bb.ag, %bb.ai, %bb.aj
  %.0.i = phi i8 [ %i.ed, %bb.ag ], [ %i.ek, %bb.ai ], [ %i.es, %bb.aj ]
  %.not247 = icmp eq i8 %.0.i, 0
  br i1 %.not247, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, label %bb.ak

bb.ak:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.et = getelementptr inbounds nuw i8, ptr %.2310, i64 1 ; 2 uses
  %i.eu = add nuw nsw i8 %.2221308, 1             ; 2 uses
  %i.ev = shl i32 %.2215309, 6
  %i.ew = zext i8 %i.ea to i32
  %i.ex = add nsw i32 %i.ev, %i.ew
  %exitcond.not = icmp eq i8 %i.eu, %.1218.fr
  br i1 %exitcond.not, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.thread, label %.lr.ph311.split, !llvm.loop !21

.split.us:                                        ; preds = %.lr.ph311.split, %.lr.ph311.split.us
  %.us-phi = phi i8 [ %.2221308.us, %.lr.ph311.split.us ], [ %.2221308, %.lr.ph311.split ] ; 4 uses
  %.us-phi320 = phi i32 [ %.2215309.us, %.lr.ph311.split.us ], [ %.2215309, %.lr.ph311.split ]
  %.us-phi321 = phi ptr [ %.2310.us, %.lr.ph311.split.us ], [ %.2310, %.lr.ph311.split ] ; 2 uses
  %.us-phi321540 = ptrtoaddr ptr %.us-phi321 to i64
  %i.ey = zext nneg i8 %.us-phi to i64
  %i.ez = zext nneg i8 %.1218.fr to i32
  %i.fa = zext i8 %.1209 to i64                   ; 8 uses
  %.neg = sub nsw i64 %i.fa, %i.ey
  %i.fb = getelementptr inbounds i8, ptr %.us-phi321, i64 %.neg ; 7 uses
  %i.fc = icmp slt i8 %.1209, %.us-phi
  br i1 %i.fc, label %iter.check, label %._crit_edge332

iter.check:                                       ; preds = %.split.us
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %wide.trip.count = zext nneg i8 %.us-phi to i64 ; 5 uses
  %i.fe = sub nsw i64 %wide.trip.count, %i.fa     ; 7 uses
  %min.iters.check = icmp ult i64 %i.fe, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ff = add i64 %i.c, %wide.trip.count
  %i.fg = add i64 %i.ff, 65
  %i.fh = sub i64 %i.fg, %.us-phi321540
  %diff.check = icmp ult i64 %i.fh, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check541 = icmp ult i64 %i.fe, 32
  br i1 %min.iters.check541, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.fe, 28
  %n.vec = and i64 %i.fe, -32                     ; 5 uses
  %i.fi = add nsw i64 %n.vec, %i.fa
  %i.fj = getelementptr i8, ptr %i.fb, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.fd, i64 %i.fa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.fb, i64 %index ; 2 uses
  %i.fk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load542 = load <16 x i8>, ptr %i.fk, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1
  store <16 x i8> %wide.load542, ptr %i.fl, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %._crit_edge332, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec545 = and i64 %i.fe, -4                   ; 4 uses
  %i.fn = add nsw i64 %n.vec545, %i.fa
  %i.fo = getelementptr i8, ptr %i.fb, i64 %n.vec545 ; 2 uses
  %invariant.gep776 = getelementptr i8, ptr %i.fd, i64 %i.fa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index546 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next549, %vec.epilog.vector.body ] ; 3 uses
  %next.gep547 = getelementptr i8, ptr %i.fb, i64 %index546
  %wide.load548 = load <4 x i8>, ptr %next.gep547, align 1
  %gep777 = getelementptr i8, ptr %invariant.gep776, i64 %index546
  store <4 x i8> %wide.load548, ptr %gep777, align 1
  %index.next549 = add nuw i64 %index546, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next549, %n.vec545
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n550 = icmp eq i64 %i.fe, %n.vec545
  br i1 %cmp.n550, label %._crit_edge332, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.fa, %iter.check ], [ %i.fa, %vector.memcheck ], [ %i.fi, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ] ; 4 uses
  %.3329.ph = phi ptr [ %i.fb, %iter.check ], [ %i.fb, %vector.memcheck ], [ %i.fj, %vec.epilog.iter.check ], [ %i.fo, %vec.epilog.middle.block ] ; 2 uses
  %i.fq = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.fq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3329.prol = phi ptr [ %i.fr, %vec.epilog.scalar.ph.prol ], [ %.3329.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.3329.prol, i64 1 ; 3 uses
  %i.fs = load i8, ptr %.3329.prol, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fd, i64 %indvars.iv.prol
  store i8 %i.fs, ptr %i.ft, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !24

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa673.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.fr, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.3329.unr = phi ptr [ %.3329.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fr, %vec.epilog.scalar.ph.prol ]
  %i.fu = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fv = icmp ugt i64 %i.fu, -4
  br i1 %i.fv, label %._crit_edge332, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.3329 = phi ptr [ %i.gh, %vec.epilog.scalar.ph ], [ %.3329.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.3329, i64 1
  %i.fx = load i8, ptr %.3329, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fd, i64 %indvars.iv
  store i8 %i.fx, ptr %i.fy, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.3329, i64 2
  %i.ga = load i8, ptr %i.fw, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fd, i64 %indvars.iv
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store i8 %i.ga, ptr %i.gc, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.3329, i64 3
  %i.ge = load i8, ptr %i.fz, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fd, i64 %indvars.iv
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  store i8 %i.ge, ptr %i.gg, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.3329, i64 4 ; 2 uses
  %i.gi = load i8, ptr %i.gd, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %indvars.iv
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 3
  store i8 %i.gi, ptr %i.gk, align 1
  %exitcond401.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond401.not.3, label %._crit_edge332, label %vec.epilog.scalar.ph, !llvm.loop !26

._crit_edge332:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.split.us
  %.3.lcssa = phi ptr [ %i.fb, %.split.us ], [ %i.fo, %vec.epilog.middle.block ], [ %i.fj, %middle.block ], [ %.lcssa673.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.gh, %vec.epilog.scalar.ph ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.us-phi320, ptr %i.gl, align 8
  store i8 %.us-phi, ptr %i.p, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.ez, ptr %i.gm, align 4
  store ptr %.3.lcssa, ptr %i.d, align 8
  store ptr %.1197, ptr %i.h, align 8
  br label %bb.bc

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.thread: ; preds = %bb.ak, %bb.ae
  %.2.lcssa.ph = phi ptr [ %i.du, %bb.ae ], [ %i.et, %bb.ak ]
  %i.gn = zext nneg i8 %.1218.fr to i32
  br label %.preheader

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge: ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit, %_ZN6icu_784UTF812isValidTrailEihii.exit.us, %.thread260
  %.2221.lcssa307 = phi i8 [ %.1220, %.thread260 ], [ %.2221308.us, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %.2221308, %_ZN6icu_784UTF812isValidTrailEihii.exit ] ; 5 uses
  %.2.lcssa = phi ptr [ %.1195, %.thread260 ], [ %.2310.us, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %.2310, %_ZN6icu_784UTF812isValidTrailEihii.exit ] ; 3 uses
  %.2.lcssa554 = ptrtoaddr ptr %.2.lcssa to i64
  %i.go = zext nneg i8 %.2221.lcssa307 to i32     ; 2 uses
  %.not248 = icmp eq i8 %.2221.lcssa307, %.1218.fr
  br i1 %.not248, label %.preheader, label %bb.al

.preheader:                                       ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.thread, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.gp = phi i32 [ %i.gn, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.thread ], [ %i.go, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge ] ; 3 uses
  %.2.lcssa435 = phi ptr [ %.2.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.thread ], [ %.2.lcssa, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge ] ; 2 uses
  %.2.lcssa435624 = ptrtoaddr ptr %.2.lcssa435 to i64
  %i.gq = icmp sgt i8 %.1209, 0
  br i1 %i.gq, label %iter.check606, label %._crit_edge343

iter.check606:                                    ; preds = %.preheader
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 11 uses
  %wide.trip.count410 = zext nneg i8 %.1209 to i64 ; 8 uses
  %min.iters.check591 = icmp ult i8 %.1209, 4
  br i1 %min.iters.check591, label %vec.epilog.scalar.ph607.preheader, label %vector.memcheck588

vector.memcheck588:                               ; preds = %iter.check606
  %i.gs = add i64 %.1197589, -65
  %i.gt = sub i64 %i.gs, %i.c
  %diff.check590 = icmp ult i64 %i.gt, 16
  br i1 %diff.check590, label %vec.epilog.scalar.ph607.preheader, label %vector.main.loop.iter.check592

vector.main.loop.iter.check592:                   ; preds = %vector.memcheck588
  %min.iters.check593 = icmp ult i8 %.1209, 16
  br i1 %min.iters.check593, label %vec.epilog.ph610, label %vector.ph594

vector.ph594:                                     ; preds = %vector.main.loop.iter.check592
  %n.mod.vf595 = and i64 %wide.trip.count410, 12
  %n.vec596 = and i64 %wide.trip.count410, 112    ; 10 uses
  %i.gu = getelementptr i8, ptr %.1197, i64 %n.vec596 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %wide.load600 = load <8 x i8>, ptr %i.gr, align 1
  %wide.load601 = load <8 x i8>, ptr %i.gv, align 1
  %i.gw = getelementptr i8, ptr %.1197, i64 8
  store <8 x i8> %wide.load600, ptr %.1197, align 1
  store <8 x i8> %wide.load601, ptr %i.gw, align 1
  %i.gx = icmp eq i64 %n.vec596, 16
  br i1 %i.gx, label %middle.block603, label %vector.body597.1

vector.body597.1:                                 ; preds = %vector.ph594
  %next.gep599.1 = getelementptr i8, ptr %.1197, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  %wide.load600.1 = load <8 x i8>, ptr %i.gy, align 1
  %wide.load601.1 = load <8 x i8>, ptr %i.gz, align 1
  %i.ha = getelementptr i8, ptr %.1197, i64 24
  store <8 x i8> %wide.load600.1, ptr %next.gep599.1, align 1
  store <8 x i8> %wide.load601.1, ptr %i.ha, align 1
  %i.hb = icmp eq i64 %n.vec596, 32
  br i1 %i.hb, label %middle.block603, label %vector.body597.2

vector.body597.2:                                 ; preds = %vector.body597.1
  %next.gep599.2 = getelementptr i8, ptr %.1197, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  %wide.load600.2 = load <8 x i8>, ptr %i.hc, align 1
  %wide.load601.2 = load <8 x i8>, ptr %i.hd, align 1
  %i.he = getelementptr i8, ptr %.1197, i64 40
  store <8 x i8> %wide.load600.2, ptr %next.gep599.2, align 1
  store <8 x i8> %wide.load601.2, ptr %i.he, align 1
  %i.hf = icmp eq i64 %n.vec596, 48
  br i1 %i.hf, label %middle.block603, label %vector.body597.3

vector.body597.3:                                 ; preds = %vector.body597.2
  %next.gep599.3 = getelementptr i8, ptr %.1197, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %wide.load600.3 = load <8 x i8>, ptr %i.hg, align 1
  %wide.load601.3 = load <8 x i8>, ptr %i.hh, align 1
  %i.hi = getelementptr i8, ptr %.1197, i64 56
  store <8 x i8> %wide.load600.3, ptr %next.gep599.3, align 1
  store <8 x i8> %wide.load601.3, ptr %i.hi, align 1
  %i.hj = icmp eq i64 %n.vec596, 64
  br i1 %i.hj, label %middle.block603, label %vector.body597.4

vector.body597.4:                                 ; preds = %vector.body597.3
  %next.gep599.4 = getelementptr i8, ptr %.1197, i64 64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %wide.load600.4 = load <8 x i8>, ptr %i.hk, align 1
  %wide.load601.4 = load <8 x i8>, ptr %i.hl, align 1
  %i.hm = getelementptr i8, ptr %.1197, i64 72
  store <8 x i8> %wide.load600.4, ptr %next.gep599.4, align 1
  store <8 x i8> %wide.load601.4, ptr %i.hm, align 1
  %i.hn = icmp eq i64 %n.vec596, 80
  br i1 %i.hn, label %middle.block603, label %vector.body597.5

vector.body597.5:                                 ; preds = %vector.body597.4
  %next.gep599.5 = getelementptr i8, ptr %.1197, i64 80
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 145
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 153
  %wide.load600.5 = load <8 x i8>, ptr %i.ho, align 1
  %wide.load601.5 = load <8 x i8>, ptr %i.hp, align 1
  %i.hq = getelementptr i8, ptr %.1197, i64 88
  store <8 x i8> %wide.load600.5, ptr %next.gep599.5, align 1
  store <8 x i8> %wide.load601.5, ptr %i.hq, align 1
  %i.hr = icmp eq i64 %n.vec596, 96
  br i1 %i.hr, label %middle.block603, label %vector.body597.6

vector.body597.6:                                 ; preds = %vector.body597.5
  %next.gep599.6 = getelementptr i8, ptr %.1197, i64 96
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 161
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 169
  %wide.load600.6 = load <8 x i8>, ptr %i.hs, align 1
  %wide.load601.6 = load <8 x i8>, ptr %i.ht, align 1
  %i.hu = getelementptr i8, ptr %.1197, i64 104
  store <8 x i8> %wide.load600.6, ptr %next.gep599.6, align 1
  store <8 x i8> %wide.load601.6, ptr %i.hu, align 1
  br label %middle.block603

middle.block603:                                  ; preds = %vector.body597.6, %vector.body597.5, %vector.body597.4, %vector.body597.3, %vector.body597.2, %vector.body597.1, %vector.ph594
  %cmp.n604 = icmp eq i64 %n.vec596, %wide.trip.count410
  br i1 %cmp.n604, label %._crit_edge343, label %vec.epilog.iter.check608

vec.epilog.iter.check608:                         ; preds = %middle.block603
  %min.epilog.iters.check609 = icmp eq i64 %n.mod.vf595, 0
  br i1 %min.epilog.iters.check609, label %vec.epilog.scalar.ph607.preheader, label %vec.epilog.ph610, !prof !27

vec.epilog.ph610:                                 ; preds = %vector.main.loop.iter.check592, %vec.epilog.iter.check608
  %vec.epilog.resume.val605 = phi i64 [ %n.vec596, %vec.epilog.iter.check608 ], [ 0, %vector.main.loop.iter.check592 ]
  %n.vec612 = and i64 %wide.trip.count410, 124    ; 4 uses
  %i.hv = getelementptr i8, ptr %.1197, i64 %n.vec612 ; 2 uses
  br label %vec.epilog.vector.body613

vec.epilog.vector.body613:                        ; preds = %vec.epilog.vector.body613, %vec.epilog.ph610
  %index614 = phi i64 [ %vec.epilog.resume.val605, %vec.epilog.ph610 ], [ %index.next617, %vec.epilog.vector.body613 ] ; 3 uses
  %next.gep615 = getelementptr i8, ptr %.1197, i64 %index614
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gr, i64 %index614
  %wide.load616 = load <4 x i8>, ptr %i.hw, align 1
  store <4 x i8> %wide.load616, ptr %next.gep615, align 1
  %index.next617 = add nuw i64 %index614, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next617, %n.vec612
  br i1 %i.hx, label %vec.epilog.middle.block618, label %vec.epilog.vector.body613, !llvm.loop !28

vec.epilog.middle.block618:                       ; preds = %vec.epilog.vector.body613
  %cmp.n619 = icmp eq i64 %n.vec612, %wide.trip.count410
  br i1 %cmp.n619, label %._crit_edge343, label %vec.epilog.scalar.ph607.preheader

vec.epilog.scalar.ph607.preheader:                ; preds = %vector.memcheck588, %iter.check606, %vec.epilog.iter.check608, %vec.epilog.middle.block618
  %indvars.iv407.ph = phi i64 [ 0, %iter.check606 ], [ 0, %vector.memcheck588 ], [ %n.vec596, %vec.epilog.iter.check608 ], [ %n.vec612, %vec.epilog.middle.block618 ] ; 4 uses
  %.2198340.ph = phi ptr [ %.1197, %iter.check606 ], [ %.1197, %vector.memcheck588 ], [ %i.gu, %vec.epilog.iter.check608 ], [ %i.hv, %vec.epilog.middle.block618 ] ; 2 uses
  %i.hy = sub nsw i64 %wide.trip.count410, %indvars.iv407.ph
  %xtraiter716 = and i64 %i.hy, 7                 ; 2 uses
  %lcmp.mod717.not = icmp eq i64 %xtraiter716, 0
  br i1 %lcmp.mod717.not, label %vec.epilog.scalar.ph607.prol.loopexit, label %vec.epilog.scalar.ph607.prol

vec.epilog.scalar.ph607.prol:                     ; preds = %vec.epilog.scalar.ph607.preheader, %vec.epilog.scalar.ph607.prol
  %indvars.iv407.prol = phi i64 [ %indvars.iv.next408.prol, %vec.epilog.scalar.ph607.prol ], [ %indvars.iv407.ph, %vec.epilog.scalar.ph607.preheader ] ; 2 uses
  %.2198340.prol = phi ptr [ %i.ib, %vec.epilog.scalar.ph607.prol ], [ %.2198340.ph, %vec.epilog.scalar.ph607.preheader ] ; 2 uses
  %prol.iter718 = phi i64 [ %prol.iter718.next, %vec.epilog.scalar.ph607.prol ], [ 0, %vec.epilog.scalar.ph607.preheader ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv407.prol
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.2198340.prol, i64 1 ; 3 uses
  store i8 %i.ia, ptr %.2198340.prol, align 1
  %indvars.iv.next408.prol = add nuw nsw i64 %indvars.iv407.prol, 1 ; 2 uses
  %prol.iter718.next = add i64 %prol.iter718, 1   ; 2 uses
  %prol.iter718.cmp.not = icmp eq i64 %prol.iter718.next, %xtraiter716
  br i1 %prol.iter718.cmp.not, label %vec.epilog.scalar.ph607.prol.loopexit, label %vec.epilog.scalar.ph607.prol, !llvm.loop !29

vec.epilog.scalar.ph607.prol.loopexit:            ; preds = %vec.epilog.scalar.ph607.prol, %vec.epilog.scalar.ph607.preheader
  %.lcssa671.unr = phi ptr [ poison, %vec.epilog.scalar.ph607.preheader ], [ %i.ib, %vec.epilog.scalar.ph607.prol ]
  %indvars.iv407.unr = phi i64 [ %indvars.iv407.ph, %vec.epilog.scalar.ph607.preheader ], [ %indvars.iv.next408.prol, %vec.epilog.scalar.ph607.prol ]
  %.2198340.unr = phi ptr [ %.2198340.ph, %vec.epilog.scalar.ph607.preheader ], [ %i.ib, %vec.epilog.scalar.ph607.prol ]
  %i.ic = sub nsw i64 %indvars.iv407.ph, %wide.trip.count410
  %i.id = icmp ugt i64 %i.ic, -8
  br i1 %i.id, label %._crit_edge343, label %vec.epilog.scalar.ph607

bb.al:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.ie = zext nneg i8 %.1209 to i32
  %.neg253 = sub nsw i32 %i.ie, %i.go
  %i.if = sext i32 %.neg253 to i64
  %i.ig = getelementptr inbounds i8, ptr %.2.lcssa, i64 %i.if ; 7 uses
  %i.ih = icmp slt i8 %.1209, %.2221.lcssa307
  br i1 %i.ih, label %iter.check572, label %._crit_edge338

iter.check572:                                    ; preds = %bb.al
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.ij = zext i8 %.1209 to i64                   ; 7 uses
  %wide.trip.count405 = zext nneg i8 %.2221.lcssa307 to i64 ; 5 uses
  %i.ik = sub nsw i64 %wide.trip.count405, %i.ij  ; 7 uses
  %min.iters.check556 = icmp ult i64 %i.ik, 4
  br i1 %min.iters.check556, label %vec.epilog.scalar.ph573.preheader, label %vector.memcheck553

vector.memcheck553:                               ; preds = %iter.check572
  %i.il = add i64 %i.c, %wide.trip.count405
  %i.im = add i64 %i.il, 65
  %i.in = sub i64 %i.im, %.2.lcssa554
  %diff.check555 = icmp ult i64 %i.in, 32
  br i1 %diff.check555, label %vec.epilog.scalar.ph573.preheader, label %vector.main.loop.iter.check557

vector.main.loop.iter.check557:                   ; preds = %vector.memcheck553
  %min.iters.check558 = icmp ult i64 %i.ik, 32
  br i1 %min.iters.check558, label %vec.epilog.ph576, label %vector.ph559

vector.ph559:                                     ; preds = %vector.main.loop.iter.check557
  %n.mod.vf560 = and i64 %i.ik, 28
  %n.vec561 = and i64 %i.ik, -32                  ; 5 uses
  %i.io = add nsw i64 %n.vec561, %i.ij
  %i.ip = getelementptr i8, ptr %i.ig, i64 %n.vec561 ; 2 uses
  %invariant.gep778 = getelementptr i8, ptr %i.ii, i64 %i.ij
  br label %vector.body562

vector.body562:                                   ; preds = %vector.body562, %vector.ph559
  %index563 = phi i64 [ 0, %vector.ph559 ], [ %index.next567, %vector.body562 ] ; 3 uses
  %next.gep564 = getelementptr i8, ptr %i.ig, i64 %index563 ; 2 uses
  %i.iq = getelementptr i8, ptr %next.gep564, i64 16
  %wide.load565 = load <16 x i8>, ptr %next.gep564, align 1
  %wide.load566 = load <16 x i8>, ptr %i.iq, align 1
  %gep779 = getelementptr i8, ptr %invariant.gep778, i64 %index563 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %gep779, i64 16
  store <16 x i8> %wide.load565, ptr %gep779, align 1
  store <16 x i8> %wide.load566, ptr %i.ir, align 1
  %index.next567 = add nuw i64 %index563, 32      ; 2 uses
  %i.is = icmp eq i64 %index.next567, %n.vec561
  br i1 %i.is, label %middle.block568, label %vector.body562, !llvm.loop !30

middle.block568:                                  ; preds = %vector.body562
  %cmp.n569 = icmp eq i64 %i.ik, %n.vec561
  br i1 %cmp.n569, label %._crit_edge338, label %vec.epilog.iter.check574

vec.epilog.iter.check574:                         ; preds = %middle.block568
  %min.epilog.iters.check575 = icmp eq i64 %n.mod.vf560, 0
  br i1 %min.epilog.iters.check575, label %vec.epilog.scalar.ph573.preheader, label %vec.epilog.ph576, !prof !17

vec.epilog.ph576:                                 ; preds = %vector.main.loop.iter.check557, %vec.epilog.iter.check574
  %vec.epilog.resume.val570 = phi i64 [ %n.vec561, %vec.epilog.iter.check574 ], [ 0, %vector.main.loop.iter.check557 ]
  %n.vec578 = and i64 %i.ik, -4                   ; 4 uses
  %i.it = add nsw i64 %n.vec578, %i.ij
  %i.iu = getelementptr i8, ptr %i.ig, i64 %n.vec578 ; 2 uses
  %invariant.gep780 = getelementptr i8, ptr %i.ii, i64 %i.ij
  br label %vec.epilog.vector.body579

vec.epilog.vector.body579:                        ; preds = %vec.epilog.vector.body579, %vec.epilog.ph576
  %index580 = phi i64 [ %vec.epilog.resume.val570, %vec.epilog.ph576 ], [ %index.next583, %vec.epilog.vector.body579 ] ; 3 uses
  %next.gep581 = getelementptr i8, ptr %i.ig, i64 %index580
  %wide.load582 = load <4 x i8>, ptr %next.gep581, align 1
  %gep781 = getelementptr i8, ptr %invariant.gep780, i64 %index580
  store <4 x i8> %wide.load582, ptr %gep781, align 1
  %index.next583 = add nuw i64 %index580, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next583, %n.vec578
  br i1 %i.iv, label %vec.epilog.middle.block584, label %vec.epilog.vector.body579, !llvm.loop !31

vec.epilog.middle.block584:                       ; preds = %vec.epilog.vector.body579
  %cmp.n585 = icmp eq i64 %i.ik, %n.vec578
  br i1 %cmp.n585, label %._crit_edge338, label %vec.epilog.scalar.ph573.preheader

vec.epilog.scalar.ph573.preheader:                ; preds = %vector.memcheck553, %iter.check572, %vec.epilog.iter.check574, %vec.epilog.middle.block584
  %indvars.iv402.ph = phi i64 [ %i.ij, %iter.check572 ], [ %i.ij, %vector.memcheck553 ], [ %i.io, %vec.epilog.iter.check574 ], [ %i.it, %vec.epilog.middle.block584 ] ; 4 uses
  %.4335.ph = phi ptr [ %i.ig, %iter.check572 ], [ %i.ig, %vector.memcheck553 ], [ %i.ip, %vec.epilog.iter.check574 ], [ %i.iu, %vec.epilog.middle.block584 ] ; 2 uses
  %i.iw = sub nsw i64 %wide.trip.count405, %indvars.iv402.ph
  %xtraiter713 = and i64 %i.iw, 3                 ; 2 uses
  %lcmp.mod714.not = icmp eq i64 %xtraiter713, 0
  br i1 %lcmp.mod714.not, label %vec.epilog.scalar.ph573.prol.loopexit, label %vec.epilog.scalar.ph573.prol

vec.epilog.scalar.ph573.prol:                     ; preds = %vec.epilog.scalar.ph573.preheader, %vec.epilog.scalar.ph573.prol
  %indvars.iv402.prol = phi i64 [ %indvars.iv.next403.prol, %vec.epilog.scalar.ph573.prol ], [ %indvars.iv402.ph, %vec.epilog.scalar.ph573.preheader ] ; 2 uses
  %.4335.prol = phi ptr [ %i.ix, %vec.epilog.scalar.ph573.prol ], [ %.4335.ph, %vec.epilog.scalar.ph573.preheader ] ; 2 uses
  %prol.iter715 = phi i64 [ %prol.iter715.next, %vec.epilog.scalar.ph573.prol ], [ 0, %vec.epilog.scalar.ph573.preheader ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.4335.prol, i64 1 ; 3 uses
  %i.iy = load i8, ptr %.4335.prol, align 1
  %indvars.iv.next403.prol = add nuw nsw i64 %indvars.iv402.prol, 1 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv402.prol
  store i8 %i.iy, ptr %i.iz, align 1
  %prol.iter715.next = add i64 %prol.iter715, 1   ; 2 uses
  %prol.iter715.cmp.not = icmp eq i64 %prol.iter715.next, %xtraiter713
  br i1 %prol.iter715.cmp.not, label %vec.epilog.scalar.ph573.prol.loopexit, label %vec.epilog.scalar.ph573.prol, !llvm.loop !32

vec.epilog.scalar.ph573.prol.loopexit:            ; preds = %vec.epilog.scalar.ph573.prol, %vec.epilog.scalar.ph573.preheader
  %.lcssa672.unr = phi ptr [ poison, %vec.epilog.scalar.ph573.preheader ], [ %i.ix, %vec.epilog.scalar.ph573.prol ]
  %indvars.iv402.unr = phi i64 [ %indvars.iv402.ph, %vec.epilog.scalar.ph573.preheader ], [ %indvars.iv.next403.prol, %vec.epilog.scalar.ph573.prol ]
  %.4335.unr = phi ptr [ %.4335.ph, %vec.epilog.scalar.ph573.preheader ], [ %i.ix, %vec.epilog.scalar.ph573.prol ]
  %i.ja = sub nsw i64 %indvars.iv402.ph, %wide.trip.count405
  %i.jb = icmp ugt i64 %i.ja, -4
  br i1 %i.jb, label %._crit_edge338, label %vec.epilog.scalar.ph573

vec.epilog.scalar.ph573:                          ; preds = %vec.epilog.scalar.ph573.prol.loopexit, %vec.epilog.scalar.ph573
  %indvars.iv402 = phi i64 [ %indvars.iv.next403.3, %vec.epilog.scalar.ph573 ], [ %indvars.iv402.unr, %vec.epilog.scalar.ph573.prol.loopexit ] ; 5 uses
  %.4335 = phi ptr [ %i.jn, %vec.epilog.scalar.ph573 ], [ %.4335.unr, %vec.epilog.scalar.ph573.prol.loopexit ] ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.4335, i64 1
  %i.jd = load i8, ptr %.4335, align 1
  %i.je = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv402
  store i8 %i.jd, ptr %i.je, align 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.4335, i64 2
  %i.jg = load i8, ptr %i.jc, align 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv402
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store i8 %i.jg, ptr %i.ji, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.4335, i64 3
  %i.jk = load i8, ptr %i.jf, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv402
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i8 %i.jk, ptr %i.jm, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.4335, i64 4 ; 2 uses
  %i.jo = load i8, ptr %i.jj, align 1
  %indvars.iv.next403.3 = add nuw nsw i64 %indvars.iv402, 4 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv402
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 3
  store i8 %i.jo, ptr %i.jq, align 1
  %exitcond406.not.3 = icmp eq i64 %indvars.iv.next403.3, %wide.trip.count405
  br i1 %exitcond406.not.3, label %._crit_edge338, label %vec.epilog.scalar.ph573, !llvm.loop !33

._crit_edge338:                                   ; preds = %vec.epilog.scalar.ph573.prol.loopexit, %vec.epilog.scalar.ph573, %middle.block568, %vec.epilog.middle.block584, %bb.al
  %.4.lcssa = phi ptr [ %i.ig, %bb.al ], [ %i.iu, %vec.epilog.middle.block584 ], [ %i.ip, %middle.block568 ], [ %.lcssa672.unr, %vec.epilog.scalar.ph573.prol.loopexit ], [ %i.jn, %vec.epilog.scalar.ph573 ]
  store i8 %.2221.lcssa307, ptr %i.p, align 8
  store ptr %.4.lcssa, ptr %i.d, align 8
  store ptr %.1197, ptr %i.h, align 8
  store i32 12, ptr %2, align 4
  br label %bb.bc

vec.epilog.scalar.ph607:                          ; preds = %vec.epilog.scalar.ph607.prol.loopexit, %vec.epilog.scalar.ph607
  %indvars.iv407 = phi i64 [ %indvars.iv.next408.7, %vec.epilog.scalar.ph607 ], [ %indvars.iv407.unr, %vec.epilog.scalar.ph607.prol.loopexit ] ; 9 uses
  %.2198340 = phi ptr [ %i.kv, %vec.epilog.scalar.ph607 ], [ %.2198340.unr, %vec.epilog.scalar.ph607.prol.loopexit ] ; 9 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv407
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %.2198340, i64 1
  store i8 %i.js, ptr %.2198340, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv407
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %.2198340, i64 2
  store i8 %i.jw, ptr %i.jt, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv407
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.ka = load i8, ptr %i.jz, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %.2198340, i64 3
  store i8 %i.ka, ptr %i.jx, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv407
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 3
  %i.ke = load i8, ptr %i.kd, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %.2198340, i64 4
  store i8 %i.ke, ptr %i.kb, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv407
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = load i8, ptr %i.kh, align 1
  %i.kj = getelementptr inbounds nuw i8, ptr %.2198340, i64 5
  store i8 %i.ki, ptr %i.kf, align 1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv407
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 5
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %.2198340, i64 6
  store i8 %i.km, ptr %i.kj, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv407
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 6
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.2198340, i64 7
  store i8 %i.kq, ptr %i.kn, align 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv407
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 7
  %i.ku = load i8, ptr %i.kt, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %.2198340, i64 8 ; 2 uses
  store i8 %i.ku, ptr %i.kr, align 1
  %indvars.iv.next408.7 = add nuw nsw i64 %indvars.iv407, 8 ; 2 uses
  %exitcond411.not.7 = icmp eq i64 %indvars.iv.next408.7, %wide.trip.count410
  br i1 %exitcond411.not.7, label %._crit_edge343, label %vec.epilog.scalar.ph607, !llvm.loop !34

._crit_edge343:                                   ; preds = %vec.epilog.scalar.ph607.prol.loopexit, %vec.epilog.scalar.ph607, %middle.block603, %vec.epilog.middle.block618, %.preheader
  %.2198.lcssa = phi ptr [ %.1197, %.preheader ], [ %i.hv, %vec.epilog.middle.block618 ], [ %i.gu, %middle.block603 ], [ %.lcssa671.unr, %vec.epilog.scalar.ph607.prol.loopexit ], [ %i.kv, %vec.epilog.scalar.ph607 ] ; 8 uses
  %.0.lcssa = phi i8 [ 0, %.preheader ], [ %.1209, %vec.epilog.middle.block618 ], [ %.1209, %middle.block603 ], [ %.1209, %vec.epilog.scalar.ph607 ], [ %.1209, %vec.epilog.scalar.ph607.prol.loopexit ] ; 5 uses
  %.2198.lcssa623 = ptrtoaddr ptr %.2198.lcssa to i64
  %i.kw = zext nneg i8 %.1209 to i32
  %.neg249 = sub nsw i32 %i.kw, %i.gp
  %i.kx = sext i32 %.neg249 to i64
  %i.ky = getelementptr inbounds i8, ptr %.2.lcssa435, i64 %i.kx ; 7 uses
  %i.kz = icmp slt i8 %.0.lcssa, %.1218.fr
  br i1 %i.kz, label %iter.check644, label %._crit_edge351

iter.check644:                                    ; preds = %._crit_edge343
  %i.la = xor i8 %.1209, -1
  %i.lb = add i8 %.1218.fr, %i.la                 ; 3 uses
  %i.lc = zext i8 %i.lb to i64
  %i.ld = add nuw nsw i64 %i.lc, 1                ; 5 uses
  %min.iters.check626 = icmp ult i8 %i.lb, 3
  br i1 %min.iters.check626, label %.lr.ph350.preheader, label %vector.memcheck622

vector.memcheck622:                               ; preds = %iter.check644
  %i.le = zext nneg i32 %i.gp to i64
  %i.lf = add i64 %.2198.lcssa623, %i.le
  %i.lg = zext nneg i8 %.1209 to i64
  %i.lh = add i64 %.2.lcssa435624, %i.lg
  %i.li = sub i64 %i.lf, %i.lh
  %diff.check625 = icmp ult i64 %i.li, 32
  br i1 %diff.check625, label %.lr.ph350.preheader, label %vector.main.loop.iter.check627

vector.main.loop.iter.check627:                   ; preds = %vector.memcheck622
  %min.iters.check628 = icmp ult i8 %i.lb, 31
  br i1 %min.iters.check628, label %vec.epilog.ph648, label %vector.ph629

vector.ph629:                                     ; preds = %vector.main.loop.iter.check627
  %n.mod.vf630 = and i64 %i.ld, 28
  %n.vec631 = and i64 %i.ld, 480                  ; 6 uses
  %i.lj = trunc i64 %n.vec631 to i8
  %i.lk = add i8 %.0.lcssa, %i.lj
  %i.ll = getelementptr i8, ptr %i.ky, i64 %n.vec631 ; 2 uses
  %i.lm = getelementptr i8, ptr %.2198.lcssa, i64 %n.vec631 ; 2 uses
  br label %vector.body632

vector.body632:                                   ; preds = %vector.body632, %vector.ph629
  %index633 = phi i64 [ 0, %vector.ph629 ], [ %index.next638, %vector.body632 ] ; 3 uses
  %next.gep634 = getelementptr i8, ptr %i.ky, i64 %index633 ; 2 uses
  %next.gep635 = getelementptr i8, ptr %.2198.lcssa, i64 %index633 ; 2 uses
  %i.ln = getelementptr i8, ptr %next.gep634, i64 16
  %wide.load636 = load <16 x i8>, ptr %next.gep634, align 1
  %wide.load637 = load <16 x i8>, ptr %i.ln, align 1
  %i.lo = getelementptr i8, ptr %next.gep635, i64 16
  store <16 x i8> %wide.load636, ptr %next.gep635, align 1
  store <16 x i8> %wide.load637, ptr %i.lo, align 1
  %index.next638 = add nuw i64 %index633, 32      ; 2 uses
  %i.lp = icmp eq i64 %index.next638, %n.vec631
  br i1 %i.lp, label %middle.block639, label %vector.body632, !llvm.loop !35

middle.block639:                                  ; preds = %vector.body632
  %cmp.n640 = icmp eq i64 %i.ld, %n.vec631
  br i1 %cmp.n640, label %._crit_edge351, label %vec.epilog.iter.check646

vec.epilog.iter.check646:                         ; preds = %middle.block639
  %min.epilog.iters.check647 = icmp eq i64 %n.mod.vf630, 0
  br i1 %min.epilog.iters.check647, label %.lr.ph350.preheader, label %vec.epilog.ph648, !prof !17

vec.epilog.ph648:                                 ; preds = %vector.main.loop.iter.check627, %vec.epilog.iter.check646
  %vec.epilog.resume.val641 = phi i64 [ %n.vec631, %vec.epilog.iter.check646 ], [ 0, %vector.main.loop.iter.check627 ]
  %n.vec650 = and i64 %i.ld, 508                  ; 5 uses
  %i.lq = trunc i64 %n.vec650 to i8
  %i.lr = add i8 %.0.lcssa, %i.lq
  %i.ls = getelementptr i8, ptr %i.ky, i64 %n.vec650 ; 2 uses
  %i.lt = getelementptr i8, ptr %.2198.lcssa, i64 %n.vec650 ; 2 uses
  br label %vec.epilog.vector.body651

vec.epilog.vector.body651:                        ; preds = %vec.epilog.vector.body651, %vec.epilog.ph648
  %index652 = phi i64 [ %vec.epilog.resume.val641, %vec.epilog.ph648 ], [ %index.next656, %vec.epilog.vector.body651 ] ; 3 uses
  %next.gep653 = getelementptr i8, ptr %i.ky, i64 %index652
  %next.gep654 = getelementptr i8, ptr %.2198.lcssa, i64 %index652
  %wide.load655 = load <4 x i8>, ptr %next.gep653, align 1
  store <4 x i8> %wide.load655, ptr %next.gep654, align 1
  %index.next656 = add nuw i64 %index652, 4       ; 2 uses
  %i.lu = icmp eq i64 %index.next656, %n.vec650
  br i1 %i.lu, label %vec.epilog.middle.block657, label %vec.epilog.vector.body651, !llvm.loop !36

vec.epilog.middle.block657:                       ; preds = %vec.epilog.vector.body651
  %cmp.n658 = icmp eq i64 %i.ld, %n.vec650
  br i1 %cmp.n658, label %._crit_edge351, label %.lr.ph350.preheader

.lr.ph350.preheader:                              ; preds = %vector.memcheck622, %iter.check644, %vec.epilog.iter.check646, %vec.epilog.middle.block657
  %.1348.ph = phi i8 [ %.0.lcssa, %iter.check644 ], [ %.0.lcssa, %vector.memcheck622 ], [ %i.lk, %vec.epilog.iter.check646 ], [ %i.lr, %vec.epilog.middle.block657 ] ; 4 uses
  %.5347.ph = phi ptr [ %i.ky, %iter.check644 ], [ %i.ky, %vector.memcheck622 ], [ %i.ll, %vec.epilog.iter.check646 ], [ %i.ls, %vec.epilog.middle.block657 ] ; 2 uses
  %.3199346.ph = phi ptr [ %.2198.lcssa, %iter.check644 ], [ %.2198.lcssa, %vector.memcheck622 ], [ %i.lm, %vec.epilog.iter.check646 ], [ %i.lt, %vec.epilog.middle.block657 ] ; 2 uses
  %i.lv = sub i8 %.1218.fr, %.1348.ph
  %xtraiter719 = and i8 %i.lv, 7                  ; 2 uses
  %lcmp.mod720.not = icmp eq i8 %xtraiter719, 0
  br i1 %lcmp.mod720.not, label %.lr.ph350.prol.loopexit, label %.lr.ph350.prol

.lr.ph350.prol:                                   ; preds = %.lr.ph350.preheader, %.lr.ph350.prol
  %.1348.prol = phi i8 [ %i.lz, %.lr.ph350.prol ], [ %.1348.ph, %.lr.ph350.preheader ]
  %.5347.prol = phi ptr [ %i.lw, %.lr.ph350.prol ], [ %.5347.ph, %.lr.ph350.preheader ] ; 2 uses
  %.3199346.prol = phi ptr [ %i.ly, %.lr.ph350.prol ], [ %.3199346.ph, %.lr.ph350.preheader ] ; 2 uses
  %prol.iter721 = phi i8 [ %prol.iter721.next, %.lr.ph350.prol ], [ 0, %.lr.ph350.preheader ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.5347.prol, i64 1 ; 3 uses
  %i.lx = load i8, ptr %.5347.prol, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %.3199346.prol, i64 1 ; 3 uses
  store i8 %i.lx, ptr %.3199346.prol, align 1
  %i.lz = add nuw nsw i8 %.1348.prol, 1           ; 2 uses
  %prol.iter721.next = add i8 %prol.iter721, 1    ; 2 uses
  %prol.iter721.cmp.not = icmp eq i8 %prol.iter721.next, %xtraiter719
  br i1 %prol.iter721.cmp.not, label %.lr.ph350.prol.loopexit, label %.lr.ph350.prol, !llvm.loop !37

.lr.ph350.prol.loopexit:                          ; preds = %.lr.ph350.prol, %.lr.ph350.preheader
  %.lcssa670.unr = phi ptr [ poison, %.lr.ph350.preheader ], [ %i.lw, %.lr.ph350.prol ]
  %.lcssa669.unr = phi ptr [ poison, %.lr.ph350.preheader ], [ %i.ly, %.lr.ph350.prol ]
  %.1348.unr = phi i8 [ %.1348.ph, %.lr.ph350.preheader ], [ %i.lz, %.lr.ph350.prol ]
  %.5347.unr = phi ptr [ %.5347.ph, %.lr.ph350.preheader ], [ %i.lw, %.lr.ph350.prol ]
  %.3199346.unr = phi ptr [ %.3199346.ph, %.lr.ph350.preheader ], [ %i.ly, %.lr.ph350.prol ]
  %i.ma = sub i8 %.1348.ph, %.1218.fr
  %i.mb = icmp ugt i8 %i.ma, -8
  br i1 %i.mb, label %._crit_edge351, label %.lr.ph350

.lr.ph350:                                        ; preds = %.lr.ph350.prol.loopexit, %.lr.ph350
  %.1348 = phi i8 [ %i.na, %.lr.ph350 ], [ %.1348.unr, %.lr.ph350.prol.loopexit ]
  %.5347 = phi ptr [ %i.mx, %.lr.ph350 ], [ %.5347.unr, %.lr.ph350.prol.loopexit ] ; 9 uses
  %.3199346 = phi ptr [ %i.mz, %.lr.ph350 ], [ %.3199346.unr, %.lr.ph350.prol.loopexit ] ; 9 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.5347, i64 1
  %i.md = load i8, ptr %.5347, align 1
  %i.me = getelementptr inbounds nuw i8, ptr %.3199346, i64 1
  store i8 %i.md, ptr %.3199346, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %.5347, i64 2
  %i.mg = load i8, ptr %i.mc, align 1
  %i.mh = getelementptr inbounds nuw i8, ptr %.3199346, i64 2
  store i8 %i.mg, ptr %i.me, align 1
  %i.mi = getelementptr inbounds nuw i8, ptr %.5347, i64 3
  %i.mj = load i8, ptr %i.mf, align 1
  %i.mk = getelementptr inbounds nuw i8, ptr %.3199346, i64 3
  store i8 %i.mj, ptr %i.mh, align 1
  %i.ml = getelementptr inbounds nuw i8, ptr %.5347, i64 4
  %i.mm = load i8, ptr %i.mi, align 1
  %i.mn = getelementptr inbounds nuw i8, ptr %.3199346, i64 4
  store i8 %i.mm, ptr %i.mk, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.5347, i64 5
  %i.mp = load i8, ptr %i.ml, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %.3199346, i64 5
  store i8 %i.mp, ptr %i.mn, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %.5347, i64 6
  %i.ms = load i8, ptr %i.mo, align 1
  %i.mt = getelementptr inbounds nuw i8, ptr %.3199346, i64 6
  store i8 %i.ms, ptr %i.mq, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %.5347, i64 7
  %i.mv = load i8, ptr %i.mr, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.3199346, i64 7
  store i8 %i.mv, ptr %i.mt, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.5347, i64 8 ; 2 uses
  %i.my = load i8, ptr %i.mu, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.3199346, i64 8 ; 2 uses
  store i8 %i.my, ptr %i.mw, align 1
  %i.na = add nuw nsw i8 %.1348, 8                ; 2 uses
  %exitcond412.not.7 = icmp eq i8 %i.na, %.1218.fr
  br i1 %exitcond412.not.7, label %._crit_edge351, label %.lr.ph350, !llvm.loop !38

._crit_edge351:                                   ; preds = %.lr.ph350.prol.loopexit, %.lr.ph350, %middle.block639, %vec.epilog.middle.block657, %._crit_edge343
  %.3199.lcssa = phi ptr [ %.2198.lcssa, %._crit_edge343 ], [ %i.lt, %vec.epilog.middle.block657 ], [ %i.lm, %middle.block639 ], [ %.lcssa669.unr, %.lr.ph350.prol.loopexit ], [ %i.mz, %.lr.ph350 ]
  %.5.lcssa = phi ptr [ %i.ky, %._crit_edge343 ], [ %i.ls, %vec.epilog.middle.block657 ], [ %i.ll, %middle.block639 ], [ %.lcssa670.unr, %.lr.ph350.prol.loopexit ], [ %i.mx, %.lr.ph350 ]
  %i.nb = sub nsw i32 %.3203, %i.gp
  br label %.preheader261, !llvm.loop !20

._crit_edge:                                      ; preds = %.backedge, %.preheader261
  %.0196.lcssa = phi ptr [ %.0196.ph, %.preheader261 ], [ %.0196.be, %.backedge ] ; 2 uses
  %.0194.lcssa = phi ptr [ %.0194.ph, %.preheader261 ], [ %.0194.be, %.backedge ] ; 7 uses
  %i.nc = load i32, ptr %2, align 4
  %i.nd = icmp slt i32 %i.nc, 1
  %i.ne = icmp ult ptr %.0194.lcssa, %i.g
  %or.cond256 = select i1 %i.nd, i1 %i.ne, i1 false
  br i1 %or.cond256, label %bb.am, label %bb.bb

bb.am:                                            ; preds = %._crit_edge
  %i.nf = load ptr, ptr %i.j, align 8
  %i.ng = icmp eq ptr %.0196.lcssa, %i.nf
  br i1 %i.ng, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 15, ptr %2, align 4
  br label %bb.bb

bb.ao:                                            ; preds = %bb.am
  %i.nh = load i8, ptr %.0194.lcssa, align 1      ; 6 uses
  %i.ni = icmp sgt i8 %i.nh, -1
  br i1 %i.ni, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nj = add nsw i8 %i.nh, 62
  %i.nk = icmp ult i8 %i.nj, 51
  br i1 %i.nk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.nl = icmp samesign ugt i8 %i.nh, -33
  %i.nm = zext i1 %i.nl to i8
  %i.nn = icmp samesign ugt i8 %i.nh, -17
  %i.no = select i1 %i.nn, i8 3, i8 2
  %i.np = add nuw nsw i8 %i.no, %i.nm
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.nq = phi i8 [ 1, %bb.ao ], [ %i.np, %bb.aq ], [ 0, %bb.ap ] ; 4 uses
  %i.nr = zext nneg i8 %i.nq to i64
  %i.ns = ptrtoint ptr %.0194.lcssa to i64
  %i.nt = sub i64 %i.x, %i.ns
  %i.nu = icmp slt i64 %i.nt, %i.nr
  br i1 %i.nu, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.nv = zext i8 %i.nh to i32                    ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  store i8 %i.nh, ptr %i.nw, align 1
  %i.nx = getelementptr inbounds nuw i8, ptr %.0194.lcssa, i64 1 ; 3 uses
  %i.ny = icmp eq ptr %i.nx, %i.g
  br i1 %i.ny, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.as
  %i.nz = icmp samesign ult i8 %i.nq, 3
  %i.oa = icmp eq i8 %i.nq, 3
  br label %bb.at

._crit_edge302:                                   ; preds = %bb.az, %bb.as
  %.3216.lcssa = phi i32 [ %i.nv, %bb.as ], [ %i.pb, %bb.az ]
  %.lcssa269 = phi i8 [ 1, %bb.as ], [ %i.pc, %bb.az ]
  %.lcssa = phi ptr [ %i.nx, %bb.as ], [ %i.pf, %bb.az ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.3216.lcssa, ptr %i.ob, align 8
  store i8 %.lcssa269, ptr %i.p, align 8
  %i.oc = zext nneg i8 %i.nq to i32
  %i.od = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.oc, ptr %i.od, align 4
  br label %bb.bb

bb.at:                                            ; preds = %.lr.ph301, %bb.az
  %i.oe = phi ptr [ %i.nx, %.lr.ph301 ], [ %i.pf, %bb.az ] ; 3 uses
  %i.of = phi i8 [ 1, %.lr.ph301 ], [ %i.pc, %bb.az ] ; 4 uses
  %.3216299 = phi i32 [ %i.nv, %.lr.ph301 ], [ %i.pb, %bb.az ] ; 3 uses
  %i.og = load i8, ptr %i.oe, align 1             ; 5 uses
  %i.oh = icmp sgt i8 %i.of, 1
  %or.cond.i257 = or i1 %i.nz, %i.oh
  br i1 %or.cond.i257, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.oi = icmp slt i8 %i.og, -64
  %i.oj = zext i1 %i.oi to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit259

bb.av:                                            ; preds = %bb.at
  br i1 %i.oa, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ok = and i32 %.3216299, 15
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1
  %i.oo = lshr i8 %i.og, 5
  %i.op = shl nuw i8 1, %i.oo
  %i.oq = and i8 %i.on, %i.op
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit259

bb.ax:                                            ; preds = %bb.av
  %i.or = lshr i8 %i.og, 4
  %i.os = zext nneg i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1
  %i.ov = and i32 %.3216299, 7
  %i.ow = shl nuw nsw i32 1, %i.ov
  %i.ox = trunc nuw i32 %i.ow to i8
  %i.oy = and i8 %i.ou, %i.ox
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit259

_ZN6icu_784UTF812isValidTrailEihii.exit259:       ; preds = %bb.au, %bb.aw, %bb.ax
  %.0.i258 = phi i8 [ %i.oj, %bb.au ], [ %i.oq, %bb.aw ], [ %i.oy, %bb.ax ]
  %.not251 = icmp eq i8 %.0.i258, 0
  br i1 %.not251, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit259
  store i8 %i.of, ptr %i.p, align 8
  store i32 12, ptr %2, align 4
  br label %bb.bb

bb.az:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit259
  %i.oz = shl i32 %.3216299, 6
  %i.pa = zext i8 %i.og to i32
  %i.pb = add nsw i32 %i.oz, %i.pa                ; 2 uses
  %i.pc = add i8 %i.of, 1                         ; 2 uses
  %i.pd = sext i8 %i.of to i64
  %i.pe = getelementptr inbounds i8, ptr %i.nw, i64 %i.pd
  store i8 %i.og, ptr %i.pe, align 1
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oe, i64 1 ; 3 uses
  %i.pg = icmp eq ptr %i.pf, %i.g
  br i1 %i.pg, label %._crit_edge302, label %bb.at, !llvm.loop !39

bb.ba:                                            ; preds = %bb.ar
  store i32 -127, ptr %2, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.an, %._crit_edge302, %bb.ay, %bb.ba, %._crit_edge
  %.7 = phi ptr [ %.0194.lcssa, %bb.an ], [ %.lcssa, %._crit_edge302 ], [ %i.oe, %bb.ay ], [ %.0194.lcssa, %bb.ba ], [ %.0194.lcssa, %._crit_edge ]
  store ptr %.7, ptr %i.d, align 8
  store ptr %.0196.lcssa, ptr %i.h, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge338, %._crit_edge332, %bb.e
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
!23 = distinct !{!23, !6, !15, !16}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !6, !15}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = distinct !{!28, !6, !15, !16}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !6, !15, !16}
!31 = distinct !{!31, !6, !15, !16}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !6, !15}
!34 = distinct !{!34, !6, !15}
!35 = distinct !{!35, !6, !15, !16}
!36 = distinct !{!36, !6, !15, !16}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !6, !15}
!39 = distinct !{!39, !6}
end_hunk_0
