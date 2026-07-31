inline.NumInlined: 251
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@interleaveByte2:bb.a
  br label %.lr.ph150.prol.loopexit

.lr.ph150.prol.loopexit:                          ; preds = %.lr.ph150.prol, %.lr.ph150.preheader
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %.lr.ph150.preheader ], [ %indvars.iv.next180.prol, %.lr.ph150.prol ]
  %i.ar = add nsw i64 %wide.trip.count182, -1
  %i.as = icmp eq i64 %indvars.iv179.ph, %i.ar
  br i1 %i.as, label %.loopexit, label %.lr.ph150

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %.lr.ph146
  %indvars.iv174 = phi i64 [ 0, %.lr.ph146.preheader ], [ %indvars.iv.next175, %.lr.ph146 ] ; 4 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv174
  %i.au = load <16 x i8>, ptr %i.at, align 16, !tbaa !88 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv174
  %i.aw = load <16 x i8>, ptr %i.av, align 16, !tbaa !88 ; 2 uses
  %.idx188 = shl nuw nsw i64 %indvars.iv174, 5
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.idx188 ; 2 uses
  %i.ay = shufflevector <16 x i8> %i.au, <16 x i8> %i.aw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ay, ptr %i.ax, align 16, !tbaa !88, !nontemporal !305
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = shufflevector <16 x i8> %i.au, <16 x i8> %i.aw, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ba, ptr %i.az, align 16, !tbaa !88, !nontemporal !305
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge147, label %.lr.ph146, !llvm.loop !306

.lr.ph150:                                        ; preds = %.lr.ph150.prol.loopexit, %.lr.ph150
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.1, %.lr.ph150 ], [ %indvars.iv179.unr, %.lr.ph150.prol.loopexit ] ; 5 uses
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv179
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88
  %i.bd = shl nsw i64 %indvars.iv179, 1
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd ; 2 uses
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !88
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %indvars.iv179
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !88
  %i.bh = getelementptr i8, ptr %i.be, i64 1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !88
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next180
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !88
  %i.bk = shl nsw i64 %indvars.iv.next180, 1
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk ; 2 uses
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !88
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next180
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !88
  %i.bo = getelementptr i8, ptr %i.bl, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !88
  %indvars.iv.next180.1 = add nsw i64 %indvars.iv179, 2 ; 2 uses
  %exitcond183.not.1 = icmp eq i64 %indvars.iv.next180.1, %wide.trip.count182
  br i1 %exitcond183.not.1, label %.loopexit, label %.lr.ph150, !llvm.loop !307

bb.b:                                             ; preds = %bb.a
  %i.bp = and i64 %i.a, 15
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = and i64 %i.b, 15
  %i.bs = icmp eq i64 %i.br, 8
  %or.cond5 = and i1 %i.bq, %i.bs
  %i.bt = and i64 %i.c, 15
  %i.bu = icmp eq i64 %i.bt, 8
  %or.cond7 = and i1 %or.cond5, %i.bu
  br i1 %or.cond7, label %bb.c, label %.preheader129

.preheader129:                                    ; preds = %bb.b
  %i.bv = icmp sgt i32 %3, 15
  br i1 %i.bv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader129
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.bw = icmp sgt i32 %3, 0
  br i1 %i.bw, label %.lr.ph136, label %.loopexit

._crit_edge137:                                   ; preds = %.lr.ph136.7, %.lr.ph136.6, %.lr.ph136.5, %.lr.ph136.4, %.lr.ph136.3, %.lr.ph136.2, %.lr.ph136.1, %.lr.ph136
  %i.bx = icmp samesign ugt i32 %3, 8
  br i1 %i.bx, label %bb.d, label %.loopexit

.lr.ph136:                                        ; preds = %bb.c
  %i.by = load i8, ptr %1, align 1, !tbaa !88
  store i8 %i.by, ptr %0, align 1, !tbaa !88
  %i.bz = load i8, ptr %2, align 1, !tbaa !88
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !88
  %exitcond163.not = icmp eq i32 %3, 1
  br i1 %exitcond163.not, label %._crit_edge137, label %.lr.ph136.1

.lr.ph136.1:                                      ; preds = %.lr.ph136
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !88
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !88
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !88
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !88
  %exitcond163.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond163.not.1, label %._crit_edge137, label %.lr.ph136.2

.lr.ph136.2:                                      ; preds = %.lr.ph136.1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !88
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !88
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !88
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !88
  %exitcond163.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond163.not.2, label %._crit_edge137, label %.lr.ph136.3

.lr.ph136.3:                                      ; preds = %.lr.ph136.2
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !88
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !88
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !88
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !88
  %exitcond163.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond163.not.3, label %._crit_edge137, label %.lr.ph136.4

.lr.ph136.4:                                      ; preds = %.lr.ph136.3
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !88
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !88
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !88
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !88
  %exitcond163.not.4 = icmp eq i32 %3, 5
  br i1 %exitcond163.not.4, label %._crit_edge137, label %.lr.ph136.5

.lr.ph136.5:                                      ; preds = %.lr.ph136.4
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.da, ptr %i.db, align 1, !tbaa !88
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !88
  %exitcond163.not.5 = icmp eq i32 %3, 6
  br i1 %exitcond163.not.5, label %._crit_edge137, label %.lr.ph136.6

.lr.ph136.6:                                      ; preds = %.lr.ph136.5
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !88
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !88
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !88
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !88
  %exitcond163.not.6 = icmp eq i32 %3, 7
  br i1 %exitcond163.not.6, label %._crit_edge137, label %.lr.ph136.7

.lr.ph136.7:                                      ; preds = %.lr.ph136.6
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !88
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !88
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !88
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !88
  br label %._crit_edge137

bb.d:                                             ; preds = %._crit_edge137
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = add nsw i32 %3, -8                      ; 4 uses
  %i.dv = lshr i32 %i.du, 4                       ; 2 uses
  %.not = icmp eq i32 %i.dv, 0
  br i1 %.not, label %._crit_edge141, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %bb.d
  %wide.trip.count167 = zext nneg i32 %i.dv to i64
  br label %.lr.ph140

._crit_edge141:                                   ; preds = %.lr.ph140, %bb.d
  %i.dw = and i32 %i.du, -16                      ; 2 uses
  %i.dx = or disjoint i32 %i.dw, 8
  %i.dy = icmp samesign ult i32 %i.dx, %3
  br i1 %i.dy, label %iter.check247, label %.loopexit

iter.check247:                                    ; preds = %._crit_edge141
  %i.dz = or disjoint i32 %i.dw, 8
  %i.ea = zext nneg i32 %i.dz to i64              ; 6 uses
  %wide.trip.count172 = zext nneg i32 %3 to i64   ; 8 uses
  %i.eb = add nsw i64 %wide.trip.count172, -8     ; 2 uses
  %i.ec = and i32 %i.du, -16
  %i.ed = zext i32 %i.ec to i64
  %i.ee = sub nsw i64 %i.eb, %i.ed                ; 4 uses
  %min.iters.check229 = icmp ult i64 %i.ee, 4
  br i1 %min.iters.check229, label %.lr.ph144.preheader, label %vector.memcheck215

vector.memcheck215:                               ; preds = %iter.check247
  %4 = zext i32 %i.du to i64                      ; 2 uses
  %5 = shl nuw nsw i64 %4, 1
  %6 = and i64 %5, 8589934560
  %i.ef = getelementptr i8, ptr %0, i64 %6
  %scevgep216 = getelementptr i8, ptr %i.ef, i64 16 ; 2 uses
  %i.eg = shl nuw nsw i64 %wide.trip.count172, 1
  %scevgep217 = getelementptr i8, ptr %0, i64 %i.eg ; 2 uses
  %7 = and i64 %4, 4294967280
  %i.eh = or disjoint i64 %7, 8                   ; 2 uses
  %scevgep218 = getelementptr i8, ptr %1, i64 %i.eh
  %scevgep219 = getelementptr i8, ptr %1, i64 %wide.trip.count172
  %scevgep220 = getelementptr i8, ptr %2, i64 %i.eh
  %scevgep221 = getelementptr i8, ptr %2, i64 %wide.trip.count172
  %bound0222 = icmp ult ptr %scevgep216, %scevgep219
  %bound1223 = icmp ult ptr %scevgep218, %scevgep217
  %found.conflict224 = and i1 %bound0222, %bound1223
  %bound0225 = icmp ult ptr %scevgep216, %scevgep221
  %bound1226 = icmp ult ptr %scevgep220, %scevgep217
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %found.conflict224, %found.conflict227
  br i1 %conflict.rdx228, label %.lr.ph144.preheader, label %vector.main.loop.iter.check230

vector.main.loop.iter.check230:                   ; preds = %vector.memcheck215
  %min.iters.check231 = icmp ult i64 %i.ee, 16
  br i1 %min.iters.check231, label %vec.epilog.ph251, label %vector.ph232

vector.ph232:                                     ; preds = %vector.main.loop.iter.check230
  %n.mod.vf233 = and i64 %i.eb, 15                ; 3 uses
  %n.vec234 = sub nuw nsw i64 %i.ee, %n.mod.vf233 ; 3 uses
  %i.ei = add nsw i64 %n.vec234, %i.ea
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph232
  %index236 = phi i64 [ 0, %vector.ph232 ], [ %index.next243, %vector.body235 ] ; 2 uses
  %i.ej = add nuw i64 %index236, %i.ea            ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %wide.load237 = load <8 x i8>, ptr %i.ek, align 1, !tbaa !88, !alias.scope !308
  %wide.load238 = load <8 x i8>, ptr %i.el, align 1, !tbaa !88, !alias.scope !308
  %i.em = shl nuw nsw i64 %i.ej, 1
  %i.en = shl i64 %i.ej, 1
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %i.ep = getelementptr i8, ptr %0, i64 %i.en
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 %i.ej ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %wide.load239 = load <8 x i8>, ptr %i.er, align 1, !tbaa !88, !alias.scope !311
  %wide.load240 = load <8 x i8>, ptr %i.es, align 1, !tbaa !88, !alias.scope !311
  %interleaved.vec241 = shufflevector <8 x i8> %wide.load237, <8 x i8> %wide.load239, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec241, ptr %i.eo, align 1, !tbaa !88, !alias.scope !313, !noalias !315
  %interleaved.vec242 = shufflevector <8 x i8> %wide.load238, <8 x i8> %wide.load240, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec242, ptr %i.eq, align 1, !tbaa !88, !alias.scope !313, !noalias !315
  %index.next243 = add nuw i64 %index236, 16      ; 2 uses
  %i.et = icmp eq i64 %index.next243, %n.vec234
  br i1 %i.et, label %middle.block244, label %vector.body235, !llvm.loop !316

middle.block244:                                  ; preds = %vector.body235
  %cmp.n245 = icmp eq i64 %n.mod.vf233, 0
  br i1 %cmp.n245, label %.loopexit, label %vec.epilog.iter.check249

vec.epilog.iter.check249:                         ; preds = %middle.block244
  %min.epilog.iters.check250 = icmp samesign ult i64 %n.mod.vf233, 4
  br i1 %min.epilog.iters.check250, label %.lr.ph144.preheader, label %vec.epilog.ph251, !prof !303

vec.epilog.ph251:                                 ; preds = %vector.main.loop.iter.check230, %vec.epilog.iter.check249
  %vec.epilog.resume.val246 = phi i64 [ %n.vec234, %vec.epilog.iter.check249 ], [ 0, %vector.main.loop.iter.check230 ]
  %n.mod.vf252 = and i64 %wide.trip.count172, 3   ; 2 uses
  %n.vec253 = sub nsw i64 %i.ee, %n.mod.vf252     ; 2 uses
  %i.eu = add nsw i64 %n.vec253, %i.ea
  br label %vec.epilog.vector.body254

vec.epilog.vector.body254:                        ; preds = %vec.epilog.vector.body254, %vec.epilog.ph251
  %index255 = phi i64 [ %vec.epilog.resume.val246, %vec.epilog.ph251 ], [ %index.next259, %vec.epilog.vector.body254 ] ; 2 uses
  %i.ev = add nuw i64 %index255, %i.ea            ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %i.ev
  %wide.load256 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !88, !alias.scope !308
  %i.ex = shl nuw nsw i64 %i.ev, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev
  %wide.load257 = load <4 x i8>, ptr %i.ez, align 1, !tbaa !88, !alias.scope !311
  %interleaved.vec258 = shufflevector <4 x i8> %wide.load256, <4 x i8> %wide.load257, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec258, ptr %i.ey, align 1, !tbaa !88, !alias.scope !313, !noalias !315
  %index.next259 = add nuw i64 %index255, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next259, %n.vec253
  br i1 %i.fa, label %vec.epilog.middle.block260, label %vec.epilog.vector.body254, !llvm.loop !317

vec.epilog.middle.block260:                       ; preds = %vec.epilog.vector.body254
  %cmp.n261 = icmp eq i64 %n.mod.vf252, 0
  br i1 %cmp.n261, label %.loopexit, label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %vector.memcheck215, %iter.check247, %vec.epilog.iter.check249, %vec.epilog.middle.block260
  %indvars.iv169.ph = phi i64 [ %i.ea, %iter.check247 ], [ %i.ea, %vector.memcheck215 ], [ %i.ei, %vec.epilog.iter.check249 ], [ %i.eu, %vec.epilog.middle.block260 ] ; 7 uses
  %i.fb = sub nsw i64 %wide.trip.count172, %indvars.iv169.ph
  %xtraiter313 = and i64 %i.fb, 1
  %lcmp.mod314.not = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %.lr.ph144.prol.loopexit, label %.lr.ph144.prol

.lr.ph144.prol:                                   ; preds = %.lr.ph144.preheader
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv169.ph
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !88
  %i.fe = shl nuw nsw i64 %indvars.iv169.ph, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fe ; 2 uses
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !88
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv169.ph
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !88
  %i.fi = getelementptr i8, ptr %i.ff, i64 1
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !88
  %indvars.iv.next170.prol = add nuw nsw i64 %indvars.iv169.ph, 1
  br label %.lr.ph144.prol.loopexit

.lr.ph144.prol.loopexit:                          ; preds = %.lr.ph144.prol, %.lr.ph144.preheader
  %indvars.iv169.unr = phi i64 [ %indvars.iv169.ph, %.lr.ph144.preheader ], [ %indvars.iv.next170.prol, %.lr.ph144.prol ]
  %i.fj = add nsw i64 %wide.trip.count172, -1
  %i.fk = icmp eq i64 %indvars.iv169.ph, %i.fj
  br i1 %i.fk, label %.loopexit, label %.lr.ph144

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.lr.ph140
  %indvars.iv164 = phi i64 [ 0, %.lr.ph140.preheader ], [ %indvars.iv.next165, %.lr.ph140 ] ; 4 uses
  %.idx187 = shl nuw nsw i64 %indvars.iv164, 5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx187 ; 2 uses
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %indvars.iv164 ; 2 uses
  %i.fn = load <16 x i8>, ptr %i.fm, align 16, !tbaa !88
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %indvars.iv164 ; 2 uses
  %i.fp = load <16 x i8>, ptr %i.fo, align 16, !tbaa !88
  %i.fq = shufflevector <16 x i8> %i.fn, <16 x i8> %i.fp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.fq, ptr %i.fl, align 16, !tbaa !88, !nontemporal !305
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load <16 x i8>, ptr %i.fm, align 16, !tbaa !88
  %i.ft = load <16 x i8>, ptr %i.fo, align 16, !tbaa !88
  %i.fu = shufflevector <16 x i8> %i.fs, <16 x i8> %i.ft, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.fu, ptr %i.fr, align 16, !tbaa !88, !nontemporal !305
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge141, label %.lr.ph140, !llvm.loop !318

.lr.ph144:                                        ; preds = %.lr.ph144.prol.loopexit, %.lr.ph144
  %indvars.iv169 = phi i64 [ %indvars.iv.next170.1, %.lr.ph144 ], [ %indvars.iv169.unr, %.lr.ph144.prol.loopexit ] ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv169
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !88
  %i.fx = shl nuw nsw i64 %indvars.iv169, 1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 %i.fx ; 2 uses
  store i8 %i.fw, ptr %i.fy, align 1, !tbaa !88
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv169
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !88
  %i.gb = getelementptr i8, ptr %i.fy, i64 1
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !88
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next170
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !88
  %i.ge = shl nuw nsw i64 %indvars.iv.next170, 1
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ge ; 2 uses
  store i8 %i.gd, ptr %i.gf, align 1, !tbaa !88
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next170
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !88
  %i.gi = getelementptr i8, ptr %i.gf, i64 1
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !88
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 2 uses
  %exitcond173.not.1 = icmp eq i64 %indvars.iv.next170.1, %wide.trip.count172
  br i1 %exitcond173.not.1, label %.loopexit, label %.lr.ph144, !llvm.loop !319

._crit_edge:                                      ; preds = %.lr.ph, %.preheader129
  %i.gj = shl nsw i32 %i.d, 4                     ; 2 uses
  %i.gk = icmp slt i32 %i.gj, %3
  br i1 %i.gk, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %._crit_edge
  %i.gl = sext i32 %i.gj to i64                   ; 10 uses
  %wide.trip.count157 = sext i32 %3 to i64        ; 9 uses
  %i.gm = sub nsw i64 %wide.trip.count157, %i.gl  ; 4 uses
  %min.iters.check = icmp ult i64 %i.gm, 4
  br i1 %min.iters.check, label %.lr.ph133.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gn = shl nsw i64 %i.gl, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.gn  ; 2 uses
  %i.go = shl nsw i64 %wide.trip.count157, 1
  %scevgep193 = getelementptr i8, ptr %0, i64 %i.go ; 2 uses
  %scevgep194 = getelementptr i8, ptr %1, i64 %i.gl
  %scevgep195 = getelementptr i8, ptr %1, i64 %wide.trip.count157
  %scevgep196 = getelementptr i8, ptr %2, i64 %i.gl
  %scevgep197 = getelementptr i8, ptr %2, i64 %wide.trip.count157
  %bound0 = icmp ult ptr %scevgep, %scevgep195
  %bound1 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict = and i1 %bound0, %bound1
  %bound0198 = icmp ult ptr %scevgep, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep193
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx = or i1 %found.conflict, %found.conflict200
  br i1 %conflict.rdx, label %.lr.ph133.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check201 = icmp ult i64 %i.gm, 16
  br i1 %min.iters.check201, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count157, 15     ; 2 uses
  %n.vec = sub nuw nsw i64 %i.gm, %n.mod.vf       ; 3 uses
  %i.gp = add nsw i64 %n.vec, %i.gl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gq = add i64 %index, %i.gl                   ; 4 uses
  %i.gr = getelementptr inbounds i8, ptr %1, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %wide.load = load <8 x i8>, ptr %i.gr, align 1, !tbaa !88, !alias.scope !320
  %wide.load202 = load <8 x i8>, ptr %i.gs, align 1, !tbaa !88, !alias.scope !320
  %i.gt = shl nsw i64 %i.gq, 1
end_hunk_0
