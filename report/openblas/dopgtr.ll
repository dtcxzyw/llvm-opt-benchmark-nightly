Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dopgtr?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dopgtr_:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep246 = getelementptr [8 x i8], ptr %invariant.gep245, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %gep246, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %gep246, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %gep246, i64 96
  %wide.load = load <4 x double>, ptr %gep246, align 8, !tbaa !9
  %wide.load195 = load <4 x double>, ptr %i.am, align 8, !tbaa !9
  %wide.load196 = load <4 x double>, ptr %i.an, align 8, !tbaa !9
  %wide.load197 = load <4 x double>, ptr %i.ao, align 8, !tbaa !9
  %i.ap = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 40
  %i.as = getelementptr i8, ptr %i.ap, i64 72
  %i.at = getelementptr i8, ptr %i.ap, i64 104
  store <4 x double> %wide.load, ptr %i.aq, align 8, !tbaa !9
  store <4 x double> %wide.load195, ptr %i.ar, align 8, !tbaa !9
  store <4 x double> %wide.load196, ptr %i.as, align 8, !tbaa !9
  store <4 x double> %wide.load197, ptr %i.at, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvar, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec199 = and i64 %indvar, -4                 ; 4 uses
  %i.av = or disjoint i64 %n.vec199, 1
  %i.aw = add i64 %n.vec199, %i.ae                ; 2 uses
  %invariant.gep247 = getelementptr [8 x i8], ptr %i.g, i64 %i.ae
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index200 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next202, %vec.epilog.vector.body ] ; 3 uses
  %gep248 = getelementptr [8 x i8], ptr %invariant.gep247, i64 %index200
  %wide.load201 = load <4 x double>, ptr %gep248, align 8, !tbaa !9
  %i.ax = getelementptr [8 x i8], ptr %invariant.gep, i64 %index200
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  store <4 x double> %wide.load201, ptr %i.ay, align 8, !tbaa !9
  %index.next202 = add nuw i64 %index200, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next202, %n.vec199
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n203 = icmp eq i64 %indvar, %n.vec199
  br i1 %cmp.n203, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv153.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %i.ae, %iter.check ], [ %i.ae, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 2 uses
  %i.ba = sub i64 %indvars.iv158, %indvars.iv153.ph
  %i.bb = sub i64 %indvar, %indvars.iv153.ph
  %xtraiter = and i64 %i.ba, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv153.prol = phi i64 [ %indvars.iv.next154.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv153.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv.prol
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !9
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153.prol
  store double %i.bd, ptr %gep.prol, align 8, !tbaa !9
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %indvars.iv.next154.prol = add nuw nsw i64 %indvars.iv153.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !17

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.lcssa241.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv153.unr = phi i64 [ %indvars.iv153.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next154.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.be = icmp ult i64 %i.bb, 7
  br i1 %i.be, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv153 = phi i64 [ %indvars.iv.next154.7, %vec.epilog.scalar.ph ], [ %indvars.iv153.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !9
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  store double %i.bg, ptr %gep, align 8, !tbaa !9
  %i.bh = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !9
  %i.bj = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.1 = getelementptr i8, ptr %i.bj, i64 8
  store double %i.bi, ptr %gep.1, align 8, !tbaa !9
  %i.bk = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !9
  %i.bn = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.2 = getelementptr i8, ptr %i.bn, i64 16
  store double %i.bm, ptr %gep.2, align 8, !tbaa !9
  %i.bo = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !9
  %i.br = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.3 = getelementptr i8, ptr %i.br, i64 24
  store double %i.bq, ptr %gep.3, align 8, !tbaa !9
  %i.bs = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %i.bs, i64 32
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !9
  %i.bv = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.4 = getelementptr i8, ptr %i.bv, i64 32
  store double %i.bu, ptr %gep.4, align 8, !tbaa !9
  %i.bw = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bx = getelementptr i8, ptr %i.bw, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !9
  %i.bz = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.5 = getelementptr i8, ptr %i.bz, i64 40
  store double %i.by, ptr %gep.5, align 8, !tbaa !9
  %i.ca = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.cb = getelementptr i8, ptr %i.ca, i64 48
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !9
  %i.cd = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.6 = getelementptr i8, ptr %i.cd, i64 48
  store double %i.cc, ptr %gep.6, align 8, !tbaa !9
  %i.ce = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.cf = getelementptr i8, ptr %i.ce, i64 56
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !9
  %i.ch = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.7 = getelementptr i8, ptr %i.ch, i64 56
  store double %i.cg, ptr %gep.7, align 8, !tbaa !9
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %indvars.iv.next154.7 = add nuw nsw i64 %indvars.iv153, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next154.7, %indvars.iv158
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.aw, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %indvars.iv.next.lcssa241.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.7, %vec.epilog.scalar.ph ]
  %i.ci = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph119, %._crit_edge.loopexit
  %.1.lcssa = phi i32 [ %i.ci, %._crit_edge.loopexit ], [ %.0117, %.lr.ph119 ]
  %i.cj = add nsw i32 %.1.lcssa, 2
  %gep191 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.ad
  store double 0.000000e+00, ptr %gep191, align 8, !tbaa !9
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond162.not, label %.lr.ph125, label %.lr.ph119, !llvm.loop !20

.lr.ph125:                                        ; preds = %._crit_edge
  %i.ck = mul nsw i32 %i.m, %i.h
  %i.cl = add i32 %i.ck, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = add nsw i64 %i.i, %i.cm
  %i.co = shl nsw i64 %i.cn, 3
  %scevgep = getelementptr i8, ptr %4, i64 %i.co
  %i.cp = zext nneg i32 %i.u to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.cq, i1 false), !tbaa !9
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %bb.h, %.lr.ph125
  %i.cr = add i32 %i.h, 1
  %i.cs = mul i32 %i.m, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ct
  store double 1.000000e+00, ptr %i.cu, align 8, !tbaa !9
  store i32 %i.u, ptr %i.c, align 4, !tbaa !8
  store i32 %i.u, ptr %i.d, align 4, !tbaa !8
  store i32 %i.u, ptr %i.e, align 4, !tbaa !8
  call void @dorg2l_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %3, ptr noundef %6, ptr noundef nonnull %i.f) #5
  br label %._crit_edge146.thread

bb.i:                                             ; preds = %bb.g
  store double 1.000000e+00, ptr %4, align 8, !tbaa !9
  br i1 %.not105127, label %._crit_edge146.thread, label %.lr.ph145.preheader

.lr.ph145.preheader:                              ; preds = %bb.i
  %i.cv = add i32 %i.h, 2
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add nsw i64 %i.i, %i.cw
  %i.cy = shl nsw i64 %i.cx, 3
  %scevgep166 = getelementptr i8, ptr %4, i64 %i.cy
  %i.cz = add nsw i32 %i.m, -1
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep166, i8 0, i64 %i.db, i1 false), !tbaa !9
  %i.dc = add nuw i32 %i.m, 1                     ; 2 uses
  %i.dd = sext i32 %i.h to i64                    ; 3 uses
  %i.de = zext nneg i32 %i.m to i64
  %wide.trip.count = zext i32 %i.dc to i64
  %i.df = shl nsw i64 %i.dd, 4
  %i.dg = add i64 %i.df, %i.b
  %i.dh = shl nsw i64 %i.i, 3
  %i.di = add i64 %i.dg, %i.dh
  %i.dj = add i64 %i.di, 32
  %8 = shl nsw i64 %i.dd, 3
  %9 = add nsw i64 %8, 8
  %i.dk = add nsw i32 %i.m, -3
  %i.dl = add nuw i32 %i.m, 1
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %._crit_edge137
  %indvar207 = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvar.next208, %._crit_edge137 ] ; 3 uses
  %indvars.iv184 = phi i64 [ 2, %.lr.ph145.preheader ], [ %indvars.iv.next185, %._crit_edge137 ] ; 3 uses
  %indvars.iv176 = phi i32 [ 3, %.lr.ph145.preheader ], [ %indvars.iv.next177, %._crit_edge137 ] ; 2 uses
  %.2143 = phi i32 [ 3, %.lr.ph145.preheader ], [ %i.fv, %._crit_edge137 ] ; 2 uses
  %i.dm = trunc i64 %indvar207 to i32
  %i.dn = sub i32 %i.dk, %i.dm                    ; 3 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = add nuw nsw i64 %i.do, 1                ; 5 uses
  %i.dq = mul i64 %9, %indvar207
  %i.dr = mul nsw i64 %indvars.iv184, %i.dd       ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.j, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  store double 0.000000e+00, ptr %i.dt, align 8, !tbaa !9
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %.not107132.not = icmp samesign ult i64 %indvars.iv184, %i.de
  br i1 %.not107132.not, label %iter.check226, label %._crit_edge137

iter.check226:                                    ; preds = %.lr.ph145
  %i.du = sext i32 %indvars.iv176 to i64          ; 6 uses
  %i.dv = sext i32 %.2143 to i64                  ; 7 uses
  %invariant.gep192 = getelementptr [8 x i8], ptr %i.j, i64 %i.dr ; 11 uses
  %min.iters.check210 = icmp ult i32 %i.dn, 3
  br i1 %min.iters.check210, label %.lr.ph136.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %iter.check226
  %10 = shl nsw i64 %i.dv, 3
  %i.dw = add i64 %i.dj, %i.dq
  %11 = add i64 %10, %i.a
  %i.dx = sub i64 %11, %i.dw
  %diff.check209 = icmp ugt i64 %i.dx, -128
  br i1 %diff.check209, label %.lr.ph136.preheader, label %vector.main.loop.iter.check211

vector.main.loop.iter.check211:                   ; preds = %vector.memcheck206
  %min.iters.check212 = icmp ult i32 %i.dn, 15
  br i1 %min.iters.check212, label %vec.epilog.ph230, label %vector.ph213

vector.ph213:                                     ; preds = %vector.main.loop.iter.check211
  %i.dy = and i64 %i.dp, 12
  %n.vec214 = and i64 %i.dp, 8589934576           ; 5 uses
  %i.dz = add nsw i64 %n.vec214, %i.du
  %i.ea = add nsw i64 %n.vec214, %i.dv            ; 2 uses
  %invariant.gep249 = getelementptr [8 x i8], ptr %i.g, i64 %i.dv
  %invariant.gep251 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.du
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next221, %vector.body215 ] ; 3 uses
  %gep250 = getelementptr [8 x i8], ptr %invariant.gep249, i64 %index216 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %gep250, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %gep250, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %gep250, i64 96
  %wide.load217 = load <4 x double>, ptr %gep250, align 8, !tbaa !9
  %wide.load218 = load <4 x double>, ptr %i.eb, align 8, !tbaa !9
  %wide.load219 = load <4 x double>, ptr %i.ec, align 8, !tbaa !9
  %wide.load220 = load <4 x double>, ptr %i.ed, align 8, !tbaa !9
  %gep252 = getelementptr [8 x i8], ptr %invariant.gep251, i64 %index216 ; 4 uses
  %i.ee = getelementptr i8, ptr %gep252, i64 32
  %i.ef = getelementptr i8, ptr %gep252, i64 64
  %i.eg = getelementptr i8, ptr %gep252, i64 96
  store <4 x double> %wide.load217, ptr %gep252, align 8, !tbaa !9
  store <4 x double> %wide.load218, ptr %i.ee, align 8, !tbaa !9
  store <4 x double> %wide.load219, ptr %i.ef, align 8, !tbaa !9
  store <4 x double> %wide.load220, ptr %i.eg, align 8, !tbaa !9
  %index.next221 = add nuw i64 %index216, 16      ; 2 uses
  %i.eh = icmp eq i64 %index.next221, %n.vec214
  br i1 %i.eh, label %middle.block222, label %vector.body215, !llvm.loop !21

middle.block222:                                  ; preds = %vector.body215
  %cmp.n223 = icmp eq i64 %i.dp, %n.vec214
  br i1 %cmp.n223, label %._crit_edge137.loopexit, label %vec.epilog.iter.check228

vec.epilog.iter.check228:                         ; preds = %middle.block222
  %min.epilog.iters.check229 = icmp eq i64 %i.dy, 0
  br i1 %min.epilog.iters.check229, label %.lr.ph136.preheader, label %vec.epilog.ph230, !prof !15

vec.epilog.ph230:                                 ; preds = %vector.main.loop.iter.check211, %vec.epilog.iter.check228
  %vec.epilog.resume.val224 = phi i64 [ %n.vec214, %vec.epilog.iter.check228 ], [ 0, %vector.main.loop.iter.check211 ]
  %n.vec231 = and i64 %i.dp, 8589934588           ; 4 uses
  %i.ei = add nsw i64 %n.vec231, %i.du
  %i.ej = add nsw i64 %n.vec231, %i.dv            ; 2 uses
  %invariant.gep253 = getelementptr [8 x i8], ptr %i.g, i64 %i.dv
  %invariant.gep255 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.du
  br label %vec.epilog.vector.body232

vec.epilog.vector.body232:                        ; preds = %vec.epilog.vector.body232, %vec.epilog.ph230
  %index233 = phi i64 [ %vec.epilog.resume.val224, %vec.epilog.ph230 ], [ %index.next235, %vec.epilog.vector.body232 ] ; 3 uses
  %gep254 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %index233
  %wide.load234 = load <4 x double>, ptr %gep254, align 8, !tbaa !9
  %gep256 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %index233
  store <4 x double> %wide.load234, ptr %gep256, align 8, !tbaa !9
  %index.next235 = add nuw i64 %index233, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next235, %n.vec231
  br i1 %i.ek, label %vec.epilog.middle.block236, label %vec.epilog.vector.body232, !llvm.loop !22

vec.epilog.middle.block236:                       ; preds = %vec.epilog.vector.body232
  %cmp.n237 = icmp eq i64 %i.dp, %n.vec231
  br i1 %cmp.n237, label %._crit_edge137.loopexit, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %vector.memcheck206, %iter.check226, %vec.epilog.iter.check228, %vec.epilog.middle.block236
  %indvars.iv178.ph = phi i64 [ %i.du, %iter.check226 ], [ %i.du, %vector.memcheck206 ], [ %i.dz, %vec.epilog.iter.check228 ], [ %i.ei, %vec.epilog.middle.block236 ] ; 3 uses
  %indvars.iv174.ph = phi i64 [ %i.dv, %iter.check226 ], [ %i.dv, %vector.memcheck206 ], [ %i.ea, %vec.epilog.iter.check228 ], [ %i.ej, %vec.epilog.middle.block236 ] ; 2 uses
  %i.el = trunc i64 %indvars.iv178.ph to i32      ; 2 uses
  %i.em = sub i32 %i.dl, %i.el
  %i.en = sub i32 %i.m, %i.el
  %xtraiter242 = and i32 %i.em, 7                 ; 2 uses
  %lcmp.mod243.not = icmp eq i32 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %.lr.ph136.prol.loopexit, label %.lr.ph136.prol

.lr.ph136.prol:                                   ; preds = %.lr.ph136.preheader, %.lr.ph136.prol
  %indvars.iv178.prol = phi i64 [ %indvars.iv.next179.prol, %.lr.ph136.prol ], [ %indvars.iv178.ph, %.lr.ph136.preheader ] ; 2 uses
  %indvars.iv174.prol = phi i64 [ %indvars.iv.next175.prol, %.lr.ph136.prol ], [ %indvars.iv174.ph, %.lr.ph136.preheader ] ; 2 uses
  %prol.iter244 = phi i32 [ %prol.iter244.next, %.lr.ph136.prol ], [ 0, %.lr.ph136.preheader ]
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv174.prol
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !9
  %gep193.prol = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178.prol
  store double %i.ep, ptr %gep193.prol, align 8, !tbaa !9
  %indvars.iv.next175.prol = add nsw i64 %indvars.iv174.prol, 1 ; 3 uses
  %indvars.iv.next179.prol = add nsw i64 %indvars.iv178.prol, 1 ; 2 uses
  %prol.iter244.next = add i32 %prol.iter244, 1   ; 2 uses
  %prol.iter244.cmp.not = icmp eq i32 %prol.iter244.next, %xtraiter242
  br i1 %prol.iter244.cmp.not, label %.lr.ph136.prol.loopexit, label %.lr.ph136.prol, !llvm.loop !23

.lr.ph136.prol.loopexit:                          ; preds = %.lr.ph136.prol, %.lr.ph136.preheader
  %indvars.iv.next175.lcssa240.unr = phi i64 [ poison, %.lr.ph136.preheader ], [ %indvars.iv.next175.prol, %.lr.ph136.prol ]
  %indvars.iv178.unr = phi i64 [ %indvars.iv178.ph, %.lr.ph136.preheader ], [ %indvars.iv.next179.prol, %.lr.ph136.prol ]
  %indvars.iv174.unr = phi i64 [ %indvars.iv174.ph, %.lr.ph136.preheader ], [ %indvars.iv.next175.prol, %.lr.ph136.prol ]
  %i.eq = icmp ult i32 %i.en, 7
  br i1 %i.eq, label %._crit_edge137.loopexit, label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.prol.loopexit, %.lr.ph136
  %indvars.iv178 = phi i64 [ %indvars.iv.next179.7, %.lr.ph136 ], [ %indvars.iv178.unr, %.lr.ph136.prol.loopexit ] ; 9 uses
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.7, %.lr.ph136 ], [ %indvars.iv174.unr, %.lr.ph136.prol.loopexit ] ; 9 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.es = load double, ptr %i.er, align 8, !tbaa !9
  %gep193 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  store double %i.es, ptr %gep193, align 8, !tbaa !9
  %i.et = getelementptr [8 x i8], ptr %2, i64 %indvars.iv174
  %i.eu = load double, ptr %i.et, align 8, !tbaa !9
  %i.ev = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.1 = getelementptr i8, ptr %i.ev, i64 8
  store double %i.eu, ptr %gep193.1, align 8, !tbaa !9
  %i.ew = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !9
  %i.ez = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.2 = getelementptr i8, ptr %i.ez, i64 16
  store double %i.ey, ptr %gep193.2, align 8, !tbaa !9
  %i.fa = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.fb = getelementptr i8, ptr %i.fa, i64 24
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !9
  %i.fd = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.3 = getelementptr i8, ptr %i.fd, i64 24
  store double %i.fc, ptr %gep193.3, align 8, !tbaa !9
  %i.fe = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.ff = getelementptr i8, ptr %i.fe, i64 32
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !9
  %i.fh = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.4 = getelementptr i8, ptr %i.fh, i64 32
  store double %i.fg, ptr %gep193.4, align 8, !tbaa !9
  %i.fi = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.fj = getelementptr i8, ptr %i.fi, i64 40
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !9
  %i.fl = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.5 = getelementptr i8, ptr %i.fl, i64 40
  store double %i.fk, ptr %gep193.5, align 8, !tbaa !9
  %i.fm = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.fn = getelementptr i8, ptr %i.fm, i64 48
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !9
  %i.fp = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.6 = getelementptr i8, ptr %i.fp, i64 48
  store double %i.fo, ptr %gep193.6, align 8, !tbaa !9
  %i.fq = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.fr = getelementptr i8, ptr %i.fq, i64 56
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !9
  %i.ft = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.7 = getelementptr i8, ptr %i.ft, i64 56
  store double %i.fs, ptr %gep193.7, align 8, !tbaa !9
  %indvars.iv.next175.7 = add nsw i64 %indvars.iv174, 8 ; 2 uses
  %indvars.iv.next179.7 = add nsw i64 %indvars.iv178, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next179.7 to i32
  %exitcond183.not.7 = icmp eq i32 %i.dc, %lftr.wideiv.7
  br i1 %exitcond183.not.7, label %._crit_edge137.loopexit, label %.lr.ph136, !llvm.loop !24

._crit_edge137.loopexit:                          ; preds = %.lr.ph136.prol.loopexit, %.lr.ph136, %vec.epilog.middle.block236, %middle.block222
  %indvars.iv.next175.lcssa = phi i64 [ %i.ej, %vec.epilog.middle.block236 ], [ %i.ea, %middle.block222 ], [ %indvars.iv.next175.lcssa240.unr, %.lr.ph136.prol.loopexit ], [ %indvars.iv.next175.7, %.lr.ph136 ]
  %i.fu = trunc nsw i64 %indvars.iv.next175.lcssa to i32
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit, %.lr.ph145
  %.3.lcssa = phi i32 [ %.2143, %.lr.ph145 ], [ %i.fu, %._crit_edge137.loopexit ]
  %i.fv = add nsw i32 %.3.lcssa, 2
  %indvars.iv.next177 = add nuw i32 %indvars.iv176, 1
  %exitcond187.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count
  %indvar.next208 = add i64 %indvar207, 1
  br i1 %exitcond187.not, label %._crit_edge146, label %.lr.ph145, !llvm.loop !25

._crit_edge146:                                   ; preds = %._crit_edge137
  %i.fw = icmp sgt i32 %i.m, 1
  br i1 %i.fw, label %bb.j, label %._crit_edge146.thread

bb.j:                                             ; preds = %._crit_edge146
  %i.fx = add nsw i32 %i.m, -1                    ; 3 uses
  store i32 %i.fx, ptr %i.c, align 4, !tbaa !8
  store i32 %i.fx, ptr %i.d, align 4, !tbaa !8
  store i32 %i.fx, ptr %i.e, align 4, !tbaa !8
  %i.fy = shl i32 %i.h, 1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr [8 x i8], ptr %i.j, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  call void @dorg2r_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.gb, ptr noundef nonnull %5, ptr noundef %3, ptr noundef %6, ptr noundef nonnull %i.f) #5
  br label %._crit_edge146.thread

._crit_edge146.thread:                            ; preds = %bb.i, %._crit_edge126, %bb.j, %._crit_edge146, %bb.f, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dorg2l_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorg2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12, !13, !14}
!22 = distinct !{!22, !12, !13, !14}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !12, !13}
!25 = distinct !{!25, !12}
end_hunk_0
