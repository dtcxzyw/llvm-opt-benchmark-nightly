inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.ar = add nsw i32 %i.af, -2                   ; 2 uses
  %.not = icmp eq i32 %i.af, 1
  br i1 %.not, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27  ; 4 uses
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
  %.sink498 = select i1 %i.ax, i32 %i.bf, i32 %i.bb
  %.sink497.in.in = select i1 %i.ax, ptr %i.be, ptr %i.ba
  %.sink497.in = load i8, ptr %.sink497.in.in, align 1, !tbaa !27
  %.sink497 = zext i8 %.sink497.in to i32
  %i.bg = shl nuw nsw i32 1, %.sink498
  %i.bh = and i32 %i.bg, %.sink497
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
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !27  ; 2 uses
  %i.bo = add i8 %i.bn, 16
  %or.cond5 = icmp ult i8 %i.bo, 5
  br i1 %or.cond5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = lshr i32 %i.av, 4
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27
  %i.bt = zext i8 %i.bs to i32
  %i.bu = and i8 %i.bn, 7
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 1, %i.bv
  %i.bx = and i32 %i.bw, %i.bt
  %.not244 = icmp eq i32 %i.bx, 0
  %spec.select255 = select i1 %.not244, i32 %i.af, i32 %i.bj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.g, %bb.j, %bb.k, %bb.i, %bb.p, %bb.n, %bb.o, %bb.f
  %.3 = phi i32 [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ], [ %i.af, %bb.j ], [ 1, %bb.k ], [ %i.af, %bb.n ], [ %spec.select255, %bb.q ], [ %spec.select254, %bb.m ], [ 2, %bb.o ], [ %i.af, %bb.p ]
  %i.by = add nsw i32 %.3, %i.ab
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.r
  %.1212 = phi i32 [ %i.ac, %bb.c ], [ %i.by, %bb.r ] ; 2 uses
  %.not246 = icmp eq i32 %.0197, 0
  br i1 %.not246, label %.preheader261, label %bb.t

.preheader261:                                    ; preds = %._crit_edge339, %bb.s
  %.0219.ph = phi ptr [ %i.e, %bb.s ], [ %.5.lcssa, %._crit_edge339 ] ; 2 uses
  %.0215.ph = phi ptr [ %i.i, %bb.s ], [ %.3218.lcssa, %._crit_edge339 ] ; 2 uses
  %.2213.ph = phi i32 [ %.1212, %bb.s ], [ %i.nr, %._crit_edge339 ] ; 2 uses
  %i.bz = icmp sgt i32 %.2213.ph, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.ca, align 8, !tbaa !46
  store i8 0, ptr %i.p, align 8, !tbaa !44
  br label %.thread260

.lr.ph:                                           ; preds = %.preheader261, %.backedge
  %.2213296 = phi i32 [ %i.cf, %.backedge ], [ %.2213.ph, %.preheader261 ] ; 2 uses
  %.0215295 = phi ptr [ %.0215.be, %.backedge ], [ %.0215.ph, %.preheader261 ] ; 12 uses
  %.0219294 = phi ptr [ %.0219.be, %.backedge ], [ %.0219.ph, %.preheader261 ] ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0219294, i64 1 ; 4 uses
  %i.cc = load i8, ptr %.0219294, align 1, !tbaa !27 ; 10 uses
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.0215295, i64 1
  store i8 %i.cc, ptr %.0215295, align 1, !tbaa !27
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.z, %bb.ac
  %.sink = phi i32 [ -1, %bb.u ], [ -3, %bb.z ], [ -2, %bb.ac ]
  %.0219.be = phi ptr [ %i.cb, %bb.u ], [ %i.cx, %bb.z ], [ %i.de, %bb.ac ] ; 2 uses
  %.0215.be = phi ptr [ %i.ce, %bb.u ], [ %i.da, %bb.z ], [ %i.dg, %bb.ac ] ; 2 uses
  %i.cf = add nsw i32 %.2213296, %.sink           ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !59

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
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !27
  %i.co = zext i8 %i.cn to i32
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !27  ; 2 uses
  %i.cq = lshr i8 %i.cp, 5
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 1, %i.cr
  %i.ct = and i32 %i.cs, %i.co
  %.not252 = icmp eq i32 %i.ct, 0
  br i1 %.not252, label %.thread.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %.0219294, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !27  ; 2 uses
  %i.cw = icmp slt i8 %i.cv, -64
  br i1 %i.cw, label %bb.z, label %.thread.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.0219294, i64 3
  %i.cy = getelementptr inbounds nuw i8, ptr %.0215295, i64 1
  store i8 %i.cc, ptr %.0215295, align 1, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %.0215295, i64 2
  store i8 %i.cp, ptr %i.cy, align 1, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %.0215295, i64 3
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !27
  br label %.backedge

bb.aa:                                            ; preds = %bb.v
  %i.db = icmp samesign ugt i8 %i.cc, -63
  br i1 %i.db, label %bb.ab, label %iter.check580

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i8, ptr %i.cb, align 1, !tbaa !27  ; 2 uses
  %i.dd = icmp slt i8 %i.dc, -64
  br i1 %i.dd, label %bb.ac, label %.thread.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.0219294, i64 2
  %i.df = getelementptr inbounds nuw i8, ptr %.0215295, i64 1
  store i8 %i.cc, ptr %.0215295, align 1, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %.0215295, i64 2
  store i8 %i.dc, ptr %i.df, align 1, !tbaa !27
  br label %.backedge

bb.ad:                                            ; preds = %bb.w
  %i.dh = icmp samesign ult i8 %i.cc, -11
  br i1 %i.dh, label %.thread, label %iter.check580

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
  %.1220 = phi ptr [ %i.e, %bb.t ], [ %i.cb, %.thread ] ; 4 uses
  %.1216 = phi ptr [ %i.i, %bb.t ], [ %.0215295, %.thread ] ; 24 uses
  %.3214 = phi i32 [ %.1212, %bb.t ], [ %.2213296, %.thread ]
  %.1208 = phi i8 [ %.0203, %bb.t ], [ 0, %.thread ] ; 17 uses
  %.1204 = phi i8 [ %.0203, %bb.t ], [ 1, %.thread ] ; 4 uses
  %.1202 = phi i32 [ %.0201, %bb.t ], [ %i.dm, %.thread ] ; 9 uses
  %.1198 = phi i32 [ %.0197, %bb.t ], [ %i.ch, %.thread ] ; 2 uses
  %.1216596 = ptrtoaddr ptr %.1216 to i64
  %i.dn = zext nneg i8 %.1204 to i32              ; 4 uses
  %i.do = icmp sgt i32 %.1202, %i.dn
  br i1 %i.do, label %.lr.ph308, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

.lr.ph308:                                        ; preds = %.thread260
  %i.dp = icmp samesign ult i32 %.1202, 3
  %i.dq = icmp eq i32 %.1202, 3
  %i.dr = icmp ult ptr %.1220, %i.g
  br i1 %i.dr, label %.lr.ph546, label %._crit_edge547

bb.ae:                                            ; preds = %bb.aj
  %i.ds = shl i32 %.2199307544, 6
  %i.dt = zext i8 %i.dw to i32
  %i.du = add nsw i32 %i.ds, %i.dt                ; 2 uses
  %indvars.iv.next388 = add nuw i8 %indvars.iv387542, 1 ; 2 uses
  %i.dv = icmp ult ptr %i.eo, %i.g
  br i1 %i.dv, label %.lr.ph546, label %._crit_edge547, !llvm.loop !60

.lr.ph546:                                        ; preds = %.lr.ph308, %bb.ae
  %.2221305545 = phi ptr [ %i.eo, %bb.ae ], [ %.1220, %.lr.ph308 ] ; 3 uses
  %.2199307544 = phi i32 [ %i.du, %bb.ae ], [ %.1198, %.lr.ph308 ] ; 3 uses
  %indvars.iv543 = phi i32 [ %indvars.iv.next, %bb.ae ], [ %i.dn, %.lr.ph308 ] ; 4 uses
  %indvars.iv387542 = phi i8 [ %indvars.iv.next388, %bb.ae ], [ %.1204, %.lr.ph308 ]
  %i.dw = load i8, ptr %.2221305545, align 1, !tbaa !27 ; 4 uses
  %3 = icmp samesign ugt i32 %indvars.iv543, 1
  %or.cond.i = or i1 %i.dp, %3
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph546
  %i.dx = icmp slt i8 %i.dw, -64
  %i.dy = zext i1 %i.dx to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ag:                                            ; preds = %.lr.ph546
  br i1 %i.dq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dz = and i32 %.2199307544, 15
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !27
  %i.ed = lshr i8 %i.dw, 5
  %i.ee = shl nuw i8 1, %i.ed
  %i.ef = and i8 %i.ec, %i.ee
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eg = lshr i8 %i.dw, 4
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !27
  %i.ek = and i32 %.2199307544, 7
  %i.el = shl nuw nsw i32 1, %i.ek
  %i.em = trunc nuw i32 %i.el to i8
  %i.en = and i8 %i.ej, %i.em
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %bb.af, %bb.ah, %bb.ai
  %.0.i = phi i8 [ %i.dy, %bb.af ], [ %i.ef, %bb.ah ], [ %i.en, %bb.ai ]
  %.not247 = icmp eq i8 %.0.i, 0
  br i1 %.not247, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit, label %bb.aj

bb.aj:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.2221305545, i64 1 ; 4 uses
  %indvars.iv.next = add nuw i32 %indvars.iv543, 1 ; 4 uses
  %sext421 = shl i32 %indvars.iv.next, 24
  %4 = ashr exact i32 %sext421, 24                ; 2 uses
  %i.ep = icmp sgt i32 %.1202, %4
  br i1 %i.ep, label %bb.ae, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit, !llvm.loop !60

._crit_edge547:                                   ; preds = %bb.ae, %.lr.ph308
  %indvars.iv387.lcssa = phi i8 [ %.1204, %.lr.ph308 ], [ %indvars.iv.next388, %bb.ae ]
  %indvars.iv.lcssa = phi i32 [ %i.dn, %.lr.ph308 ], [ %indvars.iv.next, %bb.ae ] ; 3 uses
  %.2199307.lcssa = phi i32 [ %.1198, %.lr.ph308 ], [ %i.du, %bb.ae ]
  %.2221305.lcssa = phi ptr [ %.1220, %.lr.ph308 ], [ %i.eo, %bb.ae ] ; 2 uses
  %.2221305.lcssa551 = ptrtoaddr ptr %.2221305.lcssa to i64
  %5 = trunc nuw nsw i32 %indvars.iv.lcssa to i8  ; 2 uses
  %i.eq = zext nneg i8 %.1208 to i32
  %.neg = sub nsw i32 %i.eq, %indvars.iv.lcssa
  %i.er = sext i32 %.neg to i64
  %i.es = getelementptr inbounds i8, ptr %.2221305.lcssa, i64 %i.er ; 7 uses
  %i.et = icmp slt i8 %.1208, %5
  br i1 %i.et, label %iter.check, label %._crit_edge320

iter.check:                                       ; preds = %._crit_edge547
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.ev = zext i8 %.1208 to i64                   ; 7 uses
  %wide.trip.count = zext i8 %indvars.iv387.lcssa to i64 ; 4 uses
  %i.ew = sub nsw i64 %wide.trip.count, %i.ev     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ew, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ex = sext i32 %indvars.iv.lcssa to i64
  %i.ey = add i64 %i.c, %i.ex
  %i.ez = sub i64 %i.ey, %.2221305.lcssa551
  %i.fa = add i64 %i.ez, 64
  %diff.check = icmp ult i64 %i.fa, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check552 = icmp ult i64 %i.ew, 32
  br i1 %min.iters.check552, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fb = and i64 %i.ew, 24
  %n.vec = and i64 %i.ew, -32                     ; 5 uses
  %i.fc = add nsw i64 %n.vec, %i.ev
  %i.fd = getelementptr i8, ptr %i.es, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.eu, i64 %i.ev
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.es, i64 %index ; 2 uses
  %i.fe = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load553 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !27
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !27
  store <16 x i8> %wide.load553, ptr %i.ff, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %._crit_edge320, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec555 = and i64 %i.ew, -8                   ; 4 uses
  %i.fh = add nsw i64 %n.vec555, %i.ev
  %i.fi = getelementptr i8, ptr %i.es, i64 %n.vec555 ; 2 uses
  %invariant.gep758.a = getelementptr i8, ptr %i.eu, i64 %i.ev
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index556 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next559, %vec.epilog.vector.body ] ; 3 uses
  %next.gep557 = getelementptr i8, ptr %i.es, i64 %index556
  %wide.load558 = load <8 x i8>, ptr %next.gep557, align 1, !tbaa !27
  %gep759.a = getelementptr i8, ptr %invariant.gep758.a, i64 %index556
  store <8 x i8> %wide.load558, ptr %gep759.a, align 1, !tbaa !27
  %index.next559 = add nuw i64 %index556, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next559, %n.vec555
  br i1 %i.fj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n560 = icmp eq i64 %i.ew, %n.vec555
  br i1 %cmp.n560, label %._crit_edge320, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv383.ph = phi i64 [ %i.ev, %iter.check ], [ %i.ev, %vector.memcheck ], [ %i.fc, %vec.epilog.iter.check ], [ %i.fh, %vec.epilog.middle.block ] ; 4 uses
  %.3222316.ph = phi ptr [ %i.es, %iter.check ], [ %i.es, %vector.memcheck ], [ %i.fd, %vec.epilog.iter.check ], [ %i.fi, %vec.epilog.middle.block ] ; 2 uses
  %i.fk = sub nsw i64 %wide.trip.count, %indvars.iv383.ph
  %xtraiter = and i64 %i.fk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv383.prol = phi i64 [ %indvars.iv.next384.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv383.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3222316.prol = phi ptr [ %i.fl, %vec.epilog.scalar.ph.prol ], [ %.3222316.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.3222316.prol, i64 1 ; 3 uses
  %i.fm = load i8, ptr %.3222316.prol, align 1, !tbaa !27
  %indvars.iv.next384.prol = add nuw nsw i64 %indvars.iv383.prol, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv383.prol
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !27
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !64

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa676.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.fl, %vec.epilog.scalar.ph.prol ]
  %indvars.iv383.unr = phi i64 [ %indvars.iv383.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next384.prol, %vec.epilog.scalar.ph.prol ]
  %.3222316.unr = phi ptr [ %.3222316.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fl, %vec.epilog.scalar.ph.prol ]
  %i.fo = sub nsw i64 %indvars.iv383.ph, %wide.trip.count
  %i.fp = icmp ugt i64 %i.fo, -4
  br i1 %i.fp, label %._crit_edge320, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv383 = phi i64 [ %indvars.iv.next384.3, %vec.epilog.scalar.ph ], [ %indvars.iv383.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.3222316 = phi ptr [ %i.gb, %vec.epilog.scalar.ph ], [ %.3222316.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.3222316, i64 1
  %i.fr = load i8, ptr %.3222316, align 1, !tbaa !27
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv383
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !27
  %i.ft = getelementptr inbounds nuw i8, ptr %.3222316, i64 2
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !27
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv383
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  store i8 %i.fu, ptr %i.fw, align 1, !tbaa !27
  %i.fx = getelementptr inbounds nuw i8, ptr %.3222316, i64 3
  %i.fy = load i8, ptr %i.ft, align 1, !tbaa !27
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv383
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  store i8 %i.fy, ptr %i.ga, align 1, !tbaa !27
  %i.gb = getelementptr inbounds nuw i8, ptr %.3222316, i64 4 ; 2 uses
  %i.gc = load i8, ptr %i.fx, align 1, !tbaa !27
  %indvars.iv.next384.3 = add nuw nsw i64 %indvars.iv383, 4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv383
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 3
  store i8 %i.gc, ptr %i.ge, align 1, !tbaa !27
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next384.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge320, label %vec.epilog.scalar.ph, !llvm.loop !66

._crit_edge320:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge547
  %.3222.lcssa = phi ptr [ %i.es, %._crit_edge547 ], [ %i.fi, %vec.epilog.middle.block ], [ %i.fd, %middle.block ], [ %.lcssa676.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.gb, %vec.epilog.scalar.ph ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.2199307.lcssa, ptr %i.gf, align 8, !tbaa !46
  store i8 %5, ptr %i.p, align 8, !tbaa !44
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %.1202, ptr %i.gg, align 4, !tbaa !45
  store ptr %.3222.lcssa, ptr %i.d, align 8, !tbaa !40
  store ptr %.1216, ptr %i.h, align 8, !tbaa !18
  br label %bb.bb

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit: ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit, %bb.aj
  %.2221.lcssa.ph = phi ptr [ %i.eo, %bb.aj ], [ %.2221305545, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.2205.lcssa.ph.in = phi i32 [ %indvars.iv.next, %bb.aj ], [ %indvars.iv543, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.lcssa.ph = phi i32 [ %4, %bb.aj ], [ %indvars.iv543, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.2205.lcssa.ph = trunc i32 %.2205.lcssa.ph.in to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge: ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit, %.thread260
  %.2221.lcssa = phi ptr [ %.1220, %.thread260 ], [ %.2221.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit ] ; 3 uses
  %.2205.lcssa = phi i8 [ %.1204, %.thread260 ], [ %.2205.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit ] ; 8 uses
  %.lcssa = phi i32 [ %i.dn, %.thread260 ], [ %.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit ] ; 2 uses
  %.2221.lcssa629 = ptrtoaddr ptr %.2221.lcssa to i64
  %.not248 = icmp eq i32 %.1202, %.lcssa
  br i1 %.not248, label %.preheader, label %bb.ak

.preheader:                                       ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.gh = icmp sgt i8 %.1208, 0
  br i1 %i.gh, label %iter.check612, label %._crit_edge331

iter.check612:                                    ; preds = %.preheader
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 11 uses
  %wide.trip.count400 = zext nneg i8 %.1208 to i64 ; 8 uses
  %min.iters.check598 = icmp ult i8 %.1208, 4
  br i1 %min.iters.check598, label %vec.epilog.scalar.ph613.preheader, label %vector.memcheck595

vector.memcheck595:                               ; preds = %iter.check612
  %i.gj = sub i64 %.1216596, %i.c
  %i.gk = add i64 %i.gj, -66
  %diff.check597 = icmp ult i64 %i.gk, 15
  br i1 %diff.check597, label %vec.epilog.scalar.ph613.preheader, label %vector.main.loop.iter.check599

vector.main.loop.iter.check599:                   ; preds = %vector.memcheck595
  %min.iters.check600 = icmp ult i8 %.1208, 16
  br i1 %min.iters.check600, label %vec.epilog.ph616, label %vector.ph601

vector.ph601:                                     ; preds = %vector.main.loop.iter.check599
  %i.gl = and i64 %wide.trip.count400, 12
  %n.vec602 = and i64 %wide.trip.count400, 112    ; 10 uses
  %i.gm = getelementptr i8, ptr %.1216, i64 %n.vec602 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %wide.load606 = load <8 x i8>, ptr %i.gi, align 1, !tbaa !27
  %wide.load607 = load <8 x i8>, ptr %i.gn, align 1, !tbaa !27
  %i.go = getelementptr i8, ptr %.1216, i64 8
  store <8 x i8> %wide.load606, ptr %.1216, align 1, !tbaa !27
  store <8 x i8> %wide.load607, ptr %i.go, align 1, !tbaa !27
  %i.gp = icmp eq i64 %n.vec602, 16
  br i1 %i.gp, label %middle.block609, label %vector.body603.1

vector.body603.1:                                 ; preds = %vector.ph601
  %next.gep605.1 = getelementptr i8, ptr %.1216, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  %wide.load606.1 = load <8 x i8>, ptr %i.gq, align 1, !tbaa !27
  %wide.load607.1 = load <8 x i8>, ptr %i.gr, align 1, !tbaa !27
  %i.gs = getelementptr i8, ptr %.1216, i64 24
  store <8 x i8> %wide.load606.1, ptr %next.gep605.1, align 1, !tbaa !27
  store <8 x i8> %wide.load607.1, ptr %i.gs, align 1, !tbaa !27
  %i.gt = icmp eq i64 %n.vec602, 32
  br i1 %i.gt, label %middle.block609, label %vector.body603.2

vector.body603.2:                                 ; preds = %vector.body603.1
  %next.gep605.2 = getelementptr i8, ptr %.1216, i64 32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  %wide.load606.2 = load <8 x i8>, ptr %i.gu, align 1, !tbaa !27
  %wide.load607.2 = load <8 x i8>, ptr %i.gv, align 1, !tbaa !27
  %i.gw = getelementptr i8, ptr %.1216, i64 40
  store <8 x i8> %wide.load606.2, ptr %next.gep605.2, align 1, !tbaa !27
  store <8 x i8> %wide.load607.2, ptr %i.gw, align 1, !tbaa !27
  %i.gx = icmp eq i64 %n.vec602, 48
  br i1 %i.gx, label %middle.block609, label %vector.body603.3

vector.body603.3:                                 ; preds = %vector.body603.2
  %next.gep605.3 = getelementptr i8, ptr %.1216, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %wide.load606.3 = load <8 x i8>, ptr %i.gy, align 1, !tbaa !27
  %wide.load607.3 = load <8 x i8>, ptr %i.gz, align 1, !tbaa !27
  %i.ha = getelementptr i8, ptr %.1216, i64 56
  store <8 x i8> %wide.load606.3, ptr %next.gep605.3, align 1, !tbaa !27
  store <8 x i8> %wide.load607.3, ptr %i.ha, align 1, !tbaa !27
  %i.hb = icmp eq i64 %n.vec602, 64
  br i1 %i.hb, label %middle.block609, label %vector.body603.4

vector.body603.4:                                 ; preds = %vector.body603.3
  %next.gep605.4 = getelementptr i8, ptr %.1216, i64 64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %wide.load606.4 = load <8 x i8>, ptr %i.hc, align 1, !tbaa !27
  %wide.load607.4 = load <8 x i8>, ptr %i.hd, align 1, !tbaa !27
  %i.he = getelementptr i8, ptr %.1216, i64 72
  store <8 x i8> %wide.load606.4, ptr %next.gep605.4, align 1, !tbaa !27
  store <8 x i8> %wide.load607.4, ptr %i.he, align 1, !tbaa !27
  %i.hf = icmp eq i64 %n.vec602, 80
  br i1 %i.hf, label %middle.block609, label %vector.body603.5

vector.body603.5:                                 ; preds = %vector.body603.4
  %next.gep605.5 = getelementptr i8, ptr %.1216, i64 80
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 145
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 153
  %wide.load606.5 = load <8 x i8>, ptr %i.hg, align 1, !tbaa !27
  %wide.load607.5 = load <8 x i8>, ptr %i.hh, align 1, !tbaa !27
  %i.hi = getelementptr i8, ptr %.1216, i64 88
  store <8 x i8> %wide.load606.5, ptr %next.gep605.5, align 1, !tbaa !27
  store <8 x i8> %wide.load607.5, ptr %i.hi, align 1, !tbaa !27
  %i.hj = icmp eq i64 %n.vec602, 96
  br i1 %i.hj, label %middle.block609, label %vector.body603.6

vector.body603.6:                                 ; preds = %vector.body603.5
  %next.gep605.6 = getelementptr i8, ptr %.1216, i64 96
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 161
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 169
  %wide.load606.6 = load <8 x i8>, ptr %i.hk, align 1, !tbaa !27
  %wide.load607.6 = load <8 x i8>, ptr %i.hl, align 1, !tbaa !27
  %i.hm = getelementptr i8, ptr %.1216, i64 104
  store <8 x i8> %wide.load606.6, ptr %next.gep605.6, align 1, !tbaa !27
  store <8 x i8> %wide.load607.6, ptr %i.hm, align 1, !tbaa !27
  br label %middle.block609

middle.block609:                                  ; preds = %vector.body603.6, %vector.body603.5, %vector.body603.4, %vector.body603.3, %vector.body603.2, %vector.body603.1, %vector.ph601
  %cmp.n610 = icmp eq i64 %n.vec602, %wide.trip.count400
  br i1 %cmp.n610, label %._crit_edge331, label %vec.epilog.iter.check614

vec.epilog.iter.check614:                         ; preds = %middle.block609
  %min.epilog.iters.check615 = icmp eq i64 %i.gl, 0
  br i1 %min.epilog.iters.check615, label %vec.epilog.scalar.ph613.preheader, label %vec.epilog.ph616, !prof !67

vec.epilog.ph616:                                 ; preds = %vector.main.loop.iter.check599, %vec.epilog.iter.check614
  %vec.epilog.resume.val611 = phi i64 [ %n.vec602, %vec.epilog.iter.check614 ], [ 0, %vector.main.loop.iter.check599 ]
  %n.vec617 = and i64 %wide.trip.count400, 124    ; 4 uses
  %i.hn = getelementptr i8, ptr %.1216, i64 %n.vec617 ; 2 uses
  br label %vec.epilog.vector.body618

vec.epilog.vector.body618:                        ; preds = %vec.epilog.vector.body618, %vec.epilog.ph616
  %index619 = phi i64 [ %vec.epilog.resume.val611, %vec.epilog.ph616 ], [ %index.next622, %vec.epilog.vector.body618 ] ; 3 uses
  %next.gep620 = getelementptr i8, ptr %.1216, i64 %index619
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gi, i64 %index619
  %wide.load621 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !27
  store <4 x i8> %wide.load621, ptr %next.gep620, align 1, !tbaa !27
  %index.next622 = add nuw i64 %index619, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next622, %n.vec617
  br i1 %i.hp, label %vec.epilog.middle.block623, label %vec.epilog.vector.body618, !llvm.loop !68

vec.epilog.middle.block623:                       ; preds = %vec.epilog.vector.body618
  %cmp.n624 = icmp eq i64 %n.vec617, %wide.trip.count400
  br i1 %cmp.n624, label %._crit_edge331, label %vec.epilog.scalar.ph613.preheader

vec.epilog.scalar.ph613.preheader:                ; preds = %vector.memcheck595, %iter.check612, %vec.epilog.iter.check614, %vec.epilog.middle.block623
  %indvars.iv396.ph = phi i64 [ 0, %iter.check612 ], [ 0, %vector.memcheck595 ], [ %n.vec602, %vec.epilog.iter.check614 ], [ %n.vec617, %vec.epilog.middle.block623 ] ; 4 uses
  %.2217328.ph = phi ptr [ %.1216, %iter.check612 ], [ %.1216, %vector.memcheck595 ], [ %i.gm, %vec.epilog.iter.check614 ], [ %i.hn, %vec.epilog.middle.block623 ] ; 2 uses
  %i.hq = sub nsw i64 %wide.trip.count400, %indvars.iv396.ph
  %xtraiter707 = and i64 %i.hq, 7                 ; 2 uses
  %lcmp.mod708.not = icmp eq i64 %xtraiter707, 0
  br i1 %lcmp.mod708.not, label %vec.epilog.scalar.ph613.prol.loopexit, label %vec.epilog.scalar.ph613.prol

vec.epilog.scalar.ph613.prol:                     ; preds = %vec.epilog.scalar.ph613.preheader, %vec.epilog.scalar.ph613.prol
  %indvars.iv396.prol = phi i64 [ %indvars.iv.next397.prol, %vec.epilog.scalar.ph613.prol ], [ %indvars.iv396.ph, %vec.epilog.scalar.ph613.preheader ] ; 2 uses
  %.2217328.prol = phi ptr [ %i.ht, %vec.epilog.scalar.ph613.prol ], [ %.2217328.ph, %vec.epilog.scalar.ph613.preheader ] ; 2 uses
  %prol.iter709 = phi i64 [ %prol.iter709.next, %vec.epilog.scalar.ph613.prol ], [ 0, %vec.epilog.scalar.ph613.preheader ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv396.prol
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !27
  %i.ht = getelementptr inbounds nuw i8, ptr %.2217328.prol, i64 1 ; 3 uses
  store i8 %i.hs, ptr %.2217328.prol, align 1, !tbaa !27
  %indvars.iv.next397.prol = add nuw nsw i64 %indvars.iv396.prol, 1 ; 2 uses
  %prol.iter709.next = add i64 %prol.iter709, 1   ; 2 uses
  %prol.iter709.cmp.not = icmp eq i64 %prol.iter709.next, %xtraiter707
  br i1 %prol.iter709.cmp.not, label %vec.epilog.scalar.ph613.prol.loopexit, label %vec.epilog.scalar.ph613.prol, !llvm.loop !69

vec.epilog.scalar.ph613.prol.loopexit:            ; preds = %vec.epilog.scalar.ph613.prol, %vec.epilog.scalar.ph613.preheader
  %.lcssa674.unr = phi ptr [ poison, %vec.epilog.scalar.ph613.preheader ], [ %i.ht, %vec.epilog.scalar.ph613.prol ]
  %indvars.iv396.unr = phi i64 [ %indvars.iv396.ph, %vec.epilog.scalar.ph613.preheader ], [ %indvars.iv.next397.prol, %vec.epilog.scalar.ph613.prol ]
  %.2217328.unr = phi ptr [ %.2217328.ph, %vec.epilog.scalar.ph613.preheader ], [ %i.ht, %vec.epilog.scalar.ph613.prol ]
  %i.hu = sub nsw i64 %indvars.iv396.ph, %wide.trip.count400
  %i.hv = icmp ugt i64 %i.hu, -8
  br i1 %i.hv, label %._crit_edge331, label %vec.epilog.scalar.ph613

bb.ak:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.hw = zext nneg i8 %.1208 to i32
  %.neg253 = sub nsw i32 %i.hw, %.lcssa
  %i.hx = sext i32 %.neg253 to i64
  %i.hy = getelementptr inbounds i8, ptr %.2221.lcssa, i64 %i.hx ; 2 uses
  %i.hz = icmp slt i8 %.1208, %.2205.lcssa
  br i1 %i.hz, label %iter.check580, label %._crit_edge326

iter.check580:                                    ; preds = %bb.aa, %bb.ad, %bb.ak
  %i.ia = phi ptr [ %i.hy, %bb.ak ], [ %.0219294, %bb.ad ], [ %.0219294, %bb.aa ] ; 7 uses
  %.1208431441457 = phi i8 [ %.1208, %bb.ak ], [ 0, %bb.ad ], [ 0, %bb.aa ]
  %.1216429442456 = phi ptr [ %.1216, %bb.ak ], [ %.0215295, %bb.ad ], [ %.0215295, %bb.aa ] ; 4 uses
  %.2205.lcssa444454 = phi i8 [ %.2205.lcssa, %bb.ak ], [ 1, %bb.ad ], [ 1, %bb.aa ] ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.ic = zext i8 %.1208431441457 to i64          ; 8 uses
  %wide.trip.count394 = zext nneg i8 %.2205.lcssa444454 to i64 ; 4 uses
  %i.id = sub nsw i64 %wide.trip.count394, %i.ic  ; 7 uses
  %min.iters.check565 = icmp ult i64 %i.id, 8
  br i1 %min.iters.check565, label %vec.epilog.scalar.ph581.preheader, label %vector.memcheck563

vector.memcheck563:                               ; preds = %iter.check580
  %i.ie = ptrtoaddr ptr %i.ia to i64
  %i.if = add i64 %i.c, %i.ic
  %i.ig = sub i64 %i.if, %i.ie
  %i.ih = add i64 %i.ig, 64
  %diff.check564 = icmp ult i64 %i.ih, 31
  br i1 %diff.check564, label %vec.epilog.scalar.ph581.preheader, label %vector.main.loop.iter.check566

vector.main.loop.iter.check566:                   ; preds = %vector.memcheck563
  %min.iters.check567 = icmp ult i64 %i.id, 32
  br i1 %min.iters.check567, label %vec.epilog.ph584, label %vector.ph568

vector.ph568:                                     ; preds = %vector.main.loop.iter.check566
  %i.ii = and i64 %i.id, 24
  %n.vec569 = and i64 %i.id, -32                  ; 5 uses
end_hunk_0
