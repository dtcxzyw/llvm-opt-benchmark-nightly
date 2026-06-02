inline.NumInlined: 514
inline.NumDeleted: 215
begin_hunk_0_@_ZN13duckdb_snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc:bb.a
bb.j:                                             ; preds = %.split93.us
  %.not.i58 = icmp slt i64 %i.ar, 11
  br i1 %.not.i58, label %iter.check, label %.lr.ph.i59, !prof !22

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %spec.select57, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bf = add nuw i64 %.235.ph109, %i.aw
  %i.bg = sub i64 %i.bb, %i.bf
  %diff.check = icmp ult i64 %i.bg, 32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check178 = icmp ult i64 %spec.select57, 16
  br i1 %min.iters.check178, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select57, 12
  %n.vec = and i64 %spec.select57, -16            ; 5 uses
  %i.bh = getelementptr i8, ptr %i.ax, i64 %n.vec
  %i.bi = getelementptr i8, ptr %i.ay, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep179 = getelementptr i8, ptr %i.ay, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %wide.load, ptr %next.gep179, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select57, %n.vec
  br i1 %cmp.n, label %.thread69, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !146

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec182 = and i64 %spec.select57, -4          ; 4 uses
  %i.bk = getelementptr i8, ptr %i.ax, i64 %n.vec182
  %i.bl = getelementptr i8, ptr %i.ay, i64 %n.vec182
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index183 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next187, %vec.epilog.vector.body ] ; 3 uses
  %next.gep184 = getelementptr i8, ptr %i.ax, i64 %index183
  %next.gep185 = getelementptr i8, ptr %i.ay, i64 %index183
  %wide.load186 = load <4 x i8>, ptr %next.gep184, align 1, !tbaa !7
  store <4 x i8> %wide.load186, ptr %next.gep185, align 1, !tbaa !7
  %index.next187 = add nuw i64 %index183, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !147

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n188 = icmp eq i64 %spec.select57, %n.vec182
  br i1 %cmp.n188, label %.thread69, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.ph = phi ptr [ %i.ax, %iter.check ], [ %i.ax, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.057.i.i.ph = phi ptr [ %i.ay, %iter.check ], [ %i.ay, %vector.memcheck ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i59:                                       ; preds = %bb.j, %.lr.ph.i59
  %.05586.i = phi i64 [ %i.bo, %.lr.ph.i59 ], [ %i.bd, %bb.j ] ; 3 uses
  %.05685.i = phi ptr [ %i.bn, %.lr.ph.i59 ], [ %i.ay, %bb.j ] ; 2 uses
  %.val.i = load i64, ptr %i.ax, align 1
  store i64 %.val.i, ptr %.05685.i, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.05685.i, i64 %.05586.i ; 3 uses
  %i.bo = shl nuw nsw i64 %.05586.i, 1
  %i.bp = icmp ult i64 %.05586.i, 4
  br i1 %i.bp, label %.lr.ph.i59, label %._crit_edge.i, !llvm.loop !148

._crit_edge.i:                                    ; preds = %.lr.ph.i59
  %.not67.i = icmp ult ptr %i.bn, %i.az
  br i1 %.not67.i, label %bb.k, label %.thread69, !prof !22

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  %i.br = load i8, ptr %.08.i.i, align 1, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  store i8 %i.br, ptr %.057.i.i, align 1, !tbaa !7
  %exitcond.not.i.i = icmp eq ptr %i.bs, %i.az
  br i1 %exitcond.not.i.i, label %.thread69, label %.lr.ph.i.i, !llvm.loop !149

bb.k:                                             ; preds = %._crit_edge.i, %.split93.us
  %.157.i = phi ptr [ %i.bn, %._crit_edge.i ], [ %i.ay, %.split93.us ] ; 16 uses
  %.157.i230 = ptrtoint ptr %.157.i to i64        ; 4 uses
  %i.bt = add nsw i64 %i.ar, -15
  %.not68.i = icmp sgt i64 %spec.select57, %i.bt
  br i1 %.not68.i, label %bb.r, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %.val4.i.i = load i64, ptr %i.ax, align 1
  store i64 %.val4.i.i, ptr %.157.i, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.157.i, i64 8
  %.val.i.i = load i64, ptr %i.bu, align 1
  store i64 %.val.i.i, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.157.i, i64 16 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.az
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.val4.i71.i = load i64, ptr %i.by, align 1
  store i64 %.val4.i71.i, ptr %i.bw, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %.157.i, i64 24
  %.val.i72.i = load i64, ptr %i.bz, align 1
  store i64 %.val.i72.i, ptr %i.ca, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.157.i, i64 32 ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.az
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.val4.i73.i = load i64, ptr %i.cd, align 1
  store i64 %.val4.i73.i, ptr %i.cb, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %.157.i, i64 40
  %.val.i74.i = load i64, ptr %i.ce, align 1
  store i64 %.val.i74.i, ptr %i.cf, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.157.i, i64 48 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.az
  br i1 %i.ch, label %bb.q, label %.thread69

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %.val4.i75.i = load i64, ptr %i.ci, align 1
  store i64 %.val4.i75.i, ptr %i.cg, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %.157.i, i64 56
  %.val.i76.i = load i64, ptr %i.cj, align 1
  store i64 %.val.i76.i, ptr %i.ck, align 1
  br label %.thread69

bb.r:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds i8, ptr %i.ba, i64 -16 ; 2 uses
  %i.cm = icmp ult ptr %.157.i, %i.cl
  br i1 %i.cm, label %.lr.ph90.i.preheader, label %._crit_edge91.i

.lr.ph90.i.preheader:                             ; preds = %bb.r
  %i.cn = xor i64 %.157.i230, -1
  %i.co = add i64 %i.bb, -16
  %i.cp = add i64 %i.co, %i.ar
  %i.cq = add i64 %.157.i230, 16
  %umax235 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cq)
  %i.cr = add i64 %umax235, %i.cn                 ; 3 uses
  %i.cs = lshr i64 %i.cr, 4
  %min.iters.check236 = icmp ult i64 %i.cr, 144
  br i1 %min.iters.check236, label %.lr.ph90.i.preheader253, label %vector.memcheck229

.lr.ph90.i.preheader253:                          ; preds = %vector.memcheck229, %.lr.ph90.i.preheader
  br label %.lr.ph90.i

vector.memcheck229:                               ; preds = %.lr.ph90.i.preheader
  %scevgep = getelementptr i8, ptr %.157.i, i64 16
  %i.ct = xor i64 %.157.i230, -1
  %i.cu = add i64 %i.bb, -16
  %i.cv = add i64 %i.cu, %i.ar
  %i.cw = add i64 %.157.i230, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cw)
  %i.cx = add i64 %umax, %i.ct
  %i.cy = and i64 %i.cx, -16                      ; 2 uses
  %scevgep231 = getelementptr i8, ptr %scevgep, i64 %i.cy
  %scevgep232 = getelementptr i8, ptr %i.av, i64 16
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %.235.ph109
  %scevgep234 = getelementptr i8, ptr %scevgep233, i64 %i.cy
  %bound0 = icmp ult ptr %.157.i, %scevgep234
  %bound1 = icmp ult ptr %i.ax, %scevgep231
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.preheader253, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck229
  %i.cz = and i64 %i.cr, -16
  %i.da = add i64 %i.cz, 16                       ; 2 uses
  %i.db = getelementptr i8, ptr %i.ax, i64 %i.da
  %i.dc = getelementptr i8, ptr %.157.i, i64 %i.da
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph237
  %index241 = phi i64 [ 0, %vector.ph237 ], [ %index.next245, %vector.body240 ] ; 3 uses
  %i.dd = shl i64 %index241, 4                    ; 2 uses
  %next.gep242 = getelementptr i8, ptr %i.ax, i64 %i.dd
  %next.gep243 = getelementptr i8, ptr %.157.i, i64 %i.dd
  %wide.load244 = load <2 x i64>, ptr %next.gep242, align 1
  store <2 x i64> %wide.load244, ptr %next.gep243, align 1
  %index.next245 = add nuw i64 %index241, 1
  %i.de = icmp eq i64 %index241, %i.cs
  br i1 %i.de, label %._crit_edge91.i, label %vector.body240, !llvm.loop !150

._crit_edge91.i:                                  ; preds = %vector.body240, %.lr.ph90.i, %bb.r
  %.2.lcssa.i = phi ptr [ %.157.i, %bb.r ], [ %i.dh, %.lr.ph90.i ], [ %i.dc, %vector.body240 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %i.ax, %bb.r ], [ %i.di, %.lr.ph90.i ], [ %i.db, %vector.body240 ] ; 3 uses
  %.not69.i = icmp ult ptr %.2.lcssa.i, %i.az
  br i1 %.not69.i, label %bb.s, label %.thread69

.lr.ph90.i:                                       ; preds = %.lr.ph90.i.preheader253, %.lr.ph90.i
  %.05388.i = phi ptr [ %i.di, %.lr.ph90.i ], [ %i.ax, %.lr.ph90.i.preheader253 ] ; 3 uses
  %.287.i = phi ptr [ %i.dh, %.lr.ph90.i ], [ %.157.i, %.lr.ph90.i.preheader253 ] ; 3 uses
  %.val4.i77.i = load i64, ptr %.05388.i, align 1
  store i64 %.val4.i77.i, ptr %.287.i, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.05388.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.287.i, i64 8
  %.val.i78.i = load i64, ptr %i.df, align 1
  store i64 %.val.i78.i, ptr %i.dg, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.287.i, i64 16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.05388.i, i64 16 ; 2 uses
  %i.dj = icmp ult ptr %i.dh, %i.cl
  br i1 %i.dj, label %.lr.ph90.i, label %._crit_edge91.i, !llvm.loop !151

bb.s:                                             ; preds = %._crit_edge91.i
  %i.dk = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %.not70.i = icmp ugt ptr %.2.lcssa.i, %i.dk
  br i1 %.not70.i, label %bb.u, label %bb.t, !prof !19

bb.t:                                             ; preds = %bb.s
  %.053.val.i = load i64, ptr %.053.lcssa.i, align 1
  store i64 %.053.val.i, ptr %.2.lcssa.i, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.i = phi ptr [ %i.dm, %bb.t ], [ %.2.lcssa.i, %bb.s ] ; 8 uses
  %.154.i = phi ptr [ %i.dl, %bb.t ], [ %.053.lcssa.i, %bb.s ] ; 6 uses
  %i.dn = icmp ult ptr %.3.i, %i.az
  br i1 %i.dn, label %iter.check212, label %.thread69

iter.check212:                                    ; preds = %bb.u
  %.154.i193 = ptrtoaddr ptr %.154.i to i64
  %.3.i192 = ptrtoaddr ptr %.3.i to i64
  %.3.i195 = ptrtoint ptr %.3.i to i64
  %i.do = sub i64 %i.bb, %.3.i195
  %i.dp = add i64 %i.do, %spec.select57           ; 7 uses
  %min.iters.check196 = icmp ult i64 %i.dp, 4
  %i.dq = sub i64 %.3.i192, %.154.i193
  %diff.check194 = icmp ult i64 %i.dq, 32
  %or.cond = select i1 %min.iters.check196, i1 true, i1 %diff.check194
  br i1 %or.cond, label %.lr.ph.i79.i.preheader, label %vector.main.loop.iter.check197

vector.main.loop.iter.check197:                   ; preds = %iter.check212
  %min.iters.check198 = icmp ult i64 %i.dp, 16
  br i1 %min.iters.check198, label %vec.epilog.ph216, label %vector.ph199

vector.ph199:                                     ; preds = %vector.main.loop.iter.check197
  %n.mod.vf200 = and i64 %i.dp, 12
  %n.vec201 = and i64 %i.dp, -16                  ; 5 uses
  %i.dr = getelementptr i8, ptr %.154.i, i64 %n.vec201
  %i.ds = getelementptr i8, ptr %.3.i, i64 %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph199
  %index203 = phi i64 [ 0, %vector.ph199 ], [ %index.next207, %vector.body202 ] ; 3 uses
  %next.gep204 = getelementptr i8, ptr %.154.i, i64 %index203
  %next.gep205 = getelementptr i8, ptr %.3.i, i64 %index203
  %wide.load206 = load <16 x i8>, ptr %next.gep204, align 1, !tbaa !7
  store <16 x i8> %wide.load206, ptr %next.gep205, align 1, !tbaa !7
  %index.next207 = add nuw i64 %index203, 16      ; 2 uses
  %i.dt = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.dt, label %middle.block208, label %vector.body202, !llvm.loop !152

middle.block208:                                  ; preds = %vector.body202
  %cmp.n209 = icmp eq i64 %i.dp, %n.vec201
  br i1 %cmp.n209, label %.thread69, label %vec.epilog.iter.check214

vec.epilog.iter.check214:                         ; preds = %middle.block208
  %min.epilog.iters.check215 = icmp eq i64 %n.mod.vf200, 0
  br i1 %min.epilog.iters.check215, label %.lr.ph.i79.i.preheader, label %vec.epilog.ph216, !prof !146

vec.epilog.ph216:                                 ; preds = %vector.main.loop.iter.check197, %vec.epilog.iter.check214
  %vec.epilog.resume.val210 = phi i64 [ %n.vec201, %vec.epilog.iter.check214 ], [ 0, %vector.main.loop.iter.check197 ]
  %n.vec218 = and i64 %i.dp, -4                   ; 4 uses
  %i.du = getelementptr i8, ptr %.154.i, i64 %n.vec218
  %i.dv = getelementptr i8, ptr %.3.i, i64 %n.vec218
  br label %vec.epilog.vector.body219

vec.epilog.vector.body219:                        ; preds = %vec.epilog.vector.body219, %vec.epilog.ph216
  %index220 = phi i64 [ %vec.epilog.resume.val210, %vec.epilog.ph216 ], [ %index.next224, %vec.epilog.vector.body219 ] ; 3 uses
  %next.gep221 = getelementptr i8, ptr %.154.i, i64 %index220
  %next.gep222 = getelementptr i8, ptr %.3.i, i64 %index220
  %wide.load223 = load <4 x i8>, ptr %next.gep221, align 1, !tbaa !7
  store <4 x i8> %wide.load223, ptr %next.gep222, align 1, !tbaa !7
  %index.next224 = add nuw i64 %index220, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.dw, label %vec.epilog.middle.block225, label %vec.epilog.vector.body219, !llvm.loop !153

vec.epilog.middle.block225:                       ; preds = %vec.epilog.vector.body219
  %cmp.n226 = icmp eq i64 %i.dp, %n.vec218
  br i1 %cmp.n226, label %.thread69, label %.lr.ph.i79.i.preheader

.lr.ph.i79.i.preheader:                           ; preds = %iter.check212, %vec.epilog.iter.check214, %vec.epilog.middle.block225
  %.08.i80.i.ph = phi ptr [ %.154.i, %iter.check212 ], [ %i.dr, %vec.epilog.iter.check214 ], [ %i.du, %vec.epilog.middle.block225 ]
  %.057.i81.i.ph = phi ptr [ %.3.i, %iter.check212 ], [ %i.ds, %vec.epilog.iter.check214 ], [ %i.dv, %vec.epilog.middle.block225 ]
  br label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i.preheader, %.lr.ph.i79.i
  %.08.i80.i = phi ptr [ %i.dx, %.lr.ph.i79.i ], [ %.08.i80.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %.057.i81.i = phi ptr [ %i.dz, %.lr.ph.i79.i ], [ %.057.i81.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i80.i, i64 1
  %i.dy = load i8, ptr %.08.i80.i, align 1, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.057.i81.i, i64 1 ; 2 uses
  store i8 %i.dy, ptr %.057.i81.i, align 1, !tbaa !7
  %exitcond.not.i82.i = icmp eq ptr %i.dz, %i.az
  br i1 %exitcond.not.i82.i, label %.thread69, label %.lr.ph.i79.i, !llvm.loop !154

.thread69:                                        ; preds = %.lr.ph.i79.i, %.lr.ph.i.i, %middle.block208, %vec.epilog.middle.block225, %middle.block, %vec.epilog.middle.block, %bb.u, %._crit_edge91.i, %bb.q, %bb.p, %._crit_edge.i
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %spec.select57
  store ptr %i.eb, ptr %i.t, align 8, !tbaa !70
  %i.ec = load i64, ptr %i.l, align 8, !tbaa !71
  %i.ed = sub i64 %i.ec, %spec.select57           ; 3 uses
  store i64 %i.ed, ptr %i.l, align 8, !tbaa !71
  %i.ee = add i64 %spec.select57, %.235.ph109
  %i.ef = load i64, ptr %i.b, align 8, !tbaa !72
  %i.eg = add i64 %i.ef, %spec.select57
  store i64 %i.eg, ptr %i.b, align 8, !tbaa !72
  br label %.outer

bb.v:                                             ; preds = %bb.i
  store ptr %i.au, ptr %i.h, align 8, !tbaa !66
  %i.eh = load ptr, ptr %i.au, align 8, !tbaa !67
  store ptr %i.eh, ptr %i.t, align 8, !tbaa !70
  %i.ei = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !69 ; 4 uses
  store i64 %i.ej, ptr %i.l, align 8, !tbaa !71
  %.not53 = icmp eq ptr %.140.ph107, %i.au
  br i1 %.not53, label %.lr.ph102, label %.split.us

.outer:                                           ; preds = %.thread69, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit
  %.pre.i136 = phi i64 [ %i.ed, %.thread69 ], [ %.pre.i133, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.promoted86112129 = phi i64 [ %i.ed, %.thread69 ], [ %.promoted86112126, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %spec.select57.pn = phi i64 [ %spec.select57, %.thread69 ], [ %.sroa.speculated, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.342 = phi ptr [ %.140.ph107, %.thread69 ], [ %spec.select, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.538 = phi i64 [ %i.ee, %.thread69 ], [ %spec.select56, %_ZN13duckdb_snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.2 = sub i64 %.0.ph106, %spec.select57.pn      ; 2 uses
  %.not52 = icmp eq i64 %.2, 0
  br i1 %.not52, label %.thread, label %.lr.ph87.split, !llvm.loop !155

.thread:                                          ; preds = %.outer, %bb.i, %.loopexit, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.loopexit ], [ false, %bb.i ], [ true, %.outer ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef readnone returned captures(address, ret: address, provenance) %2, ptr noundef readnone captures(address) %3) unnamed_addr #22 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %3, i64 -11
  %.not = icmp ugt ptr %1, %i.g
  br i1 %.not, label %bb.c, label %.lr.ph, !prof !22

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.05586 = phi i64 [ %i.i, %.lr.ph ], [ %i.e, %bb.b ] ; 3 uses
  %.05685 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  %.val = load i64, ptr %0, align 1
  store i64 %.val, ptr %.05685, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.05685, i64 %.05586 ; 3 uses
  %i.i = shl nuw nsw i64 %.05586, 1
  %i.j = icmp ult i64 %.05586, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %.lr.ph
  %.not67 = icmp ult ptr %i.h, %2
  br i1 %.not67, label %bb.d, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult ptr %1, %2
  br i1 %i.k, label %iter.check165, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check165:                                    ; preds = %bb.c
  %i.l = sub i64 %i.a, %i.c                       ; 7 uses
  %min.iters.check148 = icmp ult i64 %i.l, 4
  %i.m = sub i64 %i.c, %i.d
  %diff.check146 = icmp ult i64 %i.m, 32
  %or.cond = or i1 %min.iters.check148, %diff.check146
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check165
  %min.iters.check150 = icmp ult i64 %i.l, 16
  br i1 %min.iters.check150, label %vec.epilog.ph169, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %n.mod.vf152 = and i64 %i.l, 12
  %n.vec153 = and i64 %i.l, -16                   ; 5 uses
  %i.n = getelementptr i8, ptr %0, i64 %n.vec153
  %i.o = getelementptr i8, ptr %1, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %0, i64 %index155
  %next.gep157 = getelementptr i8, ptr %1, i64 %index155
  %wide.load158 = load <16 x i8>, ptr %next.gep156, align 1, !tbaa !7
  store <16 x i8> %wide.load158, ptr %next.gep157, align 1, !tbaa !7
  %index.next159 = add nuw i64 %index155, 16      ; 2 uses
  %i.p = icmp eq i64 %index.next159, %n.vec153
  br i1 %i.p, label %middle.block160, label %vector.body154, !llvm.loop !156

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %i.l, %n.vec153
  br i1 %cmp.n161, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check167

vec.epilog.iter.check167:                         ; preds = %middle.block160
  %min.epilog.iters.check168 = icmp eq i64 %n.mod.vf152, 0
  br i1 %min.epilog.iters.check168, label %.lr.ph.i.preheader, label %vec.epilog.ph169, !prof !146

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check167
  %vec.epilog.resume.val162 = phi i64 [ %n.vec153, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec171 = and i64 %i.l, -4                    ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 %n.vec171
  %i.r = getelementptr i8, ptr %1, i64 %n.vec171
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val162, %vec.epilog.ph169 ], [ %index.next177, %vec.epilog.vector.body172 ] ; 3 uses
  %next.gep174 = getelementptr i8, ptr %0, i64 %index173
  %next.gep175 = getelementptr i8, ptr %1, i64 %index173
  %wide.load176 = load <4 x i8>, ptr %next.gep174, align 1, !tbaa !7
  store <4 x i8> %wide.load176, ptr %next.gep175, align 1, !tbaa !7
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.s, label %vec.epilog.middle.block178, label %vec.epilog.vector.body172, !llvm.loop !157

vec.epilog.middle.block178:                       ; preds = %vec.epilog.vector.body172
  %cmp.n179 = icmp eq i64 %i.l, %n.vec171
  br i1 %cmp.n179, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check165, %vec.epilog.iter.check167, %vec.epilog.middle.block178
  %.08.i.ph = phi ptr [ %0, %iter.check165 ], [ %i.n, %vec.epilog.iter.check167 ], [ %i.q, %vec.epilog.middle.block178 ]
  %.057.i.ph = phi ptr [ %1, %iter.check165 ], [ %i.o, %vec.epilog.iter.check167 ], [ %i.r, %vec.epilog.middle.block178 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.u = load i8, ptr %.08.i, align 1, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.057.i, i64 1 ; 2 uses
  store i8 %i.u, ptr %.057.i, align 1, !tbaa !7
  %exitcond.not.i = icmp eq ptr %i.v, %2
  br i1 %exitcond.not.i, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i, !llvm.loop !158

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.157 = phi ptr [ %i.h, %._crit_edge ], [ %1, %bb.a ] ; 16 uses
  %.157110 = ptrtoint ptr %.157 to i64            ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %3, i64 -15
  %.not68 = icmp ugt ptr %2, %i.w
  br i1 %.not68, label %bb.k, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %.val4.i = load i64, ptr %0, align 1
  store i64 %.val4.i, ptr %.157, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.157, i64 8
  %.val.i = load i64, ptr %i.x, align 1
  store i64 %.val.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.157, i64 16 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %2
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i71 = load i64, ptr %i.ab, align 1
  store i64 %.val4.i71, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.157, i64 24
  %.val.i72 = load i64, ptr %i.ac, align 1
  store i64 %.val.i72, ptr %i.ad, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.157, i64 32 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %2
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i73 = load i64, ptr %i.ag, align 1
  store i64 %.val4.i73, ptr %i.ae, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.157, i64 40
  %.val.i74 = load i64, ptr %i.ah, align 1
  store i64 %.val.i74, ptr %i.ai, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.157, i64 48 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %2
  br i1 %i.ak, label %bb.j, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.i75 = load i64, ptr %i.al, align 1
  store i64 %.val4.i75, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %.157, i64 56
  %.val.i76 = load i64, ptr %i.am, align 1
  store i64 %.val.i76, ptr %i.an, align 1
  br label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.k:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds i8, ptr %3, i64 -16 ; 2 uses
  %i.ap = icmp ult ptr %.157, %i.ao
  br i1 %i.ap, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %bb.k
  %i.aq = add i64 %i.b, -16
  %i.ar = add i64 %.157110, 16
  %umax112 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ar)
  %i.as = xor i64 %.157110, -1
  %i.at = add i64 %umax112, %i.as                 ; 3 uses
  %i.au = lshr i64 %i.at, 4
  %min.iters.check = icmp ult i64 %i.at, 336
  br i1 %min.iters.check, label %.lr.ph90.preheader184, label %vector.memcheck

.lr.ph90.preheader184:                            ; preds = %vector.memcheck, %.lr.ph90.preheader
  br label %.lr.ph90

vector.memcheck:                                  ; preds = %.lr.ph90.preheader
  %i.av = add i64 %i.b, -16
  %i.aw = add i64 %.157110, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.aw)
  %i.ax = xor i64 %.157110, -1
  %i.ay = add i64 %umax, %i.ax
  %i.az = and i64 %i.ay, -16
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %scevgep = getelementptr i8, ptr %.157, i64 %i.ba
  %scevgep111 = getelementptr i8, ptr %0, i64 %i.ba
  %bound0 = icmp ult ptr %.157, %scevgep111
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.preheader184, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bb = and i64 %i.at, -16
  %i.bc = add i64 %i.bb, 16                       ; 2 uses
  %i.bd = getelementptr i8, ptr %0, i64 %i.bc
  %i.be = getelementptr i8, ptr %.157, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bf
  %next.gep113 = getelementptr i8, ptr %.157, i64 %i.bf
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  store <2 x i64> %wide.load, ptr %next.gep113, align 1
  %index.next = add nuw i64 %index, 1
  %i.bg = icmp eq i64 %index, %i.au
  br i1 %i.bg, label %._crit_edge91, label %vector.body, !llvm.loop !159

._crit_edge91:                                    ; preds = %vector.body, %.lr.ph90, %bb.k
  %.2.lcssa = phi ptr [ %.157, %bb.k ], [ %i.bj, %.lr.ph90 ], [ %i.be, %vector.body ] ; 5 uses
  %.053.lcssa = phi ptr [ %0, %bb.k ], [ %i.bk, %.lr.ph90 ], [ %i.bd, %vector.body ] ; 3 uses
  %.not69 = icmp ult ptr %.2.lcssa, %2
  br i1 %.not69, label %bb.l, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

.lr.ph90:                                         ; preds = %.lr.ph90.preheader184, %.lr.ph90
  %.05388 = phi ptr [ %i.bk, %.lr.ph90 ], [ %0, %.lr.ph90.preheader184 ] ; 3 uses
  %.287 = phi ptr [ %i.bj, %.lr.ph90 ], [ %.157, %.lr.ph90.preheader184 ] ; 3 uses
  %.val4.i77 = load i64, ptr %.05388, align 1
  store i64 %.val4.i77, ptr %.287, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.05388, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.287, i64 8
  %.val.i78 = load i64, ptr %i.bh, align 1
  store i64 %.val.i78, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.287, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05388, i64 16 ; 2 uses
  %i.bl = icmp ult ptr %i.bj, %i.ao
  br i1 %i.bl, label %.lr.ph90, label %._crit_edge91, !llvm.loop !160

bb.l:                                             ; preds = %._crit_edge91
  %i.bm = getelementptr inbounds i8, ptr %3, i64 -8
  %.not70 = icmp ugt ptr %.2.lcssa, %i.bm
  br i1 %.not70, label %bb.n, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  %.053.val = load i64, ptr %.053.lcssa, align 1
  store i64 %.053.val, ptr %.2.lcssa, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.bo, %bb.m ], [ %.2.lcssa, %bb.l ] ; 8 uses
  %.154 = phi ptr [ %i.bn, %bb.m ], [ %.053.lcssa, %bb.l ] ; 6 uses
  %i.bp = icmp ult ptr %.3, %2
  br i1 %i.bp, label %iter.check, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check:                                       ; preds = %bb.n
  %.154117 = ptrtoaddr ptr %.154 to i64
  %.3116 = ptrtoaddr ptr %.3 to i64
  %.3118 = ptrtoint ptr %.3 to i64
  %i.bq = sub i64 %i.a, %.3118                    ; 7 uses
  %min.iters.check120 = icmp ult i64 %i.bq, 4
  %i.br = sub i64 %.3116, %.154117
  %diff.check = icmp ult i64 %i.br, 32
  %or.cond182 = select i1 %min.iters.check120, i1 true, i1 %diff.check
  br i1 %or.cond182, label %.lr.ph.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check121 = icmp ult i64 %i.bq, 16
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph122

vector.ph122:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf123 = and i64 %i.bq, 12
  %n.vec124 = and i64 %i.bq, -16                  ; 5 uses
  %i.bs = getelementptr i8, ptr %.154, i64 %n.vec124
  %i.bt = getelementptr i8, ptr %.3, i64 %n.vec124
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body125 ] ; 3 uses
  %next.gep127 = getelementptr i8, ptr %.154, i64 %index126
  %next.gep128 = getelementptr i8, ptr %.3, i64 %index126
  %wide.load129 = load <16 x i8>, ptr %next.gep127, align 1, !tbaa !7
  store <16 x i8> %wide.load129, ptr %next.gep128, align 1, !tbaa !7
  %index.next130 = add nuw i64 %index126, 16      ; 2 uses
  %i.bu = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.bu, label %middle.block131, label %vector.body125, !llvm.loop !161

middle.block131:                                  ; preds = %vector.body125
  %cmp.n132 = icmp eq i64 %i.bq, %n.vec124
  br i1 %cmp.n132, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block131
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf123, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i79.preheader, label %vec.epilog.ph, !prof !146

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec124, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec136 = and i64 %i.bq, -4                   ; 4 uses
  %i.bv = getelementptr i8, ptr %.154, i64 %n.vec136
  %i.bw = getelementptr i8, ptr %.3, i64 %n.vec136
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.154, i64 %index137
  %next.gep139 = getelementptr i8, ptr %.3, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep138, align 1, !tbaa !7
  store <4 x i8> %wide.load140, ptr %next.gep139, align 1, !tbaa !7
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %i.bq, %n.vec136
  br i1 %cmp.n142, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i80.ph = phi ptr [ %.154, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  %.057.i81.ph = phi ptr [ %.3, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %.08.i80 = phi ptr [ %i.by, %.lr.ph.i79 ], [ %.08.i80.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %.057.i81 = phi ptr [ %i.ca, %.lr.ph.i79 ], [ %.057.i81.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i80, i64 1
  %i.bz = load i8, ptr %.08.i80, align 1, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.057.i81, i64 1 ; 2 uses
  store i8 %i.bz, ptr %.057.i81, align 1, !tbaa !7
  %exitcond.not.i82 = icmp eq ptr %i.ca, %2
  br i1 %exitcond.not.i82, label %_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79, !llvm.loop !163

_ZN13duckdb_snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit: ; preds = %.lr.ph.i79, %.lr.ph.i, %middle.block131, %vec.epilog.middle.block, %middle.block160, %vec.epilog.middle.block178, %bb.n, %bb.c, %bb.j, %bb.i, %._crit_edge91, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !87   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.n, label %bb.c, label %.thread193, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i125 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i125
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !132
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0145 = phi i64 [ %i.m, %bb.d ], [ %.0145.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.0, %bb.d ], [ %.1.be, %.loopexit.backedge ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.x = add i64 %.0145, -1
  %i.y = call { ptr, i64 } @_ZN13duckdb_snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %.1, ptr noundef %i.w, i64 noundef %i.x, i64 noundef 1, i64 noundef 9223372036854775744) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = add i64 %i.aa, 1                        ; 9 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !132 ; 2 uses
  %.not116 = icmp ult ptr %i.z, %i.ac
  br i1 %.not116, label %bb.g, label %bb.e, !prof !19

bb.e:                                             ; preds = %.loopexit
  store ptr %i.z, ptr %i.b, align 8, !tbaa !46
  %i.ad = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.ad, label %bb.f, label %.thread193, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.ai, i64 4)
  %i.aj = sub i64 0, %.sroa.speculated.i126
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj ; 2 uses
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !132
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.ac, %.loopexit ] ; 3 uses
  %.2 = phi ptr [ %i.ae, %bb.f ], [ %i.z, %.loopexit ] ; 3 uses
  %i.am = load i8, ptr %.2, align 1, !tbaa !7     ; 3 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 6 uses
  %i.ap = and i32 %i.an, 3                        ; 3 uses
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.h
    i32 3, label %bb.o
  ], !prof !134

bb.h:                                             ; preds = %bb.g
  %i.aq = lshr exact i32 %i.an, 2
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = icmp ugt i8 %i.am, -20
  br i1 %i.av, label %bb.i, label %bb.j, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.as, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ao, align 1
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 4294967288
  %i.az = shl nuw i64 4294967295, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i32 %.0.copyload.i, %i.bb
  %i.bd = add i32 %i.bc, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.099 = phi i64 [ %i.be, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %.6 = phi ptr [ %i.bf, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.bg = ptrtoint ptr %.6 to i64
  %i.bh = sub i64 %i.au, %i.bg                    ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.099
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.1100213 = phi i64 [ %i.by, %bb.l ], [ %.099, %bb.j ]
  %.0101212 = phi i64 [ %i.bw, %bb.l ], [ %i.bh, %bb.j ] ; 2 uses
  %.2147211 = phi i64 [ %i.bj, %bb.l ], [ %i.ab, %bb.j ]
  %i.bj = add i64 %.0101212, %.2147211            ; 5 uses
  %i.bk = load i64, ptr %1, align 8, !tbaa !85
  %.not200 = icmp ugt i64 %i.bj, %i.bk
  br i1 %.not200, label %.thread193, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bl = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bm = load i32, ptr %i.v, align 8, !tbaa !52
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.br = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull %i.a) ; 2 uses
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !8   ; 6 uses
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr %i.v, align 8, !tbaa !52
  %.not119 = icmp eq i64 %i.bw, 0
  br i1 %.not119, label %.thread173, label %bb.l

.thread173:                                       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.thread193

bb.l:                                             ; preds = %bb.k
  %i.by = sub i64 %.1100213, %.0101212            ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw ; 3 uses
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !50
  %.sroa.speculated.i127 = call i64 @llvm.smin.i64(i64 %i.bw, i64 4)
  %i.ca = sub i64 0, %.sroa.speculated.i127       ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %i.ca
  store ptr %i.cb, ptr %i.k, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cc = icmp ult i64 %i.bw, %i.by
  br i1 %i.cc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !164

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.ca
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.ce = phi ptr [ %i.al, %bb.j ], [ %i.cd, %._crit_edge.loopexit ]
  %.2147.lcssa = phi i64 [ %i.ab, %bb.j ], [ %i.bj, %._crit_edge.loopexit ]
  %.1100.lcssa = phi i64 [ %.099, %bb.j ], [ %i.by, %._crit_edge.loopexit ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6, %bb.j ], [ %i.bv, %._crit_edge.loopexit ]
  %i.cf = add i64 %.1100.lcssa, %.2147.lcssa      ; 5 uses
  %i.cg = load i64, ptr %1, align 8, !tbaa !85
  %.not199 = icmp ugt i64 %i.cf, %i.cg
  br i1 %.not199, label %.thread193, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.1100.lcssa ; 3 uses
  %.not118 = icmp ult ptr %i.ch, %i.ce
  br i1 %.not118, label %.loopexit.backedge, label %bb.n, !prof !19

bb.n:                                             ; preds = %bb.m
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !46
  %i.ci = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.ci, label %.loopexit.sink.split, label %.thread193, !prof !19

bb.o:                                             ; preds = %bb.g
  %.0.copyload.i129 = load i32, ptr %i.ao, align 1
  %i.cj = zext i32 %.0.copyload.i129 to i64
  %i.ck = add nsw i64 %i.cj, -1
  %.not.i = icmp ugt i64 %i.ab, %i.ck
  br i1 %.not.i, label %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, label %.thread193

_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit: ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.cm = lshr i32 %i.an, 2
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = add i64 %i.ab, %i.co                    ; 3 uses
  %i.cq = load i64, ptr %1, align 8, !tbaa !85
  %.not198 = icmp ugt i64 %i.cp, %i.cq
  br i1 %.not198, label %.thread193, label %bb.r

bb.p:                                             ; preds = %bb.g
  %i.cr = zext i8 %i.am to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr @_ZN13duckdb_snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !20 ; 2 uses
  %i.cu = sext i16 %i.ct to i64
  %.0.copyload.i130 = load i32, ptr %i.ao, align 1
  %i.cv = shl nuw nsw i32 %i.ap, 3
  %i.cw = shl nsw i32 -1, %i.cv
  %i.cx = xor i32 %i.cw, -1
  %i.cy = and i32 %.0.copyload.i130, %i.cx
  %i.cz = and i16 %i.ct, 255
  %i.da = zext nneg i16 %i.cz to i64              ; 2 uses
  %i.db = sub nsw i64 %i.da, %i.cu
  %.tr = trunc nsw i64 %i.db to i32
  %.narrow = add nsw i32 %i.cy, %.tr
  %i.dc = zext i32 %.narrow to i64
  %i.dd = add nsw i64 %i.dc, -1
  %.not.i131 = icmp ugt i64 %i.ab, %i.dd
  br i1 %.not.i131, label %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit133, label %.thread193

_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit133: ; preds = %bb.p
  %i.de = add i64 %i.ab, %i.da                    ; 4 uses
  %i.df = load i64, ptr %1, align 8, !tbaa !85
  %.not201 = icmp ugt i64 %i.de, %i.df
  br i1 %.not201, label %.thread193, label %bb.q

bb.q:                                             ; preds = %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit133
  %i.dg = zext nneg i32 %i.ap to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dg ; 3 uses
  %.not202 = icmp ult ptr %i.dh, %i.al
  br i1 %.not202, label %.loopexit.backedge, label %bb.r

bb.r:                                             ; preds = %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, %bb.q
  %.4 = phi i64 [ %i.de, %bb.q ], [ %i.cp, %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ] ; 3 uses
  %.12 = phi ptr [ %i.dh, %bb.q ], [ %i.cl, %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ] ; 3 uses
  %.not117 = icmp ult ptr %.12, %i.al
  br i1 %.not117, label %.loopexit.backedge, label %bb.s, !prof !19

bb.s:                                             ; preds = %bb.r
  store ptr %.12, ptr %i.b, align 8, !tbaa !46
  %i.di = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.di, label %.loopexit.sink.split, label %.thread193, !prof !19

.loopexit.sink.split:                             ; preds = %bb.s, %bb.n
  %.5149.ph = phi i64 [ %i.cf, %bb.n ], [ %.4, %bb.s ]
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %.sroa.speculated.i134 = call i64 @llvm.smin.i64(i64 %i.dn, i64 4)
  %i.do = sub i64 0, %.sroa.speculated.i134
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %i.do
  store ptr %i.dp, ptr %i.k, align 8, !tbaa !132
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %.loopexit.sink.split, %bb.r, %bb.m, %bb.q
  %.0145.be = phi i64 [ %i.cf, %bb.m ], [ %i.de, %bb.q ], [ %.4, %bb.r ], [ %.5149.ph, %.loopexit.sink.split ]
  %.1.be = phi ptr [ %i.ch, %bb.m ], [ %i.dh, %bb.q ], [ %.12, %bb.r ], [ %i.dj, %.loopexit.sink.split ]
  br label %.loopexit

.thread193:                                       ; preds = %bb.n, %._crit_edge, %bb.p, %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit133, %bb.o, %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, %bb.s, %bb.e, %.lr.ph, %.thread173, %bb.b
  %.6150 = phi i64 [ %i.m, %bb.b ], [ %i.bj, %.thread173 ], [ %i.bj, %.lr.ph ], [ %i.cf, %bb.n ], [ %i.cf, %._crit_edge ], [ %i.de, %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit133 ], [ %i.cp, %_ZN13duckdb_snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ], [ %.4, %bb.s ], [ %i.ab, %bb.o ], [ %i.ab, %bb.e ], [ %i.ab, %bb.p ]
  store i64 %.6150, ptr %i.l, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN13duckdb_snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = add nsw i64 %4, -64                      ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp sgt i64 %i.e, 130
  %i.g = icmp slt i64 %2, %i.b
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %.thread144

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %1, i64 -129
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %0, align 1, !tbaa !7
  %i.k = zext i8 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %bb.b
  %.0111 = phi ptr [ %i.i, %bb.b ], [ %i.bv, %bb.m ] ; 9 uses
  %.0104 = phi i64 [ %2, %bb.b ], [ %.4108132.1, %bb.m ] ; 4 uses
  %.093 = phi i64 [ 0, %bb.b ], [ %.4133.1, %bb.m ] ; 4 uses
  %.090 = phi i64 [ %i.k, %bb.b ], [ %i.bq, %bb.m ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0111, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.l, i32 0, i32 3, i32 1)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZN13duckdb_snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %.090
  %i.n = load i16, ptr %i.m, align 2, !tbaa !20   ; 2 uses
  %i.o = sext i16 %i.n to i64                     ; 3 uses
  %i.p = lshr i64 %.090, 2                        ; 2 uses
  %i.q = tail call { i64, i8 } asm "and $$3, ${0:k}\0A\09", "=r,={@ccz},0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.090) #29, !srcloc !140 ; 2 uses
  %i.r = extractvalue { i64, i8 } %i.q, 0         ; 4 uses
  %i.s = extractvalue { i64, i8 } %i.q, 1         ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.0111, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load volatile i8, ptr %i.v, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0111, i64 %i.r
  %i.z = load volatile i8, ptr %i.y, align 1, !tbaa !7
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = trunc nuw i8 %i.s to i1                 ; 2 uses
  %i.ac = select i1 %i.ab, i64 %i.x, i64 %i.aa    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0111, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.r
  %i.af = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.p
  %i.ah = select i1 %i.ab, ptr %i.ag, ptr %i.ae   ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa) #27, !srcloc !141
  %.0.copyload.i = load i32, ptr %.0111, align 1
  %i.ai = and i64 %i.o, 255                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 281470698455040, ptr %i.a, align 8, !tbaa !8
  %i.aj = shl i64 %i.r, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %.0.copyload.i58 = load i16, ptr %i.ak, align 2
  %i.al = zext i16 %.0.copyload.i58 to i32
  %i.am = and i32 %.0.copyload.i, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = sub nsw i64 %i.o, %i.an                 ; 3 uses
  %i.ap = icmp sgt i64 %i.o, %i.an
  br i1 %i.ap, label %bb.d, label %bb.f, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.aq = and i16 %i.n, 128
  %.not50 = icmp eq i16 %i.aq, 0
  br i1 %.not50, label %bb.e, label %.thread134.loopexit, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.ar = add i64 %.093, %.0104                   ; 3 uses
  %i.as = sub i64 %i.ar, %i.ai
  %i.at = add i64 %i.as, %i.ao
  %i.au = icmp slt i64 %i.at, 0
  %.not = icmp eq i64 %i.ai, %i.ao
  %or.cond156 = select i1 %i.au, i1 true, i1 %.not, !prof !165
  br i1 %or.cond156, label %.thread134.thread, label %.thread126, !prof !165

.thread126:                                       ; preds = %bb.e
  %i.av = add i64 %i.ai, %i.ar
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.aw = add i64 %.093, %.0104                   ; 3 uses
  %i.ax = sub i64 %i.aw, %i.ai
  %i.ay = add i64 %i.ax, %i.ao
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  %.not49 = icmp eq i64 %i.r, 0
  br i1 %.not49, label %bb.h, label %.thread134.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread126
  %.4133 = phi i64 [ 0, %.thread126 ], [ %i.ai, %bb.f ], [ %i.ai, %bb.g ] ; 4 uses
  %.4108132 = phi i64 [ %i.av, %.thread126 ], [ %i.aw, %bb.f ], [ %i.aw, %bb.g ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZN13duckdb_snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ac
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !20 ; 2 uses
  %i.bc = sext i16 %i.bb to i64                   ; 3 uses
  %i.bd = lshr i64 %i.ac, 2                       ; 2 uses
  %i.be = tail call { i64, i8 } asm "and $$3, ${0:k}\0A\09", "=r,={@ccz},0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.ac) #29, !srcloc !140 ; 2 uses
  %i.bf = extractvalue { i64, i8 } %i.be, 0       ; 4 uses
  %i.bg = extractvalue { i64, i8 } %i.be, 1       ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 2
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load volatile i8, ptr %i.bj, align 1, !tbaa !7
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bf
  %i.bn = load volatile i8, ptr %i.bm, align 1, !tbaa !7
  %i.bo = zext i8 %i.bn to i64                    ; 2 uses
  %i.bp = trunc nuw i8 %i.bg to i1                ; 2 uses
  %i.bq = select i1 %i.bp, i64 %i.bl, i64 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bf
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bd
  %i.bv = select i1 %i.bp, ptr %i.bu, ptr %i.bs   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.bo) #27, !srcloc !141
  %.0.copyload.i.1 = load i32, ptr %i.ah, align 1
  %i.bw = and i64 %i.bc, 255                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 281470698455040, ptr %i.a, align 8, !tbaa !8
  %i.bx = shl i64 %i.bf, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %.0.copyload.i58.1 = load i16, ptr %i.by, align 2
  %i.bz = zext i16 %.0.copyload.i58.1 to i32
  %i.ca = and i32 %.0.copyload.i.1, %i.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = sub nsw i64 %i.bc, %i.cb                ; 3 uses
  %i.cd = icmp sgt i64 %i.bc, %i.cb
  br i1 %i.cd, label %bb.k, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.ce = add i64 %.4133, %.4108132               ; 3 uses
  %i.cf = sub i64 %i.ce, %i.bw
  %i.cg = add i64 %i.cf, %i.cc
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.j, label %bb.m, !prof !22

bb.j:                                             ; preds = %bb.i
  %.not49.1 = icmp eq i64 %i.bf, 0
  br i1 %.not49.1, label %bb.m, label %.thread134.loopexit

bb.k:                                             ; preds = %bb.h
  %i.ci = and i16 %i.bb, 128
  %.not50.1 = icmp eq i16 %i.ci, 0
  br i1 %.not50.1, label %bb.l, label %.thread134.loopexit, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.cj = add i64 %.4133, %.4108132               ; 3 uses
  %i.ck = sub i64 %i.cj, %i.bw
  %i.cl = add i64 %i.ck, %i.cc
  %i.cm = icmp slt i64 %i.cl, 0
  %.not.1 = icmp eq i64 %i.bw, %i.cc
  %or.cond156.1 = select i1 %i.cm, i1 true, i1 %.not.1, !prof !165
  br i1 %or.cond156.1, label %.thread134.thread, label %.thread126.1, !prof !165

.thread126.1:                                     ; preds = %bb.l
  %i.cn = add i64 %i.bw, %i.cj
  br label %bb.m

bb.m:                                             ; preds = %.thread126.1, %bb.j, %bb.i
  %.4133.1 = phi i64 [ 0, %.thread126.1 ], [ %i.bw, %bb.i ], [ %i.bw, %bb.j ] ; 2 uses
  %.4108132.1 = phi i64 [ %i.cn, %.thread126.1 ], [ %i.ce, %bb.i ], [ %i.ce, %bb.j ] ; 2 uses
  %i.co = icmp ult ptr %i.bv, %i.h
  %i.cp = add i64 %.4133.1, %.4108132.1           ; 2 uses
  %i.cq = icmp slt i64 %i.cp, %i.b
  %or.cond155 = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond155, label %bb.c, label %.thread134, !llvm.loop !166

.thread134.thread:                                ; preds = %bb.l, %bb.e
  %.1112169.lcssa181 = phi ptr [ %.0111, %bb.e ], [ %i.ah, %bb.l ]
  %.lcssa = phi i64 [ %i.ar, %bb.e ], [ %i.cj, %bb.l ]
  %i.cr = getelementptr inbounds i8, ptr %.1112169.lcssa181, i64 -1
  br label %.thread144

.thread134.loopexit:                              ; preds = %bb.k, %bb.j, %bb.g, %bb.d
  %.194171.lcssa = phi i64 [ %.093, %bb.g ], [ %.093, %bb.d ], [ %.4133, %bb.j ], [ %.4133, %bb.k ]
  %.1105170.lcssa = phi i64 [ %.0104, %bb.g ], [ %.0104, %bb.d ], [ %.4108132, %bb.j ], [ %.4108132, %bb.k ]
  %.1112169.lcssa = phi ptr [ %.0111, %bb.g ], [ %.0111, %bb.d ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ]
  %.pre = add i64 %.194171.lcssa, %.1105170.lcssa
  br label %.thread134

.thread134:                                       ; preds = %bb.m, %.thread134.loopexit
  %.pre-phi = phi i64 [ %.pre, %.thread134.loopexit ], [ %i.cp, %bb.m ]
  %.1112168 = phi ptr [ %.1112169.lcssa, %.thread134.loopexit ], [ %i.bv, %bb.m ]
  %i.cs = getelementptr inbounds i8, ptr %.1112168, i64 -1
  br label %.thread144

.thread144:                                       ; preds = %.thread134, %.thread134.thread, %bb.a
  %.4115149 = phi ptr [ %i.cs, %.thread134 ], [ %i.cr, %.thread134.thread ], [ %0, %bb.a ]
  %.7 = phi i64 [ %.pre-phi, %.thread134 ], [ %.lcssa, %.thread134.thread ], [ %2, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.4115149, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.7, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 15 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 4)
  %i.j = sub i64 0, %.sroa.speculated.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78
  store ptr %i.n, ptr %i.a, align 8, !tbaa !133
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.o, label %bb.c, label %.thread167, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %.sroa.speculated.i125 = tail call i64 @llvm.smin.i64(i64 %i.t, i64 4)
  %i.u = sub i64 0, %.sroa.speculated.i125
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.v, ptr %i.l, align 8, !tbaa !132
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.p, %bb.c ], [ %i.d, %bb.a ]  ; 2 uses
  %i.w = load i8, ptr %.0, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit

_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit: ; preds = %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit.backedge, %bb.d
  %.0138 = phi i32 [ %i.x, %bb.d ], [ %.0138.be, %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit.backedge ]
  %.1 = phi ptr [ %.0, %bb.d ], [ %.1.be, %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit.backedge ] ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !76    ; 4 uses
  %.not115 = icmp eq ptr %i.ab, null
  br i1 %.not115, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ae
  %i.ak = call { ptr, i64 } @_ZN13duckdb_snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef nonnull %.1, ptr noundef %i.ag, i64 noundef %i.aj, ptr noundef nonnull %i.ab, i64 noundef %i.af) ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0      ; 3 uses
  %i.am = extractvalue { ptr, i64 } %i.ak, 1
  %i.an = getelementptr inbounds i8, ptr %i.ab, i64 %i.am
  store ptr %i.an, ptr %i.a, align 8, !tbaa !133
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !132
  %.not116 = icmp ult ptr %i.al, %i.ao
  br i1 %.not116, label %bb.h, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  store ptr %i.al, ptr %i.c, align 8, !tbaa !46
  %i.ap = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.ap, label %bb.g, label %.thread167, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.au, i64 4)
  %i.av = sub i64 0, %.sroa.speculated.i126
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.2 = phi ptr [ %i.aq, %bb.g ], [ %i.al, %bb.e ] ; 2 uses
  %i.ax = load i8, ptr %.2, align 1, !tbaa !7
  %i.ay = zext i8 %i.ax to i32
  br label %bb.i

bb.i:                                             ; preds = %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit, %bb.h
  %.2140.ph = phi i32 [ %i.ay, %bb.h ], [ %.0138, %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit ] ; 2 uses
  %.5.ph = phi ptr [ %.2, %bb.h ], [ %.1, %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.5.ph, i64 1 ; 9 uses
  %i.ba = and i32 %.2140.ph, 255                  ; 5 uses
  %i.bb = and i32 %.2140.ph, 3                    ; 3 uses
  switch i32 %i.bb, label %bb.u [
    i32 0, label %bb.j
    i32 3, label %bb.t
  ], !prof !134

bb.j:                                             ; preds = %bb.i
  %i.bc = lshr exact i32 %i.ba, 2
  %i.bd = add nuw nsw i32 %i.bc, 1
  %i.be = zext nneg i32 %i.bd to i64              ; 4 uses
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = ptrtoint ptr %i.az to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !133 ; 4 uses
  %i.bk = load ptr, ptr %i.z, align 8, !tbaa !79
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp samesign ult i32 %i.ba, 64
  %i.bp = icmp ugt i64 %i.bi, 20
  %or.cond.i = and i1 %i.bo, %i.bp
  %i.bq = icmp ugt i64 %i.bn, 15
  %or.cond3.i = select i1 %or.cond.i, i1 %i.bq, i1 false
  br i1 %or.cond3.i, label %bb.k, label %_ZN13duckdb_snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.az, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be
  store ptr %i.br, ptr %i.a, align 8, !tbaa !133
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.be ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bu = zext i8 %i.bt to i32
  br label %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit.backedge

_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit.backedge: ; preds = %bb.k, %bb.s, %bb.ac, %bb.z
  %.0138.be = phi i32 [ %i.fs, %bb.ac ], [ %i.ds, %bb.s ], [ %i.ff, %bb.z ], [ %i.bu, %bb.k ]
  %.1.be = phi ptr [ %.13, %bb.ac ], [ %.8, %bb.s ], [ %i.fe, %bb.z ], [ %i.bs, %bb.k ]
  br label %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit, !llvm.loop !167

_ZN13duckdb_snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.j
  %i.bv = icmp samesign ugt i32 %i.ba, 236
  br i1 %i.bv, label %bb.l, label %bb.m, !prof !22

bb.l:                                             ; preds = %_ZN13duckdb_snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit
  %i.bw = add nsw i64 %i.be, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.az, align 1
  %i.bx = shl nsw i64 %i.bw, 3
  %i.by = and i64 %i.bx, 4294967288
  %i.bz = shl nuw i64 4294967295, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = xor i32 %i.ca, -1
  %i.cc = and i32 %.0.copyload.i, %i.cb
  %i.cd = add i32 %i.cc, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bw ; 2 uses
  %.pre189 = ptrtoint ptr %i.cf to i64
  %.pre190 = sub i64 %i.bg, %.pre189
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN13duckdb_snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit
  %.pre-phi191 = phi i64 [ %.pre190, %bb.l ], [ %i.bi, %_ZN13duckdb_snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.099 = phi i64 [ %i.ce, %bb.l ], [ %i.be, %_ZN13duckdb_snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.cf, %bb.l ], [ %i.az, %_ZN13duckdb_snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.cg = icmp ult i64 %.pre-phi191, %.099
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %bb.o
  %.7181 = phi ptr [ %i.cx, %bb.o ], [ %.6, %bb.m ]
  %.1100180 = phi i64 [ %i.da, %bb.o ], [ %.099, %bb.m ]
  %.0101179 = phi i64 [ %i.cy, %bb.o ], [ %.pre-phi191, %bb.m ] ; 4 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !133 ; 3 uses
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !79
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %.not172 = icmp ult i64 %i.cl, %.0101179
  br i1 %.not172, label %.thread167, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %.7181, i64 %.0101179, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.0101179
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !133
  %i.cn = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.co = load i32, ptr %i.aa, align 8, !tbaa !52
  %i.cp = zext i32 %i.co to i64
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i64 noundef %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ct = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !53
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call noundef ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull %i.b) ; 3 uses
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !8   ; 6 uses
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.aa, align 8, !tbaa !52
  %.not119 = icmp eq i64 %i.cy, 0
  br i1 %.not119, label %.thread158, label %bb.o

.thread158:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.thread167

bb.o:                                             ; preds = %bb.n
  %i.da = sub i64 %.1100180, %.0101179            ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy ; 2 uses
  store ptr %i.db, ptr %i.e, align 8, !tbaa !50
  %.sroa.speculated.i127 = call i64 @llvm.smin.i64(i64 %i.cy, i64 4)
  %i.dc = sub i64 0, %.sroa.speculated.i127
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc
  store ptr %i.dd, ptr %i.l, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.de = icmp ult i64 %i.cy, %i.da
  br i1 %i.de, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !168

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !133 ; 2 uses
  %.pre186 = load ptr, ptr %i.z, align 8, !tbaa !79
  %.pre192 = ptrtoint ptr %.pre186 to i64
  %.pre194 = ptrtoint ptr %.pre to i64
  %.pre196 = sub i64 %.pre192, %.pre194
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.pre-phi197 = phi i64 [ %.pre196, %._crit_edge.loopexit ], [ %i.bn, %bb.m ]
  %i.df = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bj, %bb.m ] ; 2 uses
  %.1100.lcssa = phi i64 [ %i.da, %._crit_edge.loopexit ], [ %.099, %bb.m ] ; 4 uses
  %.7.lcssa = phi ptr [ %i.cx, %._crit_edge.loopexit ], [ %.6, %bb.m ] ; 2 uses
  %.not171 = icmp ult i64 %.pre-phi197, %.1100.lcssa
  br i1 %.not171, label %.thread167, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %.7.lcssa, i64 %.1100.lcssa, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.1100.lcssa
  store ptr %i.dg, ptr %i.a, align 8, !tbaa !133
  %i.dh = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.1100.lcssa ; 3 uses
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !132
  %.not118 = icmp ult ptr %i.dh, %i.di
  br i1 %.not118, label %bb.s, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  store ptr %i.dh, ptr %i.c, align 8, !tbaa !46
  %i.dj = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.dj, label %bb.r, label %.thread167, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  %.sroa.speculated.i129 = call i64 @llvm.smin.i64(i64 %i.do, i64 4)
  %i.dp = sub i64 0, %.sroa.speculated.i129
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp
  store ptr %i.dq, ptr %i.l, align 8, !tbaa !132
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.dk, %bb.r ], [ %i.dh, %bb.p ] ; 2 uses
  %i.dr = load i8, ptr %.8, align 1, !tbaa !7
  %i.ds = zext i8 %i.dr to i32
  br label %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit.backedge

bb.t:                                             ; preds = %bb.i
  %.0.copyload.i130 = load i32, ptr %i.az, align 1
  %i.dt = zext i32 %.0.copyload.i130 to i64
  %i.du = lshr i32 %i.ba, 2
  %i.dv = add nuw nsw i32 %i.du, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = call noundef zeroext i1 @_ZN13duckdb_snappy17SnappyArrayWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dt, i64 noundef %i.dw, ptr noundef nonnull %i.a)
  br i1 %i.dx, label %bb.aa, label %.thread167

bb.u:                                             ; preds = %bb.i
  %i.dy = zext nneg i32 %i.ba to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr @_ZN13duckdb_snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !20 ; 2 uses
  %i.eb = sext i16 %i.ea to i64
  %.0.copyload.i131 = load i32, ptr %i.az, align 1 ; 2 uses
  %i.ec = shl nuw nsw i32 %i.bb, 3                ; 2 uses
  %i.ed = shl nsw i32 -1, %i.ec
  %i.ee = xor i32 %i.ed, -1
  %i.ef = and i32 %.0.copyload.i131, %i.ee
  %i.eg = and i16 %i.ea, 255
  %i.eh = zext nneg i16 %i.eg to i64              ; 3 uses
  %i.ei = sub nsw i64 %i.eh, %i.eb
  %.tr = trunc nsw i64 %i.ei to i32
  %.narrow = add nsw i32 %i.ef, %.tr              ; 2 uses
  %i.ej = zext i32 %.narrow to i64                ; 4 uses
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !133 ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eh ; 3 uses
  %i.em = load ptr, ptr %1, align 8, !tbaa !76
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = icmp ult i64 %i.ep, %i.ej
  br i1 %i.eq, label %.thread167, label %bb.v, !prof !22

bb.v:                                             ; preds = %bb.u
  %i.er = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.es = icmp uge ptr %i.ek, %i.er
  %i.et = icmp samesign ult i64 %i.ej, %i.eh
  %i.eu = or i1 %i.et, %i.es
  br i1 %i.eu, label %bb.w, label %bb.y, !prof !22

bb.w:                                             ; preds = %bb.v
  %i.ev = load ptr, ptr %i.z, align 8, !tbaa !79  ; 2 uses
  %i.ew = icmp ugt ptr %i.el, %i.ev
  %i.ex = icmp eq i32 %.narrow, 0
  %or.cond.i132 = or i1 %i.ex, %i.ew
  br i1 %or.cond.i132, label %.thread167, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = sub nsw i64 0, %i.ej
  %i.ez = getelementptr inbounds i8, ptr %i.ek, i64 %i.ey
  %i.fa = call fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.ez, ptr noundef %i.ek, ptr noundef %i.el, ptr noundef %i.ev) ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.fb = sub nsw i64 0, %i.ej
  %i.fc = getelementptr inbounds i8, ptr %i.ek, i64 %i.fb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ek, ptr noundef nonnull align 1 dereferenceable(64) %i.fc, i64 64, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  store ptr %i.el, ptr %i.a, align 8, !tbaa !133
  %i.fd = zext nneg i32 %i.bb to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.fd ; 3 uses
  %i.ff = lshr i32 %.0.copyload.i131, %i.ec
  %i.fg = load ptr, ptr %i.l, align 8, !tbaa !132
  %.not173 = icmp ult ptr %i.fe, %i.fg
  br i1 %.not173, label %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit.backedge, label %.thread, !prof !138

bb.aa:                                            ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 3 uses
  %.pre188 = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.fi = icmp ult ptr %i.fh, %.pre188
  br i1 %i.fi, label %bb.ac, label %.thread, !prof !139

.thread:                                          ; preds = %bb.z, %bb.aa
  %.12216 = phi ptr [ %i.fh, %bb.aa ], [ %i.fe, %bb.z ]
  store ptr %.12216, ptr %i.c, align 8, !tbaa !46
  %i.fj = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.fj, label %bb.ab, label %.thread167, !prof !19

bb.ab:                                            ; preds = %.thread
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %.sroa.speculated.i133 = call i64 @llvm.smin.i64(i64 %i.fo, i64 4)
  %i.fp = sub i64 0, %.sroa.speculated.i133
  %i.fq = getelementptr inbounds i8, ptr %i.fl, i64 %i.fp
  store ptr %i.fq, ptr %i.l, align 8, !tbaa !132
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.13 = phi ptr [ %i.fk, %bb.ab ], [ %i.fh, %bb.aa ] ; 2 uses
  %i.fr = load i8, ptr %.13, align 1, !tbaa !7
  %i.fs = zext i8 %i.fr to i32
  br label %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit.backedge

.thread167:                                       ; preds = %bb.t, %bb.q, %._crit_edge, %bb.w, %bb.u, %.thread, %bb.f, %.lr.ph, %.thread158, %bb.b
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !133
  store ptr %i.ft, ptr %i.m, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy17SnappyArrayWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !133    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !76
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.j = icmp uge ptr %i.a, %i.i
  %i.k = icmp ult i64 %1, %2
  %i.l = or i1 %i.k, %i.j
  br i1 %i.l, label %bb.c, label %bb.e, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79   ; 2 uses
  %i.o = icmp ugt ptr %i.b, %i.n
  %i.p = icmp eq i64 %1, 0
  %or.cond = or i1 %i.p, %i.o
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = sub i64 0, %1
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 %i.q
  %i.s = tail call fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.r, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.n) ; 0 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.t = sub i64 0, %1
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %i.u, i64 64, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  store ptr %i.b, ptr %3, align 8, !tbaa !133
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 4)
  %i.j = sub i64 0, %.sroa.speculated.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121
  store ptr %i.n, ptr %i.a, align 8, !tbaa !133
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.o, label %bb.c, label %.thread179, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %.sroa.speculated.i125 = tail call i64 @llvm.smin.i64(i64 %i.t, i64 4)
  %i.u = sub i64 0, %.sroa.speculated.i125
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.v, ptr %i.l, align 8, !tbaa !132
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.p, %bb.c ], [ %i.d, %bb.a ]  ; 2 uses
  %i.w = load i8, ptr %.0, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.0142 = phi i32 [ %i.x, %bb.d ], [ %.0142.be, %.backedge ]
  %.1 = phi ptr [ %.0, %bb.d ], [ %.1.be, %.backedge ] ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !120 ; 4 uses
  %.not115 = icmp eq ptr %i.ac, null
  br i1 %.not115, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !169
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.af
  %i.al = call { ptr, i64 } @_ZN13duckdb_snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef nonnull %.1, ptr noundef %i.ah, i64 noundef %i.ak, ptr noundef nonnull %i.ac, i64 noundef %i.ag) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 3 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %i.an
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !133
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !132
  %.not116 = icmp ult ptr %i.am, %i.ap
  br i1 %.not116, label %bb.i, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  store ptr %i.am, ptr %i.c, align 8, !tbaa !46
  %i.aq = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.aq, label %bb.h, label %.thread179, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.av, i64 4)
  %i.aw = sub i64 0, %.sroa.speculated.i126
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !132
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.2 = phi ptr [ %i.ar, %bb.h ], [ %i.am, %bb.f ] ; 2 uses
  %i.ay = load i8, ptr %.2, align 1, !tbaa !7
  %i.az = zext i8 %i.ay to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  %.2144.ph = phi i32 [ %i.az, %bb.i ], [ %.0142, %bb.e ] ; 2 uses
  %.5.ph = phi ptr [ %.2, %bb.i ], [ %.1, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.5.ph, i64 1 ; 9 uses
  %i.bb = and i32 %.2144.ph, 255                  ; 5 uses
  %i.bc = and i32 %.2144.ph, 3                    ; 3 uses
  switch i32 %i.bc, label %bb.v [
    i32 0, label %bb.k
    i32 3, label %bb.u
  ], !prof !134

bb.k:                                             ; preds = %bb.j
  %i.bd = lshr exact i32 %i.bb, 2
  %i.be = add nuw nsw i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64              ; 4 uses
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.ba to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !133 ; 4 uses
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp samesign ult i32 %i.bb, 64
  %i.br = icmp ugt i64 %i.bj, 20
  %or.cond.i = and i1 %i.bq, %i.br
  %i.bs = icmp sgt i32 %i.bp, 15
  %or.cond3.i = select i1 %or.cond.i, i1 %i.bs, i1 false
  br i1 %or.cond3.i, label %bb.l, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !133
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bw = zext i8 %i.bv to i32
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.t, %bb.ad, %bb.aa
  %.0142.be = phi i32 [ %i.gb, %bb.ad ], [ %i.dy, %bb.t ], [ %i.fo, %bb.aa ], [ %i.bw, %bb.l ]
  %.1.be = phi ptr [ %.13, %bb.ad ], [ %.8, %bb.t ], [ %i.fn, %bb.aa ], [ %i.bu, %bb.l ]
  br label %bb.e, !llvm.loop !171

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.k
  %i.bx = icmp samesign ugt i32 %i.bb, 236
  br i1 %i.bx, label %bb.m, label %bb.n, !prof !22

bb.m:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %i.by = add nsw i64 %i.bf, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ba, align 1
  %i.bz = shl nsw i64 %i.by, 3
  %i.ca = and i64 %i.bz, 4294967288
  %i.cb = shl nuw i64 4294967295, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = xor i32 %i.cc, -1
  %i.ce = and i32 %.0.copyload.i, %i.cd
  %i.cf = add i32 %i.ce, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.by ; 2 uses
  %.pre199 = ptrtoint ptr %i.ch to i64
  %.pre200 = sub i64 %i.bh, %.pre199
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %.pre-phi201 = phi i64 [ %.pre200, %bb.m ], [ %i.bj, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.099 = phi i64 [ %i.cg, %bb.m ], [ %i.bf, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.ch, %bb.m ], [ %i.ba, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.ci = icmp ult i64 %.pre-phi201, %.099
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n, %bb.p
  %.7191 = phi ptr [ %i.db, %bb.p ], [ %.6, %bb.n ] ; 2 uses
  %.1100190 = phi i64 [ %i.de, %bb.p ], [ %.099, %bb.n ]
  %.0101189 = phi i64 [ %i.dc, %bb.p ], [ %.pre-phi201, %bb.n ] ; 5 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !133 ; 4 uses
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.not.i = icmp ugt i64 %.0101189, %i.cn
  br i1 %.not.i, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread: ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %.7191, i64 %.0101189, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.0101189
  store ptr %i.co, ptr %i.a, align 8, !tbaa !133
  br label %bb.o

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit: ; preds = %.lr.ph
  store ptr %i.cj, ptr %i.m, align 8, !tbaa !121
  %i.cp = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7191, i64 noundef %.0101189)
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !121
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !133
  br i1 %i.cp, label %bb.o, label %.thread179

bb.o:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cs = load i32, ptr %i.ab, align 8, !tbaa !52
  %i.ct = zext i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !53
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i64 noundef %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.cx = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !53
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef ptr %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull %i.b) ; 3 uses
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !8   ; 6 uses
  %i.dd = trunc i64 %i.dc to i32
  store i32 %i.dd, ptr %i.ab, align 8, !tbaa !52
  %.not119 = icmp eq i64 %i.dc, 0
  br i1 %.not119, label %.thread164, label %bb.p

.thread164:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.thread179

bb.p:                                             ; preds = %bb.o
  %i.de = sub i64 %.1100190, %.0101189            ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc ; 2 uses
  store ptr %i.df, ptr %i.e, align 8, !tbaa !50
  %.sroa.speculated.i127 = call i64 @llvm.smin.i64(i64 %i.dc, i64 4)
  %i.dg = sub i64 0, %.sroa.speculated.i127
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  store ptr %i.dh, ptr %i.l, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.di = icmp ult i64 %i.dc, %i.de
  br i1 %i.di, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !172

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !133 ; 2 uses
  %.pre196 = load ptr, ptr %i.aa, align 8, !tbaa !170
  %.pre202 = ptrtoint ptr %.pre196 to i64
  %.pre204 = ptrtoint ptr %.pre to i64
  %.pre206 = sub i64 %.pre202, %.pre204
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %.pre-phi207 = phi i64 [ %.pre206, %._crit_edge.loopexit ], [ %i.bo, %bb.n ]
  %i.dj = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bk, %bb.n ] ; 3 uses
  %.1100.lcssa = phi i64 [ %i.de, %._crit_edge.loopexit ], [ %.099, %bb.n ] ; 5 uses
  %.7.lcssa = phi ptr [ %i.db, %._crit_edge.loopexit ], [ %.6, %bb.n ] ; 3 uses
  %.not.i128 = icmp ugt i64 %.1100.lcssa, %.pre-phi207
  br i1 %.not.i128, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131.thread

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131.thread: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %.7.lcssa, i64 %.1100.lcssa, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.1100.lcssa
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !133
  br label %bb.q

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131: ; preds = %._crit_edge
  store ptr %i.dj, ptr %i.m, align 8, !tbaa !121
  %i.dl = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7.lcssa, i64 noundef %.1100.lcssa)
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !121
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !133
  br i1 %i.dl, label %bb.q, label %.thread179

bb.q:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131.thread, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131
  %i.dn = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.1100.lcssa ; 3 uses
  %i.do = load ptr, ptr %i.l, align 8, !tbaa !132
  %.not118 = icmp ult ptr %i.dn, %i.do
  br i1 %.not118, label %bb.t, label %bb.r, !prof !19

bb.r:                                             ; preds = %bb.q
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !46
  %i.dp = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.dp, label %bb.s, label %.thread179, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  %.sroa.speculated.i132 = call i64 @llvm.smin.i64(i64 %i.du, i64 4)
  %i.dv = sub i64 0, %.sroa.speculated.i132
  %i.dw = getelementptr inbounds i8, ptr %i.dr, i64 %i.dv
  store ptr %i.dw, ptr %i.l, align 8, !tbaa !132
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.8 = phi ptr [ %i.dq, %bb.s ], [ %i.dn, %bb.q ] ; 2 uses
  %i.dx = load i8, ptr %.8, align 1, !tbaa !7
  %i.dy = zext i8 %i.dx to i32
  br label %.backedge

bb.u:                                             ; preds = %bb.j
  %.0.copyload.i133 = load i32, ptr %i.ba, align 1
  %i.dz = zext i32 %.0.copyload.i133 to i64
  %i.ea = lshr i32 %i.bb, 2
  %i.eb = add nuw nsw i32 %i.ea, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.dz, i64 noundef %i.ec, ptr noundef nonnull %i.a)
  br i1 %i.ed, label %bb.ab, label %.thread179

bb.v:                                             ; preds = %bb.j
  %i.ee = zext nneg i32 %i.bb to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr @_ZN13duckdb_snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !20 ; 2 uses
  %i.eh = sext i16 %i.eg to i64
  %.0.copyload.i134 = load i32, ptr %i.ba, align 1 ; 2 uses
  %i.ei = shl nuw nsw i32 %i.bc, 3                ; 2 uses
  %i.ej = shl nsw i32 -1, %i.ei
  %i.ek = xor i32 %i.ej, -1
  %i.el = and i32 %.0.copyload.i134, %i.ek
  %i.em = and i16 %i.eg, 255
  %i.en = zext nneg i16 %i.em to i64              ; 5 uses
  %i.eo = sub nsw i64 %i.en, %i.eh
  %.tr = trunc nsw i64 %i.eo to i32
  %.narrow = add nsw i32 %i.el, %.tr              ; 2 uses
  %i.ep = zext i32 %.narrow to i64                ; 5 uses
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !133 ; 9 uses
  %i.er = load ptr, ptr %i.z, align 8, !tbaa !120
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp ult i64 %i.eu, %i.ep               ; 2 uses
  %i.ew = load ptr, ptr %i.y, align 8
  %.not.i135 = icmp uge ptr %i.eq, %i.ew
  %or.cond.not.i = select i1 %i.ev, i1 true, i1 %.not.i135, !prof !165
  %i.ex = icmp samesign ult i64 %i.ep, %i.en
  %i.ey = or i1 %i.ex, %or.cond.not.i
  br i1 %i.ey, label %bb.w, label %bb.z, !prof !22

bb.w:                                             ; preds = %bb.v
  %i.ez = icmp eq i32 %.narrow, 0
  br i1 %i.ez, label %.thread179, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en ; 3 uses
  %i.fb = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.fc = icmp ugt ptr %i.fa, %i.fb
  %i.fd = select i1 %i.ev, i1 true, i1 %i.fc, !prof !22
  br i1 %i.fd, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, label %bb.y, !prof !22

bb.y:                                             ; preds = %bb.x
  %i.fe = sub nsw i64 0, %i.ep
  %i.ff = getelementptr inbounds i8, ptr %i.eq, i64 %i.fe
  %i.fg = call fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.ff, ptr noundef %i.eq, ptr noundef %i.fa, ptr noundef %i.fb) ; 0 uses
  br label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169

bb.z:                                             ; preds = %bb.v
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en
  %i.fi = sub nsw i64 0, %i.ep
  %i.fj = getelementptr inbounds i8, ptr %i.eq, i64 %i.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.eq, ptr noundef nonnull align 1 dereferenceable(64) %i.fj, i64 64, i1 false)
  br label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169: ; preds = %bb.z, %bb.y
  %.sink.i.ph = phi ptr [ %i.fa, %bb.y ], [ %i.fh, %bb.z ]
  store ptr %.sink.i.ph, ptr %i.a, align 8, !tbaa !133
  br label %bb.aa

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit: ; preds = %bb.x
  store ptr %i.eq, ptr %i.m, align 8, !tbaa !121
  %i.fk = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ep, i64 noundef %i.en)
  %i.fl = load ptr, ptr %i.m, align 8, !tbaa !121
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !133
  br i1 %i.fk, label %bb.aa, label %.thread179

bb.aa:                                            ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169
  %i.fm = zext nneg i32 %i.bc to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.fm ; 3 uses
  %i.fo = lshr i32 %.0.copyload.i134, %i.ei
  %i.fp = load ptr, ptr %i.l, align 8, !tbaa !132
  %.not183 = icmp ult ptr %i.fn, %i.fp
  br i1 %.not183, label %.backedge, label %.thread, !prof !138

bb.ab:                                            ; preds = %bb.u
  %i.fq = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 3 uses
  %.pre198 = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.fr = icmp ult ptr %i.fq, %.pre198
  br i1 %i.fr, label %bb.ad, label %.thread, !prof !139

.thread:                                          ; preds = %bb.aa, %bb.ab
  %.12228 = phi ptr [ %i.fq, %bb.ab ], [ %i.fn, %bb.aa ]
  store ptr %.12228, ptr %i.c, align 8, !tbaa !46
  %i.fs = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.fs, label %bb.ac, label %.thread179, !prof !19

bb.ac:                                            ; preds = %.thread
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.fu = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.sroa.speculated.i137 = call i64 @llvm.smin.i64(i64 %i.fx, i64 4)
  %i.fy = sub i64 0, %.sroa.speculated.i137
  %i.fz = getelementptr inbounds i8, ptr %i.fu, i64 %i.fy
  store ptr %i.fz, ptr %i.l, align 8, !tbaa !132
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.13 = phi ptr [ %i.ft, %bb.ac ], [ %i.fq, %bb.ab ] ; 2 uses
  %i.ga = load i8, ptr %.13, align 1, !tbaa !7
  %i.gb = zext i8 %i.ga to i32
  br label %.backedge

.thread179:                                       ; preds = %bb.u, %bb.r, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131, %bb.w, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %.thread, %bb.g, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %.thread164, %bb.b
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !133
  store ptr %i.gc, ptr %i.m, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !133    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %1                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp uge ptr %i.a, %i.i
  %or.cond.not = select i1 %i.g, i1 true, i1 %.not, !prof !165
  %i.j = icmp ult i64 %1, %2
  %i.k = or i1 %i.j, %or.cond.not
  br i1 %i.k, label %bb.b, label %bb.f, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %i.q = select i1 %i.g, i1 true, i1 %i.p, !prof !22
  br i1 %i.q, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8, !tbaa !121
  %i.s = tail call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !121
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.u = sub i64 0, %1
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u
  %i.w = tail call fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.v, ptr noundef %i.a, ptr noundef %i.m, ptr noundef %i.o) ; 0 uses
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.y = sub i64 0, %1
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %i.z, i64 64, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi ptr [ %i.x, %bb.f ], [ %i.m, %bb.e ], [ %i.t, %bb.d ]
  %.0.ph = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ %i.s, %bb.d ]
  store ptr %.sink, ptr %3, align 8, !tbaa !133
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not = icmp ugt i64 %2, %i.g
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.035 = phi i64 [ %i.g, %.lr.ph ], [ %.sroa.speculated20, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.01434 = phi i64 [ %2, %.lr.ph ], [ %i.x, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ]
  %.01533 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %.01533, i64 %.035, i1 false)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.035 ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !121
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i64, ptr %i.i, align 8, !tbaa !122
  %i.w = add i64 %i.u, %i.v                       ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !122
  %i.x = sub nuw i64 %.01434, %.035               ; 4 uses
  %i.y = add i64 %i.w, %i.x
  %i.z = load i64, ptr %i.j, align 8, !tbaa !111  ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.01533, i64 %.035 ; 2 uses
  %i.ac = sub i64 %i.z, %i.w                      ; 2 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 65536) ; 4 uses
  %i.ad = trunc nuw nsw i64 %.sroa.speculated20 to i32
  %i.ae = tail call noundef ptr @_ZN13duckdb_snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ad) ; 5 uses
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !120
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.speculated20 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !170
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 63)
  %i.ag = sub nsw i64 0, %.sroa.speculated
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !169
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !173 ; 4 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !174
  %.not.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !133
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !173
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !128 ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.f, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #30
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store ptr %i.ae, ptr %i.ax, align 8, !tbaa !133
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.g, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #26
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !128
  store ptr %i.az, ptr %i.m, align 8, !tbaa !173
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !174
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %.not38 = icmp ugt i64 %i.x, %.sroa.speculated20
  br i1 %.not38, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !175

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bb = phi ptr [ %i.d, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.015.lcssa = phi ptr [ %1, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  %.014.lcssa = phi i64 [ %2, %bb.a ], [ %i.x, %._crit_edge.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %.015.lcssa, i64 %.014.lcssa, i1 false)
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.014.lcssa
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !121
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %i.be = phi i1 [ true, %._crit_edge ], [ false, %bb.b ]
  ret i1 %i.be
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN13duckdb_snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = icmp slt i32 %1, 0
  %i.c = select i1 %i.b, i64 -1, i64 %i.a
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #25 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.g, align 8, !tbaa !133
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.a, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %i.f, align 8, !tbaa !124
  br label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !123  ; 5 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #30
  unreachable

_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #25 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %i.d, ptr %i.w, align 8, !tbaa !133
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.a, ptr %.sroa.6.0..sroa_idx3, align 8, !tbaa !8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !177, !alias.scope !178
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !182

_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #26
  br label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !123
  store ptr %i.z, ptr %i.f, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !176
  br label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret ptr %i.d
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = add i64 %i.c, %i.h
  %i.k = sub i64 %i.j, %i.i                       ; 3 uses
  %i.l = add i64 %1, -1
  %.not = icmp ult i64 %i.l, %i.k
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !111
  %i.o = sub i64 %i.n, %i.k
  %i.p = icmp ult i64 %i.o, %2
  br i1 %i.p, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1832 = icmp eq i64 %2, 0
  br i1 %.not1832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = sub i64 %i.k, %1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.e ]
  %.034 = phi i64 [ %i.q, %.lr.ph ], [ %i.af, %bb.e ] ; 3 uses
  %.02133 = phi ptr [ %i.e, %.lr.ph ], [ %storemerge.i25, %bb.e ] ; 4 uses
  %i.t = add i64 %.in, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.u = lshr i64 %.034, 16
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !133
  %i.y = and i64 %.034, 65535
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7    ; 2 uses
  store i8 %i.aa, ptr %i.a, align 1, !tbaa !7
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !170
  %.not.i = icmp eq ptr %i.ab, %.02133
  br i1 %.not.i, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread: ; preds = %bb.d
  store i8 %i.aa, ptr %.02133, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.02133, i64 1
  br label %bb.e

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit: ; preds = %bb.d
  store ptr %.02133, ptr %i.d, align 8, !tbaa !121
  %i.ad = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !121
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.f

bb.e:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread
  %storemerge.i25 = phi ptr [ %i.ac, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread ], [ %i.ae, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit ] ; 2 uses
  %i.af = add i64 %.034, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not18 = icmp eq i64 %i.t, 0
  br i1 %.not18, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.021.lcssa = phi ptr [ %i.e, %bb.c ], [ %storemerge.i25, %bb.e ]
  store ptr %.021.lcssa, ptr %i.d, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.thread, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %.thread ], [ true, %._crit_edge ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy19SnappySinkAllocator7DeleterEPvPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nofree nounwind }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind memory(none) }
attributes #30 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !9, i64 8}
!11 = !{!"_ZTSN13duckdb_snappy8internal13WorkingMemoryE", !12, i64 0, !9, i64 8, !14, i64 16, !12, i64 24, !12, i64 32}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 short", !13, i64 0}
!15 = !{!11, !12, i64 0}
!16 = !{!11, !14, i64 16}
!17 = !{!11, !12, i64 24}
!18 = !{!11, !12, i64 32}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !5, i64 0}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!"branch_weights", i32 1, i32 127}
!24 = !{!"branch_weights", i32 127, i32 255873}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{i64 188013, i64 188030, i64 188060}
!28 = !{!"branch_weights", i32 127, i32 1}
!29 = !{i64 189070, i64 189087, i64 189117}
!30 = distinct !{!30, !26}
!31 = !{!"branch_weights", i32 1, i32 1999}
!32 = !{!"branch_weights", i32 1, i32 3}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!"branch_weights", i32 0, i32 1}
!36 = distinct !{!36, !26, !37}
!37 = !{!"llvm.loop.estimated_trip_count", i32 0}
!38 = distinct !{!38, !26}
!39 = !{!"branch_weights", i32 127, i32 16129}
!40 = distinct !{!40, !26}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !34}
!44 = distinct !{!44, !26, !37}
!45 = !{!13, !13, i64 0}
!46 = !{!47, !12, i64 8}
!47 = !{!"_ZTSN13duckdb_snappy18SnappyDecompressorE", !48, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !4, i64 32, !49, i64 36, !5, i64 37}
!48 = !{!"p1 _ZTSN13duckdb_snappy6SourceE", !13, i64 0}
!49 = !{!"bool", !5, i64 0}
!50 = !{!47, !12, i64 16}
!51 = !{!47, !48, i64 0}
!52 = !{!47, !4, i64 32}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !6, i64 0}
!55 = !{!47, !49, i64 36}
!56 = distinct !{!56, !26}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !26}
!59 = !{!60, !12, i64 8}
!60 = !{!"_ZTSN13duckdb_snappy15ByteArraySourceE", !61, i64 0, !12, i64 8, !9, i64 16}
!61 = !{!"_ZTSN13duckdb_snappy6SourceE"}
!62 = !{!60, !9, i64 16}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSN13duckdb_snappy17SnappyIOVecWriterE", !65, i64 0, !65, i64 8, !12, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!65 = !{!"p1 _ZTS5iovec", !13, i64 0}
!66 = !{!64, !65, i64 8}
!67 = !{!68, !13, i64 0}
!68 = !{!"_ZTS5iovec", !13, i64 0, !9, i64 8}
!69 = !{!68, !9, i64 8}
!70 = !{!64, !12, i64 16}
!71 = !{!64, !9, i64 24}
!72 = !{!64, !9, i64 32}
!73 = !{!64, !9, i64 40}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!77, !12, i64 0}
!77 = !{!"_ZTSN13duckdb_snappy17SnappyArrayWriterE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!78 = !{!77, !12, i64 8}
!79 = !{!77, !12, i64 16}
!80 = !{!77, !12, i64 24}
!81 = !{!82, !9, i64 8}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !83, i64 0, !9, i64 8, !5, i64 16}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!84 = !{!82, !12, i64 0}
!85 = !{!86, !9, i64 0}
!86 = !{!"_ZTSN13duckdb_snappy28SnappyDecompressionValidatorE", !9, i64 0, !9, i64 8}
!87 = !{!86, !9, i64 8}
!88 = !{!89, !12, i64 8}
!89 = !{!"_ZTSN13duckdb_snappy22UncheckedByteArraySinkE", !90, i64 0, !12, i64 8}
!90 = !{!"_ZTSN13duckdb_snappy4SinkE"}
!91 = !{!92, !65, i64 8}
!92 = !{!"_ZTSN13duckdb_snappy17SnappyIOVecReaderE", !61, i64 0, !65, i64 8, !12, i64 16, !9, i64 24, !9, i64 32}
!93 = !{!92, !12, i64 16}
!94 = !{!92, !9, i64 24}
!95 = !{!92, !9, i64 32}
!96 = distinct !{!96, !26}
!97 = distinct !{!97, !26, !98, !99}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = distinct !{!100, !26, !99, !98}
!101 = distinct !{!101, !26, !98, !99}
!102 = distinct !{!102, !26, !99, !98}
!103 = !{!104, !105, i64 0}
!104 = !{!"_ZTSN13duckdb_snappy19SnappySinkAllocatorE", !105, i64 0, !106, i64 8}
!105 = !{!"p1 _ZTSN13duckdb_snappy4SinkE", !13, i64 0}
!106 = !{!"_ZTSSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE", !107, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE12_Vector_implE", !109, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!110 = !{!"p1 _ZTSN13duckdb_snappy19SnappySinkAllocator9DatablockE", !13, i64 0}
!111 = !{!112, !9, i64 56}
!112 = !{!"_ZTSN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEEE", !104, i64 0, !113, i64 32, !9, i64 56, !9, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96}
!113 = !{!"_ZTSSt6vectorIPcSaIS0_EE", !114, i64 0}
!114 = !{!"_ZTSSt12_Vector_baseIPcSaIS0_EE", !115, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIPcSaIS0_EE12_Vector_implE", !116, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIPcSaIS0_EE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!117 = !{!"p2 omnipotent char", !118, i64 0}
!118 = !{!"any p2 pointer", !13, i64 0}
!119 = !{!110, !110, i64 0}
!120 = !{!112, !12, i64 72}
!121 = !{!112, !12, i64 80}
!122 = !{!112, !9, i64 64}
!123 = !{!109, !110, i64 0}
!124 = !{!109, !110, i64 8}
!125 = !{!126, !12, i64 0}
!126 = !{!"_ZTSN13duckdb_snappy19SnappySinkAllocator9DatablockE", !12, i64 0, !9, i64 8}
!127 = distinct !{null}
!128 = !{!116, !117, i64 0}
!129 = distinct !{!129, !26, !130}
!130 = !{!"llvm.loop.peeled.count", i32 1}
!131 = distinct !{!131, !26}
!132 = !{!47, !12, i64 24}
!133 = !{!12, !12, i64 0}
!134 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!135 = distinct !{!135, !26}
!136 = distinct !{!136, !26}
!137 = distinct !{!137, !26}
!138 = !{!"branch_weights", i32 2146410443, i32 1073205}
!139 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!140 = !{i64 53272, i64 53295}
!141 = !{i64 54474}
!142 = !{!"branch_weights", i32 1, i32 1048575}
!143 = distinct !{!143, !26}
!144 = distinct !{!144, !26}
!145 = distinct !{!145, !26, !34, !98, !99}
!146 = !{!"branch_weights", i32 4, i32 12}
!147 = distinct !{!147, !26, !34, !98, !99}
!148 = distinct !{!148, !26}
!149 = distinct !{!149, !26, !34, !98}
!150 = distinct !{!150, !26, !34, !98, !99}
!151 = distinct !{!151, !26, !34, !98}
!152 = distinct !{!152, !26, !34, !98, !99}
!153 = distinct !{!153, !26, !34, !98, !99}
!154 = distinct !{!154, !26, !34, !98}
!155 = distinct !{!155, !26}
!156 = distinct !{!156, !26, !34, !98, !99}
!157 = distinct !{!157, !26, !34, !98, !99}
!158 = distinct !{!158, !26, !34, !98}
!159 = distinct !{!159, !26, !34, !98, !99}
!160 = distinct !{!160, !26, !34, !98}
!161 = distinct !{!161, !26, !34, !98, !99}
!162 = distinct !{!162, !26, !34, !98, !99}
!163 = distinct !{!163, !26, !34, !98}
!164 = distinct !{!164, !26}
!165 = !{!"branch_weights", i32 4001, i32 4000000}
!166 = distinct !{!166, !26}
!167 = distinct !{!167, !26}
!168 = distinct !{!168, !26}
!169 = !{!112, !12, i64 96}
!170 = !{!112, !12, i64 88}
!171 = distinct !{!171, !26}
!172 = distinct !{!172, !26}
!173 = !{!116, !117, i64 8}
!174 = !{!116, !117, i64 16}
!175 = distinct !{!175, !26}
!176 = !{!109, !110, i64 16}
!177 = !{i64 0, i64 8, !133, i64 8, i64 8, !8}
!178 = !{!179, !181}
!179 = distinct !{!179, !180, !"_ZSt19__relocate_object_aIN13duckdb_snappy19SnappySinkAllocator9DatablockES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!180 = distinct !{!180, !"_ZSt19__relocate_object_aIN13duckdb_snappy19SnappySinkAllocator9DatablockES2_SaIS2_EEvPT_PT0_RT1_"}
!181 = distinct !{!181, !180, !"_ZSt19__relocate_object_aIN13duckdb_snappy19SnappySinkAllocator9DatablockES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!182 = distinct !{!182, !26}
end_hunk_0
