inline.NumInlined: 49
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@upx_inflate2b:bb.a
  br i1 %.not28.i152, label %doubleebx.exit.thread, label %doubleebx.exit154.thread

doubleebx.exit154:                                ; preds = %bb.j
  %i.w = shl i32 %.2211, 1
  %i.x = tail call i32 @llvm.fshl.i32(i32 %.0110, i32 %.2211, i32 1) ; 2 uses
  %i.y = shl i32 %.2211, 2
  %i.z = and i32 %.2211, 1073741823
  %.not.i155 = icmp eq i32 %i.z, 0
  br i1 %.not.i155, label %bb.m, label %doubleebx.exit160

doubleebx.exit154.thread:                         ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %.val.i153 = load i32, ptr %i.aa, align 1       ; 2 uses
  %i.ab = shl i32 %.val.i153, 1
  %i.ac = or disjoint i32 %i.ab, 1                ; 2 uses
  %i.ad = add i32 %.2, 4
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %.0110, i32 %.val.i153, i32 1)
  %i.af = shl i32 %i.ac, 1
  br label %doubleebx.exit160

bb.m:                                             ; preds = %doubleebx.exit154
  br i1 %i.a, label %bb.n, label %doubleebx.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ag = zext i32 %.2 to i64                     ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 4
  %.not28.i158 = icmp samesign ugt i64 %i.ah, %i.b
  br i1 %.not28.i158, label %doubleebx.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %.val.i159 = load i32, ptr %i.ai, align 1       ; 2 uses
  %i.aj = shl i32 %.val.i159, 1
  %i.ak = or disjoint i32 %i.aj, 1
  %i.al = add i32 %.2, 4
  br label %doubleebx.exit160

doubleebx.exit160:                                ; preds = %doubleebx.exit154.thread, %doubleebx.exit154, %bb.o
  %i.am = phi i32 [ %i.x, %bb.o ], [ %i.x, %doubleebx.exit154 ], [ %i.ae, %doubleebx.exit154.thread ] ; 3 uses
  %.9218 = phi i32 [ %i.ak, %bb.o ], [ %i.y, %doubleebx.exit154 ], [ %i.af, %doubleebx.exit154.thread ] ; 7 uses
  %.10 = phi i32 [ %i.al, %bb.o ], [ %.2, %doubleebx.exit154 ], [ %i.ad, %doubleebx.exit154.thread ] ; 5 uses
  %.0.i156 = phi i32 [ %.val.i159, %bb.o ], [ %i.w, %doubleebx.exit154 ], [ %i.ac, %doubleebx.exit154.thread ]
  %cond249 = icmp sgt i32 %.0.i156, -1
  br i1 %cond249, label %bb.j, label %bb.p

bb.p:                                             ; preds = %doubleebx.exit160
  %i.an = icmp sgt i32 %i.am, 2
  br i1 %i.an, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not134 = icmp ult i32 %.10, %1
  br i1 %.not134, label %bb.r, label %doubleebx.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ao = shl i32 %i.am, 8
  %i.ap = add i32 %i.ao, -768
  %i.aq = zext i32 %.10 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ap, %i.at            ; 2 uses
  %.not135 = icmp eq i32 %i.au, -1
  br i1 %.not135, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = add nuw i32 %.10, 1
  %i.aw = xor i32 %i.au, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.3 = phi i32 [ %i.av, %bb.s ], [ %.10, %bb.p ] ; 5 uses
  %.1109 = phi i32 [ %i.aw, %bb.s ], [ %.0108, %bb.p ] ; 5 uses
  %i.ax = and i32 %.9218, 2147483647
  %.not.i161 = icmp eq i32 %i.ax, 0
  br i1 %.not.i161, label %bb.u, label %doubleebx.exit166

bb.u:                                             ; preds = %bb.t
  br i1 %i.a, label %bb.v, label %doubleebx.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ay = zext i32 %.3 to i64                     ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 4
  %.not28.i164 = icmp samesign ugt i64 %i.az, %i.b
  br i1 %.not28.i164, label %doubleebx.exit.thread, label %doubleebx.exit166.thread

doubleebx.exit166:                                ; preds = %bb.t
  %i.ba = shl i32 %.9218, 1
  %i.bb = shl i32 %.9218, 2
  %i.bc = and i32 %.9218, 1073741823
  %.not.i167 = icmp eq i32 %i.bc, 0
  br i1 %.not.i167, label %bb.w, label %doubleebx.exit172

doubleebx.exit166.thread:                         ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %.val.i165 = load i32, ptr %i.bd, align 1       ; 2 uses
  %i.be = shl i32 %.val.i165, 1
  %i.bf = or disjoint i32 %i.be, 1                ; 2 uses
  %i.bg = add i32 %.3, 4
  %i.bh = shl i32 %i.bf, 1
  br label %doubleebx.exit172

bb.w:                                             ; preds = %doubleebx.exit166
  br i1 %i.a, label %bb.x, label %doubleebx.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bi = zext i32 %.3 to i64                     ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 4
  %.not28.i170 = icmp samesign ugt i64 %i.bj, %i.b
  br i1 %.not28.i170, label %doubleebx.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %.val.i171 = load i32, ptr %i.bk, align 1       ; 2 uses
  %i.bl = shl i32 %.val.i171, 1
  %i.bm = or disjoint i32 %i.bl, 1
  %i.bn = add i32 %.3, 4
  br label %doubleebx.exit172

doubleebx.exit172:                                ; preds = %doubleebx.exit166.thread, %doubleebx.exit166, %bb.y
  %.0.i162294 = phi i32 [ %.9218, %bb.y ], [ %.9218, %doubleebx.exit166 ], [ %.val.i165, %doubleebx.exit166.thread ]
  %.13222 = phi i32 [ %i.bm, %bb.y ], [ %i.bb, %doubleebx.exit166 ], [ %i.bh, %doubleebx.exit166.thread ] ; 2 uses
  %.14 = phi i32 [ %i.bn, %bb.y ], [ %.3, %doubleebx.exit166 ], [ %i.bg, %doubleebx.exit166.thread ] ; 2 uses
  %.0.i168 = phi i32 [ %.val.i171, %bb.y ], [ %i.ba, %doubleebx.exit166 ], [ %i.bf, %doubleebx.exit166.thread ]
  %i.bo = lshr i32 %.0.i168, 31
  %i.bp = lshr i32 %.0.i162294, 30
  %i.bq = and i32 %i.bp, 2
  %i.br = or disjoint i32 %i.bo, %i.bq            ; 2 uses
  %.not136 = icmp eq i32 %i.br, 0
  br i1 %.not136, label %.preheader254, label %bb.af

.preheader254:                                    ; preds = %doubleebx.exit172, %doubleebx.exit184
  %.3212 = phi i32 [ %.17226, %doubleebx.exit184 ], [ %.13222, %doubleebx.exit172 ] ; 5 uses
  %.4 = phi i32 [ %.18, %doubleebx.exit184 ], [ %.14, %doubleebx.exit172 ] ; 5 uses
  %.0106 = phi i32 [ %i.cl, %doubleebx.exit184 ], [ 1, %doubleebx.exit172 ] ; 2 uses
  %i.bs = and i32 %.3212, 2147483647
  %.not.i173 = icmp eq i32 %i.bs, 0
  br i1 %.not.i173, label %bb.z, label %doubleebx.exit178

bb.z:                                             ; preds = %.preheader254
  br i1 %i.a, label %bb.aa, label %doubleebx.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bt = zext i32 %.4 to i64                     ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, 4
  %.not28.i176 = icmp samesign ugt i64 %i.bu, %i.b
  br i1 %.not28.i176, label %doubleebx.exit.thread, label %doubleebx.exit178.thread

doubleebx.exit178:                                ; preds = %.preheader254
  %i.bv = shl i32 %.3212, 1
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %.0106, i32 %.3212, i32 1) ; 2 uses
  %i.bx = shl i32 %.3212, 2
  %i.by = and i32 %.3212, 1073741823
  %.not.i179 = icmp eq i32 %i.by, 0
  br i1 %.not.i179, label %bb.ab, label %doubleebx.exit184

doubleebx.exit178.thread:                         ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %.val.i177 = load i32, ptr %i.bz, align 1       ; 2 uses
  %i.ca = shl i32 %.val.i177, 1
  %i.cb = or disjoint i32 %i.ca, 1                ; 2 uses
  %i.cc = add i32 %.4, 4
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %.0106, i32 %.val.i177, i32 1)
  %i.ce = shl i32 %i.cb, 1
  br label %doubleebx.exit184

bb.ab:                                            ; preds = %doubleebx.exit178
  br i1 %i.a, label %bb.ac, label %doubleebx.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cf = zext i32 %.4 to i64                     ; 2 uses
  %i.cg = add nuw nsw i64 %i.cf, 4
  %.not28.i182 = icmp samesign ugt i64 %i.cg, %i.b
  br i1 %.not28.i182, label %doubleebx.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %.val.i183 = load i32, ptr %i.ch, align 1       ; 2 uses
  %i.ci = shl i32 %.val.i183, 1
  %i.cj = or disjoint i32 %i.ci, 1
  %i.ck = add i32 %.4, 4
  br label %doubleebx.exit184

doubleebx.exit184:                                ; preds = %doubleebx.exit178.thread, %doubleebx.exit178, %bb.ad
  %i.cl = phi i32 [ %i.bw, %bb.ad ], [ %i.bw, %doubleebx.exit178 ], [ %i.cd, %doubleebx.exit178.thread ] ; 2 uses
  %.17226 = phi i32 [ %i.cj, %bb.ad ], [ %i.bx, %doubleebx.exit178 ], [ %i.ce, %doubleebx.exit178.thread ] ; 2 uses
  %.18 = phi i32 [ %i.ck, %bb.ad ], [ %.4, %doubleebx.exit178 ], [ %i.cc, %doubleebx.exit178.thread ] ; 2 uses
  %.0.i180 = phi i32 [ %.val.i183, %bb.ad ], [ %i.bv, %doubleebx.exit178 ], [ %i.cb, %doubleebx.exit178.thread ]
  %cond250 = icmp sgt i32 %.0.i180, -1
  br i1 %cond250, label %.preheader254, label %bb.ae

bb.ae:                                            ; preds = %doubleebx.exit184
  %i.cm = add i32 %i.cl, 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %doubleebx.exit172
  %.4213 = phi i32 [ %.17226, %bb.ae ], [ %.13222, %doubleebx.exit172 ]
  %.5 = phi i32 [ %.18, %bb.ae ], [ %.14, %doubleebx.exit172 ]
  %.1107 = phi i32 [ %i.cm, %bb.ae ], [ %i.br, %doubleebx.exit172 ]
  %i.cn = icmp ult i32 %.1109, -3328
  %i.co = zext i1 %i.cn to i32
  %spec.select = add i32 %.1107, %i.co            ; 7 uses
  %i.cp = add nuw i32 %spec.select, 1             ; 2 uses
  %i.cq = load i32, ptr %3, align 4, !tbaa !4     ; 3 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = icmp uge i32 %spec.select, %i.cq
  %or.cond144 = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond144, label %doubleebx.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = and i64 %indvars.iv, 4294967295         ; 3 uses
  %i.cu = sext i32 %.1109 to i64
  %i.cv = add nsw i64 %i.ct, %i.cu                ; 2 uses
  %.not138 = icmp slt i64 %i.cv, 0
  br i1 %.not138, label %doubleebx.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = zext i32 %i.cp to i64                   ; 9 uses
  %i.cx = zext i32 %i.cq to i64                   ; 2 uses
  %i.cy = add nuw nsw i64 %i.cv, %i.cw
  %.not139 = icmp samesign ugt i64 %i.cy, %i.cx
  %i.cz = add nuw nsw i64 %i.ct, %i.cw
  %.not141 = icmp samesign ugt i64 %i.cz, %i.cx
  %or.cond147 = select i1 %.not139, i1 true, i1 %.not141
  %i.da = icmp sgt i32 %.1109, -1
  %or.cond148 = select i1 %or.cond147, i1 true, i1 %i.da
  br i1 %or.cond148, label %doubleebx.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.ah
  %i.db = add i32 %.1109, %i.l                    ; 7 uses
  %min.iters.check = icmp ult i32 %spec.select, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = xor i32 %i.l, -1
  %7 = icmp ugt i32 %spec.select, %i.dc
  %i.dd = xor i32 %i.db, -1
  %i.de = icmp ugt i32 %spec.select, %i.dd
  %i.df = or i1 %7, %i.de
  %i.dg = zext i32 %i.db to i64
  %i.dh = sub nsw i64 %i.dg, %i.ct
  %diff.check = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %i.df, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check328 = icmp ult i32 %spec.select, 31
  br i1 %min.iters.check328, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cw, 28
  %n.vec = and i64 %i.cw, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = trunc nuw i64 %index to i32
  %i.dj = add i32 %i.db, %i.di
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <16 x i8>, ptr %i.dl, align 1, !tbaa !8
  %wide.load329 = load <16 x i8>, ptr %i.dm, align 1, !tbaa !8
  %i.dn = add nuw i64 %index, %indvars.iv
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <16 x i8> %wide.load, ptr %i.dp, align 1, !tbaa !8
  store <16 x i8> %wide.load329, ptr %i.dq, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec331 = and i64 %i.cw, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index332 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next334, %vec.epilog.vector.body ] ; 3 uses
  %i.ds = trunc nuw i64 %index332 to i32
  %i.dt = add i32 %i.db, %i.ds
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %i.du
  %wide.load333 = load <4 x i8>, ptr %i.dv, align 1, !tbaa !8
  %i.dw = add nuw i64 %index332, %indvars.iv
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 %i.dx
  store <4 x i8> %wide.load333, ptr %i.dy, align 1, !tbaa !8
  %index.next334 = add nuw i64 %index332, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next334, %n.vec331
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n335 = icmp eq i64 %n.vec331, %i.cw
  br i1 %cmp.n335, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv274.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec331, %vec.epilog.middle.block ] ; 5 uses
  %8 = zext i32 %spec.select to i64
  %xtraiter = and i64 %i.cw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ea = trunc nuw i64 %indvars.iv274.ph to i32
  %i.eb = add i32 %i.db, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !8
  %i.ef = add nuw i64 %indvars.iv274.ph, %indvars.iv
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %i.eg
  store i8 %i.ee, ptr %i.eh, align 1, !tbaa !8
  %indvars.iv.next275.prol = or disjoint i64 %indvars.iv274.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv274.unr = phi i64 [ %indvars.iv274.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next275.prol, %vec.epilog.scalar.ph.prol ]
  %i.ei = icmp eq i64 %indvars.iv274.ph, %8
  br i1 %i.ei, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv274 = phi i64 [ %indvars.iv.next275.1, %vec.epilog.scalar.ph ], [ %indvars.iv274.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.ej = trunc nuw i64 %indvars.iv274 to i32
  %i.ek = add i32 %i.db, %i.ej
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !8
  %i.eo = add nuw i64 %indvars.iv274, %indvars.iv
  %i.ep = and i64 %i.eo, 4294967295
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ep
  store i8 %i.en, ptr %i.eq, align 1, !tbaa !8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.er = trunc nuw i64 %indvars.iv.next275 to i32
  %i.es = add i32 %i.db, %i.er
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !8
  %i.ew = add nuw i64 %indvars.iv.next275, %indvars.iv
  %i.ex = and i64 %i.ew, 4294967295
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 %i.ex
  store i8 %i.ev, ptr %i.ey, align 1, !tbaa !8
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next275.1, %i.cw
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ez = add i32 %i.cp, %i.l
  br label %bb.b

bb.ai:                                            ; preds = %bb.r
  %i.fa = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2b.magic, i32 noundef %i.l)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.w, %bb.x, %bb.u, %bb.v, %bb.af, %bb.ag, %bb.ah, %bb.q, %bb.d, %bb.e, %bb.g, %bb.h, %bb.m, %bb.n, %bb.k, %bb.l, %bb.ab, %bb.ac, %bb.z, %bb.aa, %bb.ai
  %.0111 = phi i32 [ %i.fa, %bb.ai ], [ -1, %bb.ab ], [ -1, %bb.m ], [ -1, %bb.d ], [ -1, %bb.aa ], [ -1, %bb.z ], [ -1, %bb.ac ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.q ], [ -1, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %bb.w ]
  ret i32 %.0111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pefromupx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.aq, label %.preheader378

.preheader378:                                    ; preds = %bb.a
  %i.d = load i32, ptr %7, align 4, !tbaa !4      ; 2 uses
  %.not388 = icmp eq i32 %i.d, 0
  %.pre = sub i32 %4, %6                          ; 3 uses
  br i1 %.not388, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader378
  %i.e = add i32 %1, -5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.f = phi i32 [ %i.d, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %i.g = phi i32 [ 1, %.lr.ph ], [ %i.s, %bb.e ]  ; 3 uses
  %i.h = add i32 %i.f, %.pre                      ; 3 uses
  %.not250 = icmp ugt i32 %i.h, %i.e
  br i1 %.not250, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.h, -2
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = icmp eq i8 %i.l, -115
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.h, -1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = icmp eq i8 %i.q, -66
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = add i32 %i.g, 1                          ; 2 uses
  %i.t = zext i32 %i.g to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.e, %.preheader378
  %.lcssa386 = phi i32 [ 1, %.preheader378 ], [ %i.s, %bb.e ] ; 4 uses
  %i.w = add i32 %.pre, 128                       ; 2 uses
  %i.x = add i32 %1, -8                           ; 2 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.f, label %.thread345

bb.f:                                             ; preds = %._crit_edge
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #6
  %i.ab = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ac = sub i32 %1, %.pre
  %i.ad = add i32 %i.ac, -136
  %i.ae = tail call ptr @cli_memstr(ptr noundef %i.aa, i32 noundef %i.ad, ptr noundef nonnull @.str.1, i32 noundef 2) #6 ; 2 uses
  %.not252391 = icmp eq ptr %i.ae, null
  br i1 %.not252391, label %.thread345, label %.lr.ph393

.lr.ph393:                                        ; preds = %bb.f, %bb.i
  %i.af = phi ptr [ %i.aw, %bb.i ], [ %i.ae, %bb.f ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp eq i8 %i.ah, -117
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph393
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = icmp eq i8 %i.ak, 7
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = zext i32 %4 to i64
  %i.ao = add i64 %i.ab, %i.an
  %reass.sub = sub i64 %i.am, %i.ao
  %i.ap = trunc i64 %reass.sub to i32
  %i.aq = add i32 %i.ap, 2
  %i.ar = add i32 %i.aq, %6
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %.lr.ph393
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %.neg = sub i64 %i.ab, %i.at
  %i.au = trunc i64 %.neg to i32
  %i.av = add i32 %i.x, %i.au
  %i.aw = tail call ptr @cli_memstr(ptr noundef nonnull %i.as, i32 noundef %i.av, ptr noundef nonnull @.str.1, i32 noundef 2) #6 ; 2 uses
  %.not252 = icmp eq ptr %i.aw, null
  br i1 %.not252, label %.thread345, label %.lr.ph393, !llvm.loop !18

.loopexit:                                        ; preds = %bb.d, %bb.h
  %i.ax = phi i32 [ %.lcssa386, %bb.h ], [ %i.g, %bb.d ] ; 7 uses
  %.0 = phi i32 [ %i.ar, %bb.h ], [ %i.f, %bb.d ] ; 8 uses
  %i.ay = icmp ne i32 %.0, 0
  %i.az = icmp ugt i32 %1, 3
  %or.cond5 = and i1 %i.az, %i.ay
  br i1 %or.cond5, label %bb.j, label %.thread345

bb.j:                                             ; preds = %.loopexit
  %i.ba = zext i32 %4 to i64
  %i.bb = zext i32 %6 to i64
  %i.bc = sub nsw i64 %i.ba, %i.bb
  %i.bd = zext i32 %.0 to i64
  %i.be = add nsw i64 %i.bc, %i.bd                ; 3 uses
  %.not253 = icmp slt i64 %i.be, 0
  %i.bf = zext i32 %1 to i64
  %i.bg = add nuw nsw i64 %i.be, 4
  %.not254 = icmp sgt i64 %i.bg, %i.bf
  %or.cond284 = select i1 %.not253, i1 true, i1 %.not254
  br i1 %or.cond284, label %.thread345, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %.val306 = load i32, ptr %i.bh, align 1         ; 5 uses
  %i.bi = load i32, ptr %3, align 4, !tbaa !4
  %.fr449 = freeze i32 %i.bi                      ; 6 uses
  %.not255 = icmp ult i32 %.val306, %.fr449
  br i1 %.not255, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #6
  br label %.thread345

bb.m:                                             ; preds = %bb.k
  %i.bj = sext i32 %.val306 to i64
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj ; 2 uses
  %i.bl = icmp ult i32 %.fr449, 8
  %.not257402 = icmp slt i32 %.val306, 0
  %or.cond286403 = or i1 %i.bl, %.not257402
  br i1 %or.cond286403, label %.critedge, label %.lr.ph406.split.preheader

.lr.ph406.split.preheader:                        ; preds = %bb.m
  %i.bm = zext i32 %.fr449 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bm ; 3 uses
  br label %.lr.ph406.split

.lr.ph406.split:                                  ; preds = %.lr.ph406.split.preheader, %.critedge7
  %.0203404 = phi ptr [ %i.bu, %.critedge7 ], [ %i.bk, %.lr.ph406.split.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0203404, i64 8 ; 4 uses
  %.not258.not = icmp ugt ptr %i.bo, %i.bn
  br i1 %.not258.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph406.split
  %.0203.val = load i32, ptr %.0203404, align 1
  %.not259 = icmp eq i32 %.0203.val, 0
  br i1 %.not259, label %.critedge, label %.preheader377
end_hunk_0
begin_hunk_1_@upx_inflate2d:bb.a
  %.10237 = phi i32 [ %i.ak, %bb.o ], [ %i.y, %doubleebx.exit162 ], [ %i.af, %doubleebx.exit162.thread ] ; 7 uses
  %.10 = phi i32 [ %i.al, %bb.o ], [ %.2226, %doubleebx.exit162 ], [ %i.ad, %doubleebx.exit162.thread ] ; 9 uses
  %.0.i164 = phi i32 [ %.val.i167, %bb.o ], [ %i.w, %doubleebx.exit162 ], [ %i.ac, %doubleebx.exit162.thread ]
  %cond273 = icmp sgt i32 %.0.i164, -1
  br i1 %cond273, label %bb.p, label %bb.t

bb.p:                                             ; preds = %doubleebx.exit168
  %i.an = shl i32 %.10237, 1
  %i.ao = and i32 %.10237, 2147483647
  %.not.i169 = icmp eq i32 %i.ao, 0
  br i1 %.not.i169, label %bb.q, label %doubleebx.exit174

bb.q:                                             ; preds = %bb.p
  br i1 %i.a, label %bb.r, label %doubleebx.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ap = zext i32 %.10 to i64                    ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 4
  %.not28.i172 = icmp samesign ugt i64 %i.aq, %i.b
  br i1 %.not28.i172, label %doubleebx.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %.val.i173 = load i32, ptr %i.ar, align 1       ; 2 uses
  %i.as = shl i32 %.val.i173, 1
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %.10, 4
  br label %doubleebx.exit174

doubleebx.exit174:                                ; preds = %bb.p, %bb.s
  %.12239 = phi i32 [ %i.at, %bb.s ], [ %i.an, %bb.p ]
  %.12 = phi i32 [ %i.au, %bb.s ], [ %.10, %bb.p ]
  %.0.i170 = phi i32 [ %.val.i173, %bb.s ], [ %.10237, %bb.p ]
  %i.av = lshr i32 %.0.i170, 31
  %i.aw = shl i32 %i.am, 1
  %i.ax = add i32 %i.aw, -2
  %i.ay = or disjoint i32 %i.av, %i.ax
  br label %bb.j

bb.t:                                             ; preds = %doubleebx.exit168
  %i.az = icmp sgt i32 %i.am, 2
  br i1 %i.az, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not142 = icmp ult i32 %.10, %1
  br i1 %.not142, label %bb.v, label %doubleebx.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ba = shl i32 %i.am, 8
  %i.bb = add i32 %i.ba, -768
  %i.bc = zext i32 %.10 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bb, %i.bf            ; 2 uses
  %.not143 = icmp eq i32 %i.bg, -1
  br i1 %.not143, label %bb.ao, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = add nuw i32 %.10, 1
  %i.bi = xor i32 %i.bg, -1                       ; 2 uses
  %i.bj = and i32 %i.bi, 1
  %i.bk = ashr i32 %i.bi, 1
  br label %bb.ab

bb.x:                                             ; preds = %bb.t
  %i.bl = shl i32 %.10237, 1
  %i.bm = and i32 %.10237, 2147483647
  %.not.i175 = icmp eq i32 %i.bm, 0
  br i1 %.not.i175, label %bb.y, label %doubleebx.exit180

bb.y:                                             ; preds = %bb.x
  br i1 %i.a, label %bb.z, label %doubleebx.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.bn = zext i32 %.10 to i64                    ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 4
  %.not28.i178 = icmp samesign ugt i64 %i.bo, %i.b
  br i1 %.not28.i178, label %doubleebx.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn
  %.val.i179 = load i32, ptr %i.bp, align 1       ; 2 uses
  %i.bq = shl i32 %.val.i179, 1
  %i.br = or disjoint i32 %i.bq, 1
  %i.bs = add i32 %.10, 4
  br label %doubleebx.exit180

doubleebx.exit180:                                ; preds = %bb.x, %bb.aa
  %.14241 = phi i32 [ %i.br, %bb.aa ], [ %i.bl, %bb.x ]
  %.14 = phi i32 [ %i.bs, %bb.aa ], [ %.10, %bb.x ]
  %.0.i176 = phi i32 [ %.val.i179, %bb.aa ], [ %.10237, %bb.x ]
  %i.bt = lshr i32 %.0.i176, 31
  br label %bb.ab

bb.ab:                                            ; preds = %doubleebx.exit180, %bb.w
  %.3230 = phi i32 [ %.10237, %bb.w ], [ %.14241, %doubleebx.exit180 ] ; 3 uses
  %.3 = phi i32 [ %i.bh, %bb.w ], [ %.14, %doubleebx.exit180 ] ; 3 uses
  %.1116 = phi i32 [ %i.bk, %bb.w ], [ %.0115, %doubleebx.exit180 ] ; 5 uses
  %.0113 = phi i32 [ %i.bj, %bb.w ], [ %i.bt, %doubleebx.exit180 ]
  %i.bu = shl i32 %.3230, 1
  %i.bv = and i32 %.3230, 2147483647
  %.not.i181 = icmp eq i32 %i.bv, 0
  br i1 %.not.i181, label %bb.ac, label %doubleebx.exit186

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.a, label %bb.ad, label %doubleebx.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bw = zext i32 %.3 to i64                     ; 2 uses
  %i.bx = add nuw nsw i64 %i.bw, 4
  %.not28.i184 = icmp samesign ugt i64 %i.bx, %i.b
  br i1 %.not28.i184, label %doubleebx.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw
  %.val.i185 = load i32, ptr %i.by, align 1       ; 2 uses
  %i.bz = shl i32 %.val.i185, 1
  %i.ca = or disjoint i32 %i.bz, 1
  %i.cb = add i32 %.3, 4
  br label %doubleebx.exit186

doubleebx.exit186:                                ; preds = %bb.ab, %bb.ae
  %.16243 = phi i32 [ %i.ca, %bb.ae ], [ %i.bu, %bb.ab ] ; 2 uses
  %.16 = phi i32 [ %i.cb, %bb.ae ], [ %.3, %bb.ab ] ; 2 uses
  %.0.i182 = phi i32 [ %.val.i185, %bb.ae ], [ %.3230, %bb.ab ]
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %.0113, i32 %.0.i182, i32 1) ; 2 uses
  %.not144 = icmp eq i32 %i.cc, 0
  br i1 %.not144, label %.preheader278, label %bb.al

.preheader278:                                    ; preds = %doubleebx.exit186, %doubleebx.exit198
  %.4231 = phi i32 [ %.20247, %doubleebx.exit198 ], [ %.16243, %doubleebx.exit186 ] ; 5 uses
  %.4 = phi i32 [ %.20, %doubleebx.exit198 ], [ %.16, %doubleebx.exit186 ] ; 5 uses
  %.1114 = phi i32 [ %i.cw, %doubleebx.exit198 ], [ 1, %doubleebx.exit186 ] ; 2 uses
  %i.cd = and i32 %.4231, 2147483647
  %.not.i187 = icmp eq i32 %i.cd, 0
  br i1 %.not.i187, label %bb.af, label %doubleebx.exit192

bb.af:                                            ; preds = %.preheader278
  br i1 %i.a, label %bb.ag, label %doubleebx.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ce = zext i32 %.4 to i64                     ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, 4
  %.not28.i190 = icmp samesign ugt i64 %i.cf, %i.b
  br i1 %.not28.i190, label %doubleebx.exit.thread, label %doubleebx.exit192.thread

doubleebx.exit192:                                ; preds = %.preheader278
  %i.cg = shl i32 %.4231, 1
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %.1114, i32 %.4231, i32 1) ; 2 uses
  %i.ci = shl i32 %.4231, 2
  %i.cj = and i32 %.4231, 1073741823
  %.not.i193 = icmp eq i32 %i.cj, 0
  br i1 %.not.i193, label %bb.ah, label %doubleebx.exit198

doubleebx.exit192.thread:                         ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.val.i191 = load i32, ptr %i.ck, align 1       ; 2 uses
  %i.cl = shl i32 %.val.i191, 1
  %i.cm = or disjoint i32 %i.cl, 1                ; 2 uses
  %i.cn = add i32 %.4, 4
  %i.co = tail call i32 @llvm.fshl.i32(i32 %.1114, i32 %.val.i191, i32 1)
  %i.cp = shl i32 %i.cm, 1
  br label %doubleebx.exit198

bb.ah:                                            ; preds = %doubleebx.exit192
  br i1 %i.a, label %bb.ai, label %doubleebx.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cq = zext i32 %.4 to i64                     ; 2 uses
  %i.cr = add nuw nsw i64 %i.cq, 4
  %.not28.i196 = icmp samesign ugt i64 %i.cr, %i.b
  br i1 %.not28.i196, label %doubleebx.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %.val.i197 = load i32, ptr %i.cs, align 1       ; 2 uses
  %i.ct = shl i32 %.val.i197, 1
  %i.cu = or disjoint i32 %i.ct, 1
  %i.cv = add i32 %.4, 4
  br label %doubleebx.exit198

doubleebx.exit198:                                ; preds = %doubleebx.exit192.thread, %doubleebx.exit192, %bb.aj
  %i.cw = phi i32 [ %i.ch, %bb.aj ], [ %i.ch, %doubleebx.exit192 ], [ %i.co, %doubleebx.exit192.thread ] ; 2 uses
  %.20247 = phi i32 [ %i.cu, %bb.aj ], [ %i.ci, %doubleebx.exit192 ], [ %i.cp, %doubleebx.exit192.thread ] ; 2 uses
  %.20 = phi i32 [ %i.cv, %bb.aj ], [ %.4, %doubleebx.exit192 ], [ %i.cn, %doubleebx.exit192.thread ] ; 2 uses
  %.0.i194 = phi i32 [ %.val.i197, %bb.aj ], [ %i.cg, %doubleebx.exit192 ], [ %i.cm, %doubleebx.exit192.thread ]
  %cond274 = icmp sgt i32 %.0.i194, -1
  br i1 %cond274, label %.preheader278, label %bb.ak

bb.ak:                                            ; preds = %doubleebx.exit198
  %i.cx = add i32 %i.cw, 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %doubleebx.exit186
  %.5232 = phi i32 [ %.20247, %bb.ak ], [ %.16243, %doubleebx.exit186 ]
  %.5 = phi i32 [ %.20, %bb.ak ], [ %.16, %doubleebx.exit186 ]
  %.2 = phi i32 [ %i.cx, %bb.ak ], [ %i.cc, %doubleebx.exit186 ]
  %i.cy = icmp ult i32 %.1116, -1280
  %i.cz = zext i1 %i.cy to i32
  %spec.select = add i32 %.2, %i.cz               ; 7 uses
  %i.da = add nuw i32 %spec.select, 1             ; 2 uses
  %i.db = load i32, ptr %3, align 4, !tbaa !4     ; 3 uses
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = icmp uge i32 %spec.select, %i.db
  %or.cond152 = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond152, label %doubleebx.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.de = and i64 %indvars.iv, 4294967295         ; 3 uses
  %i.df = sext i32 %.1116 to i64
  %i.dg = add nsw i64 %i.de, %i.df                ; 2 uses
  %.not146 = icmp slt i64 %i.dg, 0
  br i1 %.not146, label %doubleebx.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dh = zext i32 %i.da to i64                   ; 9 uses
  %i.di = zext i32 %i.db to i64                   ; 2 uses
  %i.dj = add nuw nsw i64 %i.dg, %i.dh
  %.not147 = icmp samesign ugt i64 %i.dj, %i.di
  %i.dk = add nuw nsw i64 %i.de, %i.dh
  %.not149 = icmp samesign ugt i64 %i.dk, %i.di
  %or.cond155 = select i1 %.not147, i1 true, i1 %.not149
  %i.dl = icmp sgt i32 %.1116, -1
  %or.cond156 = select i1 %or.cond155, i1 true, i1 %i.dl
  br i1 %or.cond156, label %doubleebx.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.an
  %i.dm = add i32 %.1116, %i.l                    ; 7 uses
  %min.iters.check = icmp ult i32 %spec.select, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dn = xor i32 %i.l, -1
  %7 = icmp ugt i32 %spec.select, %i.dn
  %i.do = xor i32 %i.dm, -1
  %i.dp = icmp ugt i32 %spec.select, %i.do
  %i.dq = or i1 %7, %i.dp
  %i.dr = zext i32 %i.dm to i64
  %i.ds = sub nsw i64 %i.dr, %i.de
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond = select i1 %i.dq, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check340 = icmp ult i32 %spec.select, 31
  br i1 %min.iters.check340, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dh, 28
  %n.vec = and i64 %i.dh, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dt = trunc nuw i64 %index to i32
  %i.du = add i32 %i.dm, %i.dt
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <16 x i8>, ptr %i.dw, align 1, !tbaa !8
  %wide.load341 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !8
  %i.dy = add nuw i64 %index, %indvars.iv
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <16 x i8> %wide.load, ptr %i.ea, align 1, !tbaa !8
  store <16 x i8> %wide.load341, ptr %i.eb, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dh
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec343 = and i64 %i.dh, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index344 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next346, %vec.epilog.vector.body ] ; 3 uses
  %i.ed = trunc nuw i64 %index344 to i32
  %i.ee = add i32 %i.dm, %i.ed
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ef
  %wide.load345 = load <4 x i8>, ptr %i.eg, align 1, !tbaa !8
  %i.eh = add nuw i64 %index344, %indvars.iv
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %i.ei
  store <4 x i8> %wide.load345, ptr %i.ej, align 1, !tbaa !8
  %index.next346 = add nuw i64 %index344, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next346, %n.vec343
  br i1 %i.ek, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n347 = icmp eq i64 %n.vec343, %i.dh
  br i1 %cmp.n347, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv298.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec343, %vec.epilog.middle.block ] ; 5 uses
  %8 = zext i32 %spec.select to i64
  %xtraiter = and i64 %i.dh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.el = trunc nuw i64 %indvars.iv298.ph to i32
  %i.em = add i32 %i.dm, %i.el
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !8
  %i.eq = add nuw i64 %indvars.iv298.ph, %indvars.iv
  %i.er = and i64 %i.eq, 4294967295
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %i.er
  store i8 %i.ep, ptr %i.es, align 1, !tbaa !8
  %indvars.iv.next299.prol = or disjoint i64 %indvars.iv298.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv298.unr = phi i64 [ %indvars.iv298.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph.prol ]
  %i.et = icmp eq i64 %indvars.iv298.ph, %8
  br i1 %i.et, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv298 = phi i64 [ %indvars.iv.next299.1, %vec.epilog.scalar.ph ], [ %indvars.iv298.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.eu = trunc nuw i64 %indvars.iv298 to i32
  %i.ev = add i32 %i.dm, %i.eu
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !8
  %i.ez = add nuw i64 %indvars.iv298, %indvars.iv
  %i.fa = and i64 %i.ez, 4294967295
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 %i.fa
  store i8 %i.ey, ptr %i.fb, align 1, !tbaa !8
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %i.fc = trunc nuw i64 %indvars.iv.next299 to i32
  %i.fd = add i32 %i.dm, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !8
  %i.fh = add nuw i64 %indvars.iv.next299, %indvars.iv
  %i.fi = and i64 %i.fh, 4294967295
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi
  store i8 %i.fg, ptr %i.fj, align 1, !tbaa !8
  %indvars.iv.next299.1 = add nuw nsw i64 %indvars.iv298, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next299.1, %i.dh
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fk = add i32 %i.da, %i.l
  br label %bb.b

bb.ao:                                            ; preds = %bb.v
  %i.fl = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2d.magic, i32 noundef %i.l)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.ac, %bb.ad, %bb.y, %bb.z, %bb.al, %bb.am, %bb.an, %bb.u, %bb.d, %bb.e, %bb.g, %bb.h, %bb.q, %bb.r, %bb.m, %bb.n, %bb.k, %bb.l, %bb.ah, %bb.ai, %bb.af, %bb.ag, %bb.ao
  %.0118 = phi i32 [ -1, %bb.d ], [ -1, %bb.ah ], [ -1, %bb.q ], [ %i.fl, %bb.ao ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.ai ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %bb.r ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.u ], [ -1, %bb.an ], [ -1, %bb.am ], [ -1, %bb.al ], [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %bb.ad ], [ -1, %bb.ac ]
  ret i32 %.0118
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @upx_inflate2e(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 3                       ; 10 uses
  %i.b = zext i32 %1 to i64                       ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.0250 = phi i32 [ 0, %bb.a ], [ %.5255, %._crit_edge ]
  %.0247 = phi i32 [ 0, %bb.a ], [ %.5, %._crit_edge ]
  %.0118 = phi i32 [ -1, %bb.a ], [ %.1119, %._crit_edge ]
  %.0115 = phi i32 [ 0, %bb.a ], [ %i.gj, %._crit_edge ]
  %i.c = zext i32 %.0115 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.c, %bb.b ] ; 10 uses
  %.1251 = phi i32 [ %.6256, %bb.i ], [ %.0250, %bb.b ] ; 3 uses
  %.1248 = phi i32 [ %i.o, %bb.i ], [ %.0247, %bb.b ] ; 3 uses
  %i.d = shl i32 %.1251, 1
  %i.e = and i32 %.1251, 2147483647
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %doubleebx.exit

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %doubleebx.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.f = zext i32 %.1248 to i64                   ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 4
  %.not28.i = icmp samesign ugt i64 %i.g, %i.b
  br i1 %.not28.i, label %doubleebx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %.val.i = load i32, ptr %i.h, align 1           ; 2 uses
  %i.i = shl i32 %.val.i, 1
  %i.j = or disjoint i32 %i.i, 1
  %i.k = add i32 %.1248, 4
  br label %doubleebx.exit

doubleebx.exit:                                   ; preds = %bb.c, %bb.f
  %.6256 = phi i32 [ %i.j, %bb.f ], [ %i.d, %bb.c ] ; 2 uses
  %.6 = phi i32 [ %i.k, %bb.f ], [ %.1248, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ %.val.i, %bb.f ], [ %.1251, %bb.c ]
  %cond = icmp sgt i32 %.0.i, -1
  br i1 %cond, label %.preheader313, label %bb.g

.preheader313:                                    ; preds = %doubleebx.exit
  %i.l = trunc i64 %indvars.iv to i32             ; 4 uses
  br label %bb.j

bb.g:                                             ; preds = %doubleebx.exit
  %.not155 = icmp ult i32 %.6, %1
  br i1 %.not155, label %bb.h, label %doubleebx.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %3, align 4, !tbaa !4
  %i.n = zext i32 %i.m to i64
  %.not156 = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %.not156, label %bb.i, label %doubleebx.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.o = add nuw i32 %.6, 1
  %i.p = zext i32 %.6 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.r, ptr %i.s, align 1, !tbaa !8
  br label %bb.c, !llvm.loop !29

bb.j:                                             ; preds = %.preheader313, %doubleebx.exit179
  %.2252 = phi i32 [ %.12262, %doubleebx.exit179 ], [ %.6256, %.preheader313 ] ; 5 uses
  %.2249 = phi i32 [ %.12, %doubleebx.exit179 ], [ %.6, %.preheader313 ] ; 5 uses
  %.0120 = phi i32 [ %i.ay, %doubleebx.exit179 ], [ 1, %.preheader313 ] ; 2 uses
  %i.t = and i32 %.2252, 2147483647
  %.not.i162 = icmp eq i32 %i.t, 0
  br i1 %.not.i162, label %bb.k, label %doubleebx.exit167

bb.k:                                             ; preds = %bb.j
  br i1 %i.a, label %bb.l, label %doubleebx.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %.2249 to i64                   ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 4
  %.not28.i165 = icmp samesign ugt i64 %i.v, %i.b
  br i1 %.not28.i165, label %doubleebx.exit.thread, label %doubleebx.exit167.thread

doubleebx.exit167:                                ; preds = %bb.j
  %i.w = shl i32 %.2252, 1
  %i.x = tail call i32 @llvm.fshl.i32(i32 %.0120, i32 %.2252, i32 1) ; 2 uses
  %i.y = shl i32 %.2252, 2
  %i.z = and i32 %.2252, 1073741823
  %.not.i168 = icmp eq i32 %i.z, 0
  br i1 %.not.i168, label %bb.m, label %doubleebx.exit173

doubleebx.exit167.thread:                         ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %.val.i166 = load i32, ptr %i.aa, align 1       ; 2 uses
  %i.ab = shl i32 %.val.i166, 1
  %i.ac = or disjoint i32 %i.ab, 1                ; 2 uses
  %i.ad = add i32 %.2249, 4
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %.0120, i32 %.val.i166, i32 1)
  %i.af = shl i32 %i.ac, 1
  br label %doubleebx.exit173

bb.m:                                             ; preds = %doubleebx.exit167
  br i1 %i.a, label %bb.n, label %doubleebx.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ag = zext i32 %.2249 to i64                  ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 4
  %.not28.i171 = icmp samesign ugt i64 %i.ah, %i.b
  br i1 %.not28.i171, label %doubleebx.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %.val.i172 = load i32, ptr %i.ai, align 1       ; 2 uses
  %i.aj = shl i32 %.val.i172, 1
  %i.ak = or disjoint i32 %i.aj, 1
  %i.al = add i32 %.2249, 4
  br label %doubleebx.exit173

doubleebx.exit173:                                ; preds = %doubleebx.exit167.thread, %doubleebx.exit167, %bb.o
  %i.am = phi i32 [ %i.x, %bb.o ], [ %i.x, %doubleebx.exit167 ], [ %i.ae, %doubleebx.exit167.thread ] ; 3 uses
  %.10260 = phi i32 [ %i.ak, %bb.o ], [ %i.y, %doubleebx.exit167 ], [ %i.af, %doubleebx.exit167.thread ] ; 7 uses
  %.10 = phi i32 [ %i.al, %bb.o ], [ %.2249, %doubleebx.exit167 ], [ %i.ad, %doubleebx.exit167.thread ] ; 9 uses
  %.0.i169 = phi i32 [ %.val.i172, %bb.o ], [ %i.w, %doubleebx.exit167 ], [ %i.ac, %doubleebx.exit167.thread ]
  %cond306 = icmp sgt i32 %.0.i169, -1
  br i1 %cond306, label %bb.p, label %bb.t

bb.p:                                             ; preds = %doubleebx.exit173
  %i.an = shl i32 %.10260, 1
  %i.ao = and i32 %.10260, 2147483647
  %.not.i174 = icmp eq i32 %i.ao, 0
  br i1 %.not.i174, label %bb.q, label %doubleebx.exit179

bb.q:                                             ; preds = %bb.p
  br i1 %i.a, label %bb.r, label %doubleebx.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ap = zext i32 %.10 to i64                    ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 4
  %.not28.i177 = icmp samesign ugt i64 %i.aq, %i.b
  br i1 %.not28.i177, label %doubleebx.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %.val.i178 = load i32, ptr %i.ar, align 1       ; 2 uses
  %i.as = shl i32 %.val.i178, 1
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %.10, 4
  br label %doubleebx.exit179

doubleebx.exit179:                                ; preds = %bb.p, %bb.s
  %.12262 = phi i32 [ %i.at, %bb.s ], [ %i.an, %bb.p ]
  %.12 = phi i32 [ %i.au, %bb.s ], [ %.10, %bb.p ]
  %.0.i175 = phi i32 [ %.val.i178, %bb.s ], [ %.10260, %bb.p ]
  %i.av = lshr i32 %.0.i175, 31
end_hunk_1
