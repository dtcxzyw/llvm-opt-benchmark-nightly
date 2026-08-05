inline.NumInlined: 25
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@upx_inflate2b:bb.a
  %i.br = zext i32 %.3 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = add i64 %i.bt, 4                        ; 2 uses
  %.not34.i189 = icmp ule i64 %i.bu, %i.d
  %i.bv = icmp ugt i64 %i.bu, %i.c
  %or.cond.i190 = and i1 %.not34.i189, %i.bv
  %i.bw = icmp ugt i64 %i.d, %i.bt
  %or.cond35.i191 = and i1 %i.bw, %or.cond.i190
  br i1 %or.cond35.i191, label %doubleebx.exit192.thread, label %doubleebx.exit.thread

doubleebx.exit192:                                ; preds = %bb.v
  %i.bx = shl i32 %.9247, 1
  %i.by = shl i32 %.9247, 2
  %i.bz = and i32 %.9247, 1073741823
  %.not.i193 = icmp eq i32 %i.bz, 0
  br i1 %.not.i193, label %bb.y, label %doubleebx.exit199

doubleebx.exit192.thread:                         ; preds = %bb.x
  %i.ca = load i32, ptr %i.bs, align 1, !tbaa !8  ; 2 uses
  %i.cb = shl i32 %i.ca, 1
  %i.cc = or disjoint i32 %i.cb, 1                ; 2 uses
  %i.cd = add i32 %.3, 4
  %i.ce = shl i32 %i.cc, 1
  br label %doubleebx.exit199

bb.y:                                             ; preds = %doubleebx.exit192
  br i1 %i.a, label %bb.z, label %doubleebx.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.cf = zext i32 %.3 to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = add i64 %i.ch, 4                        ; 2 uses
  %.not34.i196 = icmp ule i64 %i.ci, %i.d
  %i.cj = icmp ugt i64 %i.ci, %i.c
  %or.cond.i197 = and i1 %.not34.i196, %i.cj
  %i.ck = icmp ugt i64 %i.d, %i.ch
  %or.cond35.i198 = and i1 %i.ck, %or.cond.i197
  br i1 %or.cond35.i198, label %bb.aa, label %doubleebx.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.cl = load i32, ptr %i.cg, align 1, !tbaa !8  ; 2 uses
  %i.cm = shl i32 %i.cl, 1
  %i.cn = or disjoint i32 %i.cm, 1
  %i.co = add i32 %.3, 4
  br label %doubleebx.exit199

doubleebx.exit199:                                ; preds = %doubleebx.exit192.thread, %doubleebx.exit192, %bb.aa
  %.0.i187318 = phi i32 [ %.9247, %bb.aa ], [ %.9247, %doubleebx.exit192 ], [ %i.ca, %doubleebx.exit192.thread ]
  %.13251 = phi i32 [ %i.cn, %bb.aa ], [ %i.by, %doubleebx.exit192 ], [ %i.ce, %doubleebx.exit192.thread ] ; 2 uses
  %.14 = phi i32 [ %i.co, %bb.aa ], [ %.3, %doubleebx.exit192 ], [ %i.cd, %doubleebx.exit192.thread ] ; 2 uses
  %.0.i194 = phi i32 [ %i.cl, %bb.aa ], [ %i.bx, %doubleebx.exit192 ], [ %i.cc, %doubleebx.exit192.thread ]
  %i.cp = lshr i32 %.0.i194, 31
  %i.cq = lshr i32 %.0.i187318, 30
  %i.cr = and i32 %i.cq, 2
  %i.cs = or disjoint i32 %i.cp, %i.cr            ; 2 uses
  %.not157 = icmp eq i32 %i.cs, 0
  br i1 %.not157, label %.preheader283, label %bb.ak

.preheader283:                                    ; preds = %doubleebx.exit199, %doubleebx.exit213
  %.3241 = phi i32 [ %.17255, %doubleebx.exit213 ], [ %.13251, %doubleebx.exit199 ] ; 3 uses
  %.4 = phi i32 [ %.18, %doubleebx.exit213 ], [ %.14, %doubleebx.exit199 ] ; 3 uses
  %.0125 = phi i32 [ %i.dj, %doubleebx.exit213 ], [ 1, %doubleebx.exit199 ] ; 2 uses
  %i.ct = shl i32 %.3241, 1
  %i.cu = and i32 %.3241, 2147483647
  %.not.i200 = icmp eq i32 %i.cu, 0
  br i1 %.not.i200, label %bb.ab, label %doubleebx.exit206

bb.ab:                                            ; preds = %.preheader283
  br i1 %i.a, label %bb.ac, label %doubleebx.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cv = zext i32 %.4 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %i.cv ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cy = add i64 %i.cx, 4                        ; 2 uses
  %.not34.i203 = icmp ule i64 %i.cy, %i.d
  %i.cz = icmp ugt i64 %i.cy, %i.c
  %or.cond.i204 = and i1 %.not34.i203, %i.cz
  %i.da = icmp ugt i64 %i.d, %i.cx
  %or.cond35.i205 = and i1 %i.da, %or.cond.i204
  br i1 %or.cond35.i205, label %bb.ad, label %doubleebx.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.db = load i32, ptr %i.cw, align 1, !tbaa !8  ; 2 uses
  %i.dc = shl i32 %i.db, 1
  %i.dd = or disjoint i32 %i.dc, 1
  %i.de = add i32 %.4, 4
  br label %doubleebx.exit206

doubleebx.exit206:                                ; preds = %.preheader283, %bb.ad
  %.15253 = phi i32 [ %i.dd, %bb.ad ], [ %i.ct, %.preheader283 ] ; 3 uses
  %.16 = phi i32 [ %i.de, %bb.ad ], [ %.4, %.preheader283 ] ; 3 uses
  %.0.i201 = phi i32 [ %i.db, %bb.ad ], [ %.3241, %.preheader283 ]
  %i.df = lshr i32 %.0.i201, 31                   ; 2 uses
  %i.dg = add i32 %i.df, %.0125
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %doubleebx.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %doubleebx.exit206
  %i.di = shl i32 %.0125, 1                       ; 2 uses
  %i.dj = or disjoint i32 %i.df, %i.di            ; 2 uses
  %i.dk = shl i32 %.15253, 1
  %i.dl = and i32 %.15253, 2147483647
  %.not.i207 = icmp eq i32 %i.dl, 0
  br i1 %.not.i207, label %bb.af, label %doubleebx.exit213

bb.af:                                            ; preds = %bb.ae
  br i1 %i.a, label %bb.ag, label %doubleebx.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.dm = zext i32 %.16 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm ; 2 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dp = add i64 %i.do, 4                        ; 2 uses
  %.not34.i210 = icmp ule i64 %i.dp, %i.d
  %i.dq = icmp ugt i64 %i.dp, %i.c
  %or.cond.i211 = and i1 %.not34.i210, %i.dq
  %i.dr = icmp ugt i64 %i.d, %i.do
  %or.cond35.i212 = and i1 %i.dr, %or.cond.i211
  br i1 %or.cond35.i212, label %bb.ah, label %doubleebx.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ds = load i32, ptr %i.dn, align 1, !tbaa !8  ; 2 uses
  %i.dt = shl i32 %i.ds, 1
  %i.du = or disjoint i32 %i.dt, 1
  %i.dv = add i32 %.16, 4
  br label %doubleebx.exit213

doubleebx.exit213:                                ; preds = %bb.ae, %bb.ah
  %.17255 = phi i32 [ %i.du, %bb.ah ], [ %i.dk, %bb.ae ] ; 2 uses
  %.18 = phi i32 [ %i.dv, %bb.ah ], [ %.16, %bb.ae ] ; 2 uses
  %.0.i208 = phi i32 [ %i.ds, %bb.ah ], [ %.15253, %bb.ae ]
  %cond280 = icmp sgt i32 %.0.i208, -1
  br i1 %cond280, label %.preheader283, label %bb.ai

bb.ai:                                            ; preds = %doubleebx.exit213
  %i.dw = icmp eq i32 %i.di, -2
  br i1 %i.dw, label %doubleebx.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = add nuw i32 %i.dj, 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %doubleebx.exit199
  %.4242 = phi i32 [ %.17255, %bb.aj ], [ %.13251, %doubleebx.exit199 ]
  %.5 = phi i32 [ %.18, %bb.aj ], [ %.14, %doubleebx.exit199 ]
  %.1126 = phi i32 [ %i.dx, %bb.aj ], [ %i.cs, %doubleebx.exit199 ]
  %i.dy = icmp ult i32 %.1128, -3328
  %i.dz = zext i1 %i.dy to i32
  %spec.select = add i32 %.1126, %i.dz            ; 2 uses
  %i.ea = add i32 %spec.select, 1                 ; 4 uses
  %i.eb = load i32, ptr %3, align 4, !tbaa !9     ; 3 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp eq i32 %i.eb, 0
  %i.ee = zext i32 %i.ea to i64                   ; 11 uses
  %i.ef = icmp uge i32 %spec.select, %i.eb
  %or.cond165 = select i1 %i.ed, i1 true, i1 %i.ef
  br i1 %or.cond165, label %doubleebx.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.eh = sext i32 %.1128 to i64                  ; 2 uses
  %i.ei = add nsw i64 %indvars.iv, %i.eh
  %.not159 = icmp slt i64 %i.ei, 0
  br i1 %.not159, label %doubleebx.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 %i.eh
  %i.ek = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.el = add i64 %i.ee, %i.ek                    ; 2 uses
  %i.em = add i64 %i.ec, %i.e                     ; 4 uses
  %.not160 = icmp ule i64 %i.el, %i.em
  %i.en = icmp ugt i64 %i.el, %i.e
  %or.cond166 = and i1 %.not160, %i.en
  %i.eo = icmp ugt i64 %i.em, %i.ek
  %or.cond167 = and i1 %i.eo, %or.cond166
  br i1 %or.cond167, label %bb.an, label %doubleebx.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.ep = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.eq = add i64 %i.ee, %i.ep                    ; 2 uses
  %.not162 = icmp ule i64 %i.eq, %i.em
  %i.er = icmp ugt i64 %i.eq, %i.e
  %or.cond168 = and i1 %.not162, %i.er
  br i1 %or.cond168, label %bb.ao, label %doubleebx.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.es = icmp ule i64 %i.em, %i.ep
  %i.et = icmp sgt i32 %.1128, -1
  %or.cond7 = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond7, label %doubleebx.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.ao
  %i.eu = add i32 %.1128, %i.s                    ; 7 uses
  %min.iters.check = icmp ult i32 %i.ea, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ev = add nsw i64 %i.ee, -1                   ; 2 uses
  %i.ew = trunc i64 %i.ev to i32                  ; 2 uses
  %i.ex = xor i32 %i.s, -1
  %i.ey = icmp ult i32 %i.ex, %i.ew
  %i.ez = xor i32 %i.eu, -1
  %i.fa = icmp ult i32 %i.ez, %i.ew
  %i.fb = icmp ugt i64 %i.ev, 4294967295
  %i.fc = or i1 %i.fa, %i.fb
  %i.fd = or i1 %i.ey, %i.fc
  br i1 %i.fd, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fe = and i64 %indvars.iv, 4294967295
  %i.ff = zext i32 %i.eu to i64
  %i.fg = sub nsw i64 %i.ff, %i.fe
  %diff.check = icmp ugt i64 %i.fg, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check345 = icmp ult i32 %i.ea, 32
  br i1 %min.iters.check345, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ee, 28
  %n.vec = and i64 %i.ee, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fh = trunc nuw i64 %index to i32
  %i.fi = add i32 %i.eu, %i.fh
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <16 x i8>, ptr %i.fk, align 1, !tbaa !8
  %wide.load346 = load <16 x i8>, ptr %i.fl, align 1, !tbaa !8
  %i.fm = add nuw i64 %index, %indvars.iv
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <16 x i8> %wide.load, ptr %i.fo, align 1, !tbaa !8
  store <16 x i8> %wide.load346, ptr %i.fp, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ee
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec348 = and i64 %i.ee, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index349 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next351, %vec.epilog.vector.body ] ; 3 uses
  %i.fr = trunc nuw i64 %index349 to i32
  %i.fs = add i32 %i.eu, %i.fr
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ft
  %wide.load350 = load <4 x i8>, ptr %i.fu, align 1, !tbaa !8
  %i.fv = add nuw i64 %index349, %indvars.iv
  %i.fw = and i64 %i.fv, 4294967295
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 %i.fw
  store <4 x i8> %wide.load350, ptr %i.fx, align 1, !tbaa !8
  %index.next351 = add nuw i64 %index349, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next351, %n.vec348
  br i1 %i.fy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n352 = icmp eq i64 %n.vec348, %i.ee
  br i1 %cmp.n352, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv305.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec348, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %i.ee, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fz = trunc nuw i64 %indvars.iv305.ph to i32
  %i.ga = add i32 %i.eu, %i.fz
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !8
  %i.ge = add nuw i64 %indvars.iv305.ph, %indvars.iv
  %i.gf = and i64 %i.ge, 4294967295
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 %i.gf
  store i8 %i.gd, ptr %i.gg, align 1, !tbaa !8
  %indvars.iv.next306.prol = or disjoint i64 %indvars.iv305.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv305.unr = phi i64 [ %indvars.iv305.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph.prol ]
  %i.gh = add nsw i64 %i.ee, -1
  %i.gi = icmp eq i64 %indvars.iv305.ph, %i.gh
  br i1 %i.gi, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv305 = phi i64 [ %indvars.iv.next306.1, %vec.epilog.scalar.ph ], [ %indvars.iv305.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.gj = trunc nuw i64 %indvars.iv305 to i32
  %i.gk = add i32 %i.eu, %i.gj
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !8
  %i.go = add nuw i64 %indvars.iv305, %indvars.iv
  %i.gp = and i64 %i.go, 4294967295
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 %i.gp
  store i8 %i.gn, ptr %i.gq, align 1, !tbaa !8
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %i.gr = trunc nuw i64 %indvars.iv.next306 to i32
  %i.gs = add i32 %i.eu, %i.gr
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !8
  %i.gw = add nuw i64 %indvars.iv.next306, %indvars.iv
  %i.gx = and i64 %i.gw, 4294967295
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 %i.gx
  store i8 %i.gv, ptr %i.gy, align 1, !tbaa !8
  %indvars.iv.next306.1 = add nuw nsw i64 %indvars.iv305, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next306.1, %i.ee
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.gz = add i32 %i.ea, %i.s
  br label %bb.b

bb.ap:                                            ; preds = %bb.t
  %i.ha = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2b.magic, i32 noundef %i.s)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.y, %bb.z, %bb.w, %bb.x, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ai, %bb.s, %bb.d, %bb.e, %bb.g, %bb.h, %bb.o, %bb.p, %bb.k, %bb.l, %doubleebx.exit178, %bb.af, %bb.ag, %bb.ab, %bb.ac, %doubleebx.exit206, %bb.ap
  %.0130 = phi i32 [ -1, %bb.o ], [ -1, %bb.d ], [ %i.ha, %bb.ap ], [ -1, %bb.af ], [ -1, %doubleebx.exit206 ], [ -1, %bb.ac ], [ -1, %bb.ab ], [ -1, %bb.ag ], [ -1, %doubleebx.exit178 ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.p ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.s ], [ -1, %bb.ai ], [ -1, %bb.ao ], [ -1, %bb.an ], [ -1, %bb.am ], [ -1, %bb.al ], [ -1, %bb.ak ], [ -1, %bb.x ], [ -1, %bb.w ], [ -1, %bb.z ], [ -1, %bb.y ]
  ret i32 %.0130
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 2) i32 @doubleebx(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9      ; 3 uses
  %i.b = shl i32 %i.a, 1
  store i32 %i.b, ptr %1, align 4, !tbaa !9
  %i.c = and i32 %i.a, 2147483647
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i32 %3, 3
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %3 to i64
  %i.f = load i32, ptr %2, align 4, !tbaa !9
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.k = add i64 %i.i, 4                          ; 2 uses
  %i.l = add i64 %i.e, %i.j                       ; 2 uses
  %.not34 = icmp ule i64 %i.k, %i.l
  %i.m = icmp ugt i64 %i.k, %i.j
  %or.cond = and i1 %.not34, %i.m
  %i.n = icmp ugt i64 %i.l, %i.i
  %or.cond35 = and i1 %i.n, %or.cond
  br i1 %or.cond35, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.h, align 1, !tbaa !8    ; 2 uses
  %i.p = shl i32 %i.o, 1
  %i.q = or disjoint i32 %i.p, 1
  store i32 %i.q, ptr %1, align 4, !tbaa !9
  %i.r = load i32, ptr %2, align 4, !tbaa !9
  %i.s = add i32 %i.r, 4
  store i32 %i.s, ptr %2, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.o, %bb.d ]
  %i.t = lshr i32 %.0, 31
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.027 = phi i32 [ %i.t, %bb.e ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pefromupx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.thread471, label %.preheader491

.preheader491:                                    ; preds = %bb.a
end_hunk_0
begin_hunk_1_@upx_inflate2d:bb.a
  %i.cs = icmp ugt i64 %i.cr, %i.c
  %or.cond.i207 = and i1 %.not34.i206, %i.cs
  %i.ct = icmp ugt i64 %i.d, %i.cq
  %or.cond35.i208 = and i1 %i.ct, %or.cond.i207
  br i1 %or.cond35.i208, label %bb.ad, label %doubleebx.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i32, ptr %i.cp, align 1, !tbaa !8  ; 2 uses
  %i.cv = shl i32 %i.cu, 1
  %i.cw = or disjoint i32 %i.cv, 1
  %i.cx = add i32 %.10, 4
  br label %doubleebx.exit209

doubleebx.exit209:                                ; preds = %bb.aa, %bb.ad
  %.14273 = phi i32 [ %i.cw, %bb.ad ], [ %i.cm, %bb.aa ]
  %.14 = phi i32 [ %i.cx, %bb.ad ], [ %.10, %bb.aa ]
  %.0.i204 = phi i32 [ %i.cu, %bb.ad ], [ %.10269, %bb.aa ]
  %i.cy = lshr i32 %.0.i204, 31
  br label %bb.ae

bb.ae:                                            ; preds = %doubleebx.exit209, %bb.z
  %.3262 = phi i32 [ %.10269, %bb.z ], [ %.14273, %doubleebx.exit209 ] ; 3 uses
  %.3 = phi i32 [ %i.ci, %bb.z ], [ %.14, %doubleebx.exit209 ] ; 3 uses
  %.1137 = phi i32 [ %i.cl, %bb.z ], [ %.0136, %doubleebx.exit209 ] ; 5 uses
  %.0134 = phi i32 [ %i.ck, %bb.z ], [ %i.cy, %doubleebx.exit209 ]
  %i.cz = shl i32 %.3262, 1
  %i.da = and i32 %.3262, 2147483647
  %.not.i210 = icmp eq i32 %i.da, 0
  br i1 %.not.i210, label %bb.af, label %doubleebx.exit216

bb.af:                                            ; preds = %bb.ae
  br i1 %i.a, label %bb.ag, label %doubleebx.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.db = zext i32 %.3 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %i.db ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.de = add i64 %i.dd, 4                        ; 2 uses
  %.not34.i213 = icmp ule i64 %i.de, %i.d
  %i.df = icmp ugt i64 %i.de, %i.c
  %or.cond.i214 = and i1 %.not34.i213, %i.df
  %i.dg = icmp ugt i64 %i.d, %i.dd
  %or.cond35.i215 = and i1 %i.dg, %or.cond.i214
  br i1 %or.cond35.i215, label %bb.ah, label %doubleebx.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.dh = load i32, ptr %i.dc, align 1, !tbaa !8  ; 2 uses
  %i.di = shl i32 %i.dh, 1
  %i.dj = or disjoint i32 %i.di, 1
  %i.dk = add i32 %.3, 4
  br label %doubleebx.exit216

doubleebx.exit216:                                ; preds = %bb.ae, %bb.ah
  %.16275 = phi i32 [ %i.dj, %bb.ah ], [ %i.cz, %bb.ae ] ; 2 uses
  %.16 = phi i32 [ %i.dk, %bb.ah ], [ %.3, %bb.ae ] ; 2 uses
  %.0.i211 = phi i32 [ %i.dh, %bb.ah ], [ %.3262, %bb.ae ]
  %i.dl = tail call i32 @llvm.fshl.i32(i32 %.0134, i32 %.0.i211, i32 1) ; 2 uses
  %.not167 = icmp eq i32 %i.dl, 0
  br i1 %.not167, label %.preheader310, label %bb.ar

.preheader310:                                    ; preds = %doubleebx.exit216, %doubleebx.exit230
  %.4263 = phi i32 [ %.20279, %doubleebx.exit230 ], [ %.16275, %doubleebx.exit216 ] ; 3 uses
  %.4 = phi i32 [ %.20, %doubleebx.exit230 ], [ %.16, %doubleebx.exit216 ] ; 3 uses
  %.1135 = phi i32 [ %i.ec, %doubleebx.exit230 ], [ 1, %doubleebx.exit216 ] ; 2 uses
  %i.dm = shl i32 %.4263, 1
  %i.dn = and i32 %.4263, 2147483647
  %.not.i217 = icmp eq i32 %i.dn, 0
  br i1 %.not.i217, label %bb.ai, label %doubleebx.exit223

bb.ai:                                            ; preds = %.preheader310
  br i1 %i.a, label %bb.aj, label %doubleebx.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.do = zext i32 %.4 to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %i.do ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.dr = add i64 %i.dq, 4                        ; 2 uses
  %.not34.i220 = icmp ule i64 %i.dr, %i.d
  %i.ds = icmp ugt i64 %i.dr, %i.c
  %or.cond.i221 = and i1 %.not34.i220, %i.ds
  %i.dt = icmp ugt i64 %i.d, %i.dq
  %or.cond35.i222 = and i1 %i.dt, %or.cond.i221
  br i1 %or.cond35.i222, label %bb.ak, label %doubleebx.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.du = load i32, ptr %i.dp, align 1, !tbaa !8  ; 2 uses
  %i.dv = shl i32 %i.du, 1
  %i.dw = or disjoint i32 %i.dv, 1
  %i.dx = add i32 %.4, 4
  br label %doubleebx.exit223

doubleebx.exit223:                                ; preds = %.preheader310, %bb.ak
  %.18277 = phi i32 [ %i.dw, %bb.ak ], [ %i.dm, %.preheader310 ] ; 3 uses
  %.18 = phi i32 [ %i.dx, %bb.ak ], [ %.4, %.preheader310 ] ; 3 uses
  %.0.i218 = phi i32 [ %i.du, %bb.ak ], [ %.4263, %.preheader310 ]
  %i.dy = lshr i32 %.0.i218, 31                   ; 2 uses
  %i.dz = add i32 %i.dy, %.1135
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %doubleebx.exit.thread, label %bb.al

bb.al:                                            ; preds = %doubleebx.exit223
  %i.eb = shl i32 %.1135, 1                       ; 2 uses
  %i.ec = or disjoint i32 %i.dy, %i.eb            ; 2 uses
  %i.ed = shl i32 %.18277, 1
  %i.ee = and i32 %.18277, 2147483647
  %.not.i224 = icmp eq i32 %i.ee, 0
  br i1 %.not.i224, label %bb.am, label %doubleebx.exit230

bb.am:                                            ; preds = %bb.al
  br i1 %i.a, label %bb.an, label %doubleebx.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.ef = zext i32 %.18 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ef ; 2 uses
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = add i64 %i.eh, 4                        ; 2 uses
  %.not34.i227 = icmp ule i64 %i.ei, %i.d
  %i.ej = icmp ugt i64 %i.ei, %i.c
  %or.cond.i228 = and i1 %.not34.i227, %i.ej
  %i.ek = icmp ugt i64 %i.d, %i.eh
  %or.cond35.i229 = and i1 %i.ek, %or.cond.i228
  br i1 %or.cond35.i229, label %bb.ao, label %doubleebx.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.el = load i32, ptr %i.eg, align 1, !tbaa !8  ; 2 uses
  %i.em = shl i32 %i.el, 1
  %i.en = or disjoint i32 %i.em, 1
  %i.eo = add i32 %.18, 4
  br label %doubleebx.exit230

doubleebx.exit230:                                ; preds = %bb.al, %bb.ao
  %.20279 = phi i32 [ %i.en, %bb.ao ], [ %i.ed, %bb.al ] ; 2 uses
  %.20 = phi i32 [ %i.eo, %bb.ao ], [ %.18, %bb.al ] ; 2 uses
  %.0.i225 = phi i32 [ %i.el, %bb.ao ], [ %.18277, %bb.al ]
  %cond307 = icmp sgt i32 %.0.i225, -1
  br i1 %cond307, label %.preheader310, label %bb.ap

bb.ap:                                            ; preds = %doubleebx.exit230
  %i.ep = icmp eq i32 %i.eb, -2
  br i1 %i.ep, label %doubleebx.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eq = add nuw i32 %i.ec, 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %doubleebx.exit216
  %.5264 = phi i32 [ %.20279, %bb.aq ], [ %.16275, %doubleebx.exit216 ]
  %.5 = phi i32 [ %.20, %bb.aq ], [ %.16, %doubleebx.exit216 ]
  %.2 = phi i32 [ %i.eq, %bb.aq ], [ %i.dl, %doubleebx.exit216 ]
  %i.er = icmp ult i32 %.1137, -1280
  %i.es = zext i1 %i.er to i32
  %spec.select = add i32 %.2, %i.es               ; 2 uses
  %i.et = add i32 %spec.select, 1                 ; 4 uses
  %i.eu = load i32, ptr %3, align 4, !tbaa !9     ; 3 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp eq i32 %i.eu, 0
  %i.ex = zext i32 %i.et to i64                   ; 11 uses
  %i.ey = icmp uge i32 %spec.select, %i.eu
  %or.cond175 = select i1 %i.ew, i1 true, i1 %i.ey
  br i1 %or.cond175, label %doubleebx.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.fa = sext i32 %.1137 to i64                  ; 2 uses
  %i.fb = add nsw i64 %indvars.iv, %i.fa
  %.not169 = icmp slt i64 %i.fb, 0
  br i1 %.not169, label %doubleebx.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 %i.fa
  %i.fd = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fe = add i64 %i.ex, %i.fd                    ; 2 uses
  %i.ff = add i64 %i.ev, %i.e                     ; 4 uses
  %.not170 = icmp ule i64 %i.fe, %i.ff
  %i.fg = icmp ugt i64 %i.fe, %i.e
  %or.cond176 = and i1 %.not170, %i.fg
  %i.fh = icmp ugt i64 %i.ff, %i.fd
  %or.cond177 = and i1 %i.fh, %or.cond176
  br i1 %or.cond177, label %bb.au, label %doubleebx.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.fi = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fj = add i64 %i.ex, %i.fi                    ; 2 uses
  %.not172 = icmp ule i64 %i.fj, %i.ff
  %i.fk = icmp ugt i64 %i.fj, %i.e
  %or.cond178 = and i1 %.not172, %i.fk
  br i1 %or.cond178, label %bb.av, label %doubleebx.exit.thread

bb.av:                                            ; preds = %bb.au
  %i.fl = icmp ule i64 %i.ff, %i.fi
  %i.fm = icmp sgt i32 %.1137, -1
  %or.cond7 = select i1 %i.fl, i1 true, i1 %i.fm
  br i1 %or.cond7, label %doubleebx.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.av
  %i.fn = add i32 %.1137, %i.s                    ; 7 uses
  %min.iters.check = icmp ult i32 %i.et, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fo = add nsw i64 %i.ex, -1                   ; 2 uses
  %i.fp = trunc i64 %i.fo to i32                  ; 2 uses
  %i.fq = xor i32 %i.s, -1
  %i.fr = icmp ult i32 %i.fq, %i.fp
  %i.fs = xor i32 %i.fn, -1
  %i.ft = icmp ult i32 %i.fs, %i.fp
  %i.fu = icmp ugt i64 %i.fo, 4294967295
  %i.fv = or i1 %i.ft, %i.fu
  %i.fw = or i1 %i.fr, %i.fv
  br i1 %i.fw, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fx = and i64 %indvars.iv, 4294967295
  %i.fy = zext i32 %i.fn to i64
  %i.fz = sub nsw i64 %i.fy, %i.fx
  %diff.check = icmp ugt i64 %i.fz, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check361 = icmp ult i32 %i.et, 32
  br i1 %min.iters.check361, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ex, 28
  %n.vec = and i64 %i.ex, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ga = trunc nuw i64 %index to i32
  %i.gb = add i32 %i.fn, %i.ga
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load = load <16 x i8>, ptr %i.gd, align 1, !tbaa !8
  %wide.load362 = load <16 x i8>, ptr %i.ge, align 1, !tbaa !8
  %i.gf = add nuw i64 %index, %indvars.iv
  %i.gg = and i64 %i.gf, 4294967295
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <16 x i8> %wide.load, ptr %i.gh, align 1, !tbaa !8
  store <16 x i8> %wide.load362, ptr %i.gi, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ex
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec364 = and i64 %i.ex, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index365 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next367, %vec.epilog.vector.body ] ; 3 uses
  %i.gk = trunc nuw i64 %index365 to i32
  %i.gl = add i32 %i.fn, %i.gk
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 %i.gm
  %wide.load366 = load <4 x i8>, ptr %i.gn, align 1, !tbaa !8
  %i.go = add nuw i64 %index365, %indvars.iv
  %i.gp = and i64 %i.go, 4294967295
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 %i.gp
  store <4 x i8> %wide.load366, ptr %i.gq, align 1, !tbaa !8
  %index.next367 = add nuw i64 %index365, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next367, %n.vec364
  br i1 %i.gr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n368 = icmp eq i64 %n.vec364, %i.ex
  br i1 %cmp.n368, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv332.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec364, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %i.ex, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gs = trunc nuw i64 %indvars.iv332.ph to i32
  %i.gt = add i32 %i.fn, %i.gs
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !8
  %i.gx = add nuw i64 %indvars.iv332.ph, %indvars.iv
  %i.gy = and i64 %i.gx, 4294967295
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 %i.gy
  store i8 %i.gw, ptr %i.gz, align 1, !tbaa !8
  %indvars.iv.next333.prol = or disjoint i64 %indvars.iv332.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv332.unr = phi i64 [ %indvars.iv332.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next333.prol, %vec.epilog.scalar.ph.prol ]
  %i.ha = add nsw i64 %i.ex, -1
  %i.hb = icmp eq i64 %indvars.iv332.ph, %i.ha
  br i1 %i.hb, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv332 = phi i64 [ %indvars.iv.next333.1, %vec.epilog.scalar.ph ], [ %indvars.iv332.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.hc = trunc nuw i64 %indvars.iv332 to i32
  %i.hd = add i32 %i.fn, %i.hc
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !8
  %i.hh = add nuw i64 %indvars.iv332, %indvars.iv
  %i.hi = and i64 %i.hh, 4294967295
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 %i.hi
  store i8 %i.hg, ptr %i.hj, align 1, !tbaa !8
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %i.hk = trunc nuw i64 %indvars.iv.next333 to i32
  %i.hl = add i32 %i.fn, %i.hk
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !8
  %i.hp = add nuw i64 %indvars.iv.next333, %indvars.iv
  %i.hq = and i64 %i.hp, 4294967295
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %i.hq
  store i8 %i.ho, ptr %i.hr, align 1, !tbaa !8
  %indvars.iv.next333.1 = add nuw nsw i64 %indvars.iv332, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next333.1, %i.ex
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.hs = add i32 %i.et, %i.s
  br label %bb.b

bb.aw:                                            ; preds = %bb.y
  %i.ht = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2d.magic, i32 noundef %i.s)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.af, %bb.ag, %bb.ab, %bb.ac, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.ap, %bb.x, %bb.d, %bb.e, %bb.g, %bb.h, %bb.s, %bb.t, %bb.o, %bb.p, %bb.k, %bb.l, %doubleebx.exit202, %doubleebx.exit188, %bb.am, %bb.an, %bb.ai, %bb.aj, %doubleebx.exit223, %bb.aw
  %.0139 = phi i32 [ -1, %bb.d ], [ %i.ht, %bb.aw ], [ -1, %bb.s ], [ -1, %bb.am ], [ -1, %doubleebx.exit223 ], [ -1, %bb.aj ], [ -1, %bb.ai ], [ -1, %bb.an ], [ -1, %doubleebx.exit188 ], [ -1, %doubleebx.exit202 ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.p ], [ -1, %bb.o ], [ -1, %bb.t ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.x ], [ -1, %bb.ap ], [ -1, %bb.av ], [ -1, %bb.au ], [ -1, %bb.at ], [ -1, %bb.as ], [ -1, %bb.ar ], [ -1, %bb.ac ], [ -1, %bb.ab ], [ -1, %bb.ag ], [ -1, %bb.af ]
  ret i32 %.0139
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @upx_inflate2e(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = icmp ugt i32 %1, 3                       ; 8 uses
  %i.d = zext i32 %1 to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.f = add i64 %i.d, %i.e                       ; 16 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.promoted260 = phi i32 [ 0, %bb.a ], [ %.promoted260294, %.loopexit ]
  %.promoted = phi i32 [ 0, %bb.a ], [ %.promoted290, %.loopexit ]
  %.0140 = phi i32 [ -1, %bb.a ], [ %.1141, %.loopexit ]
  %.0137 = phi i32 [ 0, %bb.a ], [ %i.is, %.loopexit ]
  %i.h = zext i32 %.0137 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.h, %bb.b ] ; 12 uses
  %i.i = phi i32 [ %i.ab, %bb.i ], [ %.promoted260, %bb.b ] ; 3 uses
  %i.j = phi i32 [ %i.x, %bb.i ], [ %.promoted, %bb.b ] ; 3 uses
  %i.k = shl i32 %i.j, 1
  %i.l = and i32 %i.j, 2147483647
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %doubleebx.exit

bb.d:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.e, label %doubleebx.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = zext i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 4                          ; 2 uses
  %.not34.i = icmp ule i64 %i.p, %i.f
  %i.q = icmp ugt i64 %i.p, %i.e
  %or.cond.i = and i1 %.not34.i, %i.q
  %i.r = icmp ugt i64 %i.f, %i.o
  %or.cond35.i = and i1 %i.r, %or.cond.i
  br i1 %or.cond35.i, label %bb.f, label %doubleebx.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.n, align 1, !tbaa !8    ; 2 uses
  %i.t = shl i32 %i.s, 1
  %i.u = or disjoint i32 %i.t, 1
  %i.v = add i32 %i.i, 4
  br label %doubleebx.exit

doubleebx.exit:                                   ; preds = %bb.c, %bb.f
  %i.w = phi i32 [ %i.i, %bb.c ], [ %i.v, %bb.f ] ; 4 uses
  %i.x = phi i32 [ %i.k, %bb.c ], [ %i.u, %bb.f ] ; 2 uses
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %i.s, %bb.f ]
  %cond = icmp sgt i32 %.0.i, -1
  br i1 %cond, label %.preheader249, label %bb.g

.preheader249:                                    ; preds = %doubleebx.exit
  %i.y = trunc i64 %indvars.iv to i32             ; 4 uses
  br label %bb.j

bb.g:                                             ; preds = %doubleebx.exit
end_hunk_1
begin_hunk_2_@upx_inflate2e:bb.a
bb.ag:                                            ; preds = %bb.af
  br i1 %i.c, label %bb.ah, label %doubleebx.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ds = zext i32 %i.dp to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ds ; 2 uses
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dv = add i64 %i.du, 4                        ; 2 uses
  %.not34.i219 = icmp ule i64 %i.dv, %i.f
  %i.dw = icmp ugt i64 %i.dv, %i.e
  %or.cond.i220 = and i1 %.not34.i219, %i.dw
  %i.dx = icmp ugt i64 %i.f, %i.du
  %or.cond35.i221 = and i1 %i.dx, %or.cond.i220
  br i1 %or.cond35.i221, label %bb.ai, label %doubleebx.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dy = load i32, ptr %i.dt, align 1, !tbaa !8  ; 2 uses
  %i.dz = shl i32 %i.dy, 1
  %i.ea = or disjoint i32 %i.dz, 1                ; 2 uses
  store i32 %i.ea, ptr %i.a, align 4, !tbaa !9
  %i.eb = add i32 %i.dp, 4                        ; 2 uses
  store i32 %i.eb, ptr %i.b, align 4, !tbaa !9
  br label %doubleebx.exit222

doubleebx.exit222:                                ; preds = %bb.af, %bb.ai
  %.promoted260295 = phi i32 [ %i.dp, %bb.af ], [ %i.eb, %bb.ai ]
  %.promoted291 = phi i32 [ %i.dq, %bb.af ], [ %i.ea, %bb.ai ]
  %.0.i217 = phi i32 [ %i.do, %bb.af ], [ %i.dy, %bb.ai ]
  %i.ec = lshr i32 %.0.i217, 31
  br label %bb.aw

bb.aj:                                            ; preds = %bb.ae
  %i.ed = call fastcc i32 @doubleebx(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %1) ; 2 uses
  switch i32 %i.ed, label %bb.ak [
    i32 -1, label %doubleebx.exit.thread
    i32 0, label %.preheader248
  ]

.preheader248:                                    ; preds = %bb.aj
  %.promoted266 = load i32, ptr %i.a, align 4, !tbaa !9
  %.promoted268 = load i32, ptr %i.b, align 4
  br label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ee = call fastcc i32 @doubleebx(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %1) ; 2 uses
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %doubleebx.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.promoted260.pre = load i32, ptr %i.b, align 4
  %.promoted.pre = load i32, ptr %i.a, align 4, !tbaa !9
  %i.eg = add nuw nsw i32 %i.ee, 2
  br label %bb.aw

bb.am:                                            ; preds = %.preheader248, %doubleebx.exit236
  %i.eh = phi i32 [ %i.fo, %doubleebx.exit236 ], [ %.promoted268, %.preheader248 ] ; 3 uses
  %i.ei = phi i32 [ %i.fp, %doubleebx.exit236 ], [ %.promoted266, %.preheader248 ] ; 3 uses
  %.1139 = phi i32 [ %i.fb, %doubleebx.exit236 ], [ 1, %.preheader248 ] ; 2 uses
  %i.ej = shl i32 %i.ei, 1
  %i.ek = and i32 %i.ei, 2147483647
  %.not.i223 = icmp eq i32 %i.ek, 0
  br i1 %.not.i223, label %bb.an, label %doubleebx.exit229

bb.an:                                            ; preds = %bb.am
  br i1 %i.c, label %bb.ao, label %doubleebx.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.el = zext i32 %i.eh to i64
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.el ; 2 uses
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = add i64 %i.en, 4                        ; 2 uses
  %.not34.i226 = icmp ule i64 %i.eo, %i.f
  %i.ep = icmp ugt i64 %i.eo, %i.e
  %or.cond.i227 = and i1 %.not34.i226, %i.ep
  %i.eq = icmp ugt i64 %i.f, %i.en
  %or.cond35.i228 = and i1 %i.eq, %or.cond.i227
  br i1 %or.cond35.i228, label %bb.ap, label %doubleebx.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.er = load i32, ptr %i.em, align 1, !tbaa !8  ; 2 uses
  %i.es = shl i32 %i.er, 1
  %i.et = or disjoint i32 %i.es, 1
  %i.eu = add i32 %i.eh, 4
  br label %doubleebx.exit229

doubleebx.exit229:                                ; preds = %bb.am, %bb.ap
  %i.ev = phi i32 [ %i.eh, %bb.am ], [ %i.eu, %bb.ap ] ; 3 uses
  %i.ew = phi i32 [ %i.ej, %bb.am ], [ %i.et, %bb.ap ] ; 3 uses
  %.0.i224 = phi i32 [ %i.ei, %bb.am ], [ %i.er, %bb.ap ]
  %i.ex = lshr i32 %.0.i224, 31                   ; 2 uses
  %i.ey = add i32 %i.ex, %.1139
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %doubleebx.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %doubleebx.exit229
  %i.fa = shl i32 %.1139, 1                       ; 2 uses
  %i.fb = or disjoint i32 %i.ex, %i.fa            ; 2 uses
  %i.fc = shl i32 %i.ew, 1
  %i.fd = and i32 %i.ew, 2147483647
  %.not.i230 = icmp eq i32 %i.fd, 0
  br i1 %.not.i230, label %bb.ar, label %doubleebx.exit236

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.c, label %bb.as, label %doubleebx.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.fe = zext i32 %i.ev to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fe ; 2 uses
  %i.fg = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fh = add i64 %i.fg, 4                        ; 2 uses
  %.not34.i233 = icmp ule i64 %i.fh, %i.f
  %i.fi = icmp ugt i64 %i.fh, %i.e
  %or.cond.i234 = and i1 %.not34.i233, %i.fi
  %i.fj = icmp ugt i64 %i.f, %i.fg
  %or.cond35.i235 = and i1 %i.fj, %or.cond.i234
  br i1 %or.cond35.i235, label %bb.at, label %doubleebx.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.fk = load i32, ptr %i.ff, align 1, !tbaa !8  ; 2 uses
  %i.fl = shl i32 %i.fk, 1
  %i.fm = or disjoint i32 %i.fl, 1
  %i.fn = add i32 %i.ev, 4
  br label %doubleebx.exit236

doubleebx.exit236:                                ; preds = %bb.aq, %bb.at
  %i.fo = phi i32 [ %i.ev, %bb.aq ], [ %i.fn, %bb.at ] ; 3 uses
  %i.fp = phi i32 [ %i.fc, %bb.aq ], [ %i.fm, %bb.at ] ; 3 uses
  %.0.i231 = phi i32 [ %i.ew, %bb.aq ], [ %i.fk, %bb.at ]
  %cond247 = icmp sgt i32 %.0.i231, -1
  br i1 %cond247, label %bb.am, label %bb.au

bb.au:                                            ; preds = %doubleebx.exit236
  store i32 %i.fp, ptr %i.a, align 4, !tbaa !9
  store i32 %i.fo, ptr %i.b, align 4
  %i.fq = icmp eq i32 %i.fa, -2
  br i1 %i.fq, label %doubleebx.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = add nuw i32 %i.fb, 2
  br label %bb.aw

bb.aw:                                            ; preds = %doubleebx.exit222, %bb.al, %bb.av
  %.promoted260294 = phi i32 [ %.promoted260295, %doubleebx.exit222 ], [ %.promoted260.pre, %bb.al ], [ %i.fo, %bb.av ]
  %.promoted290 = phi i32 [ %.promoted291, %doubleebx.exit222 ], [ %.promoted.pre, %bb.al ], [ %i.fp, %bb.av ]
  %.2 = phi i32 [ %i.ec, %doubleebx.exit222 ], [ %i.eg, %bb.al ], [ %i.fr, %bb.av ]
  %i.fs = icmp ult i32 %.1141, -1280
  %i.ft = zext i1 %i.fs to i32
  %spec.select = add i32 %.2, %i.ft               ; 4 uses
  %i.fu = icmp ugt i32 %spec.select, -3
  br i1 %i.fu, label %doubleebx.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fv = add nuw i32 %spec.select, 2             ; 3 uses
  %i.fw = load i32, ptr %3, align 4, !tbaa !9     ; 3 uses
  %i.fx = zext i32 %i.fw to i64
  %.not174 = icmp eq i32 %i.fw, 0
  %i.fy = zext i32 %i.fv to i64                   ; 11 uses
  %.not175 = icmp ugt i32 %i.fv, %i.fw
  %or.cond = select i1 %.not174, i1 true, i1 %.not175
  br i1 %or.cond, label %doubleebx.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.ga = sext i32 %.1141 to i64                  ; 2 uses
  %i.gb = add nsw i64 %indvars.iv, %i.ga
  %.not176 = icmp slt i64 %i.gb, 0
  br i1 %.not176, label %doubleebx.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %i.ga
  %i.gd = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.ge = add i64 %i.fy, %i.gd                    ; 2 uses
  %i.gf = add i64 %i.fx, %i.g                     ; 4 uses
  %.not177 = icmp ule i64 %i.ge, %i.gf
  %i.gg = icmp ugt i64 %i.ge, %i.g
  %or.cond182 = and i1 %i.gg, %.not177
  %i.gh = icmp ugt i64 %i.gf, %i.gd
  %or.cond183 = and i1 %i.gh, %or.cond182
  br i1 %or.cond183, label %bb.ba, label %doubleebx.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.gi = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.gj = add i64 %i.fy, %i.gi                    ; 2 uses
  %.not179 = icmp ule i64 %i.gj, %i.gf
  %i.gk = icmp ugt i64 %i.gj, %i.g
  %or.cond184 = and i1 %i.gk, %.not179
  br i1 %or.cond184, label %bb.bb, label %doubleebx.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.gl = icmp ule i64 %i.gf, %i.gi
  %i.gm = icmp sgt i32 %.1141, -1
  %or.cond7 = select i1 %i.gl, i1 true, i1 %i.gm
  br i1 %or.cond7, label %doubleebx.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.bb
  %i.gn = add i32 %.1141, %i.y                    ; 7 uses
  %min.iters.check = icmp ult i32 %spec.select, 2
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.go = add nsw i64 %i.fy, -1                   ; 2 uses
  %i.gp = trunc i64 %i.go to i32                  ; 2 uses
  %i.gq = xor i32 %i.y, -1
  %i.gr = icmp ult i32 %i.gq, %i.gp
  %i.gs = xor i32 %i.gn, -1
  %i.gt = icmp ult i32 %i.gs, %i.gp
  %i.gu = icmp ugt i64 %i.go, 4294967295
  %i.gv = or i1 %i.gt, %i.gu
  %i.gw = or i1 %i.gr, %i.gv
  br i1 %i.gw, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gx = and i64 %indvars.iv, 4294967295
  %i.gy = zext i32 %i.gn to i64
  %i.gz = sub nsw i64 %i.gy, %i.gx
  %diff.check = icmp ugt i64 %i.gz, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check337 = icmp ult i32 %spec.select, 30
  br i1 %min.iters.check337, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.fy, 28
  %n.vec = and i64 %i.fy, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ha = trunc nuw i64 %index to i32
  %i.hb = add i32 %i.gn, %i.ha
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load = load <16 x i8>, ptr %i.hd, align 1, !tbaa !8
  %wide.load338 = load <16 x i8>, ptr %i.he, align 1, !tbaa !8
  %i.hf = add nuw i64 %index, %indvars.iv
  %i.hg = and i64 %i.hf, 4294967295
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <16 x i8> %wide.load, ptr %i.hh, align 1, !tbaa !8
  store <16 x i8> %wide.load338, ptr %i.hi, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fy
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec340 = and i64 %i.fy, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index341 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next343, %vec.epilog.vector.body ] ; 3 uses
  %i.hk = trunc nuw i64 %index341 to i32
  %i.hl = add i32 %i.gn, %i.hk
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 %i.hm
  %wide.load342 = load <4 x i8>, ptr %i.hn, align 1, !tbaa !8
  %i.ho = add nuw i64 %index341, %indvars.iv
  %i.hp = and i64 %i.ho, 4294967295
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 %i.hp
  store <4 x i8> %wide.load342, ptr %i.hq, align 1, !tbaa !8
  %index.next343 = add nuw i64 %index341, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next343, %n.vec340
  br i1 %i.hr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n344 = icmp eq i64 %n.vec340, %i.fy
  br i1 %cmp.n344, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv285.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec340, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %i.fy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.hs = trunc nuw i64 %indvars.iv285.ph to i32
  %i.ht = add i32 %i.gn, %i.hs
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !8
  %i.hx = add nuw i64 %indvars.iv285.ph, %indvars.iv
  %i.hy = and i64 %i.hx, 4294967295
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 %i.hy
  store i8 %i.hw, ptr %i.hz, align 1, !tbaa !8
  %indvars.iv.next286.prol = or disjoint i64 %indvars.iv285.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next286.prol, %vec.epilog.scalar.ph.prol ]
  %i.ia = add nsw i64 %i.fy, -1
  %i.ib = icmp eq i64 %indvars.iv285.ph, %i.ia
  br i1 %i.ib, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.1, %vec.epilog.scalar.ph ], [ %indvars.iv285.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.ic = trunc nuw i64 %indvars.iv285 to i32
  %i.id = add i32 %i.gn, %i.ic
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !8
  %i.ih = add nuw i64 %indvars.iv285, %indvars.iv
  %i.ii = and i64 %i.ih, 4294967295
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 %i.ii
  store i8 %i.ig, ptr %i.ij, align 1, !tbaa !8
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ik = trunc nuw i64 %indvars.iv.next286 to i32
  %i.il = add i32 %i.gn, %i.ik
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !8
  %i.ip = add nuw i64 %indvars.iv.next286, %indvars.iv
  %i.iq = and i64 %i.ip, 4294967295
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 %i.iq
  store i8 %i.io, ptr %i.ir, align 1, !tbaa !8
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next286.1, %i.fy
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !21

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.is = add i32 %i.fv, %i.y
  br label %bb.b

bb.bc:                                            ; preds = %bb.y
  %i.it = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2e.magic, i32 noundef %i.y)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.ag, %bb.ah, %bb.ab, %bb.ac, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.aw, %bb.au, %bb.ak, %bb.aj, %bb.x, %bb.d, %bb.e, %bb.g, %bb.h, %bb.s, %bb.t, %bb.o, %bb.p, %bb.k, %bb.l, %doubleebx.exit208, %doubleebx.exit194, %bb.ar, %bb.as, %bb.an, %bb.ao, %doubleebx.exit229, %bb.bc
  %.0143 = phi i32 [ -1, %bb.d ], [ -1, %bb.ar ], [ %i.it, %bb.bc ], [ -1, %bb.s ], [ -1, %doubleebx.exit229 ], [ -1, %bb.ao ], [ -1, %bb.an ], [ -1, %bb.as ], [ -1, %doubleebx.exit194 ], [ -1, %doubleebx.exit208 ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.p ], [ -1, %bb.o ], [ -1, %bb.t ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ %i.ed, %bb.aj ], [ -1, %bb.x ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.ba ], [ -1, %bb.bb ], [ -1, %bb.aw ], [ -1, %bb.au ], [ -1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.ab ], [ -1, %bb.ac ], [ -1, %bb.ak ], [ -1, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0143
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @upx_inflatelzma(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.CLI_LZMA, align 8           ; 10 uses
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %8, i8 0, i64 200, i1 false)
  %i.b = load i32, ptr %3, align 4, !tbaa !9      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i32 %i.b, ptr %i.c, align 1, !tbaa !8
  %i.d = and i32 %7, 255
  %i.e = icmp samesign ugt i32 %i.d, 8
  %i.f = and i32 %7, 65280
  %i.g = icmp samesign ugt i32 %i.f, 1024
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  %i.h = and i32 %7, 16711680
  %i.i = icmp samesign ugt i32 %i.h, 262144
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i32 %7, 16
  %i.k = lshr i32 %7, 8
  %i.l = mul nuw nsw i32 %i.j, 5
  %i.m = add nuw nsw i32 %i.l, %i.k
  %i.n = mul nuw nsw i32 %i.m, 9
  %i.o = add i32 %i.n, %7
  %i.p = trunc i32 %i.o to i8
  store i8 %i.p, ptr %i.a, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  store ptr %i.a, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 184 ; 2 uses
  store i64 5, ptr %i.r, align 8, !tbaa !30
  %i.s = zext i32 %i.b to i64
  %i.t = call i32 @cli_LzmaInit(ptr noundef nonnull %8, i64 noundef %i.s) #7
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = zext i32 %1 to i64
  store i64 %i.u, ptr %i.r, align 8, !tbaa !30
  %i.v = load i32, ptr %3, align 4, !tbaa !9
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 192
  store i64 %i.w, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.y, ptr %i.q, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr %2, ptr %i.z, align 8, !tbaa !32
  %i.aa = call i32 @cli_LzmaDecode(ptr noundef nonnull %8) #7
  %i.ab = icmp eq i32 %i.aa, 1
  call void @cli_LzmaShutdown(ptr noundef nonnull %8) #7
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %3, align 4, !tbaa !9
  %i.ad = call fastcc i32 @pefromupx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflatelzma.magic, i32 noundef %i.ac)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %i.ad, %bb.d ], [ -1, %bb.a ], [ 0, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
end_hunk_2
