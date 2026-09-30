Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/upx?download=true
inline.NumInlined: 25
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@upx_inflate2e:bb.a
bb.aa:                                            ; preds = %bb.w
  %i.da = shl i32 %i.bq, 1                        ; 2 uses
  store i32 %i.da, ptr %i.a, align 4, !tbaa !9
  %i.db = and i32 %i.bq, 2147483647
  %.not.i209 = icmp eq i32 %i.db, 0
  br i1 %.not.i209, label %bb.ab, label %doubleebx.exit215

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.c, label %bb.ac, label %doubleebx.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dc = zext i32 %i.bp to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %i.dc ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = add i64 %i.de, 4                        ; 2 uses
  %.not34.i212 = icmp ule i64 %i.df, %i.f
  %i.dg = icmp ugt i64 %i.df, %i.e
  %or.cond.i213 = and i1 %.not34.i212, %i.dg
  %i.dh = icmp ugt i64 %i.f, %i.de
  %or.cond35.i214 = and i1 %i.dh, %or.cond.i213
  br i1 %or.cond35.i214, label %bb.ad, label %doubleebx.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.di = load i32, ptr %i.dd, align 1, !tbaa !8  ; 2 uses
  %i.dj = shl i32 %i.di, 1
  %i.dk = or disjoint i32 %i.dj, 1                ; 2 uses
  store i32 %i.dk, ptr %i.a, align 4, !tbaa !9
  %i.dl = add i32 %i.bp, 4                        ; 2 uses
  store i32 %i.dl, ptr %i.b, align 4, !tbaa !9
  br label %doubleebx.exit215

doubleebx.exit215:                                ; preds = %bb.aa, %bb.ad
  %i.dm = phi i32 [ %i.da, %bb.aa ], [ %i.dk, %bb.ad ]
  %.promoted260297 = phi i32 [ %i.bp, %bb.aa ], [ %i.dl, %bb.ad ]
  %.0.i210 = phi i32 [ %i.bq, %bb.aa ], [ %i.di, %bb.ad ]
  %i.dn = lshr i32 %.0.i210, 31
  br label %bb.ae

bb.ae:                                            ; preds = %doubleebx.exit215, %bb.z
  %i.do = phi i32 [ %i.bq, %bb.z ], [ %i.dm, %doubleebx.exit215 ] ; 3 uses
  %i.dp = phi i32 [ %i.cr, %bb.z ], [ %.promoted260297, %doubleebx.exit215 ] ; 3 uses
  %.1141 = phi i32 [ %i.cz, %bb.z ], [ %.0140, %doubleebx.exit215 ] ; 5 uses
  %.0138 = phi i32 [ %i.cy, %bb.z ], [ %i.dn, %doubleebx.exit215 ]
  %.not172 = icmp eq i32 %.0138, 0
  br i1 %.not172, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = shl i32 %i.do, 1                        ; 2 uses
  store i32 %i.dq, ptr %i.a, align 4, !tbaa !9
  %i.dr = and i32 %i.do, 2147483647
  %.not.i216 = icmp eq i32 %i.dr, 0
  br i1 %.not.i216, label %bb.ag, label %doubleebx.exit222

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
  %spec.select = add i32 %.2, %i.ft               ; 5 uses
  %i.fu = icmp ugt i32 %spec.select, -3
  br i1 %i.fu, label %doubleebx.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fv = add nuw i32 %spec.select, 2             ; 3 uses
  %i.fw = load i32, ptr %3, align 4, !tbaa !9     ; 3 uses
  %i.fx = zext i32 %i.fw to i64
  %.not174 = icmp eq i32 %i.fw, 0
  %i.fy = zext i32 %i.fv to i64                   ; 10 uses
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
  %7 = add i32 %spec.select, 1                    ; 2 uses
  %i.go = xor i32 %i.y, -1
  %8 = icmp ugt i32 %7, %i.go
  %i.gp = xor i32 %i.gn, -1
  %i.gq = icmp ugt i32 %7, %i.gp
  %i.gr = or i1 %8, %i.gq
  br i1 %i.gr, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gs = and i64 %indvars.iv, 4294967295
  %i.gt = zext i32 %i.gn to i64
  %i.gu = sub nsw i64 %i.gt, %i.gs
  %diff.check = icmp ugt i64 %i.gu, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check336 = icmp ult i32 %spec.select, 30
  br i1 %min.iters.check336, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gv = and i64 %i.fy, 28
  %n.vec = and i64 %i.fy, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gw = trunc nuw i64 %index to i32
  %i.gx = add i32 %i.gn, %i.gw
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 %i.gy ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load = load <16 x i8>, ptr %i.gz, align 1, !tbaa !8
  %wide.load337 = load <16 x i8>, ptr %i.ha, align 1, !tbaa !8
  %i.hb = add nuw i64 %index, %indvars.iv
  %i.hc = and i64 %i.hb, 4294967295
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store <16 x i8> %wide.load, ptr %i.hd, align 1, !tbaa !8
  store <16 x i8> %wide.load337, ptr %i.he, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fy
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec338 = and i64 %i.fy, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index339 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next341, %vec.epilog.vector.body ] ; 3 uses
  %i.hg = trunc nuw i64 %index339 to i32
  %i.hh = add i32 %i.gn, %i.hg
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 %i.hi
  %wide.load340 = load <4 x i8>, ptr %i.hj, align 1, !tbaa !8
  %i.hk = add nuw i64 %index339, %indvars.iv
  %i.hl = and i64 %i.hk, 4294967295
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 %i.hl
  store <4 x i8> %wide.load340, ptr %i.hm, align 1, !tbaa !8
  %index.next341 = add nuw i64 %index339, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next341, %n.vec338
  br i1 %i.hn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n342 = icmp eq i64 %n.vec338, %i.fy
  br i1 %cmp.n342, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv285.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec338, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %i.fy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ho = trunc nuw i64 %indvars.iv285.ph to i32
  %i.hp = add i32 %i.gn, %i.ho
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !8
  %i.ht = add nuw i64 %indvars.iv285.ph, %indvars.iv
  %i.hu = and i64 %i.ht, 4294967295
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 %i.hu
  store i8 %i.hs, ptr %i.hv, align 1, !tbaa !8
  %indvars.iv.next286.prol = or disjoint i64 %indvars.iv285.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next286.prol, %vec.epilog.scalar.ph.prol ]
  %i.hw = add nsw i64 %i.fy, -1
  %i.hx = icmp eq i64 %indvars.iv285.ph, %i.hw
  br i1 %i.hx, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.1, %vec.epilog.scalar.ph ], [ %indvars.iv285.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.hy = trunc nuw i64 %indvars.iv285 to i32
  %i.hz = add i32 %i.gn, %i.hy
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !8
  %i.id = add nuw i64 %indvars.iv285, %indvars.iv
  %i.ie = and i64 %i.id, 4294967295
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 %i.ie
  store i8 %i.ic, ptr %i.if, align 1, !tbaa !8
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ig = trunc nuw i64 %indvars.iv.next286 to i32
  %i.ih = add i32 %i.gn, %i.ig
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !8
  %i.il = add nuw i64 %indvars.iv.next286, %indvars.iv
  %i.im = and i64 %i.il, 4294967295
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 %i.im
  store i8 %i.ik, ptr %i.in, align 1, !tbaa !8
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next286.1, %i.fy
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !21

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.io = add i32 %i.fv, %i.y
  br label %bb.b

bb.bc:                                            ; preds = %bb.y
  %i.ip = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2e.magic, i32 noundef %i.y)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.ag, %bb.ah, %bb.ab, %bb.ac, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.aw, %bb.au, %bb.ak, %bb.aj, %bb.x, %bb.d, %bb.e, %bb.g, %bb.h, %bb.s, %bb.t, %bb.o, %bb.p, %bb.k, %bb.l, %doubleebx.exit208, %doubleebx.exit194, %bb.ar, %bb.as, %bb.an, %bb.ao, %doubleebx.exit229, %bb.bc
  %.0143 = phi i32 [ -1, %bb.d ], [ -1, %bb.ar ], [ %i.ip, %bb.bc ], [ -1, %bb.s ], [ -1, %doubleebx.exit229 ], [ -1, %bb.ao ], [ -1, %bb.an ], [ -1, %bb.as ], [ -1, %doubleebx.exit194 ], [ -1, %doubleebx.exit208 ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.p ], [ -1, %bb.o ], [ -1, %bb.t ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ %i.ed, %bb.aj ], [ -1, %bb.x ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.ba ], [ -1, %bb.bb ], [ -1, %bb.aw ], [ -1, %bb.au ], [ -1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.ab ], [ -1, %bb.ac ], [ -1, %bb.ak ], [ -1, %bb.ax ]
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
  store ptr %i.a, ptr %i.q, align 8, !tbaa !29
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
  store ptr %i.y, ptr %i.q, align 8, !tbaa !29
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
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  ret i32 %.0
}
end_hunk_0
