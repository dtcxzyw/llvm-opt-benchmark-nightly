Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dopgtr?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dopgtr_:bb.a
  %i.ak = or disjoint i64 %n.vec, 1
  %i.al = add i64 %n.vec, %i.ad                   ; 2 uses
  %invariant.gep246 = getelementptr [8 x i8], ptr %i.g, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep247 = getelementptr [8 x i8], ptr %invariant.gep246, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %gep247, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %gep247, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %gep247, i64 96
  %wide.load = load <4 x double>, ptr %gep247, align 8, !tbaa !20
  %wide.load195 = load <4 x double>, ptr %i.am, align 8, !tbaa !20
  %wide.load196 = load <4 x double>, ptr %i.an, align 8, !tbaa !20
  %wide.load197 = load <4 x double>, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 40
  %i.as = getelementptr i8, ptr %i.ap, i64 72
  %i.at = getelementptr i8, ptr %i.ap, i64 104
  store <4 x double> %wide.load, ptr %i.aq, align 8, !tbaa !20
  store <4 x double> %wide.load195, ptr %i.ar, align 8, !tbaa !20
  store <4 x double> %wide.load196, ptr %i.as, align 8, !tbaa !20
  store <4 x double> %wide.load197, ptr %i.at, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvar, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec198 = and i64 %indvar, -4                 ; 4 uses
  %i.av = or disjoint i64 %n.vec198, 1
  %i.aw = add i64 %n.vec198, %i.ad                ; 2 uses
  %invariant.gep248 = getelementptr [8 x i8], ptr %i.g, i64 %i.ad
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index199 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ] ; 3 uses
  %gep249 = getelementptr [8 x i8], ptr %invariant.gep248, i64 %index199
  %wide.load200 = load <4 x double>, ptr %gep249, align 8, !tbaa !20
  %i.ax = getelementptr [8 x i8], ptr %invariant.gep, i64 %index199
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  store <4 x double> %wide.load200, ptr %i.ay, align 8, !tbaa !20
  %index.next201 = add nuw i64 %index199, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next201, %n.vec198
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n202 = icmp eq i64 %indvar, %n.vec198
  br i1 %cmp.n202, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv153.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %i.ad, %iter.check ], [ %i.ad, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 2 uses
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
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !20
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153.prol
  store double %i.bd, ptr %gep.prol, align 8, !tbaa !20
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %indvars.iv.next154.prol = add nuw nsw i64 %indvars.iv153.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !10

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.lcssa242.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv153.unr = phi i64 [ %indvars.iv153.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next154.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.be = icmp ult i64 %i.bb, 7
  br i1 %i.be, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv153 = phi i64 [ %indvars.iv.next154.7, %vec.epilog.scalar.ph ], [ %indvars.iv153.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !20
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  store double %i.bg, ptr %gep, align 8, !tbaa !20
  %i.bh = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !20
  %i.bj = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.1 = getelementptr i8, ptr %i.bj, i64 8
  store double %i.bi, ptr %gep.1, align 8, !tbaa !20
  %i.bk = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !20
  %i.bn = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.2 = getelementptr i8, ptr %i.bn, i64 16
  store double %i.bm, ptr %gep.2, align 8, !tbaa !20
  %i.bo = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !20
  %i.br = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.3 = getelementptr i8, ptr %i.br, i64 24
  store double %i.bq, ptr %gep.3, align 8, !tbaa !20
  %i.bs = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %i.bs, i64 32
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !20
  %i.bv = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.4 = getelementptr i8, ptr %i.bv, i64 32
  store double %i.bu, ptr %gep.4, align 8, !tbaa !20
  %i.bw = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bx = getelementptr i8, ptr %i.bw, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !20
  %i.bz = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.5 = getelementptr i8, ptr %i.bz, i64 40
  store double %i.by, ptr %gep.5, align 8, !tbaa !20
  %i.ca = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.cb = getelementptr i8, ptr %i.ca, i64 48
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !20
  %i.cd = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.6 = getelementptr i8, ptr %i.cd, i64 48
  store double %i.cc, ptr %gep.6, align 8, !tbaa !20
  %i.ce = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.cf = getelementptr i8, ptr %i.ce, i64 56
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !20
  %i.ch = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv153
  %gep.7 = getelementptr i8, ptr %i.ch, i64 56
  store double %i.cg, ptr %gep.7, align 8, !tbaa !20
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %indvars.iv.next154.7 = add nuw nsw i64 %indvars.iv153, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next154.7, %indvars.iv158
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.aw, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %indvars.iv.next.lcssa242.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.7, %vec.epilog.scalar.ph ]
  %i.ci = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph119, %._crit_edge.loopexit
  %.1.lcssa = phi i32 [ %i.ci, %._crit_edge.loopexit ], [ %.0117, %.lr.ph119 ]
  %i.cj = add nsw i32 %.1.lcssa, 2
  %gep191 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.ac
  store double 0.000000e+00, ptr %gep191, align 8, !tbaa !20
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond162.not, label %.lr.ph125, label %.lr.ph119, !llvm.loop !12

.lr.ph125:                                        ; preds = %._crit_edge
  %i.ck = mul nsw i32 %i.m, %i.h
  %i.cl = add i32 %i.ck, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = add nsw i64 %i.i, %i.cm
  %i.co = shl nsw i64 %i.cn, 3
  %scevgep = getelementptr i8, ptr %4, i64 %i.co
  %i.cp = zext nneg i32 %i.u to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.cq, i1 false), !tbaa !20
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %bb.h, %.lr.ph125
  %i.cr = add i32 %i.h, 1
  %i.cs = mul i32 %i.m, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ct
  store double 1.000000e+00, ptr %i.cu, align 8, !tbaa !20
  store i32 %i.u, ptr %i.c, align 4, !tbaa !18
  store i32 %i.u, ptr %i.d, align 4, !tbaa !18
  store i32 %i.u, ptr %i.e, align 4, !tbaa !18
  call void @dorg2l_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %3, ptr noundef %6, ptr noundef nonnull %i.f) #5
  br label %._crit_edge146.thread

bb.i:                                             ; preds = %bb.g
  store double 1.000000e+00, ptr %4, align 8, !tbaa !20
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep166, i8 0, i64 %i.db, i1 false), !tbaa !20
  %i.dc = add nuw i32 %i.m, 1                     ; 2 uses
  %i.dd = sext i32 %i.h to i64                    ; 3 uses
  %i.de = zext nneg i32 %i.m to i64
  %wide.trip.count = zext i32 %i.dc to i64
  %i.df = shl nsw i64 %i.dd, 3
  %8 = add nsw i64 %i.df, 8
  %i.dg = shl nsw i64 %i.dd, 4
  %i.dh = add i64 %i.dg, %i.b
  %i.di = shl nsw i64 %i.i, 3
  %i.dj = add i64 %i.dh, %i.di
  %i.dk = add i64 %i.dj, 32
  %i.dl = add nsw i32 %i.m, -3
  %i.dm = add nuw i32 %i.m, 1
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %._crit_edge137
  %indvar208 = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvar.next209, %._crit_edge137 ] ; 3 uses
  %indvars.iv184 = phi i64 [ 2, %.lr.ph145.preheader ], [ %indvars.iv.next185, %._crit_edge137 ] ; 3 uses
  %indvars.iv176 = phi i32 [ 3, %.lr.ph145.preheader ], [ %indvars.iv.next177, %._crit_edge137 ] ; 2 uses
  %.2143 = phi i32 [ 3, %.lr.ph145.preheader ], [ %i.fx, %._crit_edge137 ] ; 2 uses
  %i.dn = trunc i64 %indvar208 to i32
  %i.do = sub i32 %i.dl, %i.dn                    ; 3 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 5 uses
  %i.dr = mul nsw i64 %indvars.iv184, %i.dd       ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.j, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  store double 0.000000e+00, ptr %i.dt, align 8, !tbaa !20
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %.not107132.not = icmp samesign ult i64 %indvars.iv184, %i.de
  br i1 %.not107132.not, label %iter.check226, label %._crit_edge137

iter.check226:                                    ; preds = %.lr.ph145
  %i.du = sext i32 %indvars.iv176 to i64          ; 6 uses
  %i.dv = sext i32 %.2143 to i64                  ; 7 uses
  %invariant.gep192 = getelementptr [8 x i8], ptr %i.j, i64 %i.dr ; 11 uses
  %min.iters.check210 = icmp ult i32 %i.do, 3
  br i1 %min.iters.check210, label %.lr.ph136.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %iter.check226
  %i.dw = mul i64 %indvar208, %8
  %i.dx = shl nsw i64 %i.dv, 3
  %9 = add i64 %i.dk, %i.dw
  %i.dy = add i64 %i.dx, %i.a
  %i.dz = sub i64 %i.dy, %9
  %diff.check212 = icmp ugt i64 %i.dz, -128
  br i1 %diff.check212, label %.lr.ph136.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %vector.memcheck211
  %min.iters.check214 = icmp ult i32 %i.do, 15
  br i1 %min.iters.check214, label %vec.epilog.ph230, label %vector.ph215

vector.ph215:                                     ; preds = %vector.main.loop.iter.check213
  %i.ea = and i64 %i.dq, 12
  %n.vec216 = and i64 %i.dq, 8589934576           ; 5 uses
  %i.eb = add nsw i64 %n.vec216, %i.du
  %i.ec = add nsw i64 %n.vec216, %i.dv            ; 2 uses
  %invariant.gep250 = getelementptr [8 x i8], ptr %i.g, i64 %i.dv
  %invariant.gep252 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.du
  br label %vector.body217

vector.body217:                                   ; preds = %vector.ph215, %vector.body217
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body217 ] ; 3 uses
  %gep251 = getelementptr [8 x i8], ptr %invariant.gep250, i64 %index218 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %gep251, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %gep251, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %gep251, i64 96
  %wide.load219 = load <4 x double>, ptr %gep251, align 8, !tbaa !20
  %wide.load220 = load <4 x double>, ptr %i.ed, align 8, !tbaa !20
  %wide.load221 = load <4 x double>, ptr %i.ee, align 8, !tbaa !20
  %wide.load222 = load <4 x double>, ptr %i.ef, align 8, !tbaa !20
  %gep253 = getelementptr [8 x i8], ptr %invariant.gep252, i64 %index218 ; 4 uses
  %i.eg = getelementptr i8, ptr %gep253, i64 32
  %i.eh = getelementptr i8, ptr %gep253, i64 64
  %i.ei = getelementptr i8, ptr %gep253, i64 96
  store <4 x double> %wide.load219, ptr %gep253, align 8, !tbaa !20
  store <4 x double> %wide.load220, ptr %i.eg, align 8, !tbaa !20
  store <4 x double> %wide.load221, ptr %i.eh, align 8, !tbaa !20
  store <4 x double> %wide.load222, ptr %i.ei, align 8, !tbaa !20
  %index.next223 = add nuw i64 %index218, 16      ; 2 uses
  %i.ej = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.ej, label %middle.block224, label %vector.body217, !llvm.loop !13

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.dq, %n.vec216
  br i1 %cmp.n225, label %._crit_edge137.loopexit, label %vec.epilog.iter.check227

vec.epilog.iter.check227:                         ; preds = %middle.block224
  %min.epilog.iters.check229 = icmp eq i64 %i.ea, 0
  br i1 %min.epilog.iters.check229, label %.lr.ph136.preheader, label %vec.epilog.ph230, !prof !24

vec.epilog.ph230:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check227
  %vec.epilog.resume.val231 = phi i64 [ %n.vec216, %vec.epilog.iter.check227 ], [ 0, %vector.main.loop.iter.check213 ]
  %n.vec232 = and i64 %i.dq, 8589934588           ; 4 uses
  %i.ek = add nsw i64 %n.vec232, %i.du
  %i.el = add nsw i64 %n.vec232, %i.dv            ; 2 uses
  %invariant.gep254 = getelementptr [8 x i8], ptr %i.g, i64 %i.dv
  %invariant.gep256 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.du
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph230
  %index234 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph230 ], [ %index.next236, %vec.epilog.vector.body233 ] ; 3 uses
  %gep255 = getelementptr [8 x i8], ptr %invariant.gep254, i64 %index234
  %wide.load235 = load <4 x double>, ptr %gep255, align 8, !tbaa !20
  %gep257 = getelementptr [8 x i8], ptr %invariant.gep256, i64 %index234
  store <4 x double> %wide.load235, ptr %gep257, align 8, !tbaa !20
  %index.next236 = add nuw i64 %index234, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next236, %n.vec232
  br i1 %i.em, label %vec.epilog.middle.block237, label %vec.epilog.vector.body233, !llvm.loop !14

vec.epilog.middle.block237:                       ; preds = %vec.epilog.vector.body233
  %cmp.n238 = icmp eq i64 %i.dq, %n.vec232
  br i1 %cmp.n238, label %._crit_edge137.loopexit, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %iter.check226, %vector.memcheck211, %vec.epilog.iter.check227, %vec.epilog.middle.block237
  %indvars.iv178.ph = phi i64 [ %i.du, %iter.check226 ], [ %i.du, %vector.memcheck211 ], [ %i.eb, %vec.epilog.iter.check227 ], [ %i.ek, %vec.epilog.middle.block237 ] ; 3 uses
  %indvars.iv174.ph = phi i64 [ %i.dv, %iter.check226 ], [ %i.dv, %vector.memcheck211 ], [ %i.ec, %vec.epilog.iter.check227 ], [ %i.el, %vec.epilog.middle.block237 ] ; 2 uses
  %i.en = trunc i64 %indvars.iv178.ph to i32      ; 2 uses
  %i.eo = sub i32 %i.dm, %i.en
  %i.ep = sub i32 %i.m, %i.en
  %xtraiter243 = and i32 %i.eo, 7                 ; 2 uses
  %lcmp.mod244.not = icmp eq i32 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph136.prol.loopexit, label %.lr.ph136.prol

.lr.ph136.prol:                                   ; preds = %.lr.ph136.preheader, %.lr.ph136.prol
  %indvars.iv178.prol = phi i64 [ %indvars.iv.next179.prol, %.lr.ph136.prol ], [ %indvars.iv178.ph, %.lr.ph136.preheader ] ; 2 uses
  %indvars.iv174.prol = phi i64 [ %indvars.iv.next175.prol, %.lr.ph136.prol ], [ %indvars.iv174.ph, %.lr.ph136.preheader ] ; 2 uses
  %prol.iter245 = phi i32 [ %prol.iter245.next, %.lr.ph136.prol ], [ 0, %.lr.ph136.preheader ]
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv174.prol
  %i.er = load double, ptr %i.eq, align 8, !tbaa !20
  %gep193.prol = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178.prol
  store double %i.er, ptr %gep193.prol, align 8, !tbaa !20
  %indvars.iv.next175.prol = add nsw i64 %indvars.iv174.prol, 1 ; 3 uses
  %indvars.iv.next179.prol = add nsw i64 %indvars.iv178.prol, 1 ; 2 uses
  %prol.iter245.next = add i32 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i32 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph136.prol.loopexit, label %.lr.ph136.prol, !llvm.loop !15

.lr.ph136.prol.loopexit:                          ; preds = %.lr.ph136.prol, %.lr.ph136.preheader
  %indvars.iv.next175.lcssa241.unr = phi i64 [ poison, %.lr.ph136.preheader ], [ %indvars.iv.next175.prol, %.lr.ph136.prol ]
  %indvars.iv178.unr = phi i64 [ %indvars.iv178.ph, %.lr.ph136.preheader ], [ %indvars.iv.next179.prol, %.lr.ph136.prol ]
  %indvars.iv174.unr = phi i64 [ %indvars.iv174.ph, %.lr.ph136.preheader ], [ %indvars.iv.next175.prol, %.lr.ph136.prol ]
  %i.es = icmp ult i32 %i.ep, 7
  br i1 %i.es, label %._crit_edge137.loopexit, label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.prol.loopexit, %.lr.ph136
  %indvars.iv178 = phi i64 [ %indvars.iv.next179.7, %.lr.ph136 ], [ %indvars.iv178.unr, %.lr.ph136.prol.loopexit ] ; 9 uses
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.7, %.lr.ph136 ], [ %indvars.iv174.unr, %.lr.ph136.prol.loopexit ] ; 9 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.eu = load double, ptr %i.et, align 8, !tbaa !20
  %gep193 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  store double %i.eu, ptr %gep193, align 8, !tbaa !20
  %i.ev = getelementptr [8 x i8], ptr %2, i64 %indvars.iv174
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !20
  %i.ex = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.1 = getelementptr i8, ptr %i.ex, i64 8
  store double %i.ew, ptr %gep193.1, align 8, !tbaa !20
  %i.ey = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !20
  %i.fb = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.2 = getelementptr i8, ptr %i.fb, i64 16
  store double %i.fa, ptr %gep193.2, align 8, !tbaa !20
  %i.fc = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.fd = getelementptr i8, ptr %i.fc, i64 24
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !20
  %i.ff = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.3 = getelementptr i8, ptr %i.ff, i64 24
  store double %i.fe, ptr %gep193.3, align 8, !tbaa !20
  %i.fg = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.fh = getelementptr i8, ptr %i.fg, i64 32
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !20
  %i.fj = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.4 = getelementptr i8, ptr %i.fj, i64 32
  store double %i.fi, ptr %gep193.4, align 8, !tbaa !20
  %i.fk = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.fl = getelementptr i8, ptr %i.fk, i64 40
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !20
  %i.fn = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.5 = getelementptr i8, ptr %i.fn, i64 40
  store double %i.fm, ptr %gep193.5, align 8, !tbaa !20
  %i.fo = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.fp = getelementptr i8, ptr %i.fo, i64 48
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !20
  %i.fr = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.6 = getelementptr i8, ptr %i.fr, i64 48
  store double %i.fq, ptr %gep193.6, align 8, !tbaa !20
  %i.fs = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv174
  %i.ft = getelementptr i8, ptr %i.fs, i64 56
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !20
  %i.fv = getelementptr [8 x i8], ptr %invariant.gep192, i64 %indvars.iv178
  %gep193.7 = getelementptr i8, ptr %i.fv, i64 56
  store double %i.fu, ptr %gep193.7, align 8, !tbaa !20
  %indvars.iv.next175.7 = add nsw i64 %indvars.iv174, 8 ; 2 uses
  %indvars.iv.next179.7 = add nsw i64 %indvars.iv178, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next179.7 to i32
  %exitcond183.not.7 = icmp eq i32 %i.dc, %lftr.wideiv.7
  br i1 %exitcond183.not.7, label %._crit_edge137.loopexit, label %.lr.ph136, !llvm.loop !16

._crit_edge137.loopexit:                          ; preds = %.lr.ph136.prol.loopexit, %.lr.ph136, %vec.epilog.middle.block237, %middle.block224
  %indvars.iv.next175.lcssa = phi i64 [ %i.el, %vec.epilog.middle.block237 ], [ %i.ec, %middle.block224 ], [ %indvars.iv.next175.lcssa241.unr, %.lr.ph136.prol.loopexit ], [ %indvars.iv.next175.7, %.lr.ph136 ]
  %i.fw = trunc nsw i64 %indvars.iv.next175.lcssa to i32
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit, %.lr.ph145
  %.3.lcssa = phi i32 [ %.2143, %.lr.ph145 ], [ %i.fw, %._crit_edge137.loopexit ]
  %i.fx = add nsw i32 %.3.lcssa, 2
  %indvars.iv.next177 = add nuw i32 %indvars.iv176, 1
  %exitcond187.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count
  %indvar.next209 = add i64 %indvar208, 1
  br i1 %exitcond187.not, label %._crit_edge146, label %.lr.ph145, !llvm.loop !17

._crit_edge146:                                   ; preds = %._crit_edge137
  %i.fy = icmp sgt i32 %i.m, 1
  br i1 %i.fy, label %bb.j, label %._crit_edge146.thread

bb.j:                                             ; preds = %._crit_edge146
  %i.fz = add nsw i32 %i.m, -1                    ; 3 uses
  store i32 %i.fz, ptr %i.c, align 4, !tbaa !18
  store i32 %i.fz, ptr %i.d, align 4, !tbaa !18
  store i32 %i.fz, ptr %i.e, align 4, !tbaa !18
  %i.ga = shl i32 %i.h, 1
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr [8 x i8], ptr %i.j, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  call void @dorg2r_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.gd, ptr noundef nonnull %5, ptr noundef %3, ptr noundef %6, ptr noundef nonnull %i.f) #5
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !21, !22, !23}
!9 = distinct !{!9, !21, !22, !23}
!10 = distinct !{!10, !25}
!11 = distinct !{!11, !21, !22}
!12 = distinct !{!12, !21}
!13 = distinct !{!13, !21, !22, !23}
!14 = distinct !{!14, !21, !22, !23}
!15 = distinct !{!15, !25}
!16 = distinct !{!16, !21, !22}
!17 = distinct !{!17, !21}
!18 = !{!5, !5, i64 0}
!19 = !{!"double", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 4, i32 12}
!25 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
